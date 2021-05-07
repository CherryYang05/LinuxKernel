#include "multi_task.h"
#include "timer.h"
#include "global_define.h"

/**
 * 全局描述符表数据结构,和汇编代码中的一致
 */
void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar) {
    if (limit > 0xfffff) {
        ar |= 0x8000;       /* G_bit = 1 */
        limit /= 0x1000;
    }
    sd->limit_low    = limit & 0xffff;
    sd->base_low     = base & 0xffff;
    sd->base_mid     = (base >> 16) & 0xff;
    sd->access_right = ar & 0xff;
    sd->limit_high   = ((limit >> 16) & 0x0f) | ((ar >> 8) & 0xf0);
    sd->base_high    = (base >> 24) & 0xff;
    return;
}

/**
 * 用于自动切换进程的时间片
 */
static struct TIMER *multi_task_timer;

static int multi_task_tr;
//static struct FIFO8 fifo2;
/**
 * 初始化
 */
void multi_task_init() {
    multi_task_timer = timer_alloc();
    //timer_init(multi_task_timer, &fifo2, 1000);
    timer_setTime(multi_task_timer, 100);
    multi_task_tr = 7 * 8;
    return;
}

/**
 * 自动切换进程
 */
void multi_task_switch() {
    if (multi_task_tr == 7*8) {
        multi_task_tr = 9*8;
        // timer_setTime(multi_task_timer, 100);
        // taskswitch9();
    } else {
        multi_task_tr = 7*8;
        // timer_setTime(multi_task_timer, 100);
        // taskswitch7();
    }
    timer_setTime(multi_task_timer, 100);
    farjmp(0, multi_task_tr);
    return;
}