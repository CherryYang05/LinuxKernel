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
 * 内存回收算法，需要合并前后相邻的内存块
 * @param {structMEMMANAGER} *man
 * @param {unsignedint} addr
 * @param {unsignedint} size
 * @return {*}
 */
int memman_free(struct MEMMANAGER *man, unsigned int addr, unsigned int size) {

}