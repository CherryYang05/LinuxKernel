/*
 * @Author: Cherry
 * @Date: 2021-02-28 20:40:47
 * @Description: 内存管理模块相关函数声明
 * @FilePath: \Java4LinuxOS\mem_util.h
 */
#define MEMMAN_FREES 4096
#define FREE 0
#define BUSY 1
#define OK 1
#define ERROR -1



/**
 * 用来描述可用内存块的数据结构
 * @param {addr} 起始地址
 *        {size} 内存块大小
 */
struct FREEINFO {
    unsigned int addr, size;
};

/**
 * 内存管理器
 * @param {frees}       可用内存对应的结构体
 *        {maxfrees}    当前内存管理器最多可容纳多少个结构体
 *        {lostsize}    不能被内存管理器回收的碎片大小
 *        {losts}       碎片数量
 */
struct MEMMANAGER {
    int frees, maxfrees, lostsize, losts;
    struct FREEINFO free[MEMMAN_FREES];     //最多4096个内存块
};


//初始化内存管理器相关数值域
void memman_init(struct MEMMANAGER *man);

//计算所有可用内存大小
unsigned int memman_total(struct MEMMANAGER *man);

//内存分配算法，First Fit（首次适应算法）
unsigned int memman_alloc_FF(struct MEMMANAGER *man, unsigned int size);

//分配一块大小为4k整数倍的内存
unsigned int memman_alloc_4K(struct MEMMANAGER *man, unsigned int size);

//内存回收算法，需要合并前后相邻的内存块
int memman_free(struct MEMMANAGER *man, unsigned int addr, unsigned int size);

int memman_free_4K(struct MEMMANAGER *man, unsigned int addr, unsigned int size);