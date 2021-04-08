#define PIT_CTRL 0x0043
#define PIT_CNT0 0x0040
#define MAX_TIMER 500               //最多支持500个时钟中断
#define TIMER_FLAGS_ALLOC 1         //表示该时钟中断对象已分配
#define TIMER_FLAGS_USING 2         //表明该时钟中断对象已使用

struct TIMER {
    unsigned int timeout, flags;    //中断时间（多少次中断之后触发中断）,flag表示该中断对象是否使用
    struct FIFO8 *fifo;             //内核会监测该队列，记录超时事件
    unsigned char data;
};

struct TIMERCTL {
    unsigned int count;             //内核时钟中断次数
    struct TIMER timer[MAX_TIMER];
};

struct TIMERCTL* getTimerController();

void init_pit();

/**
 * 分配一个时钟中断对象
 */
struct TIMER* timer_alloc();

/**
 * 释放一个时钟中断对象
 */
void timer_free(struct TIMER *timer);

/**
 * 初始化时钟中断对象
 */
void timer_init(struct TIMER *timer, struct FIFO8 *fifo, unsigned char data);

/**
 * 设置超时时间片
 */
void timer_setTime(struct TIMER *timer, unsigned int timeout);
