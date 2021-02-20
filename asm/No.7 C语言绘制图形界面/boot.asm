;内核加载器，指向内存地址0x8000
org  0x7c00;

LOAD_ADDR  EQU  0X9000

entry:
    mov  ax, 0
    mov  ss, ax
    mov  ds, ax			;ds:si buffer
    mov  es, ax
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
;出口参数：CF＝0——操作成功，AH＝00H，AL＝传输的扇区数，否则，AH＝状态代码，参见功能号01H中的说明

readFloppy:
    mov  ch, 1        	;CH 用来存储柱面号
    mov  dh, 0        	;DH 用来存储磁头号
    mov  cl, 2        	;CL 用来存储扇区号

    mov  bx, LOAD_ADDR  ;ES:BX 数据存储缓冲区

    mov  ah, 0x02      	;AH = 02 表示要做的是读盘操作
    mov  al, 2        	;AL 表示要连续读取几个扇区
    mov  dl, 0         	;驱动器编号，只有一个软盘驱动器，所以写死为0
    int  13h          	;调用BIOS中断实现磁盘读取功能
   
    jc   fin

    jmp  LOAD_ADDR
fin:
    HLT
    jmp  fin

