; Disassembly of file: write_vga_rectangle.o
; Fri Jan 22 17:55:01 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 20                                 ; 0004 _ 83. EC, 14
        call    __x86.get_pc_thunk.bx                   ; 0007 _ E8, FFFFFFFC(rel)
;        add     ebx, _GLOBAL_OFFSET_TABLE_-$            ; 000C _ 81. C3, 00000002(GOT r)
        mov     dword [ebp-0CH], 655360                 ; 0012 _ C7. 45, F4, 000A0000
        call    init_palette                            ; 0019 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 001E _ 83. EC, 04
        push    120                                     ; 0021 _ 6A, 78
        push    120                                     ; 0023 _ 6A, 78
        push    20                                      ; 0025 _ 6A, 14
        push    20                                      ; 0027 _ 6A, 14
        push    1                                       ; 0029 _ 6A, 01
        push    320                                     ; 002B _ 68, 00000140
        push    dword [ebp-0CH]                         ; 0030 _ FF. 75, F4
        call    boxfill8                                ; 0033 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0038 _ 83. C4, 20
        sub     esp, 4                                  ; 003B _ 83. EC, 04
        push    150                                     ; 003E _ 68, 00000096
        push    170                                     ; 0043 _ 68, 000000AA
        push    50                                      ; 0048 _ 6A, 32
        push    70                                      ; 004A _ 6A, 46
        push    2                                       ; 004C _ 6A, 02
        push    320                                     ; 004E _ 68, 00000140
        push    dword [ebp-0CH]                         ; 0053 _ FF. 75, F4
        call    boxfill8                                ; 0056 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 005B _ 83. C4, 20
        sub     esp, 4                                  ; 005E _ 83. EC, 04
        push    180                                     ; 0061 _ 68, 000000B4
        push    220                                     ; 0066 _ 68, 000000DC
        push    80                                      ; 006B _ 6A, 50
        push    120                                     ; 006D _ 6A, 78
        push    4                                       ; 006F _ 6A, 04
        push    320                                     ; 0071 _ 68, 00000140
        push    dword [ebp-0CH]                         ; 0076 _ FF. 75, F4
        call    boxfill8                                ; 0079 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 007E _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0081 _ E8, FFFFFFFC(PLT r)
        jmp     ?_001                                   ; 0086 _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 0088 _ 55
        mov     ebp, esp                                ; 0089 _ 89. E5
        sub     esp, 8                                  ; 008B _ 83. EC, 08
        call    __x86.get_pc_thunk.ax                   ; 008E _ E8, FFFFFFFC(rel)
;        add     eax, _GLOBAL_OFFSET_TABLE_-$            ; 0093 _ 05, 00000001(GOT r)
        sub     esp, 4                                  ; 0098 _ 83. EC, 04
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 80H, 00H, 00H, 00H, 00H

        push    eax                                     ; 00A1 _ 50
        push    15                                      ; 00A2 _ 6A, 0F
        push    0                                       ; 00A4 _ 6A, 00
        call    set_palette                             ; 00A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AB _ 83. C4, 10
        nop                                             ; 00AE _ 90
        leave                                           ; 00AF _ C9
        ret                                             ; 00B0 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 00B1 _ 55
        mov     ebp, esp                                ; 00B2 _ 89. E5
        push    ebx                                     ; 00B4 _ 53
        sub     esp, 20                                 ; 00B5 _ 83. EC, 14
        call    __x86.get_pc_thunk.bx                   ; 00B8 _ E8, FFFFFFFC(rel)
;        add     ebx, _GLOBAL_OFFSET_TABLE_-$            ; 00BD _ 81. C3, 00000002(GOT r)
        call    io_load_eflags                          ; 00C3 _ E8, FFFFFFFC(PLT r)
        mov     dword [ebp-0CH], eax                    ; 00C8 _ 89. 45, F4
        call    io_cli                                  ; 00CB _ E8, FFFFFFFC(PLT r)
        sub     esp, 8                                  ; 00D0 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 00D3 _ FF. 75, 08
        push    968                                     ; 00D6 _ 68, 000003C8
        call    io_out8                                 ; 00DB _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 00E0 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 00E3 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 00E6 _ 89. 45, F0
        jmp     ?_003                                   ; 00E9 _ EB, 5C

?_002:  mov     eax, dword [ebp+10H]                    ; 00EB _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 00EE _ 0F B6. 00
        movzx   eax, al                                 ; 00F1 _ 0F B6. C0
        sub     esp, 8                                  ; 00F4 _ 83. EC, 08
        push    eax                                     ; 00F7 _ 50
        push    969                                     ; 00F8 _ 68, 000003C9
        call    io_out8                                 ; 00FD _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 0102 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0105 _ 8B. 45, 10
        add     eax, 1                                  ; 0108 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 010B _ 0F B6. 00
        movzx   eax, al                                 ; 010E _ 0F B6. C0
        sub     esp, 8                                  ; 0111 _ 83. EC, 08
        push    eax                                     ; 0114 _ 50
        push    969                                     ; 0115 _ 68, 000003C9
        call    io_out8                                 ; 011A _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 011F _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0122 _ 8B. 45, 10
        add     eax, 2                                  ; 0125 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0128 _ 0F B6. 00
        movzx   eax, al                                 ; 012B _ 0F B6. C0
        sub     esp, 8                                  ; 012E _ 83. EC, 08
        push    eax                                     ; 0131 _ 50
        push    969                                     ; 0132 _ 68, 000003C9
        call    io_out8                                 ; 0137 _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 013C _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 013F _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0143 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 0147 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 014A _ 3B. 45, 0C
        jle     ?_002                                   ; 014D _ 7E, 9C
        sub     esp, 12                                 ; 014F _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0152 _ FF. 75, F4
        call    io_store_eflags                         ; 0155 _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 015A _ 83. C4, 10
        nop                                             ; 015D _ 90
        mov     ebx, dword [ebp-4H]                     ; 015E _ 8B. 5D, FC
        leave                                           ; 0161 _ C9
        ret                                             ; 0162 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0163 _ 55
        mov     ebp, esp                                ; 0164 _ 89. E5
        sub     esp, 20                                 ; 0166 _ 83. EC, 14
        call    __x86.get_pc_thunk.ax                   ; 0169 _ E8, FFFFFFFC(rel)
;        add     eax, _GLOBAL_OFFSET_TABLE_-$            ; 016E _ 05, 00000001(GOT r)
        mov     eax, dword [ebp+10H]                    ; 0173 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0176 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0179 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 017C _ 89. 45, FC
        jmp     ?_007                                   ; 017F _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 0181 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0184 _ 89. 45, F8
        jmp     ?_006                                   ; 0187 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 0189 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 018C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0190 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0192 _ 8B. 45, F8
        add     eax, edx                                ; 0195 _ 01. D0
        mov     edx, eax                                ; 0197 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0199 _ 8B. 45, 08
        add     edx, eax                                ; 019C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 019E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01A2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 01A4 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 01A8 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 01AB _ 3B. 45, 1C
        jle     ?_005                                   ; 01AE _ 7E, D9
        add     dword [ebp-4H], 1                       ; 01B0 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 01B4 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 01B7 _ 3B. 45, 20
        jle     ?_004                                   ; 01BA _ 7E, C5
        nop                                             ; 01BC _ 90
        leave                                           ; 01BD _ C9
        ret                                             ; 01BE _ C3
; boxfill8 End of function


;SECTION .data   align=32 noexecute                      ; section number 2, data

table_rgb.1442:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........


;SECTION .bss    align=1 noexecute                       ; section number 3, bss


;SECTION .text.__x86.get_pc_thunk.ax align=1 execute     ; section number 4, code

__x86.get_pc_thunk.ax:; Function begin
        mov     eax, dword [esp]                        ; 0000 _ 8B. 04 24
        ret                                             ; 0003 _ C3
; __x86.get_pc_thunk.ax End of function


;SECTION .text.__x86.get_pc_thunk.bx align=1 execute     ; section number 5, code

__x86.get_pc_thunk.bx:; Function begin
        mov     ebx, dword [esp]                        ; 0000 _ 8B. 1C 24
        ret                                             ; 0003 _ C3
; __x86.get_pc_thunk.bx End of function


