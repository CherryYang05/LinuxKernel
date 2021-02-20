org 0x8000			;编译链接时加载到内存的0x8000位置

entry:
	mov ax, 0
	mov ds, ax
	mov ss, ax
	mov es, ax
	mov si, msg
	
loops:
	mov al, [si]
	add si, 1
	cmp al, 0
	je finish
	mov ah, 0x0e
	mov bx, 15
	int 10h
	jmp loops

finish:
	hlt
	jmp finish
	
msg:
	db "Let's start the Linux Kernel..."