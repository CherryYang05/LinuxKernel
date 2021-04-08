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
    ctl->map = (unsigned char*)memman_alloc_4K(memman, xsize * ysize);
    if (ctl->map == 0) {
        memman_free_4K(memman, (unsigned int)ctl, SIZE_OF_SHTCTL);
        return 0;
    }
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
            //窗口层级降低则更新高于此层级的窗体
            sheet_refreshmap(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, 
                    sheet->vy0 + sheet->bysize, level + 1);
            sheet_refresh_new(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, 
                    sheet->vy0 + sheet->bysize, level + 1, old_level);
        } else {                            //如果窗口最小化  
            if (ctl->top > old_level) {     //将最小化图层覆盖
                for (int h = old_level; h < ctl->top; ++h) {
                    ctl->sheets[h] = ctl->sheets[h + 1];
                    ctl->sheets[h]->level = h;
                }
            }
            ctl->top--;                     //=======???最小化的窗口若要再显示该怎么办???========
            sheet_refreshmap(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, 
                    sheet->vy0 + sheet->bysize, 0);
            sheet_refresh_new(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, 
                    sheet->vy0 + sheet->bysize, 0, old_level - 1);
        }
        // sheet_refresh_new(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, 
        //         sheet->vy0 + sheet->bysize, sheet->level);

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
        //图层层级增加，要更新比更新后层级更高层级的图层
        sheet_refreshmap(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, 
                sheet->vy0 + sheet->bysize, level);
        sheet_refresh_new(ctl, sheet->vx0, sheet->vy0, sheet->vx0 + sheet->bxsize, 
                sheet->vy0 + sheet->bysize, level, level);
    }
}

/**
 * 刷新当前图层，从 bx0 by0 到 bx1 by1
 * 这里基于 sheet->buf 进行重绘
 */
int sheet_refresh(struct SHTCTL *ctl, struct SHEET *sheet, int bx0, int by0, int bx1, int by1) {
    if (sheet->level >= 0) {
        sheet_refresh_new(ctl, sheet->vx0 + bx0, sheet->vy0 + by0, 
                        sheet->vx0 + bx1, sheet->vy0 + by1, sheet->level, sheet->level);
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
        sheet_refreshmap(ctl, old_vx, old_vy, old_vx + sheet->bxsize, old_vy + sheet->bysize, 0);
        sheet_refreshmap(ctl, vx0, vy0, vx0 + sheet->bxsize, vy0 + sheet->bysize, sheet->level);
        //移动窗体之前要刷新当前位置的所有窗体（不包含当前窗体）
        sheet_refresh_new(ctl, old_vx, old_vy, old_vx + sheet->bxsize, 
                    old_vy + sheet->bysize, 0, sheet->level - 1);
        //移动之后要刷新包括本窗体在内的所有窗体
        sheet_refresh_new(ctl, vx0, vy0, vx0 + sheet->bxsize, 
                    vy0 + sheet->bysize, sheet->level, sheet->level);
    }
}

/**
 * 重绘当前区域的所有图层，优化算法，只需重绘鼠标原来的256像素和移动后的256像素
 * 这里的重绘是基于 vram
 * @param {vx0, vy0} 窗口左上角坐标
 *        {vx1, vy1} 窗口右下角坐标
 *        {level} 当前窗体对应的图层高度,避免刷新不必要的图层带来CPU消耗
 *        {level_0} 刷新 level 到 level_0 层级的窗体
 */
void sheet_refresh_new(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1, int level, int level_0) {
    int vx, vy;
    unsigned char *buf, c, *vram = ctl->vram, *map = ctl->map, sheet_id;
    struct SHEET *sheet;
    for (int i = level; i <= level_0; ++i) {
        sheet = ctl->sheets[i];
        buf = sheet->buf;
        sheet_id = sheet - ctl->sheets0;                     //获得当前图层对应的窗口号
        for (int by = 0; by < sheet->bysize; ++by) {
            vy = sheet->vy0 + by;
            for (int bx = 0; bx < sheet->bxsize; ++bx) {
                vx = sheet->vx0 + bx;
                if (vx0 <= vx && vx < vx1 && vy0 <= vy && vy < vy1) {
                    c = buf[by * sheet->bxsize + bx];
                    //判断当前坐标对应的像素点是否属于要刷新的窗口
                    if (map[vy * ctl->xsize + vx] == sheet_id && c != sheet->col_inv) {
                        vram[vy * ctl->xsize + vx] = c;
                    }
                }
            }
        }
    }
    return;
}

/**
 * 更新当前屏幕所有像素点对应的窗体编号，更新在level层级之上的窗体map信息
 */
void sheet_refreshmap(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1, int level) {
    unsigned char *map = ctl->map;
    unsigned char *buf, sheet_id;           //sheet_id 像素点对应图层编号
    int bx0, by0, bx1, by1, vx, vy;         //
    struct SHEET *sheet;
    if (vx0 < 0) vx0 = 0;
    if (vx0 > ctl->xsize) vx0 = ctl->xsize;
    if (vy0 < 0) vy0 = 0;
    if (vy0 > ctl->ysize) vy0 = ctl->ysize;
    for (int i = level; i <= ctl->top; ++i) {
        sheet = ctl->sheets[i];
        sheet_id = sheet - ctl->sheets0;    //获得当前图层的层级,即在数组中的下标
        buf = sheet->buf;
        bx0 = vx0 - sheet->vx0;             //要覆盖的区域的左上角横坐标
        by0 = vy0 - sheet->vy0;             //要覆盖的区域的左上角纵坐标
        bx1 = vx1 - sheet->vx0;             //要覆盖的区域的右下角横坐标
        by1 = vy1 - sheet->vy0;             //要覆盖的区域的右下角纵坐标
        if (bx0 < 0) bx0 = 0;
        if (by0 < 0) by0 = 0;
        if (bx1 > sheet->bxsize) bx1 = sheet->bxsize;
        if (by1 > sheet->bysize) by1 = sheet->bysize;
        for (int by = by0; by < by1; ++by) {
            vy = sheet->vy0 + by;
            for (int bx = bx0; bx < bx1; ++bx) {
                vx = sheet->vx0 + bx;
                if (buf[by * sheet->bxsize + bx] != sheet->col_inv) {
                    map[vy * ctl->xsize + vx] = sheet_id;
                }
            }
        }
    }
    return;
}