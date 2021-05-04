
/**
 * 任务门描述符,共104字节，实际上TSS有103字节，多出的1字节为了编码方便
 * 当我们初始化了TSS32后，在全局描述符表中，需要专门分配一个描述符来指向这块TSS32内存,这种描述符，成为任务门
 */
struct TSS32 {
    int backlink, esp0, ss0, esp1, ss1, esp2, ss2, cr3;
    int eip, eflags, eax, ecx, edx, ebx,esp, ebp, esi, edi;
    int es, cs, ss, ds, fs, gs;
    int ldtr, iomap;
};

/**
 * 全局描述符表数据结构,和汇编代码中的一致
 */
struct SEGMENT_DESCRIPTOR {
    short limit_low, base_low;
    char base_mid, access_right;
    char limit_high, base_high;
};

/**
 * 操作每个全局描述符表，同汇编代码中的全局描述符表
 */
void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar);

/**
 * 任务门
 */
#define AR_TSS32 0x0089