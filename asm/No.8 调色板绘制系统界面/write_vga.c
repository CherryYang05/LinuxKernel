void io_hlt(void);
void io_cli(void);
void io_out8(int port, int data);
int  io_load_eflags(void);
void io_store_eflags(int eflags);

void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);

void CMain(void) {
    int i;
    char*p = 0;

    init_palette();

    for (i = 0xa0000; i <= 0xaffff; i++) {
        p = i;
        *p = i & 0x0f;  
    }

    while(1) {
       io_hlt();
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
    io_out8(0x03c8,  start);  		//设置调色板编号，端口03c8
    for (i = start; i <=end; i++ ) {
        io_out8(0x03c9,  rgb[0]);	//把调色板的RGB数值通过端口0x3c9写入显存系统
        io_out8(0x03c9,  rgb[1]);	//先压栈第二个参数，再压栈第一个参数
        io_out8(0x03c9,  rgb[2]);
 
        rgb += 3;
    }

    io_store_eflags(eflags);
    return;
}
