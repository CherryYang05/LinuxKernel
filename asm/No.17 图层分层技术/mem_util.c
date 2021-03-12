/*
 * @Author: Cherry
 * @Date: 2021-02-28 21:14:22
 * @Description: 内存管理模块相关函数定义
 * @FilePath: \Java4LinuxOS\mem_util.c
 */
#include "mem_util.h"

/**
 * 初始化内存管理器相关数值域
 */
void memman_init(struct MEMMANAGER *man) {
    man->frees = 0;
    man->maxfrees = 0;
    man->lostsize = 0;
    man->losts = 0;
}

/**
 * 计算所有可用内存大小
 */
unsigned int memman_total(struct MEMMANAGER *man) {
    unsigned int all = 0;
    for (int i = 0; i < man->frees; ++i) {
        all += man->free[i].size;
    }
    return all;
}

/**
 * 内存分配算法，First Fit（首次适应算法）
 * @param {*}
 * @return {addr} 可分配的内存首址
 */
unsigned int memman_alloc_FF(struct MEMMANAGER *man, unsigned int size) {
    unsigned int addr = 0;                      //记录可分配内存区域的起始地址
    for (int i = 0; i < man->frees; ++i) {
        if (man->free[i].size >= size) {
            addr = man->free[i].addr;
            man->free[i].size -= size;
            if (man->free[i].size == 0) {
                man->frees--;
            }
            return addr;
        }
    }
    return 0;
}

/**
 * 分配一块大小为4k整数倍的内存,避免碎片化严重
 * 4k对应的16进制数是0x1000, 如果你申请大小是1字节，
 * 那么 size + 0xfff 就等于是 0x1000, 跟0xfffff000 
 * 做与操作后，结果任然是0x1000, 如果你申请的内存大小是 0xfff, 
 * 也就是差1字节到4k, 那么size + 0xfff的结果是0x1FFE, 
 * 做与运算后结果也是0x1000, 所以这种计算方法能够在你申请
 * 任何大小内存的情况下，将大小圆整到大于所申请内存的最小4k倍数
 */ 
unsigned int memman_alloc_4K(struct MEMMANAGER *man, unsigned int size) {
    unsigned int a;
    size = (size + 0xfff) & 0xfffff000;
    a = memman_alloc_FF(man, size);
    return a;
}

/**
 * 内存回收算法，需要合并前后相邻的内存块
 * @param {structMEMMANAGER} *man
 * @param {unsignedint} addr
 * @param {unsignedint} size
 * @return {*}
 */
int memman_free(struct MEMMANAGER *man, unsigned int addr, unsigned int size) {
    int i, j;
    for (i = 0; i < man->frees; i++) {
        if (man->free[i].addr > addr) {
            break;
        }
    }

    if (i > 0) {
        if (man->free[i-1].addr + man->free[i-1].size == addr) {
           man->free[i-1].size += size;
           if (i < man->frees) {
               if (addr + size == man->free[i].addr) {
                   man->free[i-1].size += man->free[i].size;
                   man->frees--;
               }
           }
     
           return 0;
        }
    }

    if (i < man->frees) {
        if (addr + size == man->free[i].addr) {
           man->free[i].addr = addr;
           man->free[i].size += size;
           return 0;
        }
    }

    if (man->frees < MEMMAN_FREES) {
        for (j = man->frees; j > i; j--) {
            man->free[j] = man->free[j-1];
        }

        man->frees++;
        if (man->maxfrees < man->frees) {
            man->maxfrees = man->frees;
        }

        man->free[i].addr = addr;
        man->free[i].size = size;
        return 0;
    }

    man->losts++;
    man->lostsize += size;
    return ERROR;
}

int memman_free_4K(struct MEMMANAGER *man, unsigned int addr, unsigned int size) {
    int i ;
    size = (size + 0xfff) & 0xfffff000;
    i = memman_free(man, addr, size);
    return i;
}