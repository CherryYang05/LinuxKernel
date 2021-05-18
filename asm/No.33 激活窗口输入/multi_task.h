//进程空闲
#define TASK_EMPTY 0
//进程挂起
#define TASK_SUSPEND 1
//进程运行
#define TASK_RUNNING 2
/**
 * 任务门描述符,共104字节，实际上TSS有103字节，多出的1字节为了编码方便
 * 当我们初始化了TSS32后，在全局描述符表中，需要专门分配一个描述符来指向这块TSS32内存,这种描述符，成为任务门
 */
struct TSS32 {
    int backlink, esp0, ss0, esp1, ss1, esp2, ss2, cr3;
    int eip, eflags, eax, ecx, edx, ebx,esp, ebp, esi, edi;
    int es, cs, ss, ds, fs, gs;
    int ldtr, iomap;
};

/**
 * 全局描述符表数据结构,和汇编代码中的一致
 */
struct SEGMENT_DESCRIPTOR {
    short limit_low, base_low;
    char base_mid, access_right;
    char limit_high, base_high;
};

/**
 * 操作每个全局描述符表，同汇编代码中的全局描述符表
 */
void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar);

/**
 * 任务门
 */
#define AR_TSS32 0x0089

/**
 * 初始化
 */
void multi_task_init();

/**
 * 自动切换进程
 */
void multi_task_switch();

//void farjmp(int, int);

/**
 * 获取进程切换时钟对象
 */
struct TIMER *getTaskTimer();

/**
 * 获取 multi_task_tr 值
 */
int getMulti_Task_tr();

//============================================================================

/**
 * 进程结构体(PCB)
 * @param	{sel} 该进程的TSS32结构对应的段描述符下标
 *          {priority} 进程优先级，越大优先级越高
 *          {level} 进程重要性
 *          {fifo} 获取对应进程输出队列
 * 			{flags} 进程状态（0表示空闲，1表示挂起，2表示运行）
 */
struct TASK {
	int sel, flags;
    int priority;
    int level;
    struct FIFO8 *fifo;
	struct TSS32 tss;
};

#define MAX_TASKS       5
#define MAX_TASKS_LV    3
#define MAX_TASKLEVELS  3

#define TASK_GDT0       7
#define SIZE_OF_TASK    120

/**
 * 进程优先级队列
 * @param {running} 正在运行的进程数量
 *        {now} 正在执行的进程编号
 *        {tasks}
 */
struct TASKLEVEL {
    int running;
    int now;
    struct TASK *tasks[MAX_TASKS_LV];
};

#define SIZE_OF_TASKLEVEL (8 + 4 * MAX_TASKS_LV)

/**
 * 进程管理控制器
 * @param	{running} 正在运行的进程数量
 * 			{now} 表示当前正在运行的进程编号
 */
// struct TASKCTL {
// 	int running;
// 	int now;
// 	struct TASK *tasks[MAX_TASKS];
// 	struct TASK tasks0[MAX_TASKS];
// };

/**
 * 进程优先级队列管理器
 * @param	{now_lv} 当前正在运行的进程优先级队列
 * 			{lv_change} 
 *          {level} 进程的优先级队列
 *          {tasks0} 存放所有进程的数组
 */
struct TASKCTL {
    int  now_lv;
    int  lv_change;
    struct TASKLEVEL level[MAX_TASKLEVELS];
    struct TASK tasks0[MAX_TASKS];
};

struct TASK *task_init(struct MEMMANAGER *memman);

#define SIZE_OF_TASKCTL  (4 + 4 + SIZE_OF_TASKLEVEL * MAX_TASKLEVELS + SIZE_OF_TASK * MAX_TASKS)

struct TASK *task_alloc(void);

/**
 * 进程运行，根据优先级
 */
void task_run(struct TASK *task, int level, int priority);

/**
 * 加入进程就绪队列
 */
void task_add(struct TASK *task);

/**
 * 从就绪队列中移除进程
 */
void task_remove(struct TASK *task);

/**
 * 改变进程优先级运行队列
 */
void task_switchsub();

/**
 * 任务调度机制
 */
void task_switch();

/**
 * 获取当前正在运行的进程
 */
struct TASK *task_now();

/**
 * 进程睡眠
 */
int task_sleep(struct TASK *task);

/**
 * 获取进程管理器对象
 */
struct TASKCTL *getTaskctl();

