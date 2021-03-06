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
 * 			{flags} 进程状态（0表示空闲，1表示挂起，2表示运行）
 */
struct TASK {
	int sel, flags;
	struct TSS32 tss;
};

#define MAX_TASKS    5
#define TASK_GDT0    7
#define SIZE_OF_TASK 112

/**
 * 进程管理控制器
 * @param	{running} 正在运行的进程数量
 * 			{now} 表示当前正在运行的进程编号
 */
struct TASKCTL {
	int running;
	int now;
	struct TASK *tasks[MAX_TASKS];
	struct TASK tasks0[MAX_TASKS];
};

struct TASK *task_init(struct MEMMANAGER *memman);

#define SIZE_OF_TASKCTL  (4 + 4 + 4 * MAX_TASKS + SIZE_OF_TASK * MAX_TASKS)

struct TASK *task_alloc(void);

/**
 * 进程运行
 */
void task_run(struct TASK *task);

/**
 * 任务调度机制
 */
void task_switch();

/**
 * 进程睡眠
 */
void task_sleep(struct TASK *task);

/**
 * 获取进程管理器对象
 */
struct TASKCTL *getTaskctl();

