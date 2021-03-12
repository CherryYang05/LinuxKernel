; Disassembly of file: ckernel.o
; Sat Mar 13 01:19:34 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-38H], eax                    ; 001C _ 89. 45, C8
        movzx   eax, word [?_130]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-34H], eax                    ; 0027 _ 89. 45, CC
        movzx   eax, word [?_131]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-30H], eax                    ; 0032 _ 89. 45, D0
        mov     dword [ebp-2CH], 0                      ; 0035 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 0                      ; 003C _ C7. 45, D8, 00000000
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
        mov     dword [ebp-24H], eax                    ; 0083 _ 89. 45, DC
        call    get_memory_block_count                  ; 0086 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-20H], eax                    ; 008B _ 89. 45, E0
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
        mov     dword [ebp-1CH], eax                    ; 00CE _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 00D1 _ 8B. 45, E4
        sub     esp, 12                                 ; 00D4 _ 83. EC, 0C
        push    eax                                     ; 00D7 _ 50
        call    intToHexStr                             ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 00E0 _ 89. 45, E8
        sub     esp, 8                                  ; 00E3 _ 83. EC, 08
        push    ?_118                                   ; 00E6 _ 68, 00000000(d)
        push    3                                       ; 00EB _ 6A, 03
        push    0                                       ; 00ED _ 6A, 00
        push    0                                       ; 00EF _ 6A, 00
        push    dword [ebp-34H]                         ; 00F1 _ FF. 75, CC
        push    dword [ebp-38H]                         ; 00F4 _ FF. 75, C8
        call    showString                              ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FC _ 83. C4, 20
        sub     esp, 8                                  ; 00FF _ 83. EC, 08
        push    dword [ebp-18H]                         ; 0102 _ FF. 75, E8
        push    3                                       ; 0105 _ 6A, 03
        push    0                                       ; 0107 _ 6A, 00
        push    152                                     ; 0109 _ 68, 00000098
        push    dword [ebp-34H]                         ; 010E _ FF. 75, CC
        push    dword [ebp-38H]                         ; 0111 _ FF. 75, C8
        call    showString                              ; 0114 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0119 _ 83. C4, 20
        sub     esp, 8                                  ; 011C _ 83. EC, 08
        push    ?_119                                   ; 011F _ 68, 00000014(d)
        push    3                                       ; 0124 _ 6A, 03
        push    0                                       ; 0126 _ 6A, 00
        push    240                                     ; 0128 _ 68, 000000F0
        push    dword [ebp-34H]                         ; 012D _ FF. 75, CC
        push    dword [ebp-38H]                         ; 0130 _ FF. 75, C8
        call    showString                              ; 0133 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0138 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 013B _ A1, 00000018(d)
        push    dword [ebp-30H]                         ; 0140 _ FF. 75, D0
        push    dword [ebp-34H]                         ; 0143 _ FF. 75, CC
        push    dword [ebp-38H]                         ; 0146 _ FF. 75, C8
        push    eax                                     ; 0149 _ 50
        call    shtctl_init                             ; 014A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 014F _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0152 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 0155 _ 8B. 45, EC
        mov     eax, dword [eax+0CH]                    ; 0158 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 015B _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 015E _ 8B. 45, F0
        sub     esp, 12                                 ; 0161 _ 83. EC, 0C
        push    eax                                     ; 0164 _ 50
        call    intToHexStr                             ; 0165 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 016A _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 016D _ 89. 45, F4
        sub     esp, 12                                 ; 0170 _ 83. EC, 0C
        push    dword [ebp-14H]                         ; 0173 _ FF. 75, EC
        call    sheet_alloc                             ; 0176 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 017B _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 017E _ 89. 45, D4
        sub     esp, 12                                 ; 0181 _ 83. EC, 0C
        push    dword [ebp-14H]                         ; 0184 _ FF. 75, EC
        call    sheet_alloc                             ; 0187 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 018C _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 018F _ 89. 45, D8
        mov     eax, dword [ebp-34H]                    ; 0192 _ 8B. 45, CC
        imul    eax, dword [ebp-30H]                    ; 0195 _ 0F AF. 45, D0
        mov     edx, eax                                ; 0199 _ 89. C2
        mov     eax, dword [memman]                     ; 019B _ A1, 00000018(d)
        sub     esp, 8                                  ; 01A0 _ 83. EC, 08
        push    edx                                     ; 01A3 _ 52
        push    eax                                     ; 01A4 _ 50
        call    memman_alloc_4K                         ; 01A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01AA _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 01AD _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 01B2 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 01B7 _ 83. EC, 04
        push    dword [ebp-30H]                         ; 01BA _ FF. 75, D0
        push    dword [ebp-34H]                         ; 01BD _ FF. 75, CC
        push    eax                                     ; 01C0 _ 50
        call    init_screen8                            ; 01C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01C6 _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 01C9 _ A1, 000000F8(d)
        sub     esp, 12                                 ; 01CE _ 83. EC, 0C
        push    99                                      ; 01D1 _ 6A, 63
        push    dword [ebp-30H]                         ; 01D3 _ FF. 75, D0
        push    dword [ebp-34H]                         ; 01D6 _ FF. 75, CC
        push    eax                                     ; 01D9 _ 50
        push    dword [ebp-2CH]                         ; 01DA _ FF. 75, D4
        call    sheet_setbuf                            ; 01DD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E2 _ 83. C4, 20
        sub     esp, 12                                 ; 01E5 _ 83. EC, 0C
        push    99                                      ; 01E8 _ 6A, 63
        push    16                                      ; 01EA _ 6A, 10
        push    16                                      ; 01EC _ 6A, 10
        push    buf_mouse                               ; 01EE _ 68, 00000100(d)
        push    dword [ebp-28H]                         ; 01F3 _ FF. 75, D8
        call    sheet_setbuf                            ; 01F6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01FB _ 83. C4, 20
        sub     esp, 8                                  ; 01FE _ 83. EC, 08
        push    99                                      ; 0201 _ 6A, 63
        push    buf_mouse                               ; 0203 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 0208 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 020D _ 83. C4, 10
        movzx   eax, word [?_130]                       ; 0210 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0217 _ 98
        sub     esp, 8                                  ; 0218 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 021B _ FF. 75, F4
        push    2                                       ; 021E _ 6A, 02
        push    16                                      ; 0220 _ 6A, 10
        push    0                                       ; 0222 _ 6A, 00
        push    eax                                     ; 0224 _ 50
        push    dword [ebp-38H]                         ; 0225 _ FF. 75, C8
        call    showString                              ; 0228 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 022D _ 83. C4, 20
        push    0                                       ; 0230 _ 6A, 00
        push    0                                       ; 0232 _ 6A, 00
        push    dword [ebp-2CH]                         ; 0234 _ FF. 75, D4
        push    dword [ebp-14H]                         ; 0237 _ FF. 75, EC
        call    sheet_slide                             ; 023A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 023F _ 83. C4, 10
        mov     eax, dword [ebp-34H]                    ; 0242 _ 8B. 45, CC
        sub     eax, 16                                 ; 0245 _ 83. E8, 10
        mov     edx, eax                                ; 0248 _ 89. C2
        shr     edx, 31                                 ; 024A _ C1. EA, 1F
        add     eax, edx                                ; 024D _ 01. D0
        sar     eax, 1                                  ; 024F _ D1. F8
        mov     dword [mx], eax                         ; 0251 _ A3, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 0256 _ 8B. 45, D0
        sub     eax, 44                                 ; 0259 _ 83. E8, 2C
        mov     edx, eax                                ; 025C _ 89. C2
        shr     edx, 31                                 ; 025E _ C1. EA, 1F
        add     eax, edx                                ; 0261 _ 01. D0
        sar     eax, 1                                  ; 0263 _ D1. F8
        mov     dword [my], eax                         ; 0265 _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 026A _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0270 _ A1, 000000F0(d)
        push    edx                                     ; 0275 _ 52
        push    eax                                     ; 0276 _ 50
        push    dword [ebp-28H]                         ; 0277 _ FF. 75, D8
        push    dword [ebp-14H]                         ; 027A _ FF. 75, EC
        call    sheet_slide                             ; 027D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0282 _ 83. C4, 10
        movzx   eax, word [?_130]                       ; 0285 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 028C _ 98
        sub     esp, 8                                  ; 028D _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0290 _ FF. 75, F4
        push    2                                       ; 0293 _ 6A, 02
        push    32                                      ; 0295 _ 6A, 20
        push    0                                       ; 0297 _ 6A, 00
        push    eax                                     ; 0299 _ 50
        push    dword [ebp-38H]                         ; 029A _ FF. 75, C8
        call    showString                              ; 029D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02A2 _ 83. C4, 20
        sub     esp, 4                                  ; 02A5 _ 83. EC, 04
        push    1                                       ; 02A8 _ 6A, 01
        push    dword [ebp-28H]                         ; 02AA _ FF. 75, D8
        push    dword [ebp-14H]                         ; 02AD _ FF. 75, EC
        call    sheet_level_updown                      ; 02B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B5 _ 83. C4, 10
        sub     esp, 4                                  ; 02B8 _ 83. EC, 04
        push    0                                       ; 02BB _ 6A, 00
        push    dword [ebp-2CH]                         ; 02BD _ FF. 75, D4
        push    dword [ebp-14H]                         ; 02C0 _ FF. 75, EC
        call    sheet_level_updown                      ; 02C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02C8 _ 83. C4, 10
        call    io_sti                                  ; 02CB _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 02D0 _ 83. EC, 0C
        push    mouse_move                              ; 02D3 _ 68, 000000E0(d)
        call    enable_mouse                            ; 02D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02DD _ 83. C4, 10
        mov     dword [ebp-3CH], 0                      ; 02E0 _ C7. 45, C4, 00000000
        mov     byte [ebp-3DH], 0                       ; 02E7 _ C6. 45, C3, 00
?_001:  call    io_cli                                  ; 02EB _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 02F0 _ 83. EC, 0C
        push    keyInfo                                 ; 02F3 _ 68, 00000008(d)
        call    fifo8_status                            ; 02F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02FD _ 83. C4, 10
        mov     ebx, eax                                ; 0300 _ 89. C3
        sub     esp, 12                                 ; 0302 _ 83. EC, 0C
        push    mouseInfo                               ; 0305 _ 68, 00000020(d)
        call    fifo8_status                            ; 030A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 030F _ 83. C4, 10
        add     eax, ebx                                ; 0312 _ 01. D8
        test    eax, eax                                ; 0314 _ 85. C0
        jnz     ?_002                                   ; 0316 _ 75, 07
        call    io_stihlt                               ; 0318 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 031D _ EB, CC

?_002:  sub     esp, 12                                 ; 031F _ 83. EC, 0C
        push    keyInfo                                 ; 0322 _ 68, 00000008(d)
        call    fifo8_status                            ; 0327 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 032C _ 83. C4, 10
        test    eax, eax                                ; 032F _ 85. C0
        jz      ?_003                                   ; 0331 _ 74, 69
        call    io_sti                                  ; 0333 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0338 _ 83. EC, 0C
        push    keyInfo                                 ; 033B _ 68, 00000008(d)
        call    fifo8_get                               ; 0340 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0345 _ 83. C4, 10
        mov     byte [ebp-3DH], al                      ; 0348 _ 88. 45, C3
        cmp     byte [ebp-3DH], 28                      ; 034B _ 80. 7D, C3, 1C
        jnz     ?_001                                   ; 034F _ 75, 9A
        mov     ecx, dword [buf_back]                   ; 0351 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-3CH]                    ; 0357 _ 8B. 55, C4
        mov     eax, edx                                ; 035A _ 89. D0
        shl     eax, 2                                  ; 035C _ C1. E0, 02
        add     eax, edx                                ; 035F _ 01. D0
        shl     eax, 2                                  ; 0361 _ C1. E0, 02
        mov     edx, eax                                ; 0364 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 0366 _ 8B. 45, DC
        add     eax, edx                                ; 0369 _ 01. D0
        sub     esp, 12                                 ; 036B _ 83. EC, 0C
        push    7                                       ; 036E _ 6A, 07
        push    dword [ebp-34H]                         ; 0370 _ FF. 75, CC
        push    dword [ebp-3CH]                         ; 0373 _ FF. 75, C4
        push    ecx                                     ; 0376 _ 51
        push    eax                                     ; 0377 _ 50
        call    showMemInfo                             ; 0378 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 037D _ 83. C4, 20
        add     dword [ebp-3CH], 1                      ; 0380 _ 83. 45, C4, 01
        mov     eax, dword [ebp-3CH]                    ; 0384 _ 8B. 45, C4
        cmp     eax, dword [ebp-20H]                    ; 0387 _ 3B. 45, E0
        jl      ?_001                                   ; 038A _ 0F 8C, FFFFFF5B
        mov     dword [ebp-3CH], 0                      ; 0390 _ C7. 45, C4, 00000000
        jmp     ?_001                                   ; 0397 _ E9, FFFFFF4F

?_003:  sub     esp, 12                                 ; 039C _ 83. EC, 0C
        push    mouseInfo                               ; 039F _ 68, 00000020(d)
        call    fifo8_status                            ; 03A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03A9 _ 83. C4, 10
        test    eax, eax                                ; 03AC _ 85. C0
        je      ?_001                                   ; 03AE _ 0F 84, FFFFFF37
        sub     esp, 8                                  ; 03B4 _ 83. EC, 08
        push    dword [ebp-28H]                         ; 03B7 _ FF. 75, D8
        push    dword [ebp-14H]                         ; 03BA _ FF. 75, EC
        call    showMouseInfo                           ; 03BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C2 _ 83. C4, 10
        jmp     ?_001                                   ; 03C5 _ E9, FFFFFF21
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 03CA _ 55
        mov     ebp, esp                                ; 03CB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 03CD _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 03D0 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 03D6 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 03D9 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 03DF _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 03E2 _ 66: C7. 40, 06, 00C8
        nop                                             ; 03E8 _ 90
        pop     ebp                                     ; 03E9 _ 5D
        ret                                             ; 03EA _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 03EB _ 55
        mov     ebp, esp                                ; 03EC _ 89. E5
        sub     esp, 24                                 ; 03EE _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 03F1 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 03F4 _ 88. 45, F4
        jmp     ?_005                                   ; 03F7 _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 03F9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03FC _ 0F B6. 00
        movzx   eax, al                                 ; 03FF _ 0F B6. C0
        shl     eax, 4                                  ; 0402 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0405 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 040B _ 0F BE. 45, F4
        sub     esp, 8                                  ; 040F _ 83. EC, 08
        push    edx                                     ; 0412 _ 52
        push    eax                                     ; 0413 _ 50
        push    dword [ebp+14H]                         ; 0414 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0417 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 041A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 041D _ FF. 75, 08
        call    showFont8                               ; 0420 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0425 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0428 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 042C _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 0430 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0433 _ 0F B6. 00
        test    al, al                                  ; 0436 _ 84. C0
        jnz     ?_004                                   ; 0438 _ 75, BF
        nop                                             ; 043A _ 90
        leave                                           ; 043B _ C9
        ret                                             ; 043C _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 043D _ 55
        mov     ebp, esp                                ; 043E _ 89. E5
        push    ebx                                     ; 0440 _ 53
        sub     esp, 4                                  ; 0441 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0444 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0447 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 044A _ 8B. 45, 0C
        sub     eax, 1                                  ; 044D _ 83. E8, 01
        sub     esp, 4                                  ; 0450 _ 83. EC, 04
        push    edx                                     ; 0453 _ 52
        push    eax                                     ; 0454 _ 50
        push    0                                       ; 0455 _ 6A, 00
        push    0                                       ; 0457 _ 6A, 00
        push    14                                      ; 0459 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 045B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 045E _ FF. 75, 08
        call    boxfill8                                ; 0461 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0466 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0469 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 046C _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 046F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0472 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0475 _ 8B. 45, 10
        sub     eax, 28                                 ; 0478 _ 83. E8, 1C
        sub     esp, 4                                  ; 047B _ 83. EC, 04
        push    ecx                                     ; 047E _ 51
        push    edx                                     ; 047F _ 52
        push    eax                                     ; 0480 _ 50
        push    0                                       ; 0481 _ 6A, 00
        push    8                                       ; 0483 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0485 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0488 _ FF. 75, 08
        call    boxfill8                                ; 048B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0490 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0493 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0496 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0499 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 049C _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 049F _ 8B. 45, 10
        sub     eax, 27                                 ; 04A2 _ 83. E8, 1B
        sub     esp, 4                                  ; 04A5 _ 83. EC, 04
        push    ecx                                     ; 04A8 _ 51
        push    edx                                     ; 04A9 _ 52
        push    eax                                     ; 04AA _ 50
        push    0                                       ; 04AB _ 6A, 00
        push    7                                       ; 04AD _ 6A, 07
        push    dword [ebp+0CH]                         ; 04AF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04B2 _ FF. 75, 08
        call    boxfill8                                ; 04B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04BA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04BD _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 04C0 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 04C3 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04C6 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04C9 _ 8B. 45, 10
        sub     eax, 26                                 ; 04CC _ 83. E8, 1A
        sub     esp, 4                                  ; 04CF _ 83. EC, 04
        push    ecx                                     ; 04D2 _ 51
        push    edx                                     ; 04D3 _ 52
        push    eax                                     ; 04D4 _ 50
        push    0                                       ; 04D5 _ 6A, 00
        push    8                                       ; 04D7 _ 6A, 08
        push    dword [ebp+0CH]                         ; 04D9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04DC _ FF. 75, 08
        call    boxfill8                                ; 04DF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04E4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04E7 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 04EA _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 04ED _ 8B. 45, 10
        sub     eax, 24                                 ; 04F0 _ 83. E8, 18
        sub     esp, 4                                  ; 04F3 _ 83. EC, 04
        push    edx                                     ; 04F6 _ 52
        push    59                                      ; 04F7 _ 6A, 3B
        push    eax                                     ; 04F9 _ 50
        push    3                                       ; 04FA _ 6A, 03
        push    7                                       ; 04FC _ 6A, 07
        push    dword [ebp+0CH]                         ; 04FE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0501 _ FF. 75, 08
        call    boxfill8                                ; 0504 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0509 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 050C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 050F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0512 _ 8B. 45, 10
        sub     eax, 24                                 ; 0515 _ 83. E8, 18
        sub     esp, 4                                  ; 0518 _ 83. EC, 04
        push    edx                                     ; 051B _ 52
        push    2                                       ; 051C _ 6A, 02
        push    eax                                     ; 051E _ 50
        push    2                                       ; 051F _ 6A, 02
        push    7                                       ; 0521 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0523 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0526 _ FF. 75, 08
        call    boxfill8                                ; 0529 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 052E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0531 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0534 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0537 _ 8B. 45, 10
        sub     eax, 4                                  ; 053A _ 83. E8, 04
        sub     esp, 4                                  ; 053D _ 83. EC, 04
        push    edx                                     ; 0540 _ 52
        push    59                                      ; 0541 _ 6A, 3B
        push    eax                                     ; 0543 _ 50
        push    3                                       ; 0544 _ 6A, 03
        push    15                                      ; 0546 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0548 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 054B _ FF. 75, 08
        call    boxfill8                                ; 054E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0553 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0556 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0559 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 055C _ 8B. 45, 10
        sub     eax, 23                                 ; 055F _ 83. E8, 17
        sub     esp, 4                                  ; 0562 _ 83. EC, 04
        push    edx                                     ; 0565 _ 52
        push    59                                      ; 0566 _ 6A, 3B
        push    eax                                     ; 0568 _ 50
        push    59                                      ; 0569 _ 6A, 3B
        push    15                                      ; 056B _ 6A, 0F
        push    dword [ebp+0CH]                         ; 056D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0570 _ FF. 75, 08
        call    boxfill8                                ; 0573 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0578 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 057B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 057E _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0581 _ 8B. 45, 10
        sub     eax, 3                                  ; 0584 _ 83. E8, 03
        sub     esp, 4                                  ; 0587 _ 83. EC, 04
        push    edx                                     ; 058A _ 52
        push    59                                      ; 058B _ 6A, 3B
        push    eax                                     ; 058D _ 50
        push    2                                       ; 058E _ 6A, 02
        push    0                                       ; 0590 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0592 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0595 _ FF. 75, 08
        call    boxfill8                                ; 0598 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 059D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05A0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05A3 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05A6 _ 8B. 45, 10
        sub     eax, 24                                 ; 05A9 _ 83. E8, 18
        sub     esp, 4                                  ; 05AC _ 83. EC, 04
        push    edx                                     ; 05AF _ 52
        push    60                                      ; 05B0 _ 6A, 3C
        push    eax                                     ; 05B2 _ 50
        push    60                                      ; 05B3 _ 6A, 3C
        push    0                                       ; 05B5 _ 6A, 00
        push    dword [ebp+0CH]                         ; 05B7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05BA _ FF. 75, 08
        call    boxfill8                                ; 05BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05C2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05C5 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 05C8 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 05CB _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 05CE _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 05D1 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 05D4 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 05D7 _ 8B. 45, 0C
        sub     eax, 47                                 ; 05DA _ 83. E8, 2F
        sub     esp, 4                                  ; 05DD _ 83. EC, 04
        push    ebx                                     ; 05E0 _ 53
        push    ecx                                     ; 05E1 _ 51
        push    edx                                     ; 05E2 _ 52
        push    eax                                     ; 05E3 _ 50
        push    15                                      ; 05E4 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05E6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05E9 _ FF. 75, 08
        call    boxfill8                                ; 05EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05F4 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 05F7 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 05FA _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 05FD _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0600 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0603 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0606 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0609 _ 83. E8, 2F
        sub     esp, 4                                  ; 060C _ 83. EC, 04
        push    ebx                                     ; 060F _ 53
        push    ecx                                     ; 0610 _ 51
        push    edx                                     ; 0611 _ 52
        push    eax                                     ; 0612 _ 50
        push    15                                      ; 0613 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0615 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0618 _ FF. 75, 08
        call    boxfill8                                ; 061B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0620 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0623 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0626 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0629 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 062C _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 062F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0632 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0635 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0638 _ 83. E8, 2F
        sub     esp, 4                                  ; 063B _ 83. EC, 04
        push    ebx                                     ; 063E _ 53
        push    ecx                                     ; 063F _ 51
        push    edx                                     ; 0640 _ 52
        push    eax                                     ; 0641 _ 50
        push    7                                       ; 0642 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0644 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0647 _ FF. 75, 08
        call    boxfill8                                ; 064A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 064F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0652 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0655 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0658 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 065B _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 065E _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0661 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0664 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0667 _ 83. E8, 03
        sub     esp, 4                                  ; 066A _ 83. EC, 04
        push    ebx                                     ; 066D _ 53
        push    ecx                                     ; 066E _ 51
        push    edx                                     ; 066F _ 52
        push    eax                                     ; 0670 _ 50
        push    7                                       ; 0671 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0673 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0676 _ FF. 75, 08
        call    boxfill8                                ; 0679 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 067E _ 83. C4, 20
        nop                                             ; 0681 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0682 _ 8B. 5D, FC
        leave                                           ; 0685 _ C9
        ret                                             ; 0686 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0687 _ 55
        mov     ebp, esp                                ; 0688 _ 89. E5
        sub     esp, 24                                 ; 068A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 068D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0692 _ 89. 45, EC
        movzx   eax, word [?_130]                       ; 0695 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 069C _ 98
        mov     dword [ebp-10H], eax                    ; 069D _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 06A0 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 06A7 _ 98
        mov     dword [ebp-0CH], eax                    ; 06A8 _ 89. 45, F4
        sub     esp, 4                                  ; 06AB _ 83. EC, 04
        push    table_rgb.1659                          ; 06AE _ 68, 00000020(d)
        push    15                                      ; 06B3 _ 6A, 0F
        push    0                                       ; 06B5 _ 6A, 00
        call    set_palette                             ; 06B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06BC _ 83. C4, 10
        nop                                             ; 06BF _ 90
        leave                                           ; 06C0 _ C9
        ret                                             ; 06C1 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 06C2 _ 55
        mov     ebp, esp                                ; 06C3 _ 89. E5
        sub     esp, 24                                 ; 06C5 _ 83. EC, 18
        call    io_load_eflags                          ; 06C8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 06CD _ 89. 45, F4
        call    io_cli                                  ; 06D0 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 06D5 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 06D8 _ FF. 75, 08
        push    968                                     ; 06DB _ 68, 000003C8
        call    io_out8                                 ; 06E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06E5 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 06E8 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 06EB _ 89. 45, F0
        jmp     ?_007                                   ; 06EE _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 06F0 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 06F3 _ 0F B6. 00
        shr     al, 2                                   ; 06F6 _ C0. E8, 02
        movzx   eax, al                                 ; 06F9 _ 0F B6. C0
        sub     esp, 8                                  ; 06FC _ 83. EC, 08
        push    eax                                     ; 06FF _ 50
        push    969                                     ; 0700 _ 68, 000003C9
        call    io_out8                                 ; 0705 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 070A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 070D _ 8B. 45, 10
        add     eax, 1                                  ; 0710 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0713 _ 0F B6. 00
        shr     al, 2                                   ; 0716 _ C0. E8, 02
        movzx   eax, al                                 ; 0719 _ 0F B6. C0
        sub     esp, 8                                  ; 071C _ 83. EC, 08
        push    eax                                     ; 071F _ 50
        push    969                                     ; 0720 _ 68, 000003C9
        call    io_out8                                 ; 0725 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 072A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 072D _ 8B. 45, 10
        add     eax, 2                                  ; 0730 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0733 _ 0F B6. 00
        shr     al, 2                                   ; 0736 _ C0. E8, 02
        movzx   eax, al                                 ; 0739 _ 0F B6. C0
        sub     esp, 8                                  ; 073C _ 83. EC, 08
        push    eax                                     ; 073F _ 50
        push    969                                     ; 0740 _ 68, 000003C9
        call    io_out8                                 ; 0745 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 074A _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 074D _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0751 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 0755 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0758 _ 3B. 45, 0C
        jle     ?_006                                   ; 075B _ 7E, 93
        sub     esp, 12                                 ; 075D _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0760 _ FF. 75, F4
        call    io_store_eflags                         ; 0763 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0768 _ 83. C4, 10
        nop                                             ; 076B _ 90
        leave                                           ; 076C _ C9
        ret                                             ; 076D _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 076E _ 55
        mov     ebp, esp                                ; 076F _ 89. E5
        sub     esp, 20                                 ; 0771 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0774 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0777 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 077A _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 077D _ 89. 45, FC
        jmp     ?_011                                   ; 0780 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 0782 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0785 _ 89. 45, F8
        jmp     ?_010                                   ; 0788 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 078A _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 078D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0791 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0793 _ 8B. 45, F8
        add     eax, edx                                ; 0796 _ 01. D0
        mov     edx, eax                                ; 0798 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 079A _ 8B. 45, 08
        add     edx, eax                                ; 079D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 079F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07A3 _ 88. 02
        add     dword [ebp-8H], 1                       ; 07A5 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 07A9 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 07AC _ 3B. 45, 1C
        jle     ?_009                                   ; 07AF _ 7E, D9
        add     dword [ebp-4H], 1                       ; 07B1 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 07B5 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 07B8 _ 3B. 45, 20
        jle     ?_008                                   ; 07BB _ 7E, C5
        nop                                             ; 07BD _ 90
        leave                                           ; 07BE _ C9
        ret                                             ; 07BF _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 07C0 _ 55
        mov     ebp, esp                                ; 07C1 _ 89. E5
        sub     esp, 20                                 ; 07C3 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 07C6 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 07C9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 07CC _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 07D3 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 07D8 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 07DB _ 8B. 45, 1C
        add     eax, edx                                ; 07DE _ 01. D0
        movzx   eax, byte [eax]                         ; 07E0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 07E3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 07E6 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 07EA _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 07EC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 07EF _ 8B. 45, FC
        add     eax, edx                                ; 07F2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07F4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07F8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07FA _ 8B. 45, 10
        add     eax, edx                                ; 07FD _ 01. D0
        mov     edx, eax                                ; 07FF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0801 _ 8B. 45, 08
        add     edx, eax                                ; 0804 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0806 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 080A _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 080C _ 0F BE. 45, FB
        and     eax, 40H                                ; 0810 _ 83. E0, 40
        test    eax, eax                                ; 0813 _ 85. C0
        jz      ?_014                                   ; 0815 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0817 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 081A _ 8B. 45, FC
        add     eax, edx                                ; 081D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 081F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0823 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0825 _ 8B. 45, 10
        add     eax, edx                                ; 0828 _ 01. D0
        lea     edx, [eax+1H]                           ; 082A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 082D _ 8B. 45, 08
        add     edx, eax                                ; 0830 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0832 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0836 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0838 _ 0F BE. 45, FB
        and     eax, 20H                                ; 083C _ 83. E0, 20
        test    eax, eax                                ; 083F _ 85. C0
        jz      ?_015                                   ; 0841 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0843 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0846 _ 8B. 45, FC
        add     eax, edx                                ; 0849 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 084B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 084F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0851 _ 8B. 45, 10
        add     eax, edx                                ; 0854 _ 01. D0
        lea     edx, [eax+2H]                           ; 0856 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0859 _ 8B. 45, 08
        add     edx, eax                                ; 085C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 085E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0862 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0864 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0868 _ 83. E0, 10
        test    eax, eax                                ; 086B _ 85. C0
        jz      ?_016                                   ; 086D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 086F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0872 _ 8B. 45, FC
        add     eax, edx                                ; 0875 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0877 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 087B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 087D _ 8B. 45, 10
        add     eax, edx                                ; 0880 _ 01. D0
        lea     edx, [eax+3H]                           ; 0882 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0885 _ 8B. 45, 08
        add     edx, eax                                ; 0888 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 088A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 088E _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0890 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0894 _ 83. E0, 08
        test    eax, eax                                ; 0897 _ 85. C0
        jz      ?_017                                   ; 0899 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 089B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 089E _ 8B. 45, FC
        add     eax, edx                                ; 08A1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08A3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08A7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08A9 _ 8B. 45, 10
        add     eax, edx                                ; 08AC _ 01. D0
        lea     edx, [eax+4H]                           ; 08AE _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 08B1 _ 8B. 45, 08
        add     edx, eax                                ; 08B4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08B6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08BA _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 08BC _ 0F BE. 45, FB
        and     eax, 04H                                ; 08C0 _ 83. E0, 04
        test    eax, eax                                ; 08C3 _ 85. C0
        jz      ?_018                                   ; 08C5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08C7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08CA _ 8B. 45, FC
        add     eax, edx                                ; 08CD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08CF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08D3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D5 _ 8B. 45, 10
        add     eax, edx                                ; 08D8 _ 01. D0
        lea     edx, [eax+5H]                           ; 08DA _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 08DD _ 8B. 45, 08
        add     edx, eax                                ; 08E0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08E2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E6 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 08E8 _ 0F BE. 45, FB
        and     eax, 02H                                ; 08EC _ 83. E0, 02
        test    eax, eax                                ; 08EF _ 85. C0
        jz      ?_019                                   ; 08F1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08F3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08F6 _ 8B. 45, FC
        add     eax, edx                                ; 08F9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08FB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08FF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0901 _ 8B. 45, 10
        add     eax, edx                                ; 0904 _ 01. D0
        lea     edx, [eax+6H]                           ; 0906 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0909 _ 8B. 45, 08
        add     edx, eax                                ; 090C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 090E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0912 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0914 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0918 _ 83. E0, 01
        test    eax, eax                                ; 091B _ 85. C0
        jz      ?_020                                   ; 091D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 091F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0922 _ 8B. 45, FC
        add     eax, edx                                ; 0925 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0927 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 092B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 092D _ 8B. 45, 10
        add     eax, edx                                ; 0930 _ 01. D0
        lea     edx, [eax+7H]                           ; 0932 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0935 _ 8B. 45, 08
        add     edx, eax                                ; 0938 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 093A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 093E _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 0940 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 0944 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 0948 _ 0F 8E, FFFFFE8A
        nop                                             ; 094E _ 90
        leave                                           ; 094F _ C9
        ret                                             ; 0950 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0951 _ 55
        mov     ebp, esp                                ; 0952 _ 89. E5
        sub     esp, 20                                 ; 0954 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0957 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 095A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 095D _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 0964 _ E9, 000000B1

?_022:  mov     dword [ebp-8H], 0                       ; 0969 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 0970 _ E9, 00000097

?_023:  mov     eax, dword [ebp-4H]                     ; 0975 _ 8B. 45, FC
        shl     eax, 4                                  ; 0978 _ C1. E0, 04
        mov     edx, eax                                ; 097B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 097D _ 8B. 45, F8
        add     eax, edx                                ; 0980 _ 01. D0
        add     eax, cursor.1704                        ; 0982 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0987 _ 0F B6. 00
        cmp     al, 42                                  ; 098A _ 3C, 2A
        jnz     ?_024                                   ; 098C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 098E _ 8B. 45, FC
        shl     eax, 4                                  ; 0991 _ C1. E0, 04
        mov     edx, eax                                ; 0994 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0996 _ 8B. 45, F8
        add     eax, edx                                ; 0999 _ 01. D0
        mov     edx, eax                                ; 099B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 099D _ 8B. 45, 08
        add     eax, edx                                ; 09A0 _ 01. D0
        mov     byte [eax], 0                           ; 09A2 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-4H]                     ; 09A5 _ 8B. 45, FC
        shl     eax, 4                                  ; 09A8 _ C1. E0, 04
        mov     edx, eax                                ; 09AB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09AD _ 8B. 45, F8
        add     eax, edx                                ; 09B0 _ 01. D0
        add     eax, cursor.1704                        ; 09B2 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09B7 _ 0F B6. 00
        cmp     al, 79                                  ; 09BA _ 3C, 4F
        jnz     ?_025                                   ; 09BC _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 09BE _ 8B. 45, FC
        shl     eax, 4                                  ; 09C1 _ C1. E0, 04
        mov     edx, eax                                ; 09C4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09C6 _ 8B. 45, F8
        add     eax, edx                                ; 09C9 _ 01. D0
        mov     edx, eax                                ; 09CB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09CD _ 8B. 45, 08
        add     eax, edx                                ; 09D0 _ 01. D0
        mov     byte [eax], 7                           ; 09D2 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-4H]                     ; 09D5 _ 8B. 45, FC
        shl     eax, 4                                  ; 09D8 _ C1. E0, 04
        mov     edx, eax                                ; 09DB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09DD _ 8B. 45, F8
        add     eax, edx                                ; 09E0 _ 01. D0
        add     eax, cursor.1704                        ; 09E2 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09E7 _ 0F B6. 00
        cmp     al, 46                                  ; 09EA _ 3C, 2E
        jnz     ?_026                                   ; 09EC _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 09EE _ 8B. 45, FC
        shl     eax, 4                                  ; 09F1 _ C1. E0, 04
        mov     edx, eax                                ; 09F4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09F6 _ 8B. 45, F8
        add     eax, edx                                ; 09F9 _ 01. D0
        mov     edx, eax                                ; 09FB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09FD _ 8B. 45, 08
        add     edx, eax                                ; 0A00 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A02 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A06 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0A08 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 0A0C _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 0A10 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0A16 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 0A1A _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 0A1E _ 0F 8E, FFFFFF45
        nop                                             ; 0A24 _ 90
        leave                                           ; 0A25 _ C9
        ret                                             ; 0A26 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A27 _ 55
        mov     ebp, esp                                ; 0A28 _ 89. E5
        push    ebx                                     ; 0A2A _ 53
        sub     esp, 16                                 ; 0A2B _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0A2E _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 0A35 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0A37 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0A3E _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0A40 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0A43 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0A47 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0A49 _ 8B. 45, F4
        add     eax, edx                                ; 0A4C _ 01. D0
        mov     edx, eax                                ; 0A4E _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0A50 _ 8B. 45, 20
        add     eax, edx                                ; 0A53 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0A55 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0A58 _ 8B. 55, F8
        add     edx, ecx                                ; 0A5B _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0A5D _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0A61 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0A64 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0A67 _ 01. D9
        add     edx, ecx                                ; 0A69 _ 01. CA
        mov     ecx, edx                                ; 0A6B _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0A6D _ 8B. 55, 08
        add     edx, ecx                                ; 0A70 _ 01. CA
        movzx   eax, byte [eax]                         ; 0A72 _ 0F B6. 00
        mov     byte [edx], al                          ; 0A75 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0A77 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0A7B _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0A7E _ 3B. 45, 10
        jl      ?_030                                   ; 0A81 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0A83 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0A87 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0A8A _ 3B. 45, 14
        jl      ?_029                                   ; 0A8D _ 7C, A8
        nop                                             ; 0A8F _ 90
        add     esp, 16                                 ; 0A90 _ 83. C4, 10
        pop     ebx                                     ; 0A93 _ 5B
        pop     ebp                                     ; 0A94 _ 5D
        ret                                             ; 0A95 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0A96 _ 55
        mov     ebp, esp                                ; 0A97 _ 89. E5
        sub     esp, 24                                 ; 0A99 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0A9C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0AA1 _ 89. 45, EC
        movzx   eax, word [?_130]                       ; 0AA4 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0AAB _ 98
        mov     dword [ebp-10H], eax                    ; 0AAC _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 0AAF _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0AB6 _ 98
        mov     dword [ebp-0CH], eax                    ; 0AB7 _ 89. 45, F4
        sub     esp, 8                                  ; 0ABA _ 83. EC, 08
        push    32                                      ; 0ABD _ 6A, 20
        push    32                                      ; 0ABF _ 6A, 20
        call    io_out8                                 ; 0AC1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AC6 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0AC9 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0ACD _ 83. EC, 0C
        push    96                                      ; 0AD0 _ 6A, 60
        call    io_in8                                  ; 0AD2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AD7 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0ADA _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0ADD _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0AE1 _ 83. EC, 08
        push    eax                                     ; 0AE4 _ 50
        push    keyInfo                                 ; 0AE5 _ 68, 00000008(d)
        call    fifo8_put                               ; 0AEA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AEF _ 83. C4, 10
        nop                                             ; 0AF2 _ 90
        leave                                           ; 0AF3 _ C9
        ret                                             ; 0AF4 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0AF5 _ 55
        mov     ebp, esp                                ; 0AF6 _ 89. E5
        sub     esp, 40                                 ; 0AF8 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0AFB _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0AFE _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B01 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0B05 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0B08 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0B0B _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0B0F _ 83. EC, 0C
        push    eax                                     ; 0B12 _ 50
        call    charToVal                               ; 0B13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B18 _ 83. C4, 10
        mov     byte [?_129], al                        ; 0B1B _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 0B20 _ 0F B6. 45, E4
        shr     al, 4                                   ; 0B24 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0B27 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B2A _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0B2E _ 0F BE. C0
        sub     esp, 12                                 ; 0B31 _ 83. EC, 0C
        push    eax                                     ; 0B34 _ 50
        call    charToVal                               ; 0B35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B3A _ 83. C4, 10
        mov     byte [?_128], al                        ; 0B3D _ A2, 00000012(d)
        mov     eax, keyVal                             ; 0B42 _ B8, 00000010(d)
        leave                                           ; 0B47 _ C9
        ret                                             ; 0B48 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0B49 _ 55
        mov     ebp, esp                                ; 0B4A _ 89. E5
        sub     esp, 4                                  ; 0B4C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0B4F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0B52 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0B55 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0B59 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0B5B _ 0F B6. 45, FC
        add     eax, 55                                 ; 0B5F _ 83. C0, 37
        jmp     ?_034                                   ; 0B62 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0B64 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0B68 _ 83. C0, 30
?_034:  leave                                           ; 0B6B _ C9
        ret                                             ; 0B6C _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0B6D _ 55
        mov     ebp, esp                                ; 0B6E _ 89. E5
        sub     esp, 16                                 ; 0B70 _ 83. EC, 10
        mov     byte [str.1747], 48                     ; 0B73 _ C6. 05, 00000200(d), 30
        mov     byte [?_132], 120                       ; 0B7A _ C6. 05, 00000201(d), 78
        mov     byte [?_133], 0                         ; 0B81 _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0B88 _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0B8F _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0B91 _ 8B. 45, F4
        add     eax, str.1747                           ; 0B94 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0B99 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0B9C _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0BA0 _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0BA4 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0BA6 _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0BAD _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0BAF _ 8B. 45, 08
        and     eax, 0FH                                ; 0BB2 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0BB5 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0BB8 _ 8B. 45, 08
        shr     eax, 4                                  ; 0BBB _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0BBE _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0BC1 _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0BC5 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0BC7 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0BCA _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0BCD _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0BD0 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0BD3 _ 89. 55, F8
        mov     edx, ecx                                ; 0BD6 _ 89. CA
        mov     byte [str.1747+eax], dl                 ; 0BD8 _ 88. 90, 00000200(d)
        jmp     ?_039                                   ; 0BDE _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 0BE0 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0BE3 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0BE6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0BE9 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0BEC _ 89. 55, F8
        mov     edx, ecx                                ; 0BEF _ 89. CA
        mov     byte [str.1747+eax], dl                 ; 0BF1 _ 88. 90, 00000200(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0BF7 _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0BFB _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0BFD _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0C01 _ 75, AC
?_040:  mov     eax, str.1747                           ; 0C03 _ B8, 00000200(d)
        leave                                           ; 0C08 _ C9
        ret                                             ; 0C09 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0C0A _ 55
        mov     ebp, esp                                ; 0C0B _ 89. E5
        sub     esp, 8                                  ; 0C0D _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0C10 _ 83. EC, 0C
        push    100                                     ; 0C13 _ 6A, 64
        call    io_in8                                  ; 0C15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C1A _ 83. C4, 10
        movsx   eax, al                                 ; 0C1D _ 0F BE. C0
        and     eax, 02H                                ; 0C20 _ 83. E0, 02
        test    eax, eax                                ; 0C23 _ 85. C0
        jz      ?_042                                   ; 0C25 _ 74, 02
        jmp     ?_041                                   ; 0C27 _ EB, E7

?_042:  nop                                             ; 0C29 _ 90
        nop                                             ; 0C2A _ 90
        leave                                           ; 0C2B _ C9
        ret                                             ; 0C2C _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0C2D _ 55
        mov     ebp, esp                                ; 0C2E _ 89. E5
        sub     esp, 8                                  ; 0C30 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0C33 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C38 _ 83. EC, 08
        push    96                                      ; 0C3B _ 6A, 60
        push    100                                     ; 0C3D _ 6A, 64
        call    io_out8                                 ; 0C3F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C44 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0C47 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C4C _ 83. EC, 08
        push    71                                      ; 0C4F _ 6A, 47
        push    96                                      ; 0C51 _ 6A, 60
        call    io_out8                                 ; 0C53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C58 _ 83. C4, 10
        nop                                             ; 0C5B _ 90
        leave                                           ; 0C5C _ C9
        ret                                             ; 0C5D _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0C5E _ 55
        mov     ebp, esp                                ; 0C5F _ 89. E5
        sub     esp, 8                                  ; 0C61 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0C64 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C69 _ 83. EC, 08
        push    212                                     ; 0C6C _ 68, 000000D4
        push    100                                     ; 0C71 _ 6A, 64
        call    io_out8                                 ; 0C73 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C78 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0C7B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C80 _ 83. EC, 08
        push    244                                     ; 0C83 _ 68, 000000F4
        push    96                                      ; 0C88 _ 6A, 60
        call    io_out8                                 ; 0C8A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C8F _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0C92 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0C95 _ C6. 40, 03, 00
        nop                                             ; 0C99 _ 90
        leave                                           ; 0C9A _ C9
        ret                                             ; 0C9B _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0C9C _ 55
        mov     ebp, esp                                ; 0C9D _ 89. E5
        sub     esp, 24                                 ; 0C9F _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0CA2 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0CA6 _ 83. EC, 08
        push    32                                      ; 0CA9 _ 6A, 20
        push    160                                     ; 0CAB _ 68, 000000A0
        call    io_out8                                 ; 0CB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB5 _ 83. C4, 10
        sub     esp, 8                                  ; 0CB8 _ 83. EC, 08
        push    32                                      ; 0CBB _ 6A, 20
        push    32                                      ; 0CBD _ 6A, 20
        call    io_out8                                 ; 0CBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CC4 _ 83. C4, 10
        sub     esp, 12                                 ; 0CC7 _ 83. EC, 0C
        push    96                                      ; 0CCA _ 6A, 60
        call    io_in8                                  ; 0CCC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD1 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0CD4 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0CD7 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0CDB _ 83. EC, 08
        push    eax                                     ; 0CDE _ 50
        push    mouseInfo                               ; 0CDF _ 68, 00000020(d)
        call    fifo8_put                               ; 0CE4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE9 _ 83. C4, 10
        nop                                             ; 0CEC _ 90
        leave                                           ; 0CED _ C9
        ret                                             ; 0CEE _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0CEF _ 55
        mov     ebp, esp                                ; 0CF0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0CF2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0CF5 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0CF8 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0CFB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0CFE _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D01 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D03 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D06 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D09 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D0C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D0F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D16 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D19 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D20 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D23 _ C7. 40, 14, 00000000
        nop                                             ; 0D2A _ 90
        pop     ebp                                     ; 0D2B _ 5D
        ret                                             ; 0D2C _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0D2D _ 55
        mov     ebp, esp                                ; 0D2E _ 89. E5
        sub     esp, 4                                  ; 0D30 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D33 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D36 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D39 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D3C _ 8B. 40, 10
        test    eax, eax                                ; 0D3F _ 85. C0
        jnz     ?_043                                   ; 0D41 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0D43 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0D46 _ 8B. 40, 14
        or      eax, 01H                                ; 0D49 _ 83. C8, 01
        mov     edx, eax                                ; 0D4C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D4E _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0D51 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0D54 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0D59 _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0D5B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0D5E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0D60 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0D63 _ 8B. 40, 08
        add     edx, eax                                ; 0D66 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0D68 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0D6C _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0D6E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0D71 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0D74 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0D77 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0D7A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0D7D _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0D80 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0D83 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0D86 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0D89 _ 39. C2
        jnz     ?_044                                   ; 0D8B _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0D8D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D90 _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0D97 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D9A _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0D9D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0DA0 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0DA3 _ 89. 50, 10
        mov     eax, 1                                  ; 0DA6 _ B8, 00000001
?_045:  leave                                           ; 0DAB _ C9
        ret                                             ; 0DAC _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0DAD _ 55
        mov     ebp, esp                                ; 0DAE _ 89. E5
        sub     esp, 16                                 ; 0DB0 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0DB3 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0DB6 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0DB9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DBC _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DBF _ 39. C2
        jnz     ?_046                                   ; 0DC1 _ 75, 07
        mov     eax, 4294967295                         ; 0DC3 _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0DC8 _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DCD _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DCF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DD2 _ 8B. 40, 04
        add     eax, edx                                ; 0DD5 _ 01. D0
        movzx   eax, byte [eax]                         ; 0DD7 _ 0F B6. 00
        movzx   eax, al                                 ; 0DDA _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0DDD _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0DE0 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DE3 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0DE6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DE9 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0DEC _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DEF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0DF2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DF5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DF8 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DFB _ 39. C2
        jnz     ?_047                                   ; 0DFD _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DFF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E02 _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0E09 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E0C _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E0F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E12 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E15 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E18 _ 8B. 45, FC
?_048:  leave                                           ; 0E1B _ C9
        ret                                             ; 0E1C _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0E1D _ 55
        mov     ebp, esp                                ; 0E1E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E20 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E23 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E26 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E29 _ 8B. 40, 10
        sub     edx, eax                                ; 0E2C _ 29. C2
        mov     eax, edx                                ; 0E2E _ 89. D0
        pop     ebp                                     ; 0E30 _ 5D
        ret                                             ; 0E31 _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0E32 _ 55
        mov     ebp, esp                                ; 0E33 _ 89. E5
        sub     esp, 40                                 ; 0E35 _ 83. EC, 28
        call    io_sti                                  ; 0E38 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0E3D _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0E42 _ 89. 45, E8
        movzx   eax, word [?_130]                       ; 0E45 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E4C _ 98
        mov     dword [ebp-14H], eax                    ; 0E4D _ 89. 45, EC
        movzx   eax, word [?_131]                       ; 0E50 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E57 _ 98
        mov     dword [ebp-10H], eax                    ; 0E58 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0E5B _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0E5F _ 83. EC, 0C
        push    keyInfo                                 ; 0E62 _ 68, 00000008(d)
        call    fifo8_get                               ; 0E67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E6C _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0E6F _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0E72 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0E76 _ 83. EC, 0C
        push    eax                                     ; 0E79 _ 50
        call    charToHex                               ; 0E7A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E7F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0E82 _ 89. 45, F4
        mov     edx, dword [line.1794]                  ; 0E85 _ 8B. 15, 0000020C(d)
        mov     eax, dword [pos.1793]                   ; 0E8B _ A1, 00000210(d)
        sub     esp, 8                                  ; 0E90 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0E93 _ FF. 75, F4
        push    7                                       ; 0E96 _ 6A, 07
        push    edx                                     ; 0E98 _ 52
        push    eax                                     ; 0E99 _ 50
        push    dword [ebp-14H]                         ; 0E9A _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0E9D _ FF. 75, E8
        call    showString                              ; 0EA0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EA5 _ 83. C4, 20
        mov     eax, dword [pos.1793]                   ; 0EA8 _ A1, 00000210(d)
        add     eax, 32                                 ; 0EAD _ 83. C0, 20
        mov     dword [pos.1793], eax                   ; 0EB0 _ A3, 00000210(d)
        mov     eax, dword [pos.1793]                   ; 0EB5 _ A1, 00000210(d)
        cmp     dword [ebp-14H], eax                    ; 0EBA _ 39. 45, EC
        jnz     ?_051                                   ; 0EBD _ 75, 28
        mov     eax, dword [line.1794]                  ; 0EBF _ A1, 0000020C(d)
        cmp     dword [ebp-10H], eax                    ; 0EC4 _ 39. 45, F0
        jz      ?_049                                   ; 0EC7 _ 74, 0A
        mov     eax, dword [line.1794]                  ; 0EC9 _ A1, 0000020C(d)
        add     eax, 16                                 ; 0ECE _ 83. C0, 10
        jmp     ?_050                                   ; 0ED1 _ EB, 05

?_049:  mov     eax, 0                                  ; 0ED3 _ B8, 00000000
?_050:  mov     dword [line.1794], eax                  ; 0ED8 _ A3, 0000020C(d)
        mov     dword [pos.1793], 0                     ; 0EDD _ C7. 05, 00000210(d), 00000000
?_051:  nop                                             ; 0EE7 _ 90
        leave                                           ; 0EE8 _ C9
        ret                                             ; 0EE9 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0EEA _ 55
        mov     ebp, esp                                ; 0EEB _ 89. E5
        sub     esp, 24                                 ; 0EED _ 83. EC, 18
        call    io_sti                                  ; 0EF0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [buf_back]                   ; 0EF5 _ A1, 000000F8(d)
        mov     dword [ebp-0CH], eax                    ; 0EFA _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0EFD _ C6. 45, F3, 00
        sub     esp, 12                                 ; 0F01 _ 83. EC, 0C
        push    mouseInfo                               ; 0F04 _ 68, 00000020(d)
        call    fifo8_get                               ; 0F09 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F0E _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0F11 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0F14 _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0F18 _ 83. EC, 08
        push    eax                                     ; 0F1B _ 50
        push    mouse_move                              ; 0F1C _ 68, 000000E0(d)
        call    mouse_decode                            ; 0F21 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F26 _ 83. C4, 10
        test    eax, eax                                ; 0F29 _ 85. C0
        jz      ?_052                                   ; 0F2B _ 74, 4D
        sub     esp, 12                                 ; 0F2D _ 83. EC, 0C
        push    mouse_move                              ; 0F30 _ 68, 000000E0(d)
        call    computeMousePos                         ; 0F35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F3A _ 83. C4, 10
        movzx   eax, word [?_130]                       ; 0F3D _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0F44 _ 98
        sub     esp, 8                                  ; 0F45 _ 83. EC, 08
        push    ?_120                                   ; 0F48 _ 68, 00000017(d)
        push    2                                       ; 0F4D _ 6A, 02
        push    16                                      ; 0F4F _ 6A, 10
        push    0                                       ; 0F51 _ 6A, 00
        push    eax                                     ; 0F53 _ 50
        push    dword [ebp-0CH]                         ; 0F54 _ FF. 75, F4
        call    showString                              ; 0F57 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F5C _ 83. C4, 20
        mov     edx, dword [my]                         ; 0F5F _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0F65 _ A1, 000000F0(d)
        push    edx                                     ; 0F6A _ 52
        push    eax                                     ; 0F6B _ 50
        push    dword [ebp+0CH]                         ; 0F6C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F6F _ FF. 75, 08
        call    sheet_slide                             ; 0F72 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F77 _ 83. C4, 10
?_052:  nop                                             ; 0F7A _ 90
        leave                                           ; 0F7B _ C9
        ret                                             ; 0F7C _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0F7D _ 55
        mov     ebp, esp                                ; 0F7E _ 89. E5
        sub     esp, 4                                  ; 0F80 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0F83 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0F86 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F89 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F8C _ 0F B6. 40, 03
        test    al, al                                  ; 0F90 _ 84. C0
        jnz     ?_054                                   ; 0F92 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0F94 _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0F98 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0F9A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0F9D _ C6. 40, 03, 01
?_053:  mov     eax, 1                                  ; 0FA1 _ B8, 00000001
        jmp     ?_061                                   ; 0FA6 _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0FAB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FAE _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0FB2 _ 3C, 01
        jnz     ?_056                                   ; 0FB4 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0FB6 _ 0F B6. 45, FC
        or      eax, 37H                                ; 0FBA _ 83. C8, 37
        cmp     al, 63                                  ; 0FBD _ 3C, 3F
        jnz     ?_055                                   ; 0FBF _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0FC1 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0FC4 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0FC8 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0FCA _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0FCD _ C6. 40, 03, 02
?_055:  mov     eax, 1                                  ; 0FD1 _ B8, 00000001
        jmp     ?_061                                   ; 0FD6 _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 0FDB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FDE _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0FE2 _ 3C, 02
        jnz     ?_057                                   ; 0FE4 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0FE6 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0FE9 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0FED _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0FF0 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0FF3 _ C6. 40, 03, 03
        mov     eax, 1                                  ; 0FF7 _ B8, 00000001
        jmp     ?_061                                   ; 0FFC _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 1001 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1004 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1008 _ 3C, 03
        jne     ?_060                                   ; 100A _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1010 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1013 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1017 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 101A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 101D _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1021 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1024 _ 0F B6. 00
        movzx   eax, al                                 ; 1027 _ 0F B6. C0
        and     eax, 07H                                ; 102A _ 83. E0, 07
        mov     edx, eax                                ; 102D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 102F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1032 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1035 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1038 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 103C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 103F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1042 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1045 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1048 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 104C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 104F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1052 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1055 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1058 _ 0F B6. 00
        movzx   eax, al                                 ; 105B _ 0F B6. C0
        and     eax, 10H                                ; 105E _ 83. E0, 10
        test    eax, eax                                ; 1061 _ 85. C0
        jz      ?_058                                   ; 1063 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1065 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1068 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 106B _ 0D, FFFFFF00
        mov     edx, eax                                ; 1070 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1072 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1075 _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 1078 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 107B _ 0F B6. 00
        movzx   eax, al                                 ; 107E _ 0F B6. C0
        and     eax, 20H                                ; 1081 _ 83. E0, 20
        test    eax, eax                                ; 1084 _ 85. C0
        jz      ?_059                                   ; 1086 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1088 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 108B _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 108E _ 0D, FFFFFF00
        mov     edx, eax                                ; 1093 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1095 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1098 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 109B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 109E _ 8B. 40, 08
        neg     eax                                     ; 10A1 _ F7. D8
        mov     edx, eax                                ; 10A3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10A5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10A8 _ 89. 50, 08
        mov     eax, 1                                  ; 10AB _ B8, 00000001
        jmp     ?_061                                   ; 10B0 _ EB, 05

?_060:  mov     eax, 0                                  ; 10B2 _ B8, 00000000
?_061:  leave                                           ; 10B7 _ C9
        ret                                             ; 10B8 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 10B9 _ 55
        mov     ebp, esp                                ; 10BA _ 89. E5
        sub     esp, 24                                 ; 10BC _ 83. EC, 18
        movzx   eax, word [?_130]                       ; 10BF _ 0F B7. 05, 00000004(d)
        cwde                                            ; 10C6 _ 98
        mov     dword [ebp-10H], eax                    ; 10C7 _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 10CA _ 0F B7. 05, 00000006(d)
        cwde                                            ; 10D1 _ 98
        mov     dword [ebp-0CH], eax                    ; 10D2 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 10D5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 10D8 _ 8B. 40, 04
        mov     edx, eax                                ; 10DB _ 89. C2
        shr     edx, 31                                 ; 10DD _ C1. EA, 1F
        add     eax, edx                                ; 10E0 _ 01. D0
        sar     eax, 1                                  ; 10E2 _ D1. F8
        mov     edx, eax                                ; 10E4 _ 89. C2
        mov     eax, dword [mx]                         ; 10E6 _ A1, 000000F0(d)
        add     eax, edx                                ; 10EB _ 01. D0
        mov     dword [mx], eax                         ; 10ED _ A3, 000000F0(d)
        mov     eax, dword [ebp+8H]                     ; 10F2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10F5 _ 8B. 40, 08
        mov     edx, eax                                ; 10F8 _ 89. C2
        shr     edx, 31                                 ; 10FA _ C1. EA, 1F
        add     eax, edx                                ; 10FD _ 01. D0
        sar     eax, 1                                  ; 10FF _ D1. F8
        mov     edx, eax                                ; 1101 _ 89. C2
        mov     eax, dword [my]                         ; 1103 _ A1, 000000F4(d)
        add     eax, edx                                ; 1108 _ 01. D0
        mov     dword [my], eax                         ; 110A _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 110F _ A1, 000000F0(d)
        test    eax, eax                                ; 1114 _ 85. C0
        jns     ?_062                                   ; 1116 _ 79, 0A
        mov     dword [mx], 0                           ; 1118 _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 1122 _ A1, 000000F4(d)
        test    eax, eax                                ; 1127 _ 85. C0
        jns     ?_063                                   ; 1129 _ 79, 0A
        mov     dword [my], 0                           ; 112B _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 1135 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 1138 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 113B _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1140 _ 39. C2
        jge     ?_064                                   ; 1142 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 1144 _ 8B. 45, F0
        sub     eax, 9                                  ; 1147 _ 83. E8, 09
        mov     dword [mx], eax                         ; 114A _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 114F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1152 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1155 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 115A _ 39. C2
        jge     ?_065                                   ; 115C _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 115E _ 8B. 45, F4
        sub     eax, 1                                  ; 1161 _ 83. E8, 01
        mov     dword [my], eax                         ; 1164 _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 1169 _ A1, 000000F8(d)
        push    15                                      ; 116E _ 6A, 0F
        push    79                                      ; 1170 _ 6A, 4F
        push    0                                       ; 1172 _ 6A, 00
        push    0                                       ; 1174 _ 6A, 00
        push    14                                      ; 1176 _ 6A, 0E
        push    dword [ebp-10H]                         ; 1178 _ FF. 75, F0
        push    eax                                     ; 117B _ 50
        call    boxfill8                                ; 117C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1181 _ 83. C4, 1C
        mov     eax, dword [buf_back]                   ; 1184 _ A1, 000000F8(d)
        sub     esp, 8                                  ; 1189 _ 83. EC, 08
        push    ?_121                                   ; 118C _ 68, 0000001A(d)
        push    3                                       ; 1191 _ 6A, 03
        push    0                                       ; 1193 _ 6A, 00
        push    0                                       ; 1195 _ 6A, 00
        push    dword [ebp-10H]                         ; 1197 _ FF. 75, F0
        push    eax                                     ; 119A _ 50
        call    showString                              ; 119B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11A0 _ 83. C4, 20
        nop                                             ; 11A3 _ 90
        leave                                           ; 11A4 _ C9
        ret                                             ; 11A5 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 11A6 _ 55
        mov     ebp, esp                                ; 11A7 _ 89. E5
        sub     esp, 56                                 ; 11A9 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 11AC _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 11B3 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 11BA _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 11C1 _ C7. 45, DC, 00000050
        push    100                                     ; 11C8 _ 6A, 64
        push    dword [ebp+14H]                         ; 11CA _ FF. 75, 14
        push    0                                       ; 11CD _ 6A, 00
        push    0                                       ; 11CF _ 6A, 00
        push    14                                      ; 11D1 _ 6A, 0E
        push    dword [ebp+14H]                         ; 11D3 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11D6 _ FF. 75, 0C
        call    boxfill8                                ; 11D9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11DE _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 11E1 _ 8B. 45, 18
        movsx   eax, al                                 ; 11E4 _ 0F BE. C0
        sub     esp, 8                                  ; 11E7 _ 83. EC, 08
        push    ?_122                                   ; 11EA _ 68, 00000025(d)
        push    eax                                     ; 11EF _ 50
        push    dword [ebp-2CH]                         ; 11F0 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 11F3 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 11F6 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11F9 _ FF. 75, 0C
        call    showString                              ; 11FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1201 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1204 _ 8B. 45, 10
        sub     esp, 12                                 ; 1207 _ 83. EC, 0C
        push    eax                                     ; 120A _ 50
        call    intToHexStr                             ; 120B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1210 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1213 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 1216 _ 8B. 45, 18
        movsx   eax, al                                 ; 1219 _ 0F BE. C0
        sub     esp, 8                                  ; 121C _ 83. EC, 08
        push    dword [ebp-20H]                         ; 121F _ FF. 75, E0
        push    eax                                     ; 1222 _ 50
        push    dword [ebp-2CH]                         ; 1223 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1226 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1229 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 122C _ FF. 75, 0C
        call    showString                              ; 122F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1234 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1237 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 123B _ 8B. 45, 18
        movsx   eax, al                                 ; 123E _ 0F BE. C0
        sub     esp, 8                                  ; 1241 _ 83. EC, 08
        push    ?_123                                   ; 1244 _ 68, 0000002F(d)
        push    eax                                     ; 1249 _ 50
        push    dword [ebp-2CH]                         ; 124A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 124D _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1250 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1253 _ FF. 75, 0C
        call    showString                              ; 1256 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 125B _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 125E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1261 _ 8B. 00
        sub     esp, 12                                 ; 1263 _ 83. EC, 0C
        push    eax                                     ; 1266 _ 50
        call    intToHexStr                             ; 1267 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 126C _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 126F _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 1272 _ 8B. 45, 18
        movsx   eax, al                                 ; 1275 _ 0F BE. C0
        sub     esp, 8                                  ; 1278 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 127B _ FF. 75, E4
        push    eax                                     ; 127E _ 50
        push    dword [ebp-2CH]                         ; 127F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1282 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1285 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1288 _ FF. 75, 0C
        call    showString                              ; 128B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1290 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1293 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1297 _ 8B. 45, 18
        movsx   eax, al                                 ; 129A _ 0F BE. C0
        sub     esp, 8                                  ; 129D _ 83. EC, 08
        push    ?_124                                   ; 12A0 _ 68, 0000003D(d)
        push    eax                                     ; 12A5 _ 50
        push    dword [ebp-2CH]                         ; 12A6 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12A9 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 12AC _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12AF _ FF. 75, 0C
        call    showString                              ; 12B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12B7 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 12BA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 12BD _ 8B. 40, 04
        sub     esp, 12                                 ; 12C0 _ 83. EC, 0C
        push    eax                                     ; 12C3 _ 50
        call    intToHexStr                             ; 12C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12C9 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 12CC _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 12CF _ 8B. 45, 18
        movsx   eax, al                                 ; 12D2 _ 0F BE. C0
        sub     esp, 8                                  ; 12D5 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 12D8 _ FF. 75, E8
        push    eax                                     ; 12DB _ 50
        push    dword [ebp-2CH]                         ; 12DC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12DF _ FF. 75, D8
        push    dword [ebp+14H]                         ; 12E2 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12E5 _ FF. 75, 0C
        call    showString                              ; 12E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12ED _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12F0 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 12F4 _ 8B. 45, 18
        movsx   eax, al                                 ; 12F7 _ 0F BE. C0
        sub     esp, 8                                  ; 12FA _ 83. EC, 08
        push    ?_125                                   ; 12FD _ 68, 0000004C(d)
        push    eax                                     ; 1302 _ 50
        push    dword [ebp-2CH]                         ; 1303 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1306 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1309 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 130C _ FF. 75, 0C
        call    showString                              ; 130F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1314 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1317 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 131A _ 8B. 40, 08
        sub     esp, 12                                 ; 131D _ 83. EC, 0C
        push    eax                                     ; 1320 _ 50
        call    intToHexStr                             ; 1321 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1326 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1329 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 132C _ 8B. 45, 18
        movsx   eax, al                                 ; 132F _ 0F BE. C0
        sub     esp, 8                                  ; 1332 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1335 _ FF. 75, EC
        push    eax                                     ; 1338 _ 50
        push    dword [ebp-2CH]                         ; 1339 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 133C _ FF. 75, D8
        push    dword [ebp+14H]                         ; 133F _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1342 _ FF. 75, 0C
        call    showString                              ; 1345 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 134A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 134D _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1351 _ 8B. 45, 18
        movsx   eax, al                                 ; 1354 _ 0F BE. C0
        sub     esp, 8                                  ; 1357 _ 83. EC, 08
        push    ?_126                                   ; 135A _ 68, 00000058(d)
        push    eax                                     ; 135F _ 50
        push    dword [ebp-2CH]                         ; 1360 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1363 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1366 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1369 _ FF. 75, 0C
        call    showString                              ; 136C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1371 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1374 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1377 _ 8B. 40, 0C
        sub     esp, 12                                 ; 137A _ 83. EC, 0C
        push    eax                                     ; 137D _ 50
        call    intToHexStr                             ; 137E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1383 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1386 _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 1389 _ 8B. 45, 18
        movsx   eax, al                                 ; 138C _ 0F BE. C0
        sub     esp, 8                                  ; 138F _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1392 _ FF. 75, F0
        push    eax                                     ; 1395 _ 50
        push    dword [ebp-2CH]                         ; 1396 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1399 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 139C _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 139F _ FF. 75, 0C
        call    showString                              ; 13A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A7 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 13AA _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 13AE _ 8B. 45, 18
        movsx   eax, al                                 ; 13B1 _ 0F BE. C0
        sub     esp, 8                                  ; 13B4 _ 83. EC, 08
        push    ?_127                                   ; 13B7 _ 68, 00000065(d)
        push    eax                                     ; 13BC _ 50
        push    dword [ebp-2CH]                         ; 13BD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13C0 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 13C3 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 13C6 _ FF. 75, 0C
        call    showString                              ; 13C9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13CE _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 13D1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 13D4 _ 8B. 40, 10
        sub     esp, 12                                 ; 13D7 _ 83. EC, 0C
        push    eax                                     ; 13DA _ 50
        call    intToHexStr                             ; 13DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13E0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 13E3 _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 13E6 _ 8B. 45, 18
        movsx   eax, al                                 ; 13E9 _ 0F BE. C0
        sub     esp, 8                                  ; 13EC _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 13EF _ FF. 75, F4
        push    eax                                     ; 13F2 _ 50
        push    dword [ebp-2CH]                         ; 13F3 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 13F6 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 13F9 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 13FC _ FF. 75, 0C
        call    showString                              ; 13FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1404 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1407 _ 83. 45, D4, 10
        nop                                             ; 140B _ 90
        leave                                           ; 140C _ C9
        ret                                             ; 140D _ C3
; showMemInfo End of function

memman_init:; Function begin
        push    ebp                                     ; 140E _ 55
        mov     ebp, esp                                ; 140F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1411 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1414 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 141A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 141D _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1424 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1427 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 142E _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1431 _ C7. 40, 0C, 00000000
        nop                                             ; 1438 _ 90
        pop     ebp                                     ; 1439 _ 5D
        ret                                             ; 143A _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 143B _ 55
        mov     ebp, esp                                ; 143C _ 89. E5
        sub     esp, 16                                 ; 143E _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1441 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1448 _ C7. 45, FC, 00000000
        jmp     ?_067                                   ; 144F _ EB, 14

?_066:  mov     eax, dword [ebp+8H]                     ; 1451 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1454 _ 8B. 55, FC
        add     edx, 2                                  ; 1457 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 145A _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 145E _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1461 _ 83. 45, FC, 01
?_067:  mov     eax, dword [ebp+8H]                     ; 1465 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1468 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 146A _ 39. 45, FC
        jl      ?_066                                   ; 146D _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 146F _ 8B. 45, F8
        leave                                           ; 1472 _ C9
        ret                                             ; 1473 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1474 _ 55
        mov     ebp, esp                                ; 1475 _ 89. E5
        sub     esp, 16                                 ; 1477 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 147A _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 1481 _ C7. 45, F8, 00000000
        jmp     ?_071                                   ; 1488 _ EB, 67

?_068:  mov     eax, dword [ebp+8H]                     ; 148A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 148D _ 8B. 55, F8
        add     edx, 2                                  ; 1490 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1493 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1497 _ 39. 45, 0C
        ja      ?_070                                   ; 149A _ 77, 51
        mov     eax, dword [ebp+8H]                     ; 149C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 149F _ 8B. 55, F8
        add     edx, 2                                  ; 14A2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 14A5 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 14A8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 14AB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14AE _ 8B. 55, F8
        add     edx, 2                                  ; 14B1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 14B4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 14B8 _ 2B. 45, 0C
        mov     edx, eax                                ; 14BB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14BD _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 14C0 _ 8B. 4D, F8
        add     ecx, 2                                  ; 14C3 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 14C6 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 14CA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14CD _ 8B. 55, F8
        add     edx, 2                                  ; 14D0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 14D3 _ 8B. 44 D0, 04
        test    eax, eax                                ; 14D7 _ 85. C0
        jnz     ?_069                                   ; 14D9 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 14DB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 14DE _ 8B. 00
        lea     edx, [eax-1H]                           ; 14E0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 14E3 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 14E6 _ 89. 10
?_069:  mov     eax, dword [ebp-4H]                     ; 14E8 _ 8B. 45, FC
        jmp     ?_072                                   ; 14EB _ EB, 13

?_070:  add     dword [ebp-8H], 1                       ; 14ED _ 83. 45, F8, 01
?_071:  mov     eax, dword [ebp+8H]                     ; 14F1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 14F4 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 14F6 _ 39. 45, F8
        jl      ?_068                                   ; 14F9 _ 7C, 8F
        mov     eax, 0                                  ; 14FB _ B8, 00000000
?_072:  leave                                           ; 1500 _ C9
        ret                                             ; 1501 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1502 _ 55
        mov     ebp, esp                                ; 1503 _ 89. E5
        sub     esp, 16                                 ; 1505 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1508 _ 8B. 45, 0C
        add     eax, 4095                               ; 150B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1510 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1515 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1518 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 151B _ FF. 75, 08
        call    memman_alloc_FF                         ; 151E _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1523 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1526 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1529 _ 8B. 45, FC
        leave                                           ; 152C _ C9
        ret                                             ; 152D _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 152E _ 55
        mov     ebp, esp                                ; 152F _ 89. E5
        push    ebx                                     ; 1531 _ 53
        sub     esp, 16                                 ; 1532 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1535 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 153C _ EB, 15

?_073:  mov     eax, dword [ebp+8H]                     ; 153E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1541 _ 8B. 55, F4
        add     edx, 2                                  ; 1544 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1547 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 154A _ 39. 45, 0C
        jc      ?_075                                   ; 154D _ 72, 10
        add     dword [ebp-0CH], 1                      ; 154F _ 83. 45, F4, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 1553 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1556 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1558 _ 39. 45, F4
        jl      ?_073                                   ; 155B _ 7C, E1
        jmp     ?_076                                   ; 155D _ EB, 01

?_075:  nop                                             ; 155F _ 90
?_076:  cmp     dword [ebp-0CH], 0                      ; 1560 _ 83. 7D, F4, 00
        jle     ?_078                                   ; 1564 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 156A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 156D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1570 _ 8B. 45, 08
        add     edx, 2                                  ; 1573 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1576 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1579 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 157C _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 157F _ 8B. 45, 08
        add     ecx, 2                                  ; 1582 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1585 _ 8B. 44 C8, 04
        add     eax, edx                                ; 1589 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 158B _ 39. 45, 0C
        jne     ?_078                                   ; 158E _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1594 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1597 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 159A _ 8B. 45, 08
        add     edx, 2                                  ; 159D _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 15A0 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 15A4 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 15A7 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 15AA _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 15AD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 15B0 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 15B3 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 15B6 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 15BA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15BD _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 15BF _ 39. 45, F4
        jge     ?_077                                   ; 15C2 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 15C4 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 15C7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 15CA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 15CD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 15D0 _ 8B. 55, F4
        add     edx, 2                                  ; 15D3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 15D6 _ 8B. 04 D0
        cmp     ecx, eax                                ; 15D9 _ 39. C1
        jnz     ?_077                                   ; 15DB _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 15DD _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 15E0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 15E3 _ 8B. 45, 08
        add     edx, 2                                  ; 15E6 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 15E9 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 15ED _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 15F0 _ 8B. 4D, F4
        add     ecx, 2                                  ; 15F3 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 15F6 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 15FA _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 15FD _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1600 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1603 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1606 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1609 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 160D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1610 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1612 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1615 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1618 _ 89. 10
?_077:  mov     eax, 0                                  ; 161A _ B8, 00000000
        jmp     ?_084                                   ; 161F _ E9, 0000011C

?_078:  mov     eax, dword [ebp+8H]                     ; 1624 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1627 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1629 _ 39. 45, F4
        jge     ?_079                                   ; 162C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 162E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1631 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1634 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1637 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 163A _ 8B. 55, F4
        add     edx, 2                                  ; 163D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1640 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1643 _ 39. C1
        jnz     ?_079                                   ; 1645 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1647 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 164A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 164D _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1650 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1653 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1656 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1659 _ 8B. 55, F4
        add     edx, 2                                  ; 165C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 165F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1663 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1666 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1669 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 166C _ 8B. 55, F4
        add     edx, 2                                  ; 166F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1672 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1676 _ B8, 00000000
        jmp     ?_084                                   ; 167B _ E9, 000000C0

?_079:  mov     eax, dword [ebp+8H]                     ; 1680 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1683 _ 8B. 00
        cmp     eax, 4095                               ; 1685 _ 3D, 00000FFF
        jg      ?_083                                   ; 168A _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1690 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1693 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1695 _ 89. 45, F8
        jmp     ?_081                                   ; 1698 _ EB, 28

?_080:  mov     eax, dword [ebp-8H]                     ; 169A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 169D _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 16A0 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 16A3 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 16A6 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 16A9 _ 8B. 45, 08
        add     edx, 2                                  ; 16AC _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 16AF _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 16B2 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 16B4 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 16B7 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 16BA _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 16BE _ 83. 6D, F8, 01
?_081:  mov     eax, dword [ebp-8H]                     ; 16C2 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 16C5 _ 3B. 45, F4
        jg      ?_080                                   ; 16C8 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 16CA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16CD _ 8B. 00
        lea     edx, [eax+1H]                           ; 16CF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 16D2 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 16D5 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 16D7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16DA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16DD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16E0 _ 8B. 00
        cmp     edx, eax                                ; 16E2 _ 39. C2
        jge     ?_082                                   ; 16E4 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 16E6 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 16E9 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 16EB _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 16EE _ 89. 50, 04
?_082:  mov     eax, dword [ebp+8H]                     ; 16F1 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 16F4 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 16F7 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 16FA _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 16FD _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1700 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1703 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1706 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1709 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 170C _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1710 _ B8, 00000000
        jmp     ?_084                                   ; 1715 _ EB, 29

?_083:  mov     eax, dword [ebp+8H]                     ; 1717 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 171A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 171D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1720 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1723 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1726 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1729 _ 8B. 40, 08
        mov     edx, eax                                ; 172C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 172E _ 8B. 45, 10
        add     eax, edx                                ; 1731 _ 01. D0
        mov     edx, eax                                ; 1733 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1735 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1738 _ 89. 50, 08
        mov     eax, 4294967295                         ; 173B _ B8, FFFFFFFF
?_084:  add     esp, 16                                 ; 1740 _ 83. C4, 10
        pop     ebx                                     ; 1743 _ 5B
        pop     ebp                                     ; 1744 _ 5D
        ret                                             ; 1745 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1746 _ 55
        mov     ebp, esp                                ; 1747 _ 89. E5
        sub     esp, 16                                 ; 1749 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 174C _ 8B. 45, 10
        add     eax, 4095                               ; 174F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1754 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1759 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 175C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 175F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1762 _ FF. 75, 08
        call    memman_free                             ; 1765 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 176A _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 176D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1770 _ 8B. 45, FC
        leave                                           ; 1773 _ C9
        ret                                             ; 1774 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1775 _ 55
        mov     ebp, esp                                ; 1776 _ 89. E5
        sub     esp, 24                                 ; 1778 _ 83. EC, 18
        sub     esp, 8                                  ; 177B _ 83. EC, 08
        push    9232                                    ; 177E _ 68, 00002410
        push    dword [ebp+8H]                          ; 1783 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1786 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 178B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 178E _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1791 _ 83. 7D, F4, 00
        jnz     ?_085                                   ; 1795 _ 75, 07
        mov     eax, 0                                  ; 1797 _ B8, 00000000
        jmp     ?_088                                   ; 179C _ EB, 54

?_085:  mov     eax, dword [ebp-0CH]                    ; 179E _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 17A1 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 17A4 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 17A6 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 17A9 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 17AC _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 17AF _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 17B2 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 17B5 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 17B8 _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 17BB _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 17C2 _ C7. 45, F0, 00000000
        jmp     ?_087                                   ; 17C9 _ EB, 1B

?_086:  mov     eax, dword [ebp-0CH]                    ; 17CB _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 17CE _ 8B. 55, F0
        add     edx, 33                                 ; 17D1 _ 83. C2, 21
        shl     edx, 5                                  ; 17D4 _ C1. E2, 05
        add     eax, edx                                ; 17D7 _ 01. D0
        add     eax, 12                                 ; 17D9 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 17DC _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 17E2 _ 83. 45, F0, 01
?_087:  cmp     dword [ebp-10H], 255                    ; 17E6 _ 81. 7D, F0, 000000FF
        jle     ?_086                                   ; 17ED _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 17EF _ 8B. 45, F4
?_088:  leave                                           ; 17F2 _ C9
        ret                                             ; 17F3 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 17F4 _ 55
        mov     ebp, esp                                ; 17F5 _ 89. E5
        sub     esp, 16                                 ; 17F7 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 17FA _ C7. 45, F8, 00000000
        jmp     ?_091                                   ; 1801 _ EB, 48

?_089:  mov     eax, dword [ebp+8H]                     ; 1803 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1806 _ 8B. 55, F8
        add     edx, 33                                 ; 1809 _ 83. C2, 21
        shl     edx, 5                                  ; 180C _ C1. E2, 05
        add     eax, edx                                ; 180F _ 01. D0
        add     eax, 12                                 ; 1811 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1814 _ 8B. 00
        test    eax, eax                                ; 1816 _ 85. C0
        jnz     ?_090                                   ; 1818 _ 75, 2D
        mov     eax, dword [ebp-8H]                     ; 181A _ 8B. 45, F8
        shl     eax, 5                                  ; 181D _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1820 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1826 _ 8B. 45, 08
        add     eax, edx                                ; 1829 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 182B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 182E _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1831 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1838 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 183B _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1842 _ 8B. 45, FC
        jmp     ?_092                                   ; 1845 _ EB, 12

?_090:  add     dword [ebp-8H], 1                       ; 1847 _ 83. 45, F8, 01
?_091:  cmp     dword [ebp-8H], 255                     ; 184B _ 81. 7D, F8, 000000FF
        jle     ?_089                                   ; 1852 _ 7E, AF
        mov     eax, 0                                  ; 1854 _ B8, 00000000
?_092:  leave                                           ; 1859 _ C9
        ret                                             ; 185A _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 185B _ 55
        mov     ebp, esp                                ; 185C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 185E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1861 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1864 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1866 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1869 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 186C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 186F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1872 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1875 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1878 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 187B _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 187E _ 89. 50, 14
        nop                                             ; 1881 _ 90
        pop     ebp                                     ; 1882 _ 5D
        ret                                             ; 1883 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 1884 _ 55
        mov     ebp, esp                                ; 1885 _ 89. E5
        sub     esp, 40                                 ; 1887 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 188A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 188D _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1890 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1893 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1896 _ 8B. 40, 0C
        add     eax, 1                                  ; 1899 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 189C _ 39. 45, 10
        jle     ?_093                                   ; 189F _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 18A1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18A4 _ 8B. 40, 0C
        add     eax, 1                                  ; 18A7 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 18AA _ 89. 45, 10
?_093:  cmp     dword [ebp+10H], -1                     ; 18AD _ 83. 7D, 10, FF
        jge     ?_094                                   ; 18B1 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 18B3 _ C7. 45, 10, FFFFFFFF
?_094:  mov     eax, dword [ebp+0CH]                    ; 18BA _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 18BD _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 18C0 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 18C3 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 18C6 _ 3B. 45, 10
        jle     ?_102                                   ; 18C9 _ 0F 8E, 000000C9
        cmp     dword [ebp+10H], 0                      ; 18CF _ 83. 7D, 10, 00
        js      ?_097                                   ; 18D3 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 18D5 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 18D8 _ 89. 45, E4
        jmp     ?_096                                   ; 18DB _ EB, 31

?_095:  mov     eax, dword [ebp-1CH]                    ; 18DD _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 18E0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 18E3 _ 8B. 45, 08
        add     edx, 4                                  ; 18E6 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 18E9 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 18EC _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 18EF _ 8B. 4D, E4
        add     ecx, 4                                  ; 18F2 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 18F5 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 18F8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 18FB _ 8B. 55, E4
        add     edx, 4                                  ; 18FE _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1901 _ 8B. 04 90
        mov     edx, dword [ebp-1CH]                    ; 1904 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1907 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 190A _ 83. 6D, E4, 01
?_096:  mov     eax, dword [ebp-1CH]                    ; 190E _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1911 _ 3B. 45, 10
        jg      ?_095                                   ; 1914 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1916 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1919 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 191C _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 191F _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1922 _ 89. 14 88
        jmp     ?_101                                   ; 1925 _ EB, 5E

?_097:  mov     eax, dword [ebp+8H]                     ; 1927 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 192A _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 192D _ 39. 45, F4
        jge     ?_100                                   ; 1930 _ 7D, 44
        mov     eax, dword [ebp-0CH]                    ; 1932 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1935 _ 89. 45, E8
        jmp     ?_099                                   ; 1938 _ EB, 31

?_098:  mov     eax, dword [ebp-18H]                    ; 193A _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 193D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1940 _ 8B. 45, 08
        add     edx, 4                                  ; 1943 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1946 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1949 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 194C _ 8B. 4D, E8
        add     ecx, 4                                  ; 194F _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1952 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1955 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1958 _ 8B. 55, E8
        add     edx, 4                                  ; 195B _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 195E _ 8B. 04 90
        mov     edx, dword [ebp-18H]                    ; 1961 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1964 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1967 _ 83. 45, E8, 01
?_099:  mov     eax, dword [ebp+8H]                     ; 196B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 196E _ 8B. 40, 0C
        cmp     dword [ebp-18H], eax                    ; 1971 _ 39. 45, E8
        jl      ?_098                                   ; 1974 _ 7C, C4
?_100:  mov     eax, dword [ebp+8H]                     ; 1976 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1979 _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 197C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 197F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1982 _ 89. 50, 0C
?_101:  sub     esp, 12                                 ; 1985 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1988 _ FF. 75, 08
        call    sheet_refresh                           ; 198B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1990 _ 83. C4, 10
        jmp     ?_109                                   ; 1993 _ E9, 000000E0

?_102:  mov     eax, dword [ebp-0CH]                    ; 1998 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 199B _ 3B. 45, 10
        jge     ?_109                                   ; 199E _ 0F 8D, 000000D4
        cmp     dword [ebp-0CH], 0                      ; 19A4 _ 83. 7D, F4, 00
        js      ?_105                                   ; 19A8 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 19AA _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 19AD _ 89. 45, EC
        jmp     ?_104                                   ; 19B0 _ EB, 31

?_103:  mov     eax, dword [ebp-14H]                    ; 19B2 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 19B5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 19B8 _ 8B. 45, 08
        add     edx, 4                                  ; 19BB _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 19BE _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 19C1 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 19C4 _ 8B. 4D, EC
        add     ecx, 4                                  ; 19C7 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 19CA _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 19CD _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 19D0 _ 8B. 55, EC
        add     edx, 4                                  ; 19D3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 19D6 _ 8B. 04 90
        mov     edx, dword [ebp-14H]                    ; 19D9 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 19DC _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 19DF _ 83. 45, EC, 01
?_104:  mov     eax, dword [ebp-14H]                    ; 19E3 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 19E6 _ 3B. 45, 10
        jl      ?_103                                   ; 19E9 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 19EB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 19EE _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 19F1 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 19F4 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 19F7 _ 89. 14 88
        jmp     ?_108                                   ; 19FA _ EB, 6E

?_105:  cmp     dword [ebp-0CH], 0                      ; 19FC _ 83. 7D, F4, 00
        jns     ?_108                                   ; 1A00 _ 79, 68
        mov     eax, dword [ebp+8H]                     ; 1A02 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A05 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1A08 _ 89. 45, F0
        jmp     ?_107                                   ; 1A0B _ EB, 37

?_106:  mov     eax, dword [ebp-10H]                    ; 1A0D _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1A10 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1A13 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1A16 _ 8B. 55, F0
        add     edx, 4                                  ; 1A19 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1A1C _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1A1F _ 8B. 45, 08
        add     ecx, 4                                  ; 1A22 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1A25 _ 89. 14 88
        mov     eax, dword [ebp-10H]                    ; 1A28 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1A2B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A2E _ 8B. 45, 08
        add     edx, 4                                  ; 1A31 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1A34 _ 8B. 04 90
        mov     edx, dword [ebp-10H]                    ; 1A37 _ 8B. 55, F0
        add     edx, 1                                  ; 1A3A _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1A3D _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1A40 _ 83. 6D, F0, 01
?_107:  mov     eax, dword [ebp-10H]                    ; 1A44 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1A47 _ 3B. 45, 10
        jge     ?_106                                   ; 1A4A _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1A4C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A4F _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1A52 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1A55 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1A58 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1A5B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A5E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1A61 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A64 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1A67 _ 89. 50, 0C
?_108:  sub     esp, 12                                 ; 1A6A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1A6D _ FF. 75, 08
        call    sheet_refresh                           ; 1A70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A75 _ 83. C4, 10
?_109:  nop                                             ; 1A78 _ 90
        leave                                           ; 1A79 _ C9
        ret                                             ; 1A7A _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 1A7B _ 55
        mov     ebp, esp                                ; 1A7C _ 89. E5
        sub     esp, 48                                 ; 1A7E _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1A81 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A84 _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 1A86 _ 89. 45, EC
        mov     dword [ebp-20H], 0                      ; 1A89 _ C7. 45, E0, 00000000
        jmp     ?_116                                   ; 1A90 _ E9, 000000B8

?_110:  mov     eax, dword [ebp+8H]                     ; 1A95 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 1A98 _ 8B. 55, E0
        add     edx, 4                                  ; 1A9B _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1A9E _ 8B. 04 90
        mov     dword [ebp-10H], eax                    ; 1AA1 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1AA4 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 1AA7 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1AA9 _ 89. 45, F4
        mov     dword [ebp-1CH], 0                      ; 1AAC _ C7. 45, E4, 00000000
        jmp     ?_115                                   ; 1AB3 _ E9, 00000082

?_111:  mov     eax, dword [ebp-10H]                    ; 1AB8 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 1ABB _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 1ABE _ 8B. 45, E4
        add     eax, edx                                ; 1AC1 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1AC3 _ 89. 45, F8
        mov     dword [ebp-18H], 0                      ; 1AC6 _ C7. 45, E8, 00000000
        jmp     ?_114                                   ; 1ACD _ EB, 5C

?_112:  mov     eax, dword [ebp-10H]                    ; 1ACF _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 1AD2 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 1AD5 _ 8B. 45, E8
        add     eax, edx                                ; 1AD8 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1ADA _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 1ADD _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1AE0 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1AE3 _ 0F AF. 45, E4
        mov     edx, eax                                ; 1AE7 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1AE9 _ 8B. 45, E8
        add     eax, edx                                ; 1AEC _ 01. D0
        mov     edx, eax                                ; 1AEE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1AF0 _ 8B. 45, F4
        add     eax, edx                                ; 1AF3 _ 01. D0
        movzx   eax, byte [eax]                         ; 1AF5 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1AF8 _ 88. 45, DF
        movzx   edx, byte [ebp-21H]                     ; 1AFB _ 0F B6. 55, DF
        mov     eax, dword [ebp-10H]                    ; 1AFF _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 1B02 _ 8B. 40, 14
        cmp     edx, eax                                ; 1B05 _ 39. C2
        jz      ?_113                                   ; 1B07 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 1B09 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1B0C _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 1B0F _ 0F AF. 45, F8
        mov     edx, eax                                ; 1B13 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1B15 _ 8B. 45, FC
        add     eax, edx                                ; 1B18 _ 01. D0
        mov     edx, eax                                ; 1B1A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1B1C _ 8B. 45, EC
        add     edx, eax                                ; 1B1F _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1B21 _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1B25 _ 88. 02
?_113:  add     dword [ebp-18H], 1                      ; 1B27 _ 83. 45, E8, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 1B2B _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1B2E _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 1B31 _ 39. 45, E8
        jl      ?_112                                   ; 1B34 _ 7C, 99
        add     dword [ebp-1CH], 1                      ; 1B36 _ 83. 45, E4, 01
?_115:  mov     eax, dword [ebp-10H]                    ; 1B3A _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 1B3D _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 1B40 _ 39. 45, E4
        jl      ?_111                                   ; 1B43 _ 0F 8C, FFFFFF6F
        add     dword [ebp-20H], 1                      ; 1B49 _ 83. 45, E0, 01
?_116:  mov     eax, dword [ebp+8H]                     ; 1B4D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B50 _ 8B. 40, 0C
        cmp     dword [ebp-20H], eax                    ; 1B53 _ 39. 45, E0
        jle     ?_110                                   ; 1B56 _ 0F 8E, FFFFFF39
        mov     eax, 0                                  ; 1B5C _ B8, 00000000
        leave                                           ; 1B61 _ C9
        ret                                             ; 1B62 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1B63 _ 55
        mov     ebp, esp                                ; 1B64 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 1B66 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1B69 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1B6C _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B6F _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1B72 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1B75 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B78 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1B7B _ 8B. 40, 18
        test    eax, eax                                ; 1B7E _ 85. C0
        js      ?_117                                   ; 1B80 _ 78, 0B
        push    dword [ebp+8H]                          ; 1B82 _ FF. 75, 08
        call    sheet_refresh                           ; 1B85 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1B8A _ 83. C4, 04
?_117:  nop                                             ; 1B8D _ 90
        leave                                           ; 1B8E _ C9
        ret                                             ; 1B8F _ C3
; sheet_slide End of function



?_118:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_119:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_120:                                                  ; byte
        db 4FH, 4BH, 00H                                ; 0017 _ OK.

?_121:                                                  ; byte
        db 6DH, 6FH, 75H, 73H, 65H, 20H, 6DH, 6FH       ; 001A _ mouse mo
        db 76H, 65H, 00H                                ; 0022 _ ve.

?_122:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0025 _ Page is:
        db 20H, 00H                                     ; 002D _  .

?_123:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002F _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0037 _ Low: .

?_124:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003D _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0045 _ High: .

?_125:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 004C _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0054 _ w: .

?_126:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0058 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0060 _ gh: .

?_127:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0065 _ Type: .



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_128:  db 00H                                          ; 0012 _ .

?_129:  db 00H, 00H, 00H, 00H, 00H                      ; 0013 _ .....

memman: dd 00100000H, 00000000H                         ; 0018 _ 1048576 0 

table_rgb.1659:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1704:                                            ; byte
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

?_130:  resw    1                                       ; 0004

?_131:  resw    1                                       ; 0006

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

str.1747:                                               ; byte
        resb    1                                       ; 0200

?_132:  resb    9                                       ; 0201

?_133:  resb    2                                       ; 020A

line.1794:                                              ; dword
        resd    1                                       ; 020C

pos.1793: resd  1                                       ; 0210


