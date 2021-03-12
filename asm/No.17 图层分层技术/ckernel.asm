; Disassembly of file: ckernel.o
; Fri Mar 12 01:00:53 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 52                                 ; 0004 _ 83. EC, 34
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-30H], eax                    ; 001C _ 89. 45, D0
        movzx   eax, word [?_129]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-2CH], eax                    ; 0027 _ 89. 45, D4
        movzx   eax, word [?_130]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-28H], eax                    ; 0032 _ 89. 45, D8
        mov     dword [ebp-24H], 0                      ; 0035 _ C7. 45, DC, 00000000
        mov     dword [ebp-20H], 0                      ; 003C _ C7. 45, E0, 00000000
        sub     esp, 4                                  ; 0043 _ 83. EC, 04
        push    mousebuf                                ; 0046 _ 68, 00000060(d)
        push    128                                     ; 004B _ 68, 00000080
        push    mouseInfo                               ; 0050 _ 68, 00000020(d)
        call    fifo8_init                              ; 0055 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 005A _ 83. C4, 10
        sub     esp, 4                                  ; 005D _ 83. EC, 04
        push    keybuf                                  ; 0060 _ 68, 00000040(d)
        push    32                                      ; 0065 _ 6A, 20
        push    keyInfo                                 ; 0067 _ 68, 00000008(d)
        call    fifo8_init                              ; 006C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0071 _ 83. C4, 10
        call    init_palette                            ; 0074 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0079 _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 007E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 0083 _ 89. 45, E4
        call    get_memory_block_count                  ; 0086 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 008B _ 89. 45, E8
        mov     eax, dword [memman]                     ; 008E _ A1, 00000018(d)
        sub     esp, 12                                 ; 0093 _ 83. EC, 0C
        push    eax                                     ; 0096 _ 50
        call    memman_init                             ; 0097 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 009C _ 83. C4, 10
        mov     eax, dword [memman]                     ; 009F _ A1, 00000018(d)
        sub     esp, 4                                  ; 00A4 _ 83. EC, 04
        push    1072594944                              ; 00A7 _ 68, 3FEE8000
        push    1081344                                 ; 00AC _ 68, 00108000
        push    eax                                     ; 00B1 _ 50
        call    memman_free                             ; 00B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B7 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 00BA _ A1, 00000018(d)
        sub     esp, 12                                 ; 00BF _ 83. EC, 0C
        push    eax                                     ; 00C2 _ 50
        call    memman_total                            ; 00C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C8 _ 83. C4, 10
        shr     eax, 20                                 ; 00CB _ C1. E8, 14
        mov     dword [ebp-14H], eax                    ; 00CE _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 00D1 _ 8B. 45, EC
        sub     esp, 12                                 ; 00D4 _ 83. EC, 0C
        push    eax                                     ; 00D7 _ 50
        call    intToHexStr                             ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 00E0 _ 89. 45, F0
        sub     esp, 8                                  ; 00E3 _ 83. EC, 08
        push    ?_118                                   ; 00E6 _ 68, 00000000(d)
        push    3                                       ; 00EB _ 6A, 03
        push    0                                       ; 00ED _ 6A, 00
        push    0                                       ; 00EF _ 6A, 00
        push    dword [ebp-2CH]                         ; 00F1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 00F4 _ FF. 75, D0
        call    showString                              ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FC _ 83. C4, 20
        sub     esp, 8                                  ; 00FF _ 83. EC, 08
        push    dword [ebp-10H]                         ; 0102 _ FF. 75, F0
        push    3                                       ; 0105 _ 6A, 03
        push    0                                       ; 0107 _ 6A, 00
        push    152                                     ; 0109 _ 68, 00000098
        push    dword [ebp-2CH]                         ; 010E _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0111 _ FF. 75, D0
        call    showString                              ; 0114 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0119 _ 83. C4, 20
        sub     esp, 8                                  ; 011C _ 83. EC, 08
        push    ?_119                                   ; 011F _ 68, 00000014(d)
        push    3                                       ; 0124 _ 6A, 03
        push    0                                       ; 0126 _ 6A, 00
        push    240                                     ; 0128 _ 68, 000000F0
        push    dword [ebp-2CH]                         ; 012D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0130 _ FF. 75, D0
        call    showString                              ; 0133 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0138 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 013B _ A1, 00000018(d)
        push    dword [ebp-28H]                         ; 0140 _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 0143 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0146 _ FF. 75, D0
        push    eax                                     ; 0149 _ 50
        call    shtctl_init                             ; 014A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 014F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0152 _ 89. 45, F4
        sub     esp, 12                                 ; 0155 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0158 _ FF. 75, F4
        call    sheet_alloc                             ; 015B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0160 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0163 _ 89. 45, DC
        sub     esp, 12                                 ; 0166 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0169 _ FF. 75, F4
        call    sheet_alloc                             ; 016C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0171 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 0174 _ 89. 45, E0
        mov     eax, dword [ebp-2CH]                    ; 0177 _ 8B. 45, D4
        imul    eax, dword [ebp-28H]                    ; 017A _ 0F AF. 45, D8
        mov     edx, eax                                ; 017E _ 89. C2
        mov     eax, dword [memman]                     ; 0180 _ A1, 00000018(d)
        sub     esp, 8                                  ; 0185 _ 83. EC, 08
        push    edx                                     ; 0188 _ 52
        push    eax                                     ; 0189 _ 50
        call    memman_alloc_4K                         ; 018A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 018F _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0192 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0197 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 019C _ 83. EC, 04
        push    dword [ebp-28H]                         ; 019F _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 01A2 _ FF. 75, D4
        push    eax                                     ; 01A5 _ 50
        call    init_screen8                            ; 01A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01AB _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 01AE _ A1, 000000F8(d)
        sub     esp, 12                                 ; 01B3 _ 83. EC, 0C
        push    99                                      ; 01B6 _ 6A, 63
        push    dword [ebp-28H]                         ; 01B8 _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 01BB _ FF. 75, D4
        push    eax                                     ; 01BE _ 50
        push    dword [ebp-24H]                         ; 01BF _ FF. 75, DC
        call    sheet_setbuf                            ; 01C2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01C7 _ 83. C4, 20
        sub     esp, 12                                 ; 01CA _ 83. EC, 0C
        push    99                                      ; 01CD _ 6A, 63
        push    16                                      ; 01CF _ 6A, 10
        push    16                                      ; 01D1 _ 6A, 10
        push    buf_mouse                               ; 01D3 _ 68, 00000100(d)
        push    dword [ebp-20H]                         ; 01D8 _ FF. 75, E0
        call    sheet_setbuf                            ; 01DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E0 _ 83. C4, 20
        sub     esp, 8                                  ; 01E3 _ 83. EC, 08
        push    99                                      ; 01E6 _ 6A, 63
        push    buf_mouse                               ; 01E8 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 01ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01F2 _ 83. C4, 10
        push    0                                       ; 01F5 _ 6A, 00
        push    0                                       ; 01F7 _ 6A, 00
        push    dword [ebp-24H]                         ; 01F9 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 01FC _ FF. 75, F4
        call    sheet_slide                             ; 01FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0204 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 0207 _ 8B. 45, D4
        sub     eax, 16                                 ; 020A _ 83. E8, 10
        mov     edx, eax                                ; 020D _ 89. C2
        shr     edx, 31                                 ; 020F _ C1. EA, 1F
        add     eax, edx                                ; 0212 _ 01. D0
        sar     eax, 1                                  ; 0214 _ D1. F8
        mov     dword [mx], eax                         ; 0216 _ A3, 000000F0(d)
        mov     eax, dword [ebp-28H]                    ; 021B _ 8B. 45, D8
        sub     eax, 44                                 ; 021E _ 83. E8, 2C
        mov     edx, eax                                ; 0221 _ 89. C2
        shr     edx, 31                                 ; 0223 _ C1. EA, 1F
        add     eax, edx                                ; 0226 _ 01. D0
        sar     eax, 1                                  ; 0228 _ D1. F8
        mov     dword [my], eax                         ; 022A _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 022F _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0235 _ A1, 000000F0(d)
        push    edx                                     ; 023A _ 52
        push    eax                                     ; 023B _ 50
        push    dword [ebp-20H]                         ; 023C _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 023F _ FF. 75, F4
        call    sheet_slide                             ; 0242 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0247 _ 83. C4, 10
        sub     esp, 4                                  ; 024A _ 83. EC, 04
        push    1                                       ; 024D _ 6A, 01
        push    dword [ebp-20H]                         ; 024F _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 0252 _ FF. 75, F4
        call    sheet_level_updown                      ; 0255 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 025A _ 83. C4, 10
        sub     esp, 4                                  ; 025D _ 83. EC, 04
        push    0                                       ; 0260 _ 6A, 00
        push    dword [ebp-24H]                         ; 0262 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 0265 _ FF. 75, F4
        call    sheet_level_updown                      ; 0268 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026D _ 83. C4, 10
        call    io_sti                                  ; 0270 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0275 _ 83. EC, 0C
        push    mouse_move                              ; 0278 _ 68, 000000E0(d)
        call    enable_mouse                            ; 027D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0282 _ 83. C4, 10
        mov     dword [ebp-34H], 0                      ; 0285 _ C7. 45, CC, 00000000
        mov     byte [ebp-35H], 0                       ; 028C _ C6. 45, CB, 00
?_001:  call    io_cli                                  ; 0290 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0295 _ 83. EC, 0C
        push    keyInfo                                 ; 0298 _ 68, 00000008(d)
        call    fifo8_status                            ; 029D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02A2 _ 83. C4, 10
        mov     ebx, eax                                ; 02A5 _ 89. C3
        sub     esp, 12                                 ; 02A7 _ 83. EC, 0C
        push    mouseInfo                               ; 02AA _ 68, 00000020(d)
        call    fifo8_status                            ; 02AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B4 _ 83. C4, 10
        add     eax, ebx                                ; 02B7 _ 01. D8
        test    eax, eax                                ; 02B9 _ 85. C0
        jnz     ?_002                                   ; 02BB _ 75, 07
        call    io_stihlt                               ; 02BD _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 02C2 _ EB, CC

?_002:  sub     esp, 12                                 ; 02C4 _ 83. EC, 0C
        push    keyInfo                                 ; 02C7 _ 68, 00000008(d)
        call    fifo8_status                            ; 02CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D1 _ 83. C4, 10
        test    eax, eax                                ; 02D4 _ 85. C0
        jz      ?_003                                   ; 02D6 _ 74, 69
        call    io_sti                                  ; 02D8 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 02DD _ 83. EC, 0C
        push    keyInfo                                 ; 02E0 _ 68, 00000008(d)
        call    fifo8_get                               ; 02E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02EA _ 83. C4, 10
        mov     byte [ebp-35H], al                      ; 02ED _ 88. 45, CB
        cmp     byte [ebp-35H], 28                      ; 02F0 _ 80. 7D, CB, 1C
        jnz     ?_001                                   ; 02F4 _ 75, 9A
        mov     ecx, dword [buf_back]                   ; 02F6 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-34H]                    ; 02FC _ 8B. 55, CC
        mov     eax, edx                                ; 02FF _ 89. D0
        shl     eax, 2                                  ; 0301 _ C1. E0, 02
        add     eax, edx                                ; 0304 _ 01. D0
        shl     eax, 2                                  ; 0306 _ C1. E0, 02
        mov     edx, eax                                ; 0309 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 030B _ 8B. 45, E4
        add     eax, edx                                ; 030E _ 01. D0
        sub     esp, 12                                 ; 0310 _ 83. EC, 0C
        push    7                                       ; 0313 _ 6A, 07
        push    dword [ebp-2CH]                         ; 0315 _ FF. 75, D4
        push    dword [ebp-34H]                         ; 0318 _ FF. 75, CC
        push    ecx                                     ; 031B _ 51
        push    eax                                     ; 031C _ 50
        call    showMemInfo                             ; 031D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0322 _ 83. C4, 20
        add     dword [ebp-34H], 1                      ; 0325 _ 83. 45, CC, 01
        mov     eax, dword [ebp-34H]                    ; 0329 _ 8B. 45, CC
        cmp     eax, dword [ebp-18H]                    ; 032C _ 3B. 45, E8
        jl      ?_001                                   ; 032F _ 0F 8C, FFFFFF5B
        mov     dword [ebp-34H], 0                      ; 0335 _ C7. 45, CC, 00000000
        jmp     ?_001                                   ; 033C _ E9, FFFFFF4F

?_003:  sub     esp, 12                                 ; 0341 _ 83. EC, 0C
        push    mouseInfo                               ; 0344 _ 68, 00000020(d)
        call    fifo8_status                            ; 0349 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 034E _ 83. C4, 10
        test    eax, eax                                ; 0351 _ 85. C0
        je      ?_001                                   ; 0353 _ 0F 84, FFFFFF37
        sub     esp, 8                                  ; 0359 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 035C _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 035F _ FF. 75, F4
        call    showMouseInfo                           ; 0362 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0367 _ 83. C4, 10
        jmp     ?_001                                   ; 036A _ E9, FFFFFF21
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 036F _ 55
        mov     ebp, esp                                ; 0370 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0372 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0375 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 037B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 037E _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0384 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0387 _ 66: C7. 40, 06, 00C8
        nop                                             ; 038D _ 90
        pop     ebp                                     ; 038E _ 5D
        ret                                             ; 038F _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0390 _ 55
        mov     ebp, esp                                ; 0391 _ 89. E5
        sub     esp, 24                                 ; 0393 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 0396 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 0399 _ 88. 45, F4
        jmp     ?_005                                   ; 039C _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 039E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03A1 _ 0F B6. 00
        movzx   eax, al                                 ; 03A4 _ 0F B6. C0
        shl     eax, 4                                  ; 03A7 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 03AA _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 03B0 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 03B4 _ 83. EC, 08
        push    edx                                     ; 03B7 _ 52
        push    eax                                     ; 03B8 _ 50
        push    dword [ebp+14H]                         ; 03B9 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 03BC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 03BF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03C2 _ FF. 75, 08
        call    showFont8                               ; 03C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03CA _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 03CD _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 03D1 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 03D5 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03D8 _ 0F B6. 00
        test    al, al                                  ; 03DB _ 84. C0
        jnz     ?_004                                   ; 03DD _ 75, BF
        nop                                             ; 03DF _ 90
        leave                                           ; 03E0 _ C9
        ret                                             ; 03E1 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 03E2 _ 55
        mov     ebp, esp                                ; 03E3 _ 89. E5
        push    ebx                                     ; 03E5 _ 53
        sub     esp, 4                                  ; 03E6 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 03E9 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 03EC _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 03EF _ 8B. 45, 0C
        sub     eax, 1                                  ; 03F2 _ 83. E8, 01
        sub     esp, 4                                  ; 03F5 _ 83. EC, 04
        push    edx                                     ; 03F8 _ 52
        push    eax                                     ; 03F9 _ 50
        push    0                                       ; 03FA _ 6A, 00
        push    0                                       ; 03FC _ 6A, 00
        push    14                                      ; 03FE _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0400 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0403 _ FF. 75, 08
        call    boxfill8                                ; 0406 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 040B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 040E _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0411 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0414 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0417 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 041A _ 8B. 45, 10
        sub     eax, 28                                 ; 041D _ 83. E8, 1C
        sub     esp, 4                                  ; 0420 _ 83. EC, 04
        push    ecx                                     ; 0423 _ 51
        push    edx                                     ; 0424 _ 52
        push    eax                                     ; 0425 _ 50
        push    0                                       ; 0426 _ 6A, 00
        push    8                                       ; 0428 _ 6A, 08
        push    dword [ebp+0CH]                         ; 042A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 042D _ FF. 75, 08
        call    boxfill8                                ; 0430 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0435 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0438 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 043B _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 043E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0441 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0444 _ 8B. 45, 10
        sub     eax, 27                                 ; 0447 _ 83. E8, 1B
        sub     esp, 4                                  ; 044A _ 83. EC, 04
        push    ecx                                     ; 044D _ 51
        push    edx                                     ; 044E _ 52
        push    eax                                     ; 044F _ 50
        push    0                                       ; 0450 _ 6A, 00
        push    7                                       ; 0452 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0454 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0457 _ FF. 75, 08
        call    boxfill8                                ; 045A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 045F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0462 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0465 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0468 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 046B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 046E _ 8B. 45, 10
        sub     eax, 26                                 ; 0471 _ 83. E8, 1A
        sub     esp, 4                                  ; 0474 _ 83. EC, 04
        push    ecx                                     ; 0477 _ 51
        push    edx                                     ; 0478 _ 52
        push    eax                                     ; 0479 _ 50
        push    0                                       ; 047A _ 6A, 00
        push    8                                       ; 047C _ 6A, 08
        push    dword [ebp+0CH]                         ; 047E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0481 _ FF. 75, 08
        call    boxfill8                                ; 0484 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0489 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 048C _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 048F _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0492 _ 8B. 45, 10
        sub     eax, 24                                 ; 0495 _ 83. E8, 18
        sub     esp, 4                                  ; 0498 _ 83. EC, 04
        push    edx                                     ; 049B _ 52
        push    59                                      ; 049C _ 6A, 3B
        push    eax                                     ; 049E _ 50
        push    3                                       ; 049F _ 6A, 03
        push    7                                       ; 04A1 _ 6A, 07
        push    dword [ebp+0CH]                         ; 04A3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04A6 _ FF. 75, 08
        call    boxfill8                                ; 04A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04AE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04B1 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 04B4 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 04B7 _ 8B. 45, 10
        sub     eax, 24                                 ; 04BA _ 83. E8, 18
        sub     esp, 4                                  ; 04BD _ 83. EC, 04
        push    edx                                     ; 04C0 _ 52
        push    2                                       ; 04C1 _ 6A, 02
        push    eax                                     ; 04C3 _ 50
        push    2                                       ; 04C4 _ 6A, 02
        push    7                                       ; 04C6 _ 6A, 07
        push    dword [ebp+0CH]                         ; 04C8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04CB _ FF. 75, 08
        call    boxfill8                                ; 04CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04D3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04D6 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 04D9 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 04DC _ 8B. 45, 10
        sub     eax, 4                                  ; 04DF _ 83. E8, 04
        sub     esp, 4                                  ; 04E2 _ 83. EC, 04
        push    edx                                     ; 04E5 _ 52
        push    59                                      ; 04E6 _ 6A, 3B
        push    eax                                     ; 04E8 _ 50
        push    3                                       ; 04E9 _ 6A, 03
        push    15                                      ; 04EB _ 6A, 0F
        push    dword [ebp+0CH]                         ; 04ED _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04F0 _ FF. 75, 08
        call    boxfill8                                ; 04F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04F8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04FB _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 04FE _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0501 _ 8B. 45, 10
        sub     eax, 23                                 ; 0504 _ 83. E8, 17
        sub     esp, 4                                  ; 0507 _ 83. EC, 04
        push    edx                                     ; 050A _ 52
        push    59                                      ; 050B _ 6A, 3B
        push    eax                                     ; 050D _ 50
        push    59                                      ; 050E _ 6A, 3B
        push    15                                      ; 0510 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0512 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0515 _ FF. 75, 08
        call    boxfill8                                ; 0518 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 051D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0520 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0523 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0526 _ 8B. 45, 10
        sub     eax, 3                                  ; 0529 _ 83. E8, 03
        sub     esp, 4                                  ; 052C _ 83. EC, 04
        push    edx                                     ; 052F _ 52
        push    59                                      ; 0530 _ 6A, 3B
        push    eax                                     ; 0532 _ 50
        push    2                                       ; 0533 _ 6A, 02
        push    0                                       ; 0535 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0537 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 053A _ FF. 75, 08
        call    boxfill8                                ; 053D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0542 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0545 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0548 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 054B _ 8B. 45, 10
        sub     eax, 24                                 ; 054E _ 83. E8, 18
        sub     esp, 4                                  ; 0551 _ 83. EC, 04
        push    edx                                     ; 0554 _ 52
        push    60                                      ; 0555 _ 6A, 3C
        push    eax                                     ; 0557 _ 50
        push    60                                      ; 0558 _ 6A, 3C
        push    0                                       ; 055A _ 6A, 00
        push    dword [ebp+0CH]                         ; 055C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 055F _ FF. 75, 08
        call    boxfill8                                ; 0562 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0567 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 056A _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 056D _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0570 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0573 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0576 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0579 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 057C _ 8B. 45, 0C
        sub     eax, 47                                 ; 057F _ 83. E8, 2F
        sub     esp, 4                                  ; 0582 _ 83. EC, 04
        push    ebx                                     ; 0585 _ 53
        push    ecx                                     ; 0586 _ 51
        push    edx                                     ; 0587 _ 52
        push    eax                                     ; 0588 _ 50
        push    15                                      ; 0589 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 058B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 058E _ FF. 75, 08
        call    boxfill8                                ; 0591 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0596 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0599 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 059C _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 059F _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 05A2 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 05A5 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 05A8 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 05AB _ 8B. 45, 0C
        sub     eax, 47                                 ; 05AE _ 83. E8, 2F
        sub     esp, 4                                  ; 05B1 _ 83. EC, 04
        push    ebx                                     ; 05B4 _ 53
        push    ecx                                     ; 05B5 _ 51
        push    edx                                     ; 05B6 _ 52
        push    eax                                     ; 05B7 _ 50
        push    15                                      ; 05B8 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05BA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05BD _ FF. 75, 08
        call    boxfill8                                ; 05C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05C5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05C8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 05CB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 05CE _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 05D1 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 05D4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05D7 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 05DA _ 8B. 45, 0C
        sub     eax, 47                                 ; 05DD _ 83. E8, 2F
        sub     esp, 4                                  ; 05E0 _ 83. EC, 04
        push    ebx                                     ; 05E3 _ 53
        push    ecx                                     ; 05E4 _ 51
        push    edx                                     ; 05E5 _ 52
        push    eax                                     ; 05E6 _ 50
        push    7                                       ; 05E7 _ 6A, 07
        push    dword [ebp+0CH]                         ; 05E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05EC _ FF. 75, 08
        call    boxfill8                                ; 05EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05F7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 05FA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 05FD _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0600 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0603 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0606 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0609 _ 8B. 45, 0C
        sub     eax, 3                                  ; 060C _ 83. E8, 03
        sub     esp, 4                                  ; 060F _ 83. EC, 04
        push    ebx                                     ; 0612 _ 53
        push    ecx                                     ; 0613 _ 51
        push    edx                                     ; 0614 _ 52
        push    eax                                     ; 0615 _ 50
        push    7                                       ; 0616 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0618 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 061B _ FF. 75, 08
        call    boxfill8                                ; 061E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0623 _ 83. C4, 20
        nop                                             ; 0626 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0627 _ 8B. 5D, FC
        leave                                           ; 062A _ C9
        ret                                             ; 062B _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 062C _ 55
        mov     ebp, esp                                ; 062D _ 89. E5
        sub     esp, 24                                 ; 062F _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0632 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0637 _ 89. 45, EC
        movzx   eax, word [?_129]                       ; 063A _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0641 _ 98
        mov     dword [ebp-10H], eax                    ; 0642 _ 89. 45, F0
        movzx   eax, word [?_130]                       ; 0645 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 064C _ 98
        mov     dword [ebp-0CH], eax                    ; 064D _ 89. 45, F4
        sub     esp, 4                                  ; 0650 _ 83. EC, 04
        push    table_rgb.1653                          ; 0653 _ 68, 00000020(d)
        push    15                                      ; 0658 _ 6A, 0F
        push    0                                       ; 065A _ 6A, 00
        call    set_palette                             ; 065C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0661 _ 83. C4, 10
        nop                                             ; 0664 _ 90
        leave                                           ; 0665 _ C9
        ret                                             ; 0666 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0667 _ 55
        mov     ebp, esp                                ; 0668 _ 89. E5
        sub     esp, 24                                 ; 066A _ 83. EC, 18
        call    io_load_eflags                          ; 066D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0672 _ 89. 45, F4
        call    io_cli                                  ; 0675 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 067A _ 83. EC, 08
        push    dword [ebp+8H]                          ; 067D _ FF. 75, 08
        push    968                                     ; 0680 _ 68, 000003C8
        call    io_out8                                 ; 0685 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 068A _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 068D _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0690 _ 89. 45, F0
        jmp     ?_007                                   ; 0693 _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 0695 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0698 _ 0F B6. 00
        shr     al, 2                                   ; 069B _ C0. E8, 02
        movzx   eax, al                                 ; 069E _ 0F B6. C0
        sub     esp, 8                                  ; 06A1 _ 83. EC, 08
        push    eax                                     ; 06A4 _ 50
        push    969                                     ; 06A5 _ 68, 000003C9
        call    io_out8                                 ; 06AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06AF _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 06B2 _ 8B. 45, 10
        add     eax, 1                                  ; 06B5 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 06B8 _ 0F B6. 00
        shr     al, 2                                   ; 06BB _ C0. E8, 02
        movzx   eax, al                                 ; 06BE _ 0F B6. C0
        sub     esp, 8                                  ; 06C1 _ 83. EC, 08
        push    eax                                     ; 06C4 _ 50
        push    969                                     ; 06C5 _ 68, 000003C9
        call    io_out8                                 ; 06CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06CF _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 06D2 _ 8B. 45, 10
        add     eax, 2                                  ; 06D5 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 06D8 _ 0F B6. 00
        shr     al, 2                                   ; 06DB _ C0. E8, 02
        movzx   eax, al                                 ; 06DE _ 0F B6. C0
        sub     esp, 8                                  ; 06E1 _ 83. EC, 08
        push    eax                                     ; 06E4 _ 50
        push    969                                     ; 06E5 _ 68, 000003C9
        call    io_out8                                 ; 06EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06EF _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 06F2 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 06F6 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 06FA _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 06FD _ 3B. 45, 0C
        jle     ?_006                                   ; 0700 _ 7E, 93
        sub     esp, 12                                 ; 0702 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0705 _ FF. 75, F4
        call    io_store_eflags                         ; 0708 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 070D _ 83. C4, 10
        nop                                             ; 0710 _ 90
        leave                                           ; 0711 _ C9
        ret                                             ; 0712 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0713 _ 55
        mov     ebp, esp                                ; 0714 _ 89. E5
        sub     esp, 20                                 ; 0716 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0719 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 071C _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 071F _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0722 _ 89. 45, FC
        jmp     ?_011                                   ; 0725 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 0727 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 072A _ 89. 45, F8
        jmp     ?_010                                   ; 072D _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 072F _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0732 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0736 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0738 _ 8B. 45, F8
        add     eax, edx                                ; 073B _ 01. D0
        mov     edx, eax                                ; 073D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 073F _ 8B. 45, 08
        add     edx, eax                                ; 0742 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0744 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0748 _ 88. 02
        add     dword [ebp-8H], 1                       ; 074A _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 074E _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0751 _ 3B. 45, 1C
        jle     ?_009                                   ; 0754 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0756 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 075A _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 075D _ 3B. 45, 20
        jle     ?_008                                   ; 0760 _ 7E, C5
        nop                                             ; 0762 _ 90
        leave                                           ; 0763 _ C9
        ret                                             ; 0764 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0765 _ 55
        mov     ebp, esp                                ; 0766 _ 89. E5
        sub     esp, 20                                 ; 0768 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 076B _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 076E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0771 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0778 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 077D _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0780 _ 8B. 45, 1C
        add     eax, edx                                ; 0783 _ 01. D0
        movzx   eax, byte [eax]                         ; 0785 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0788 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 078B _ 80. 7D, FB, 00
        jns     ?_013                                   ; 078F _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0791 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0794 _ 8B. 45, FC
        add     eax, edx                                ; 0797 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0799 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 079D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 079F _ 8B. 45, 10
        add     eax, edx                                ; 07A2 _ 01. D0
        mov     edx, eax                                ; 07A4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07A6 _ 8B. 45, 08
        add     edx, eax                                ; 07A9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07AB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07AF _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 07B1 _ 0F BE. 45, FB
        and     eax, 40H                                ; 07B5 _ 83. E0, 40
        test    eax, eax                                ; 07B8 _ 85. C0
        jz      ?_014                                   ; 07BA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 07BC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 07BF _ 8B. 45, FC
        add     eax, edx                                ; 07C2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07C4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07C8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07CA _ 8B. 45, 10
        add     eax, edx                                ; 07CD _ 01. D0
        lea     edx, [eax+1H]                           ; 07CF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 07D2 _ 8B. 45, 08
        add     edx, eax                                ; 07D5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07D7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07DB _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 07DD _ 0F BE. 45, FB
        and     eax, 20H                                ; 07E1 _ 83. E0, 20
        test    eax, eax                                ; 07E4 _ 85. C0
        jz      ?_015                                   ; 07E6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 07E8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 07EB _ 8B. 45, FC
        add     eax, edx                                ; 07EE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07F0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07F4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07F6 _ 8B. 45, 10
        add     eax, edx                                ; 07F9 _ 01. D0
        lea     edx, [eax+2H]                           ; 07FB _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 07FE _ 8B. 45, 08
        add     edx, eax                                ; 0801 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0803 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0807 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0809 _ 0F BE. 45, FB
        and     eax, 10H                                ; 080D _ 83. E0, 10
        test    eax, eax                                ; 0810 _ 85. C0
        jz      ?_016                                   ; 0812 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0814 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0817 _ 8B. 45, FC
        add     eax, edx                                ; 081A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 081C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0820 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0822 _ 8B. 45, 10
        add     eax, edx                                ; 0825 _ 01. D0
        lea     edx, [eax+3H]                           ; 0827 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 082A _ 8B. 45, 08
        add     edx, eax                                ; 082D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 082F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0833 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0835 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0839 _ 83. E0, 08
        test    eax, eax                                ; 083C _ 85. C0
        jz      ?_017                                   ; 083E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0840 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0843 _ 8B. 45, FC
        add     eax, edx                                ; 0846 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0848 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 084C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 084E _ 8B. 45, 10
        add     eax, edx                                ; 0851 _ 01. D0
        lea     edx, [eax+4H]                           ; 0853 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0856 _ 8B. 45, 08
        add     edx, eax                                ; 0859 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 085B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 085F _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0861 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0865 _ 83. E0, 04
        test    eax, eax                                ; 0868 _ 85. C0
        jz      ?_018                                   ; 086A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 086C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 086F _ 8B. 45, FC
        add     eax, edx                                ; 0872 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0874 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0878 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 087A _ 8B. 45, 10
        add     eax, edx                                ; 087D _ 01. D0
        lea     edx, [eax+5H]                           ; 087F _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0882 _ 8B. 45, 08
        add     edx, eax                                ; 0885 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0887 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 088B _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 088D _ 0F BE. 45, FB
        and     eax, 02H                                ; 0891 _ 83. E0, 02
        test    eax, eax                                ; 0894 _ 85. C0
        jz      ?_019                                   ; 0896 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0898 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 089B _ 8B. 45, FC
        add     eax, edx                                ; 089E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08A0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08A4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08A6 _ 8B. 45, 10
        add     eax, edx                                ; 08A9 _ 01. D0
        lea     edx, [eax+6H]                           ; 08AB _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 08AE _ 8B. 45, 08
        add     edx, eax                                ; 08B1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08B3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08B7 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 08B9 _ 0F BE. 45, FB
        and     eax, 01H                                ; 08BD _ 83. E0, 01
        test    eax, eax                                ; 08C0 _ 85. C0
        jz      ?_020                                   ; 08C2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08C4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08C7 _ 8B. 45, FC
        add     eax, edx                                ; 08CA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08CC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08D0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D2 _ 8B. 45, 10
        add     eax, edx                                ; 08D5 _ 01. D0
        lea     edx, [eax+7H]                           ; 08D7 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 08DA _ 8B. 45, 08
        add     edx, eax                                ; 08DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E3 _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 08E5 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 08E9 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 08ED _ 0F 8E, FFFFFE8A
        nop                                             ; 08F3 _ 90
        leave                                           ; 08F4 _ C9
        ret                                             ; 08F5 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 08F6 _ 55
        mov     ebp, esp                                ; 08F7 _ 89. E5
        sub     esp, 20                                 ; 08F9 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 08FC _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 08FF _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0902 _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 0909 _ E9, 000000B1

?_022:  mov     dword [ebp-8H], 0                       ; 090E _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 0915 _ E9, 00000097

?_023:  mov     eax, dword [ebp-4H]                     ; 091A _ 8B. 45, FC
        shl     eax, 4                                  ; 091D _ C1. E0, 04
        mov     edx, eax                                ; 0920 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0922 _ 8B. 45, F8
        add     eax, edx                                ; 0925 _ 01. D0
        add     eax, cursor.1698                        ; 0927 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 092C _ 0F B6. 00
        cmp     al, 42                                  ; 092F _ 3C, 2A
        jnz     ?_024                                   ; 0931 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0933 _ 8B. 45, FC
        shl     eax, 4                                  ; 0936 _ C1. E0, 04
        mov     edx, eax                                ; 0939 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 093B _ 8B. 45, F8
        add     eax, edx                                ; 093E _ 01. D0
        mov     edx, eax                                ; 0940 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0942 _ 8B. 45, 08
        add     eax, edx                                ; 0945 _ 01. D0
        mov     byte [eax], 0                           ; 0947 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-4H]                     ; 094A _ 8B. 45, FC
        shl     eax, 4                                  ; 094D _ C1. E0, 04
        mov     edx, eax                                ; 0950 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0952 _ 8B. 45, F8
        add     eax, edx                                ; 0955 _ 01. D0
        add     eax, cursor.1698                        ; 0957 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 095C _ 0F B6. 00
        cmp     al, 79                                  ; 095F _ 3C, 4F
        jnz     ?_025                                   ; 0961 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0963 _ 8B. 45, FC
        shl     eax, 4                                  ; 0966 _ C1. E0, 04
        mov     edx, eax                                ; 0969 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 096B _ 8B. 45, F8
        add     eax, edx                                ; 096E _ 01. D0
        mov     edx, eax                                ; 0970 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0972 _ 8B. 45, 08
        add     eax, edx                                ; 0975 _ 01. D0
        mov     byte [eax], 7                           ; 0977 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-4H]                     ; 097A _ 8B. 45, FC
        shl     eax, 4                                  ; 097D _ C1. E0, 04
        mov     edx, eax                                ; 0980 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0982 _ 8B. 45, F8
        add     eax, edx                                ; 0985 _ 01. D0
        add     eax, cursor.1698                        ; 0987 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 098C _ 0F B6. 00
        cmp     al, 46                                  ; 098F _ 3C, 2E
        jnz     ?_026                                   ; 0991 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0993 _ 8B. 45, FC
        shl     eax, 4                                  ; 0996 _ C1. E0, 04
        mov     edx, eax                                ; 0999 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 099B _ 8B. 45, F8
        add     eax, edx                                ; 099E _ 01. D0
        mov     edx, eax                                ; 09A0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09A2 _ 8B. 45, 08
        add     edx, eax                                ; 09A5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09A7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09AB _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 09AD _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 09B1 _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 09B5 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 09BB _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 09BF _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 09C3 _ 0F 8E, FFFFFF45
        nop                                             ; 09C9 _ 90
        leave                                           ; 09CA _ C9
        ret                                             ; 09CB _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 09CC _ 55
        mov     ebp, esp                                ; 09CD _ 89. E5
        push    ebx                                     ; 09CF _ 53
        sub     esp, 16                                 ; 09D0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 09D3 _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 09DA _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 09DC _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 09E3 _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 09E5 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 09E8 _ 0F AF. 45, 24
        mov     edx, eax                                ; 09EC _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 09EE _ 8B. 45, F4
        add     eax, edx                                ; 09F1 _ 01. D0
        mov     edx, eax                                ; 09F3 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 09F5 _ 8B. 45, 20
        add     eax, edx                                ; 09F8 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 09FA _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 09FD _ 8B. 55, F8
        add     edx, ecx                                ; 0A00 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0A02 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0A06 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0A09 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0A0C _ 01. D9
        add     edx, ecx                                ; 0A0E _ 01. CA
        mov     ecx, edx                                ; 0A10 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0A12 _ 8B. 55, 08
        add     edx, ecx                                ; 0A15 _ 01. CA
        movzx   eax, byte [eax]                         ; 0A17 _ 0F B6. 00
        mov     byte [edx], al                          ; 0A1A _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0A1C _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0A20 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0A23 _ 3B. 45, 10
        jl      ?_030                                   ; 0A26 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0A28 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0A2C _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0A2F _ 3B. 45, 14
        jl      ?_029                                   ; 0A32 _ 7C, A8
        nop                                             ; 0A34 _ 90
        add     esp, 16                                 ; 0A35 _ 83. C4, 10
        pop     ebx                                     ; 0A38 _ 5B
        pop     ebp                                     ; 0A39 _ 5D
        ret                                             ; 0A3A _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0A3B _ 55
        mov     ebp, esp                                ; 0A3C _ 89. E5
        sub     esp, 24                                 ; 0A3E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0A41 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0A46 _ 89. 45, EC
        movzx   eax, word [?_129]                       ; 0A49 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0A50 _ 98
        mov     dword [ebp-10H], eax                    ; 0A51 _ 89. 45, F0
        movzx   eax, word [?_130]                       ; 0A54 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0A5B _ 98
        mov     dword [ebp-0CH], eax                    ; 0A5C _ 89. 45, F4
        sub     esp, 8                                  ; 0A5F _ 83. EC, 08
        push    32                                      ; 0A62 _ 6A, 20
        push    32                                      ; 0A64 _ 6A, 20
        call    io_out8                                 ; 0A66 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A6B _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0A6E _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0A72 _ 83. EC, 0C
        push    96                                      ; 0A75 _ 6A, 60
        call    io_in8                                  ; 0A77 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A7C _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0A7F _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0A82 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0A86 _ 83. EC, 08
        push    eax                                     ; 0A89 _ 50
        push    keyInfo                                 ; 0A8A _ 68, 00000008(d)
        call    fifo8_put                               ; 0A8F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A94 _ 83. C4, 10
        nop                                             ; 0A97 _ 90
        leave                                           ; 0A98 _ C9
        ret                                             ; 0A99 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0A9A _ 55
        mov     ebp, esp                                ; 0A9B _ 89. E5
        sub     esp, 40                                 ; 0A9D _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0AA0 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0AA3 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0AA6 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0AAA _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0AAD _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0AB0 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0AB4 _ 83. EC, 0C
        push    eax                                     ; 0AB7 _ 50
        call    charToVal                               ; 0AB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ABD _ 83. C4, 10
        mov     byte [?_128], al                        ; 0AC0 _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 0AC5 _ 0F B6. 45, E4
        shr     al, 4                                   ; 0AC9 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0ACC _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0ACF _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0AD3 _ 0F BE. C0
        sub     esp, 12                                 ; 0AD6 _ 83. EC, 0C
        push    eax                                     ; 0AD9 _ 50
        call    charToVal                               ; 0ADA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ADF _ 83. C4, 10
        mov     byte [?_127], al                        ; 0AE2 _ A2, 00000012(d)
        mov     eax, keyVal                             ; 0AE7 _ B8, 00000010(d)
        leave                                           ; 0AEC _ C9
        ret                                             ; 0AED _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0AEE _ 55
        mov     ebp, esp                                ; 0AEF _ 89. E5
        sub     esp, 4                                  ; 0AF1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0AF4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0AF7 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0AFA _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0AFE _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0B00 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0B04 _ 83. C0, 37
        jmp     ?_034                                   ; 0B07 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0B09 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0B0D _ 83. C0, 30
?_034:  leave                                           ; 0B10 _ C9
        ret                                             ; 0B11 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0B12 _ 55
        mov     ebp, esp                                ; 0B13 _ 89. E5
        sub     esp, 16                                 ; 0B15 _ 83. EC, 10
        mov     byte [str.1741], 48                     ; 0B18 _ C6. 05, 00000200(d), 30
        mov     byte [?_131], 120                       ; 0B1F _ C6. 05, 00000201(d), 78
        mov     byte [?_132], 0                         ; 0B26 _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0B2D _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0B34 _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0B36 _ 8B. 45, F4
        add     eax, str.1741                           ; 0B39 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0B3E _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0B41 _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0B45 _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0B49 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0B4B _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0B52 _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0B54 _ 8B. 45, 08
        and     eax, 0FH                                ; 0B57 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0B5A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B5D _ 8B. 45, 08
        shr     eax, 4                                  ; 0B60 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0B63 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0B66 _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0B6A _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0B6C _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0B6F _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0B72 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0B75 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0B78 _ 89. 55, F8
        mov     edx, ecx                                ; 0B7B _ 89. CA
        mov     byte [str.1741+eax], dl                 ; 0B7D _ 88. 90, 00000200(d)
        jmp     ?_039                                   ; 0B83 _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 0B85 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0B88 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0B8B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0B8E _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0B91 _ 89. 55, F8
        mov     edx, ecx                                ; 0B94 _ 89. CA
        mov     byte [str.1741+eax], dl                 ; 0B96 _ 88. 90, 00000200(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0B9C _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0BA0 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0BA2 _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0BA6 _ 75, AC
?_040:  mov     eax, str.1741                           ; 0BA8 _ B8, 00000200(d)
        leave                                           ; 0BAD _ C9
        ret                                             ; 0BAE _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0BAF _ 55
        mov     ebp, esp                                ; 0BB0 _ 89. E5
        sub     esp, 8                                  ; 0BB2 _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0BB5 _ 83. EC, 0C
        push    100                                     ; 0BB8 _ 6A, 64
        call    io_in8                                  ; 0BBA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BBF _ 83. C4, 10
        movsx   eax, al                                 ; 0BC2 _ 0F BE. C0
        and     eax, 02H                                ; 0BC5 _ 83. E0, 02
        test    eax, eax                                ; 0BC8 _ 85. C0
        jz      ?_042                                   ; 0BCA _ 74, 02
        jmp     ?_041                                   ; 0BCC _ EB, E7

?_042:  nop                                             ; 0BCE _ 90
        nop                                             ; 0BCF _ 90
        leave                                           ; 0BD0 _ C9
        ret                                             ; 0BD1 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0BD2 _ 55
        mov     ebp, esp                                ; 0BD3 _ 89. E5
        sub     esp, 8                                  ; 0BD5 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0BD8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0BDD _ 83. EC, 08
        push    96                                      ; 0BE0 _ 6A, 60
        push    100                                     ; 0BE2 _ 6A, 64
        call    io_out8                                 ; 0BE4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BE9 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0BEC _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0BF1 _ 83. EC, 08
        push    71                                      ; 0BF4 _ 6A, 47
        push    96                                      ; 0BF6 _ 6A, 60
        call    io_out8                                 ; 0BF8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BFD _ 83. C4, 10
        nop                                             ; 0C00 _ 90
        leave                                           ; 0C01 _ C9
        ret                                             ; 0C02 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0C03 _ 55
        mov     ebp, esp                                ; 0C04 _ 89. E5
        sub     esp, 8                                  ; 0C06 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0C09 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C0E _ 83. EC, 08
        push    212                                     ; 0C11 _ 68, 000000D4
        push    100                                     ; 0C16 _ 6A, 64
        call    io_out8                                 ; 0C18 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C1D _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0C20 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C25 _ 83. EC, 08
        push    244                                     ; 0C28 _ 68, 000000F4
        push    96                                      ; 0C2D _ 6A, 60
        call    io_out8                                 ; 0C2F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C34 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0C37 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0C3A _ C6. 40, 03, 00
        nop                                             ; 0C3E _ 90
        leave                                           ; 0C3F _ C9
        ret                                             ; 0C40 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0C41 _ 55
        mov     ebp, esp                                ; 0C42 _ 89. E5
        sub     esp, 24                                 ; 0C44 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0C47 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0C4B _ 83. EC, 08
        push    32                                      ; 0C4E _ 6A, 20
        push    160                                     ; 0C50 _ 68, 000000A0
        call    io_out8                                 ; 0C55 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C5A _ 83. C4, 10
        sub     esp, 8                                  ; 0C5D _ 83. EC, 08
        push    32                                      ; 0C60 _ 6A, 20
        push    32                                      ; 0C62 _ 6A, 20
        call    io_out8                                 ; 0C64 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C69 _ 83. C4, 10
        sub     esp, 12                                 ; 0C6C _ 83. EC, 0C
        push    96                                      ; 0C6F _ 6A, 60
        call    io_in8                                  ; 0C71 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C76 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0C79 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0C7C _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0C80 _ 83. EC, 08
        push    eax                                     ; 0C83 _ 50
        push    mouseInfo                               ; 0C84 _ 68, 00000020(d)
        call    fifo8_put                               ; 0C89 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C8E _ 83. C4, 10
        nop                                             ; 0C91 _ 90
        leave                                           ; 0C92 _ C9
        ret                                             ; 0C93 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0C94 _ 55
        mov     ebp, esp                                ; 0C95 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0C97 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0C9A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0C9D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0CA0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0CA3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0CA6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0CA8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0CAB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0CAE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0CB1 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0CB4 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0CBB _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0CBE _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0CC5 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0CC8 _ C7. 40, 14, 00000000
        nop                                             ; 0CCF _ 90
        pop     ebp                                     ; 0CD0 _ 5D
        ret                                             ; 0CD1 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0CD2 _ 55
        mov     ebp, esp                                ; 0CD3 _ 89. E5
        sub     esp, 4                                  ; 0CD5 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0CD8 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0CDB _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0CDE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0CE1 _ 8B. 40, 10
        test    eax, eax                                ; 0CE4 _ 85. C0
        jnz     ?_043                                   ; 0CE6 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0CE8 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0CEB _ 8B. 40, 14
        or      eax, 01H                                ; 0CEE _ 83. C8, 01
        mov     edx, eax                                ; 0CF1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CF3 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0CF6 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0CF9 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0CFE _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0D00 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0D03 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0D05 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0D08 _ 8B. 40, 08
        add     edx, eax                                ; 0D0B _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0D0D _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0D11 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0D13 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0D16 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0D19 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0D1C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0D1F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0D22 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0D25 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0D28 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0D2B _ 8B. 40, 0C
        cmp     edx, eax                                ; 0D2E _ 39. C2
        jnz     ?_044                                   ; 0D30 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0D32 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D35 _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0D3C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D3F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0D42 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0D45 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0D48 _ 89. 50, 10
        mov     eax, 1                                  ; 0D4B _ B8, 00000001
?_045:  leave                                           ; 0D50 _ C9
        ret                                             ; 0D51 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0D52 _ 55
        mov     ebp, esp                                ; 0D53 _ 89. E5
        sub     esp, 16                                 ; 0D55 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0D58 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0D5B _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D5E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0D61 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0D64 _ 39. C2
        jnz     ?_046                                   ; 0D66 _ 75, 07
        mov     eax, 4294967295                         ; 0D68 _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0D6D _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0D6F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0D72 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0D74 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0D77 _ 8B. 40, 04
        add     eax, edx                                ; 0D7A _ 01. D0
        movzx   eax, byte [eax]                         ; 0D7C _ 0F B6. 00
        movzx   eax, al                                 ; 0D7F _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0D82 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D85 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0D88 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0D8B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0D8E _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0D91 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D94 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D97 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D9A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0D9D _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DA0 _ 39. C2
        jnz     ?_047                                   ; 0DA2 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DA4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0DA7 _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0DAE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DB1 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0DB4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DB7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0DBA _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0DBD _ 8B. 45, FC
?_048:  leave                                           ; 0DC0 _ C9
        ret                                             ; 0DC1 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0DC2 _ 55
        mov     ebp, esp                                ; 0DC3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0DC5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0DC8 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0DCB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DCE _ 8B. 40, 10
        sub     edx, eax                                ; 0DD1 _ 29. C2
        mov     eax, edx                                ; 0DD3 _ 89. D0
        pop     ebp                                     ; 0DD5 _ 5D
        ret                                             ; 0DD6 _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0DD7 _ 55
        mov     ebp, esp                                ; 0DD8 _ 89. E5
        sub     esp, 40                                 ; 0DDA _ 83. EC, 28
        call    io_sti                                  ; 0DDD _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0DE2 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0DE7 _ 89. 45, E8
        movzx   eax, word [?_129]                       ; 0DEA _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0DF1 _ 98
        mov     dword [ebp-14H], eax                    ; 0DF2 _ 89. 45, EC
        movzx   eax, word [?_130]                       ; 0DF5 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0DFC _ 98
        mov     dword [ebp-10H], eax                    ; 0DFD _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0E00 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0E04 _ 83. EC, 0C
        push    keyInfo                                 ; 0E07 _ 68, 00000008(d)
        call    fifo8_get                               ; 0E0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E11 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0E14 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0E17 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0E1B _ 83. EC, 0C
        push    eax                                     ; 0E1E _ 50
        call    charToHex                               ; 0E1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E24 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0E27 _ 89. 45, F4
        mov     edx, dword [line.1788]                  ; 0E2A _ 8B. 15, 0000020C(d)
        mov     eax, dword [pos.1787]                   ; 0E30 _ A1, 00000210(d)
        sub     esp, 8                                  ; 0E35 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0E38 _ FF. 75, F4
        push    7                                       ; 0E3B _ 6A, 07
        push    edx                                     ; 0E3D _ 52
        push    eax                                     ; 0E3E _ 50
        push    dword [ebp-14H]                         ; 0E3F _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0E42 _ FF. 75, E8
        call    showString                              ; 0E45 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E4A _ 83. C4, 20
        mov     eax, dword [pos.1787]                   ; 0E4D _ A1, 00000210(d)
        add     eax, 32                                 ; 0E52 _ 83. C0, 20
        mov     dword [pos.1787], eax                   ; 0E55 _ A3, 00000210(d)
        mov     eax, dword [pos.1787]                   ; 0E5A _ A1, 00000210(d)
        cmp     dword [ebp-14H], eax                    ; 0E5F _ 39. 45, EC
        jnz     ?_051                                   ; 0E62 _ 75, 28
        mov     eax, dword [line.1788]                  ; 0E64 _ A1, 0000020C(d)
        cmp     dword [ebp-10H], eax                    ; 0E69 _ 39. 45, F0
        jz      ?_049                                   ; 0E6C _ 74, 0A
        mov     eax, dword [line.1788]                  ; 0E6E _ A1, 0000020C(d)
        add     eax, 16                                 ; 0E73 _ 83. C0, 10
        jmp     ?_050                                   ; 0E76 _ EB, 05

?_049:  mov     eax, 0                                  ; 0E78 _ B8, 00000000
?_050:  mov     dword [line.1788], eax                  ; 0E7D _ A3, 0000020C(d)
        mov     dword [pos.1787], 0                     ; 0E82 _ C7. 05, 00000210(d), 00000000
?_051:  nop                                             ; 0E8C _ 90
        leave                                           ; 0E8D _ C9
        ret                                             ; 0E8E _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0E8F _ 55
        mov     ebp, esp                                ; 0E90 _ 89. E5
        sub     esp, 24                                 ; 0E92 _ 83. EC, 18
        call    io_sti                                  ; 0E95 _ E8, FFFFFFFC(rel)
        mov     eax, dword [buf_back]                   ; 0E9A _ A1, 000000F8(d)
        mov     dword [ebp-0CH], eax                    ; 0E9F _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0EA2 _ C6. 45, F3, 00
        sub     esp, 12                                 ; 0EA6 _ 83. EC, 0C
        push    mouseInfo                               ; 0EA9 _ 68, 00000020(d)
        call    fifo8_get                               ; 0EAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EB3 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0EB6 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0EB9 _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0EBD _ 83. EC, 08
        push    eax                                     ; 0EC0 _ 50
        push    mouse_move                              ; 0EC1 _ 68, 000000E0(d)
        call    mouse_decode                            ; 0EC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ECB _ 83. C4, 10
        test    eax, eax                                ; 0ECE _ 85. C0
        jz      ?_052                                   ; 0ED0 _ 74, 2B
        sub     esp, 12                                 ; 0ED2 _ 83. EC, 0C
        push    mouse_move                              ; 0ED5 _ 68, 000000E0(d)
        call    computeMousePos                         ; 0EDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EDF _ 83. C4, 10
        mov     edx, dword [my]                         ; 0EE2 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0EE8 _ A1, 000000F0(d)
        push    edx                                     ; 0EED _ 52
        push    eax                                     ; 0EEE _ 50
        push    dword [ebp+0CH]                         ; 0EEF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EF2 _ FF. 75, 08
        call    sheet_slide                             ; 0EF5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EFA _ 83. C4, 10
?_052:  nop                                             ; 0EFD _ 90
        leave                                           ; 0EFE _ C9
        ret                                             ; 0EFF _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0F00 _ 55
        mov     ebp, esp                                ; 0F01 _ 89. E5
        sub     esp, 4                                  ; 0F03 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0F06 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0F09 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F0C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F0F _ 0F B6. 40, 03
        test    al, al                                  ; 0F13 _ 84. C0
        jnz     ?_054                                   ; 0F15 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0F17 _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0F1B _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0F1D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0F20 _ C6. 40, 03, 01
?_053:  mov     eax, 1                                  ; 0F24 _ B8, 00000001
        jmp     ?_061                                   ; 0F29 _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0F2E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F31 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0F35 _ 3C, 01
        jnz     ?_056                                   ; 0F37 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0F39 _ 0F B6. 45, FC
        or      eax, 37H                                ; 0F3D _ 83. C8, 37
        cmp     al, 63                                  ; 0F40 _ 3C, 3F
        jnz     ?_055                                   ; 0F42 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0F44 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F47 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0F4B _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0F4D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0F50 _ C6. 40, 03, 02
?_055:  mov     eax, 1                                  ; 0F54 _ B8, 00000001
        jmp     ?_061                                   ; 0F59 _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 0F5E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F61 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0F65 _ 3C, 02
        jnz     ?_057                                   ; 0F67 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0F69 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F6C _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0F70 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0F73 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0F76 _ C6. 40, 03, 03
        mov     eax, 1                                  ; 0F7A _ B8, 00000001
        jmp     ?_061                                   ; 0F7F _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 0F84 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F87 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0F8B _ 3C, 03
        jne     ?_060                                   ; 0F8D _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0F93 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F96 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0F9A _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0F9D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0FA0 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0FA4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FA7 _ 0F B6. 00
        movzx   eax, al                                 ; 0FAA _ 0F B6. C0
        and     eax, 07H                                ; 0FAD _ 83. E0, 07
        mov     edx, eax                                ; 0FB0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FB2 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0FB5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0FB8 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0FBB _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0FBF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0FC2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FC5 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FC8 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0FCB _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0FCF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0FD2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FD5 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0FD8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FDB _ 0F B6. 00
        movzx   eax, al                                 ; 0FDE _ 0F B6. C0
        and     eax, 10H                                ; 0FE1 _ 83. E0, 10
        test    eax, eax                                ; 0FE4 _ 85. C0
        jz      ?_058                                   ; 0FE6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0FE8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FEB _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0FEE _ 0D, FFFFFF00
        mov     edx, eax                                ; 0FF3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FF5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FF8 _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 0FFB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FFE _ 0F B6. 00
        movzx   eax, al                                 ; 1001 _ 0F B6. C0
        and     eax, 20H                                ; 1004 _ 83. E0, 20
        test    eax, eax                                ; 1007 _ 85. C0
        jz      ?_059                                   ; 1009 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 100B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 100E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1011 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1016 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1018 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 101B _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 101E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1021 _ 8B. 40, 08
        neg     eax                                     ; 1024 _ F7. D8
        mov     edx, eax                                ; 1026 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1028 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 102B _ 89. 50, 08
        mov     eax, 1                                  ; 102E _ B8, 00000001
        jmp     ?_061                                   ; 1033 _ EB, 05

?_060:  mov     eax, 0                                  ; 1035 _ B8, 00000000
?_061:  leave                                           ; 103A _ C9
        ret                                             ; 103B _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 103C _ 55
        mov     ebp, esp                                ; 103D _ 89. E5
        sub     esp, 24                                 ; 103F _ 83. EC, 18
        movzx   eax, word [?_129]                       ; 1042 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1049 _ 98
        mov     dword [ebp-10H], eax                    ; 104A _ 89. 45, F0
        movzx   eax, word [?_130]                       ; 104D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1054 _ 98
        mov     dword [ebp-0CH], eax                    ; 1055 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1058 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 105B _ 8B. 40, 04
        mov     edx, eax                                ; 105E _ 89. C2
        shr     edx, 31                                 ; 1060 _ C1. EA, 1F
        add     eax, edx                                ; 1063 _ 01. D0
        sar     eax, 1                                  ; 1065 _ D1. F8
        mov     edx, eax                                ; 1067 _ 89. C2
        mov     eax, dword [mx]                         ; 1069 _ A1, 000000F0(d)
        add     eax, edx                                ; 106E _ 01. D0
        mov     dword [mx], eax                         ; 1070 _ A3, 000000F0(d)
        mov     eax, dword [ebp+8H]                     ; 1075 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1078 _ 8B. 40, 08
        mov     edx, eax                                ; 107B _ 89. C2
        shr     edx, 31                                 ; 107D _ C1. EA, 1F
        add     eax, edx                                ; 1080 _ 01. D0
        sar     eax, 1                                  ; 1082 _ D1. F8
        mov     edx, eax                                ; 1084 _ 89. C2
        mov     eax, dword [my]                         ; 1086 _ A1, 000000F4(d)
        add     eax, edx                                ; 108B _ 01. D0
        mov     dword [my], eax                         ; 108D _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1092 _ A1, 000000F0(d)
        test    eax, eax                                ; 1097 _ 85. C0
        jns     ?_062                                   ; 1099 _ 79, 0A
        mov     dword [mx], 0                           ; 109B _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 10A5 _ A1, 000000F4(d)
        test    eax, eax                                ; 10AA _ 85. C0
        jns     ?_063                                   ; 10AC _ 79, 0A
        mov     dword [my], 0                           ; 10AE _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 10B8 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 10BB _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 10BE _ A1, 000000F0(d)
        cmp     edx, eax                                ; 10C3 _ 39. C2
        jge     ?_064                                   ; 10C5 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 10C7 _ 8B. 45, F0
        sub     eax, 9                                  ; 10CA _ 83. E8, 09
        mov     dword [mx], eax                         ; 10CD _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 10D2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 10D5 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 10D8 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 10DD _ 39. C2
        jge     ?_065                                   ; 10DF _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 10E1 _ 8B. 45, F4
        sub     eax, 1                                  ; 10E4 _ 83. E8, 01
        mov     dword [my], eax                         ; 10E7 _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 10EC _ A1, 000000F8(d)
        sub     esp, 8                                  ; 10F1 _ 83. EC, 08
        push    ?_120                                   ; 10F4 _ 68, 00000017(d)
        push    3                                       ; 10F9 _ 6A, 03
        push    0                                       ; 10FB _ 6A, 00
        push    0                                       ; 10FD _ 6A, 00
        push    dword [ebp-10H]                         ; 10FF _ FF. 75, F0
        push    eax                                     ; 1102 _ 50
        call    showString                              ; 1103 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1108 _ 83. C4, 20
        nop                                             ; 110B _ 90
        leave                                           ; 110C _ C9
        ret                                             ; 110D _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 110E _ 55
        mov     ebp, esp                                ; 110F _ 89. E5
        sub     esp, 56                                 ; 1111 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1114 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 111B _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1122 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1129 _ C7. 45, DC, 00000050
        push    100                                     ; 1130 _ 6A, 64
        push    dword [ebp+14H]                         ; 1132 _ FF. 75, 14
        push    0                                       ; 1135 _ 6A, 00
        push    0                                       ; 1137 _ 6A, 00
        push    14                                      ; 1139 _ 6A, 0E
        push    dword [ebp+14H]                         ; 113B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 113E _ FF. 75, 0C
        call    boxfill8                                ; 1141 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1146 _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 1149 _ 8B. 45, 18
        movsx   eax, al                                 ; 114C _ 0F BE. C0
        sub     esp, 8                                  ; 114F _ 83. EC, 08
        push    ?_121                                   ; 1152 _ 68, 00000022(d)
        push    eax                                     ; 1157 _ 50
        push    dword [ebp-2CH]                         ; 1158 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 115B _ FF. 75, D0
        push    dword [ebp+14H]                         ; 115E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1161 _ FF. 75, 0C
        call    showString                              ; 1164 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1169 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 116C _ 8B. 45, 10
        sub     esp, 12                                 ; 116F _ 83. EC, 0C
        push    eax                                     ; 1172 _ 50
        call    intToHexStr                             ; 1173 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1178 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 117B _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 117E _ 8B. 45, 18
        movsx   eax, al                                 ; 1181 _ 0F BE. C0
        sub     esp, 8                                  ; 1184 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1187 _ FF. 75, E0
        push    eax                                     ; 118A _ 50
        push    dword [ebp-2CH]                         ; 118B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 118E _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1191 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1194 _ FF. 75, 0C
        call    showString                              ; 1197 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 119C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 119F _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 11A3 _ 8B. 45, 18
        movsx   eax, al                                 ; 11A6 _ 0F BE. C0
        sub     esp, 8                                  ; 11A9 _ 83. EC, 08
        push    ?_122                                   ; 11AC _ 68, 0000002C(d)
        push    eax                                     ; 11B1 _ 50
        push    dword [ebp-2CH]                         ; 11B2 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 11B5 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 11B8 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11BB _ FF. 75, 0C
        call    showString                              ; 11BE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11C3 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 11C6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 11C9 _ 8B. 00
        sub     esp, 12                                 ; 11CB _ 83. EC, 0C
        push    eax                                     ; 11CE _ 50
        call    intToHexStr                             ; 11CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11D4 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 11D7 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 11DA _ 8B. 45, 18
        movsx   eax, al                                 ; 11DD _ 0F BE. C0
        sub     esp, 8                                  ; 11E0 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 11E3 _ FF. 75, E4
        push    eax                                     ; 11E6 _ 50
        push    dword [ebp-2CH]                         ; 11E7 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 11EA _ FF. 75, D8
        push    dword [ebp+14H]                         ; 11ED _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11F0 _ FF. 75, 0C
        call    showString                              ; 11F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11F8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 11FB _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 11FF _ 8B. 45, 18
        movsx   eax, al                                 ; 1202 _ 0F BE. C0
        sub     esp, 8                                  ; 1205 _ 83. EC, 08
        push    ?_123                                   ; 1208 _ 68, 0000003A(d)
        push    eax                                     ; 120D _ 50
        push    dword [ebp-2CH]                         ; 120E _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1211 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1214 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1217 _ FF. 75, 0C
        call    showString                              ; 121A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 121F _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1222 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1225 _ 8B. 40, 04
        sub     esp, 12                                 ; 1228 _ 83. EC, 0C
        push    eax                                     ; 122B _ 50
        call    intToHexStr                             ; 122C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1231 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1234 _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 1237 _ 8B. 45, 18
        movsx   eax, al                                 ; 123A _ 0F BE. C0
        sub     esp, 8                                  ; 123D _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1240 _ FF. 75, E8
        push    eax                                     ; 1243 _ 50
        push    dword [ebp-2CH]                         ; 1244 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1247 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 124A _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 124D _ FF. 75, 0C
        call    showString                              ; 1250 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1255 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1258 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 125C _ 8B. 45, 18
        movsx   eax, al                                 ; 125F _ 0F BE. C0
        sub     esp, 8                                  ; 1262 _ 83. EC, 08
        push    ?_124                                   ; 1265 _ 68, 00000049(d)
        push    eax                                     ; 126A _ 50
        push    dword [ebp-2CH]                         ; 126B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 126E _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1271 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1274 _ FF. 75, 0C
        call    showString                              ; 1277 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 127C _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 127F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1282 _ 8B. 40, 08
        sub     esp, 12                                 ; 1285 _ 83. EC, 0C
        push    eax                                     ; 1288 _ 50
        call    intToHexStr                             ; 1289 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 128E _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1291 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1294 _ 8B. 45, 18
        movsx   eax, al                                 ; 1297 _ 0F BE. C0
        sub     esp, 8                                  ; 129A _ 83. EC, 08
        push    dword [ebp-14H]                         ; 129D _ FF. 75, EC
        push    eax                                     ; 12A0 _ 50
        push    dword [ebp-2CH]                         ; 12A1 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12A4 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 12A7 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12AA _ FF. 75, 0C
        call    showString                              ; 12AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12B2 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12B5 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 12B9 _ 8B. 45, 18
        movsx   eax, al                                 ; 12BC _ 0F BE. C0
        sub     esp, 8                                  ; 12BF _ 83. EC, 08
        push    ?_125                                   ; 12C2 _ 68, 00000055(d)
        push    eax                                     ; 12C7 _ 50
        push    dword [ebp-2CH]                         ; 12C8 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12CB _ FF. 75, D0
        push    dword [ebp+14H]                         ; 12CE _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12D1 _ FF. 75, 0C
        call    showString                              ; 12D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12D9 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 12DC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 12DF _ 8B. 40, 0C
        sub     esp, 12                                 ; 12E2 _ 83. EC, 0C
        push    eax                                     ; 12E5 _ 50
        call    intToHexStr                             ; 12E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12EB _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 12EE _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 12F1 _ 8B. 45, 18
        movsx   eax, al                                 ; 12F4 _ 0F BE. C0
        sub     esp, 8                                  ; 12F7 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 12FA _ FF. 75, F0
        push    eax                                     ; 12FD _ 50
        push    dword [ebp-2CH]                         ; 12FE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1301 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1304 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1307 _ FF. 75, 0C
        call    showString                              ; 130A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 130F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1312 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1316 _ 8B. 45, 18
        movsx   eax, al                                 ; 1319 _ 0F BE. C0
        sub     esp, 8                                  ; 131C _ 83. EC, 08
        push    ?_126                                   ; 131F _ 68, 00000062(d)
        push    eax                                     ; 1324 _ 50
        push    dword [ebp-2CH]                         ; 1325 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1328 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 132B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 132E _ FF. 75, 0C
        call    showString                              ; 1331 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1336 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1339 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 133C _ 8B. 40, 10
        sub     esp, 12                                 ; 133F _ 83. EC, 0C
        push    eax                                     ; 1342 _ 50
        call    intToHexStr                             ; 1343 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1348 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 134B _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 134E _ 8B. 45, 18
        movsx   eax, al                                 ; 1351 _ 0F BE. C0
        sub     esp, 8                                  ; 1354 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1357 _ FF. 75, F4
        push    eax                                     ; 135A _ 50
        push    dword [ebp-2CH]                         ; 135B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 135E _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1361 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1364 _ FF. 75, 0C
        call    showString                              ; 1367 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 136C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 136F _ 83. 45, D4, 10
        nop                                             ; 1373 _ 90
        leave                                           ; 1374 _ C9
        ret                                             ; 1375 _ C3
; showMemInfo End of function

memman_init:; Function begin
        push    ebp                                     ; 1376 _ 55
        mov     ebp, esp                                ; 1377 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1379 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 137C _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1382 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1385 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 138C _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 138F _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1396 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1399 _ C7. 40, 0C, 00000000
        nop                                             ; 13A0 _ 90
        pop     ebp                                     ; 13A1 _ 5D
        ret                                             ; 13A2 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 13A3 _ 55
        mov     ebp, esp                                ; 13A4 _ 89. E5
        sub     esp, 16                                 ; 13A6 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 13A9 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 13B0 _ C7. 45, FC, 00000000
        jmp     ?_067                                   ; 13B7 _ EB, 14

?_066:  mov     eax, dword [ebp+8H]                     ; 13B9 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 13BC _ 8B. 55, FC
        add     edx, 2                                  ; 13BF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 13C2 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 13C6 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 13C9 _ 83. 45, FC, 01
?_067:  mov     eax, dword [ebp+8H]                     ; 13CD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13D0 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 13D2 _ 39. 45, FC
        jl      ?_066                                   ; 13D5 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 13D7 _ 8B. 45, F8
        leave                                           ; 13DA _ C9
        ret                                             ; 13DB _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 13DC _ 55
        mov     ebp, esp                                ; 13DD _ 89. E5
        sub     esp, 16                                 ; 13DF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 13E2 _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 13E9 _ C7. 45, F8, 00000000
        jmp     ?_071                                   ; 13F0 _ EB, 67

?_068:  mov     eax, dword [ebp+8H]                     ; 13F2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 13F5 _ 8B. 55, F8
        add     edx, 2                                  ; 13F8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 13FB _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 13FF _ 39. 45, 0C
        ja      ?_070                                   ; 1402 _ 77, 51
        mov     eax, dword [ebp+8H]                     ; 1404 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1407 _ 8B. 55, F8
        add     edx, 2                                  ; 140A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 140D _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1410 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1413 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1416 _ 8B. 55, F8
        add     edx, 2                                  ; 1419 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 141C _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1420 _ 2B. 45, 0C
        mov     edx, eax                                ; 1423 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1425 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1428 _ 8B. 4D, F8
        add     ecx, 2                                  ; 142B _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 142E _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1432 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1435 _ 8B. 55, F8
        add     edx, 2                                  ; 1438 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 143B _ 8B. 44 D0, 04
        test    eax, eax                                ; 143F _ 85. C0
        jnz     ?_069                                   ; 1441 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1443 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1446 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1448 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 144B _ 8B. 45, 08
        mov     dword [eax], edx                        ; 144E _ 89. 10
?_069:  mov     eax, dword [ebp-4H]                     ; 1450 _ 8B. 45, FC
        jmp     ?_072                                   ; 1453 _ EB, 13

?_070:  add     dword [ebp-8H], 1                       ; 1455 _ 83. 45, F8, 01
?_071:  mov     eax, dword [ebp+8H]                     ; 1459 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 145C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 145E _ 39. 45, F8
        jl      ?_068                                   ; 1461 _ 7C, 8F
        mov     eax, 0                                  ; 1463 _ B8, 00000000
?_072:  leave                                           ; 1468 _ C9
        ret                                             ; 1469 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 146A _ 55
        mov     ebp, esp                                ; 146B _ 89. E5
        sub     esp, 16                                 ; 146D _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1470 _ 8B. 45, 0C
        add     eax, 4095                               ; 1473 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1478 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 147D _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1480 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1483 _ FF. 75, 08
        call    memman_alloc_FF                         ; 1486 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 148B _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 148E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1491 _ 8B. 45, FC
        leave                                           ; 1494 _ C9
        ret                                             ; 1495 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1496 _ 55
        mov     ebp, esp                                ; 1497 _ 89. E5
        push    ebx                                     ; 1499 _ 53
        sub     esp, 16                                 ; 149A _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 149D _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 14A4 _ EB, 15

?_073:  mov     eax, dword [ebp+8H]                     ; 14A6 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 14A9 _ 8B. 55, F4
        add     edx, 2                                  ; 14AC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 14AF _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 14B2 _ 39. 45, 0C
        jc      ?_075                                   ; 14B5 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 14B7 _ 83. 45, F4, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 14BB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 14BE _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 14C0 _ 39. 45, F4
        jl      ?_073                                   ; 14C3 _ 7C, E1
        jmp     ?_076                                   ; 14C5 _ EB, 01

?_075:  nop                                             ; 14C7 _ 90
?_076:  cmp     dword [ebp-0CH], 0                      ; 14C8 _ 83. 7D, F4, 00
        jle     ?_078                                   ; 14CC _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 14D2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 14D5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 14D8 _ 8B. 45, 08
        add     edx, 2                                  ; 14DB _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 14DE _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 14E1 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 14E4 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 14E7 _ 8B. 45, 08
        add     ecx, 2                                  ; 14EA _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 14ED _ 8B. 44 C8, 04
        add     eax, edx                                ; 14F1 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 14F3 _ 39. 45, 0C
        jne     ?_078                                   ; 14F6 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 14FC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 14FF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1502 _ 8B. 45, 08
        add     edx, 2                                  ; 1505 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1508 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 150C _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 150F _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 1512 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1515 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1518 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 151B _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 151E _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1522 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1525 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1527 _ 39. 45, F4
        jge     ?_077                                   ; 152A _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 152C _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 152F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1532 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1535 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1538 _ 8B. 55, F4
        add     edx, 2                                  ; 153B _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 153E _ 8B. 04 D0
        cmp     ecx, eax                                ; 1541 _ 39. C1
        jnz     ?_077                                   ; 1543 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 1545 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1548 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 154B _ 8B. 45, 08
        add     edx, 2                                  ; 154E _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1551 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1555 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1558 _ 8B. 4D, F4
        add     ecx, 2                                  ; 155B _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 155E _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1562 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1565 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1568 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 156B _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 156E _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1571 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1575 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1578 _ 8B. 00
        lea     edx, [eax-1H]                           ; 157A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 157D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1580 _ 89. 10
?_077:  mov     eax, 0                                  ; 1582 _ B8, 00000000
        jmp     ?_084                                   ; 1587 _ E9, 0000011C

?_078:  mov     eax, dword [ebp+8H]                     ; 158C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 158F _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1591 _ 39. 45, F4
        jge     ?_079                                   ; 1594 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1596 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1599 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 159C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 159F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 15A2 _ 8B. 55, F4
        add     edx, 2                                  ; 15A5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 15A8 _ 8B. 04 D0
        cmp     ecx, eax                                ; 15AB _ 39. C1
        jnz     ?_079                                   ; 15AD _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 15AF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 15B2 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 15B5 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 15B8 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 15BB _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 15BE _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 15C1 _ 8B. 55, F4
        add     edx, 2                                  ; 15C4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 15C7 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 15CB _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 15CE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 15D1 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 15D4 _ 8B. 55, F4
        add     edx, 2                                  ; 15D7 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 15DA _ 89. 4C D0, 04
        mov     eax, 0                                  ; 15DE _ B8, 00000000
        jmp     ?_084                                   ; 15E3 _ E9, 000000C0

?_079:  mov     eax, dword [ebp+8H]                     ; 15E8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15EB _ 8B. 00
        cmp     eax, 4095                               ; 15ED _ 3D, 00000FFF
        jg      ?_083                                   ; 15F2 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 15F8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15FB _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 15FD _ 89. 45, F8
        jmp     ?_081                                   ; 1600 _ EB, 28

?_080:  mov     eax, dword [ebp-8H]                     ; 1602 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1605 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1608 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 160B _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 160E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 1611 _ 8B. 45, 08
        add     edx, 2                                  ; 1614 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1617 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 161A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 161C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 161F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 1622 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 1626 _ 83. 6D, F8, 01
?_081:  mov     eax, dword [ebp-8H]                     ; 162A _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 162D _ 3B. 45, F4
        jg      ?_080                                   ; 1630 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1632 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1635 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1637 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 163A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 163D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 163F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1642 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1645 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1648 _ 8B. 00
        cmp     edx, eax                                ; 164A _ 39. C2
        jge     ?_082                                   ; 164C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 164E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1651 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1653 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1656 _ 89. 50, 04
?_082:  mov     eax, dword [ebp+8H]                     ; 1659 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 165C _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 165F _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1662 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1665 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1668 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 166B _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 166E _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1671 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1674 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1678 _ B8, 00000000
        jmp     ?_084                                   ; 167D _ EB, 29

?_083:  mov     eax, dword [ebp+8H]                     ; 167F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1682 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1685 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1688 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 168B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 168E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1691 _ 8B. 40, 08
        mov     edx, eax                                ; 1694 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1696 _ 8B. 45, 10
        add     eax, edx                                ; 1699 _ 01. D0
        mov     edx, eax                                ; 169B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 169D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 16A0 _ 89. 50, 08
        mov     eax, 4294967295                         ; 16A3 _ B8, FFFFFFFF
?_084:  add     esp, 16                                 ; 16A8 _ 83. C4, 10
        pop     ebx                                     ; 16AB _ 5B
        pop     ebp                                     ; 16AC _ 5D
        ret                                             ; 16AD _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 16AE _ 55
        mov     ebp, esp                                ; 16AF _ 89. E5
        sub     esp, 16                                 ; 16B1 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 16B4 _ 8B. 45, 10
        add     eax, 4095                               ; 16B7 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 16BC _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 16C1 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 16C4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 16C7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16CA _ FF. 75, 08
        call    memman_free                             ; 16CD _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 16D2 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 16D5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 16D8 _ 8B. 45, FC
        leave                                           ; 16DB _ C9
        ret                                             ; 16DC _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 16DD _ 55
        mov     ebp, esp                                ; 16DE _ 89. E5
        sub     esp, 24                                 ; 16E0 _ 83. EC, 18
        sub     esp, 8                                  ; 16E3 _ 83. EC, 08
        push    9232                                    ; 16E6 _ 68, 00002410
        push    dword [ebp+8H]                          ; 16EB _ FF. 75, 08
        call    memman_alloc_4K                         ; 16EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16F3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 16F6 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 16F9 _ 83. 7D, F4, 00
        jnz     ?_085                                   ; 16FD _ 75, 07
        mov     eax, 0                                  ; 16FF _ B8, 00000000
        jmp     ?_088                                   ; 1704 _ EB, 54

?_085:  mov     eax, dword [ebp-0CH]                    ; 1706 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1709 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 170C _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 170E _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1711 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1714 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1717 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 171A _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 171D _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1720 _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 1723 _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 172A _ C7. 45, F0, 00000000
        jmp     ?_087                                   ; 1731 _ EB, 1B

?_086:  mov     eax, dword [ebp-0CH]                    ; 1733 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1736 _ 8B. 55, F0
        add     edx, 33                                 ; 1739 _ 83. C2, 21
        shl     edx, 5                                  ; 173C _ C1. E2, 05
        add     eax, edx                                ; 173F _ 01. D0
        add     eax, 12                                 ; 1741 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 1744 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 174A _ 83. 45, F0, 01
?_087:  cmp     dword [ebp-10H], 255                    ; 174E _ 81. 7D, F0, 000000FF
        jle     ?_086                                   ; 1755 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1757 _ 8B. 45, F4
?_088:  leave                                           ; 175A _ C9
        ret                                             ; 175B _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 175C _ 55
        mov     ebp, esp                                ; 175D _ 89. E5
        sub     esp, 16                                 ; 175F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1762 _ C7. 45, F8, 00000000
        jmp     ?_091                                   ; 1769 _ EB, 48

?_089:  mov     eax, dword [ebp+8H]                     ; 176B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 176E _ 8B. 55, F8
        add     edx, 33                                 ; 1771 _ 83. C2, 21
        shl     edx, 5                                  ; 1774 _ C1. E2, 05
        add     eax, edx                                ; 1777 _ 01. D0
        add     eax, 12                                 ; 1779 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 177C _ 8B. 00
        test    eax, eax                                ; 177E _ 85. C0
        jnz     ?_090                                   ; 1780 _ 75, 2D
        mov     eax, dword [ebp-8H]                     ; 1782 _ 8B. 45, F8
        shl     eax, 5                                  ; 1785 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1788 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 178E _ 8B. 45, 08
        add     eax, edx                                ; 1791 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1793 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1796 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1799 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 17A0 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 17A3 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 17AA _ 8B. 45, FC
        jmp     ?_092                                   ; 17AD _ EB, 12

?_090:  add     dword [ebp-8H], 1                       ; 17AF _ 83. 45, F8, 01
?_091:  cmp     dword [ebp-8H], 255                     ; 17B3 _ 81. 7D, F8, 000000FF
        jle     ?_089                                   ; 17BA _ 7E, AF
        mov     eax, 0                                  ; 17BC _ B8, 00000000
?_092:  leave                                           ; 17C1 _ C9
        ret                                             ; 17C2 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 17C3 _ 55
        mov     ebp, esp                                ; 17C4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 17C6 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 17C9 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 17CC _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 17CE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 17D1 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 17D4 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17D7 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 17DA _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 17DD _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 17E0 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 17E3 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 17E6 _ 89. 50, 14
        nop                                             ; 17E9 _ 90
        pop     ebp                                     ; 17EA _ 5D
        ret                                             ; 17EB _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 17EC _ 55
        mov     ebp, esp                                ; 17ED _ 89. E5
        sub     esp, 40                                 ; 17EF _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 17F2 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 17F5 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 17F8 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 17FB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 17FE _ 8B. 40, 0C
        add     eax, 1                                  ; 1801 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1804 _ 39. 45, 10
        jle     ?_093                                   ; 1807 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1809 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 180C _ 8B. 40, 0C
        add     eax, 1                                  ; 180F _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1812 _ 89. 45, 10
?_093:  cmp     dword [ebp+10H], -1                     ; 1815 _ 83. 7D, 10, FF
        jge     ?_094                                   ; 1819 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 181B _ C7. 45, 10, FFFFFFFF
?_094:  mov     eax, dword [ebp+0CH]                    ; 1822 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1825 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1828 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 182B _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 182E _ 3B. 45, 10
        jle     ?_102                                   ; 1831 _ 0F 8E, 000000C9
        cmp     dword [ebp+10H], 0                      ; 1837 _ 83. 7D, 10, 00
        js      ?_097                                   ; 183B _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 183D _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1840 _ 89. 45, E4
        jmp     ?_096                                   ; 1843 _ EB, 31

?_095:  mov     eax, dword [ebp-1CH]                    ; 1845 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1848 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 184B _ 8B. 45, 08
        add     edx, 4                                  ; 184E _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1851 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1854 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1857 _ 8B. 4D, E4
        add     ecx, 4                                  ; 185A _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 185D _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1860 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1863 _ 8B. 55, E4
        add     edx, 4                                  ; 1866 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1869 _ 8B. 04 90
        mov     edx, dword [ebp-1CH]                    ; 186C _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 186F _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1872 _ 83. 6D, E4, 01
?_096:  mov     eax, dword [ebp-1CH]                    ; 1876 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1879 _ 3B. 45, 10
        jg      ?_095                                   ; 187C _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 187E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1881 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1884 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1887 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 188A _ 89. 14 88
        jmp     ?_101                                   ; 188D _ EB, 5E

?_097:  mov     eax, dword [ebp+8H]                     ; 188F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1892 _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 1895 _ 39. 45, F4
        jge     ?_100                                   ; 1898 _ 7D, 44
        mov     eax, dword [ebp-0CH]                    ; 189A _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 189D _ 89. 45, E8
        jmp     ?_099                                   ; 18A0 _ EB, 31

?_098:  mov     eax, dword [ebp-18H]                    ; 18A2 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 18A5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 18A8 _ 8B. 45, 08
        add     edx, 4                                  ; 18AB _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 18AE _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 18B1 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 18B4 _ 8B. 4D, E8
        add     ecx, 4                                  ; 18B7 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 18BA _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 18BD _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 18C0 _ 8B. 55, E8
        add     edx, 4                                  ; 18C3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 18C6 _ 8B. 04 90
        mov     edx, dword [ebp-18H]                    ; 18C9 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 18CC _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 18CF _ 83. 45, E8, 01
?_099:  mov     eax, dword [ebp+8H]                     ; 18D3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18D6 _ 8B. 40, 0C
        cmp     dword [ebp-18H], eax                    ; 18D9 _ 39. 45, E8
        jl      ?_098                                   ; 18DC _ 7C, C4
?_100:  mov     eax, dword [ebp+8H]                     ; 18DE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18E1 _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 18E4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 18E7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 18EA _ 89. 50, 0C
?_101:  sub     esp, 12                                 ; 18ED _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 18F0 _ FF. 75, 08
        call    sheet_refresh                           ; 18F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18F8 _ 83. C4, 10
        jmp     ?_109                                   ; 18FB _ E9, 000000E0

?_102:  mov     eax, dword [ebp-0CH]                    ; 1900 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1903 _ 3B. 45, 10
        jge     ?_109                                   ; 1906 _ 0F 8D, 000000D4
        cmp     dword [ebp-0CH], 0                      ; 190C _ 83. 7D, F4, 00
        js      ?_105                                   ; 1910 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1912 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1915 _ 89. 45, EC
        jmp     ?_104                                   ; 1918 _ EB, 31

?_103:  mov     eax, dword [ebp-14H]                    ; 191A _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 191D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1920 _ 8B. 45, 08
        add     edx, 4                                  ; 1923 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1926 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1929 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 192C _ 8B. 4D, EC
        add     ecx, 4                                  ; 192F _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1932 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1935 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1938 _ 8B. 55, EC
        add     edx, 4                                  ; 193B _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 193E _ 8B. 04 90
        mov     edx, dword [ebp-14H]                    ; 1941 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1944 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1947 _ 83. 45, EC, 01
?_104:  mov     eax, dword [ebp-14H]                    ; 194B _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 194E _ 3B. 45, 10
        jl      ?_103                                   ; 1951 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1953 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1956 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1959 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 195C _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 195F _ 89. 14 88
        jmp     ?_108                                   ; 1962 _ EB, 6E

?_105:  cmp     dword [ebp-0CH], 0                      ; 1964 _ 83. 7D, F4, 00
        jns     ?_108                                   ; 1968 _ 79, 68
        mov     eax, dword [ebp+8H]                     ; 196A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 196D _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1970 _ 89. 45, F0
        jmp     ?_107                                   ; 1973 _ EB, 37

?_106:  mov     eax, dword [ebp-10H]                    ; 1975 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1978 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 197B _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 197E _ 8B. 55, F0
        add     edx, 4                                  ; 1981 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1984 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1987 _ 8B. 45, 08
        add     ecx, 4                                  ; 198A _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 198D _ 89. 14 88
        mov     eax, dword [ebp-10H]                    ; 1990 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1993 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1996 _ 8B. 45, 08
        add     edx, 4                                  ; 1999 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 199C _ 8B. 04 90
        mov     edx, dword [ebp-10H]                    ; 199F _ 8B. 55, F0
        add     edx, 1                                  ; 19A2 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 19A5 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 19A8 _ 83. 6D, F0, 01
?_107:  mov     eax, dword [ebp-10H]                    ; 19AC _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 19AF _ 3B. 45, 10
        jge     ?_106                                   ; 19B2 _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 19B4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 19B7 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 19BA _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 19BD _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 19C0 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 19C3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 19C6 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 19C9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 19CC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 19CF _ 89. 50, 0C
?_108:  sub     esp, 12                                 ; 19D2 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 19D5 _ FF. 75, 08
        call    sheet_refresh                           ; 19D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19DD _ 83. C4, 10
?_109:  nop                                             ; 19E0 _ 90
        leave                                           ; 19E1 _ C9
        ret                                             ; 19E2 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 19E3 _ 55
        mov     ebp, esp                                ; 19E4 _ 89. E5
        sub     esp, 48                                 ; 19E6 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 19E9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19EC _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 19EE _ 89. 45, EC
        mov     dword [ebp-20H], 0                      ; 19F1 _ C7. 45, E0, 00000000
        jmp     ?_116                                   ; 19F8 _ E9, 000000B8

?_110:  mov     eax, dword [ebp+8H]                     ; 19FD _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 1A00 _ 8B. 55, E0
        add     edx, 4                                  ; 1A03 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1A06 _ 8B. 04 90
        mov     dword [ebp-10H], eax                    ; 1A09 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1A0C _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 1A0F _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1A11 _ 89. 45, F4
        mov     dword [ebp-1CH], 0                      ; 1A14 _ C7. 45, E4, 00000000
        jmp     ?_115                                   ; 1A1B _ E9, 00000082

?_111:  mov     eax, dword [ebp-10H]                    ; 1A20 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 1A23 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 1A26 _ 8B. 45, E4
        add     eax, edx                                ; 1A29 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1A2B _ 89. 45, F8
        mov     dword [ebp-18H], 0                      ; 1A2E _ C7. 45, E8, 00000000
        jmp     ?_114                                   ; 1A35 _ EB, 5C

?_112:  mov     eax, dword [ebp-10H]                    ; 1A37 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 1A3A _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 1A3D _ 8B. 45, E8
        add     eax, edx                                ; 1A40 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1A42 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 1A45 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1A48 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1A4B _ 0F AF. 45, E4
        mov     edx, eax                                ; 1A4F _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1A51 _ 8B. 45, E8
        add     eax, edx                                ; 1A54 _ 01. D0
        mov     edx, eax                                ; 1A56 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1A58 _ 8B. 45, F4
        add     eax, edx                                ; 1A5B _ 01. D0
        movzx   eax, byte [eax]                         ; 1A5D _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1A60 _ 88. 45, DF
        movzx   edx, byte [ebp-21H]                     ; 1A63 _ 0F B6. 55, DF
        mov     eax, dword [ebp-10H]                    ; 1A67 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 1A6A _ 8B. 40, 14
        cmp     edx, eax                                ; 1A6D _ 39. C2
        jz      ?_113                                   ; 1A6F _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 1A71 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1A74 _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 1A77 _ 0F AF. 45, F8
        mov     edx, eax                                ; 1A7B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1A7D _ 8B. 45, FC
        add     eax, edx                                ; 1A80 _ 01. D0
        mov     edx, eax                                ; 1A82 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1A84 _ 8B. 45, EC
        add     edx, eax                                ; 1A87 _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1A89 _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1A8D _ 88. 02
?_113:  add     dword [ebp-18H], 1                      ; 1A8F _ 83. 45, E8, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 1A93 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1A96 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 1A99 _ 39. 45, E8
        jl      ?_112                                   ; 1A9C _ 7C, 99
        add     dword [ebp-1CH], 1                      ; 1A9E _ 83. 45, E4, 01
?_115:  mov     eax, dword [ebp-10H]                    ; 1AA2 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 1AA5 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 1AA8 _ 39. 45, E4
        jl      ?_111                                   ; 1AAB _ 0F 8C, FFFFFF6F
        add     dword [ebp-20H], 1                      ; 1AB1 _ 83. 45, E0, 01
?_116:  mov     eax, dword [ebp+8H]                     ; 1AB5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1AB8 _ 8B. 40, 0C
        cmp     dword [ebp-20H], eax                    ; 1ABB _ 39. 45, E0
        jl      ?_110                                   ; 1ABE _ 0F 8C, FFFFFF39
        nop                                             ; 1AC4 _ 90
        leave                                           ; 1AC5 _ C9
        ret                                             ; 1AC6 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1AC7 _ 55
        mov     ebp, esp                                ; 1AC8 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 1ACA _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1ACD _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1AD0 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1AD3 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1AD6 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1AD9 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1ADC _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1ADF _ 8B. 40, 18
        test    eax, eax                                ; 1AE2 _ 85. C0
        js      ?_117                                   ; 1AE4 _ 78, 0B
        push    dword [ebp+8H]                          ; 1AE6 _ FF. 75, 08
        call    sheet_refresh                           ; 1AE9 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1AEE _ 83. C4, 04
?_117:  nop                                             ; 1AF1 _ 90
        leave                                           ; 1AF2 _ C9
        ret                                             ; 1AF3 _ C3
; sheet_slide End of function



?_118:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_119:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_120:                                                  ; byte
        db 6DH, 6FH, 75H, 73H, 65H, 20H, 6DH, 6FH       ; 0017 _ mouse mo
        db 76H, 65H, 00H                                ; 001F _ ve.

?_121:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0022 _ Page is:
        db 20H, 00H                                     ; 002A _  .

?_122:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002C _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0034 _ Low: .

?_123:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003A _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0042 _ High: .

?_124:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0049 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0051 _ w: .

?_125:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0055 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 005D _ gh: .

?_126:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0062 _ Type: .



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_127:  db 00H                                          ; 0012 _ .

?_128:  db 00H, 00H, 00H, 00H, 00H                      ; 0013 _ .....

memman: dd 00100000H, 00000000H                         ; 0018 _ 1048576 0 

table_rgb.1653:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1698:                                            ; byte
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0060 _ **......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0068 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0070 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0078 _ ........
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0080 _ *OO*....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0090 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 00A0 _ *OOOO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 00B0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 00C0 _ *OOOOOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH       ; 00E0 _ *OOOOO**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 00F0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ ........
        db 2AH, 4FH, 2AH, 2AH, 4FH, 4FH, 2AH, 2EH       ; 0100 _ *O**OO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ ........
        db 2AH, 2AH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0110 _ **..*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0118 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0120 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0128 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0130 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0138 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0140 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0148 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH       ; 0150 _ ......**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0158 _ ........



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_129:  resw    1                                       ; 0004

?_130:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

mouseInfo:                                              ; byte
        resb    32                                      ; 0020

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    16                                      ; 00E0

mx:     resd    1                                       ; 00F0

my:     resd    1                                       ; 00F4

buf_back: resd  2                                       ; 00F8

buf_mouse:                                              ; byte
        resb    256                                     ; 0100

str.1741:                                               ; byte
        resb    1                                       ; 0200

?_131:  resb    9                                       ; 0201

?_132:  resb    2                                       ; 020A

line.1788:                                              ; dword
        resd    1                                       ; 020C

pos.1787: resd  1                                       ; 0210


