#define  COL8_000000  0
#define  COL8_FF0000  1
#define  COL8_00FF00  2
#define  COL8_FFFF00  3
#define  COL8_0000FF  4
#define  COL8_FF00FF  5
#define  COL8_00FFFF  6
#define  COL8_FFFFFF  7
#define  COL8_C6C6C6  8
#define  COL8_840000  9
#define  COL8_008400  10
#define  COL8_848400  11
#define  COL8_000084  12
#define  COL8_840084  13
#define  COL8_008484  14
#define  COL8_848484  15

void io_hlt(void);
void io_cli(void);
void io_sti(void);
void io_out8(int port, int data);
int  io_load_eflags(void);
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
    0x24, 0x7e, 0x42, 0x42, 0x42, 0xe7, 0x00, 0x00
};

extern char systemFont[16];

void showFont8(char *vram, int xsize, int x, int y, char c, char *font);

void showString(char *vram, int xsize, int x, int y, char color, unsigned char *s );

void putblock(char *vram, int vxsize, int pxsize,
int pysize, int px0, int py0, char *buf, int bxsize);

void init_mouse_cursor(char* mouse, char bc);
void intHandlerFromC(void);

static char mcursor[256];
static struct BOOTINFO bootInfo;

void CMain(void) {
    initBootInfo(&bootInfo);
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

    init_palette();
    
    boxfill8(vram, xsize, COL8_008484, 0, 0, xsize-1, ysize-29);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-28, xsize-1, ysize-28);
    boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize-27, xsize-1, ysize-27);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-26, xsize-1, ysize-1);
    
    boxfill8(vram, xsize, COL8_FFFFFF, 3, ysize-24, 59, ysize-24);
    boxfill8(vram, xsize, COL8_FFFFFF, 2, ysize-24, 2, ysize-4);
    boxfill8(vram, xsize, COL8_848484, 3, ysize-4,  59, ysize-4);
    boxfill8(vram, xsize, COL8_848484, 59, ysize-23, 59, ysize-5);
    boxfill8(vram, xsize, COL8_000000, 2, ysize-3, 59, ysize-3);
    boxfill8(vram, xsize, COL8_000000, 60, ysize-24, 60, ysize-3);

    boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-24, xsize-4, ysize-24);
    boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-23, xsize-47, ysize-4);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize-47, ysize-3, xsize-4, ysize-3);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize-3,  ysize-24, xsize-3, ysize-3);
 
    //showFont8(vram, xsize, 8, 8, COL8_FFFFFF, fontA);  

    //showFont8(vram, xsize, 8, 8, COL8_FFFFFF, systemFont + 'B' * 16);
    //showFont8(vram, xsize, 16, 8, COL8_FFFFFF, systemFont + 'M' * 16);
    //showFont8(vram, xsize, 24, 8, COL8_FFFFFF, systemFont + 'Y' * 16);
    //showFont8(vram, xsize, 32, 8, COL8_FFFFFF, systemFont + '2' *16);
    //showFont8(vram, xsize, 40, 8, COL8_FFFFFF, systemFont + '0' * 16);
    //showFont8(vram, xsize, 48, 8, COL8_FFFFFF, systemFont + '1' * 16);
	//showFont8(vram, xsize, 56, 8, COL8_FFFFFF, systemFont + '7' * 16);
	//showFont8(vram, xsize, 64, 8, COL8_FFFFFF, systemFont + '8' * 16);
	//showFont8(vram, xsize, 72, 8, COL8_FFFFFF, systemFont + '0' * 16);
	//showFont8(vram, xsize, 80, 8, COL8_FFFFFF, systemFont + '1' * 16);
	//showFont8(vram, xsize, 88, 8, COL8_FFFFFF, systemFont + '3' * 16);
	
    //showString(vram, xsize, 104, 8, COL8_FFFFFF, "Show cursor below!");
    
    init_mouse_cursor(mcursor, COL8_008484);
    putblock(vram, xsize, 16, 16, 80, 80, mcursor, 16);
    io_sti();

    for(;;) {
       io_hlt();
    }

}

void initBootInfo(struct BOOTINFO *pBootInfo) {
    pBootInfo->vgaRam = (char*)0xa0000;
    pBootInfo->screenX = 320;
    pBootInfo->screenY = 200;
}

void showString(char* vram, int xsize, int x, int y, char color, unsigned char *s ) {
    for (; *s != 0x00; s++) {
       showFont8(vram, xsize, x, y,color, systemFont + *s * 16);
       x += 8;
    }
}

void init_palette(void) {
    static  unsigned char table_rgb[16 * 3] = {
        0x00,  0x00,  0x00,			//全黑
        0xff,  0x00,  0x00,			//亮红
        0x00,  0xff,  0x00,			//亮绿
        0xff,  0xff,  0x00,			//亮黄
        0x00,  0x00,  0xff,			//亮蓝
        0xff,  0x00,  0xff,			//亮紫
        0x00,  0xff,  0xff,			//浅亮
        0xff,  0xff,  0xff,			//全白
        0xc6,  0xc6,  0xc6,			//亮灰
        0x84,  0x00,  0x00,			//暗红
        0x00,  0x84,  0x00,			//暗绿
        0x84,  0x84,  0x00,			//暗黄
        0x00,  0x00,  0x84,			//暗蓝
        0x84,  0x00,  0x84,			//暗紫
        0x00,  0x84,  0x84,			//浅暗蓝
        0x84,  0x84,  0x84,			//暗灰
    };
 
    set_palette(0, 15, table_rgb);
    return;
}

void set_palette(int start,  int end,  unsigned char *rgb) {
    int i, eflags;
    eflags = io_load_eflags();
    io_cli();
    io_out8(0x03c8,  start);            //设置调色板编号，端口 03c8
    for (i = start; i <= end; i++) {
        io_out8(0x03c9,  rgb[0] / 4);   //把调色板的RGB数值通过端口 0x3c9写入显存系统
        io_out8(0x03c9,  rgb[1] / 4);   //先压栈第二个参数，再压栈第一个参数
        io_out8(0x03c9,  rgb[2] / 4);
 
        rgb += 3;
    }

    io_store_eflags(eflags);
    return;
}

void boxfill8(unsigned char* vram, int xsize, unsigned char c, 
int x0, int y0, int x1, int y1) {
    int  x, y;
    for (y = y0; y <= y1; y++) {
		for (x = x0; x <= x1; x++) {
			vram[y * xsize + x] = c;
		}
	}
}

/**
 * 显示 8位的字符
 */
void showFont8(char *vram, int xsize, int x, int y, char c, char* font) {
    int i;
    char d;

    for (i = 0; i < 16; i++) {
        d = font[i]; 
        if ((d & 0x80) != 0) {vram[(y + i) * xsize + x + 0] = c;}
        if ((d & 0x40) != 0) {vram[(y + i) * xsize + x + 1] = c;}
        if ((d & 0x20) != 0) {vram[(y + i) * xsize + x + 2] = c;} 
        if ((d & 0x10) != 0) {vram[(y + i) * xsize + x + 3] = c;}
        if ((d & 0x08) != 0) {vram[(y + i) * xsize + x + 4] = c;}
        if ((d & 0x04) != 0) {vram[(y + i) * xsize + x + 5] = c;}
        if ((d & 0x02) != 0) {vram[(y + i) * xsize + x + 6] = c;}
        if ((d & 0x01) != 0) {vram[(y + i) * xsize + x + 7] = c;}
    }

}

void init_mouse_cursor(char *mouse, char bc) {
    static char cursor[16][16] = {
		"*************...",
		"*OOOOOOOOOO*....",
		"*OOOOOOOOO*.....",
		"*OOOOOOOO*......",
		"*OOOOOOO*.......",
		"*OOOOOO*........",
		"*OOOOOOO*.......",
		"*OOOOOOOO*......",
		"*OOO***OOO*.....",
		"*OO*...*OOO*....",
		"*O*.....*OOO*...",
		"**.......*OOO*..",
		"*.........*OOO*.",
		"...........*OOO*",
		"............*OO*",
		".............***"
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
}

void putblock(char *vram, int vxsize, int pxsize,
int pysize, int px0, int py0, char *buf, int bxsize) {
    int x, y;
    for (y = 0; y < pysize; y++)
      for (x = 0; x < pxsize; x++) {
          vram[(py0 + y) * vxsize + (px0 + x)] = buf[y * bxsize + x];
      }
}

void intHandlerFromC() {
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX;
    int ysize = bootInfo.screenY;
    boxfill8(vram, xsize, COL8_000000, 0, 0, xsize - 1, 15);
    showString(vram, xsize, 0, 0, COL8_00FFFF, "Keyboard input:");
    for(;;) {
		io_hlt();
    }
    show_char();
}
