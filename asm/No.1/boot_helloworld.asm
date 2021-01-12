org  0x7c00;

entry:
    mov  ax, 0
    mov  ss, ax
    mov  ds, ax
    mov  es, ax
    mov  si, msg			;msg起始地址

loops:
    mov  al, [si]
    add  si, 1
    cmp  al, 0
    je   fin
    mov  ah, 0x0e			;寄存器ah设置为0x0e, 要输出字符的ascii值放入到寄存器al, 							
    mov  bh, 0				;同时要把寄存器设bh的值设置成0，字符的颜色通过寄存器bl的值来设定
    int  0x10				;10h号软中断
    jmp  loops

fin:
    HLT						;hlt 表示 halt, 就是让cpu进入休眠状态
    jmp  fin

msg:
    DB    0x0a,  0x0a		;换行符 \n
    db    "hello world. This is bmy..."
    db    0x0a
    db    0