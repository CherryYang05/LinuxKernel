#define BOX_MARGIN_LEFT 8
#define BOX_MARGIN_TOP 23

/**
 * 图层结构体
 * @param {buf} 要显示的窗口的像素信息
 *        {bxsize, bysize} 窗口长宽
 *        {vx0, vy0} 窗口移动后的左上角坐标
 *        {col_inv} 表示窗口中不显示的部分
 *        {level} 图层层级，鼠标一般层级较高
 *        {flags} 图层状态
 */ 
struct SHEET {
    unsigned char *buf;
    int bxsize, bysize, vx0, vy0, col_inv, level, flags;
};

#define MAX_SHEETS 256       //最多256个图层

/**
 * 图层控制器（管理器）
 * @param {vram} 显存起始地址，为0xa0000
 *        {map} 记录像素点属于哪一个窗体
 *        {xsize, ysize} 当前屏幕像素
 *        {top} 要显示的图层数量
 *        {*sheets} 图层指针数组，用来指向下面图层数组中的对应图层对象
 *        {sheets0} 存储图层对象的数组
 */ 
struct SHTCTL {
    unsigned char *vram, *map;  
    int xsize, ysize, top;
    struct SHEET *sheets[MAX_SHEETS];
    struct SHEET sheets0[MAX_SHEETS];
};

#define SIZE_OF_SHEET 32        //图层对象大小
#define SIZE_OF_SHTCTL 9232     //图层管理器大小 32B*256+4B*256+4B*4=9232B （指针为4B）约8KB

/**
 * 初始化图层管理器
 */
struct SHTCTL *shtctl_init(struct MEMMANAGER *memman, unsigned char *vram, int xsize, int ysize);

/**
 * 分配新的图层
 */ 
struct SHEET *sheet_alloc(struct SHTCTL *ctl);

/**
 * 设置图层数据
 */ 
void sheet_setbuf(struct SHEET *sheet, unsigned char *buf, int xsize, int ysize, int col_inv);

/**
 * 调整图层层级
 */
void sheet_level_updown(struct SHTCTL *ctl, struct SHEET *sheet, int level); 

/**
 * 刷新当前图层，从 bx0 by0 到 bx1 by1
 */
int sheet_refresh(struct SHTCTL *ctl, struct SHEET *sheet, int bx0, int by0, int bx1, int by1); 

/**
 * 窗口移动时，重新刷新所有窗口，很消耗CPU资源
 */ 
void sheet_slide(struct SHTCTL *ctl, struct SHEET *sheet, int vx0, int vy0);

/**
 * 重绘当前区域的所有图层，优化算法，只需重绘鼠标原来的256像素和移动后的256像素
 * @param {vx0, vy0} 窗口左上角坐标
 *        {vx1, vy1} 窗口右下角坐标
 *        {level} 当前窗体对应的图层高度,避免刷新不必要的图层带来CPU消耗
 */
void sheet_refresh_new(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1, int level, int level_0);

/**
 * 更新当前屏幕所有像素点对应的窗体编号
 */
void sheet_refreshmap(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1, int level);