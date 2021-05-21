#include "mem_util.h"
#include "multi_task.h"
#include "global_define.h"
#include "timer.h"

/**
 * 全局描述符表数据结构,和汇编代码中的一致
 */
void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar) {
    if (limit > 0xfffff) {
        ar |= 0x8000;           /* G_bit = 1 */
        limit /= 0x1000;
    }
    sd->limit_low = limit & 0xffff;
    sd->base_low = base & 0xffff;
    sd->base_mid = (base >> 16) & 0xff;
    sd->access_right = ar & 0xff;
    sd->limit_high = ((limit >> 16) & 0x0f) | ((ar >> 8) & 0xf0);
    sd->base_high = (base >> 24) & 0xff;
    return;
}

static struct TIMER *task_timer;

/**
 * 获取进程切换时钟对象
 */
struct TIMER *getTaskTimer() {
    return task_timer;
}

// /**
//  * 获取 multi_task_tr 值
//  */
// int getMulti_Task_tr() {
//     return multi_task_tr;
// }

//===============================================
static struct TASKCTL *taskctl;

/**
 * 初始化进程优先级队列
 */
void init_task_level(int level) {
    taskctl->level[level].running = 0;
    taskctl->level[level].now = 0;
    for (int i = 0; i < MAX_TASKS_LV; ++i) {
        taskctl->level[i].tasks[i] = 0;
    }
}

/**
 * 初始化进程管理器
 */
struct TASK *task_init(struct MEMMANAGER *memman) {
    struct TASK *task;
    struct SEGMENT_DESCRIPTOR *gdt = (struct SEGMENT_DESCRIPTOR*) get_addr_gdt();
    taskctl = (struct TASKCTL*)memman_alloc_4K(memman, SIZE_OF_TASKCTL);
    for (int i = 0; i < MAX_TASKS; ++i) {
        taskctl->tasks0[i].flags = 0;
        taskctl->tasks0[i].sel = (TASK_GDT0 + i) * 8;
        set_segmdesc(gdt + TASK_GDT0 + i, 103, (int)&taskctl->tasks0[i].tss, AR_TSS32);
    }
    task = task_alloc();
    task->flags = TASK_RUNNING;         //active
    task->priority = 10;
    task->level = 0;
    task_add(task);
    task_switchsub();

    // taskctl->running = 1;
    // taskctl->now = 0;
    // taskctl->tasks[0] = task;
    load_tr(task->sel);                 //将当前运行环境加载到CPU中
    task_timer = timer_alloc();
    timer_setTime(task_timer, task->priority);
    return task;
}

/**
 * 分配进程空间
 */
struct TASK *task_alloc(void) {
    struct TASK *task;
    for (int i = 0; i < MAX_TASKS; i++) {
        if (taskctl->tasks0[i].flags == TASK_EMPTY) {
            task = &taskctl->tasks0[i];
            task->flags = TASK_SUSPEND;
            task->tss.eflags = 0x00000202;
            task->tss.eax = 0;
            task->tss.ecx = 0;
            task->tss.edx = 0;
            task->tss.ebx = 0;
            task->tss.ebp = 0;
            task->tss.esp = 512 * (i + 1);  //每个进程分配512B堆栈
            task->tss.esi = 0;
            task->tss.edi = 0;
            task->tss.es = 0;
            task->tss.ds = 0;
            task->tss.fs = 0;
            task->tss.gs = 0;
            task->tss.ldtr = 0;
            task->tss.iomap = 0x40000000;
            return task;
        }
    }
    return 0;
}

/**
 * 进程运行
 * @param {task}     进程对象
 *        {level}    进程优先级队列
 *        {priority} 进程优先级（时间片）
 */
void task_run(struct TASK *task, int level, int priority) {
    //传入0时不改变当前优先级
    if (level < 0) {
        level = task->level;
    }
    if (priority > 0) {
        task->priority = priority;
    }
    //若传入的进程正在运行，并且当前运行的优先级队列与进程期望的优先级队列不一致，移除该进程
    if (task->flags == 2 && task->level != level) {
        task_remove(task);
    }
    if (task->flags != 2) {
        task->level = level;
        task_add(task);
    }
    // task->flags = TASK_RUNNING;        //运行
    // taskctl->tasks[taskctl->running] = task;
    // taskctl->running++;
    taskctl->lv_change = 1;
    return;
}

/**
 * 任务调度机制
 */
void task_switch() {
    struct TASKLEVEL *tl = &taskctl->level[taskctl->now_lv];
    struct TASK *new_task;
    struct TASK *now_task = tl->tasks[tl->now];
    tl->now++;
    if (tl->now == tl->running) {
        tl->now = 0;
    }
    if (taskctl->lv_change != 0) {
        task_switchsub();
        tl = &taskctl->level[taskctl->now_lv];
    }
    
    new_task = tl->tasks[tl->now];
    //设置时间片为当前进程的优先级
    timer_setTime(task_timer, new_task->priority);
    if (new_task != now_task && new_task != 0) {
        farjmp(0, new_task->sel);
    }
    return;
}

/**
 * 进程睡眠
 */
int task_sleep(struct TASK *task) {
    struct TASK *cur_task = 0;
    char rtask = 0;
    //若当前运行的进程正好是要挂起的进程
    if (task->flags == TASK_RUNNING) {
        cur_task = task_now();
        task_remove(task);
        rtask = 1;
        if (task == cur_task) {
            task_switchsub();
            cur_task = task_now();
            rtask = 2;
            if (cur_task != 0) {
                farjmp(0, cur_task->sel);
            }
        }
    }
    return rtask;
    // int i;
    // //循环找出这个进程
    // for (i = 0; i < taskctl->running; ++i) {
    //     if (taskctl->tasks[i] == task) {
    //         break;
    //     }
    // }
    // taskctl->running--;
    // //???
    // if (i < taskctl->now) {
    //     taskctl->now--;
    // }

    // for (; i < taskctl->running; ++i) {
    //     taskctl->tasks[i] = taskctl->tasks[i + 1];
    // }

    // task->flags = TASK_SUSPEND;         //挂起
    // if (rtask != 0) {
    //     //若当前挂起的进程是正在运行的进程，则将第0个进程调度到前台运行
    //     if (taskctl->now >= taskctl->running) {
    //         taskctl->now = 0;
    //     }
    //     farjmp(0, taskctl->tasks[taskctl->now]->sel);
    // }
}

/**
 * 获取当前运行的进程对象
 */
struct TASK *task_now() {
    struct TASKLEVEL *tl = &taskctl->level[taskctl->now_lv];
    return tl->tasks[tl->now];
}

/**
 * 加入进程就绪队列
 */
void task_add(struct TASK *task) {
    struct TASKLEVEL *tl = &taskctl->level[task->level];
    tl->tasks[tl->running] = task;
    tl->running++;
    task->flags = 2;
    return;
}

/**
 * 从就绪队列中移除进程
 */
void task_remove(struct TASK *task) {
    struct TASKLEVEL *tl = &taskctl->level[task->level];
    int i;
    for (i = 0; i < tl->running; ++i) {
        if (tl->tasks[i] == task) {
            tl->tasks[i] = 0;
            break;
        }
    }
    tl->running--;
    /*
        这里的now字段指示的正在运行的进程编号是数组下标，
        因为要移除的进程在当前运行的进程前面，因此要将后面的
        进程往前移动一个位置，即当前运行的进程对应的数组下标比之前少了一
    */
    if (i < tl->now) {
        tl->now--;
    }
    //若要删除的进程是最后一个，则将第0个进程调度到前台
    if (tl->now >= tl->running) {
        tl->now = 0;
    }
    task->flags = 1;        //挂起
    for (; i < tl->running; ++i) {
        tl->tasks[i] = tl->tasks[i + 1];
    }

}

/**
 * 改变进程优先级运行队列
 */
void task_switchsub() {
    int i;
    for (i = 0; i < MAX_TASKLEVELS; ++i) {
        if (taskctl->level[i].running > 0) {
            break;
        }
    }
    taskctl->now_lv = i;
    taskctl->lv_change = 0;
}

struct TASKCTL *getTaskctl() {
    return taskctl;
}