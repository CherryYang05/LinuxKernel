%include "pm.inc"

org	0x9000

jmp LABEL_BEGIN

[SECTION .GDT]
;全局描述符表
;                             		  段基址          段界限               属性
LABEL_GDT:				Descriptor		0,				0,					0
LABEL_DESC_CODE_32:		Descriptor		0,			SegCode32Len - 1,	DA_C + DA_32	;结构体初始化时只能传入常量
LABEL_DESC_SHOW:		Descriptor	 0B8000h,		  0FFFFh,			  DA_DRW		;0B8000h是显存地址，设置该数据段属性为可读写
LABEL_DESC_VRAM:		Descriptor	    0,			0FFFFFFFFh,			  DA_DRW		;4G显存，为了C语言开发方便，全部设置为可读写
LABEL_DESC_STACK:		Descriptor		0,			TopOfStack,			DA_DRWA + DA_32

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
%rep  255
    Gate  SelectorCode32, SpuriousHandler,0, DA_386IGate
%endrep

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
	
	;设置显示器模式
	mov al, 0x13		;al的值表示640×480 256色
	mov ah, 0			;ah寄存器的值表示设置显示器模式
	int 0x10			;调用系统中断的显示服务
	
	call init8259A		;初始化8259A控制器
	
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
    mov  al, 011h
    out  02h, al
    call io_delay
  
    out 0A0h, al
    call io_delay

    mov al, 020h
    out 021h, al
    call io_delay

    mov  al, 028h
    out  0A1h, al
    call io_delay

    mov  al, 004h
    out  021h, al
    call io_delay

    mov  al, 002h
    out  0A1h, al
    call io_delay

    mov  al, 003h
    out  021h, al
    call io_delay

    out  0A1h, al
    call io_delay

    mov  al, 11111101b ;允许键盘中断
    out  21h, al
    call io_delay

    mov  al, 11111111b
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

	%include "write_vga_desktop.asm"
	
	jmp $

_SpuriousHandler:
SpuriousHandler  equ _SpuriousHandler - $$

	call intHandlerFromC
	
	iretd
	
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
	
%include "fontData.inc"			;导入字体二进制数据

SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
ALIGN 32
[BITS 32]
LABEL_STACK:
times 512  db 0
TopOfStack  equ  $ - LABEL_STACK