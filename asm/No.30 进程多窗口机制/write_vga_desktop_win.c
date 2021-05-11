#include "global_define.h"
#include "mem_util.h"
#include "timer.h"
#include "win_sheet.h"
#include "multi_task.h"

void show_char(void);
void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);
void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x, int y, int x0, int y0);

struct BOOTINFO {
    char *vgaRam;
    short screenX, screenY;
};

void initBootInfo(struct BOOTINFO *pBootInfo);

extern char systemFont[16];

void showFont8(char *vram, int xsize, int x, int y, char c, char *font);
void showString(struct SHTCTL *ctl, struct SHEET *sheet, int x, int y, char color, unsigned char *s);
void putblock(char *vram, int vxsize, int pxsize, int pysize, int px0, int py0, char *buf, int bxsize);
void init_mouse_cursor(char *mouse, char bc);
void intHandlerFromC(void);

void init_keyboard();
void enable_mouse();

static struct BOOTINFO bootInfo;
static char keyVal[5] = {'0', 'x', 0, 0, 0};  //键盘扫描码和断码
char charToVal(char c);
char *charToHex(unsigned char c);

void showMouseInfo(struct SHTCTL *ctl, struct SHEET *sheet_back, struct SHEET *sheet_mouse);
void showKeyboardInfo(struct SHTCTL *ctl, struct SHEET *sheet);

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
void computeMousePos(struct SHTCTL *ctl, struct SHEET *sheet, struct MOUSE_DEC *mdec);
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
char get_font_data(int c, int offset);

void showMemInfo(struct SHTCTL *ctl, struct SHEET *sheet, struct MemRangeDesc *desc, char *vram, int page, int xsize, int color);

//内存管理器，以 0x100000地址那块内存为例
static struct MEMMANAGER *memman = (struct MEMMANAGER*)0x100000;

void init_screen8(char *vram, int x, int y);

static unsigned char *buf_back, buf_mouse[256];
#define COLOR_INVISIBLE 99

void make_window8(struct SHTCTL *ctl, struct SHEET *sheet, char *title);

struct SHEET *messageBox(struct SHTCTL *ctl, char *title, int bx, int by, int x0, int y0, int level);
struct SHEET *messageBoxToTask(struct SHTCTL *ctl, struct TASK *task, char *title, int bx, int by, int x0, int y0, int level);

//时钟中断相关
static struct FIFO8 timerInfo;
static char timerbuf[8];

//键盘的扫描码对应表(10H - 30H)
static char keytable[0x54] = {
    0, 0, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '^', 0, 0,
    'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '@', '[', 0, 0, 'A', 'S',
    'D', 'F', 'G', 'H', 'J', 'K', 'L', ';', ':', 0, 0, ']', 'Z', 'X', 'C', 'V',
    'B', 'N', 'M', ',', '.', '/', 0, '*', 0, ' ', 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, '7', '8', '9', '-', '4', '5', '6', '+', '1',
    '2', '3', '0', '.'};

void make_textbox8(struct SHEET *sheet, int x0, int y0, int sx, int sy, int c);

static struct SHTCTL *shtctl;           //图层控制器
static struct SHEET *sheet_win;
static struct SHEET *sheet_back;        //桌面图层
static struct SHEET *sheet_mouse;       //鼠标图层

//======================================== 主函数 ===================================================
void CMain(void) {
    initBootInfo(&bootInfo);
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;

    //图层显示依赖于多个进程
    struct SHEET *sheet_win_b[3];
    static struct TASK *task_b[3];

    //===================== 时钟中断操作 =====================
    struct TIMERCTL *timerctl = getTimerController();

    struct TIMER *timer, *timer2, *timer3;

    init_pit();

    fifo8_init(&timerInfo, 8, timerbuf, 0);
    timer = timer_alloc();
    timer_init(timer, &timerInfo, 10);
    timer_setTime(timer, 100);

    timer2 = timer_alloc();
    timer_init(timer2, &timerInfo, 2);
    timer_setTime(timer2, 300);

    timer3 = timer_alloc();
    timer_init(timer3, &timerInfo, 1);
    timer_setTime(timer3, 50);

    //===================== 时钟中断操作结束 =====================
    //初始化键鼠缓冲区
    fifo8_init(&keyInfo, 32, keybuf, 0);
    fifo8_init(&mouseInfo, 128, mousebuf, 0);
    init_palette();
    init_keyboard();  //准备键盘
    io_sti();
    enable_mouse(&mouse_move);  //准备鼠标

    // int memAddr = get_addr_buffer_int();
    // char *pp = intToHexStr(memAddr);
    // showString(vram, xsize, 0, 0, COL8_FFFF00, pp);

    struct MemRangeDesc *memDesc = (struct MemRangeDesc *)get_addr_buffer();

    //可用内存块数量
    int memCnt = get_memory_block_count();
    //char *p = intToHexStr(memCnt);

    //初始化内存管理器
    memman_init(memman);
    //回收内存块
    memman_free(memman, 0x001008000, 0x3FEE8000);
    int memTotal = memman_total(memman) / (1024 * 1024);
    char *pMemTotal = intToHexStr(memTotal);
    // showString(shtctl, sheet_back, 0, 0, COL8_FFFF00, "Total Mem Size is: ");
    // showString(shtctl, sheet_back, 19 * 8, 0, COL8_FFFF00, pMemTotal);
    // showString(shtctl, sheet_back, 30 * 8, 0, COL8_FFFF00, "MB");
    shtctl = shtctl_init(memman, vram, xsize, ysize);

    //======================== 图层操作 ===========================
    sheet_back = sheet_alloc(shtctl);
    sheet_mouse = sheet_alloc(shtctl);
    buf_back = (unsigned char *)memman_alloc_4K(memman, xsize * ysize);
    init_screen8(buf_back, xsize, ysize);

    sheet_setbuf(sheet_back, buf_back, xsize, ysize, COLOR_INVISIBLE);
    sheet_setbuf(sheet_mouse, buf_mouse, 16, 16, COLOR_INVISIBLE);
    init_mouse_cursor(buf_mouse, COLOR_INVISIBLE);
    sheet_slide(shtctl, sheet_back, 0, 0);
    mx = (xsize - 16) / 2;
    my = (ysize - 28 - 16) / 2;
    sheet_slide(shtctl, sheet_mouse, mx, my);
    sheet_win = messageBox(shtctl, "Counter", 300, 150, 170, 100, 4);     //新建窗口图层，调整窗口图层为1
    // sheet_win2 = messageBox(shtctl, "WIN_SHEET", 230, 120, 1);
    sheet_level_updown(shtctl, sheet_back, 0);                  //调整桌面图层为0
    sheet_level_updown(shtctl, sheet_mouse, 50);                //调整鼠标图层为100
    //sheet_slide(shtctl, sheet_win, 10, 10);
    //========================================
    // showString(shtctl, sheet_back, 0, 16, COL8_00FF00, intToHexStr(shtctl->top));
    // showString(shtctl, sheet_back, 0, 32, COL8_00FF00, intToHexStr((int)buf_back));
    // showString(shtctl, sheet_back, 0, 48, COL8_00FF00, intToHexStr((int)shtctl->vram));
    //======================== 图层操作结束 ========================
    
    io_sti();

    //======================== 进程操作开始 ========================

    //固定写死
    // tss_a.ldtr = 0;
    // tss_a.iomap = 0x40000000;
    // tss_b.ldtr = 0;
    // tss_b.iomap = 0x40000000;
    // set_segmdesc(gdt + 7, 103, (int)&tss_a, AR_TSS32);
    // set_segmdesc(gdt + 8, 103, (int)&tss_a, AR_TSS32);
    // set_segmdesc(gdt + 9, 103, (int)&tss_b, AR_TSS32);
    // set_segmdesc(gdt + 6, 0xfffff, (int)task_b_main, 0x409a);
    // load_tr(7 * 8);
    // taskswitch8();
    // char *p = intToHexStr(tss_a.eflags);
    // showString(shtctl, sheet_back, 0, 0, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.esp);
    // showString(shtctl, sheet_back, 0, 16, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.es / 8);
    // showString(shtctl, sheet_back, 0, 32, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.cs / 8);
    // showString(shtctl, sheet_back, 0, 48, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.ss / 8);
    // showString(shtctl, sheet_back, 0, 64, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.ds / 8);
    // showString(shtctl, sheet_back, 0, 80, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.gs / 8);
    // showString(shtctl, sheet_back, 0, 96, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.fs / 8);
    // showString(shtctl, sheet_back, 0, 112, COL8_FFFFFF, p);

    // p = intToHexStr(tss_a.cr3);
    // showString(shtctl, sheet_back, 0, 128, COL8_FFFFFF, p);

    int addr_code32 = get_code32_addr();
    //struct SEGMENT_DESCRIPTOR *gdt = (struct SEGMENT_DESCRIPTOR*)get_addr_gdt();
    static struct TASK *task_a;
    //struct TSS32 *pTss = (struct TSS32*)memman_alloc_4K(memman, 103);

    task_a = task_init(memman);

    keyInfo.task = task_a;          //***

    sheet_win_b[0] = messageBoxToTask(shtctl, task_b[0], "Task1", 150, 50, 150, 30, 3);
    sheet_win_b[1] = messageBoxToTask(shtctl, task_b[1], "Task2", 150, 50, 300, 30, 2);
    sheet_win_b[2] = messageBoxToTask(shtctl, task_b[2], "Task3", 150, 50, 450, 30, 1);
    showString(shtctl, sheet_back, 0, 0, COL8_FFFFFF, intToHexStr(getTaskctl()->running));
    //======================== 进程操作结束 ========================

    static int cnt = 0;
    unsigned char data = 0;
    int cursor_c = COL8_FFFFFF;
    static int line = 0;        //输入框横坐标
    static int pos = 16;        //输入框纵坐标
    int xpos = 0;
    //multi_task_init();          //初始化任务调度时钟
    //showString(shtctl, sheet_back, 0, 192 + line, COL8_00FF00, intToHexStr(getMulti_Task_tr() / 8));
    //line += 8;
    showString(shtctl, sheet_win, BOX_MARGIN_LEFT, BOX_MARGIN_TOP + 40, COL8_008400, "Copyright 2021 Cherry");

    int stop_task_a = 0;
    for (;;) {
        io_sti();
        //显示时钟中断倒计时
        //char *p = intToHexStr(timer->timeout);
        // char *p = intToHexStr(getTaskTimer()->timeout);
        // boxfill8(sheet_win->buf, sheet_win->bxsize, COL8_C6C6C6, BOX_MARGIN_LEFT, BOX_MARGIN_TOP, 150, 38);
        // showString(shtctl, sheet_win, BOX_MARGIN_LEFT, BOX_MARGIN_TOP, COL8_008400, p);
        
        //显示键盘缓冲状态
        // char *keybuf_p = intToHexStr(fifo8_status(&keyInfo));
        // boxfill8(sheet_win->buf, sheet_win->bxsize, COL8_C6C6C6, BOX_MARGIN_LEFT, BOX_MARGIN_TOP + 38, 100, 76);
        // showString(shtctl, sheet_win, BOX_MARGIN_LEFT, BOX_MARGIN_TOP + 38, COL8_008400, "keybuf_p");

        //显示鼠标缓冲状态
        // char *mouse_p = intToHexStr(fifo8_status(&mouseInfo));
        // boxfill8(sheet_win->buf, sheet_win->bxsize, COL8_C6C6C6, BOX_MARGIN_LEFT, BOX_MARGIN_TOP + 54, 100, 92);
        // showString(shtctl, sheet_win, BOX_MARGIN_LEFT, BOX_MARGIN_TOP + 54, COL8_008400, mouse_p);

        io_cli();
        if (fifo8_status(&keyInfo) + fifo8_status(&mouseInfo) + fifo8_status(&timerInfo) == 0) {
            io_sti();
        } else if (fifo8_status(&keyInfo)) {    //键盘缓冲有数据
            //showKeyboardInfo(shtctl, sheet_back);
            io_sti();
            data = fifo8_get(&keyInfo);
            if (data == 0x1C) {                 //如果按下回车键(0x1C)，显示地址范围描述符信息
                showMemInfo(shtctl, sheet_back, memDesc, sheet_back->buf, cnt, xsize, COL8_FFFFFF);
                cnt++;
                if (cnt >= memCnt) {
                    cnt = 0;
                }
                //sheet_refresh(shtctl);
            } else if (keytable[data] != 0 && data >= 0x10 && data <= 0x53 && line <= 142 || data == 0x0E && line >= 8) {    //打印键盘字符
                if (keytable[data] != 0 && data >= 0x10 && data <= 0x53 && line <= 142) {
                    //闪烁光标的位置,先变成白的，防止当闪烁到黑色是写入字符而变黑
                    boxfill8(sheet_win->buf, sheet_win->bxsize, COL8_FFFFFF, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3, 
                            BOX_MARGIN_LEFT + line + 6, BOX_MARGIN_TOP + pos + 3 + 14);                 
                    sheet_refresh(shtctl, sheet_win, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3,
                            BOX_MARGIN_LEFT + line + 8, BOX_MARGIN_TOP + pos + 3 + 16);
                    char buf[2] = {keytable[data], 0};
                    showString(shtctl, sheet_win, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3, COL8_000000, buf);
                    line += 8;
                    if (line >= sheet_win->bxsize - 2 * BOX_MARGIN_LEFT) {
                        pos += 16;
                        line = 0;
                    }
                    stop_task_a = 0;
                } else if (data == 0x0E && line >= 8) {     //删除键
                    boxfill8(sheet_win->buf, sheet_win->bxsize, COL8_FFFFFF, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3,
                            BOX_MARGIN_LEFT + line + 8, BOX_MARGIN_TOP + pos + 3 + 14);
                    sheet_refresh(shtctl, sheet_win, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3,
                            BOX_MARGIN_LEFT + line + 8, BOX_MARGIN_TOP + pos + 3 + 16);
                    line -= 8;
                    boxfill8(sheet_win->buf, sheet_win->bxsize, COL8_FFFFFF, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3,
                            BOX_MARGIN_LEFT + line + 8, BOX_MARGIN_TOP + pos + 3 + 14);
                    sheet_refresh(shtctl, sheet_win, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3,
                            BOX_MARGIN_LEFT + line + 8, BOX_MARGIN_TOP + pos + 3 + 16);
                }      
            }
        } else if (fifo8_status(&mouseInfo)) {              //鼠标缓冲有数据
            showMouseInfo(shtctl, sheet_back, sheet_mouse);
        } else if (fifo8_status(&timerInfo)) {              //处理时钟中断timer
            io_sti();
            int key = fifo8_get(&timerInfo);
            if (key == 10) {
                //showString(shtctl, sheet_back, 0, 176, COL8_FF00FF, "switch to task b");
                showString(shtctl, sheet_back, xpos, 160, COL8_FFFFFF, "A");
                //farjmp(0,9*8);
                //taskswitch9();
                timer_setTime(timer, 100);
                xpos += 8;
                //A进程休眠
                stop_task_a++;
                if (xpos >= 40 && stop_task_a == 5) {
                    io_cli();
                    task_sleep(task_a);
                    io_sti();
                }
            } else if (key == 2) {
                showString(shtctl, sheet_back, 0, 32, COL8_FFFFFF, "3[sec]");
            } else {                                        //处理时钟中断timer，绘制闪烁光标
                if (key != 0) {
                    timer_init(timer3, &timerInfo, 0);
                    cursor_c = COL8_000000;
                } else {
                    timer_init(timer3, &timerInfo, 1);
                    cursor_c = COL8_FFFFFF;
                }
                timer_setTime(timer3, 50);                  //实现光标闪烁
                boxfill8(sheet_win->buf, sheet_win->bxsize, cursor_c, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3, 
                        BOX_MARGIN_LEFT + line + 6, BOX_MARGIN_TOP + pos + 3 + 14);
                sheet_refresh(shtctl, sheet_win, BOX_MARGIN_LEFT + line, BOX_MARGIN_TOP + pos + 3,
                        BOX_MARGIN_LEFT + line + 8, BOX_MARGIN_TOP + pos + 3 + 16);           
            }
        }
    }
}
//===================================== 主函数结束 ==============================================

void task_b_main(struct SHEET *sheet) {
    //multi_task_init();
    showString(shtctl, sheet_back, 0, 144, COL8_FFFFFF, "Enter Task B");

    struct FIFO8 timerinfo_b;
    char timerbuf_b[8];
    struct TIMER *timer_b = 0;

    int i = 0;
 
    fifo8_init(&timerinfo_b, 8, timerbuf_b, 0);
    timer_b = timer_alloc();
    timer_init(timer_b, &timerinfo_b, 123);
   
    timer_setTime(timer_b, 100);
    int xpos = 0;
    int count = 0;
    for(;;) {
        count++;
        io_cli();
        if (fifo8_status(&timerinfo_b) == 0) {
            io_sti();
        } else {
           i = fifo8_get(&timerinfo_b);
           io_sti();
           if (i == 123) {
               //showString(shtctl, sheet_back, 0, 160, COL8_FFFFFF, "switch back");
               showString(shtctl, sheet_back, xpos, 176, COL8_FFFFFF, "B");
               //taskswitch7();
               //farjmp(0, 7 * 8);
               timer_setTime(timer_b, 100);
               xpos += 8;
               boxfill8(sheet->buf, sheet->bxsize, COL8_C6C6C6, BOX_MARGIN_LEFT, BOX_MARGIN_TOP, 100, 38);
               sheet_refresh(shtctl, sheet, BOX_MARGIN_LEFT, BOX_MARGIN_TOP, BOX_MARGIN_LEFT + 100, BOX_MARGIN_TOP + 38);
               char *p = intToHexStr(count);
               showString(shtctl, sheet, BOX_MARGIN_LEFT, BOX_MARGIN_TOP, COL8_008400, p);
           }
        }
    }
}

void initBootInfo(struct BOOTINFO *pBootInfo) {
    pBootInfo->vgaRam = (char *)0xe0000000;
    pBootInfo->screenX = 640;
    pBootInfo->screenY = 480;
}

/**
 * 在当前图层显示字符串
 */
void showString(struct SHTCTL *ctl, struct SHEET *sheet, int x, int y, char color, unsigned char *s) {
    int begin = x;
    for (; *s != 0x00; s++) {
        showFont8(sheet->buf, sheet->bxsize, x, y, color, systemFont + *s * 16);
        x += 8;
    }
    sheet_refresh(ctl, sheet, begin, y, x, y + 16);
}

void init_screen8(char *vram, int xsize, int ysize) {
    //桌面底部栏
    boxfill8(vram, xsize, COL8_0078D7, 0, 0, xsize - 1, ysize - 25);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 24, xsize - 1, ysize - 24);
    boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize - 23, xsize - 1, ysize - 23);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 22, xsize - 1, ysize - 1);

    //左边按钮
    boxfill8(vram, xsize, COL8_FFFFFF, 10, ysize - 20, 51, ysize - 20);
    boxfill8(vram, xsize, COL8_FFFFFF, 9, ysize - 20, 9, ysize - 4);
    boxfill8(vram, xsize, COL8_848484, 10, ysize - 4, 50, ysize - 4);
    boxfill8(vram, xsize, COL8_848484, 50, ysize - 19, 50, ysize - 5);
    boxfill8(vram, xsize, COL8_000000, 10, ysize - 3, 50, ysize - 3);
    boxfill8(vram, xsize, COL8_000000, 51, ysize - 20, 51, ysize - 3);

    //右边按钮
    boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 20, xsize - 4, ysize - 20);
    boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 20, xsize - 47, ysize - 3);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize - 47, ysize - 3, xsize - 4, ysize - 3);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize - 3, ysize - 20, xsize - 3, ysize - 3);
}

void init_palette(void) {
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX, ysize = bootInfo.screenY;
    static unsigned char table_rgb[16 * 3] = {
        0x00, 0x00, 0x00,  //黑
        0xff, 0x00, 0x00,  //红
        0x00, 0xff, 0x00,  //绿
        0xff, 0xff, 0x00,  //黄
        0x00, 0x00, 0xff,  //蓝
        0xff, 0x00, 0xff,  //紫
        0x00, 0xff, 0xff,  //浅亮
        0xff, 0xff, 0xff,  //白
        0xc6, 0xc6, 0xc6,  //亮灰
        //0x76, 0x76, 0x76,
        0x84, 0x00, 0x00,  //暗红
        0x00, 0x84, 0x00,  //暗绿
        0x84, 0x84, 0x00,  //暗黄
        0x00, 0x00, 0x84,  //暗蓝
        0x84, 0x00, 0x84,  //暗紫
        //0x00,  0x84,  0x84,	//浅暗蓝
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

void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x0, int y0, int x1, int y1) {
    int x, y;
    for (y = y0; y <= y1; y++) {
        for (x = x0; x <= x1; x++) {
            vram[y * xsize + x] = c;
        }
    }
}

/**
 * 绘制文本输入框
 * @param {x0, y0} 文本框左上角坐标
 *        {sx, yx} 文本框长宽
 *        {c} 颜色
 */
void make_textbox8(struct SHEET *sheet, int x0, int y0, int sx, int sy, int c) {
    int x1 = x0 + sx, y1 = y0 + sy;
    boxfill8(sheet->buf, sheet->bxsize, COL8_848484, x0 - 2, y0 - 3, x1 + 1, y0 - 3);
    boxfill8(sheet->buf, sheet->bxsize, COL8_848484, x0 - 3, y0 - 3, x0 - 3, y1 + 1);
    boxfill8(sheet->buf, sheet->bxsize, COL8_FFFFFF, x0 - 3, y1 + 2, x1 + 1, y1 + 2);
    boxfill8(sheet->buf, sheet->bxsize, COL8_FFFFFF, x1 + 2, y0 - 3, x1 + 2, y1 + 2);
    boxfill8(sheet->buf, sheet->bxsize, COL8_000000, x0 - 1, y0 - 2, x1 + 0, y0 - 2);
    boxfill8(sheet->buf, sheet->bxsize, COL8_000000, x0 - 2, y0 - 2, x0 - 2, y1 + 0);
    boxfill8(sheet->buf, sheet->bxsize, COL8_C6C6C6, x0 - 2, y1 + 1, x1 + 0, y1 + 1);
    boxfill8(sheet->buf, sheet->bxsize, COL8_C6C6C6, x1 + 1, y0 - 2, x1 + 1, y1 + 1);
    boxfill8(sheet->buf, sheet->bxsize, c, x0 - 1, y0 - 1, x1 + 0, y1 + 0);
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
        "......**........"};

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
    io_out8(PIC0_OCW2, 0x20);  //io_out8(PIC0_OCW2, 0x20)也能正确运行？？？？
    unsigned char data = 0;
    data = io_in8(PORT_KEYDAT);
    fifo8_put(&keyInfo, data);
    return;
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
    io_out8(PIC0_OCW2, 0x20);
    data = io_in8(PORT_KEYDAT);
    fifo8_put(&mouseInfo, data);
}

/**
 * 显示键盘缓冲区内容
 * @param {*}
 * @return {*}
 */
void showKeyboardInfo(struct SHTCTL *ctl, struct SHEET *sheet) {
    io_sti();
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;
    unsigned char data = 0;
    data = fifo8_get(&keyInfo);
    char *p = charToHex(data);
    static int pos = 0;
    static int line = 0;
    showString(ctl, sheet, pos, line, COL8_FFFFFF, p);
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
void showMouseInfo(struct SHTCTL *ctl, struct SHEET *sheet_back, struct SHEET *sheet_mouse) {
    io_sti();
    unsigned char data = 0;
    data = fifo8_get(&mouseInfo);
    if (mouse_decode(&mouse_move, data) != 0) {
        computeMousePos(ctl, sheet_back, &mouse_move);
        sheet_slide(ctl, sheet_mouse, mx, my);
        if ((mouse_move.btn & 0x01) != 0) {
            sheet_slide(ctl, sheet_win, mx - 80, my - 8);
        }
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
        return FALSE;
    }

    if (mdec->phase == 1) {
        if ((data | 0x37) == 0x3F) {  //确保 6.7位是 0，第 3位是 1，或者 (data & 0xc8 == 0x08)
            mdec->buf[0] = data;
            mdec->phase = 2;
        }
        return FALSE;
    }

    if (mdec->phase == 2) {
        mdec->buf[1] = data;
        mdec->phase = 3;
        return FALSE;
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
    return ERROR;
}

/**
 * 根据鼠标缓冲区数据计算鼠标坐标
 * @param {structMOUSE_DEC} *mdec
 */
void computeMousePos(struct SHTCTL *ctl, struct SHEET *sheet, struct MOUSE_DEC *mdec) {
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;
    mx += mdec->x;  //调整鼠标移动速度
    my += mdec->y;
    if (mx < 0) mx = 0;
    if (my < 0) my = 0;
    if (mx > xsize - 9) mx = xsize - 9;
    if (my > ysize - 1) my = ysize - 1;
    //boxfill8(sheet->buf, xsize, COL8_0078D7, 0, 0, 79, 15);
    //showString(ctl, sheet, 0, 0, COL8_FFFF00, "The mouse is moving...");
}

/**
 * 打印地址范围描述符内容
 * @param {structMemRangeDesc} *desc
 * @param {char} *vram
 * @param {int} page
 * @param {int} xsize
 * @param {int} color
 * @return {*}
 */
void showMemInfo(struct SHTCTL *ctl, struct SHEET *sheet, struct MemRangeDesc *desc, char *vram, int page, int xsize, int color) {
    int x = 0, y = 0, gap = 14 * 8, strlen = 10 * 8;
    boxfill8(vram, xsize, COL8_0078D7, 0, 0, xsize, 100);
    showString(ctl, sheet, x, y, color, "Page is: ");
    char *pageCnt = intToHexStr(page);
    showString(ctl, sheet, gap, y, color, pageCnt);
    y += 16;
    showString(ctl, sheet, x, y, color, "BaseAddrLow: ");
    char *baseAddrLow = intToHexStr(desc->baseAddrLow);
    showString(ctl, sheet, gap, y, color, baseAddrLow);
    y += 16;
    showString(ctl, sheet, x, y, color, "BaseAddrHigh: ");
    char *baseAddrHigh = intToHexStr(desc->baseAddrHigh);
    showString(ctl, sheet, gap, y, color, baseAddrHigh);
    y += 16;
    showString(ctl, sheet, x, y, color, "LengthLow: ");
    char *lengthLow = intToHexStr(desc->lengthLow);
    showString(ctl, sheet, gap, y, color, lengthLow);
    y += 16;
    showString(ctl, sheet, x, y, color, "LengthHigh: ");
    char *lengthHigh = intToHexStr(desc->lengthHigh);
    showString(ctl, sheet, gap, y, color, lengthHigh);
    y += 16;
    showString(ctl, sheet, x, y, color, "Type: ");
    char *type = intToHexStr(desc->type);
    showString(ctl, sheet, gap, y, color, type);
    y += 16;
}

/**
 * 新建窗体图层并绘制窗体
 * @param {ctl}     图层控制器
 *        {title}   窗口标题
 *        {bx, by}  窗口长宽
 *        {x0, y0}  窗口左上角坐标
 *        {level}   窗口层级
 */
struct SHEET *messageBox(struct SHTCTL *ctl, char *title, int bx, int by, int x0, int y0, int level) {
    struct SHEET *sheet_win;
    unsigned char *buf_win;
    buf_win = (unsigned char *)memman_alloc_4K(memman, bx * by);
    sheet_win = sheet_alloc(ctl);
    sheet_setbuf(sheet_win, buf_win, bx, by, COLOR_INVISIBLE);
    make_window8(ctl, sheet_win, title);
    make_textbox8(sheet_win, BOX_MARGIN_LEFT, BOX_MARGIN_TOP + 19, 150, 16, COL8_FFFFFF);
    sheet_slide(ctl, sheet_win, x0, y0);
    sheet_level_updown(ctl, sheet_win, level);
    return sheet_win;
}

/**
 * 新建窗体图层并绑定到进程对象
 * @param {ctl}     图层控制器
 *        {task}    窗口绑定的进程对象
 *        {title}   窗口标题
 *        {bx, by}  窗口长宽
 *        {x0, y0}  窗口左上角坐标
 *        {level}   窗口层级
 */
struct SHEET *messageBoxToTask(struct SHTCTL *ctl, struct TASK *task, char *title, int bx, int by, int x0, int y0, int level) {
    struct SHEET *sheet_win;
    unsigned char *buf_win;
    buf_win = (unsigned char *)memman_alloc_4K(memman, bx * by);
    sheet_win = sheet_alloc(ctl);
    sheet_setbuf(sheet_win, buf_win, bx, by, COLOR_INVISIBLE);
    make_window8(ctl, sheet_win, title);
    //make_textbox8(sheet_win, BOX_MARGIN_LEFT, BOX_MARGIN_TOP + 19, 150, 16, COL8_FFFFFF);

    task = task_alloc();
    task->tss.ldtr = 0;
    task->tss.iomap = 0x40000000;
    task->tss.eip =  (int)(task_b_main - get_code32_addr());
    task->tss.es = 0;
    task->tss.cs = 1 * 8;             //6 * 8;
    task->tss.ss = 4 * 8;
    task->tss.ds = 3 * 8;
    task->tss.fs = 0;
    task->tss.gs = 2 * 8;
    task->tss.esp -= 8;
    *((int*)(task->tss.esp + 4)) = (int)sheet_win;
    task_run(task);

    sheet_slide(ctl, sheet_win, x0, y0);
    sheet_level_updown(ctl, sheet_win, level);
    return sheet_win;
}

/**
 * 绘制Windows8风格窗体
 */
void make_window8(struct SHTCTL *ctl, struct SHEET *sheet, char *title) {
    //右上角关闭按钮
    static char closebtn[14][16] = {
        "OOOOOOOOOOOOOOO@",
        "OQQQQQQQQQQQQQ$@",
        "OQQQQQQQQQQQQQ$@",
        "OQQQ@@QQQQ@@QQ$@",
        "OQQQQ@@QQ@@QQQ$@",
        "OQQQQQ@@@@QQQQ$@",
        "OQQQQQQ@@QQQQQ$@",
        "OQQQQQ@@@@QQQQ$@",
        "OQQQQ@@QQ@@QQQ$@",
        "OQQQ@@QQQQ@@QQ$@",
        "OQQQQQQQQQQQQQ$@",
        "OQQQQQQQQQQQQQ$@",
        "O$$$$$$$$$$$$$$@",
        "@@@@@@@@@@@@@@@@"};

    int x, y;
    char c;
    int bxsize = sheet->bxsize;
    int bysize = sheet->bysize;
    boxfill8(sheet->buf, bxsize, COL8_C6C6C6, 0, 0, bxsize - 1, 0);
    boxfill8(sheet->buf, bxsize, COL8_FFFFFF, 1, 1, bxsize - 2, 1);
    boxfill8(sheet->buf, bxsize, COL8_C6C6C6, 0, 0, 0, bysize - 1);
    boxfill8(sheet->buf, bxsize, COL8_FFFFFF, 1, 1, 1, bysize - 1);
    boxfill8(sheet->buf, bxsize, COL8_848484, bxsize - 2, 1, bxsize - 2, bysize - 2);
    boxfill8(sheet->buf, bxsize, COL8_000000, bxsize - 1, 0, bxsize - 1, bysize - 1);
    boxfill8(sheet->buf, bxsize, COL8_C6C6C6, 2, 2, bxsize - 3, bysize - 3);
    boxfill8(sheet->buf, bxsize, COL8_000084, 3, 3, bxsize - 4, 20);
    boxfill8(sheet->buf, bxsize, COL8_848484, 1, bysize - 2, bxsize - 2, bysize - 2);
    boxfill8(sheet->buf, bxsize, COL8_000000, 0, bysize - 1, bxsize - 1, bysize - 1);

    showString(ctl, sheet, BOX_MARGIN_LEFT, 4, COL8_FFFFFF, title);

    //绘制右上角关闭按钮
    for (int y = 0; y < 14; ++y) {
        for (int x = 0; x < 16; ++x) {
            c = closebtn[y][x];
            if (c == '@') {
                c = COL8_000000;
            } else if (c == '$') {
                c = COL8_848484;
            } else if (c == 'Q') {
                c = COL8_C6C6C6;
            }
            //绘制到窗口图层的数据缓冲区中（基于该sheet的buf）
            sheet->buf[(5 + y) * sheet->bxsize + (sheet->bxsize - 21 + x)] = c;
        }
    }
}