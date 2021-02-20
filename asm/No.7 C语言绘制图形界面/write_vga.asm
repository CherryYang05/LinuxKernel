; Disassembly of file: write_vga.o
; Wed Jan 20 20:59:09 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


;global CMain: function
;global __x86.get_pc_thunk.bx: function

;extern io_hlt                                           ; near
;extern _GLOBAL_OFFSET_TABLE_                            ; byte


;SECTION .text   align=1 execute                         ; section number 1, code

CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 20                                 ; 0004 _ 83. EC, 14
        call    __x86.get_pc_thunk.bx                   ; 0007 _ E8, FFFFFFFC(rel)
;        add     ebx, _GLOBAL_OFFSET_TABLE_-$            ; 000C _ 81. C3, 00000002(GOT r)
        mov     dword [ebp-0CH], 0                      ; 0012 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 655360                 ; 0019 _ C7. 45, F0, 000A0000
        jmp     ?_002                                   ; 0020 _ EB, 17

?_001:  mov     eax, dword [ebp-10H]                    ; 0022 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 0025 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0028 _ 8B. 45, F0
        and     eax, 0FH                                ; 002B _ 83. E0, 0F
        mov     edx, eax                                ; 002E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0030 _ 8B. 45, F4
        mov     byte [eax], dl                          ; 0033 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0035 _ 83. 45, F0, 01
?_002:  cmp     dword [ebp-10H], 720895                 ; 0039 _ 81. 7D, F0, 000AFFFF
        jle     ?_001                                   ; 0040 _ 7E, E0
?_003:  call    io_hlt                                  ; 0042 _ E8, FFFFFFFC(PLT r)
        jmp     ?_003                                   ; 0047 _ EB, F9
; CMain End of function


;SECTION .data   align=1 noexecute                       ; section number 2, data


;SECTION .bss    align=1 noexecute                       ; section number 3, bss


;SECTION .text.__x86.get_pc_thunk.bx align=1 execute     ; section number 4, code

__x86.get_pc_thunk.bx:; Function begin
        mov     ebx, dword [esp]                        ; 0000 _ 8B. 1C 24
        ret                                             ; 0003 _ C3
; __x86.get_pc_thunk.bx End of function


