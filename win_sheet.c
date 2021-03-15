#include "mem_util.h"
#include "win_sheet.h"

#define SHEET_NOT_USE 0

/*
    新建一个图层的步骤：
    1. 新建一个图层对象，struct SHEET sheet
    2. 新建图层数据缓冲区buf，unsigned char *buf,并申请内存 memman_alloc_4K()
    3. 在图层管理器中分配空间，sheet = sheet_alloc(shtctl)
    4. 将数据缓冲写入图层,sheet_setbuf(sheet, buf, xsize, ysize, COL_INVISIBLE)
    5. 在图层绘制窗口make_window8并在图层上写入字符
    6. 移动窗体到合适的区域sheet_slide(ctl, sheet, mx, my)
    7. 设置图层层级sheet_level_updown(ctl, sheet, level)
/

/**
 * 初始化图层管理器
 */
struct SHTCTL *shtctl_init(struct MEMMANAGER *memman, unsigned char *vram, int xsize, int ysize) {
    struct SHTCTL *ctl;
    ctl = (struct SHTCTL *)memman_alloc_4K(memman, SIZE_OF_SHTCTL);
    if (ctl == 0) return 0;
    ctl->vram = vram;
    ctl->xsize = xsize;
    ctl->ysize = ysize;
    ctl->top = -1;
    for (int i = 0; i < MAX_SHEET; ++i) {
        ctl->sheets0[i].flags = SHEET_NOT_USE;
    }
    return ctl;
}

#define SHEET_USE 1

/**
 * 分配新的图层,找到一个未使用过的图层即使用
 */
struct SHEET *sheet_alloc(struct SHTCTL *ctl) {
    struct SHEET *sheet;
    for (int i = 0; i < MAX_SHEET; ++i) {
        if (ctl->sheets0[i].flags == 0) {
            sheet = &ctl->sheets0[i];
            sheet->flags = SHEET_USE;
            sheet->level = -1;
            return sheet;
        }
    }
    return 0;
}

/**
 * 设置图层数据
 */
void sheet_setbuf(struct SHEET *sheet, unsigned char *buf, int xsize, int ysize, int col_inv) {
    sheet->buf = buf;
    sheet->bxsize = xsize;
    sheet->bysize = ysize;
    sheet->col_inv = col_inv;
    return;
}

/**
 * 调整图层层级,数组按照图层从低到高排列
 */
void sheet_level_updown(struct SHTCTL *ctl, struct SHEET *sheet, int level) {
    int old_level = sheet->level;
    if (level > ctl->top + 1) {
        level = ctl->top + 1;
    }
    if (level < -1) {
        level = -1;
    }

    sheet->level = level;

    if (old_level > level) {                //原来窗口层级大于更新的层级，即窗口层级降低(down)
        if (level >= 0) {                   //如果窗口没有最小化
            for (int i = old_level; i > level; --i) {
                ctl->sheets[i] = ctl->sheets[i - 1];
                ctl->sheets[i]->level = i;
            }
            ctl->sheets[level] = sheet;
        } else {                            //如果窗口最小化  
            if (ctl->top > old_level) {     //将最小化图层覆盖
                for (int h = old_level; h < ctl->top; ++h) {
                    ctl->sheets[h] = ctl->sheets[h + 1];
                    ctl->sheets[h]->level = h;
                }
            }
            ctl->top--;                     //=======???最小化的窗口若要再显示该怎么办???========
        }
        sheet_refresh_new(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, sheet->vy0 + sheet->bysize);

    } else if (old_level < level) {         //窗口层级增加(up)
        if (old_level >= 0) {               //若窗口层级较低但仍然显示
            for (int i = old_level; i < level; ++i) {
                ctl->sheets[i] = ctl->sheets[i + 1];
                ctl->sheets[i]->level = i;
            }
            ctl->sheets[level] = sheet;
        } else if (old_level < 0) {         //若窗口最小化，现在要让其显示,将每个图层后移，空出要添加的那个图层
            for (int i = ctl->top; i >= level; --i) {
                ctl->sheets[i + 1] = ctl->sheets[i];
                ctl->sheets[i + 1]->level = i + 1;
            }
            ctl->sheets[level] = sheet;
            ctl->top++;
        }
        sheet_refresh_new(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, sheet->vy0 + sheet->bysize);
    }
}

/**
 * 刷新当前图层，从 bx0 by0 到 bx1 by1
 * 这里基于 sheet->buf 进行重绘
 */
int sheet_refresh(struct SHTCTL *ctl, struct SHEET *sheet, int bx0, int by0, int bx1, int by1) {
    if (sheet->level >= 0) {
        sheet_refresh_new(ctl, sheet->vx0 + bx0, sheet->vy0 + by0, sheet->vx0 + bx1, sheet->vy0 + by1);
    }
    return 0;
}

/**
 * 窗口移动时，重新绘制移动前区域内所有图层和移动后区域内所有图层
 */
void sheet_slide(struct SHTCTL *ctl, struct SHEET *sheet, int vx0, int vy0) {
    int old_vx = sheet->vx0, old_vy = sheet->vy0;
    sheet->vx0 = vx0;
    sheet->vy0 = vy0;
    if (sheet->level >= 0) {
        sheet_refresh_new(ctl, old_vx, old_vy, old_vx + sheet->bxsize, old_vy + sheet->bysize);
        sheet_refresh_new(ctl, vx0, vy0, vx0 + sheet->bxsize, vy0 + sheet->bysize);
    }
}

/**
 * 重绘当前区域的所有图层，优化算法，只需重绘鼠标原来的256像素和移动后的256像素
 * 这里的重绘是基于 vram
 * @param {vx0, vy0} 窗口左上角坐标
 *        {vx1, vy1} 窗口右下角坐标
 */
void sheet_refresh_new(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1) {
    int vx, vy;
    unsigned char *buf, c, *vram = ctl->vram;
    struct SHEET *sheet;
    for (int i = 0; i <=ctl->top; ++i) {
        sheet = ctl->sheets[i];
        buf = sheet->buf;
        for (int by = 0; by < sheet->bysize; ++by) {
            vy = sheet->vy0 + by;
            for (int bx = 0; bx < sheet->bxsize; ++bx) {
                vx = sheet->vx0 + bx;
                if (vx0 <= vx && vx < vx1 && vy0 <= vy && vy < vy1) {
                    c = buf[by * sheet->bxsize + bx];
                    if (c != sheet->col_inv) {
                        vram[vy * ctl->xsize + vx] = c;
                    }
                }
            }
        }
    }
    return;
}