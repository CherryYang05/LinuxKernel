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

// /**
//  * 用于自动切换进程的时间片
//  */
// static struct TIMER *multi_task_timer = NULL;

//static int multi_task_tr;
//static struct FIFO8 fifo2;

// /**
//  * 初始化
//  */
// void multi_task_init() {
//     if (multi_task_timer == NULL) {
//         multi_task_timer = timer_alloc();
//         //timer_init(multi_task_timer, &fifo2, 1000);
//         timer_setTime(multi_task_timer, 100);
//         multi_task_tr = 7 * 8;
//     }
//     return;
// }

// /**
//  * 自动切换进程
//  */
// void multi_task_switch() {
//     if (multi_task_tr == 7 * 8) {
//         multi_task_tr = 9 * 8;
//         // timer_setTime(multi_task_timer, 100);
//         // taskswitch9();
//     } else {
//         multi_task_tr = 7 * 8;
//         // timer_setTime(multi_task_timer, 100);
//         // taskswitch7();
//     }
//     timer_setTime(multi_task_timer, 100);
//     farjmp(0, multi_task_tr);
//     //taskswitch9();
//     return;
// }

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
    taskctl->running = 1;
    taskctl->now = 0;
    taskctl->tasks[0] = task;
    load_tr(task->sel);                 //将当前运行环境加载到CPU中
    task_timer = timer_alloc();
    timer_setTime(task_timer, 100);
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
 */
void task_run(struct TASK *task) {
    task->flags = TASK_RUNNING;        //运行
    taskctl->tasks[taskctl->running] = task;
    taskctl->running++;
    return;
}

/**
 * 任务调度机制
 */
void task_switch() {
    timer_setTime(task_timer, 100);
    if (taskctl->running >= 2) {
        taskctl->now++;
        if (taskctl->now == taskctl->running) {
            taskctl->now = 0;
        }
        farjmp(0, taskctl->tasks[taskctl->now]->sel);
    }
    return;
}

/**
 * 进程睡眠
 */
void task_sleep(struct TASK *task) {
    char ts = 0;
    //若当前运行的进程正好是要挂起的进程
    if (task->flags == TASK_RUNNING) {
        if (task == taskctl->tasks[taskctl->now]) {
            ts = 1;
        }
    }
    int i;
    //循环找出这个进程
    for (i = 0; i < taskctl->running; ++i) {
        if (taskctl->tasks[i] == task) {
            break;
        }
    }
    taskctl->running--;
    //???
    if (i < taskctl->now) {
        taskctl->now--;
    }

    for (; i < taskctl->running; ++i) {
        taskctl->tasks[i] = taskctl->tasks[i + 1];
    }

    task->flags = TASK_SUSPEND;         //挂起
    if (ts != 0) {
        //若当前挂起的进程是正在运行的进程，则将第0个进程调度到前台运行
        if (taskctl->now >= taskctl->running) {
            taskctl->now = 0;
        }
        farjmp(0, taskctl->tasks[taskctl->now]->sel);
    }
}

struct TASKCTL *getTaskctl() {
    return taskctl;
}