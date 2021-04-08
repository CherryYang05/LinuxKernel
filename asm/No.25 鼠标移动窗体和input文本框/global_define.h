//主8259A控制器端口
#define PIC0_OCW2 0x20
//从8259A控制器端口
#define PIC1_OCW2 0xA0

#define FALSE 0
#define OK 1

/**
 * 全黑
 */
#define COL8_000000 0
/**
 * 亮红
 */
#define COL8_FF0000 1
/**
 * 亮绿
 */
#define COL8_00FF00 2
/**
 * 亮黄
 */
#define COL8_FFFF00 3
/**
 * 亮蓝
 */
#define COL8_0000FF 4
/**
 * 亮紫
 */
#define COL8_FF00FF 5
/**
 * 浅亮
 */
#define COL8_00FFFF 6
/**
 * 全白
 */
#define COL8_FFFFFF 7
/**
 * 亮灰
 */
#define COL8_C6C6C6 8
/**
 * 暗红
 */
#define COL8_840000 9
/**
 * 暗绿
 */
#define COL8_008400 10
/**
 * 暗黄
 */
#define COL8_848400 11
/**
 * 暗蓝
 */
#define COL8_000084 12
/**
 * 暗紫
 */
#define COL8_840084 13

/**
 * Windows蓝
 */
#define COL8_0078D7 14
/**
 * 暗灰
 */
#define COL8_848484 15


/**
 * @brief: 数据缓冲区，若键盘使用大小设为 32B
 * @param {read} 读指针
 *        {write} 写指针
 *        {size} 缓冲区大小
 *        {free} 缓冲区空余大小
 *        {flags} 缓冲区状态
 */
struct FIFO8 {
    unsigned char *buf;
    int read, write, size, free, flags;
};

void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf);
int fifo8_put(struct FIFO8 *fifo, unsigned char data);
int fifo8_get(struct FIFO8 *fifo);
int fifo8_status(struct FIFO8 *fifo);

void io_hlt(void);      //休眠
void io_cli(void);      //关中断
void io_sti(void);      //开中断
void io_stihlt(void);   //开中断休眠
char io_in8(int port);  //从端口读一个 8字节数据
void io_out8(int port, int data);
int io_load_eflags(void);
void io_store_eflags(int eflags);