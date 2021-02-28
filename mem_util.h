/*
 * @Author: Cherry
 * @Date: 2021-02-28 20:40:47
 * @Description: 内存管理模块相关函数声明
 * @FilePath: \Java4LinuxOS\mem_util.h
 */
#define MAXMAN_FREES 4096

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
 * @param {frees}
 *        {maxfrees}
 *        {lostsize}
 *        {losts}
 */
struct MEMMANAGER {
    int frees, maxfrees, lostsize, losts;
    struct FREEINFO free[MAXMAN_FREES];
};


//初始化内存管理器相关数值域
void memman_init(struct MEMMANAGER *man);

//计算所有可用内存大小
unsigned int memman_total(struct MEMMANAGER *man);

//内存分配算法，First Fit（首次适应算法）
unsigned int memman_alloc_FF(struct MEMMANAGER *man, unsigned int size);

//内存回收算法，需要合并前后相邻的内存块
int memman_free(struct MEMMANAGER *man, unsigned int addr, unsigned int size);
