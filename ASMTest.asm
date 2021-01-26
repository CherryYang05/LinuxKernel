; Disassembly of file: write_vga_desktop_systemFont.o
; Tue Jan 26 16:23:13 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0007 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 000D _ 89. 45, F4
        xor     eax, eax                                ; 0010 _ 31. C0
        sub     esp, 12                                 ; 0012 _ 83. EC, 0C
