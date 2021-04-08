; Disassembly of file: ckernel.o
; Thu Apr  8 15:07:58 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 100                                ; 0004 _ 83. EC, 64
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0007 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 000D _ 89. 45, F4
        xor     eax, eax                                ; 0010 _ 31. C0
        sub     esp, 12                                 ; 0012 _ 83. EC, 0C
        push    bootInfo                                ; 0015 _ 68, 00000000(d)
        call    initBootInfo                            ; 001A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 001F _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0022 _ A1, 00000000(d)
        mov     dword [ebp-54H], eax                    ; 0027 _ 89. 45, AC
        movzx   eax, word [?_170]                       ; 002A _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-50H], eax                    ; 0032 _ 89. 45, B0
        movzx   eax, word [?_171]                       ; 0035 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003C _ 98
        mov     dword [ebp-4CH], eax                    ; 003D _ 89. 45, B4
        mov     dword [ebp-48H], 0                      ; 0040 _ C7. 45, B8, 00000000
        mov     dword [ebp-44H], 0                      ; 0047 _ C7. 45, BC, 00000000
        call    init_pit                                ; 004E _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0053 _ 83. EC, 04
        push    timerbuf                                ; 0056 _ 68, 00000218(d)
        push    8                                       ; 005B _ 6A, 08
        push    timerInfo                               ; 005D _ 68, 00000200(d)
        call    fifo8_init                              ; 0062 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0067 _ 83. C4, 10
        call    timer_alloc                             ; 006A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 006F _ 89. 45, C0
        sub     esp, 4                                  ; 0072 _ 83. EC, 04
        push    1                                       ; 0075 _ 6A, 01
        push    timerInfo                               ; 0077 _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 007C _ FF. 75, C0
        call    timer_init                              ; 007F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0084 _ 83. C4, 10
        sub     esp, 8                                  ; 0087 _ 83. EC, 08
        push    500                                     ; 008A _ 68, 000001F4
        push    dword [ebp-40H]                         ; 008F _ FF. 75, C0
        call    timer_setTime                           ; 0092 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0097 _ 83. C4, 10
        sub     esp, 4                                  ; 009A _ 83. EC, 04
        push    timerbuf2.1692                          ; 009D _ 68, 00000238(d)
        push    8                                       ; 00A2 _ 6A, 08
        push    timerInfo2.1690                         ; 00A4 _ 68, 00000220(d)
        call    fifo8_init                              ; 00A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AE _ 83. C4, 10
        call    timer_alloc                             ; 00B1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 00B6 _ 89. 45, C4
        sub     esp, 4                                  ; 00B9 _ 83. EC, 04
        push    1                                       ; 00BC _ 6A, 01
        push    timerInfo2.1690                         ; 00BE _ 68, 00000220(d)
        push    dword [ebp-3CH]                         ; 00C3 _ FF. 75, C4
        call    timer_init                              ; 00C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00CB _ 83. C4, 10
        sub     esp, 8                                  ; 00CE _ 83. EC, 08
        push    300                                     ; 00D1 _ 68, 0000012C
        push    dword [ebp-3CH]                         ; 00D6 _ FF. 75, C4
        call    timer_setTime                           ; 00D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DE _ 83. C4, 10
        sub     esp, 4                                  ; 00E1 _ 83. EC, 04
        push    timerbuf3.1693                          ; 00E4 _ 68, 00000258(d)
        push    8                                       ; 00E9 _ 6A, 08
        push    timerInfo3.1691                         ; 00EB _ 68, 00000240(d)
        call    fifo8_init                              ; 00F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00F5 _ 83. C4, 10
        call    timer_alloc                             ; 00F8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 00FD _ 89. 45, C8
        sub     esp, 4                                  ; 0100 _ 83. EC, 04
        push    1                                       ; 0103 _ 6A, 01
        push    timerInfo3.1691                         ; 0105 _ 68, 00000240(d)
        push    dword [ebp-38H]                         ; 010A _ FF. 75, C8
        call    timer_init                              ; 010D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0112 _ 83. C4, 10
        sub     esp, 8                                  ; 0115 _ 83. EC, 08
        push    100                                     ; 0118 _ 6A, 64
        push    dword [ebp-38H]                         ; 011A _ FF. 75, C8
        call    timer_setTime                           ; 011D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0122 _ 83. C4, 10
        sub     esp, 4                                  ; 0125 _ 83. EC, 04
        push    mousebuf                                ; 0128 _ 68, 00000060(d)
        push    128                                     ; 012D _ 68, 00000080
        push    mouseInfo                               ; 0132 _ 68, 00000020(d)
        call    fifo8_init                              ; 0137 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 013C _ 83. C4, 10
        sub     esp, 4                                  ; 013F _ 83. EC, 04
        push    keybuf                                  ; 0142 _ 68, 00000040(d)
        push    32                                      ; 0147 _ 6A, 20
        push    keyInfo                                 ; 0149 _ 68, 00000008(d)
        call    fifo8_init                              ; 014E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0153 _ 83. C4, 10
        call    init_palette                            ; 0156 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 015B _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 0160 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0165 _ 89. 45, CC
        call    get_memory_block_count                  ; 0168 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-30H], eax                    ; 016D _ 89. 45, D0
        mov     eax, dword [memman]                     ; 0170 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0175 _ 83. EC, 0C
        push    eax                                     ; 0178 _ 50
        call    memman_init                             ; 0179 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 017E _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0181 _ A1, 00000008(d)
        sub     esp, 4                                  ; 0186 _ 83. EC, 04
        push    1072594944                              ; 0189 _ 68, 3FEE8000
        push    1081344                                 ; 018E _ 68, 00108000
        push    eax                                     ; 0193 _ 50
        call    memman_free                             ; 0194 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0199 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 019C _ A1, 00000008(d)
        sub     esp, 12                                 ; 01A1 _ 83. EC, 0C
        push    eax                                     ; 01A4 _ 50
        call    memman_total                            ; 01A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01AA _ 83. C4, 10
        shr     eax, 20                                 ; 01AD _ C1. E8, 14
        mov     dword [ebp-2CH], eax                    ; 01B0 _ 89. 45, D4
        mov     eax, dword [ebp-2CH]                    ; 01B3 _ 8B. 45, D4
        sub     esp, 12                                 ; 01B6 _ 83. EC, 0C
        push    eax                                     ; 01B9 _ 50
        call    intToHexStr                             ; 01BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01BF _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 01C2 _ 89. 45, D8
        sub     esp, 8                                  ; 01C5 _ 83. EC, 08
        push    ?_156                                   ; 01C8 _ 68, 00000000(d)
        push    3                                       ; 01CD _ 6A, 03
        push    0                                       ; 01CF _ 6A, 00
        push    0                                       ; 01D1 _ 6A, 00
        push    dword [ebp-48H]                         ; 01D3 _ FF. 75, B8
        push    dword [ebp-24H]                         ; 01D6 _ FF. 75, DC
        call    showString                              ; 01D9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01DE _ 83. C4, 20
        sub     esp, 8                                  ; 01E1 _ 83. EC, 08
        push    dword [ebp-28H]                         ; 01E4 _ FF. 75, D8
        push    3                                       ; 01E7 _ 6A, 03
        push    0                                       ; 01E9 _ 6A, 00
        push    152                                     ; 01EB _ 68, 00000098
        push    dword [ebp-48H]                         ; 01F0 _ FF. 75, B8
        push    dword [ebp-24H]                         ; 01F3 _ FF. 75, DC
        call    showString                              ; 01F6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01FB _ 83. C4, 20
        sub     esp, 8                                  ; 01FE _ 83. EC, 08
        push    ?_157                                   ; 0201 _ 68, 00000014(d)
        push    3                                       ; 0206 _ 6A, 03
        push    0                                       ; 0208 _ 6A, 00
        push    240                                     ; 020A _ 68, 000000F0
        push    dword [ebp-48H]                         ; 020F _ FF. 75, B8
        push    dword [ebp-24H]                         ; 0212 _ FF. 75, DC
        call    showString                              ; 0215 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 021A _ 83. C4, 20
        mov     eax, dword [memman]                     ; 021D _ A1, 00000008(d)
        push    dword [ebp-4CH]                         ; 0222 _ FF. 75, B4
        push    dword [ebp-50H]                         ; 0225 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0228 _ FF. 75, AC
        push    eax                                     ; 022B _ 50
        call    shtctl_init                             ; 022C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0231 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0234 _ 89. 45, DC
        sub     esp, 12                                 ; 0237 _ 83. EC, 0C
        push    dword [ebp-24H]                         ; 023A _ FF. 75, DC
        call    sheet_alloc                             ; 023D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0242 _ 83. C4, 10
        mov     dword [ebp-48H], eax                    ; 0245 _ 89. 45, B8
        sub     esp, 12                                 ; 0248 _ 83. EC, 0C
        push    dword [ebp-24H]                         ; 024B _ FF. 75, DC
        call    sheet_alloc                             ; 024E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0253 _ 83. C4, 10
        mov     dword [ebp-44H], eax                    ; 0256 _ 89. 45, BC
        mov     eax, dword [ebp-50H]                    ; 0259 _ 8B. 45, B0
        imul    eax, dword [ebp-4CH]                    ; 025C _ 0F AF. 45, B4
        mov     edx, eax                                ; 0260 _ 89. C2
        mov     eax, dword [memman]                     ; 0262 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0267 _ 83. EC, 08
        push    edx                                     ; 026A _ 52
        push    eax                                     ; 026B _ 50
        call    memman_alloc_4K                         ; 026C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0271 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0274 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0279 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 027E _ 83. EC, 04
        push    dword [ebp-4CH]                         ; 0281 _ FF. 75, B4
        push    dword [ebp-50H]                         ; 0284 _ FF. 75, B0
        push    eax                                     ; 0287 _ 50
        call    init_screen8                            ; 0288 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 028D _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 0290 _ A1, 000000F8(d)
        sub     esp, 12                                 ; 0295 _ 83. EC, 0C
        push    99                                      ; 0298 _ 6A, 63
        push    dword [ebp-4CH]                         ; 029A _ FF. 75, B4
        push    dword [ebp-50H]                         ; 029D _ FF. 75, B0
        push    eax                                     ; 02A0 _ 50
        push    dword [ebp-48H]                         ; 02A1 _ FF. 75, B8
        call    sheet_setbuf                            ; 02A4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02A9 _ 83. C4, 20
        sub     esp, 12                                 ; 02AC _ 83. EC, 0C
        push    99                                      ; 02AF _ 6A, 63
        push    16                                      ; 02B1 _ 6A, 10
        push    16                                      ; 02B3 _ 6A, 10
        push    buf_mouse                               ; 02B5 _ 68, 00000100(d)
        push    dword [ebp-44H]                         ; 02BA _ FF. 75, BC
        call    sheet_setbuf                            ; 02BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C2 _ 83. C4, 20
        sub     esp, 8                                  ; 02C5 _ 83. EC, 08
        push    99                                      ; 02C8 _ 6A, 63
        push    buf_mouse                               ; 02CA _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 02CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D4 _ 83. C4, 10
        push    0                                       ; 02D7 _ 6A, 00
        push    0                                       ; 02D9 _ 6A, 00
        push    dword [ebp-48H]                         ; 02DB _ FF. 75, B8
        push    dword [ebp-24H]                         ; 02DE _ FF. 75, DC
        call    sheet_slide                             ; 02E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02E6 _ 83. C4, 10
        mov     eax, dword [ebp-50H]                    ; 02E9 _ 8B. 45, B0
        sub     eax, 16                                 ; 02EC _ 83. E8, 10
        mov     edx, eax                                ; 02EF _ 89. C2
        shr     edx, 31                                 ; 02F1 _ C1. EA, 1F
        add     eax, edx                                ; 02F4 _ 01. D0
        sar     eax, 1                                  ; 02F6 _ D1. F8
        mov     dword [mx], eax                         ; 02F8 _ A3, 000000F0(d)
        mov     eax, dword [ebp-4CH]                    ; 02FD _ 8B. 45, B4
        sub     eax, 44                                 ; 0300 _ 83. E8, 2C
        mov     edx, eax                                ; 0303 _ 89. C2
        shr     edx, 31                                 ; 0305 _ C1. EA, 1F
        add     eax, edx                                ; 0308 _ 01. D0
        sar     eax, 1                                  ; 030A _ D1. F8
        mov     dword [my], eax                         ; 030C _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 0311 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0317 _ A1, 000000F0(d)
        push    edx                                     ; 031C _ 52
        push    eax                                     ; 031D _ 50
        push    dword [ebp-44H]                         ; 031E _ FF. 75, BC
        push    dword [ebp-24H]                         ; 0321 _ FF. 75, DC
        call    sheet_slide                             ; 0324 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0329 _ 83. C4, 10
        sub     esp, 8                                  ; 032C _ 83. EC, 08
        push    ?_158                                   ; 032F _ 68, 00000017(d)
        push    dword [ebp-24H]                         ; 0334 _ FF. 75, DC
        call    messageBox                              ; 0337 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 033C _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 033F _ 89. 45, E0
        sub     esp, 4                                  ; 0342 _ 83. EC, 04
        push    0                                       ; 0345 _ 6A, 00
        push    dword [ebp-48H]                         ; 0347 _ FF. 75, B8
        push    dword [ebp-24H]                         ; 034A _ FF. 75, DC
        call    sheet_level_updown                      ; 034D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0352 _ 83. C4, 10
        sub     esp, 4                                  ; 0355 _ 83. EC, 04
        push    50                                      ; 0358 _ 6A, 32
        push    dword [ebp-44H]                         ; 035A _ FF. 75, BC
        push    dword [ebp-24H]                         ; 035D _ FF. 75, DC
        call    sheet_level_updown                      ; 0360 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0365 _ 83. C4, 10
        call    io_sti                                  ; 0368 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 036D _ 83. EC, 0C
        push    mouse_move                              ; 0370 _ 68, 000000E0(d)
        call    enable_mouse                            ; 0375 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037A _ 83. C4, 10
        mov     dword [ebp-58H], 0                      ; 037D _ C7. 45, A8, 00000000
        mov     byte [ebp-59H], 0                       ; 0384 _ C6. 45, A7, 00
        call    getTimerController                      ; 0388 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 038D _ 89. 45, E4
?_001:  mov     eax, dword [ebp-40H]                    ; 0390 _ 8B. 45, C0
        mov     eax, dword [eax]                        ; 0393 _ 8B. 00
        sub     esp, 12                                 ; 0395 _ 83. EC, 0C
        push    eax                                     ; 0398 _ 50
        call    intToHexStr                             ; 0399 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 039E _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 03A1 _ 89. 45, E8
        mov     eax, dword [ebp-20H]                    ; 03A4 _ 8B. 45, E0
        mov     edx, dword [eax+4H]                     ; 03A7 _ 8B. 50, 04
        mov     eax, dword [ebp-20H]                    ; 03AA _ 8B. 45, E0
        mov     eax, dword [eax]                        ; 03AD _ 8B. 00
        sub     esp, 4                                  ; 03AF _ 83. EC, 04
        push    38                                      ; 03B2 _ 6A, 26
        push    150                                     ; 03B4 _ 68, 00000096
        push    22                                      ; 03B9 _ 6A, 16
        push    8                                       ; 03BB _ 6A, 08
        push    8                                       ; 03BD _ 6A, 08
        push    edx                                     ; 03BF _ 52
        push    eax                                     ; 03C0 _ 50
        call    boxfill8                                ; 03C1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03C6 _ 83. C4, 20
        sub     esp, 8                                  ; 03C9 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 03CC _ FF. 75, E8
        push    10                                      ; 03CF _ 6A, 0A
        push    22                                      ; 03D1 _ 6A, 16
        push    8                                       ; 03D3 _ 6A, 08
        push    dword [ebp-20H]                         ; 03D5 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 03D8 _ FF. 75, DC
        call    showString                              ; 03DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03E0 _ 83. C4, 20
        call    io_cli                                  ; 03E3 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03E8 _ 83. EC, 0C
        push    keyInfo                                 ; 03EB _ 68, 00000008(d)
        call    fifo8_status                            ; 03F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03F5 _ 83. C4, 10
        mov     ebx, eax                                ; 03F8 _ 89. C3
        sub     esp, 12                                 ; 03FA _ 83. EC, 0C
        push    mouseInfo                               ; 03FD _ 68, 00000020(d)
        call    fifo8_status                            ; 0402 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0407 _ 83. C4, 10
        add     ebx, eax                                ; 040A _ 01. C3
        sub     esp, 12                                 ; 040C _ 83. EC, 0C
        push    timerInfo                               ; 040F _ 68, 00000200(d)
        call    fifo8_status                            ; 0414 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0419 _ 83. C4, 10
        add     ebx, eax                                ; 041C _ 01. C3
        sub     esp, 12                                 ; 041E _ 83. EC, 0C
        push    timerInfo2.1690                         ; 0421 _ 68, 00000220(d)
        call    fifo8_status                            ; 0426 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 042B _ 83. C4, 10
        add     ebx, eax                                ; 042E _ 01. C3
        sub     esp, 12                                 ; 0430 _ 83. EC, 0C
        push    timerInfo3.1691                         ; 0433 _ 68, 00000240(d)
        call    fifo8_status                            ; 0438 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 043D _ 83. C4, 10
        add     eax, ebx                                ; 0440 _ 01. D8
        test    eax, eax                                ; 0442 _ 85. C0
        jnz     ?_002                                   ; 0444 _ 75, 0A
        call    io_sti                                  ; 0446 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 044B _ E9, FFFFFF40

?_002:  sub     esp, 12                                 ; 0450 _ 83. EC, 0C
        push    keyInfo                                 ; 0453 _ 68, 00000008(d)
        call    fifo8_status                            ; 0458 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 045D _ 83. C4, 10
        test    eax, eax                                ; 0460 _ 85. C0
        je      ?_004                                   ; 0462 _ 0F 84, 00000110
        call    io_sti                                  ; 0468 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 046D _ 83. EC, 0C
        push    keyInfo                                 ; 0470 _ 68, 00000008(d)
        call    fifo8_get                               ; 0475 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 047A _ 83. C4, 10
        mov     byte [ebp-59H], al                      ; 047D _ 88. 45, A7
        cmp     byte [ebp-59H], 28                      ; 0480 _ 80. 7D, A7, 1C
        jnz     ?_003                                   ; 0484 _ 75, 51
        mov     ecx, dword [buf_back]                   ; 0486 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-58H]                    ; 048C _ 8B. 55, A8
        mov     eax, edx                                ; 048F _ 89. D0
        shl     eax, 2                                  ; 0491 _ C1. E0, 02
        add     eax, edx                                ; 0494 _ 01. D0
        shl     eax, 2                                  ; 0496 _ C1. E0, 02
        mov     edx, eax                                ; 0499 _ 89. C2
        mov     eax, dword [ebp-34H]                    ; 049B _ 8B. 45, CC
        add     eax, edx                                ; 049E _ 01. D0
        sub     esp, 4                                  ; 04A0 _ 83. EC, 04
        push    7                                       ; 04A3 _ 6A, 07
        push    dword [ebp-50H]                         ; 04A5 _ FF. 75, B0
        push    dword [ebp-58H]                         ; 04A8 _ FF. 75, A8
        push    ecx                                     ; 04AB _ 51
        push    eax                                     ; 04AC _ 50
        push    dword [ebp-48H]                         ; 04AD _ FF. 75, B8
        push    dword [ebp-24H]                         ; 04B0 _ FF. 75, DC
        call    showMemInfo                             ; 04B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04B8 _ 83. C4, 20
        add     dword [ebp-58H], 1                      ; 04BB _ 83. 45, A8, 01
        mov     eax, dword [ebp-58H]                    ; 04BF _ 8B. 45, A8
        cmp     eax, dword [ebp-30H]                    ; 04C2 _ 3B. 45, D0
        jl      ?_001                                   ; 04C5 _ 0F 8C, FFFFFEC5
        mov     dword [ebp-58H], 0                      ; 04CB _ C7. 45, A8, 00000000
        jmp     ?_001                                   ; 04D2 _ E9, FFFFFEB9

?_003:  movzx   eax, byte [ebp-59H]                     ; 04D7 _ 0F B6. 45, A7
        movzx   eax, byte [keytable+eax]                ; 04DB _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 04E2 _ 84. C0
        je      ?_001                                   ; 04E4 _ 0F 84, FFFFFEA6
        cmp     byte [ebp-59H], 15                      ; 04EA _ 80. 7D, A7, 0F
        jbe     ?_001                                   ; 04EE _ 0F 86, FFFFFE9C
        cmp     byte [ebp-59H], 83                      ; 04F4 _ 80. 7D, A7, 53
        ja      ?_001                                   ; 04F8 _ 0F 87, FFFFFE92
        movzx   eax, byte [ebp-59H]                     ; 04FE _ 0F B6. 45, A7
        movzx   eax, byte [keytable+eax]                ; 0502 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-0EH], al                      ; 0509 _ 88. 45, F2
        mov     byte [ebp-0DH], 0                       ; 050C _ C6. 45, F3, 00
        mov     eax, dword [pos.1702]                   ; 0510 _ A1, 00000074(d)
        lea     ecx, [eax+16H]                          ; 0515 _ 8D. 48, 16
        mov     eax, dword [line.1701]                  ; 0518 _ A1, 00000260(d)
        lea     edx, [eax+8H]                           ; 051D _ 8D. 50, 08
        sub     esp, 8                                  ; 0520 _ 83. EC, 08
        lea     eax, [ebp-0EH]                          ; 0523 _ 8D. 45, F2
        push    eax                                     ; 0526 _ 50
        push    3                                       ; 0527 _ 6A, 03
        push    ecx                                     ; 0529 _ 51
        push    edx                                     ; 052A _ 52
        push    dword [ebp-20H]                         ; 052B _ FF. 75, E0
        push    dword [ebp-24H]                         ; 052E _ FF. 75, DC
        call    showString                              ; 0531 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0536 _ 83. C4, 20
        mov     eax, dword [line.1701]                  ; 0539 _ A1, 00000260(d)
        add     eax, 8                                  ; 053E _ 83. C0, 08
        mov     dword [line.1701], eax                  ; 0541 _ A3, 00000260(d)
        mov     eax, dword [ebp-20H]                    ; 0546 _ 8B. 45, E0
        mov     eax, dword [eax+4H]                     ; 0549 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 054C _ 8D. 50, F0
        mov     eax, dword [line.1701]                  ; 054F _ A1, 00000260(d)
        cmp     edx, eax                                ; 0554 _ 39. C2
        jg      ?_001                                   ; 0556 _ 0F 8F, FFFFFE34
        mov     eax, dword [pos.1702]                   ; 055C _ A1, 00000074(d)
        add     eax, 16                                 ; 0561 _ 83. C0, 10
        mov     dword [pos.1702], eax                   ; 0564 _ A3, 00000074(d)
        mov     dword [line.1701], 0                    ; 0569 _ C7. 05, 00000260(d), 00000000
        jmp     ?_001                                   ; 0573 _ E9, FFFFFE18

?_004:  sub     esp, 12                                 ; 0578 _ 83. EC, 0C
        push    mouseInfo                               ; 057B _ 68, 00000020(d)
        call    fifo8_status                            ; 0580 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0585 _ 83. C4, 10
        test    eax, eax                                ; 0588 _ 85. C0
        jz      ?_005                                   ; 058A _ 74, 19
        sub     esp, 4                                  ; 058C _ 83. EC, 04
        push    dword [ebp-44H]                         ; 058F _ FF. 75, BC
        push    dword [ebp-48H]                         ; 0592 _ FF. 75, B8
        push    dword [ebp-24H]                         ; 0595 _ FF. 75, DC
        call    showMouseInfo                           ; 0598 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 059D _ 83. C4, 10
        jmp     ?_001                                   ; 05A0 _ E9, FFFFFDEB

?_005:  sub     esp, 12                                 ; 05A5 _ 83. EC, 0C
        push    timerInfo                               ; 05A8 _ 68, 00000200(d)
        call    fifo8_status                            ; 05AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05B2 _ 83. C4, 10
        test    eax, eax                                ; 05B5 _ 85. C0
        jz      ?_006                                   ; 05B7 _ 74, 36
        call    io_sti                                  ; 05B9 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 05BE _ 83. EC, 0C
        push    timerInfo                               ; 05C1 _ 68, 00000200(d)
        call    fifo8_get                               ; 05C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05CB _ 83. C4, 10
        sub     esp, 8                                  ; 05CE _ 83. EC, 08
        push    ?_159                                   ; 05D1 _ 68, 0000001F(d)
        push    5                                       ; 05D6 _ 6A, 05
        push    0                                       ; 05D8 _ 6A, 00
        push    0                                       ; 05DA _ 6A, 00
        push    dword [ebp-48H]                         ; 05DC _ FF. 75, B8
        push    dword [ebp-24H]                         ; 05DF _ FF. 75, DC
        call    showString                              ; 05E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05E7 _ 83. C4, 20
        jmp     ?_001                                   ; 05EA _ E9, FFFFFDA1

?_006:  sub     esp, 12                                 ; 05EF _ 83. EC, 0C
        push    timerInfo2.1690                         ; 05F2 _ 68, 00000220(d)
        call    fifo8_status                            ; 05F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05FC _ 83. C4, 10
        test    eax, eax                                ; 05FF _ 85. C0
        jz      ?_007                                   ; 0601 _ 74, 36
        call    io_sti                                  ; 0603 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0608 _ 83. EC, 0C
        push    timerInfo2.1690                         ; 060B _ 68, 00000220(d)
        call    fifo8_get                               ; 0610 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0615 _ 83. C4, 10
        sub     esp, 8                                  ; 0618 _ 83. EC, 08
        push    ?_160                                   ; 061B _ 68, 00000027(d)
        push    5                                       ; 0620 _ 6A, 05
        push    16                                      ; 0622 _ 6A, 10
        push    0                                       ; 0624 _ 6A, 00
        push    dword [ebp-48H]                         ; 0626 _ FF. 75, B8
        push    dword [ebp-24H]                         ; 0629 _ FF. 75, DC
        call    showString                              ; 062C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0631 _ 83. C4, 20
        jmp     ?_001                                   ; 0634 _ E9, FFFFFD57

?_007:  sub     esp, 12                                 ; 0639 _ 83. EC, 0C
        push    timerInfo3.1691                         ; 063C _ 68, 00000240(d)
        call    fifo8_status                            ; 0641 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0646 _ 83. C4, 10
        test    eax, eax                                ; 0649 _ 85. C0
        je      ?_001                                   ; 064B _ 0F 84, FFFFFD3F
        call    io_sti                                  ; 0651 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0656 _ 83. EC, 0C
        push    timerInfo3.1691                         ; 0659 _ 68, 00000240(d)
        call    fifo8_get                               ; 065E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0663 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0666 _ 89. 45, EC
        cmp     dword [ebp-14H], 0                      ; 0669 _ 83. 7D, EC, 00
        jz      ?_008                                   ; 066D _ 74, 35
        sub     esp, 4                                  ; 066F _ 83. EC, 04
        push    0                                       ; 0672 _ 6A, 00
        push    timerInfo3.1691                         ; 0674 _ 68, 00000240(d)
        push    dword [ebp-38H]                         ; 0679 _ FF. 75, C8
        call    timer_init                              ; 067C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0681 _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 0684 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 0689 _ 83. EC, 04
        push    111                                     ; 068C _ 6A, 6F
        push    10                                      ; 068E _ 6A, 0A
        push    96                                      ; 0690 _ 6A, 60
        push    8                                       ; 0692 _ 6A, 08
        push    7                                       ; 0694 _ 6A, 07
        push    dword [ebp-50H]                         ; 0696 _ FF. 75, B0
        push    eax                                     ; 0699 _ 50
        call    boxfill8                                ; 069A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 069F _ 83. C4, 20
        jmp     ?_009                                   ; 06A2 _ EB, 33

?_008:  sub     esp, 4                                  ; 06A4 _ 83. EC, 04
        push    1                                       ; 06A7 _ 6A, 01
        push    timerInfo3.1691                         ; 06A9 _ 68, 00000240(d)
        push    dword [ebp-38H]                         ; 06AE _ FF. 75, C8
        call    timer_init                              ; 06B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06B6 _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 06B9 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 06BE _ 83. EC, 04
        push    111                                     ; 06C1 _ 6A, 6F
        push    10                                      ; 06C3 _ 6A, 0A
        push    96                                      ; 06C5 _ 6A, 60
        push    8                                       ; 06C7 _ 6A, 08
        push    14                                      ; 06C9 _ 6A, 0E
        push    dword [ebp-50H]                         ; 06CB _ FF. 75, B0
        push    eax                                     ; 06CE _ 50
        call    boxfill8                                ; 06CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06D4 _ 83. C4, 20
?_009:  sub     esp, 8                                  ; 06D7 _ 83. EC, 08
        push    50                                      ; 06DA _ 6A, 32
        push    dword [ebp-38H]                         ; 06DC _ FF. 75, C8
        call    timer_setTime                           ; 06DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06E4 _ 83. C4, 10
        sub     esp, 8                                  ; 06E7 _ 83. EC, 08
        push    112                                     ; 06EA _ 6A, 70
        push    16                                      ; 06EC _ 6A, 10
        push    96                                      ; 06EE _ 6A, 60
        push    8                                       ; 06F0 _ 6A, 08
        push    dword [ebp-48H]                         ; 06F2 _ FF. 75, B8
        push    dword [ebp-24H]                         ; 06F5 _ FF. 75, DC
        call    sheet_refresh                           ; 06F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06FD _ 83. C4, 20
        jmp     ?_001                                   ; 0700 _ E9, FFFFFC8B
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0705 _ 55
        mov     ebp, esp                                ; 0706 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0708 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 070B _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0711 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0714 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 071A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 071D _ 66: C7. 40, 06, 01E0
        nop                                             ; 0723 _ 90
        pop     ebp                                     ; 0724 _ 5D
        ret                                             ; 0725 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0726 _ 55
        mov     ebp, esp                                ; 0727 _ 89. E5
        push    ebx                                     ; 0729 _ 53
        sub     esp, 36                                 ; 072A _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 072D _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0730 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0733 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0736 _ 89. 45, F4
        jmp     ?_011                                   ; 0739 _ EB, 3E

?_010:  mov     eax, dword [ebp+1CH]                    ; 073B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 073E _ 0F B6. 00
        movzx   eax, al                                 ; 0741 _ 0F B6. C0
        shl     eax, 4                                  ; 0744 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0747 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 074D _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0751 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0754 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0757 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 075A _ 8B. 00
        sub     esp, 8                                  ; 075C _ 83. EC, 08
        push    ebx                                     ; 075F _ 53
        push    ecx                                     ; 0760 _ 51
        push    dword [ebp+14H]                         ; 0761 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0764 _ FF. 75, 10
        push    edx                                     ; 0767 _ 52
        push    eax                                     ; 0768 _ 50
        call    showFont8                               ; 0769 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 076E _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0771 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0775 _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 0779 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 077C _ 0F B6. 00
        test    al, al                                  ; 077F _ 84. C0
        jnz     ?_010                                   ; 0781 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0783 _ 8B. 45, 14
        add     eax, 16                                 ; 0786 _ 83. C0, 10
        sub     esp, 8                                  ; 0789 _ 83. EC, 08
        push    eax                                     ; 078C _ 50
        push    dword [ebp+10H]                         ; 078D _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0790 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0793 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0796 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0799 _ FF. 75, 08
        call    sheet_refresh                           ; 079C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07A1 _ 83. C4, 20
        nop                                             ; 07A4 _ 90
        mov     ebx, dword [ebp-4H]                     ; 07A5 _ 8B. 5D, FC
        leave                                           ; 07A8 _ C9
        ret                                             ; 07A9 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 07AA _ 55
        mov     ebp, esp                                ; 07AB _ 89. E5
        push    ebx                                     ; 07AD _ 53
        sub     esp, 4                                  ; 07AE _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 07B1 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 07B4 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 07B7 _ 8B. 45, 0C
        sub     eax, 1                                  ; 07BA _ 83. E8, 01
        sub     esp, 4                                  ; 07BD _ 83. EC, 04
        push    edx                                     ; 07C0 _ 52
        push    eax                                     ; 07C1 _ 50
        push    0                                       ; 07C2 _ 6A, 00
        push    0                                       ; 07C4 _ 6A, 00
        push    14                                      ; 07C6 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 07C8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 07CB _ FF. 75, 08
        call    boxfill8                                ; 07CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07D3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 07D6 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 07D9 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 07DC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 07DF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 07E2 _ 8B. 45, 10
        sub     eax, 24                                 ; 07E5 _ 83. E8, 18
        sub     esp, 4                                  ; 07E8 _ 83. EC, 04
        push    ecx                                     ; 07EB _ 51
        push    edx                                     ; 07EC _ 52
        push    eax                                     ; 07ED _ 50
        push    0                                       ; 07EE _ 6A, 00
        push    8                                       ; 07F0 _ 6A, 08
        push    dword [ebp+0CH]                         ; 07F2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 07F5 _ FF. 75, 08
        call    boxfill8                                ; 07F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07FD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0800 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0803 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0806 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0809 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 080C _ 8B. 45, 10
        sub     eax, 23                                 ; 080F _ 83. E8, 17
        sub     esp, 4                                  ; 0812 _ 83. EC, 04
        push    ecx                                     ; 0815 _ 51
        push    edx                                     ; 0816 _ 52
        push    eax                                     ; 0817 _ 50
        push    0                                       ; 0818 _ 6A, 00
        push    7                                       ; 081A _ 6A, 07
        push    dword [ebp+0CH]                         ; 081C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 081F _ FF. 75, 08
        call    boxfill8                                ; 0822 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0827 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 082A _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 082D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0830 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0833 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0836 _ 8B. 45, 10
        sub     eax, 22                                 ; 0839 _ 83. E8, 16
        sub     esp, 4                                  ; 083C _ 83. EC, 04
        push    ecx                                     ; 083F _ 51
        push    edx                                     ; 0840 _ 52
        push    eax                                     ; 0841 _ 50
        push    0                                       ; 0842 _ 6A, 00
        push    8                                       ; 0844 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0846 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0849 _ FF. 75, 08
        call    boxfill8                                ; 084C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0851 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0854 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0857 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 085A _ 8B. 45, 10
        sub     eax, 20                                 ; 085D _ 83. E8, 14
        sub     esp, 4                                  ; 0860 _ 83. EC, 04
        push    edx                                     ; 0863 _ 52
        push    51                                      ; 0864 _ 6A, 33
        push    eax                                     ; 0866 _ 50
        push    10                                      ; 0867 _ 6A, 0A
        push    7                                       ; 0869 _ 6A, 07
        push    dword [ebp+0CH]                         ; 086B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 086E _ FF. 75, 08
        call    boxfill8                                ; 0871 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0876 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0879 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 087C _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 087F _ 8B. 45, 10
        sub     eax, 20                                 ; 0882 _ 83. E8, 14
        sub     esp, 4                                  ; 0885 _ 83. EC, 04
        push    edx                                     ; 0888 _ 52
        push    9                                       ; 0889 _ 6A, 09
        push    eax                                     ; 088B _ 50
        push    9                                       ; 088C _ 6A, 09
        push    7                                       ; 088E _ 6A, 07
        push    dword [ebp+0CH]                         ; 0890 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0893 _ FF. 75, 08
        call    boxfill8                                ; 0896 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 089B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 089E _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 08A1 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 08A4 _ 8B. 45, 10
        sub     eax, 4                                  ; 08A7 _ 83. E8, 04
        sub     esp, 4                                  ; 08AA _ 83. EC, 04
        push    edx                                     ; 08AD _ 52
        push    50                                      ; 08AE _ 6A, 32
        push    eax                                     ; 08B0 _ 50
        push    10                                      ; 08B1 _ 6A, 0A
        push    15                                      ; 08B3 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 08B5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 08B8 _ FF. 75, 08
        call    boxfill8                                ; 08BB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08C0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 08C3 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 08C6 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 08C9 _ 8B. 45, 10
        sub     eax, 19                                 ; 08CC _ 83. E8, 13
        sub     esp, 4                                  ; 08CF _ 83. EC, 04
        push    edx                                     ; 08D2 _ 52
        push    50                                      ; 08D3 _ 6A, 32
        push    eax                                     ; 08D5 _ 50
        push    50                                      ; 08D6 _ 6A, 32
        push    15                                      ; 08D8 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 08DA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 08DD _ FF. 75, 08
        call    boxfill8                                ; 08E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08E5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 08E8 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 08EB _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 08EE _ 8B. 45, 10
        sub     eax, 3                                  ; 08F1 _ 83. E8, 03
        sub     esp, 4                                  ; 08F4 _ 83. EC, 04
        push    edx                                     ; 08F7 _ 52
        push    50                                      ; 08F8 _ 6A, 32
        push    eax                                     ; 08FA _ 50
        push    10                                      ; 08FB _ 6A, 0A
        push    0                                       ; 08FD _ 6A, 00
        push    dword [ebp+0CH]                         ; 08FF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0902 _ FF. 75, 08
        call    boxfill8                                ; 0905 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 090A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 090D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0910 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0913 _ 8B. 45, 10
        sub     eax, 20                                 ; 0916 _ 83. E8, 14
        sub     esp, 4                                  ; 0919 _ 83. EC, 04
        push    edx                                     ; 091C _ 52
        push    51                                      ; 091D _ 6A, 33
        push    eax                                     ; 091F _ 50
        push    51                                      ; 0920 _ 6A, 33
        push    0                                       ; 0922 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0924 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0927 _ FF. 75, 08
        call    boxfill8                                ; 092A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 092F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0932 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0935 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0938 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 093B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 093E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0941 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0944 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0947 _ 83. E8, 2F
        sub     esp, 4                                  ; 094A _ 83. EC, 04
        push    ebx                                     ; 094D _ 53
        push    ecx                                     ; 094E _ 51
        push    edx                                     ; 094F _ 52
        push    eax                                     ; 0950 _ 50
        push    15                                      ; 0951 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0953 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0956 _ FF. 75, 08
        call    boxfill8                                ; 0959 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 095E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0961 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0964 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0967 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 096A _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 096D _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0970 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0973 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0976 _ 83. E8, 2F
        sub     esp, 4                                  ; 0979 _ 83. EC, 04
        push    ebx                                     ; 097C _ 53
        push    ecx                                     ; 097D _ 51
        push    edx                                     ; 097E _ 52
        push    eax                                     ; 097F _ 50
        push    15                                      ; 0980 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0982 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0985 _ FF. 75, 08
        call    boxfill8                                ; 0988 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 098D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0990 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0993 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0996 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0999 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 099C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 099F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 09A2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 09A5 _ 83. E8, 2F
        sub     esp, 4                                  ; 09A8 _ 83. EC, 04
        push    ebx                                     ; 09AB _ 53
        push    ecx                                     ; 09AC _ 51
        push    edx                                     ; 09AD _ 52
        push    eax                                     ; 09AE _ 50
        push    7                                       ; 09AF _ 6A, 07
        push    dword [ebp+0CH]                         ; 09B1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09B4 _ FF. 75, 08
        call    boxfill8                                ; 09B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09BC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 09BF _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 09C2 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 09C5 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 09C8 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 09CB _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 09CE _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 09D1 _ 8B. 45, 0C
        sub     eax, 3                                  ; 09D4 _ 83. E8, 03
        sub     esp, 4                                  ; 09D7 _ 83. EC, 04
        push    ebx                                     ; 09DA _ 53
        push    ecx                                     ; 09DB _ 51
        push    edx                                     ; 09DC _ 52
        push    eax                                     ; 09DD _ 50
        push    7                                       ; 09DE _ 6A, 07
        push    dword [ebp+0CH]                         ; 09E0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09E3 _ FF. 75, 08
        call    boxfill8                                ; 09E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09EB _ 83. C4, 20
        nop                                             ; 09EE _ 90
        mov     ebx, dword [ebp-4H]                     ; 09EF _ 8B. 5D, FC
        leave                                           ; 09F2 _ C9
        ret                                             ; 09F3 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 09F4 _ 55
        mov     ebp, esp                                ; 09F5 _ 89. E5
        sub     esp, 24                                 ; 09F7 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 09FA _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 09FF _ 89. 45, EC
        movzx   eax, word [?_170]                       ; 0A02 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0A09 _ 98
        mov     dword [ebp-10H], eax                    ; 0A0A _ 89. 45, F0
        movzx   eax, word [?_171]                       ; 0A0D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0A14 _ 98
        mov     dword [ebp-0CH], eax                    ; 0A15 _ 89. 45, F4
        sub     esp, 4                                  ; 0A18 _ 83. EC, 04
        push    table_rgb.1734                          ; 0A1B _ 68, 00000080(d)
        push    15                                      ; 0A20 _ 6A, 0F
        push    0                                       ; 0A22 _ 6A, 00
        call    set_palette                             ; 0A24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A29 _ 83. C4, 10
        nop                                             ; 0A2C _ 90
        leave                                           ; 0A2D _ C9
        ret                                             ; 0A2E _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0A2F _ 55
        mov     ebp, esp                                ; 0A30 _ 89. E5
        sub     esp, 24                                 ; 0A32 _ 83. EC, 18
        call    io_load_eflags                          ; 0A35 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0A3A _ 89. 45, F4
        call    io_cli                                  ; 0A3D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A42 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0A45 _ FF. 75, 08
        push    968                                     ; 0A48 _ 68, 000003C8
        call    io_out8                                 ; 0A4D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A52 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0A55 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0A58 _ 89. 45, F0
        jmp     ?_013                                   ; 0A5B _ EB, 65

?_012:  mov     eax, dword [ebp+10H]                    ; 0A5D _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0A60 _ 0F B6. 00
        shr     al, 2                                   ; 0A63 _ C0. E8, 02
        movzx   eax, al                                 ; 0A66 _ 0F B6. C0
        sub     esp, 8                                  ; 0A69 _ 83. EC, 08
        push    eax                                     ; 0A6C _ 50
        push    969                                     ; 0A6D _ 68, 000003C9
        call    io_out8                                 ; 0A72 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A77 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0A7A _ 8B. 45, 10
        add     eax, 1                                  ; 0A7D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0A80 _ 0F B6. 00
        shr     al, 2                                   ; 0A83 _ C0. E8, 02
        movzx   eax, al                                 ; 0A86 _ 0F B6. C0
        sub     esp, 8                                  ; 0A89 _ 83. EC, 08
        push    eax                                     ; 0A8C _ 50
        push    969                                     ; 0A8D _ 68, 000003C9
        call    io_out8                                 ; 0A92 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A97 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0A9A _ 8B. 45, 10
        add     eax, 2                                  ; 0A9D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0AA0 _ 0F B6. 00
        shr     al, 2                                   ; 0AA3 _ C0. E8, 02
        movzx   eax, al                                 ; 0AA6 _ 0F B6. C0
        sub     esp, 8                                  ; 0AA9 _ 83. EC, 08
        push    eax                                     ; 0AAC _ 50
        push    969                                     ; 0AAD _ 68, 000003C9
        call    io_out8                                 ; 0AB2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AB7 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0ABA _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0ABE _ 83. 45, F0, 01
?_013:  mov     eax, dword [ebp-10H]                    ; 0AC2 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0AC5 _ 3B. 45, 0C
        jle     ?_012                                   ; 0AC8 _ 7E, 93
        sub     esp, 12                                 ; 0ACA _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0ACD _ FF. 75, F4
        call    io_store_eflags                         ; 0AD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AD5 _ 83. C4, 10
        nop                                             ; 0AD8 _ 90
        leave                                           ; 0AD9 _ C9
        ret                                             ; 0ADA _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0ADB _ 55
        mov     ebp, esp                                ; 0ADC _ 89. E5
        sub     esp, 20                                 ; 0ADE _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0AE1 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0AE4 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0AE7 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0AEA _ 89. 45, FC
        jmp     ?_017                                   ; 0AED _ EB, 33

?_014:  mov     eax, dword [ebp+14H]                    ; 0AEF _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0AF2 _ 89. 45, F8
        jmp     ?_016                                   ; 0AF5 _ EB, 1F

?_015:  mov     eax, dword [ebp-4H]                     ; 0AF7 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0AFA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0AFE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0B00 _ 8B. 45, F8
        add     eax, edx                                ; 0B03 _ 01. D0
        mov     edx, eax                                ; 0B05 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B07 _ 8B. 45, 08
        add     edx, eax                                ; 0B0A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B0C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B10 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0B12 _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0B16 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0B19 _ 3B. 45, 1C
        jle     ?_015                                   ; 0B1C _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0B1E _ 83. 45, FC, 01
?_017:  mov     eax, dword [ebp-4H]                     ; 0B22 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0B25 _ 3B. 45, 20
        jle     ?_014                                   ; 0B28 _ 7E, C5
        nop                                             ; 0B2A _ 90
        leave                                           ; 0B2B _ C9
        ret                                             ; 0B2C _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0B2D _ 55
        mov     ebp, esp                                ; 0B2E _ 89. E5
        sub     esp, 20                                 ; 0B30 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0B33 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0B36 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0B39 _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 0B40 _ E9, 0000016C

?_018:  mov     edx, dword [ebp-4H]                     ; 0B45 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0B48 _ 8B. 45, 1C
        add     eax, edx                                ; 0B4B _ 01. D0
        movzx   eax, byte [eax]                         ; 0B4D _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0B50 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0B53 _ 80. 7D, FB, 00
        jns     ?_019                                   ; 0B57 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0B59 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B5C _ 8B. 45, FC
        add     eax, edx                                ; 0B5F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B61 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B65 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0B67 _ 8B. 45, 10
        add     eax, edx                                ; 0B6A _ 01. D0
        mov     edx, eax                                ; 0B6C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B6E _ 8B. 45, 08
        add     edx, eax                                ; 0B71 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B73 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B77 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0B79 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0B7D _ 83. E0, 40
        test    eax, eax                                ; 0B80 _ 85. C0
        jz      ?_020                                   ; 0B82 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0B84 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B87 _ 8B. 45, FC
        add     eax, edx                                ; 0B8A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B8C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B90 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0B92 _ 8B. 45, 10
        add     eax, edx                                ; 0B95 _ 01. D0
        lea     edx, [eax+1H]                           ; 0B97 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B9A _ 8B. 45, 08
        add     edx, eax                                ; 0B9D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B9F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BA3 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0BA5 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0BA9 _ 83. E0, 20
        test    eax, eax                                ; 0BAC _ 85. C0
        jz      ?_021                                   ; 0BAE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0BB0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BB3 _ 8B. 45, FC
        add     eax, edx                                ; 0BB6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BB8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0BBC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0BBE _ 8B. 45, 10
        add     eax, edx                                ; 0BC1 _ 01. D0
        lea     edx, [eax+2H]                           ; 0BC3 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0BC6 _ 8B. 45, 08
        add     edx, eax                                ; 0BC9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BCB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BCF _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0BD1 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0BD5 _ 83. E0, 10
        test    eax, eax                                ; 0BD8 _ 85. C0
        jz      ?_022                                   ; 0BDA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0BDC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BDF _ 8B. 45, FC
        add     eax, edx                                ; 0BE2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BE4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0BE8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0BEA _ 8B. 45, 10
        add     eax, edx                                ; 0BED _ 01. D0
        lea     edx, [eax+3H]                           ; 0BEF _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0BF2 _ 8B. 45, 08
        add     edx, eax                                ; 0BF5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BF7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BFB _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0BFD _ 0F BE. 45, FB
        and     eax, 08H                                ; 0C01 _ 83. E0, 08
        test    eax, eax                                ; 0C04 _ 85. C0
        jz      ?_023                                   ; 0C06 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0C08 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C0B _ 8B. 45, FC
        add     eax, edx                                ; 0C0E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C10 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0C14 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0C16 _ 8B. 45, 10
        add     eax, edx                                ; 0C19 _ 01. D0
        lea     edx, [eax+4H]                           ; 0C1B _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C1E _ 8B. 45, 08
        add     edx, eax                                ; 0C21 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C23 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C27 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0C29 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0C2D _ 83. E0, 04
        test    eax, eax                                ; 0C30 _ 85. C0
        jz      ?_024                                   ; 0C32 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0C34 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C37 _ 8B. 45, FC
        add     eax, edx                                ; 0C3A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C3C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0C40 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0C42 _ 8B. 45, 10
        add     eax, edx                                ; 0C45 _ 01. D0
        lea     edx, [eax+5H]                           ; 0C47 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0C4A _ 8B. 45, 08
        add     edx, eax                                ; 0C4D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C4F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C53 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0C55 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0C59 _ 83. E0, 02
        test    eax, eax                                ; 0C5C _ 85. C0
        jz      ?_025                                   ; 0C5E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0C60 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C63 _ 8B. 45, FC
        add     eax, edx                                ; 0C66 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C68 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0C6C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0C6E _ 8B. 45, 10
        add     eax, edx                                ; 0C71 _ 01. D0
        lea     edx, [eax+6H]                           ; 0C73 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0C76 _ 8B. 45, 08
        add     edx, eax                                ; 0C79 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C7B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C7F _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0C81 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0C85 _ 83. E0, 01
        test    eax, eax                                ; 0C88 _ 85. C0
        jz      ?_026                                   ; 0C8A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0C8C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C8F _ 8B. 45, FC
        add     eax, edx                                ; 0C92 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C94 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0C98 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0C9A _ 8B. 45, 10
        add     eax, edx                                ; 0C9D _ 01. D0
        lea     edx, [eax+7H]                           ; 0C9F _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0CA2 _ 8B. 45, 08
        add     edx, eax                                ; 0CA5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CA7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CAB _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 0CAD _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 0CB1 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 0CB5 _ 0F 8E, FFFFFE8A
        nop                                             ; 0CBB _ 90
        leave                                           ; 0CBC _ C9
        ret                                             ; 0CBD _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0CBE _ 55
        mov     ebp, esp                                ; 0CBF _ 89. E5
        sub     esp, 20                                 ; 0CC1 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0CC4 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0CC7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0CCA _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 0CD1 _ E9, 000000B1

?_028:  mov     dword [ebp-8H], 0                       ; 0CD6 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0CDD _ E9, 00000097

?_029:  mov     eax, dword [ebp-4H]                     ; 0CE2 _ 8B. 45, FC
        shl     eax, 4                                  ; 0CE5 _ C1. E0, 04
        mov     edx, eax                                ; 0CE8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0CEA _ 8B. 45, F8
        add     eax, edx                                ; 0CED _ 01. D0
        add     eax, cursor.1779                        ; 0CEF _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0CF4 _ 0F B6. 00
        cmp     al, 42                                  ; 0CF7 _ 3C, 2A
        jnz     ?_030                                   ; 0CF9 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0CFB _ 8B. 45, FC
        shl     eax, 4                                  ; 0CFE _ C1. E0, 04
        mov     edx, eax                                ; 0D01 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0D03 _ 8B. 45, F8
        add     eax, edx                                ; 0D06 _ 01. D0
        mov     edx, eax                                ; 0D08 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D0A _ 8B. 45, 08
        add     eax, edx                                ; 0D0D _ 01. D0
        mov     byte [eax], 0                           ; 0D0F _ C6. 00, 00
?_030:  mov     eax, dword [ebp-4H]                     ; 0D12 _ 8B. 45, FC
        shl     eax, 4                                  ; 0D15 _ C1. E0, 04
        mov     edx, eax                                ; 0D18 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0D1A _ 8B. 45, F8
        add     eax, edx                                ; 0D1D _ 01. D0
        add     eax, cursor.1779                        ; 0D1F _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0D24 _ 0F B6. 00
        cmp     al, 79                                  ; 0D27 _ 3C, 4F
        jnz     ?_031                                   ; 0D29 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0D2B _ 8B. 45, FC
        shl     eax, 4                                  ; 0D2E _ C1. E0, 04
        mov     edx, eax                                ; 0D31 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0D33 _ 8B. 45, F8
        add     eax, edx                                ; 0D36 _ 01. D0
        mov     edx, eax                                ; 0D38 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D3A _ 8B. 45, 08
        add     eax, edx                                ; 0D3D _ 01. D0
        mov     byte [eax], 7                           ; 0D3F _ C6. 00, 07
?_031:  mov     eax, dword [ebp-4H]                     ; 0D42 _ 8B. 45, FC
        shl     eax, 4                                  ; 0D45 _ C1. E0, 04
        mov     edx, eax                                ; 0D48 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0D4A _ 8B. 45, F8
        add     eax, edx                                ; 0D4D _ 01. D0
        add     eax, cursor.1779                        ; 0D4F _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0D54 _ 0F B6. 00
        cmp     al, 46                                  ; 0D57 _ 3C, 2E
        jnz     ?_032                                   ; 0D59 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0D5B _ 8B. 45, FC
        shl     eax, 4                                  ; 0D5E _ C1. E0, 04
        mov     edx, eax                                ; 0D61 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0D63 _ 8B. 45, F8
        add     eax, edx                                ; 0D66 _ 01. D0
        mov     edx, eax                                ; 0D68 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D6A _ 8B. 45, 08
        add     edx, eax                                ; 0D6D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D6F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D73 _ 88. 02
?_032:  add     dword [ebp-8H], 1                       ; 0D75 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0D79 _ 83. 7D, F8, 0F
        jle     ?_029                                   ; 0D7D _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0D83 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 0D87 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0D8B _ 0F 8E, FFFFFF45
        nop                                             ; 0D91 _ 90
        leave                                           ; 0D92 _ C9
        ret                                             ; 0D93 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0D94 _ 55
        mov     ebp, esp                                ; 0D95 _ 89. E5
        push    ebx                                     ; 0D97 _ 53
        sub     esp, 16                                 ; 0D98 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0D9B _ C7. 45, F8, 00000000
        jmp     ?_038                                   ; 0DA2 _ EB, 50

?_035:  mov     dword [ebp-0CH], 0                      ; 0DA4 _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0DAB _ EB, 3B

?_036:  mov     eax, dword [ebp-8H]                     ; 0DAD _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0DB0 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0DB4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0DB6 _ 8B. 45, F4
        add     eax, edx                                ; 0DB9 _ 01. D0
        mov     edx, eax                                ; 0DBB _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0DBD _ 8B. 45, 20
        add     eax, edx                                ; 0DC0 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0DC2 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0DC5 _ 8B. 55, F8
        add     edx, ecx                                ; 0DC8 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0DCA _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0DCE _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0DD1 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0DD4 _ 01. D9
        add     edx, ecx                                ; 0DD6 _ 01. CA
        mov     ecx, edx                                ; 0DD8 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0DDA _ 8B. 55, 08
        add     edx, ecx                                ; 0DDD _ 01. CA
        movzx   eax, byte [eax]                         ; 0DDF _ 0F B6. 00
        mov     byte [edx], al                          ; 0DE2 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0DE4 _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0DE8 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0DEB _ 3B. 45, 10
        jl      ?_036                                   ; 0DEE _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0DF0 _ 83. 45, F8, 01
?_038:  mov     eax, dword [ebp-8H]                     ; 0DF4 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0DF7 _ 3B. 45, 14
        jl      ?_035                                   ; 0DFA _ 7C, A8
        nop                                             ; 0DFC _ 90
        add     esp, 16                                 ; 0DFD _ 83. C4, 10
        pop     ebx                                     ; 0E00 _ 5B
        pop     ebp                                     ; 0E01 _ 5D
        ret                                             ; 0E02 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0E03 _ 55
        mov     ebp, esp                                ; 0E04 _ 89. E5
        sub     esp, 24                                 ; 0E06 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E09 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E0E _ 89. 45, EC
        movzx   eax, word [?_170]                       ; 0E11 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E18 _ 98
        mov     dword [ebp-10H], eax                    ; 0E19 _ 89. 45, F0
        movzx   eax, word [?_171]                       ; 0E1C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E23 _ 98
        mov     dword [ebp-0CH], eax                    ; 0E24 _ 89. 45, F4
        sub     esp, 8                                  ; 0E27 _ 83. EC, 08
        push    32                                      ; 0E2A _ 6A, 20
        push    32                                      ; 0E2C _ 6A, 20
        call    io_out8                                 ; 0E2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E33 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0E36 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0E3A _ 83. EC, 0C
        push    96                                      ; 0E3D _ 6A, 60
        call    io_in8                                  ; 0E3F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E44 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0E47 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0E4A _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0E4E _ 83. EC, 08
        push    eax                                     ; 0E51 _ 50
        push    keyInfo                                 ; 0E52 _ 68, 00000008(d)
        call    fifo8_put                               ; 0E57 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E5C _ 83. C4, 10
        nop                                             ; 0E5F _ 90
        leave                                           ; 0E60 _ C9
        ret                                             ; 0E61 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0E62 _ 55
        mov     ebp, esp                                ; 0E63 _ 89. E5
        sub     esp, 40                                 ; 0E65 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0E68 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0E6B _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0E6E _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0E72 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0E75 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0E78 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0E7C _ 83. EC, 0C
        push    eax                                     ; 0E7F _ 50
        call    charToVal                               ; 0E80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E85 _ 83. C4, 10
        mov     byte [?_169], al                        ; 0E88 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0E8D _ 0F B6. 45, E4
        shr     al, 4                                   ; 0E91 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0E94 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0E97 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0E9B _ 0F BE. C0
        sub     esp, 12                                 ; 0E9E _ 83. EC, 0C
        push    eax                                     ; 0EA1 _ 50
        call    charToVal                               ; 0EA2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EA7 _ 83. C4, 10
        mov     byte [?_168], al                        ; 0EAA _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0EAF _ B8, 00000000(d)
        leave                                           ; 0EB4 _ C9
        ret                                             ; 0EB5 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0EB6 _ 55
        mov     ebp, esp                                ; 0EB7 _ 89. E5
        sub     esp, 4                                  ; 0EB9 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0EBC _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0EBF _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0EC2 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0EC6 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0EC8 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0ECC _ 83. C0, 37
        jmp     ?_040                                   ; 0ECF _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0ED1 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0ED5 _ 83. C0, 30
?_040:  leave                                           ; 0ED8 _ C9
        ret                                             ; 0ED9 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0EDA _ 55
        mov     ebp, esp                                ; 0EDB _ 89. E5
        sub     esp, 16                                 ; 0EDD _ 83. EC, 10
        mov     byte [str.1822], 48                     ; 0EE0 _ C6. 05, 00000264(d), 30
        mov     byte [?_172], 120                       ; 0EE7 _ C6. 05, 00000265(d), 78
        mov     byte [?_173], 0                         ; 0EEE _ C6. 05, 0000026E(d), 00
        mov     dword [ebp-0CH], 2                      ; 0EF5 _ C7. 45, F4, 00000002
        jmp     ?_042                                   ; 0EFC _ EB, 0F

?_041:  mov     eax, dword [ebp-0CH]                    ; 0EFE _ 8B. 45, F4
        add     eax, str.1822                           ; 0F01 _ 05, 00000264(d)
        mov     byte [eax], 48                          ; 0F06 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0F09 _ 83. 45, F4, 01
?_042:  cmp     dword [ebp-0CH], 9                      ; 0F0D _ 83. 7D, F4, 09
        jle     ?_041                                   ; 0F11 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0F13 _ C7. 45, F8, 00000009
        jmp     ?_045                                   ; 0F1A _ EB, 48

?_043:  mov     eax, dword [ebp+8H]                     ; 0F1C _ 8B. 45, 08
        and     eax, 0FH                                ; 0F1F _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0F22 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F25 _ 8B. 45, 08
        shr     eax, 4                                  ; 0F28 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0F2B _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0F2E _ 83. 7D, FC, 09
        jle     ?_044                                   ; 0F32 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0F34 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0F37 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0F3A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0F3D _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0F40 _ 89. 55, F8
        mov     edx, ecx                                ; 0F43 _ 89. CA
        mov     byte [str.1822+eax], dl                 ; 0F45 _ 88. 90, 00000264(d)
        jmp     ?_045                                   ; 0F4B _ EB, 17

?_044:  mov     eax, dword [ebp-4H]                     ; 0F4D _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0F50 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0F53 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0F56 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0F59 _ 89. 55, F8
        mov     edx, ecx                                ; 0F5C _ 89. CA
        mov     byte [str.1822+eax], dl                 ; 0F5E _ 88. 90, 00000264(d)
?_045:  cmp     dword [ebp-8H], 1                       ; 0F64 _ 83. 7D, F8, 01
        jle     ?_046                                   ; 0F68 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0F6A _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 0F6E _ 75, AC
?_046:  mov     eax, str.1822                           ; 0F70 _ B8, 00000264(d)
        leave                                           ; 0F75 _ C9
        ret                                             ; 0F76 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0F77 _ 55
        mov     ebp, esp                                ; 0F78 _ 89. E5
        sub     esp, 8                                  ; 0F7A _ 83. EC, 08
?_047:  sub     esp, 12                                 ; 0F7D _ 83. EC, 0C
        push    100                                     ; 0F80 _ 6A, 64
        call    io_in8                                  ; 0F82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F87 _ 83. C4, 10
        movsx   eax, al                                 ; 0F8A _ 0F BE. C0
        and     eax, 02H                                ; 0F8D _ 83. E0, 02
        test    eax, eax                                ; 0F90 _ 85. C0
        jz      ?_048                                   ; 0F92 _ 74, 02
        jmp     ?_047                                   ; 0F94 _ EB, E7

?_048:  nop                                             ; 0F96 _ 90
        nop                                             ; 0F97 _ 90
        leave                                           ; 0F98 _ C9
        ret                                             ; 0F99 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0F9A _ 55
        mov     ebp, esp                                ; 0F9B _ 89. E5
        sub     esp, 8                                  ; 0F9D _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0FA0 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0FA5 _ 83. EC, 08
        push    96                                      ; 0FA8 _ 6A, 60
        push    100                                     ; 0FAA _ 6A, 64
        call    io_out8                                 ; 0FAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FB1 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0FB4 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0FB9 _ 83. EC, 08
        push    71                                      ; 0FBC _ 6A, 47
        push    96                                      ; 0FBE _ 6A, 60
        call    io_out8                                 ; 0FC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FC5 _ 83. C4, 10
        nop                                             ; 0FC8 _ 90
        leave                                           ; 0FC9 _ C9
        ret                                             ; 0FCA _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0FCB _ 55
        mov     ebp, esp                                ; 0FCC _ 89. E5
        sub     esp, 8                                  ; 0FCE _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0FD1 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0FD6 _ 83. EC, 08
        push    212                                     ; 0FD9 _ 68, 000000D4
        push    100                                     ; 0FDE _ 6A, 64
        call    io_out8                                 ; 0FE0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FE5 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0FE8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0FED _ 83. EC, 08
        push    244                                     ; 0FF0 _ 68, 000000F4
        push    96                                      ; 0FF5 _ 6A, 60
        call    io_out8                                 ; 0FF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FFC _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0FFF _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1002 _ C6. 40, 03, 00
        nop                                             ; 1006 _ 90
        leave                                           ; 1007 _ C9
        ret                                             ; 1008 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1009 _ 55
        mov     ebp, esp                                ; 100A _ 89. E5
        sub     esp, 24                                 ; 100C _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 100F _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1013 _ 83. EC, 08
        push    32                                      ; 1016 _ 6A, 20
        push    160                                     ; 1018 _ 68, 000000A0
        call    io_out8                                 ; 101D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1022 _ 83. C4, 10
        sub     esp, 8                                  ; 1025 _ 83. EC, 08
        push    32                                      ; 1028 _ 6A, 20
        push    32                                      ; 102A _ 6A, 20
        call    io_out8                                 ; 102C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1031 _ 83. C4, 10
        sub     esp, 12                                 ; 1034 _ 83. EC, 0C
        push    96                                      ; 1037 _ 6A, 60
        call    io_in8                                  ; 1039 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 103E _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1041 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1044 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1048 _ 83. EC, 08
        push    eax                                     ; 104B _ 50
        push    mouseInfo                               ; 104C _ 68, 00000020(d)
        call    fifo8_put                               ; 1051 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1056 _ 83. C4, 10
        nop                                             ; 1059 _ 90
        leave                                           ; 105A _ C9
        ret                                             ; 105B _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 105C _ 55
        mov     ebp, esp                                ; 105D _ 89. E5
        sub     esp, 40                                 ; 105F _ 83. EC, 28
        call    io_sti                                  ; 1062 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1067 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 106C _ 89. 45, E8
        movzx   eax, word [?_170]                       ; 106F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1076 _ 98
        mov     dword [ebp-14H], eax                    ; 1077 _ 89. 45, EC
        movzx   eax, word [?_171]                       ; 107A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1081 _ 98
        mov     dword [ebp-10H], eax                    ; 1082 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1085 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1089 _ 83. EC, 0C
        push    keyInfo                                 ; 108C _ 68, 00000008(d)
        call    fifo8_get                               ; 1091 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1096 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1099 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 109C _ 0F B6. 45, E7
        sub     esp, 12                                 ; 10A0 _ 83. EC, 0C
        push    eax                                     ; 10A3 _ 50
        call    charToHex                               ; 10A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10A9 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 10AC _ 89. 45, F4
        mov     edx, dword [line.1855]                  ; 10AF _ 8B. 15, 00000270(d)
        mov     eax, dword [pos.1854]                   ; 10B5 _ A1, 00000274(d)
        sub     esp, 8                                  ; 10BA _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 10BD _ FF. 75, F4
        push    7                                       ; 10C0 _ 6A, 07
        push    edx                                     ; 10C2 _ 52
        push    eax                                     ; 10C3 _ 50
        push    dword [ebp+0CH]                         ; 10C4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10C7 _ FF. 75, 08
        call    showString                              ; 10CA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10CF _ 83. C4, 20
        mov     eax, dword [pos.1854]                   ; 10D2 _ A1, 00000274(d)
        add     eax, 32                                 ; 10D7 _ 83. C0, 20
        mov     dword [pos.1854], eax                   ; 10DA _ A3, 00000274(d)
        mov     eax, dword [pos.1854]                   ; 10DF _ A1, 00000274(d)
        cmp     dword [ebp-14H], eax                    ; 10E4 _ 39. 45, EC
        jnz     ?_051                                   ; 10E7 _ 75, 28
        mov     eax, dword [line.1855]                  ; 10E9 _ A1, 00000270(d)
        cmp     dword [ebp-10H], eax                    ; 10EE _ 39. 45, F0
        jz      ?_049                                   ; 10F1 _ 74, 0A
        mov     eax, dword [line.1855]                  ; 10F3 _ A1, 00000270(d)
        add     eax, 16                                 ; 10F8 _ 83. C0, 10
        jmp     ?_050                                   ; 10FB _ EB, 05

?_049:  mov     eax, 0                                  ; 10FD _ B8, 00000000
?_050:  mov     dword [line.1855], eax                  ; 1102 _ A3, 00000270(d)
        mov     dword [pos.1854], 0                     ; 1107 _ C7. 05, 00000274(d), 00000000
?_051:  nop                                             ; 1111 _ 90
        leave                                           ; 1112 _ C9
        ret                                             ; 1113 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1114 _ 55
        mov     ebp, esp                                ; 1115 _ 89. E5
        sub     esp, 24                                 ; 1117 _ 83. EC, 18
        call    io_sti                                  ; 111A _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 111F _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1123 _ 83. EC, 0C
        push    mouseInfo                               ; 1126 _ 68, 00000020(d)
        call    fifo8_get                               ; 112B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1130 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1133 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1136 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 113A _ 83. EC, 08
        push    eax                                     ; 113D _ 50
        push    mouse_move                              ; 113E _ 68, 000000E0(d)
        call    mouse_decode                            ; 1143 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1148 _ 83. C4, 10
        test    eax, eax                                ; 114B _ 85. C0
        jz      ?_052                                   ; 114D _ 74, 31
        sub     esp, 4                                  ; 114F _ 83. EC, 04
        push    mouse_move                              ; 1152 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1157 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 115A _ FF. 75, 08
        call    computeMousePos                         ; 115D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1162 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1165 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 116B _ A1, 000000F0(d)
        push    edx                                     ; 1170 _ 52
        push    eax                                     ; 1171 _ 50
        push    dword [ebp+10H]                         ; 1172 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1175 _ FF. 75, 08
        call    sheet_slide                             ; 1178 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 117D _ 83. C4, 10
?_052:  nop                                             ; 1180 _ 90
        leave                                           ; 1181 _ C9
        ret                                             ; 1182 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1183 _ 55
        mov     ebp, esp                                ; 1184 _ 89. E5
        sub     esp, 4                                  ; 1186 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1189 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 118C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 118F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1192 _ 0F B6. 40, 03
        test    al, al                                  ; 1196 _ 84. C0
        jnz     ?_054                                   ; 1198 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 119A _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 119E _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 11A0 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 11A3 _ C6. 40, 03, 01
?_053:  mov     eax, 0                                  ; 11A7 _ B8, 00000000
        jmp     ?_061                                   ; 11AC _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 11B1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 11B4 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 11B8 _ 3C, 01
        jnz     ?_056                                   ; 11BA _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 11BC _ 0F B6. 45, FC
        or      eax, 37H                                ; 11C0 _ 83. C8, 37
        cmp     al, 63                                  ; 11C3 _ 3C, 3F
        jnz     ?_055                                   ; 11C5 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 11C7 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 11CA _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 11CE _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 11D0 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 11D3 _ C6. 40, 03, 02
?_055:  mov     eax, 0                                  ; 11D7 _ B8, 00000000
        jmp     ?_061                                   ; 11DC _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 11E1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 11E4 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 11E8 _ 3C, 02
        jnz     ?_057                                   ; 11EA _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 11EC _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 11EF _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 11F3 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 11F6 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 11F9 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 11FD _ B8, 00000000
        jmp     ?_061                                   ; 1202 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 1207 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 120A _ 0F B6. 40, 03
        cmp     al, 3                                   ; 120E _ 3C, 03
        jne     ?_060                                   ; 1210 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1216 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1219 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 121D _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1220 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1223 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1227 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 122A _ 0F B6. 00
        movzx   eax, al                                 ; 122D _ 0F B6. C0
        and     eax, 07H                                ; 1230 _ 83. E0, 07
        mov     edx, eax                                ; 1233 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1235 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1238 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 123B _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 123E _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1242 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1245 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1248 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 124B _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 124E _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1252 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1255 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1258 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 125B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 125E _ 0F B6. 00
        movzx   eax, al                                 ; 1261 _ 0F B6. C0
        and     eax, 10H                                ; 1264 _ 83. E0, 10
        test    eax, eax                                ; 1267 _ 85. C0
        jz      ?_058                                   ; 1269 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 126B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 126E _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1271 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1276 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1278 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 127B _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 127E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1281 _ 0F B6. 00
        movzx   eax, al                                 ; 1284 _ 0F B6. C0
        and     eax, 20H                                ; 1287 _ 83. E0, 20
        test    eax, eax                                ; 128A _ 85. C0
        jz      ?_059                                   ; 128C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 128E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1291 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1294 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1299 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 129B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 129E _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 12A1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 12A4 _ 8B. 40, 08
        neg     eax                                     ; 12A7 _ F7. D8
        mov     edx, eax                                ; 12A9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12AB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 12AE _ 89. 50, 08
        mov     eax, 1                                  ; 12B1 _ B8, 00000001
        jmp     ?_061                                   ; 12B6 _ EB, 05

?_060:  mov     eax, 4294967295                         ; 12B8 _ B8, FFFFFFFF
?_061:  leave                                           ; 12BD _ C9
        ret                                             ; 12BE _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 12BF _ 55
        mov     ebp, esp                                ; 12C0 _ 89. E5
        sub     esp, 24                                 ; 12C2 _ 83. EC, 18
        movzx   eax, word [?_170]                       ; 12C5 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 12CC _ 98
        mov     dword [ebp-10H], eax                    ; 12CD _ 89. 45, F0
        movzx   eax, word [?_171]                       ; 12D0 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 12D7 _ 98
        mov     dword [ebp-0CH], eax                    ; 12D8 _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 12DB _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 12DE _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 12E1 _ A1, 000000F0(d)
        add     eax, edx                                ; 12E6 _ 01. D0
        mov     dword [mx], eax                         ; 12E8 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 12ED _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 12F0 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 12F3 _ A1, 000000F4(d)
        add     eax, edx                                ; 12F8 _ 01. D0
        mov     dword [my], eax                         ; 12FA _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 12FF _ A1, 000000F0(d)
        test    eax, eax                                ; 1304 _ 85. C0
        jns     ?_062                                   ; 1306 _ 79, 0A
        mov     dword [mx], 0                           ; 1308 _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 1312 _ A1, 000000F4(d)
        test    eax, eax                                ; 1317 _ 85. C0
        jns     ?_063                                   ; 1319 _ 79, 0A
        mov     dword [my], 0                           ; 131B _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 1325 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 1328 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 132B _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1330 _ 39. C2
        jge     ?_064                                   ; 1332 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 1334 _ 8B. 45, F0
        sub     eax, 9                                  ; 1337 _ 83. E8, 09
        mov     dword [mx], eax                         ; 133A _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 133F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1342 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1345 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 134A _ 39. C2
        jge     ?_065                                   ; 134C _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 134E _ 8B. 45, F4
        sub     eax, 1                                  ; 1351 _ 83. E8, 01
        mov     dword [my], eax                         ; 1354 _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 1359 _ A1, 000000F8(d)
        push    15                                      ; 135E _ 6A, 0F
        push    79                                      ; 1360 _ 6A, 4F
        push    0                                       ; 1362 _ 6A, 00
        push    0                                       ; 1364 _ 6A, 00
        push    14                                      ; 1366 _ 6A, 0E
        push    dword [ebp-10H]                         ; 1368 _ FF. 75, F0
        push    eax                                     ; 136B _ 50
        call    boxfill8                                ; 136C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1371 _ 83. C4, 1C
        sub     esp, 8                                  ; 1374 _ 83. EC, 08
        push    ?_161                                   ; 1377 _ 68, 0000002F(d)
        push    3                                       ; 137C _ 6A, 03
        push    0                                       ; 137E _ 6A, 00
        push    0                                       ; 1380 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1382 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1385 _ FF. 75, 08
        call    showString                              ; 1388 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 138D _ 83. C4, 20
        nop                                             ; 1390 _ 90
        leave                                           ; 1391 _ C9
        ret                                             ; 1392 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1393 _ 55
        mov     ebp, esp                                ; 1394 _ 89. E5
        sub     esp, 56                                 ; 1396 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1399 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 13A0 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 13A7 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 13AE _ C7. 45, DC, 00000050
        push    100                                     ; 13B5 _ 6A, 64
        push    dword [ebp+1CH]                         ; 13B7 _ FF. 75, 1C
        push    0                                       ; 13BA _ 6A, 00
        push    0                                       ; 13BC _ 6A, 00
        push    14                                      ; 13BE _ 6A, 0E
        push    dword [ebp+1CH]                         ; 13C0 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 13C3 _ FF. 75, 14
        call    boxfill8                                ; 13C6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13CB _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 13CE _ 8B. 45, 20
        movsx   eax, al                                 ; 13D1 _ 0F BE. C0
        sub     esp, 8                                  ; 13D4 _ 83. EC, 08
        push    ?_162                                   ; 13D7 _ 68, 00000046(d)
        push    eax                                     ; 13DC _ 50
        push    dword [ebp-2CH]                         ; 13DD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13E0 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 13E3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13E6 _ FF. 75, 08
        call    showString                              ; 13E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13EE _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 13F1 _ 8B. 45, 18
        sub     esp, 12                                 ; 13F4 _ 83. EC, 0C
        push    eax                                     ; 13F7 _ 50
        call    intToHexStr                             ; 13F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13FD _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1400 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1403 _ 8B. 45, 20
        movsx   eax, al                                 ; 1406 _ 0F BE. C0
        sub     esp, 8                                  ; 1409 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 140C _ FF. 75, E0
        push    eax                                     ; 140F _ 50
        push    dword [ebp-2CH]                         ; 1410 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1413 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1416 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1419 _ FF. 75, 08
        call    showString                              ; 141C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1421 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1424 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1428 _ 8B. 45, 20
        movsx   eax, al                                 ; 142B _ 0F BE. C0
        sub     esp, 8                                  ; 142E _ 83. EC, 08
        push    ?_163                                   ; 1431 _ 68, 00000050(d)
        push    eax                                     ; 1436 _ 50
        push    dword [ebp-2CH]                         ; 1437 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 143A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 143D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1440 _ FF. 75, 08
        call    showString                              ; 1443 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1448 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 144B _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 144E _ 8B. 00
        sub     esp, 12                                 ; 1450 _ 83. EC, 0C
        push    eax                                     ; 1453 _ 50
        call    intToHexStr                             ; 1454 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1459 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 145C _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 145F _ 8B. 45, 20
        movsx   eax, al                                 ; 1462 _ 0F BE. C0
        sub     esp, 8                                  ; 1465 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1468 _ FF. 75, E4
        push    eax                                     ; 146B _ 50
        push    dword [ebp-2CH]                         ; 146C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 146F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1472 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1475 _ FF. 75, 08
        call    showString                              ; 1478 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 147D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1480 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1484 _ 8B. 45, 20
        movsx   eax, al                                 ; 1487 _ 0F BE. C0
        sub     esp, 8                                  ; 148A _ 83. EC, 08
        push    ?_164                                   ; 148D _ 68, 0000005E(d)
        push    eax                                     ; 1492 _ 50
        push    dword [ebp-2CH]                         ; 1493 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1496 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1499 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 149C _ FF. 75, 08
        call    showString                              ; 149F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14A4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 14A7 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 14AA _ 8B. 40, 04
        sub     esp, 12                                 ; 14AD _ 83. EC, 0C
        push    eax                                     ; 14B0 _ 50
        call    intToHexStr                             ; 14B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14B6 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 14B9 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 14BC _ 8B. 45, 20
        movsx   eax, al                                 ; 14BF _ 0F BE. C0
        sub     esp, 8                                  ; 14C2 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 14C5 _ FF. 75, E8
        push    eax                                     ; 14C8 _ 50
        push    dword [ebp-2CH]                         ; 14C9 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 14CC _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 14CF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14D2 _ FF. 75, 08
        call    showString                              ; 14D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14DA _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 14DD _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 14E1 _ 8B. 45, 20
        movsx   eax, al                                 ; 14E4 _ 0F BE. C0
        sub     esp, 8                                  ; 14E7 _ 83. EC, 08
        push    ?_165                                   ; 14EA _ 68, 0000006D(d)
        push    eax                                     ; 14EF _ 50
        push    dword [ebp-2CH]                         ; 14F0 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 14F3 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 14F6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14F9 _ FF. 75, 08
        call    showString                              ; 14FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1501 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1504 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1507 _ 8B. 40, 08
        sub     esp, 12                                 ; 150A _ 83. EC, 0C
        push    eax                                     ; 150D _ 50
        call    intToHexStr                             ; 150E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1513 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1516 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1519 _ 8B. 45, 20
        movsx   eax, al                                 ; 151C _ 0F BE. C0
        sub     esp, 8                                  ; 151F _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1522 _ FF. 75, EC
        push    eax                                     ; 1525 _ 50
        push    dword [ebp-2CH]                         ; 1526 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1529 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 152C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 152F _ FF. 75, 08
        call    showString                              ; 1532 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1537 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 153A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 153E _ 8B. 45, 20
        movsx   eax, al                                 ; 1541 _ 0F BE. C0
        sub     esp, 8                                  ; 1544 _ 83. EC, 08
        push    ?_166                                   ; 1547 _ 68, 00000079(d)
        push    eax                                     ; 154C _ 50
        push    dword [ebp-2CH]                         ; 154D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1550 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1553 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1556 _ FF. 75, 08
        call    showString                              ; 1559 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 155E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1561 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1564 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1567 _ 83. EC, 0C
        push    eax                                     ; 156A _ 50
        call    intToHexStr                             ; 156B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1570 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1573 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1576 _ 8B. 45, 20
        movsx   eax, al                                 ; 1579 _ 0F BE. C0
        sub     esp, 8                                  ; 157C _ 83. EC, 08
        push    dword [ebp-10H]                         ; 157F _ FF. 75, F0
        push    eax                                     ; 1582 _ 50
        push    dword [ebp-2CH]                         ; 1583 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1586 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1589 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 158C _ FF. 75, 08
        call    showString                              ; 158F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1594 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1597 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 159B _ 8B. 45, 20
        movsx   eax, al                                 ; 159E _ 0F BE. C0
        sub     esp, 8                                  ; 15A1 _ 83. EC, 08
        push    ?_167                                   ; 15A4 _ 68, 00000086(d)
        push    eax                                     ; 15A9 _ 50
        push    dword [ebp-2CH]                         ; 15AA _ FF. 75, D4
        push    dword [ebp-30H]                         ; 15AD _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 15B0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 15B3 _ FF. 75, 08
        call    showString                              ; 15B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15BB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 15BE _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 15C1 _ 8B. 40, 10
        sub     esp, 12                                 ; 15C4 _ 83. EC, 0C
        push    eax                                     ; 15C7 _ 50
        call    intToHexStr                             ; 15C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15CD _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 15D0 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 15D3 _ 8B. 45, 20
        movsx   eax, al                                 ; 15D6 _ 0F BE. C0
        sub     esp, 8                                  ; 15D9 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 15DC _ FF. 75, F4
        push    eax                                     ; 15DF _ 50
        push    dword [ebp-2CH]                         ; 15E0 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 15E3 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 15E6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 15E9 _ FF. 75, 08
        call    showString                              ; 15EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15F1 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 15F4 _ 83. 45, D4, 10
        nop                                             ; 15F8 _ 90
        leave                                           ; 15F9 _ C9
        ret                                             ; 15FA _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 15FB _ 55
        mov     ebp, esp                                ; 15FC _ 89. E5
        sub     esp, 24                                 ; 15FE _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1601 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1606 _ 83. EC, 08
        push    37500                                   ; 1609 _ 68, 0000927C
        push    eax                                     ; 160E _ 50
        call    memman_alloc_4K                         ; 160F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1614 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1617 _ 89. 45, F0
        sub     esp, 12                                 ; 161A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 161D _ FF. 75, 08
        call    sheet_alloc                             ; 1620 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1625 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1628 _ 89. 45, F4
        sub     esp, 12                                 ; 162B _ 83. EC, 0C
        push    99                                      ; 162E _ 6A, 63
        push    125                                     ; 1630 _ 6A, 7D
        push    300                                     ; 1632 _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1637 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 163A _ FF. 75, F4
        call    sheet_setbuf                            ; 163D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1642 _ 83. C4, 20
        sub     esp, 4                                  ; 1645 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1648 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 164B _ FF. 75, F4
        push    dword [ebp+8H]                          ; 164E _ FF. 75, 08
        call    make_window8                            ; 1651 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1656 _ 83. C4, 10
        push    120                                     ; 1659 _ 6A, 78
        push    200                                     ; 165B _ 68, 000000C8
        push    dword [ebp-0CH]                         ; 1660 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1663 _ FF. 75, 08
        call    sheet_slide                             ; 1666 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 166B _ 83. C4, 10
        sub     esp, 4                                  ; 166E _ 83. EC, 04
        push    1                                       ; 1671 _ 6A, 01
        push    dword [ebp-0CH]                         ; 1673 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1676 _ FF. 75, 08
        call    sheet_level_updown                      ; 1679 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 167E _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1681 _ 8B. 45, F4
        leave                                           ; 1684 _ C9
        ret                                             ; 1685 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1686 _ 55
        mov     ebp, esp                                ; 1687 _ 89. E5
        push    ebx                                     ; 1689 _ 53
        sub     esp, 36                                 ; 168A _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 168D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1690 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1693 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1696 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1699 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 169C _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 169F _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 16A2 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16A5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16A8 _ 8B. 00
        push    0                                       ; 16AA _ 6A, 00
        push    edx                                     ; 16AC _ 52
        push    0                                       ; 16AD _ 6A, 00
        push    0                                       ; 16AF _ 6A, 00
        push    8                                       ; 16B1 _ 6A, 08
        push    dword [ebp-10H]                         ; 16B3 _ FF. 75, F0
        push    eax                                     ; 16B6 _ 50
        call    boxfill8                                ; 16B7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16BC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 16BF _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 16C2 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 16C5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16C8 _ 8B. 00
        push    1                                       ; 16CA _ 6A, 01
        push    edx                                     ; 16CC _ 52
        push    1                                       ; 16CD _ 6A, 01
        push    1                                       ; 16CF _ 6A, 01
        push    7                                       ; 16D1 _ 6A, 07
        push    dword [ebp-10H]                         ; 16D3 _ FF. 75, F0
        push    eax                                     ; 16D6 _ 50
        call    boxfill8                                ; 16D7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16DC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 16DF _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 16E2 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16E5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16E8 _ 8B. 00
        push    edx                                     ; 16EA _ 52
        push    0                                       ; 16EB _ 6A, 00
        push    0                                       ; 16ED _ 6A, 00
        push    0                                       ; 16EF _ 6A, 00
        push    8                                       ; 16F1 _ 6A, 08
        push    dword [ebp-10H]                         ; 16F3 _ FF. 75, F0
        push    eax                                     ; 16F6 _ 50
        call    boxfill8                                ; 16F7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16FC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 16FF _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1702 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1705 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1708 _ 8B. 00
        push    edx                                     ; 170A _ 52
        push    1                                       ; 170B _ 6A, 01
        push    1                                       ; 170D _ 6A, 01
        push    1                                       ; 170F _ 6A, 01
        push    7                                       ; 1711 _ 6A, 07
        push    dword [ebp-10H]                         ; 1713 _ FF. 75, F0
        push    eax                                     ; 1716 _ 50
        call    boxfill8                                ; 1717 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 171C _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 171F _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1722 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1725 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1728 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 172B _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 172E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1731 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1734 _ 8B. 00
        push    ebx                                     ; 1736 _ 53
        push    ecx                                     ; 1737 _ 51
        push    1                                       ; 1738 _ 6A, 01
        push    edx                                     ; 173A _ 52
        push    15                                      ; 173B _ 6A, 0F
        push    dword [ebp-10H]                         ; 173D _ FF. 75, F0
        push    eax                                     ; 1740 _ 50
        call    boxfill8                                ; 1741 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1746 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1749 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 174C _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 174F _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1752 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1755 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1758 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 175B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 175E _ 8B. 00
        push    ebx                                     ; 1760 _ 53
        push    ecx                                     ; 1761 _ 51
        push    0                                       ; 1762 _ 6A, 00
        push    edx                                     ; 1764 _ 52
        push    0                                       ; 1765 _ 6A, 00
        push    dword [ebp-10H]                         ; 1767 _ FF. 75, F0
        push    eax                                     ; 176A _ 50
        call    boxfill8                                ; 176B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1770 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1773 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1776 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1779 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 177C _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 177F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1782 _ 8B. 00
        push    ecx                                     ; 1784 _ 51
        push    edx                                     ; 1785 _ 52
        push    2                                       ; 1786 _ 6A, 02
        push    2                                       ; 1788 _ 6A, 02
        push    8                                       ; 178A _ 6A, 08
        push    dword [ebp-10H]                         ; 178C _ FF. 75, F0
        push    eax                                     ; 178F _ 50
        call    boxfill8                                ; 1790 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1795 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1798 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 179B _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 179E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17A1 _ 8B. 00
        push    20                                      ; 17A3 _ 6A, 14
        push    edx                                     ; 17A5 _ 52
        push    3                                       ; 17A6 _ 6A, 03
        push    3                                       ; 17A8 _ 6A, 03
        push    12                                      ; 17AA _ 6A, 0C
        push    dword [ebp-10H]                         ; 17AC _ FF. 75, F0
        push    eax                                     ; 17AF _ 50
        call    boxfill8                                ; 17B0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17B5 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 17B8 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 17BB _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 17BE _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 17C1 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 17C4 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 17C7 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 17CA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17CD _ 8B. 00
        push    ebx                                     ; 17CF _ 53
        push    ecx                                     ; 17D0 _ 51
        push    edx                                     ; 17D1 _ 52
        push    1                                       ; 17D2 _ 6A, 01
        push    15                                      ; 17D4 _ 6A, 0F
        push    dword [ebp-10H]                         ; 17D6 _ FF. 75, F0
        push    eax                                     ; 17D9 _ 50
        call    boxfill8                                ; 17DA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17DF _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 17E2 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 17E5 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 17E8 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 17EB _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 17EE _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 17F1 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 17F4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17F7 _ 8B. 00
        push    ebx                                     ; 17F9 _ 53
        push    ecx                                     ; 17FA _ 51
        push    edx                                     ; 17FB _ 52
        push    0                                       ; 17FC _ 6A, 00
        push    0                                       ; 17FE _ 6A, 00
        push    dword [ebp-10H]                         ; 1800 _ FF. 75, F0
        push    eax                                     ; 1803 _ 50
        call    boxfill8                                ; 1804 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1809 _ 83. C4, 1C
        sub     esp, 8                                  ; 180C _ 83. EC, 08
        push    dword [ebp+10H]                         ; 180F _ FF. 75, 10
        push    7                                       ; 1812 _ 6A, 07
        push    4                                       ; 1814 _ 6A, 04
        push    8                                       ; 1816 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1818 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 181B _ FF. 75, 08
        call    showString                              ; 181E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1823 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1826 _ C7. 45, E8, 00000000
        jmp     ?_072                                   ; 182D _ EB, 7D

?_066:  mov     dword [ebp-14H], 0                      ; 182F _ C7. 45, EC, 00000000
        jmp     ?_071                                   ; 1836 _ EB, 6A

?_067:  mov     eax, dword [ebp-18H]                    ; 1838 _ 8B. 45, E8
        shl     eax, 4                                  ; 183B _ C1. E0, 04
        mov     edx, eax                                ; 183E _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1840 _ 8B. 45, EC
        add     eax, edx                                ; 1843 _ 01. D0
        add     eax, closebtn.1903                      ; 1845 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 184A _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 184D _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1850 _ 80. 7D, E7, 40
        jnz     ?_068                                   ; 1854 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1856 _ C6. 45, E7, 00
        jmp     ?_070                                   ; 185A _ EB, 16

?_068:  cmp     byte [ebp-19H], 36                      ; 185C _ 80. 7D, E7, 24
        jnz     ?_069                                   ; 1860 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1862 _ C6. 45, E7, 0F
        jmp     ?_070                                   ; 1866 _ EB, 0A

?_069:  cmp     byte [ebp-19H], 81                      ; 1868 _ 80. 7D, E7, 51
        jnz     ?_070                                   ; 186C _ 75, 04
        mov     byte [ebp-19H], 8                       ; 186E _ C6. 45, E7, 08
?_070:  mov     eax, dword [ebp+0CH]                    ; 1872 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1875 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1877 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 187A _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 187D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1880 _ 8B. 40, 04
        imul    ecx, eax                                ; 1883 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1886 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1889 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 188C _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 188F _ 8B. 45, EC
        add     eax, ebx                                ; 1892 _ 01. D8
        add     eax, ecx                                ; 1894 _ 01. C8
        add     edx, eax                                ; 1896 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1898 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 189C _ 88. 02
        add     dword [ebp-14H], 1                      ; 189E _ 83. 45, EC, 01
?_071:  cmp     dword [ebp-14H], 15                     ; 18A2 _ 83. 7D, EC, 0F
        jle     ?_067                                   ; 18A6 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 18A8 _ 83. 45, E8, 01
?_072:  cmp     dword [ebp-18H], 13                     ; 18AC _ 83. 7D, E8, 0D
        jle     ?_066                                   ; 18B0 _ 0F 8E, FFFFFF79
        nop                                             ; 18B6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 18B7 _ 8B. 5D, FC
        leave                                           ; 18BA _ C9
        ret                                             ; 18BB _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 18BC _ 55
        mov     ebp, esp                                ; 18BD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 18BF _ 8B. 45, 08
        mov     dword [eax], 0                          ; 18C2 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 18C8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 18CB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 18D2 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 18D5 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 18DC _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 18DF _ C7. 40, 0C, 00000000
        nop                                             ; 18E6 _ 90
        pop     ebp                                     ; 18E7 _ 5D
        ret                                             ; 18E8 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 18E9 _ 55
        mov     ebp, esp                                ; 18EA _ 89. E5
        sub     esp, 16                                 ; 18EC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 18EF _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 18F6 _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 18FD _ EB, 14

?_073:  mov     eax, dword [ebp+8H]                     ; 18FF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1902 _ 8B. 55, FC
        add     edx, 2                                  ; 1905 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1908 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 190C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 190F _ 83. 45, FC, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 1913 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1916 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1918 _ 39. 45, FC
        jl      ?_073                                   ; 191B _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 191D _ 8B. 45, F8
        leave                                           ; 1920 _ C9
        ret                                             ; 1921 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1922 _ 55
        mov     ebp, esp                                ; 1923 _ 89. E5
        sub     esp, 16                                 ; 1925 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1928 _ C7. 45, F8, 00000000
        jmp     ?_078                                   ; 192F _ E9, 00000085

?_075:  mov     eax, dword [ebp+8H]                     ; 1934 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1937 _ 8B. 55, F8
        add     edx, 2                                  ; 193A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 193D _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1941 _ 39. 45, 0C
        ja      ?_077                                   ; 1944 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1946 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1949 _ 8B. 55, F8
        add     edx, 2                                  ; 194C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 194F _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1952 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1955 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1958 _ 8B. 55, F8
        add     edx, 2                                  ; 195B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 195E _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1961 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1964 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1967 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 196A _ 8B. 55, F8
        add     edx, 2                                  ; 196D _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1970 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1973 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1976 _ 8B. 55, F8
        add     edx, 2                                  ; 1979 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 197C _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1980 _ 2B. 45, 0C
        mov     edx, eax                                ; 1983 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1985 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1988 _ 8B. 4D, F8
        add     ecx, 2                                  ; 198B _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 198E _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1992 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1995 _ 8B. 55, F8
        add     edx, 2                                  ; 1998 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 199B _ 8B. 44 D0, 04
        test    eax, eax                                ; 199F _ 85. C0
        jnz     ?_076                                   ; 19A1 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 19A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19A6 _ 8B. 00
        lea     edx, [eax-1H]                           ; 19A8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 19AB _ 8B. 45, 08
        mov     dword [eax], edx                        ; 19AE _ 89. 10
?_076:  mov     eax, dword [ebp-4H]                     ; 19B0 _ 8B. 45, FC
        jmp     ?_079                                   ; 19B3 _ EB, 17

?_077:  add     dword [ebp-8H], 1                       ; 19B5 _ 83. 45, F8, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 19B9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19BC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 19BE _ 39. 45, F8
        jl      ?_075                                   ; 19C1 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 19C7 _ B8, 00000000
?_079:  leave                                           ; 19CC _ C9
        ret                                             ; 19CD _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 19CE _ 55
        mov     ebp, esp                                ; 19CF _ 89. E5
        sub     esp, 16                                 ; 19D1 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 19D4 _ 8B. 45, 0C
        add     eax, 4095                               ; 19D7 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 19DC _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 19E1 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 19E4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19E7 _ FF. 75, 08
        call    memman_alloc_FF                         ; 19EA _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 19EF _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 19F2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 19F5 _ 8B. 45, FC
        leave                                           ; 19F8 _ C9
        ret                                             ; 19F9 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 19FA _ 55
        mov     ebp, esp                                ; 19FB _ 89. E5
        push    ebx                                     ; 19FD _ 53
        sub     esp, 16                                 ; 19FE _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1A01 _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 1A08 _ EB, 15

?_080:  mov     eax, dword [ebp+8H]                     ; 1A0A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A0D _ 8B. 55, F4
        add     edx, 2                                  ; 1A10 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1A13 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1A16 _ 39. 45, 0C
        jc      ?_082                                   ; 1A19 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1A1B _ 83. 45, F4, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1A1F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A22 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1A24 _ 39. 45, F4
        jl      ?_080                                   ; 1A27 _ 7C, E1
        jmp     ?_083                                   ; 1A29 _ EB, 01

?_082:  nop                                             ; 1A2B _ 90
?_083:  cmp     dword [ebp-0CH], 0                      ; 1A2C _ 83. 7D, F4, 00
        jle     ?_085                                   ; 1A30 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 1A36 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1A39 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A3C _ 8B. 45, 08
        add     edx, 2                                  ; 1A3F _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1A42 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1A45 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1A48 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1A4B _ 8B. 45, 08
        add     ecx, 2                                  ; 1A4E _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1A51 _ 8B. 44 C8, 04
        add     eax, edx                                ; 1A55 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 1A57 _ 39. 45, 0C
        jne     ?_085                                   ; 1A5A _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1A60 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1A63 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A66 _ 8B. 45, 08
        add     edx, 2                                  ; 1A69 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1A6C _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 1A70 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1A73 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 1A76 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1A79 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1A7C _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1A7F _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1A82 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1A86 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A89 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1A8B _ 39. 45, F4
        jge     ?_084                                   ; 1A8E _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1A90 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1A93 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1A96 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1A99 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A9C _ 8B. 55, F4
        add     edx, 2                                  ; 1A9F _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1AA2 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1AA5 _ 39. C1
        jnz     ?_084                                   ; 1AA7 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 1AA9 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1AAC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1AAF _ 8B. 45, 08
        add     edx, 2                                  ; 1AB2 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1AB5 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1AB9 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1ABC _ 8B. 4D, F4
        add     ecx, 2                                  ; 1ABF _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1AC2 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1AC6 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1AC9 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1ACC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1ACF _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1AD2 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1AD5 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1AD9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1ADC _ 8B. 00
        lea     edx, [eax-1H]                           ; 1ADE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1AE1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1AE4 _ 89. 10
?_084:  mov     eax, 0                                  ; 1AE6 _ B8, 00000000
        jmp     ?_091                                   ; 1AEB _ E9, 0000011C

?_085:  mov     eax, dword [ebp+8H]                     ; 1AF0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AF3 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1AF5 _ 39. 45, F4
        jge     ?_086                                   ; 1AF8 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1AFA _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1AFD _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1B00 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1B03 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B06 _ 8B. 55, F4
        add     edx, 2                                  ; 1B09 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1B0C _ 8B. 04 D0
        cmp     ecx, eax                                ; 1B0F _ 39. C1
        jnz     ?_086                                   ; 1B11 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1B13 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B16 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1B19 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1B1C _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1B1F _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1B22 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B25 _ 8B. 55, F4
        add     edx, 2                                  ; 1B28 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1B2B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1B2F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1B32 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1B35 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B38 _ 8B. 55, F4
        add     edx, 2                                  ; 1B3B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1B3E _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1B42 _ B8, 00000000
        jmp     ?_091                                   ; 1B47 _ E9, 000000C0

?_086:  mov     eax, dword [ebp+8H]                     ; 1B4C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B4F _ 8B. 00
        cmp     eax, 4095                               ; 1B51 _ 3D, 00000FFF
        jg      ?_090                                   ; 1B56 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1B5C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B5F _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1B61 _ 89. 45, F8
        jmp     ?_088                                   ; 1B64 _ EB, 28

?_087:  mov     eax, dword [ebp-8H]                     ; 1B66 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1B69 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1B6C _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 1B6F _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 1B72 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 1B75 _ 8B. 45, 08
        add     edx, 2                                  ; 1B78 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1B7B _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1B7E _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 1B80 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 1B83 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 1B86 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 1B8A _ 83. 6D, F8, 01
?_088:  mov     eax, dword [ebp-8H]                     ; 1B8E _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1B91 _ 3B. 45, F4
        jg      ?_087                                   ; 1B94 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1B96 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B99 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1B9B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B9E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1BA1 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1BA3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1BA6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BA9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1BAC _ 8B. 00
        cmp     edx, eax                                ; 1BAE _ 39. C2
        jge     ?_089                                   ; 1BB0 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1BB2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1BB5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1BB7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1BBA _ 89. 50, 04
?_089:  mov     eax, dword [ebp+8H]                     ; 1BBD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1BC0 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1BC3 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1BC6 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1BC9 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1BCC _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1BCF _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1BD2 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1BD5 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1BD8 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1BDC _ B8, 00000000
        jmp     ?_091                                   ; 1BE1 _ EB, 29

?_090:  mov     eax, dword [ebp+8H]                     ; 1BE3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1BE6 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1BE9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1BEC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1BEF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1BF2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1BF5 _ 8B. 40, 08
        mov     edx, eax                                ; 1BF8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1BFA _ 8B. 45, 10
        add     eax, edx                                ; 1BFD _ 01. D0
        mov     edx, eax                                ; 1BFF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C01 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C04 _ 89. 50, 08
        mov     eax, 4294967295                         ; 1C07 _ B8, FFFFFFFF
?_091:  add     esp, 16                                 ; 1C0C _ 83. C4, 10
        pop     ebx                                     ; 1C0F _ 5B
        pop     ebp                                     ; 1C10 _ 5D
        ret                                             ; 1C11 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1C12 _ 55
        mov     ebp, esp                                ; 1C13 _ 89. E5
        sub     esp, 16                                 ; 1C15 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1C18 _ 8B. 45, 10
        add     eax, 4095                               ; 1C1B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1C20 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1C25 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1C28 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1C2B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C2E _ FF. 75, 08
        call    memman_free                             ; 1C31 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1C36 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 1C39 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1C3C _ 8B. 45, FC
        leave                                           ; 1C3F _ C9
        ret                                             ; 1C40 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1C41 _ 55
        mov     ebp, esp                                ; 1C42 _ 89. E5
        sub     esp, 24                                 ; 1C44 _ 83. EC, 18
        sub     esp, 8                                  ; 1C47 _ 83. EC, 08
        push    9232                                    ; 1C4A _ 68, 00002410
        push    dword [ebp+8H]                          ; 1C4F _ FF. 75, 08
        call    memman_alloc_4K                         ; 1C52 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C57 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1C5A _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1C5D _ 83. 7D, F4, 00
        jnz     ?_092                                   ; 1C61 _ 75, 0A
        mov     eax, 0                                  ; 1C63 _ B8, 00000000
        jmp     ?_096                                   ; 1C68 _ E9, 0000009A

?_092:  mov     eax, dword [ebp+10H]                    ; 1C6D _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1C70 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 1C74 _ 83. EC, 08
        push    eax                                     ; 1C77 _ 50
        push    dword [ebp+8H]                          ; 1C78 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1C7B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C80 _ 83. C4, 10
        mov     edx, eax                                ; 1C83 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1C85 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 1C88 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1C8B _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 1C8E _ 8B. 40, 04
        test    eax, eax                                ; 1C91 _ 85. C0
        jnz     ?_093                                   ; 1C93 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 1C95 _ 8B. 45, F4
        sub     esp, 4                                  ; 1C98 _ 83. EC, 04
        push    9232                                    ; 1C9B _ 68, 00002410
        push    eax                                     ; 1CA0 _ 50
        push    dword [ebp+8H]                          ; 1CA1 _ FF. 75, 08
        call    memman_free_4K                          ; 1CA4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CA9 _ 83. C4, 10
        mov     eax, 0                                  ; 1CAC _ B8, 00000000
        jmp     ?_096                                   ; 1CB1 _ EB, 54

?_093:  mov     eax, dword [ebp-0CH]                    ; 1CB3 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1CB6 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1CB9 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1CBB _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1CBE _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 1CC1 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1CC4 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 1CC7 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1CCA _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 1CCD _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 1CD0 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1CD7 _ C7. 45, F0, 00000000
        jmp     ?_095                                   ; 1CDE _ EB, 1B

?_094:  mov     eax, dword [ebp-0CH]                    ; 1CE0 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1CE3 _ 8B. 55, F0
        add     edx, 33                                 ; 1CE6 _ 83. C2, 21
        shl     edx, 5                                  ; 1CE9 _ C1. E2, 05
        add     eax, edx                                ; 1CEC _ 01. D0
        add     eax, 16                                 ; 1CEE _ 83. C0, 10
        mov     dword [eax], 0                          ; 1CF1 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1CF7 _ 83. 45, F0, 01
?_095:  cmp     dword [ebp-10H], 255                    ; 1CFB _ 81. 7D, F0, 000000FF
        jle     ?_094                                   ; 1D02 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1D04 _ 8B. 45, F4
?_096:  leave                                           ; 1D07 _ C9
        ret                                             ; 1D08 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1D09 _ 55
        mov     ebp, esp                                ; 1D0A _ 89. E5
        sub     esp, 16                                 ; 1D0C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1D0F _ C7. 45, F8, 00000000
        jmp     ?_099                                   ; 1D16 _ EB, 4B

?_097:  mov     eax, dword [ebp+8H]                     ; 1D18 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1D1B _ 8B. 55, F8
        add     edx, 33                                 ; 1D1E _ 83. C2, 21
        shl     edx, 5                                  ; 1D21 _ C1. E2, 05
        add     eax, edx                                ; 1D24 _ 01. D0
        add     eax, 16                                 ; 1D26 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1D29 _ 8B. 00
        test    eax, eax                                ; 1D2B _ 85. C0
        jnz     ?_098                                   ; 1D2D _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 1D2F _ 8B. 45, F8
        shl     eax, 5                                  ; 1D32 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1D35 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1D3B _ 8B. 45, 08
        add     eax, edx                                ; 1D3E _ 01. D0
        add     eax, 4                                  ; 1D40 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 1D43 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1D46 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1D49 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1D50 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 1D53 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1D5A _ 8B. 45, FC
        jmp     ?_100                                   ; 1D5D _ EB, 12

?_098:  add     dword [ebp-8H], 1                       ; 1D5F _ 83. 45, F8, 01
?_099:  cmp     dword [ebp-8H], 255                     ; 1D63 _ 81. 7D, F8, 000000FF
        jle     ?_097                                   ; 1D6A _ 7E, AC
        mov     eax, 0                                  ; 1D6C _ B8, 00000000
?_100:  leave                                           ; 1D71 _ C9
        ret                                             ; 1D72 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 1D73 _ 55
        mov     ebp, esp                                ; 1D74 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1D76 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1D79 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1D7C _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1D7E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D81 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1D84 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D87 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1D8A _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1D8D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1D90 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1D93 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1D96 _ 89. 50, 14
        nop                                             ; 1D99 _ 90
        pop     ebp                                     ; 1D9A _ 5D
        ret                                             ; 1D9B _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 1D9C _ 55
        mov     ebp, esp                                ; 1D9D _ 89. E5
        push    esi                                     ; 1D9F _ 56
        push    ebx                                     ; 1DA0 _ 53
        sub     esp, 32                                 ; 1DA1 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 1DA4 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1DA7 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1DAA _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1DAD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1DB0 _ 8B. 40, 10
        add     eax, 1                                  ; 1DB3 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1DB6 _ 39. 45, 10
        jle     ?_101                                   ; 1DB9 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1DBB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1DBE _ 8B. 40, 10
        add     eax, 1                                  ; 1DC1 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1DC4 _ 89. 45, 10
?_101:  cmp     dword [ebp+10H], -1                     ; 1DC7 _ 83. 7D, 10, FF
        jge     ?_102                                   ; 1DCB _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1DCD _ C7. 45, 10, FFFFFFFF
?_102:  mov     eax, dword [ebp+0CH]                    ; 1DD4 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1DD7 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1DDA _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1DDD _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1DE0 _ 3B. 45, 10
        jle     ?_109                                   ; 1DE3 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 1DE9 _ 83. 7D, 10, 00
        js      ?_105                                   ; 1DED _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 1DF3 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1DF6 _ 89. 45, E4
        jmp     ?_104                                   ; 1DF9 _ EB, 34

?_103:  mov     eax, dword [ebp-1CH]                    ; 1DFB _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1DFE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1E01 _ 8B. 45, 08
        add     edx, 4                                  ; 1E04 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1E07 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1E0B _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1E0E _ 8B. 4D, E4
        add     ecx, 4                                  ; 1E11 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1E14 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1E18 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1E1B _ 8B. 55, E4
        add     edx, 4                                  ; 1E1E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1E21 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1E25 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1E28 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1E2B _ 83. 6D, E4, 01
?_104:  mov     eax, dword [ebp-1CH]                    ; 1E2F _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1E32 _ 3B. 45, 10
        jg      ?_103                                   ; 1E35 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1E37 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1E3A _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1E3D _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1E40 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1E43 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 1E47 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1E4A _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1E4D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E50 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E53 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E56 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E59 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E5C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E5F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E62 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E65 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1E68 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E6B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E6E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E71 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E74 _ 8B. 40, 0C
        sub     esp, 8                                  ; 1E77 _ 83. EC, 08
        push    esi                                     ; 1E7A _ 56
        push    ebx                                     ; 1E7B _ 53
        push    ecx                                     ; 1E7C _ 51
        push    edx                                     ; 1E7D _ 52
        push    eax                                     ; 1E7E _ 50
        push    dword [ebp+8H]                          ; 1E7F _ FF. 75, 08
        call    sheet_refreshmap                        ; 1E82 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E87 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E8A _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1E8D _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1E90 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E93 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E96 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E99 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E9C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E9F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1EA2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1EA5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1EA8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1EAB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1EAE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EB1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1EB4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1EB7 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1EBA _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 1EBD _ FF. 75, F4
        push    esi                                     ; 1EC0 _ 56
        push    ebx                                     ; 1EC1 _ 53
        push    ecx                                     ; 1EC2 _ 51
        push    edx                                     ; 1EC3 _ 52
        push    eax                                     ; 1EC4 _ 50
        push    dword [ebp+8H]                          ; 1EC5 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1EC8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1ECD _ 83. C4, 20
        jmp     ?_116                                   ; 1ED0 _ E9, 00000244

?_105:  mov     eax, dword [ebp+8H]                     ; 1ED5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1ED8 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 1EDB _ 39. 45, F4
        jge     ?_108                                   ; 1EDE _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 1EE0 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1EE3 _ 89. 45, E8
        jmp     ?_107                                   ; 1EE6 _ EB, 34

?_106:  mov     eax, dword [ebp-18H]                    ; 1EE8 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 1EEB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1EEE _ 8B. 45, 08
        add     edx, 4                                  ; 1EF1 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1EF4 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1EF8 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 1EFB _ 8B. 4D, E8
        add     ecx, 4                                  ; 1EFE _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1F01 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1F05 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1F08 _ 8B. 55, E8
        add     edx, 4                                  ; 1F0B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1F0E _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 1F12 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1F15 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1F18 _ 83. 45, E8, 01
?_107:  mov     eax, dword [ebp+8H]                     ; 1F1C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1F1F _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 1F22 _ 39. 45, E8
        jl      ?_106                                   ; 1F25 _ 7C, C1
?_108:  mov     eax, dword [ebp+8H]                     ; 1F27 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1F2A _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1F2D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1F30 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1F33 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F36 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F39 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F3C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1F3F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1F42 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1F45 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1F48 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F4B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F4E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1F51 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1F54 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F57 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F5A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F5D _ 8B. 40, 0C
        sub     esp, 8                                  ; 1F60 _ 83. EC, 08
        push    0                                       ; 1F63 _ 6A, 00
        push    ebx                                     ; 1F65 _ 53
        push    ecx                                     ; 1F66 _ 51
        push    edx                                     ; 1F67 _ 52
        push    eax                                     ; 1F68 _ 50
        push    dword [ebp+8H]                          ; 1F69 _ FF. 75, 08
        call    sheet_refreshmap                        ; 1F6C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F71 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 1F74 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 1F77 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1F7A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F7D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F80 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1F83 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1F86 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1F89 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1F8C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F8F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F92 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1F95 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1F98 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F9B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F9E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1FA1 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1FA4 _ 83. EC, 04
        push    esi                                     ; 1FA7 _ 56
        push    0                                       ; 1FA8 _ 6A, 00
        push    ebx                                     ; 1FAA _ 53
        push    ecx                                     ; 1FAB _ 51
        push    edx                                     ; 1FAC _ 52
        push    eax                                     ; 1FAD _ 50
        push    dword [ebp+8H]                          ; 1FAE _ FF. 75, 08
        call    sheet_refresh_new                       ; 1FB1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FB6 _ 83. C4, 20
        jmp     ?_116                                   ; 1FB9 _ E9, 0000015B

?_109:  mov     eax, dword [ebp-0CH]                    ; 1FBE _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1FC1 _ 3B. 45, 10
        jge     ?_116                                   ; 1FC4 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 1FCA _ 83. 7D, F4, 00
        js      ?_112                                   ; 1FCE _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 1FD0 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1FD3 _ 89. 45, EC
        jmp     ?_111                                   ; 1FD6 _ EB, 34

?_110:  mov     eax, dword [ebp-14H]                    ; 1FD8 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 1FDB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1FDE _ 8B. 45, 08
        add     edx, 4                                  ; 1FE1 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1FE4 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1FE8 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1FEB _ 8B. 4D, EC
        add     ecx, 4                                  ; 1FEE _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1FF1 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1FF5 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1FF8 _ 8B. 55, EC
        add     edx, 4                                  ; 1FFB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1FFE _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2002 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2005 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2008 _ 83. 45, EC, 01
?_111:  mov     eax, dword [ebp-14H]                    ; 200C _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 200F _ 3B. 45, 10
        jl      ?_110                                   ; 2012 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2014 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2017 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 201A _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 201D _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2020 _ 89. 54 88, 04
        jmp     ?_115                                   ; 2024 _ EB, 72

?_112:  cmp     dword [ebp-0CH], 0                      ; 2026 _ 83. 7D, F4, 00
        jns     ?_115                                   ; 202A _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 202C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 202F _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2032 _ 89. 45, F0
        jmp     ?_114                                   ; 2035 _ EB, 3A

?_113:  mov     eax, dword [ebp-10H]                    ; 2037 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 203A _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 203D _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2040 _ 8B. 55, F0
        add     edx, 4                                  ; 2043 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2046 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 204A _ 8B. 45, 08
        add     ecx, 4                                  ; 204D _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2050 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2054 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2057 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 205A _ 8B. 45, 08
        add     edx, 4                                  ; 205D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2060 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2064 _ 8B. 55, F0
        add     edx, 1                                  ; 2067 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 206A _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 206D _ 83. 6D, F0, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 2071 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2074 _ 3B. 45, 10
        jge     ?_113                                   ; 2077 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2079 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 207C _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 207F _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2082 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2085 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2089 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 208C _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 208F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2092 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2095 _ 89. 50, 10
?_115:  mov     eax, dword [ebp+0CH]                    ; 2098 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 209B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 209E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 20A1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 20A4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 20A7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 20AA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 20AD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 20B0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 20B3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 20B6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 20B9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 20BC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 20BF _ 8B. 40, 0C
        sub     esp, 8                                  ; 20C2 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 20C5 _ FF. 75, 10
        push    ebx                                     ; 20C8 _ 53
        push    ecx                                     ; 20C9 _ 51
        push    edx                                     ; 20CA _ 52
        push    eax                                     ; 20CB _ 50
        push    dword [ebp+8H]                          ; 20CC _ FF. 75, 08
        call    sheet_refreshmap                        ; 20CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20D4 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 20D7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 20DA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 20DD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 20E0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 20E3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 20E6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 20E9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 20EC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 20EF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 20F2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 20F5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 20F8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 20FB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 20FE _ 8B. 40, 0C
        sub     esp, 4                                  ; 2101 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2104 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2107 _ FF. 75, 10
        push    ebx                                     ; 210A _ 53
        push    ecx                                     ; 210B _ 51
        push    edx                                     ; 210C _ 52
        push    eax                                     ; 210D _ 50
        push    dword [ebp+8H]                          ; 210E _ FF. 75, 08
        call    sheet_refresh_new                       ; 2111 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2116 _ 83. C4, 20
?_116:  nop                                             ; 2119 _ 90
        lea     esp, [ebp-8H]                           ; 211A _ 8D. 65, F8
        pop     ebx                                     ; 211D _ 5B
        pop     esi                                     ; 211E _ 5E
        pop     ebp                                     ; 211F _ 5D
        ret                                             ; 2120 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2121 _ 55
        mov     ebp, esp                                ; 2122 _ 89. E5
        push    edi                                     ; 2124 _ 57
        push    esi                                     ; 2125 _ 56
        push    ebx                                     ; 2126 _ 53
        sub     esp, 28                                 ; 2127 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 212A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 212D _ 8B. 40, 18
        test    eax, eax                                ; 2130 _ 85. C0
        js      ?_117                                   ; 2132 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2134 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2137 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 213A _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 213D _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2140 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2143 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2146 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2149 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 214C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 214F _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2152 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2155 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2158 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 215B _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 215E _ 8B. 45, 14
        add     edx, eax                                ; 2161 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2163 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2166 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2169 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 216C _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 216F _ 03. 45, E4
        sub     esp, 4                                  ; 2172 _ 83. EC, 04
        push    ebx                                     ; 2175 _ 53
        push    ecx                                     ; 2176 _ 51
        push    edi                                     ; 2177 _ 57
        push    esi                                     ; 2178 _ 56
        push    edx                                     ; 2179 _ 52
        push    eax                                     ; 217A _ 50
        push    dword [ebp+8H]                          ; 217B _ FF. 75, 08
        call    sheet_refresh_new                       ; 217E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2183 _ 83. C4, 20
?_117:  mov     eax, 0                                  ; 2186 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 218B _ 8D. 65, F4
        pop     ebx                                     ; 218E _ 5B
        pop     esi                                     ; 218F _ 5E
        pop     edi                                     ; 2190 _ 5F
        pop     ebp                                     ; 2191 _ 5D
        ret                                             ; 2192 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2193 _ 55
        mov     ebp, esp                                ; 2194 _ 89. E5
        push    esi                                     ; 2196 _ 56
        push    ebx                                     ; 2197 _ 53
        sub     esp, 16                                 ; 2198 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 219B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 219E _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 21A1 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 21A4 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 21A7 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 21AA _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 21AD _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21B0 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 21B3 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 21B6 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 21B9 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 21BC _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 21BF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 21C2 _ 8B. 40, 18
        test    eax, eax                                ; 21C5 _ 85. C0
        js      ?_118                                   ; 21C7 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 21CD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 21D0 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 21D3 _ 8B. 45, F4
        add     edx, eax                                ; 21D6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 21D8 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 21DB _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 21DE _ 8B. 45, F0
        add     eax, ecx                                ; 21E1 _ 01. C8
        sub     esp, 8                                  ; 21E3 _ 83. EC, 08
        push    0                                       ; 21E6 _ 6A, 00
        push    edx                                     ; 21E8 _ 52
        push    eax                                     ; 21E9 _ 50
        push    dword [ebp-0CH]                         ; 21EA _ FF. 75, F4
        push    dword [ebp-10H]                         ; 21ED _ FF. 75, F0
        push    dword [ebp+8H]                          ; 21F0 _ FF. 75, 08
        call    sheet_refreshmap                        ; 21F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21F8 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 21FB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 21FE _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2201 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2204 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2207 _ 8B. 55, 14
        add     ecx, edx                                ; 220A _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 220C _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 220F _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2212 _ 8B. 55, 10
        add     edx, ebx                                ; 2215 _ 01. DA
        sub     esp, 8                                  ; 2217 _ 83. EC, 08
        push    eax                                     ; 221A _ 50
        push    ecx                                     ; 221B _ 51
        push    edx                                     ; 221C _ 52
        push    dword [ebp+14H]                         ; 221D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2220 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2223 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2226 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 222B _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 222E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2231 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2234 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2237 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 223A _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 223D _ 8B. 45, F4
        add     edx, eax                                ; 2240 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2242 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2245 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2248 _ 8B. 45, F0
        add     eax, ebx                                ; 224B _ 01. D8
        sub     esp, 4                                  ; 224D _ 83. EC, 04
        push    ecx                                     ; 2250 _ 51
        push    0                                       ; 2251 _ 6A, 00
        push    edx                                     ; 2253 _ 52
        push    eax                                     ; 2254 _ 50
        push    dword [ebp-0CH]                         ; 2255 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2258 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 225B _ FF. 75, 08
        call    sheet_refresh_new                       ; 225E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2263 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2266 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2269 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 226C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 226F _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2272 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2275 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2278 _ 8B. 4D, 14
        add     ebx, ecx                                ; 227B _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 227D _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2280 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2283 _ 8B. 4D, 10
        add     ecx, esi                                ; 2286 _ 01. F1
        sub     esp, 4                                  ; 2288 _ 83. EC, 04
        push    edx                                     ; 228B _ 52
        push    eax                                     ; 228C _ 50
        push    ebx                                     ; 228D _ 53
        push    ecx                                     ; 228E _ 51
        push    dword [ebp+14H]                         ; 228F _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2292 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2295 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2298 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 229D _ 83. C4, 20
?_118:  nop                                             ; 22A0 _ 90
        lea     esp, [ebp-8H]                           ; 22A1 _ 8D. 65, F8
        pop     ebx                                     ; 22A4 _ 5B
        pop     esi                                     ; 22A5 _ 5E
        pop     ebp                                     ; 22A6 _ 5D
        ret                                             ; 22A7 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 22A8 _ 55
        mov     ebp, esp                                ; 22A9 _ 89. E5
        sub     esp, 48                                 ; 22AB _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 22AE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22B1 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 22B3 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 22B6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 22B9 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 22BC _ 89. 45, EC
        mov     eax, dword [ebp+1CH]                    ; 22BF _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 22C2 _ 89. 45, DC
        jmp     ?_125                                   ; 22C5 _ E9, 00000118

?_119:  mov     eax, dword [ebp+8H]                     ; 22CA _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 22CD _ 8B. 55, DC
        add     edx, 4                                  ; 22D0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 22D3 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 22D7 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 22DA _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 22DD _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 22DF _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 22E2 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 22E5 _ 8B. 55, 08
        add     edx, 1044                               ; 22E8 _ 81. C2, 00000414
        sub     eax, edx                                ; 22EE _ 29. D0
        sar     eax, 5                                  ; 22F0 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 22F3 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 22F6 _ C7. 45, E0, 00000000
        jmp     ?_124                                   ; 22FD _ E9, 000000CD

?_120:  mov     eax, dword [ebp-10H]                    ; 2302 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2305 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2308 _ 8B. 45, E0
        add     eax, edx                                ; 230B _ 01. D0
        mov     dword [ebp-8H], eax                     ; 230D _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2310 _ C7. 45, E4, 00000000
        jmp     ?_123                                   ; 2317 _ E9, 000000A0

?_121:  mov     eax, dword [ebp-10H]                    ; 231C _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 231F _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2322 _ 8B. 45, E4
        add     eax, edx                                ; 2325 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2327 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 232A _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 232D _ 3B. 45, FC
        jg      ?_122                                   ; 2330 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2336 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2339 _ 3B. 45, 14
        jge     ?_122                                   ; 233C _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 233E _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2341 _ 3B. 45, F8
        jg      ?_122                                   ; 2344 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2346 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2349 _ 3B. 45, 18
        jge     ?_122                                   ; 234C _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 234E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2351 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2354 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2358 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 235A _ 8B. 45, E4
        add     eax, edx                                ; 235D _ 01. D0
        mov     edx, eax                                ; 235F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2361 _ 8B. 45, F4
        add     eax, edx                                ; 2364 _ 01. D0
        movzx   eax, byte [eax]                         ; 2366 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2369 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 236C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 236F _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2372 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2376 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2378 _ 8B. 45, FC
        add     eax, edx                                ; 237B _ 01. D0
        mov     edx, eax                                ; 237D _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 237F _ 8B. 45, EC
        add     eax, edx                                ; 2382 _ 01. D0
        movzx   eax, byte [eax]                         ; 2384 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2387 _ 38. 45, DA
        jnz     ?_122                                   ; 238A _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 238C _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2390 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2393 _ 8B. 40, 14
        cmp     edx, eax                                ; 2396 _ 39. C2
        jz      ?_122                                   ; 2398 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 239A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 239D _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 23A0 _ 0F AF. 45, F8
        mov     edx, eax                                ; 23A4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 23A6 _ 8B. 45, FC
        add     eax, edx                                ; 23A9 _ 01. D0
        mov     edx, eax                                ; 23AB _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 23AD _ 8B. 45, E8
        add     edx, eax                                ; 23B0 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 23B2 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 23B6 _ 88. 02
?_122:  add     dword [ebp-1CH], 1                      ; 23B8 _ 83. 45, E4, 01
?_123:  mov     eax, dword [ebp-10H]                    ; 23BC _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 23BF _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 23C2 _ 39. 45, E4
        jl      ?_121                                   ; 23C5 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 23CB _ 83. 45, E0, 01
?_124:  mov     eax, dword [ebp-10H]                    ; 23CF _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 23D2 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 23D5 _ 39. 45, E0
        jl      ?_120                                   ; 23D8 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 23DE _ 83. 45, DC, 01
?_125:  mov     eax, dword [ebp-24H]                    ; 23E2 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 23E5 _ 3B. 45, 20
        jle     ?_119                                   ; 23E8 _ 0F 8E, FFFFFEDC
        nop                                             ; 23EE _ 90
        leave                                           ; 23EF _ C9
        ret                                             ; 23F0 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 23F1 _ 55
        mov     ebp, esp                                ; 23F2 _ 89. E5
        sub     esp, 64                                 ; 23F4 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 23F7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 23FA _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 23FD _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2400 _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 2404 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2406 _ C7. 45, 0C, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 240D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2410 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2413 _ 39. 45, 0C
        jle     ?_127                                   ; 2416 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2418 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 241B _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 241E _ 89. 45, 0C
?_127:  cmp     dword [ebp+10H], 0                      ; 2421 _ 83. 7D, 10, 00
        jns     ?_128                                   ; 2425 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2427 _ C7. 45, 10, 00000000
?_128:  mov     eax, dword [ebp+8H]                     ; 242E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2431 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2434 _ 39. 45, 10
        jle     ?_129                                   ; 2437 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2439 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 243C _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 243F _ 89. 45, 10
?_129:  mov     eax, dword [ebp+1CH]                    ; 2442 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2445 _ 89. 45, E0
        jmp     ?_140                                   ; 2448 _ E9, 00000140

?_130:  mov     eax, dword [ebp+8H]                     ; 244D _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2450 _ 8B. 55, E0
        add     edx, 4                                  ; 2453 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2456 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 245A _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 245D _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2460 _ 8B. 55, 08
        add     edx, 1044                               ; 2463 _ 81. C2, 00000414
        sub     eax, edx                                ; 2469 _ 29. D0
        sar     eax, 5                                  ; 246B _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 246E _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2471 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2474 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2476 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2479 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 247C _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 247F _ 8B. 55, 0C
        sub     edx, eax                                ; 2482 _ 29. C2
        mov     eax, edx                                ; 2484 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2486 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2489 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 248C _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 248F _ 8B. 55, 10
        sub     edx, eax                                ; 2492 _ 29. C2
        mov     eax, edx                                ; 2494 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2496 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2499 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 249C _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 249F _ 8B. 55, 14
        sub     edx, eax                                ; 24A2 _ 29. C2
        mov     eax, edx                                ; 24A4 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 24A6 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 24A9 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 24AC _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 24AF _ 8B. 55, 18
        sub     edx, eax                                ; 24B2 _ 29. C2
        mov     eax, edx                                ; 24B4 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 24B6 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 24B9 _ 83. 7D, D0, 00
        jns     ?_131                                   ; 24BD _ 79, 07
        mov     dword [ebp-30H], 0                      ; 24BF _ C7. 45, D0, 00000000
?_131:  cmp     dword [ebp-2CH], 0                      ; 24C6 _ 83. 7D, D4, 00
        jns     ?_132                                   ; 24CA _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 24CC _ C7. 45, D4, 00000000
?_132:  mov     eax, dword [ebp-10H]                    ; 24D3 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 24D6 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 24D9 _ 39. 45, D8
        jle     ?_133                                   ; 24DC _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 24DE _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 24E1 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 24E4 _ 89. 45, D8
?_133:  mov     eax, dword [ebp-10H]                    ; 24E7 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 24EA _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 24ED _ 39. 45, DC
        jle     ?_134                                   ; 24F0 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 24F2 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 24F5 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 24F8 _ 89. 45, DC
?_134:  mov     eax, dword [ebp-2CH]                    ; 24FB _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 24FE _ 89. 45, E4
        jmp     ?_139                                   ; 2501 _ EB, 7A

?_135:  mov     eax, dword [ebp-10H]                    ; 2503 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2506 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2509 _ 8B. 45, E4
        add     eax, edx                                ; 250C _ 01. D0
        mov     dword [ebp-8H], eax                     ; 250E _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2511 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2514 _ 89. 45, E8
        jmp     ?_138                                   ; 2517 _ EB, 58

?_136:  mov     eax, dword [ebp-10H]                    ; 2519 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 251C _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 251F _ 8B. 45, E8
        add     eax, edx                                ; 2522 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2524 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2527 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 252A _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 252D _ 0F AF. 45, E4
        mov     edx, eax                                ; 2531 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2533 _ 8B. 45, E8
        add     eax, edx                                ; 2536 _ 01. D0
        mov     edx, eax                                ; 2538 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 253A _ 8B. 45, F4
        add     eax, edx                                ; 253D _ 01. D0
        movzx   eax, byte [eax]                         ; 253F _ 0F B6. 00
        movzx   edx, al                                 ; 2542 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2545 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2548 _ 8B. 40, 14
        cmp     edx, eax                                ; 254B _ 39. C2
        jz      ?_137                                   ; 254D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 254F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2552 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2555 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2559 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 255B _ 8B. 45, FC
        add     eax, edx                                ; 255E _ 01. D0
        mov     edx, eax                                ; 2560 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2562 _ 8B. 45, EC
        add     edx, eax                                ; 2565 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2567 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 256B _ 88. 02
?_137:  add     dword [ebp-18H], 1                      ; 256D _ 83. 45, E8, 01
?_138:  mov     eax, dword [ebp-18H]                    ; 2571 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2574 _ 3B. 45, D8
        jl      ?_136                                   ; 2577 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2579 _ 83. 45, E4, 01
?_139:  mov     eax, dword [ebp-1CH]                    ; 257D _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2580 _ 3B. 45, DC
        jl      ?_135                                   ; 2583 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2589 _ 83. 45, E0, 01
?_140:  mov     eax, dword [ebp+8H]                     ; 258D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2590 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2593 _ 39. 45, E0
        jle     ?_130                                   ; 2596 _ 0F 8E, FFFFFEB1
        nop                                             ; 259C _ 90
        leave                                           ; 259D _ C9
        ret                                             ; 259E _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 259F _ 55
        mov     ebp, esp                                ; 25A0 _ 89. E5
        sub     esp, 24                                 ; 25A2 _ 83. EC, 18
        sub     esp, 8                                  ; 25A5 _ 83. EC, 08
        push    52                                      ; 25A8 _ 6A, 34
        push    67                                      ; 25AA _ 6A, 43
        call    io_out8                                 ; 25AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25B1 _ 83. C4, 10
        sub     esp, 8                                  ; 25B4 _ 83. EC, 08
        push    156                                     ; 25B7 _ 68, 0000009C
        push    64                                      ; 25BC _ 6A, 40
        call    io_out8                                 ; 25BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25C3 _ 83. C4, 10
        sub     esp, 8                                  ; 25C6 _ 83. EC, 08
        push    46                                      ; 25C9 _ 6A, 2E
        push    64                                      ; 25CB _ 6A, 40
        call    io_out8                                 ; 25CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25D2 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 25D5 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 25DF _ C7. 45, F4, 00000000
        jmp     ?_142                                   ; 25E6 _ EB, 15

?_141:  mov     eax, dword [ebp-0CH]                    ; 25E8 _ 8B. 45, F4
        shl     eax, 4                                  ; 25EB _ C1. E0, 04
        add     eax, ?_175                              ; 25EE _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 25F3 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 25F9 _ 83. 45, F4, 01
?_142:  cmp     dword [ebp-0CH], 499                    ; 25FD _ 81. 7D, F4, 000001F3
        jle     ?_141                                   ; 2604 _ 7E, E2
        nop                                             ; 2606 _ 90
        leave                                           ; 2607 _ C9
        ret                                             ; 2608 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2609 _ 55
        mov     ebp, esp                                ; 260A _ 89. E5
        sub     esp, 16                                 ; 260C _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 260F _ C7. 45, FC, 00000000
        jmp     ?_145                                   ; 2616 _ EB, 36

?_143:  mov     eax, dword [ebp-4H]                     ; 2618 _ 8B. 45, FC
        shl     eax, 4                                  ; 261B _ C1. E0, 04
        add     eax, ?_175                              ; 261E _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 2623 _ 8B. 00
        test    eax, eax                                ; 2625 _ 85. C0
        jnz     ?_144                                   ; 2627 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2629 _ 8B. 45, FC
        shl     eax, 4                                  ; 262C _ C1. E0, 04
        add     eax, ?_175                              ; 262F _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2634 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 263A _ 8B. 45, FC
        shl     eax, 4                                  ; 263D _ C1. E0, 04
        add     eax, timerctl                           ; 2640 _ 05, 00000280(d)
        add     eax, 4                                  ; 2645 _ 83. C0, 04
        jmp     ?_146                                   ; 2648 _ EB, 12

?_144:  add     dword [ebp-4H], 1                       ; 264A _ 83. 45, FC, 01
?_145:  cmp     dword [ebp-4H], 499                     ; 264E _ 81. 7D, FC, 000001F3
        jle     ?_143                                   ; 2655 _ 7E, C1
        mov     eax, 0                                  ; 2657 _ B8, 00000000
?_146:  leave                                           ; 265C _ C9
        ret                                             ; 265D _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 265E _ 55
        mov     ebp, esp                                ; 265F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2661 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2664 _ C7. 40, 04, 00000000
        nop                                             ; 266B _ 90
        pop     ebp                                     ; 266C _ 5D
        ret                                             ; 266D _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 266E _ 55
        mov     ebp, esp                                ; 266F _ 89. E5
        sub     esp, 4                                  ; 2671 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2674 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2677 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 267A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 267D _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2680 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2683 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2686 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 268A _ 88. 50, 0C
        nop                                             ; 268D _ 90
        leave                                           ; 268E _ C9
        ret                                             ; 268F _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2690 _ 55
        mov     ebp, esp                                ; 2691 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2693 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2696 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2699 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 269B _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 269E _ C7. 40, 04, 00000002
        nop                                             ; 26A5 _ 90
        pop     ebp                                     ; 26A6 _ 5D
        ret                                             ; 26A7 _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 26A8 _ 55
        mov     ebp, esp                                ; 26A9 _ 89. E5
        mov     eax, timerctl                           ; 26AB _ B8, 00000280(d)
        pop     ebp                                     ; 26B0 _ 5D
        ret                                             ; 26B1 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 26B2 _ 55
        mov     ebp, esp                                ; 26B3 _ 89. E5
        sub     esp, 24                                 ; 26B5 _ 83. EC, 18
        sub     esp, 8                                  ; 26B8 _ 83. EC, 08
        push    96                                      ; 26BB _ 6A, 60
        push    32                                      ; 26BD _ 6A, 20
        call    io_out8                                 ; 26BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26C4 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 26C7 _ A1, 00000280(d)
        add     eax, 1                                  ; 26CC _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 26CF _ A3, 00000280(d)
        mov     dword [ebp-0CH], 0                      ; 26D4 _ C7. 45, F4, 00000000
        jmp     ?_149                                   ; 26DB _ E9, 00000080

?_147:  mov     eax, dword [ebp-0CH]                    ; 26E0 _ 8B. 45, F4
        shl     eax, 4                                  ; 26E3 _ C1. E0, 04
        add     eax, ?_175                              ; 26E6 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 26EB _ 8B. 00
        cmp     eax, 2                                  ; 26ED _ 83. F8, 02
        jnz     ?_148                                   ; 26F0 _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 26F2 _ 8B. 45, F4
        shl     eax, 4                                  ; 26F5 _ C1. E0, 04
        add     eax, ?_174                              ; 26F8 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 26FD _ 8B. 00
        lea     edx, [eax-1H]                           ; 26FF _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2702 _ 8B. 45, F4
        shl     eax, 4                                  ; 2705 _ C1. E0, 04
        add     eax, ?_174                              ; 2708 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 270D _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 270F _ 8B. 45, F4
        shl     eax, 4                                  ; 2712 _ C1. E0, 04
        add     eax, ?_174                              ; 2715 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 271A _ 8B. 00
        test    eax, eax                                ; 271C _ 85. C0
        jnz     ?_148                                   ; 271E _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2720 _ 8B. 45, F4
        shl     eax, 4                                  ; 2723 _ C1. E0, 04
        add     eax, ?_175                              ; 2726 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 272B _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2731 _ 8B. 45, F4
        shl     eax, 4                                  ; 2734 _ C1. E0, 04
        add     eax, ?_177                              ; 2737 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 273C _ 0F B6. 00
        movzx   edx, al                                 ; 273F _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2742 _ 8B. 45, F4
        shl     eax, 4                                  ; 2745 _ C1. E0, 04
        add     eax, ?_176                              ; 2748 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 274D _ 8B. 00
        sub     esp, 8                                  ; 274F _ 83. EC, 08
        push    edx                                     ; 2752 _ 52
        push    eax                                     ; 2753 _ 50
        call    fifo8_put                               ; 2754 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2759 _ 83. C4, 10
?_148:  add     dword [ebp-0CH], 1                      ; 275C _ 83. 45, F4, 01
?_149:  cmp     dword [ebp-0CH], 499                    ; 2760 _ 81. 7D, F4, 000001F3
        jle     ?_147                                   ; 2767 _ 0F 8E, FFFFFF73
        nop                                             ; 276D _ 90
        leave                                           ; 276E _ C9
        ret                                             ; 276F _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2770 _ 55
        mov     ebp, esp                                ; 2771 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2773 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2776 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2779 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 277C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 277F _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2782 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2784 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2787 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 278A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 278D _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2790 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2797 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 279A _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 27A1 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 27A4 _ C7. 40, 14, 00000000
        nop                                             ; 27AB _ 90
        pop     ebp                                     ; 27AC _ 5D
        ret                                             ; 27AD _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 27AE _ 55
        mov     ebp, esp                                ; 27AF _ 89. E5
        sub     esp, 4                                  ; 27B1 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 27B4 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 27B7 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 27BA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27BD _ 8B. 40, 10
        test    eax, eax                                ; 27C0 _ 85. C0
        jnz     ?_150                                   ; 27C2 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 27C4 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 27C7 _ 8B. 40, 14
        or      eax, 01H                                ; 27CA _ 83. C8, 01
        mov     edx, eax                                ; 27CD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27CF _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 27D2 _ 89. 50, 14
        mov     eax, 4294967295                         ; 27D5 _ B8, FFFFFFFF
        jmp     ?_152                                   ; 27DA _ EB, 50

?_150:  mov     eax, dword [ebp+8H]                     ; 27DC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 27DF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 27E1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27E4 _ 8B. 40, 08
        add     edx, eax                                ; 27E7 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 27E9 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 27ED _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 27EF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27F2 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 27F5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27F8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27FB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 27FE _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2801 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2804 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2807 _ 8B. 40, 0C
        cmp     edx, eax                                ; 280A _ 39. C2
        jnz     ?_151                                   ; 280C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 280E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2811 _ C7. 40, 08, 00000000
?_151:  mov     eax, dword [ebp+8H]                     ; 2818 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 281B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 281E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2821 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2824 _ 89. 50, 10
        mov     eax, 1                                  ; 2827 _ B8, 00000001
?_152:  leave                                           ; 282C _ C9
        ret                                             ; 282D _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 282E _ 55
        mov     ebp, esp                                ; 282F _ 89. E5
        sub     esp, 16                                 ; 2831 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2834 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2837 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 283A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 283D _ 8B. 40, 0C
        cmp     edx, eax                                ; 2840 _ 39. C2
        jnz     ?_153                                   ; 2842 _ 75, 07
        mov     eax, 4294967295                         ; 2844 _ B8, FFFFFFFF
        jmp     ?_155                                   ; 2849 _ EB, 51

?_153:  mov     eax, dword [ebp+8H]                     ; 284B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 284E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2850 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2853 _ 8B. 40, 04
        add     eax, edx                                ; 2856 _ 01. D0
        movzx   eax, byte [eax]                         ; 2858 _ 0F B6. 00
        movzx   eax, al                                 ; 285B _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 285E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2861 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2864 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2867 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 286A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 286D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2870 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2873 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2876 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2879 _ 8B. 40, 0C
        cmp     edx, eax                                ; 287C _ 39. C2
        jnz     ?_154                                   ; 287E _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2880 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2883 _ C7. 40, 04, 00000000
?_154:  mov     eax, dword [ebp+8H]                     ; 288A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 288D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2890 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2893 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2896 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2899 _ 8B. 45, FC
?_155:  leave                                           ; 289C _ C9
        ret                                             ; 289D _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 289E _ 55
        mov     ebp, esp                                ; 289F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 28A1 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 28A4 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 28A7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28AA _ 8B. 40, 10
        sub     edx, eax                                ; 28AD _ 29. C2
        mov     eax, edx                                ; 28AF _ 89. D0
        pop     ebp                                     ; 28B1 _ 5D
        ret                                             ; 28B2 _ C3
; fifo8_status End of function



?_156:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_157:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_158:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_159:                                                  ; byte
        db 35H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 001F _ 5[secs].

?_160:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 0027 _ 3[secs].

?_161:                                                  ; byte
        db 54H, 68H, 65H, 20H, 6DH, 6FH, 75H, 73H       ; 002F _ The mous
        db 65H, 20H, 69H, 73H, 20H, 6DH, 6FH, 76H       ; 0037 _ e is mov
        db 69H, 6EH, 67H, 2EH, 2EH, 2EH, 00H            ; 003F _ ing....

?_162:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0046 _ Page is:
        db 20H, 00H                                     ; 004E _  .

?_163:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0050 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0058 _ Low: .

?_164:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 005E _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0066 _ High: .

?_165:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 006D _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0075 _ w: .

?_166:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0079 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0081 _ gh: .

?_167:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0086 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_168:  db 00H                                          ; 0002 _ .

?_169:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

keytable:                                               ; byte
        db 00H, 00H, 31H, 32H, 33H, 34H, 35H, 36H       ; 0020 _ ..123456
        db 37H, 38H, 39H, 30H, 2DH, 5EH, 00H, 00H       ; 0028 _ 7890-^..
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 0030 _ QWERTYUI
        db 4FH, 50H, 40H, 5BH, 00H, 00H, 41H, 53H       ; 0038 _ OP@[..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 3BH       ; 0040 _ DFGHJKL;
        db 3AH, 00H, 00H, 5DH, 5AH, 58H, 43H, 56H       ; 0048 _ :..]ZXCV
        db 42H, 4EH, 4DH, 2CH, 2EH, 2FH, 00H, 2AH       ; 0050 _ BNM,./.*
        db 00H, 20H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ . ......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 37H       ; 0060 _ .......7
        db 38H, 39H, 2DH, 34H, 35H, 36H, 2BH, 31H       ; 0068 _ 89-456+1
        db 32H, 33H, 30H, 2EH                           ; 0070 _ 230.

pos.1702: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.1734:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.1779:                                            ; byte
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C0 _ **......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D0 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ ........
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00E0 _ *OO*....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 00F0 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0100 _ *OOOO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0110 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0118 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 0120 _ *OOOOOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0128 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0130 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0138 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH       ; 0140 _ *OOOOO**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0148 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0150 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0158 _ ........
        db 2AH, 4FH, 2AH, 2AH, 4FH, 4FH, 2AH, 2EH       ; 0160 _ *O**OO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0168 _ ........
        db 2AH, 2AH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0170 _ **..*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0178 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0180 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0188 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0190 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0198 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 01A0 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01A8 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH       ; 01B0 _ ......**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B8 _ ........

closebtn.1903:                                          ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01C0 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 01C8 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01D0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01E0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01E8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0200 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0208 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0210 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0218 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 0220 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0228 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0230 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0238 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0240 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0248 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0250 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0258 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0260 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0268 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0270 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0278 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0280 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0288 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0290 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0298 _ @@@@@@@@



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_170:  resw    1                                       ; 0004

?_171:  resw    1                                       ; 0006

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

timerInfo:                                              ; byte
        resb    24                                      ; 0200

timerbuf: resq  1                                       ; 0218

timerInfo2.1690:                                        ; byte
        resb    24                                      ; 0220

timerbuf2.1692:                                         ; qword
        resq    1                                       ; 0238

timerInfo3.1691:                                        ; byte
        resb    24                                      ; 0240

timerbuf3.1693:                                         ; qword
        resq    1                                       ; 0258

line.1701:                                              ; dword
        resd    1                                       ; 0260

str.1822:                                               ; byte
        resb    1                                       ; 0264

?_172:  resb    9                                       ; 0265

?_173:  resb    2                                       ; 026E

line.1855:                                              ; dword
        resd    1                                       ; 0270

pos.1854: resd  3                                       ; 0274

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_174:                                                  ; byte
        resb    4                                       ; 0284

?_175:                                                  ; byte
        resb    4                                       ; 0288

?_176:                                                  ; byte
        resb    4                                       ; 028C

?_177:                                                  ; byte
        resb    7988                                    ; 0290


