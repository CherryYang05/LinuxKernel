; Disassembly of file: write_vga.o
; Fri Jan 22 16:48:57 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386





;SECTION .text   align=1 execute                         ; section number 1, code

CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 20                                 ; 0004 _ 83. EC, 14
        call    __x86.get_pc_thunk.bx                   ; 0007 _ E8, FFFFFFFC(rel)
;        add     ebx, _GLOBAL_OFFSET_TABLE_-$            ; 000C _ 81. C3, 00000002(GOT r)
        mov     dword [ebp-0CH], 0                      ; 0012 _ C7. 45, F4, 00000000
        call    init_palette                            ; 0019 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 655360                 ; 001E _ C7. 45, F0, 000A0000
        jmp     ?_002                                   ; 0025 _ EB, 17

?_001:  mov     eax, dword [ebp-10H]                    ; 0027 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 002A _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 002D _ 8B. 45, F0
        and     eax, 0FH                                ; 0030 _ 83. E0, 0F
        mov     edx, eax                                ; 0033 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0035 _ 8B. 45, F4
        mov     byte [eax], dl                          ; 0038 _ 88. 10
        add     dword [ebp-10H], 1                      ; 003A _ 83. 45, F0, 01
?_002:  cmp     dword [ebp-10H], 720895                 ; 003E _ 81. 7D, F0, 000AFFFF
        jle     ?_001                                   ; 0045 _ 7E, E0
?_003:  call    io_hlt                                  ; 0047 _ E8, FFFFFFFC(PLT r)
        jmp     ?_003                                   ; 004C _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 004E _ 55
        mov     ebp, esp                                ; 004F _ 89. E5
        sub     esp, 8                                  ; 0051 _ 83. EC, 08
        call    __x86.get_pc_thunk.ax                   ; 0054 _ E8, FFFFFFFC(rel)
;        add     eax, _GLOBAL_OFFSET_TABLE_-$            ; 0059 _ 05, 00000001(GOT r)
        sub     esp, 4                                  ; 005E _ 83. EC, 04
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 80H, 00H, 00H, 00H, 00H

        push    eax                                     ; 0067 _ 50
        push    15                                      ; 0068 _ 6A, 0F
        push    0                                       ; 006A _ 6A, 00
        call    set_palette                             ; 006C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0071 _ 83. C4, 10
        nop                                             ; 0074 _ 90
        leave                                           ; 0075 _ C9
        ret                                             ; 0076 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0077 _ 55
        mov     ebp, esp                                ; 0078 _ 89. E5
        push    ebx                                     ; 007A _ 53
        sub     esp, 20                                 ; 007B _ 83. EC, 14
        call    __x86.get_pc_thunk.bx                   ; 007E _ E8, FFFFFFFC(rel)
;        add     ebx, _GLOBAL_OFFSET_TABLE_-$            ; 0083 _ 81. C3, 00000002(GOT r)
        call    io_load_eflags                          ; 0089 _ E8, FFFFFFFC(PLT r)
        mov     dword [ebp-0CH], eax                    ; 008E _ 89. 45, F4
        call    io_cli                                  ; 0091 _ E8, FFFFFFFC(PLT r)
        sub     esp, 8                                  ; 0096 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0099 _ FF. 75, 08
        push    968                                     ; 009C _ 68, 000003C8
        call    io_out8                                 ; 00A1 _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 00A6 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 00A9 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 00AC _ 89. 45, F0
        jmp     ?_005                                   ; 00AF _ EB, 5C

?_004:  mov     eax, dword [ebp+10H]                    ; 00B1 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 00B4 _ 0F B6. 00
        movzx   eax, al                                 ; 00B7 _ 0F B6. C0
        sub     esp, 8                                  ; 00BA _ 83. EC, 08
        push    eax                                     ; 00BD _ 50
        push    969                                     ; 00BE _ 68, 000003C9
        call    io_out8                                 ; 00C3 _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 00C8 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 00CB _ 8B. 45, 10
        add     eax, 1                                  ; 00CE _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 00D1 _ 0F B6. 00
        movzx   eax, al                                 ; 00D4 _ 0F B6. C0
        sub     esp, 8                                  ; 00D7 _ 83. EC, 08
        push    eax                                     ; 00DA _ 50
        push    969                                     ; 00DB _ 68, 000003C9
        call    io_out8                                 ; 00E0 _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 00E5 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 00E8 _ 8B. 45, 10
        add     eax, 2                                  ; 00EB _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 00EE _ 0F B6. 00
        movzx   eax, al                                 ; 00F1 _ 0F B6. C0
        sub     esp, 8                                  ; 00F4 _ 83. EC, 08
        push    eax                                     ; 00F7 _ 50
        push    969                                     ; 00F8 _ 68, 000003C9
        call    io_out8                                 ; 00FD _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 0102 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0105 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0109 _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 010D _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0110 _ 3B. 45, 0C
        jle     ?_004                                   ; 0113 _ 7E, 9C
        sub     esp, 12                                 ; 0115 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0118 _ FF. 75, F4
        call    io_store_eflags                         ; 011B _ E8, FFFFFFFC(PLT r)
        add     esp, 16                                 ; 0120 _ 83. C4, 10
        nop                                             ; 0123 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0124 _ 8B. 5D, FC
        leave                                           ; 0127 _ C9
        ret                                             ; 0128 _ C3
; set_palette End of function


;SECTION .data   align=32 noexecute                      ; section number 2, data

table_rgb.1438:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........




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


