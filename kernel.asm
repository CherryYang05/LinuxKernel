%include "pm.inc"

org	0x8000

jmp LABEL_BEGIN

[SECTION .GDT]
;全局描述符表
;                             		  段基址          段界限               		属性
LABEL_GDT:				Descriptor		0,				0,						 0
LABEL_DESC_CODE_32:		Descriptor		0,			SegCode32Len - 1,	DA_C | DA_32 | DA_LIMIT_4K	;结构体初始化时只能传入常量
LABEL_DESC_SHOW:		Descriptor	 0B8000h,		  0FFFFh,			      DA_DRW				;0B8000h是显存地址，设置该数据段属性为可读写
LABEL_DESC_VRAM:		Descriptor	    0,			  0FFFFFh,			  DA_DRW | DA_LIMIT_4K		;4G显存，为了C语言开发方便，全部设置为可读写
LABEL_DESC_STACK:		Descriptor		0,			TopOfStack,		      DA_DRWA | DA_32

GDTLen	EQU	$ - LABEL_GDT
GDTPtr	DW	GDTLen - 1
		DD	0

;选择子
SelectorCode32	EQU LABEL_DESC_CODE_32 	- 	LABEL_GDT
SelectorShow	EQU LABEL_DESC_SHOW 	- 	LABEL_GDT
SelectorStack   EQU LABEL_DESC_STACK  	-  	LABEL_GDT
SelectorVram	EQU	LABEL_DESC_VRAM 	- 	LABEL_GDT

;中断描述符表
LABEL_IDT:

%rep 32
	Gate SelectorCode32, SpuriousHandler, 0, DA_386IGate
%endrep

.020h:		;对应主8259A芯片IRQ0引脚，控制时钟中断
	Gate SelectorCode32, timerHandler, 0, DA_386IGate
.021h:		;对应主8259A芯片IRQ1引脚，控制键盘中断
	Gate SelectorCode32, KeyBoardHandler, 0, DA_386IGate

%rep 10
	Gate SelectorCode32, SpuriousHandler, 0, DA_386IGate
%endrep

.2ch:		;对应从8259A芯片IRQ4引脚，控制鼠标中断
	Gate SelectorCode32, MouseHandler, 0, DA_386IGate

IdtLen	EQU 	$ - LABEL_IDT
IdtPtr  DW  	IdtLen - 1
        DD  	0

[SECTION  .s16]
[BITS  16]

LABEL_BEGIN:
	mov	ax, cs		;初始化
	mov ds, ax
	mov es, ax
	mov ss, ax
	mov sp, 0100h

;====== 检测内存 ========
ComputeMem:
	mov ebx, 0
	mov di, MemCheckBuf
.loop:
	mov eax, 0E820h			;固定值
	mov ecx, 20				;es:di内存大小为20字节
	mov edx, 0534D4150h		;表示" SMAP"
	int 15h
	jc LABEL_MEM_CHECK_FAIL	;CF=1表示失败
	add di, 20
	inc dword [dwMCRNumber]
	cmp ebx, 0				;ebx在内存检测过程中不能被修改，当ebx为0时表示检测完成
	jne .loop
	jmp LABEL_MEM_CHECK_OK
	
LABEL_MEM_CHECK_FAIL:
	mov dword [dwMCRNumber], 0

;========================

LABEL_MEM_CHECK_OK:
	
	;设置显示器模式
	mov al, 0x13			;al的值表示640×480 256色
	mov ah, 0				;ah寄存器的值表示设置显示器模式
	int 0x10				;调用系统中断的显示服务
	
	;起始地址写入byte2,3,4,7
	xor eax, eax			;清零
	mov ax, cs
	shl	eax, 4
	add eax, LABEL_SEG_CODE32
	mov word [LABEL_DESC_CODE_32 + 2], ax
	shr eax, 16
	mov byte [LABEL_DESC_CODE_32 + 4], al
	mov byte [LABEL_DESC_CODE_32 + 7], ah
	
	;设置C语言堆栈区
	;xor eax, eax
	;mov ax, ds
	;shl eax, 4
	;add eax, LABEL_STACK
	;mov word [LABEL_DESC_STACK + 2], ax
	;shr eax, 16
    ;mov byte [LABEL_DESC_STACK + 4], al
    ;mov byte [LABEL_DESC_STACK + 7], ah
	
	
	xor eax, eax
	mov ax, ds
	shl eax, 4
	add eax, LABEL_GDT
	mov dword [GDTPtr + 2], eax
	
	lgdt [GDTPtr]
	
	cli					;关中断
	
	call init8259A		;初始化8259A控制器
	
	;准备加载IDT
	xor   eax, eax
    mov   ax,  ds
    shl   eax, 4
    add   eax, LABEL_IDT
    mov   dword [IdtPtr + 2], eax
    lidt  [IdtPtr]
	 
	in 	al, 92h			;打开A20地址线
	or 	al, 00000010b
	out 92h, al
	
	mov eax, cr0
	or  eax, 1
	mov cr0, eax		;设置cr0的PE位为1，进入保护模式

	jmp dword SelectorCode32:0
	
init8259A:
    mov  al, 011h		;向主8259A 20h端口发送ICW1，00010001b，表示需要发送ICW4，级联，8字节中断向量，边沿触发
    out  020h, al		
    call io_delay
  
    out 0A0h, al		;向从8259A a0h端口发送ICW1，00010001b，含义同上
    call io_delay

    mov al, 020h		;向主8259A 21h端口发送ICW2，00100000b，表示IR0中断向量为20h
    out 021h, al
    call io_delay

    mov  al, 028h		;向从8259A a1h端口发送ICW2,00101000b，表示IR0中断向量为28h
    out  0A1h, al
    call io_delay

    mov  al, 04h		;向主8259A 21h端口发送ICW3，00000100b，表示主8259A通过IR2引脚连接到从8259A
    out  021h, al
    call io_delay

    mov  al, 02h		;向从8259A a1h端口发送ICW3，00000010b，表示从8259A是连接到主8259A的IR2引脚
    out  0A1h, al
    call io_delay

    mov  al, 01h		;向主8259A 21h端口发送ICW4，00000001b，表示当前架构为80x86，非自动EOI(ICW4[1]=0)
    out  021h, al
    call io_delay

    out  0A1h, al		;同上
    call io_delay

    mov  al, 11111000b 	;向主8259A发送OCW1，只能写入奇地址端口，允许键盘和时钟中断，打开主8259A控制器的IRQ1和IRQ2号引脚
    out  21h, al
    call io_delay

    mov  al, 11101111b	;向从8259A发送OCW1，只能写入奇地址端口，允许鼠标中断，打开从8259A控制器的IRQ4号引脚
    out  0A1h, al
    call io_delay

    ret

io_delay:
    nop
    nop
    nop
    nop
    ret

[SECTION .s32]
[BITS  32]
;初始化C语言栈
LABEL_SEG_CODE32:
	mov ax, SelectorStack
    mov ss, ax
    mov esp, TopOfStack

    mov ax, SelectorVram
    mov ds, ax
	
	mov ax, SelectorShow
	mov gs, ax
	sti

	%include "ckernel.asm"
	
	jmp $
	
;=============================== 中断处理函数 ======================================
_SpuriousHandler:
SpuriousHandler  equ _SpuriousHandler - $$	
	iretd

;键盘中断处理函数
_KeyBoardHandler:
KeyBoardHandler equ _KeyBoardHandler - $$
	push es					;保护现场
	push ds
	pushad					;将eax,ebx等所有的32位通用寄存器压入堆栈
	mov eax, esp
	push eax
	
	call intHandlerFromC
	
	pop eax
	mov esp, eax
	popad
	pop ds
	pop es
	iretd


;键盘中断处理函数
_MouseHandler:
MouseHandler equ _MouseHandler - $$
	push es					;保护现场
	push ds
	pushad					;将eax,ebx等所有的32位通用寄存器压入堆栈
	mov eax, esp
	push eax
	
	call intHandlerForMouse
	
	pop eax
	mov esp, eax
	popad
	pop ds
	pop es
	iretd
	
;时钟中断处理函数
_timerHandler:
timerHandler equ _timerHandler - $$
	push es
	push ds
	pushad
	mov eax, esp
	push eax
	
	call intHandlerForTimer
	
	pop eax
	mov esp, eax
	popad
	pop ds
	pop es
	iretd

;===================================================================================

io_hlt:  					;void io_hlt(void);
    HLT
    RET

;关中断，实际上是将标志寄存器第9位的值置0
io_cli:
	CLI
	RET
	
io_sti:
	STI
	RET
	
io_stihlt:
	STI
	HLT
	RET

;从指定的端口dx读入一个8位的数值存入al	
io_in8:
	mov edx, [esp + 4]
	mov eax, 0
	in al, dx
	ret
	
;从指定的端口dx读入一个16位的数值存入ax
io_in16:
	mov edx, [esp + 4]
	mov eax, 0
	in ax, dx
	ret

;从指定的端口dx读入一个32位的数值存入eax
io_in32:
	mov edx, [esp + 4]
	in eax, dx
	ret

;将al的值写入dx表示的端口中
io_out8:
    mov edx, [esp + 4]
    mov al, [esp + 8]
    out dx, al
    ret

;写端口16位数
io_out16:
	mov edx, [esp + 4]
	mov eax, [esp + 8]
	out dx, ax
	ret

;写端口32位数
io_out32:
    mov edx, [esp + 4]
    mov eax, [esp + 8]
    out dx, eax
    ret

;读取标志寄存器的值
io_load_eflags:
	pushfd
	pop eax
	ret

;写入标志寄存器
io_store_eflags:
	mov eax, [esp + 4]
	push eax
	popfd
	ret
	
;导出到C语言的接口，返回写入的地址范围描述符个数
get_memory_block_count:
	mov eax, [dwMCRNumber]		;函数返回值一般存放在eax中
	ret

;导出到C语言的接口，返回地址范围描述符缓冲区地址
get_addr_buffer:
	mov eax, MemCheckBuf
	ret

get_addr_buffer_int:
	mov eax, MemCheckBuf
	ret

SegCode32Len   equ  $ - LABEL_SEG_CODE32

MemCheckBuf: times 256 db 0
dwMCRNumber: dd 0				;记录BIOS总共向内存中写入多少个数据结构
[SECTION .gs]
ALIGN 32
[BITS 32]
LABEL_STACK: times 512  db 0
TopOfStack  equ  $ - LABEL_STACK

LABEL_SYSTEM_FONT:
%include "fontData.inc"

SystemFontLength equ $ - LABEL_SYSTEM_FONT		;导入字体二进制数据