%include "pm.inc"

org	0x9000

jmp LABEL_BEGIN

[SECTION .gdt]
;                             		  段基址          段界限               属性
LABEL_GDT:				Descriptor		0,				0,					0
LABEL_DESC_CODE_32:		Descriptor		0,			SegCode32Len - 1,	DA_C + DA_32
LABEL_DESC_SHOW:		Descriptor	 0B8000h,		  0FFFFh,			  DA_DRW		;0B8000h是显存地址，设置该数据段属性为可读写

GDTLen	EQU	$ - LABEL_GDT
GDTPtr	DW	GDTLen - 1
		DD	0
		
SelectorCode32	EQU LABEL_DESC_CODE_32 - LABEL_GDT
SelectorShow	EQU LABEL_DESC_SHOW - LABEL_GDT

[SECTION  .s16]
[BITS  16]

LABEL_BEGIN:
	mov	ax, cs		;初始化
	mov ds, ax
	mov es, ax
	mov ss, ax
	mov sp, 0100h
	
	xor eax, eax	;清零
	mov ax, cs
	shl	eax, 4
	add eax, LABEL_SEG_CODE32
	mov word [LABEL_DESC_CODE_32 + 2], ax
	shr eax, 16
	mov byte [LABEL_DESC_CODE_32 + 4], al
	mov byte [LABEL_DESC_CODE_32 + 7], ah
	
	xor eax, eax
	mov ax, ds
	shl eax, 4
	add eax, LABEL_GDT
	mov dword [GDTPtr + 2], eax
	
	lgdt [GDTPtr]
	
	cli				;关中断
	
	in al, 92h		;打开A20地址线从而进入保护模式
	or al, 00000010b
	out 92h, al
	
	mov eax, cr0
	or eax, 1
	mov cr0, eax

	jmp dword SelectorCode32:0
	
	[SECTION .s32]
    [BITS  32]
	
LABEL_SEG_CODE32:
	mov ax, SelectorShow
	mov gs, ax
	mov si, msg
	mov ebx, 10		;想要在屏幕第11列显示
	mov ecx, 2		;一个字符占两个字节
	
showChar:
	mov edi, (80*11);在第11行显示
	add edi, ebx
	mov eax, edi
	mul ecx
	mov edi, eax
	mov ah, 0ch
	mov al, [si]
	cmp al, 0
	je end
	add ebx, 1
	add si, 1
	mov [gs:edi], ax
	jmp showChar
	
end:
	jmp $
	
msg:
	DB "Protect Mode...", 0
	
SegCode32Len	EQU	$ - LABEL_SEG_CODE32