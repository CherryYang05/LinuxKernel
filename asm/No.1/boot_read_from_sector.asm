org  0x7c00;

entry:
    mov  ax, 0
    mov  ss, ax
    mov  ds, ax
    mov  es, ax
    mov  si, msg


readFloppy:
    mov  ch, 1		;CH 用来存储柱面号
    mov  dh, 0		;DH 用来存储磁头号
    mov  cl, 2		;CL 用来存储扇区号

    mov  bx, msg	;ES:BX 数据存储缓冲区

    mov  ah, 0x02	;AH = 02 表示要做的是读盘操作
    mov  al, 1		;AL 表示要连续读取几个扇区
    mov  dl, 0		;驱动器编号，只有一个软盘驱动器，所以写死为0
    int  0x13		;调用BIOS中断实现磁盘读取功能

    jc  error		;当BIOS调用出现错误时，FLACS寄存器的CF位会置1，同时把错误代码存入AH,如果没有错，那么FLACS寄存器的CF位为0

loops:
    mov  al, [si]
    add  si, 1
    cmp  al, 0
    je   fin
    mov  ah, 0x0e	;寄存器ah设置为0x0e, 要输出字符的ascii值放入到寄存器al,
    mov  bh, 0		;同时要把寄存器设bh的值设置成0，字符的颜色通过寄存器bl的值来设定
    int  0x10		;10h号软中断
    jmp  loops

fin:
    HLT
    jmp  fin

error:
    mov  si, errmsg
    jmp  loops

msg:
    resb 64			;reserve byte的略写预约字节，值为0
errmsg:
    DB "error"
