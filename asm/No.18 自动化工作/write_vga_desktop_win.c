#include "mem_util.h"
#include "win_sheet.h"

#define COL8_000000 0   //全黑
#define COL8_FF0000 1   //亮红
#define COL8_00FF00 2   //亮绿
#define COL8_FFFF00 3   //亮黄
#define COL8_0000FF 4   //亮蓝
#define COL8_FF00FF 5   //亮紫
#define COL8_00FFFF 6   //浅亮
#define COL8_FFFFFF 7   //全白
#define COL8_C6C6C6 8   //亮灰
#define COL8_840000 9   //暗红
#define COL8_008400 10  //暗绿
#define COL8_848400 11  //暗黄
#define COL8_000084 12  //暗蓝
#define COL8_840084 13  //暗紫
#define COL8_0078D7 14  //Windows蓝
#define COL8_848484 15  //暗灰

#define FALSE 0
#define OK 1

//主 8259A 芯片端口
#define PIC_OCW2 0x20
//从 8259A 芯片端口
#define PIC1_OCW2 0xa0

void io_hlt(void);      //休眠
void io_cli(void);      //关中断
void io_sti(void);      //开中断
void io_stihlt(void);   //开中断休眠
char io_in8(int port);  //从端口读一个 8字节数据
void io_out8(int port, int data);
int io_load_eflags(void);
void io_store_eflags(int eflags);
void show_char(void);
void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);
void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x, int y, int x0, int y0);

struct BOOTINFO {
    char *vgaRam;
    short screenX, screenY;
};

void initBootInfo(struct BOOTINFO *pBootInfo);

static char fontA[16] = {0x00, 0x18, 0x18, 0x18, 0x18, 0x24, 0x24, 0x24,
                         0x24, 0x7e, 0x42, 0x42, 0x42, 0xe7, 0x00, 0x00};

extern char systemFont[16];

void showFont8(char *vram, int xsize, int x, int y, char c, char *font);
void showString(char *vram, int xsize, int x, int y, char color, unsigned char *s);
void putblock(char *vram, int vxsize, int pxsize, int pysize, int px0, int py0, char *buf, int bxsize);
void init_mouse_cursor(char *mouse, char bc);
void intHandlerFromC(void);

void init_keyboard();
void enable_mouse();

static struct BOOTINFO bootInfo;
static char keyVal[5] = {'0', 'x', 0, 0, 0};  //键盘扫描码和断码
char charToVal(char c);
char *charToHex(unsigned char c);

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

void fifo8_init();
int fifo8_put(struct FIFO8 *fifo, unsigned char data);
int fifo8_get(struct FIFO8 *fifo);
int fifo8_status(struct FIFO8 *fifo);
void showMouseInfo();
void showKeyboardInfo();

static struct FIFO8 keyInfo;
static struct FIFO8 mouseInfo;
//键鼠缓冲区
static char keybuf[32];
static char mousebuf[128];

/**
 * 鼠标移动信息的结构体
 * @param {buf} 鼠标信息缓冲区
 *        {phase} 解读鼠标信息的步骤
 *        {x, y} 鼠标位置的横纵坐标
 *        {btn} 记录鼠标按下的键
 */
struct MOUSE_DEC {
    unsigned char buf[3], phase;
    int x, y, btn;
};

static struct MOUSE_DEC mouse_move;
static int mx = 0, my = 0;  //鼠标初始坐标

int mouse_decode(struct MOUSE_DEC *mdec, unsigned char data);
void computeMousePos(struct MOUSE_DEC *mdec);
void eraseMouse(char *vram);
void drawMouse(char *vram);

/**
 * 内存范围描述符数据结构
 */
struct MemRangeDesc {
    unsigned int baseAddrLow;   //内存基地址低32位
    unsigned int baseAddrHigh;  //内存基地址高32位
    unsigned int lengthLow;     //内存块长度低32位
    unsigned int lengthHigh;    //内存块长度高32位
    unsigned int type;          //内存块类型，1为可被使用，2为已被占用，3为留给将来使用
};

int get_memory_block_count();
char *intToHexStr(unsigned int data);

char *get_addr_buffer();
int get_addr_buffer_int();

void showMemInfo(struct MemRangeDesc *desc, char *vram, int page, int xsize, int color);

//内存管理器，以 0x100000地址那块内存为例
static struct MEMMANAGER *memman = (struct MEMMANAGER*)0x100000;

void init_screen8(char *vram, int x, int y);

static unsigned char *buf_back, buf_mouse[256];
#define COLOR_INVISIBLE  99

//======================================== 主函数 ===================================================
void CMain(void) {
    initBootInfo(&bootInfo);
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;
    struct SHTCTL *shtctl;              //图层控制器
    struct SHEET *sheet_back = 0;       //桌面图层
    struct SHEET *sheet_mouse = 0;      //鼠标图层

    //初始化键鼠缓冲区
    fifo8_init(&mouseInfo, 128, mousebuf);
    fifo8_init(&keyInfo, 32, keybuf);
    init_palette();
    init_keyboard();                    //准备键盘
    

    // int memAddr = get_addr_buffer_int();
    // char *pp = intToHexStr(memAddr);
    // showString(vram, xsize, 0, 0, COL8_FFFF00, pp);

    struct MemRangeDesc *memDesc = (struct MemRangeDesc*)get_addr_buffer();

    //可用内存块数量
    int memCnt = get_memory_block_count();
    //char *p = intToHexStr(memCnt);
 
    //初始化内存管理器
    memman_init(memman);
    //回收内存块
    memman_free(memman, 0x00108000, 0x3FEE8000);
    int memTotal = memman_total(memman) / (1024 * 1024);
    char *pMemTotal = intToHexStr(memTotal);
    showString(vram, xsize, 0, 0, COL8_FFFF00, "Total Mem Size is: "); 
    showString(vram, xsize, 19 * 8, 0, COL8_FFFF00, pMemTotal); 
    showString(vram, xsize, 30 * 8, 0, COL8_FFFF00, "MB"); 
    shtctl = shtctl_init(memman, vram, xsize, ysize);
    int top = shtctl->top;
    char *t = intToHexStr(top);
    
    
    //=============== 图层操作 ===============
    
    sheet_back = sheet_alloc(shtctl);
    sheet_mouse = sheet_alloc(shtctl);
    buf_back = (unsigned char*)memman_alloc_4K(memman, xsize * ysize);
    init_screen8(buf_back, xsize, ysize);

    sheet_setbuf(sheet_back, buf_back, xsize, ysize, COLOR_INVISIBLE);
    sheet_setbuf(sheet_mouse, buf_mouse, 16, 16, COLOR_INVISIBLE);
    init_mouse_cursor(buf_mouse, COLOR_INVISIBLE);
    showString(vram, bootInfo.screenX, 0, 16, COL8_00FF00, t);
    //------+
    sheet_slide(shtctl, sheet_back, 0, 0);
    mx = (xsize - 16) / 2;
    my = (ysize - 28 - 16) / 2;
    sheet_slide(shtctl, sheet_mouse, mx, my);
    showString(vram, bootInfo.screenX, 0, 32, COL8_00FF00, t);
    sheet_level_updown(shtctl, sheet_mouse, 1);     //调整鼠标图层为1
    sheet_level_updown(shtctl, sheet_back, 0);      //调整桌面图层为0
    //========================================
    
    io_sti();
    enable_mouse(&mouse_move);                      //准备鼠标
    int cnt = 0;
    unsigned char data = 0;
    for (;;) {
        io_cli();
        if (fifo8_status(&keyInfo) + fifo8_status(&mouseInfo) == 0) {
            io_stihlt();
        } else if (fifo8_status(&keyInfo)) {        //键盘缓冲有数据
            //showKeyboardInfo();
            io_sti();     
            data = fifo8_get(&keyInfo);
            if (data == 0x1C) {                     //如果按下回车键(0x1C)，显示地址范围描述符信息
                showMemInfo(memDesc + cnt, buf_back, cnt, xsize, COL8_FFFFFF);
                cnt++;
                if (cnt >= memCnt) {
                    cnt = 0;
                }
            }
        } else if (fifo8_status(&mouseInfo)) {      //鼠标缓冲有数据
            showMouseInfo(shtctl, sheet_mouse);
        }
    }
}

void initBootInfo(struct BOOTINFO *pBootInfo) {
    pBootInfo->vgaRam = (char *)0xa0000;
    pBootInfo->screenX = 320;
    pBootInfo->screenY = 200;
}

void showString(char *vram, int xsize, int x, int y, char color, unsigned char *s) {
    for (; *s != 0x00; s++) {
        showFont8(vram, xsize, x, y, color, systemFont + *s * 16);
        x += 8;
    }
}

void init_screen8(char* vram, int xsize, int ysize) {
    boxfill8(vram, xsize, COL8_0078D7, 0, 0, xsize - 1, ysize - 29);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 28, xsize - 1, ysize - 28);
    boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize - 27, xsize - 1, ysize - 27);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 26, xsize - 1, ysize - 1);

    boxfill8(vram, xsize, COL8_FFFFFF, 3, ysize - 24, 59, ysize - 24);
    boxfill8(vram, xsize, COL8_FFFFFF, 2, ysize - 24, 2, ysize - 4);
    boxfill8(vram, xsize, COL8_848484, 3, ysize - 4, 59, ysize - 4);
    boxfill8(vram, xsize, COL8_848484, 59, ysize - 23, 59, ysize - 5);
    boxfill8(vram, xsize, COL8_000000, 2, ysize - 3, 59, ysize - 3);
    boxfill8(vram, xsize, COL8_000000, 60, ysize - 24, 60, ysize - 3);

    boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 24, xsize - 4, ysize - 24);
    boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 23, xsize - 47, ysize - 4);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize - 47, ysize - 3, xsize - 4, ysize - 3);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize - 3, ysize - 24, xsize - 3, ysize - 3);
}

void init_palette(void) {
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX, ysize = bootInfo.screenY;
    static unsigned char table_rgb[16 * 3] = {
        0x00, 0x00, 0x00,  //全黑
        0xff, 0x00, 0x00,  //亮红
        0x00, 0xff, 0x00,  //亮绿
        0xff, 0xff, 0x00,  //亮黄
        0x00, 0x00, 0xff,  //亮蓝
        0xff, 0x00, 0xff,  //亮紫
        0x00, 0xff, 0xff,  //浅亮
        0xff, 0xff, 0xff,  //全白
        0xc6, 0xc6, 0xc6,  //亮灰
        0x84, 0x00, 0x00,  //暗红
        0x00, 0x84, 0x00,  //暗绿
        0x84, 0x84, 0x00,  //暗黄
        0x00, 0x00, 0x84,  //暗蓝
        0x84, 0x00, 0x84,  //暗紫
        //0x00,  0x84,  0x84,			//浅暗蓝
        0x00, 0x78, 0xd7,  //windows蓝
        0x84, 0x84, 0x84,  //暗灰
    };
    set_palette(0, 15, table_rgb);
    return;
}

void set_palette(int start, int end, unsigned char *rgb) {
    int i, eflags;
    eflags = io_load_eflags();
    io_cli();
    io_out8(0x03c8, start);  //设置调色板编号，端口 03c8
    for (i = start; i <= end; i++) {
        io_out8(0x03c9, rgb[0] / 4);  //把调色板的RGB数值通过端口 0x3c9写入显存系统
        io_out8(0x03c9, rgb[1] / 4);  //先压栈第二个参数，再压栈第一个参数
        io_out8(0x03c9, rgb[2] / 4);

        rgb += 3;
    }

    io_store_eflags(eflags);
    return;
}

void boxfill8(unsigned char *vram, int xsize, unsigned char c,
              int x0, int y0, int x1, int y1) {
    int x, y;
    for (y = y0; y <= y1; y++) {
        for (x = x0; x <= x1; x++) {
            vram[y * xsize + x] = c;
        }
    }
}

/**
  显示 8 位的字符
 */
void showFont8(char *vram, int xsize, int x, int y, char c, char *font) {
    int i;
    char d;
    for (i = 0; i < 16; i++) {
        d = font[i];
        if ((d & 0x80) != 0) {
            vram[(y + i) * xsize + x + 0] = c;
        }
        if ((d & 0x40) != 0) {
            vram[(y + i) * xsize + x + 1] = c;
        }
        if ((d & 0x20) != 0) {
            vram[(y + i) * xsize + x + 2] = c;
        }
        if ((d & 0x10) != 0) {
            vram[(y + i) * xsize + x + 3] = c;
        }
        if ((d & 0x08) != 0) {
            vram[(y + i) * xsize + x + 4] = c;
        }
        if ((d & 0x04) != 0) {
            vram[(y + i) * xsize + x + 5] = c;
        }
        if ((d & 0x02) != 0) {
            vram[(y + i) * xsize + x + 6] = c;
        }
        if ((d & 0x01) != 0) {
            vram[(y + i) * xsize + x + 7] = c;
        }
    }
}

void init_mouse_cursor(char *mouse, char bc) {
    // char *vram = bootInfo.vgaRam;
    // int xsize = bootInfo.screenX;
    // int ysize = bootInfo.screenY;

    static char cursor[16][16] = {
        "**..............",
        "*O*.............",
        "*OO*............",
        "*OOO*...........",
        "*OOOO*..........",
        "*OOOOO*.........",
        "*OOOOOO*........",
        "*OOOOOOO*.......",
        "*OOOOO**........",
        "*OOOOO*.........",
        "*O**OO*.........",
        "**..*OO*........",
        "....*OO*........",
        ".....*OO*.......",
        ".....*OO*.......",
        "......**........"
    };

    int x, y;
    for (y = 0; y < 16; y++) {
        for (x = 0; x < 16; x++) {
            if (cursor[y][x] == '*') {
                mouse[y * 16 + x] = COL8_000000;
            }
            if (cursor[y][x] == 'O') {
                mouse[y * 16 + x] = COL8_FFFFFF;
            }
            if (cursor[y][x] == '.') {
                mouse[y * 16 + x] = bc;
            }
        }
    }

    //putblock(vram, xsize, 16, 16, mx, my, buf_mouse, 16);
}

/**
 * @param {char} *vram 显存地址
 * @param {int} vxsize 屏幕的横向分辨率 
 * @param {int} pxsize 所要绘制的区域的长
 * @param {int} pysize 所要绘制的区域的宽
 * @param {int} px0    绘制图像的起始横坐标
 * @param {int} py0    绘制图像的起始纵坐标
 * @param {char} *buf  所要绘制的图形数组指针
 * @param {int} bxsize buf的行数
 * @return {*}
 */
void putblock(char *vram, int vxsize, int pxsize, int pysize, int px0, int py0, char *buf, int bxsize) {
    int x, y;
    for (y = 0; y < pysize; y++)
        for (x = 0; x < pxsize; x++) {
            vram[(py0 + y) * vxsize + (px0 + x)] = buf[y * bxsize + x];
        }
}

#define PORT_KEYDAT 0x0060
#define PORT_KEYSTA 0x0064
#define PORT_KEYCMD 0x0064
#define KEYSTA_SEND_NOTREADY 0x02
#define KEYCMD_WRITE_MODE 0x60
#define KBC_MODE 0x47

/**
 * C 语言处理中断的函数
 */
void intHandlerFromC() {
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;
    /*  
        PIC_OCW2 的值是 0x20, 也就是主 PIC芯片的控制端口，
        0x21对应的是键盘的中断向量。当键盘中断被CPU执行后，
        下次键盘再向 CPU发送信号时，CPU就不会接收，要想让 CPU再次接收信号，
        必须向主 PIC的端口再次发送键盘中断的中断向量号。
    */
    io_out8(PIC_OCW2, 0x20);  //io_out8(PIC_OCW2, 0x20)也能正确运行？？？？
    unsigned char data = 0;
    data = io_in8(PORT_KEYDAT);
    fifo8_put(&keyInfo, data);
}

/**
 * @brief: 将ASCII码转为十六进制数
 * @param {char}
 * @return {*}
 */
char *charToHex(unsigned char c) {
    char temp = c % 16;
    keyVal[3] = charToVal(temp);
    c = c / 16;
    keyVal[2] = charToVal(c);
    return keyVal;
}

//将十六进制转为十六进制字符
char charToVal(char c) {
    if (c >= 10) {
        return 'A' + c - 10;
    } else {
        return '0' + c;
    }
}

/**
 * 将整型转化成十六进制字符串
 */
char *intToHexStr(unsigned int data) {
    static char str[11];
    str[0] = '0';
    str[1] = 'x';
    str[10] = 0;
    int i = 2;
    for (; i < 10; ++i) {
        str[i] = '0';
    }

    int p = 9;
    while (p > 1 && data > 0) {
        int e = data % 16;
        data /= 16;
        if (e >= 10) {
            str[p--] = 'A' + e - 10;
        } else {
            str[p--] = '0' + e;
        }
    }
    return str;
}

void wait_KBC_sendReady() {
    while (1) {
        if ((io_in8(PORT_KEYSTA) & KEYSTA_SEND_NOTREADY) == 0) {  //0x60端口第二个比特位为 0则准备鼠标
            break;
        }
    }
}

void init_keyboard() {
    wait_KBC_sendReady();
    io_out8(PORT_KEYCMD, KEYCMD_WRITE_MODE);
    wait_KBC_sendReady();
    io_out8(PORT_KEYDAT, KBC_MODE);  //激活鼠标电路器件
    return;
}

#define KEYCMD_SENDTO_MOUSE 0xd4  //CPU向键盘电路板发送的数据都会转交给鼠标器件
#define MOUSECMD_ENABLE 0xf4      //让鼠标进入工作状态，向内核发送中断信号

/**
 * 向键盘电路板发送数据，将相关数据传送给鼠标元器件
 * 0x64状态控制端口， 0x60数据读写端口
 */
void enable_mouse(struct MOUSE_DEC *mdec) {
    wait_KBC_sendReady();
    io_out8(PORT_KEYCMD, KEYCMD_SENDTO_MOUSE);  //进入鼠标工作模式
    wait_KBC_sendReady();
    io_out8(PORT_KEYDAT, MOUSECMD_ENABLE);  //进行鼠标中断
	mdec->phase = 0;
    return;
}

/**
 * 处理鼠标中断,需要放入中断向量为 0x2c处(从 8259A芯片 IR4引脚)
 * 0x20 表示将 OCW[5]设置成 1，表明中断结束，要接收新的中断
 * @param {char} *esp
 */
void intHandlerForMouse(char *esp) {
    unsigned char data = 0;
	io_out8(PIC1_OCW2, 0x20);
    io_out8(PIC_OCW2, 0x20);
    data = io_in8(PORT_KEYDAT);
    fifo8_put(&mouseInfo, data);
}

/**
 * 初始化数据缓冲区
 * @param {structFIFO} *fifo
 * @param {int} size
 * @param {unsignedchar} *buf
 * @return {*}
 */
void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf) {
    fifo->size = size;
    fifo->buf = buf;
    fifo->free = size;
    fifo->read = 0;
    fifo->write = 0;
    fifo->flags = 0;
    return;
}

#define FLAGS_OVERRUN 0x01

/**
 * 写缓冲
 * @param {structFIFO8} *fifo 缓冲区结构体
 * @param {unsignedchar} data 要写的缓冲区数据
 * @return {*}
 */
int fifo8_put(struct FIFO8 *fifo, unsigned char data) {
    if (fifo->free == 0) {
        fifo->flags |= FLAGS_OVERRUN;
        return -1;
    }
    fifo->buf[fifo->write] = data;
    fifo->write++;
    if (fifo->write == fifo->size) {  //写指针满则从头部开始覆盖
        fifo->write = 0;
    }
    fifo->free--;
    return OK;
}

/**
 * 读缓冲
 * @param {structFIFO8} *fifo 缓冲区结构体
 * @return {*}
 */
int fifo8_get(struct FIFO8 *fifo) {
    int data;
    if (fifo->free == fifo->size) {
        return -1;
    }
    data = fifo->buf[fifo->read];
    fifo->read++;
    if (fifo->read == fifo->size) {  //写指针满则从头部开始覆盖
        fifo->read = 0;
    }
    fifo->free++;
    return data;
}

/**
 * 判断缓冲区状态
 * @param {structFIFO8} *fifo
 * @return {*}
 */
int fifo8_status(struct FIFO8 *fifo) {
    return fifo->size - fifo->free;
}

/**
 * 显示键盘缓冲区内容
 * @param {*}
 * @return {*}
 */
void showKeyboardInfo() {
    io_sti();
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;
    unsigned char data = 0;
    data = fifo8_get(&keyInfo);
    char *p = charToHex(data);
    static int pos = 0;
    static int line = 0;
    showString(vram, xsize, pos, line, COL8_FFFFFF, p);
    pos += 32;
    if (pos == xsize) {
        line = (line == ysize) ? 0 : (line + 16);
        pos = 0;
    }
}

/**
 * 显示鼠标缓冲区内容，并重绘鼠标
 * @param {struct SHTCTL *ctl} 图层控制器
 *        {struct SHEET *sheet} 鼠标图层
 * @return {*}
 */
void showMouseInfo(struct SHTCTL *ctl, struct SHEET *sheet) {
    io_sti();
    char *vram = buf_back;
    unsigned char data = 0;
    data = fifo8_get(&mouseInfo);
    if (mouse_decode(&mouse_move, data) != 0) {
        //eraseMouse(vram);
        computeMousePos(&mouse_move);
        //drawMouse(vram);
        showString(vram, bootInfo.screenX, 0, 16, COL8_00FF00, "OK");
        sheet_slide(ctl, sheet, mx, my);
    }
}

/**
 * 解读鼠标缓冲区,4个状态的状态机
 * @param {structMOUSE_DEC} *mdec
 * @param {unsignedchar} data
 * @return {*}
 */
int mouse_decode(struct MOUSE_DEC *mdec, unsigned char data) {
    if (mdec->phase == 0) {
        if (data == 0xfa) {
            mdec->phase = 1;
        }
        return OK;
    }

    if (mdec->phase == 1) {
        if ((data | 0x37) == 0x3F) {  //确保 6.7位是 0，第 3位是 1，或者 (data & 0xc8 == 0x08)
            mdec->buf[0] = data;
            mdec->phase = 2;
        }
        return OK;
    }

    if (mdec->phase == 2) {
        mdec->buf[1] = data;
        mdec->phase = 3;
        return OK;
    }

    if (mdec->phase == 3) {
        mdec->buf[2] = data;
        mdec->phase = 1;
        mdec->btn = mdec->buf[0] & 0x07;  //记录哪个按键被按下
        mdec->x = mdec->buf[1];
        mdec->y = mdec->buf[2];
        if ((mdec->buf[0] & 0x10) != 0) {  //第一字节的第 5个比特位为 1
            mdec->x |= 0xffffff00;
        }
        if ((mdec->buf[0] & 0x20) != 0) {  //第一字节的第 6个比特位为 1
            mdec->y |= 0xffffff00;
        }
        mdec->y = -mdec->y;  //y轴翻转
        return OK;
    }
    return FALSE;
}

/**
 * 根据鼠标缓冲区数据计算鼠标坐标
 * @param {structMOUSE_DEC} *mdec
 */
void computeMousePos(struct MOUSE_DEC *mdec) {
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;
    mx += (mdec->x) / 2;  //调整鼠标移动速度
    my += (mdec->y) / 2;
    if (mx < 0) mx = 0;
    if (my < 0) my = 0;
    if (mx > xsize - 9) mx = xsize - 9;
    if (my > ysize - 1) my = ysize - 1;
    boxfill8(buf_back, xsize, COL8_0078D7, 0, 0, 79, 15);
    showString(buf_back, xsize, 0, 0, COL8_FFFF00, "mouse move");
}

// /**
//  * 移除鼠标
//  * @param {char} *vram
//  */
// void eraseMouse(char *vram) {
//     boxfill8(bootInfo.vgaRam, bootInfo.screenX, COL8_0078D7, mx, my, mx + 15, my + 15);
// }

// /**
//  * 重绘鼠标指针
//  * @param {char} *vram
//  */
// void drawMouse(char *vram) {
//     putblock(bootInfo.vgaRam, bootInfo.screenX, 16, 16, mx, my, buf_mouse, 16);
// }

/**
 * 打印地址范围描述符内容
 * @param {structMemRangeDesc} *desc
 * @param {char} *vram
 * @param {int} page
 * @param {int} xsize
 * @param {int} color
 * @return {*}
 */
void showMemInfo(struct MemRangeDesc *desc, char *vram, int page, int xsize, int color) {
    int x = 0, y = 0, gap = 14 * 8, strlen = 10 * 8;
    boxfill8(vram, xsize, COL8_0078D7, 0, 0, xsize, 100);
    showString(vram, xsize, x, y, color, "Page is: ");
    char *pageCnt = intToHexStr(page);
    showString(vram, xsize, gap, y, color, pageCnt);
    y += 16;
    showString(vram, xsize, x, y, color, "BaseAddrLow: ");
    char *baseAddrLow = intToHexStr(desc->baseAddrLow);
    showString(vram, xsize, gap, y, color, baseAddrLow);
    y += 16;
    showString(vram, xsize, x, y, color, "BaseAddrHigh: ");
    char *baseAddrHigh = intToHexStr(desc->baseAddrHigh);
    showString(vram, xsize, gap, y, color, baseAddrHigh);
    y += 16;
    showString(vram, xsize, x, y, color, "LengthLow: ");
    char *lengthLow = intToHexStr(desc->lengthLow);
    showString(vram, xsize, gap, y, color, lengthLow);
    y += 16;
    showString(vram, xsize, x, y, color, "LengthHigh: ");
    char *lengthHigh = intToHexStr(desc->lengthHigh);
    showString(vram, xsize, gap, y, color, lengthHigh);
    y += 16;
    showString(vram, xsize, x, y, color, "Type: ");
    char *type = intToHexStr(desc->type);
    showString(vram, xsize, gap, y, color, type);
    y += 16;
}