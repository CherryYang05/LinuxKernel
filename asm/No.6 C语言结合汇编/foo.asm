extern bar_func

[section .data]
arg1  dd 3
arg2  dd 4

[section .text]
global _start
global foo_print

_start:

mov   eax, dword[arg1]
push  eax
mov   eax, dword [arg2]
push  eax
call  bar_func			;第一个参数是arg2,第二个参数是arg1
add   esp, 8			;清栈

mov   ebx, 0
mov   eax, 1			;寄存器eax对应要调用的函数编号，1号表示 sys_exit
int   0x80				;80h号系统调用，调用系统函数

;对于 Linux，sys_write(unsigned int fd, const char * buf, size_t count);
;对应寄存器 ebx: fd; ecx: buf; edx: count
foo_print:
mov   edx, [esp + 8]	;打印字符串的长度
mov   ecx, [esp + 4]	;打印字符串的内容起始地址
mov   ebx, 1
mov   eax, 4			;寄存器eax对应要调用的函数编号，4号表示 sys_write
int   0x80				;80h号系统调用，调用系统函数
ret

;%include "bar.asm"
