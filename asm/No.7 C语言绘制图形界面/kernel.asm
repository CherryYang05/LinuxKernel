%include "pm.inc"

org	0x9000

jmp LABEL_BEGIN

[SECTION .GDT]
;                             		  段基址          段界限               属性
LABEL_GDT:				Descriptor		0,				0,					0
LABEL_DESC_CODE_32:		Descriptor		0,			SegCode32Len - 1,	DA_C + DA_32	;结构体初始化时只能传入常量
LABEL_DESC_SHOW:		Descriptor	 0B8000h,		  0FFFFh,			  DA_DRW		;0B8000h是显存地址，设置该数据段属性为可读写
LABEL_DESC_5M:			Descriptor	 0500000h,		  0FFFFh,			  DA_DRW		;5M
LABEL_DESC_VRAM:		Descriptor	    0,			0FFFFFFFFh,			  DA_DRW		;4G显存，为了C语言开发方便，全部设置为可读写
LABEL_DESC_STACK:		Descriptor		0,			TopofStack,			DA_DRWA + DA_32

GDTLen	EQU	$ - LABEL_GDT
GDTPtr	DW	GDTLen - 1
		DD	0

;选择子
SelectorCode32	EQU LABEL_DESC_CODE_32 - LABEL_GDT
SelectorShow	EQU LABEL_DESC_SHOW - LABEL_GDT
Selector5M		EQU LABEL_DESC_5M - LABEL_GDT
SelectorStack   EQU LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram	EQU	LABEL_DESC_VRAM - LABEL_GDT

[SECTION  .s16]
[BITS  16]

LABEL_BEGIN:
	mov	ax, cs		;初始化
	mov ds, ax
	mov es, ax
	mov ss, ax
	mov sp, 0100h
	
	;设置显示器模式
	mov al, 0x13		;al的值表示640×480 256色
	mov ah, 0x00		;ah寄存器的值表示设置显示器模式
	int 0x10			;调用系统中断的显示服务
	
	;起始地址写入byte2,3,4,7
	xor eax, eax		;清零
	mov ax, cs
	shl	eax, 4
	add eax, LABEL_SEG_CODE32
	mov word [LABEL_DESC_CODE_32 + 2], ax
	shr eax, 16
	mov byte [LABEL_DESC_CODE_32 + 4], al
	mov byte [LABEL_DESC_CODE_32 + 7], ah
	
	;设置C语言堆栈区
	xor eax, eax
	mov ax, cs
	shl eax, 4
	add eax, LABEL_STACK
	mov word [LABEL_DESC_STACK + 2], ax
	shr eax, 16
    mov byte [LABEL_DESC_STACK + 4], al
    mov byte [LABEL_DESC_STACK + 7], ah
	
	
	xor eax, eax
	mov ax, ds
	shl eax, 4
	add eax, LABEL_GDT
	mov dword [GDTPtr + 2], eax
	
	lgdt [GDTPtr]
	
	cli					;关中断
	
	in al, 92h			;打开A20地址线从而进入保护模式
	or al, 00000010b
	out 92h, al
	
	mov eax, cr0
	or eax, 1
	mov cr0, eax

	jmp dword SelectorCode32:0
	
	[SECTION .s32]
    [BITS  32]

;初始化C语言栈
LABEL_SEG_CODE32:
	mov ax, SelectorStack
    mov ss, ax
    mov esp, TopofStack

    mov ax, SelectorVram
    mov ds, ax

C_CODE_ENTRY:
    %include "write_vga.asm"
	
io_hlt:  					;void io_hlt(void);
    HLT
    RET

SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
	ALIGN 32
[BITS 32]
LABEL_STACK:
	times	512  DB 0
TopofStack  EQU  $ - LABEL_STACK