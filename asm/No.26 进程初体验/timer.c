#include "global_define.h"
#include "timer.h"

static struct TIMERCTL timerctl;

void init_pit() {
    io_out8(PIT_CTRL, 0x34);
    io_out8(PIT_CNT0, 0x9c);
    io_out8(PIT_CNT0, 0x2e);

    timerctl.count = 0;
    for (int i = 0; i < MAX_TIMER; ++i) {
        timerctl.timer[i].flags = 0;    //未使用
    }
}

/**
 * 分配一个时钟中断对象
 */
struct TIMER* timer_alloc() {
    for (int i = 0; i < MAX_TIMER; i++) {
        if (timerctl.timer[i].flags == 0) {
            timerctl.timer[i].flags = TIMER_FLAGS_ALLOC;
            return &timerctl.timer[i];
        }
    }
    return 0;
}

/**
 * 释放一个时钟中断对象
 */
void timer_free(struct TIMER *timer) {
    timer->flags = 0;
    return;
}

/**
 * 初始化时钟中断对象
 */
void timer_init(struct TIMER *timer, struct FIFO8 *fifo, unsigned char data) {
    timer->fifo = fifo;
    timer->data = data;
    return;
}

/**
 * 设置超时时间片
 */
void timer_setTime(struct TIMER *timer, unsigned int timerout) {
    // int eflags;
    // eflags = io_load_eflags();
    // io_cli();                   //暂停接收中断信号
    timer->timeout = timerout;
    timer->flags = TIMER_FLAGS_USING;
    // io_store_eflags(eflags);    //恢复接收中断信号
    return;
}

/**
 * 获取时钟中断控制器结构体对象
 */
struct TIMERCTL* getTimerController() {
    return &timerctl;
}

/**
 * 处理时钟中断函数
 */
void intHandlerForTimer(char *esp) {
    io_out8(PIC0_OCW2, 0x60);           //重复进行中断
    timerctl.count++;
    for (int i = 0; i < MAX_TIMER; ++i) {
        if (timerctl.timer[i].flags == TIMER_FLAGS_USING) {
            timerctl.timer[i].timeout--;
            if (timerctl.timer[i].timeout == 0) {
                timerctl.timer[i].flags = TIMER_FLAGS_ALLOC;
                fifo8_put(timerctl.timer[i].fifo, timerctl.timer[i].data);  //激活超时事件
            }
        }
    }
    return;
}
