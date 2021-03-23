;内核加载器，指向内存地址0x9000
org  0x7c00;

LOAD_ADDR  EQU  0X8000

BufferAddr EQU  7E0h	;段寄存器段地址

BaseOfStack EQU 0x7c00

entry:
    mov  ax, 0
    mov  ss, ax
    mov  ds, ax			;ds:si buffer
	
	mov  ax, BufferAddr
    mov  es, ax
	
	mov  ax, 0
	mov  ss, ax
	mov  sp, BaseOfStack
	mov  di, ax
    mov  si, ax
	
;readFloppy 这段代码从软盘的1柱面，2扇区，将内核读取到系统内存的0x8000处，
;读取成功后，通过一个 jmp 跳转到内核的加载地址，将机器的控制权转交给内核
;===========================================================================
;功能02H  
;功能描述：读扇区 
;入口参数：AH＝02H 
;AL＝扇区数 
;CH＝柱面 
;CL＝扇区 
;DH＝磁头 
;DL＝驱动器，00H~7FH：软盘；80H~0FFH：硬盘 
;ES:BX＝缓冲区的地址 
;出口参数：CF＝0操作成功，AH＝00H，AL＝传输的扇区数，否则，AH＝状态代码，参见功能号01H中的说明

    mov  bx, 0  		;ES:BX 数据存储缓冲区
	mov  ch, 1        	;CH 用来存储柱面号
    mov  dh, 0        	;DH 用来存储磁头号
	mov  cl, 0			;CL 用来存储扇区号

readFloppy:
	cmp  byte [load_count], 0
	je   beginLoad
	
	mov  bx, 0
    inc  cl	        	;CL 用来存储扇区号

    mov  ah, 0x02      	;AH = 02 表示要做的是读盘操作
    mov  al, 1       	;AL 表示要连续读取几个扇区
    mov  dl, 0         	;驱动器编号，只有一个软盘驱动器，所以写死为0
    int  13h          	;调用BIOS中断实现磁盘读取功能
	
    jc   error
	
;把刚写入07E00的一个扇区的内容写入从08000h开始的地址
copySector:
	push si
	push di
	push cx
	mov  cx, 0200h		;缓冲区数据大小，也就是512字节
	mov  di, 0
	mov  si, 0
	mov  ax, word [load_section] ;es段地址
	mov  ds, ax

copy:
	cmp  cx, 0
	je   copyend
	mov  al, byte [es:si]		;es:si指向07E00h
	mov  byte [ds:di], al		;将07E00h中数据拷贝到08000H中
	inc  di
	inc  si
	dec  cx
	jmp  copy	

copyend:
	pop  cx
	pop  di
	pop  si
	
	mov  bx, ds			;将拷贝过程中的段地址赋值给bx
	add  bx, 020h		;加上512字节的地址
	mov  ax, 0
	mov  ds, ax
	mov  word [load_section], bx
	mov  bx, 0
	
	cmp  cl, 18
	jb   readFloppy		;若没有读完18个扇区，则继续读取
	
	inc  ch				;若读完18个扇区，增加柱面号
	mov  cl, 0
	dec  byte [load_count]
	jmp  readFloppy
	

beginLoad:
	mov  ax, 0
	mov  ds, ax
    jmp  LOAD_ADDR


error:
	mov  ax, 0
	mov  es, ax
	mov  ds, ax
	mov  ss, ax
	mov  si, msg

loops:
    mov  ax, msg
	mov  bp, ax			;ES:BP=字符串偏移量
	mov  cx, 42			;输出42个字符
	mov  ah, 0x13		;寄存器ah设置为0x13,表示写字符串 
	mov  al, 01h		;al输出方式,al=1 字符串中只含显示字符，其显示属性在BL中。显示后，光标位置改变
	mov  bh, 0			;同时要把寄存器设bh的值设置成0(页号)，字符的颜色通过寄存器bl的值来设定
	mov  bl, 14			;黑底黄字
	int  0x10			;10h号软中断
	jmp  fin

fin:
	HLT
	jmp fin

load_count   db 10		;表示连续读取几个磁道(柱面)
load_section dw 0800h	;08000h的段地址800h
msg:
	DB 0x0a, 0x0a
	DB "Boot Loader Failed. Please Reboot Now..."
	DB 0