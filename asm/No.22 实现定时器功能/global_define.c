#include "global_define.h"


/**
 * 初始化数据缓冲区
 * @param {structFIFO} *fifo
 * @param {int} size
 * @param {unsignedchar} *buf
 * @return {*}
 */
void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf) {
    fifo->size = size;
    fifo->buf = buf;
    fifo->free = size;
    fifo->read = 0;
    fifo->write = 0;
    fifo->flags = 0;
    return;
}

#define FLAGS_OVERRUN 0x0001

/**
 * 写缓冲
 * @param {structFIFO8} *fifo 缓冲区结构体
 * @param {unsignedchar} data 要写的缓冲区数据
 * @return {*}
 */
int fifo8_put(struct FIFO8 *fifo, unsigned char data) {
    if (fifo->free == 0) {
        fifo->flags |= FLAGS_OVERRUN;
        return -1;
    }
    fifo->buf[fifo->write] = data;
    fifo->write++;
    if (fifo->write == fifo->size) {  //写指针满则从头部开始覆盖
        fifo->write = 0;
    }
    fifo->free--;
    return OK;
}

/**
 * 读缓冲
 * @param {structFIFO8} *fifo 缓冲区结构体
 * @return {*}
 */
int fifo8_get(struct FIFO8 *fifo) {
    int data;
    if (fifo->free == fifo->size) {
        return -1;
    }
    data = fifo->buf[fifo->read];
    fifo->read++;
    if (fifo->read == fifo->size) {  //写指针满则从头部开始覆盖
        fifo->read = 0;
    }
    fifo->free++;
    return data;
}

/**
 * 判断缓冲区状态
 * @param {structFIFO8} *fifo
 * @return {*}
 */
int fifo8_status(struct FIFO8 *fifo) {
    return fifo->size - fifo->free;
}