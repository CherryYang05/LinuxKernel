#define PIT_CTRL 0x0043
#define PIT_CNT0 0x0040

void init_pit();

struct TIMERCTL {
    unsigned int count;     //时钟中断次数
    unsigned int timeout;   //中断时间（多少次中断之后触发中断）
    struct FIFO8 *fifo;     //内核会监测该队列，记录超时事件
    unsigned char data;
};

struct TIMERCTL* getTimerController();

/**
 * 设置超时时间片
 */
void setTimer(unsigned int timeout, struct FIFO8 *fifo, unsigned char data);