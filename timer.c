#include "global_define.h"
#include "timer.h"

static struct TIMERCTL timerctl;

void init_pit() {
    io_out8(PIT_CTRL, 0x34);
    io_out8(PIT_CNT0, 0x9c);
    io_out8(PIT_CNT0, 0x2e);

    timerctl.count = 0;
    timerctl.timeout = 0;
}

void intHandlerForTimer(char *esp) {
    io_out8(PIC0_OCW2, 0x60);       //重复进行中断
    timerctl.count++;
    if (timerctl.timeout > 0) {
        timerctl.timeout--;
        if (timerctl.timeout == 0) {
            fifo8_put(timerctl.fifo, timerctl.data);
        }
    }
    return;
}

/**
 * 设置超时时间片
 */
void setTimer(unsigned int timeout, struct FIFO8 *fifo, unsigned char data) {
    int eflags;
    eflags = io_load_eflags();
    io_cli();                   //暂停接收中断信号
    timerctl.timeout = timeout;
    timerctl.fifo = fifo;
    timerctl.data = data;
    io_store_eflags(eflags);    //恢复接收中断信号
    return;
}

/**
 * 获取时钟中断控制器结构体对象
 */
struct TIMERCTL* getTimerController() {
    return &timerctl;
}