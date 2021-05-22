; Disassembly of file: ckernel.o
; Sat May 22 13:21:36 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    edi                                     ; 0003 _ 57
        push    esi                                     ; 0004 _ 56
        push    ebx                                     ; 0005 _ 53
        sub     esp, 140                                ; 0006 _ 81. EC, 0000008C
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 000C _ 65: A1, 00000014
        mov     dword [ebp-1CH], eax                    ; 0012 _ 89. 45, E4
        xor     eax, eax                                ; 0015 _ 31. C0
        sub     esp, 12                                 ; 0017 _ 83. EC, 0C
        push    bootInfo                                ; 001A _ 68, 00000004(d)
        call    initBootInfo                            ; 001F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0024 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0027 _ A1, 00000004(d)
        mov     dword [ebp-68H], eax                    ; 002C _ 89. 45, 98
        movzx   eax, word [?_238]                       ; 002F _ 0F B7. 05, 00000008(d)
        cwde                                            ; 0036 _ 98
        mov     dword [ebp-64H], eax                    ; 0037 _ 89. 45, 9C
        movzx   eax, word [?_239]                       ; 003A _ 0F B7. 05, 0000000A(d)
        cwde                                            ; 0041 _ 98
        mov     dword [ebp-60H], eax                    ; 0042 _ 89. 45, A0
        call    getTimerController                      ; 0045 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-5CH], eax                    ; 004A _ 89. 45, A4
        call    init_pit                                ; 004D _ E8, FFFFFFFC(rel)
        push    0                                       ; 0052 _ 6A, 00
        push    timerbuf                                ; 0054 _ 68, 0000023C(d)
        push    8                                       ; 0059 _ 6A, 08
        push    timerInfo                               ; 005B _ 68, 00000220(d)
        call    fifo8_init                              ; 0060 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0065 _ 83. C4, 10
        call    timer_alloc                             ; 0068 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-58H], eax                    ; 006D _ 89. 45, A8
        sub     esp, 4                                  ; 0070 _ 83. EC, 04
        push    10                                      ; 0073 _ 6A, 0A
        push    timerInfo                               ; 0075 _ 68, 00000220(d)
        push    dword [ebp-58H]                         ; 007A _ FF. 75, A8
        call    timer_init                              ; 007D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0082 _ 83. C4, 10
        sub     esp, 8                                  ; 0085 _ 83. EC, 08
        push    100                                     ; 0088 _ 6A, 64
        push    dword [ebp-58H]                         ; 008A _ FF. 75, A8
        call    timer_setTime                           ; 008D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0092 _ 83. C4, 10
        call    timer_alloc                             ; 0095 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], eax                    ; 009A _ 89. 45, AC
        sub     esp, 4                                  ; 009D _ 83. EC, 04
        push    2                                       ; 00A0 _ 6A, 02
        push    timerInfo                               ; 00A2 _ 68, 00000220(d)
        push    dword [ebp-54H]                         ; 00A7 _ FF. 75, AC
        call    timer_init                              ; 00AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AF _ 83. C4, 10
        sub     esp, 8                                  ; 00B2 _ 83. EC, 08
        push    300                                     ; 00B5 _ 68, 0000012C
        push    dword [ebp-54H]                         ; 00BA _ FF. 75, AC
        call    timer_setTime                           ; 00BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C2 _ 83. C4, 10
        call    timer_alloc                             ; 00C5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-50H], eax                    ; 00CA _ 89. 45, B0
        sub     esp, 4                                  ; 00CD _ 83. EC, 04
        push    1                                       ; 00D0 _ 6A, 01
        push    timerInfo                               ; 00D2 _ 68, 00000220(d)
        push    dword [ebp-50H]                         ; 00D7 _ FF. 75, B0
        call    timer_init                              ; 00DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DF _ 83. C4, 10
        sub     esp, 8                                  ; 00E2 _ 83. EC, 08
        push    50                                      ; 00E5 _ 6A, 32
        push    dword [ebp-50H]                         ; 00E7 _ FF. 75, B0
        call    timer_setTime                           ; 00EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EF _ 83. C4, 10
        push    0                                       ; 00F2 _ 6A, 00
        push    keybuf                                  ; 00F4 _ 68, 00000060(d)
        push    32                                      ; 00F9 _ 6A, 20
        push    keyInfo                                 ; 00FB _ 68, 0000000C(d)
        call    fifo8_init                              ; 0100 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0105 _ 83. C4, 10
        push    0                                       ; 0108 _ 6A, 00
        push    mousebuf                                ; 010A _ 68, 00000080(d)
        push    128                                     ; 010F _ 68, 00000080
        push    mouseInfo                               ; 0114 _ 68, 00000028(d)
        call    fifo8_init                              ; 0119 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 011E _ 83. C4, 10
        call    init_palette                            ; 0121 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0126 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 012B _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0130 _ 83. EC, 0C
        push    mouse_move                              ; 0133 _ 68, 00000100(d)
        call    enable_mouse                            ; 0138 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 013D _ 83. C4, 10
        call    get_addr_buffer                         ; 0140 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 0145 _ 89. 45, B4
        call    get_memory_block_count                  ; 0148 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 014D _ 89. 45, B8
        mov     eax, dword [memman]                     ; 0150 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0155 _ 83. EC, 0C
        push    eax                                     ; 0158 _ 50
        call    memman_init                             ; 0159 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 015E _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0161 _ A1, 00000008(d)
        sub     esp, 4                                  ; 0166 _ 83. EC, 04
        push    1072594944                              ; 0169 _ 68, 3FEE8000
        push    16809984                                ; 016E _ 68, 01008000
        push    eax                                     ; 0173 _ 50
        call    memman_free                             ; 0174 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0179 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 017C _ A1, 00000008(d)
        sub     esp, 12                                 ; 0181 _ 83. EC, 0C
        push    eax                                     ; 0184 _ 50
        call    memman_total                            ; 0185 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 018A _ 83. C4, 10
        shr     eax, 20                                 ; 018D _ C1. E8, 14
        mov     dword [ebp-44H], eax                    ; 0190 _ 89. 45, BC
        mov     eax, dword [ebp-44H]                    ; 0193 _ 8B. 45, BC
        sub     esp, 12                                 ; 0196 _ 83. EC, 0C
        push    eax                                     ; 0199 _ 50
        call    intToHexStr                             ; 019A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019F _ 83. C4, 10
        mov     dword [ebp-40H], eax                    ; 01A2 _ 89. 45, C0
        mov     eax, dword [memman]                     ; 01A5 _ A1, 00000008(d)
        push    dword [ebp-60H]                         ; 01AA _ FF. 75, A0
        push    dword [ebp-64H]                         ; 01AD _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 01B0 _ FF. 75, 98
        push    eax                                     ; 01B3 _ 50
        call    shtctl_init                             ; 01B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B9 _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 01BC _ A3, 00000244(d)
        mov     eax, dword [shtctl]                     ; 01C1 _ A1, 00000244(d)
        sub     esp, 12                                 ; 01C6 _ 83. EC, 0C
        push    eax                                     ; 01C9 _ 50
        call    sheet_alloc                             ; 01CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CF _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01D2 _ A3, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 01D7 _ A1, 00000244(d)
        sub     esp, 12                                 ; 01DC _ 83. EC, 0C
        push    eax                                     ; 01DF _ 50
        call    sheet_alloc                             ; 01E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E5 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01E8 _ A3, 00000250(d)
        mov     eax, dword [ebp-64H]                    ; 01ED _ 8B. 45, 9C
        imul    eax, dword [ebp-60H]                    ; 01F0 _ 0F AF. 45, A0
        mov     edx, eax                                ; 01F4 _ 89. C2
        mov     eax, dword [memman]                     ; 01F6 _ A1, 00000008(d)
        sub     esp, 8                                  ; 01FB _ 83. EC, 08
        push    edx                                     ; 01FE _ 52
        push    eax                                     ; 01FF _ 50
        call    memman_alloc_4K                         ; 0200 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0205 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0208 _ A3, 00000118(d)
        mov     eax, dword [buf_back]                   ; 020D _ A1, 00000118(d)
        sub     esp, 4                                  ; 0212 _ 83. EC, 04
        push    dword [ebp-60H]                         ; 0215 _ FF. 75, A0
        push    dword [ebp-64H]                         ; 0218 _ FF. 75, 9C
        push    eax                                     ; 021B _ 50
        call    init_screen8                            ; 021C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0221 _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0224 _ 8B. 15, 00000118(d)
        mov     eax, dword [sheet_back]                 ; 022A _ A1, 0000024C(d)
        sub     esp, 12                                 ; 022F _ 83. EC, 0C
        push    99                                      ; 0232 _ 6A, 63
        push    dword [ebp-60H]                         ; 0234 _ FF. 75, A0
        push    dword [ebp-64H]                         ; 0237 _ FF. 75, 9C
        push    edx                                     ; 023A _ 52
        push    eax                                     ; 023B _ 50
        call    sheet_setbuf                            ; 023C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0241 _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 0244 _ A1, 00000250(d)
        sub     esp, 12                                 ; 0249 _ 83. EC, 0C
        push    99                                      ; 024C _ 6A, 63
        push    16                                      ; 024E _ 6A, 10
        push    16                                      ; 0250 _ 6A, 10
        push    buf_mouse                               ; 0252 _ 68, 00000120(d)
        push    eax                                     ; 0257 _ 50
        call    sheet_setbuf                            ; 0258 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 025D _ 83. C4, 20
        sub     esp, 8                                  ; 0260 _ 83. EC, 08
        push    99                                      ; 0263 _ 6A, 63
        push    buf_mouse                               ; 0265 _ 68, 00000120(d)
        call    init_mouse_cursor                       ; 026A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026F _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 0272 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0278 _ A1, 00000244(d)
        push    0                                       ; 027D _ 6A, 00
        push    0                                       ; 027F _ 6A, 00
        push    edx                                     ; 0281 _ 52
        push    eax                                     ; 0282 _ 50
        call    sheet_slide                             ; 0283 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0288 _ 83. C4, 10
        mov     eax, dword [ebp-64H]                    ; 028B _ 8B. 45, 9C
        sub     eax, 16                                 ; 028E _ 83. E8, 10
        mov     edx, eax                                ; 0291 _ 89. C2
        shr     edx, 31                                 ; 0293 _ C1. EA, 1F
        add     eax, edx                                ; 0296 _ 01. D0
        sar     eax, 1                                  ; 0298 _ D1. F8
        mov     dword [mx], eax                         ; 029A _ A3, 00000110(d)
        mov     eax, dword [ebp-60H]                    ; 029F _ 8B. 45, A0
        sub     eax, 44                                 ; 02A2 _ 83. E8, 2C
        mov     edx, eax                                ; 02A5 _ 89. C2
        shr     edx, 31                                 ; 02A7 _ C1. EA, 1F
        add     eax, edx                                ; 02AA _ 01. D0
        sar     eax, 1                                  ; 02AC _ D1. F8
        mov     dword [my], eax                         ; 02AE _ A3, 00000114(d)
        mov     ebx, dword [my]                         ; 02B3 _ 8B. 1D, 00000114(d)
        mov     ecx, dword [mx]                         ; 02B9 _ 8B. 0D, 00000110(d)
        mov     edx, dword [sheet_mouse]                ; 02BF _ 8B. 15, 00000250(d)
        mov     eax, dword [shtctl]                     ; 02C5 _ A1, 00000244(d)
        push    ebx                                     ; 02CA _ 53
        push    ecx                                     ; 02CB _ 51
        push    edx                                     ; 02CC _ 52
        push    eax                                     ; 02CD _ 50
        call    sheet_slide                             ; 02CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D3 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02D6 _ A1, 00000244(d)
        sub     esp, 4                                  ; 02DB _ 83. EC, 04
        push    1                                       ; 02DE _ 6A, 01
        push    100                                     ; 02E0 _ 6A, 64
        push    170                                     ; 02E2 _ 68, 000000AA
        push    150                                     ; 02E7 _ 68, 00000096
        push    300                                     ; 02EC _ 68, 0000012C
        push    ?_220                                   ; 02F1 _ 68, 00000000(d)
        push    eax                                     ; 02F6 _ 50
        call    messageBox                              ; 02F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02FC _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02FF _ A3, 00000248(d)
        mov     edx, dword [sheet_back]                 ; 0304 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 030A _ A1, 00000244(d)
        sub     esp, 4                                  ; 030F _ 83. EC, 04
        push    0                                       ; 0312 _ 6A, 00
        push    edx                                     ; 0314 _ 52
        push    eax                                     ; 0315 _ 50
        call    sheet_level_updown                      ; 0316 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031B _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 031E _ 8B. 15, 00000250(d)
        mov     eax, dword [shtctl]                     ; 0324 _ A1, 00000244(d)
        sub     esp, 4                                  ; 0329 _ 83. EC, 04
        push    50                                      ; 032C _ 6A, 32
        push    edx                                     ; 032E _ 52
        push    eax                                     ; 032F _ 50
        call    sheet_level_updown                      ; 0330 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0335 _ 83. C4, 10
        call    io_sti                                  ; 0338 _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 033D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0342 _ 89. 45, C4
        mov     eax, dword [memman]                     ; 0345 _ A1, 00000008(d)
        sub     esp, 12                                 ; 034A _ 83. EC, 0C
        push    eax                                     ; 034D _ 50
        call    task_init                               ; 034E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0353 _ 83. C4, 10
        mov     dword [task_a.2285], eax                ; 0356 _ A3, 00000258(d)
        mov     eax, dword [task_a.2285]                ; 035B _ A1, 00000258(d)
        mov     dword [?_240], eax                      ; 0360 _ A3, 00000024(d)
        mov     byte [ebp-79H], 0                       ; 0365 _ C6. 45, 87, 00
        mov     dword [ebp-78H], 7                      ; 0369 _ C7. 45, 88, 00000007
        mov     dword [ebp-74H], 0                      ; 0370 _ C7. 45, 8C, 00000000
        mov     edx, dword [sheet_win]                  ; 0377 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 037D _ A1, 00000244(d)
        sub     esp, 8                                  ; 0382 _ 83. EC, 08
        push    ?_221                                   ; 0385 _ 68, 00000008(d)
        push    10                                      ; 038A _ 6A, 0A
        push    63                                      ; 038C _ 6A, 3F
        push    8                                       ; 038E _ 6A, 08
        push    edx                                     ; 0390 _ 52
        push    eax                                     ; 0391 _ 50
        call    showString                              ; 0392 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0397 _ 83. C4, 20
        mov     dword [ebp-70H], 0                      ; 039A _ C7. 45, 90, 00000000
        mov     dword [ebp-6CH], 0                      ; 03A1 _ C7. 45, 94, 00000000
        mov     dword [ebp-38H], 0                      ; 03A8 _ C7. 45, C8, 00000000
?_001:  call    io_sti                                  ; 03AF _ E8, FFFFFFFC(rel)
        call    io_cli                                  ; 03B4 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03B9 _ 83. EC, 0C
        push    keyInfo                                 ; 03BC _ 68, 0000000C(d)
        call    fifo8_status                            ; 03C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C6 _ 83. C4, 10
        mov     ebx, eax                                ; 03C9 _ 89. C3
        sub     esp, 12                                 ; 03CB _ 83. EC, 0C
        push    mouseInfo                               ; 03CE _ 68, 00000028(d)
        call    fifo8_status                            ; 03D3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D8 _ 83. C4, 10
        add     ebx, eax                                ; 03DB _ 01. C3
        sub     esp, 12                                 ; 03DD _ 83. EC, 0C
        push    timerInfo                               ; 03E0 _ 68, 00000220(d)
        call    fifo8_status                            ; 03E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03EA _ 83. C4, 10
        add     eax, ebx                                ; 03ED _ 01. D8
        test    eax, eax                                ; 03EF _ 85. C0
        jnz     ?_002                                   ; 03F1 _ 75, 07
        call    io_sti                                  ; 03F3 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 03F8 _ EB, B5

?_002:  sub     esp, 12                                 ; 03FA _ 83. EC, 0C
        push    keyInfo                                 ; 03FD _ 68, 0000000C(d)
        call    fifo8_status                            ; 0402 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0407 _ 83. C4, 10
        test    eax, eax                                ; 040A _ 85. C0
        je      ?_010                                   ; 040C _ 0F 84, 00000400
        call    io_sti                                  ; 0412 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0417 _ 83. EC, 0C
        push    keyInfo                                 ; 041A _ 68, 0000000C(d)
        call    fifo8_get                               ; 041F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0424 _ 83. C4, 10
        mov     byte [ebp-79H], al                      ; 0427 _ 88. 45, 87
        cmp     byte [ebp-79H], 28                      ; 042A _ 80. 7D, 87, 1C
        jnz     ?_003                                   ; 042E _ 75, 59
        mov     ebx, dword [cnt.2286]                   ; 0430 _ 8B. 1D, 0000025C(d)
        mov     eax, dword [sheet_back]                 ; 0436 _ A1, 0000024C(d)
        mov     ecx, dword [eax]                        ; 043B _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 043D _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0443 _ A1, 00000244(d)
        sub     esp, 4                                  ; 0448 _ 83. EC, 04
        push    7                                       ; 044B _ 6A, 07
        push    dword [ebp-64H]                         ; 044D _ FF. 75, 9C
        push    ebx                                     ; 0450 _ 53
        push    ecx                                     ; 0451 _ 51
        push    dword [ebp-4CH]                         ; 0452 _ FF. 75, B4
        push    edx                                     ; 0455 _ 52
        push    eax                                     ; 0456 _ 50
        call    showMemInfo                             ; 0457 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 045C _ 83. C4, 20
        mov     eax, dword [cnt.2286]                   ; 045F _ A1, 0000025C(d)
        add     eax, 1                                  ; 0464 _ 83. C0, 01
        mov     dword [cnt.2286], eax                   ; 0467 _ A3, 0000025C(d)
        mov     eax, dword [cnt.2286]                   ; 046C _ A1, 0000025C(d)
        cmp     dword [ebp-48H], eax                    ; 0471 _ 39. 45, B8
        jg      ?_001                                   ; 0474 _ 0F 8F, FFFFFF35
        mov     dword [cnt.2286], 0                     ; 047A _ C7. 05, 0000025C(d), 00000000
        jmp     ?_001                                   ; 0484 _ E9, FFFFFF26

?_003:  cmp     byte [ebp-79H], 15                      ; 0489 _ 80. 7D, 87, 0F
        jne     ?_006                                   ; 048D _ 0F 85, 000000CB
        cmp     dword [ebp-6CH], 0                      ; 0493 _ 83. 7D, 94, 00
        jnz     ?_004                                   ; 0497 _ 75, 3D
        mov     dword [ebp-6CH], 1                      ; 0499 _ C7. 45, 94, 00000001
        mov     edx, dword [sheet_win]                  ; 04A0 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 04A6 _ A1, 00000244(d)
        push    0                                       ; 04AB _ 6A, 00
        push    ?_220                                   ; 04AD _ 68, 00000000(d)
        push    edx                                     ; 04B2 _ 52
        push    eax                                     ; 04B3 _ 50
        call    make_wtitle8                            ; 04B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04B9 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04BC _ A1, 00000244(d)
        push    1                                       ; 04C1 _ 6A, 01
        push    ?_222                                   ; 04C3 _ 68, 0000001E(d)
        push    dword [ebp-38H]                         ; 04C8 _ FF. 75, C8
        push    eax                                     ; 04CB _ 50
        call    make_wtitle8                            ; 04CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04D1 _ 83. C4, 10
        jmp     ?_005                                   ; 04D4 _ EB, 3B

?_004:  mov     dword [ebp-6CH], 0                      ; 04D6 _ C7. 45, 94, 00000000
        mov     edx, dword [sheet_win]                  ; 04DD _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 04E3 _ A1, 00000244(d)
        push    1                                       ; 04E8 _ 6A, 01
        push    ?_220                                   ; 04EA _ 68, 00000000(d)
        push    edx                                     ; 04EF _ 52
        push    eax                                     ; 04F0 _ 50
        call    make_wtitle8                            ; 04F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04F6 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04F9 _ A1, 00000244(d)
        push    0                                       ; 04FE _ 6A, 00
        push    ?_222                                   ; 0500 _ 68, 0000001E(d)
        push    dword [ebp-38H]                         ; 0505 _ FF. 75, C8
        push    eax                                     ; 0508 _ 50
        call    make_wtitle8                            ; 0509 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 050E _ 83. C4, 10
?_005:  mov     eax, dword [sheet_win]                  ; 0511 _ A1, 00000248(d)
        mov     ecx, dword [eax+4H]                     ; 0516 _ 8B. 48, 04
        mov     edx, dword [sheet_win]                  ; 0519 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 051F _ A1, 00000244(d)
        sub     esp, 8                                  ; 0524 _ 83. EC, 08
        push    21                                      ; 0527 _ 6A, 15
        push    ecx                                     ; 0529 _ 51
        push    0                                       ; 052A _ 6A, 00
        push    0                                       ; 052C _ 6A, 00
        push    edx                                     ; 052E _ 52
        push    eax                                     ; 052F _ 50
        call    sheet_refresh                           ; 0530 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0535 _ 83. C4, 20
        mov     eax, dword [ebp-38H]                    ; 0538 _ 8B. 45, C8
        mov     edx, dword [eax+4H]                     ; 053B _ 8B. 50, 04
        mov     eax, dword [shtctl]                     ; 053E _ A1, 00000244(d)
        sub     esp, 8                                  ; 0543 _ 83. EC, 08
        push    21                                      ; 0546 _ 6A, 15
        push    edx                                     ; 0548 _ 52
        push    0                                       ; 0549 _ 6A, 00
        push    0                                       ; 054B _ 6A, 00
        push    dword [ebp-38H]                         ; 054D _ FF. 75, C8
        push    eax                                     ; 0550 _ 50
        call    sheet_refresh                           ; 0551 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0556 _ 83. C4, 20
        jmp     ?_001                                   ; 0559 _ E9, FFFFFE51

?_006:  cmp     dword [ebp-6CH], 0                      ; 055E _ 83. 7D, 94, 00
        jne     ?_009                                   ; 0562 _ 0F 85, 0000027A
        mov     edx, dword [sheet_back]                 ; 0568 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 056E _ A1, 00000244(d)
        sub     esp, 8                                  ; 0573 _ 83. EC, 08
        push    ?_223                                   ; 0576 _ 68, 00000027(d)
        push    11                                      ; 057B _ 6A, 0B
        push    0                                       ; 057D _ 6A, 00
        push    0                                       ; 057F _ 6A, 00
        push    edx                                     ; 0581 _ 52
        push    eax                                     ; 0582 _ 50
        call    showString                              ; 0583 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0588 _ 83. C4, 20
        movzx   eax, byte [ebp-79H]                     ; 058B _ 0F B6. 45, 87
        sub     esp, 12                                 ; 058F _ 83. EC, 0C
        push    eax                                     ; 0592 _ 50
        call    transferScanCode                        ; 0593 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0598 _ 83. C4, 10
        test    al, al                                  ; 059B _ 84. C0
        je      ?_008                                   ; 059D _ 0F 84, 00000119
        mov     eax, dword [line.2289]                  ; 05A3 _ A1, 00000260(d)
        cmp     eax, 142                                ; 05A8 _ 3D, 0000008E
        jg      ?_008                                   ; 05AD _ 0F 8F, 00000109
        mov     eax, dword [pos.2290]                   ; 05B3 _ A1, 00000100(d)
        lea     edi, [eax+28H]                          ; 05B8 _ 8D. 78, 28
        mov     eax, dword [line.2289]                  ; 05BB _ A1, 00000260(d)
        lea     esi, [eax+10H]                          ; 05C0 _ 8D. 70, 10
        mov     eax, dword [pos.2290]                   ; 05C3 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 05C8 _ 8D. 58, 1A
        mov     eax, dword [line.2289]                  ; 05CB _ A1, 00000260(d)
        lea     ecx, [eax+0AH]                          ; 05D0 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 05D3 _ A1, 00000248(d)
        mov     edx, dword [eax+4H]                     ; 05D8 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 05DB _ A1, 00000248(d)
        mov     eax, dword [eax]                        ; 05E0 _ 8B. 00
        sub     esp, 4                                  ; 05E2 _ 83. EC, 04
        push    edi                                     ; 05E5 _ 57
        push    esi                                     ; 05E6 _ 56
        push    ebx                                     ; 05E7 _ 53
        push    ecx                                     ; 05E8 _ 51
        push    7                                       ; 05E9 _ 6A, 07
        push    edx                                     ; 05EB _ 52
        push    eax                                     ; 05EC _ 50
        call    boxfill8                                ; 05ED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F2 _ 83. C4, 20
        mov     eax, dword [pos.2290]                   ; 05F5 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 05FA _ 8D. 78, 2A
        mov     eax, dword [line.2289]                  ; 05FD _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 0602 _ 8D. 70, 12
        mov     eax, dword [pos.2290]                   ; 0605 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 060A _ 8D. 58, 1A
        mov     eax, dword [line.2289]                  ; 060D _ A1, 00000260(d)
        lea     ecx, [eax+0AH]                          ; 0612 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0615 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 061B _ A1, 00000244(d)
        sub     esp, 8                                  ; 0620 _ 83. EC, 08
        push    edi                                     ; 0623 _ 57
        push    esi                                     ; 0624 _ 56
        push    ebx                                     ; 0625 _ 53
        push    ecx                                     ; 0626 _ 51
        push    edx                                     ; 0627 _ 52
        push    eax                                     ; 0628 _ 50
        call    sheet_refresh                           ; 0629 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 062E _ 83. C4, 20
        movzx   eax, byte [ebp-79H]                     ; 0631 _ 0F B6. 45, 87
        sub     esp, 12                                 ; 0635 _ 83. EC, 0C
        push    eax                                     ; 0638 _ 50
        call    transferScanCode                        ; 0639 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 063E _ 83. C4, 10
        mov     byte [ebp-1EH], al                      ; 0641 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0644 _ C6. 45, E3, 00
        mov     eax, dword [pos.2290]                   ; 0648 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 064D _ 8D. 70, 1A
        mov     eax, dword [line.2289]                  ; 0650 _ A1, 00000260(d)
        lea     ebx, [eax+0AH]                          ; 0655 _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 0658 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 065E _ A1, 00000244(d)
        sub     esp, 8                                  ; 0663 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0666 _ 8D. 4D, E2
        push    ecx                                     ; 0669 _ 51
        push    0                                       ; 066A _ 6A, 00
        push    esi                                     ; 066C _ 56
        push    ebx                                     ; 066D _ 53
        push    edx                                     ; 066E _ 52
        push    eax                                     ; 066F _ 50
        call    showString                              ; 0670 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0675 _ 83. C4, 20
        mov     eax, dword [line.2289]                  ; 0678 _ A1, 00000260(d)
        add     eax, 8                                  ; 067D _ 83. C0, 08
        mov     dword [line.2289], eax                  ; 0680 _ A3, 00000260(d)
        mov     eax, dword [sheet_win]                  ; 0685 _ A1, 00000248(d)
        mov     eax, dword [eax+4H]                     ; 068A _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 068D _ 8D. 50, F0
        mov     eax, dword [line.2289]                  ; 0690 _ A1, 00000260(d)
        cmp     edx, eax                                ; 0695 _ 39. C2
        jg      ?_007                                   ; 0697 _ 7F, 17
        mov     eax, dword [pos.2290]                   ; 0699 _ A1, 00000100(d)
        add     eax, 16                                 ; 069E _ 83. C0, 10
        mov     dword [pos.2290], eax                   ; 06A1 _ A3, 00000100(d)
        mov     dword [line.2289], 0                    ; 06A6 _ C7. 05, 00000260(d), 00000000
?_007:  mov     dword [ebp-70H], 0                      ; 06B0 _ C7. 45, 90, 00000000
        jmp     ?_016                                   ; 06B7 _ E9, 00000332

?_008:  cmp     byte [ebp-79H], 14                      ; 06BC _ 80. 7D, 87, 0E
        jne     ?_001                                   ; 06C0 _ 0F 85, FFFFFCE9
        mov     eax, dword [line.2289]                  ; 06C6 _ A1, 00000260(d)
        cmp     eax, 7                                  ; 06CB _ 83. F8, 07
        jle     ?_001                                   ; 06CE _ 0F 8E, FFFFFCDB
        mov     eax, dword [pos.2290]                   ; 06D4 _ A1, 00000100(d)
        lea     edi, [eax+28H]                          ; 06D9 _ 8D. 78, 28
        mov     eax, dword [line.2289]                  ; 06DC _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 06E1 _ 8D. 70, 12
        mov     eax, dword [pos.2290]                   ; 06E4 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 06E9 _ 8D. 58, 1A
        mov     eax, dword [line.2289]                  ; 06EC _ A1, 00000260(d)
        lea     ecx, [eax+0AH]                          ; 06F1 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 06F4 _ A1, 00000248(d)
        mov     edx, dword [eax+4H]                     ; 06F9 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 06FC _ A1, 00000248(d)
        mov     eax, dword [eax]                        ; 0701 _ 8B. 00
        sub     esp, 4                                  ; 0703 _ 83. EC, 04
        push    edi                                     ; 0706 _ 57
        push    esi                                     ; 0707 _ 56
        push    ebx                                     ; 0708 _ 53
        push    ecx                                     ; 0709 _ 51
        push    7                                       ; 070A _ 6A, 07
        push    edx                                     ; 070C _ 52
        push    eax                                     ; 070D _ 50
        call    boxfill8                                ; 070E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0713 _ 83. C4, 20
        mov     eax, dword [pos.2290]                   ; 0716 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 071B _ 8D. 78, 2A
        mov     eax, dword [line.2289]                  ; 071E _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 0723 _ 8D. 70, 12
        mov     eax, dword [pos.2290]                   ; 0726 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 072B _ 8D. 58, 1A
        mov     eax, dword [line.2289]                  ; 072E _ A1, 00000260(d)
        lea     ecx, [eax+0AH]                          ; 0733 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0736 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 073C _ A1, 00000244(d)
        sub     esp, 8                                  ; 0741 _ 83. EC, 08
        push    edi                                     ; 0744 _ 57
        push    esi                                     ; 0745 _ 56
        push    ebx                                     ; 0746 _ 53
        push    ecx                                     ; 0747 _ 51
        push    edx                                     ; 0748 _ 52
        push    eax                                     ; 0749 _ 50
        call    sheet_refresh                           ; 074A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 074F _ 83. C4, 20
        mov     eax, dword [line.2289]                  ; 0752 _ A1, 00000260(d)
        sub     eax, 8                                  ; 0757 _ 83. E8, 08
        mov     dword [line.2289], eax                  ; 075A _ A3, 00000260(d)
        mov     eax, dword [pos.2290]                   ; 075F _ A1, 00000100(d)
        lea     edi, [eax+28H]                          ; 0764 _ 8D. 78, 28
        mov     eax, dword [line.2289]                  ; 0767 _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 076C _ 8D. 70, 12
        mov     eax, dword [pos.2290]                   ; 076F _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 0774 _ 8D. 58, 1A
        mov     eax, dword [line.2289]                  ; 0777 _ A1, 00000260(d)
        lea     ecx, [eax+0AH]                          ; 077C _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 077F _ A1, 00000248(d)
        mov     edx, dword [eax+4H]                     ; 0784 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0787 _ A1, 00000248(d)
        mov     eax, dword [eax]                        ; 078C _ 8B. 00
        sub     esp, 4                                  ; 078E _ 83. EC, 04
        push    edi                                     ; 0791 _ 57
        push    esi                                     ; 0792 _ 56
        push    ebx                                     ; 0793 _ 53
        push    ecx                                     ; 0794 _ 51
        push    7                                       ; 0795 _ 6A, 07
        push    edx                                     ; 0797 _ 52
        push    eax                                     ; 0798 _ 50
        call    boxfill8                                ; 0799 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 079E _ 83. C4, 20
        mov     eax, dword [pos.2290]                   ; 07A1 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 07A6 _ 8D. 78, 2A
        mov     eax, dword [line.2289]                  ; 07A9 _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 07AE _ 8D. 70, 12
        mov     eax, dword [pos.2290]                   ; 07B1 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 07B6 _ 8D. 58, 1A
        mov     eax, dword [line.2289]                  ; 07B9 _ A1, 00000260(d)
        lea     ecx, [eax+0AH]                          ; 07BE _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 07C1 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 07C7 _ A1, 00000244(d)
        sub     esp, 8                                  ; 07CC _ 83. EC, 08
        push    edi                                     ; 07CF _ 57
        push    esi                                     ; 07D0 _ 56
        push    ebx                                     ; 07D1 _ 53
        push    ecx                                     ; 07D2 _ 51
        push    edx                                     ; 07D3 _ 52
        push    eax                                     ; 07D4 _ 50
        call    sheet_refresh                           ; 07D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07DA _ 83. C4, 20
        jmp     ?_001                                   ; 07DD _ E9, FFFFFBCD

?_009:  mov     eax, dword [task_a.2285]                ; 07E2 _ A1, 00000258(d)
        sub     esp, 12                                 ; 07E7 _ 83. EC, 0C
        push    eax                                     ; 07EA _ 50
        call    task_sleep                              ; 07EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07F0 _ 83. C4, 10
        movzx   eax, byte [ebp-79H]                     ; 07F3 _ 0F B6. 45, 87
        mov     edx, dword [task_console]               ; 07F7 _ 8B. 15, 00000254(d)
        add     edx, 16                                 ; 07FD _ 83. C2, 10
        sub     esp, 8                                  ; 0800 _ 83. EC, 08
        push    eax                                     ; 0803 _ 50
        push    edx                                     ; 0804 _ 52
        call    fifo8_put                               ; 0805 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 080A _ 83. C4, 10
        jmp     ?_001                                   ; 080D _ E9, FFFFFB9D

?_010:  sub     esp, 12                                 ; 0812 _ 83. EC, 0C
        push    mouseInfo                               ; 0815 _ 68, 00000028(d)
        call    fifo8_status                            ; 081A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 081F _ 83. C4, 10
        test    eax, eax                                ; 0822 _ 85. C0
        jz      ?_011                                   ; 0824 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0826 _ 8B. 0D, 00000250(d)
        mov     edx, dword [sheet_back]                 ; 082C _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0832 _ A1, 00000244(d)
        sub     esp, 4                                  ; 0837 _ 83. EC, 04
        push    ecx                                     ; 083A _ 51
        push    edx                                     ; 083B _ 52
        push    eax                                     ; 083C _ 50
        call    showMouseInfo                           ; 083D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0842 _ 83. C4, 10
        jmp     ?_001                                   ; 0845 _ E9, FFFFFB65

?_011:  sub     esp, 12                                 ; 084A _ 83. EC, 0C
        push    timerInfo                               ; 084D _ 68, 00000220(d)
        call    fifo8_status                            ; 0852 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0857 _ 83. C4, 10
        test    eax, eax                                ; 085A _ 85. C0
        je      ?_001                                   ; 085C _ 0F 84, FFFFFB4D
        call    io_sti                                  ; 0862 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0867 _ 83. EC, 0C
        push    timerInfo                               ; 086A _ 68, 00000220(d)
        call    fifo8_get                               ; 086F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0874 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0877 _ 89. 45, CC
        cmp     dword [ebp-34H], 10                     ; 087A _ 83. 7D, CC, 0A
        jnz     ?_012                                   ; 087E _ 75, 62
        mov     edx, dword [sheet_back]                 ; 0880 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0886 _ A1, 00000244(d)
        sub     esp, 8                                  ; 088B _ 83. EC, 08
        push    ?_224                                   ; 088E _ 68, 00000030(d)
        push    7                                       ; 0893 _ 6A, 07
        push    160                                     ; 0895 _ 68, 000000A0
        push    dword [ebp-74H]                         ; 089A _ FF. 75, 8C
        push    edx                                     ; 089D _ 52
        push    eax                                     ; 089E _ 50
        call    showString                              ; 089F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08A4 _ 83. C4, 20
        sub     esp, 8                                  ; 08A7 _ 83. EC, 08
        push    100                                     ; 08AA _ 6A, 64
        push    dword [ebp-58H]                         ; 08AC _ FF. 75, A8
        call    timer_setTime                           ; 08AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08B4 _ 83. C4, 10
        add     dword [ebp-74H], 8                      ; 08B7 _ 83. 45, 8C, 08
        add     dword [ebp-70H], 1                      ; 08BB _ 83. 45, 90, 01
        cmp     dword [ebp-74H], 39                     ; 08BF _ 83. 7D, 8C, 27
        jle     ?_001                                   ; 08C3 _ 0F 8E, FFFFFAE6
        cmp     dword [ebp-70H], 5                      ; 08C9 _ 83. 7D, 90, 05
        jne     ?_001                                   ; 08CD _ 0F 85, FFFFFADC
        call    io_cli                                  ; 08D3 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 08D8 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08DD _ E9, FFFFFACD

?_012:  cmp     dword [ebp-34H], 2                      ; 08E2 _ 83. 7D, CC, 02
        jnz     ?_013                                   ; 08E6 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 08E8 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 08EE _ A1, 00000244(d)
        sub     esp, 8                                  ; 08F3 _ 83. EC, 08
        push    ?_225                                   ; 08F6 _ 68, 00000032(d)
        push    7                                       ; 08FB _ 6A, 07
        push    32                                      ; 08FD _ 6A, 20
        push    0                                       ; 08FF _ 6A, 00
        push    edx                                     ; 0901 _ 52
        push    eax                                     ; 0902 _ 50
        call    showString                              ; 0903 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0908 _ 83. C4, 20
        jmp     ?_001                                   ; 090B _ E9, FFFFFA9F

?_013:  cmp     dword [ebp-34H], 0                      ; 0910 _ 83. 7D, CC, 00
        jz      ?_014                                   ; 0914 _ 74, 1E
        sub     esp, 4                                  ; 0916 _ 83. EC, 04
        push    0                                       ; 0919 _ 6A, 00
        push    timerInfo                               ; 091B _ 68, 00000220(d)
        push    dword [ebp-50H]                         ; 0920 _ FF. 75, B0
        call    timer_init                              ; 0923 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0928 _ 83. C4, 10
        mov     dword [ebp-78H], 0                      ; 092B _ C7. 45, 88, 00000000
        jmp     ?_015                                   ; 0932 _ EB, 1C

?_014:  sub     esp, 4                                  ; 0934 _ 83. EC, 04
        push    1                                       ; 0937 _ 6A, 01
        push    timerInfo                               ; 0939 _ 68, 00000220(d)
        push    dword [ebp-50H]                         ; 093E _ FF. 75, B0
        call    timer_init                              ; 0941 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0946 _ 83. C4, 10
        mov     dword [ebp-78H], 7                      ; 0949 _ C7. 45, 88, 00000007
?_015:  sub     esp, 8                                  ; 0950 _ 83. EC, 08
        push    50                                      ; 0953 _ 6A, 32
        push    dword [ebp-50H]                         ; 0955 _ FF. 75, B0
        call    timer_setTime                           ; 0958 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 095D _ 83. C4, 10
        mov     eax, dword [pos.2290]                   ; 0960 _ A1, 00000100(d)
        add     eax, 40                                 ; 0965 _ 83. C0, 28
        mov     dword [ebp-8CH], eax                    ; 0968 _ 89. 85, FFFFFF74
        mov     eax, dword [line.2289]                  ; 096E _ A1, 00000260(d)
        lea     edi, [eax+10H]                          ; 0973 _ 8D. 78, 10
        mov     eax, dword [pos.2290]                   ; 0976 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 097B _ 8D. 70, 1A
        mov     eax, dword [line.2289]                  ; 097E _ A1, 00000260(d)
        lea     ebx, [eax+0AH]                          ; 0983 _ 8D. 58, 0A
        mov     eax, dword [ebp-78H]                    ; 0986 _ 8B. 45, 88
        movzx   ecx, al                                 ; 0989 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 098C _ A1, 00000248(d)
        mov     edx, dword [eax+4H]                     ; 0991 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0994 _ A1, 00000248(d)
        mov     eax, dword [eax]                        ; 0999 _ 8B. 00
        sub     esp, 4                                  ; 099B _ 83. EC, 04
        push    dword [ebp-8CH]                         ; 099E _ FF. B5, FFFFFF74
        push    edi                                     ; 09A4 _ 57
        push    esi                                     ; 09A5 _ 56
        push    ebx                                     ; 09A6 _ 53
        push    ecx                                     ; 09A7 _ 51
        push    edx                                     ; 09A8 _ 52
        push    eax                                     ; 09A9 _ 50
        call    boxfill8                                ; 09AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09AF _ 83. C4, 20
        mov     eax, dword [pos.2290]                   ; 09B2 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 09B7 _ 8D. 78, 2A
        mov     eax, dword [line.2289]                  ; 09BA _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 09BF _ 8D. 70, 12
        mov     eax, dword [pos.2290]                   ; 09C2 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 09C7 _ 8D. 58, 1A
        mov     eax, dword [line.2289]                  ; 09CA _ A1, 00000260(d)
        lea     ecx, [eax+0AH]                          ; 09CF _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 09D2 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 09D8 _ A1, 00000244(d)
        sub     esp, 8                                  ; 09DD _ 83. EC, 08
        push    edi                                     ; 09E0 _ 57
        push    esi                                     ; 09E1 _ 56
        push    ebx                                     ; 09E2 _ 53
        push    ecx                                     ; 09E3 _ 51
        push    edx                                     ; 09E4 _ 52
        push    eax                                     ; 09E5 _ 50
        call    sheet_refresh                           ; 09E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09EB _ 83. C4, 20
?_016:  jmp     ?_001                                   ; 09EE _ E9, FFFFF9BC
; CMain End of function

transferScanCode:; Function begin
        push    ebp                                     ; 09F3 _ 55
        mov     ebp, esp                                ; 09F4 _ 89. E5
        sub     esp, 16                                 ; 09F6 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 09F9 _ 83. 7D, 08, 2A
        jnz     ?_017                                   ; 09FD _ 75, 0D
        mov     eax, dword [key_shift]                  ; 09FF _ A1, 00000000(d)
        or      eax, 01H                                ; 0A04 _ 83. C8, 01
        mov     dword [key_shift], eax                  ; 0A07 _ A3, 00000000(d)
?_017:  cmp     dword [ebp+8H], 54                      ; 0A0C _ 83. 7D, 08, 36
        jnz     ?_018                                   ; 0A10 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A12 _ A1, 00000000(d)
        or      eax, 02H                                ; 0A17 _ 83. C8, 02
        mov     dword [key_shift], eax                  ; 0A1A _ A3, 00000000(d)
?_018:  cmp     dword [ebp+8H], 170                     ; 0A1F _ 81. 7D, 08, 000000AA
        jnz     ?_019                                   ; 0A26 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A28 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 0A2D _ 83. E0, FE
        mov     dword [key_shift], eax                  ; 0A30 _ A3, 00000000(d)
?_019:  cmp     dword [ebp+8H], 182                     ; 0A35 _ 81. 7D, 08, 000000B6
        jnz     ?_020                                   ; 0A3C _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A3E _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 0A43 _ 83. E0, FD
        mov     dword [key_shift], eax                  ; 0A46 _ A3, 00000000(d)
?_020:  cmp     dword [ebp+8H], 42                      ; 0A4B _ 83. 7D, 08, 2A
        jz      ?_021                                   ; 0A4F _ 74, 1E
        cmp     dword [ebp+8H], 54                      ; 0A51 _ 83. 7D, 08, 36
        jz      ?_021                                   ; 0A55 _ 74, 18
        cmp     dword [ebp+8H], 170                     ; 0A57 _ 81. 7D, 08, 000000AA
        jz      ?_021                                   ; 0A5E _ 74, 0F
        cmp     dword [ebp+8H], 182                     ; 0A60 _ 81. 7D, 08, 000000B6
        jz      ?_021                                   ; 0A67 _ 74, 06
        cmp     dword [ebp+8H], 83                      ; 0A69 _ 83. 7D, 08, 53
        jle     ?_022                                   ; 0A6D _ 7E, 07
?_021:  mov     eax, 0                                  ; 0A6F _ B8, 00000000
        jmp     ?_026                                   ; 0A74 _ EB, 6E

?_022:  mov     byte [ebp-1H], 0                        ; 0A76 _ C6. 45, FF, 00
        mov     eax, dword [key_shift]                  ; 0A7A _ A1, 00000000(d)
        test    eax, eax                                ; 0A7F _ 85. C0
        jnz     ?_023                                   ; 0A81 _ 75, 2B
        cmp     dword [ebp+8H], 14                      ; 0A83 _ 83. 7D, 08, 0E
        jz      ?_023                                   ; 0A87 _ 74, 25
        cmp     dword [ebp+8H], 83                      ; 0A89 _ 83. 7D, 08, 53
        jg      ?_023                                   ; 0A8D _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0A8F _ 8B. 45, 08
        add     eax, keytable                           ; 0A92 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A97 _ 0F B6. 00
        test    al, al                                  ; 0A9A _ 84. C0
        jz      ?_023                                   ; 0A9C _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0A9E _ 8B. 45, 08
        add     eax, keytable                           ; 0AA1 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0AA6 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0AA9 _ 88. 45, FF
        jmp     ?_025                                   ; 0AAC _ EB, 32

?_023:  mov     eax, dword [key_shift]                  ; 0AAE _ A1, 00000000(d)
        test    eax, eax                                ; 0AB3 _ 85. C0
        jz      ?_024                                   ; 0AB5 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0AB7 _ 83. 7D, 08, 7F
        jg      ?_024                                   ; 0ABB _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0ABD _ 8B. 45, 08
        add     eax, keytable1                          ; 0AC0 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AC5 _ 0F B6. 00
        test    al, al                                  ; 0AC8 _ 84. C0
        jz      ?_024                                   ; 0ACA _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0ACC _ 8B. 45, 08
        add     eax, keytable1                          ; 0ACF _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AD4 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0AD7 _ 88. 45, FF
        jmp     ?_025                                   ; 0ADA _ EB, 04

?_024:  mov     byte [ebp-1H], 0                        ; 0ADC _ C6. 45, FF, 00
?_025:  movzx   eax, byte [ebp-1H]                      ; 0AE0 _ 0F B6. 45, FF
?_026:  leave                                           ; 0AE4 _ C9
        ret                                             ; 0AE5 _ C3
; transferScanCode End of function

launch_console:; Function begin
        push    ebp                                     ; 0AE6 _ 55
        mov     ebp, esp                                ; 0AE7 _ 89. E5
        sub     esp, 24                                 ; 0AE9 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0AEC _ A1, 00000244(d)
        sub     esp, 12                                 ; 0AF1 _ 83. EC, 0C
        push    eax                                     ; 0AF4 _ 50
        call    sheet_alloc                             ; 0AF5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AFA _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0AFD _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0B00 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0B05 _ 83. EC, 08
        push    46080                                   ; 0B08 _ 68, 0000B400
        push    eax                                     ; 0B0D _ 50
        call    memman_alloc_4K                         ; 0B0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B13 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0B16 _ 89. 45, EC
        sub     esp, 12                                 ; 0B19 _ 83. EC, 0C
        push    99                                      ; 0B1C _ 6A, 63
        push    180                                     ; 0B1E _ 68, 000000B4
        push    256                                     ; 0B23 _ 68, 00000100
        push    dword [ebp-14H]                         ; 0B28 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0B2B _ FF. 75, E8
        call    sheet_setbuf                            ; 0B2E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B33 _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0B36 _ A1, 00000244(d)
        push    0                                       ; 0B3B _ 6A, 00
        push    ?_222                                   ; 0B3D _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0B42 _ FF. 75, E8
        push    eax                                     ; 0B45 _ 50
        call    make_window8                            ; 0B46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B4B _ 83. C4, 10
        sub     esp, 8                                  ; 0B4E _ 83. EC, 08
        push    0                                       ; 0B51 _ 6A, 00
        push    144                                     ; 0B53 _ 68, 00000090
        push    240                                     ; 0B58 _ 68, 000000F0
        push    28                                      ; 0B5D _ 6A, 1C
        push    8                                       ; 0B5F _ 6A, 08
        push    dword [ebp-18H]                         ; 0B61 _ FF. 75, E8
        call    make_textbox8                           ; 0B64 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B69 _ 83. C4, 20
        call    task_alloc                              ; 0B6C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0B71 _ 89. 45, F0
        call    get_code32_addr                         ; 0B74 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0B79 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0B7C _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 0B7F _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 0B86 _ 8B. 45, F0
        mov     dword [eax+78H], 1073741824             ; 0B89 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0B90 _ 8B. 45, F4
        neg     eax                                     ; 0B93 _ F7. D8
        add     eax, console_task                       ; 0B95 _ 05, 00000000(d)
        mov     edx, eax                                ; 0B9A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0B9C _ 8B. 45, F0
        mov     dword [eax+34H], edx                    ; 0B9F _ 89. 50, 34
        mov     eax, dword [ebp-10H]                    ; 0BA2 _ 8B. 45, F0
        mov     dword [eax+5CH], 0                      ; 0BA5 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BAC _ 8B. 45, F0
        mov     dword [eax+60H], 8                      ; 0BAF _ C7. 40, 60, 00000008
        mov     eax, dword [ebp-10H]                    ; 0BB6 _ 8B. 45, F0
        mov     dword [eax+64H], 32                     ; 0BB9 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp-10H]                    ; 0BC0 _ 8B. 45, F0
        mov     dword [eax+68H], 24                     ; 0BC3 _ C7. 40, 68, 00000018
        mov     eax, dword [ebp-10H]                    ; 0BCA _ 8B. 45, F0
        mov     dword [eax+6CH], 0                      ; 0BCD _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BD4 _ 8B. 45, F0
        mov     dword [eax+70H], 16                     ; 0BD7 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp-10H]                    ; 0BDE _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0BE1 _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 0BE4 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0BE7 _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 0BEA _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 0BED _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0BF0 _ 8B. 40, 4C
        add     eax, 4                                  ; 0BF3 _ 83. C0, 04
        mov     edx, eax                                ; 0BF6 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0BF8 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0BFB _ 89. 02
        mov     eax, dword [ebp-10H]                    ; 0BFD _ 8B. 45, F0
        mov     dword [task_console], eax               ; 0C00 _ A3, 00000254(d)
        sub     esp, 4                                  ; 0C05 _ 83. EC, 04
        push    5                                       ; 0C08 _ 6A, 05
        push    1                                       ; 0C0A _ 6A, 01
        push    dword [ebp-10H]                         ; 0C0C _ FF. 75, F0
        call    task_run                                ; 0C0F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C14 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C17 _ A1, 00000244(d)
        push    150                                     ; 0C1C _ 68, 00000096
        push    360                                     ; 0C21 _ 68, 00000168
        push    dword [ebp-18H]                         ; 0C26 _ FF. 75, E8
        push    eax                                     ; 0C29 _ 50
        call    sheet_slide                             ; 0C2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C2F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C32 _ A1, 00000244(d)
        sub     esp, 4                                  ; 0C37 _ 83. EC, 04
        push    3                                       ; 0C3A _ 6A, 03
        push    dword [ebp-18H]                         ; 0C3C _ FF. 75, E8
        push    eax                                     ; 0C3F _ 50
        call    sheet_level_updown                      ; 0C40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C45 _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0C48 _ 8B. 45, E8
        leave                                           ; 0C4B _ C9
        ret                                             ; 0C4C _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0C4D _ 55
        mov     ebp, esp                                ; 0C4E _ 89. E5
        push    esi                                     ; 0C50 _ 56
        push    ebx                                     ; 0C51 _ 53
        sub     esp, 176                                ; 0C52 _ 81. EC, 000000B0
        mov     eax, dword [ebp+8H]                     ; 0C58 _ 8B. 45, 08
        mov     dword [ebp-0ACH], eax                   ; 0C5B _ 89. 85, FFFFFF54
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0C61 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0C67 _ 89. 45, F4
        xor     eax, eax                                ; 0C6A _ 31. C0
        call    task_now                                ; 0C6C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-9CH], eax                    ; 0C71 _ 89. 85, FFFFFF64
        mov     dword [ebp-0A4H], 8                     ; 0C77 _ C7. 85, FFFFFF5C, 00000008
        mov     dword [ebp-0A0H], 0                     ; 0C81 _ C7. 85, FFFFFF60, 00000000
        mov     eax, dword [ebp-9CH]                    ; 0C8B _ 8B. 85, FFFFFF64
        lea     edx, [eax+10H]                          ; 0C91 _ 8D. 50, 10
        push    dword [ebp-9CH]                         ; 0C94 _ FF. B5, FFFFFF64
        lea     eax, [ebp-8CH]                          ; 0C9A _ 8D. 85, FFFFFF74
        push    eax                                     ; 0CA0 _ 50
        push    128                                     ; 0CA1 _ 68, 00000080
        push    edx                                     ; 0CA6 _ 52
        call    fifo8_init                              ; 0CA7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAC _ 83. C4, 10
        call    timer_alloc                             ; 0CAF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-98H], eax                    ; 0CB4 _ 89. 85, FFFFFF68
        mov     eax, dword [ebp-9CH]                    ; 0CBA _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0CC0 _ 83. C0, 10
        sub     esp, 4                                  ; 0CC3 _ 83. EC, 04
        push    1                                       ; 0CC6 _ 6A, 01
        push    eax                                     ; 0CC8 _ 50
        push    dword [ebp-98H]                         ; 0CC9 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0CCF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD4 _ 83. C4, 10
        sub     esp, 8                                  ; 0CD7 _ 83. EC, 08
        push    50                                      ; 0CDA _ 6A, 32
        push    dword [ebp-98H]                         ; 0CDC _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0CE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE7 _ 83. C4, 10
        mov     dword [ebp-94H], 0                      ; 0CEA _ C7. 85, FFFFFF6C, 00000000
        mov     eax, dword [shtctl]                     ; 0CF4 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0CF9 _ 83. EC, 08
        push    ?_226                                   ; 0CFC _ 68, 00000039(d)
        push    7                                       ; 0D01 _ 6A, 07
        push    28                                      ; 0D03 _ 6A, 1C
        push    8                                       ; 0D05 _ 6A, 08
        push    dword [ebp-0ACH]                        ; 0D07 _ FF. B5, FFFFFF54
        push    eax                                     ; 0D0D _ 50
        call    showString                              ; 0D0E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D13 _ 83. C4, 20
?_027:  call    io_cli                                  ; 0D16 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-9CH]                    ; 0D1B _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D21 _ 83. C0, 10
        sub     esp, 12                                 ; 0D24 _ 83. EC, 0C
        push    eax                                     ; 0D27 _ 50
        call    fifo8_status                            ; 0D28 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D2D _ 83. C4, 10
        test    eax, eax                                ; 0D30 _ 85. C0
        jnz     ?_028                                   ; 0D32 _ 75, 07
        call    io_sti                                  ; 0D34 _ E8, FFFFFFFC(rel)
        jmp     ?_027                                   ; 0D39 _ EB, DB

?_028:  mov     eax, dword [ebp-9CH]                    ; 0D3B _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D41 _ 83. C0, 10
        sub     esp, 12                                 ; 0D44 _ 83. EC, 0C
        push    eax                                     ; 0D47 _ 50
        call    fifo8_get                               ; 0D48 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D4D _ 83. C4, 10
        mov     dword [ebp-94H], eax                    ; 0D50 _ 89. 85, FFFFFF6C
        call    io_sti                                  ; 0D56 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-94H], 1                      ; 0D5B _ 83. BD, FFFFFF6C, 01
        jg      ?_031                                   ; 0D62 _ 0F 8F, 000000E9
        cmp     dword [ebp-94H], 1                      ; 0D68 _ 83. BD, FFFFFF6C, 01
        jnz     ?_029                                   ; 0D6F _ 75, 29
        mov     eax, dword [ebp-9CH]                    ; 0D71 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D77 _ 83. C0, 10
        sub     esp, 4                                  ; 0D7A _ 83. EC, 04
        push    0                                       ; 0D7D _ 6A, 00
        push    eax                                     ; 0D7F _ 50
        push    dword [ebp-98H]                         ; 0D80 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0D86 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D8B _ 83. C4, 10
        mov     dword [ebp-0A0H], 7                     ; 0D8E _ C7. 85, FFFFFF60, 00000007
        jmp     ?_030                                   ; 0D98 _ EB, 30

?_029:  cmp     dword [ebp-94H], 0                      ; 0D9A _ 83. BD, FFFFFF6C, 00
        jnz     ?_030                                   ; 0DA1 _ 75, 27
        mov     eax, dword [ebp-9CH]                    ; 0DA3 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0DA9 _ 83. C0, 10
        sub     esp, 4                                  ; 0DAC _ 83. EC, 04
        push    1                                       ; 0DAF _ 6A, 01
        push    eax                                     ; 0DB1 _ 50
        push    dword [ebp-98H]                         ; 0DB2 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0DB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DBD _ 83. C4, 10
        mov     dword [ebp-0A0H], 0                     ; 0DC0 _ C7. 85, FFFFFF60, 00000000
?_030:  sub     esp, 8                                  ; 0DCA _ 83. EC, 08
        push    50                                      ; 0DCD _ 6A, 32
        push    dword [ebp-98H]                         ; 0DCF _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0DD5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DDA _ 83. C4, 10
        mov     eax, dword [ebp-0A4H]                   ; 0DDD _ 8B. 85, FFFFFF5C
        lea     esi, [eax+10H]                          ; 0DE3 _ 8D. 70, 10
        mov     eax, dword [ebp-0A4H]                   ; 0DE6 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+0AH]                          ; 0DEC _ 8D. 58, 0A
        mov     eax, dword [ebp-0A0H]                   ; 0DEF _ 8B. 85, FFFFFF60
        movzx   ecx, al                                 ; 0DF5 _ 0F B6. C8
        mov     eax, dword [ebp-0ACH]                   ; 0DF8 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0DFE _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0E01 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0E07 _ 8B. 00
        sub     esp, 4                                  ; 0E09 _ 83. EC, 04
        push    42                                      ; 0E0C _ 6A, 2A
        push    esi                                     ; 0E0E _ 56
        push    28                                      ; 0E0F _ 6A, 1C
        push    ebx                                     ; 0E11 _ 53
        push    ecx                                     ; 0E12 _ 51
        push    edx                                     ; 0E13 _ 52
        push    eax                                     ; 0E14 _ 50
        call    boxfill8                                ; 0E15 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E1A _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0E1D _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0E23 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0E26 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0E2C _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0E2F _ A1, 00000244(d)
        sub     esp, 8                                  ; 0E34 _ 83. EC, 08
        push    44                                      ; 0E37 _ 6A, 2C
        push    ecx                                     ; 0E39 _ 51
        push    28                                      ; 0E3A _ 6A, 1C
        push    edx                                     ; 0E3C _ 52
        push    dword [ebp-0ACH]                        ; 0E3D _ FF. B5, FFFFFF54
        push    eax                                     ; 0E43 _ 50
        call    sheet_refresh                           ; 0E44 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E49 _ 83. C4, 20
        jmp     ?_027                                   ; 0E4C _ E9, FFFFFEC5

?_031:  cmp     dword [ebp-94H], 14                     ; 0E51 _ 83. BD, FFFFFF6C, 0E
        jne     ?_032                                   ; 0E58 _ 0F 85, 000000E7
        cmp     dword [ebp-0A4H], 15                    ; 0E5E _ 83. BD, FFFFFF5C, 0F
        jle     ?_032                                   ; 0E65 _ 0F 8E, 000000DA
        mov     eax, dword [ebp-0A4H]                   ; 0E6B _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0E71 _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0E74 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0E7A _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0E7D _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0E83 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0E86 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0E8C _ 8B. 00
        sub     esp, 4                                  ; 0E8E _ 83. EC, 04
        push    42                                      ; 0E91 _ 6A, 2A
        push    ebx                                     ; 0E93 _ 53
        push    28                                      ; 0E94 _ 6A, 1C
        push    ecx                                     ; 0E96 _ 51
        push    0                                       ; 0E97 _ 6A, 00
        push    edx                                     ; 0E99 _ 52
        push    eax                                     ; 0E9A _ 50
        call    boxfill8                                ; 0E9B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EA0 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0EA3 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0EA9 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0EAC _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0EB2 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0EB5 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0EBA _ 83. EC, 08
        push    44                                      ; 0EBD _ 6A, 2C
        push    ecx                                     ; 0EBF _ 51
        push    28                                      ; 0EC0 _ 6A, 1C
        push    edx                                     ; 0EC2 _ 52
        push    dword [ebp-0ACH]                        ; 0EC3 _ FF. B5, FFFFFF54
        push    eax                                     ; 0EC9 _ 50
        call    sheet_refresh                           ; 0ECA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0ECF _ 83. C4, 20
        sub     dword [ebp-0A4H], 8                     ; 0ED2 _ 83. AD, FFFFFF5C, 08
        mov     eax, dword [ebp-0A4H]                   ; 0ED9 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0EDF _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0EE2 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0EE8 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0EEB _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0EF1 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0EF4 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0EFA _ 8B. 00
        sub     esp, 4                                  ; 0EFC _ 83. EC, 04
        push    42                                      ; 0EFF _ 6A, 2A
        push    ebx                                     ; 0F01 _ 53
        push    28                                      ; 0F02 _ 6A, 1C
        push    ecx                                     ; 0F04 _ 51
        push    0                                       ; 0F05 _ 6A, 00
        push    edx                                     ; 0F07 _ 52
        push    eax                                     ; 0F08 _ 50
        call    boxfill8                                ; 0F09 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F0E _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0F11 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0F17 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0F1A _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0F20 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0F23 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0F28 _ 83. EC, 08
        push    44                                      ; 0F2B _ 6A, 2C
        push    ecx                                     ; 0F2D _ 51
        push    28                                      ; 0F2E _ 6A, 1C
        push    edx                                     ; 0F30 _ 52
        push    dword [ebp-0ACH]                        ; 0F31 _ FF. B5, FFFFFF54
        push    eax                                     ; 0F37 _ 50
        call    sheet_refresh                           ; 0F38 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F3D _ 83. C4, 20
        jmp     ?_033                                   ; 0F40 _ E9, 0000010C

?_032:  sub     esp, 12                                 ; 0F45 _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0F48 _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0F4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F53 _ 83. C4, 10
        test    al, al                                  ; 0F56 _ 84. C0
        je      ?_027                                   ; 0F58 _ 0F 84, FFFFFDB8
        mov     eax, dword [ebp-0ACH]                   ; 0F5E _ 8B. 85, FFFFFF54
        mov     eax, dword [eax+4H]                     ; 0F64 _ 8B. 40, 04
        sub     eax, 100                                ; 0F67 _ 83. E8, 64
        cmp     dword [ebp-0A4H], eax                   ; 0F6A _ 39. 85, FFFFFF5C
        jg      ?_027                                   ; 0F70 _ 0F 8F, FFFFFDA0
        mov     edx, dword [sheet_back]                 ; 0F76 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0F7C _ A1, 00000244(d)
        sub     esp, 8                                  ; 0F81 _ 83. EC, 08
        push    ?_227                                   ; 0F84 _ 68, 0000003B(d)
        push    11                                      ; 0F89 _ 6A, 0B
        push    16                                      ; 0F8B _ 6A, 10
        push    0                                       ; 0F8D _ 6A, 00
        push    edx                                     ; 0F8F _ 52
        push    eax                                     ; 0F90 _ 50
        call    showString                              ; 0F91 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F96 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0F99 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+10H]                          ; 0F9F _ 8D. 58, 10
        mov     eax, dword [ebp-0A4H]                   ; 0FA2 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0FA8 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0FAB _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0FB1 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0FB4 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0FBA _ 8B. 00
        sub     esp, 4                                  ; 0FBC _ 83. EC, 04
        push    42                                      ; 0FBF _ 6A, 2A
        push    ebx                                     ; 0FC1 _ 53
        push    28                                      ; 0FC2 _ 6A, 1C
        push    ecx                                     ; 0FC4 _ 51
        push    0                                       ; 0FC5 _ 6A, 00
        push    edx                                     ; 0FC7 _ 52
        push    eax                                     ; 0FC8 _ 50
        call    boxfill8                                ; 0FC9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FCE _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0FD1 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0FD7 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0FDA _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0FE0 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0FE3 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0FE8 _ 83. EC, 08
        push    44                                      ; 0FEB _ 6A, 2C
        push    ecx                                     ; 0FED _ 51
        push    28                                      ; 0FEE _ 6A, 1C
        push    edx                                     ; 0FF0 _ 52
        push    dword [ebp-0ACH]                        ; 0FF1 _ FF. B5, FFFFFF54
        push    eax                                     ; 0FF7 _ 50
        call    sheet_refresh                           ; 0FF8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FFD _ 83. C4, 20
        sub     esp, 12                                 ; 1000 _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 1003 _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 1009 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 100E _ 83. C4, 10
        mov     byte [ebp-8EH], al                      ; 1011 _ 88. 85, FFFFFF72
        mov     byte [ebp-8DH], 0                       ; 1017 _ C6. 85, FFFFFF73, 00
        mov     eax, dword [ebp-0A4H]                   ; 101E _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 1024 _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 1027 _ A1, 00000244(d)
        sub     esp, 8                                  ; 102C _ 83. EC, 08
        lea     edx, [ebp-8EH]                          ; 102F _ 8D. 95, FFFFFF72
        push    edx                                     ; 1035 _ 52
        push    7                                       ; 1036 _ 6A, 07
        push    28                                      ; 1038 _ 6A, 1C
        push    ecx                                     ; 103A _ 51
        push    dword [ebp-0ACH]                        ; 103B _ FF. B5, FFFFFF54
        push    eax                                     ; 1041 _ 50
        call    showString                              ; 1042 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1047 _ 83. C4, 20
        add     dword [ebp-0A4H], 8                     ; 104A _ 83. 85, FFFFFF5C, 08
?_033:  jmp     ?_027                                   ; 1051 _ E9, FFFFFCC0
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 1056 _ 55
        mov     ebp, esp                                ; 1057 _ 89. E5
        sub     esp, 88                                 ; 1059 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 105C _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 105F _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 1062 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 1068 _ 89. 45, F4
        xor     eax, eax                                ; 106B _ 31. C0
        mov     edx, dword [sheet_back]                 ; 106D _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1073 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1078 _ 83. EC, 08
        push    ?_228                                   ; 107B _ 68, 00000040(d)
        push    7                                       ; 1080 _ 6A, 07
        push    144                                     ; 1082 _ 68, 00000090
        push    0                                       ; 1087 _ 6A, 00
        push    edx                                     ; 1089 _ 52
        push    eax                                     ; 108A _ 50
        call    showString                              ; 108B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1090 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 1093 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 109A _ C7. 45, C8, 00000000
        push    0                                       ; 10A1 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 10A3 _ 8D. 45, EC
        push    eax                                     ; 10A6 _ 50
        push    8                                       ; 10A7 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 10A9 _ 8D. 45, D0
        push    eax                                     ; 10AC _ 50
        call    fifo8_init                              ; 10AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B2 _ 83. C4, 10
        call    timer_alloc                             ; 10B5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 10BA _ 89. 45, C4
        sub     esp, 4                                  ; 10BD _ 83. EC, 04
        push    123                                     ; 10C0 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 10C2 _ 8D. 45, D0
        push    eax                                     ; 10C5 _ 50
        push    dword [ebp-3CH]                         ; 10C6 _ FF. 75, C4
        call    timer_init                              ; 10C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10CE _ 83. C4, 10
        sub     esp, 8                                  ; 10D1 _ 83. EC, 08
        push    100                                     ; 10D4 _ 6A, 64
        push    dword [ebp-3CH]                         ; 10D6 _ FF. 75, C4
        call    timer_setTime                           ; 10D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10DE _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 10E1 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 10E8 _ C7. 45, C0, 00000000
?_034:  add     dword [ebp-40H], 1                      ; 10EF _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 10F3 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 10F6 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 10F9 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 10FC _ 8B. 00
        sub     esp, 4                                  ; 10FE _ 83. EC, 04
        push    38                                      ; 1101 _ 6A, 26
        push    100                                     ; 1103 _ 6A, 64
        push    23                                      ; 1105 _ 6A, 17
        push    8                                       ; 1107 _ 6A, 08
        push    8                                       ; 1109 _ 6A, 08
        push    edx                                     ; 110B _ 52
        push    eax                                     ; 110C _ 50
        call    boxfill8                                ; 110D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1112 _ 83. C4, 20
        sub     esp, 12                                 ; 1115 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 1118 _ FF. 75, C0
        call    intToHexStr                             ; 111B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1120 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 1123 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 1126 _ A1, 00000244(d)
        sub     esp, 8                                  ; 112B _ 83. EC, 08
        push    dword [ebp-34H]                         ; 112E _ FF. 75, CC
        push    10                                      ; 1131 _ 6A, 0A
        push    23                                      ; 1133 _ 6A, 17
        push    8                                       ; 1135 _ 6A, 08
        push    dword [ebp-4CH]                         ; 1137 _ FF. 75, B4
        push    eax                                     ; 113A _ 50
        call    showString                              ; 113B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1140 _ 83. C4, 20
        call    io_cli                                  ; 1143 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1148 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 114B _ 8D. 45, D0
        push    eax                                     ; 114E _ 50
        call    fifo8_status                            ; 114F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1154 _ 83. C4, 10
        test    eax, eax                                ; 1157 _ 85. C0
        jnz     ?_035                                   ; 1159 _ 75, 07
        call    io_sti                                  ; 115B _ E8, FFFFFFFC(rel)
        jmp     ?_034                                   ; 1160 _ EB, 8D

?_035:  sub     esp, 12                                 ; 1162 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1165 _ 8D. 45, D0
        push    eax                                     ; 1168 _ 50
        call    fifo8_get                               ; 1169 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 116E _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 1171 _ 89. 45, C8
        call    io_sti                                  ; 1174 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 1179 _ 83. 7D, C8, 7B
        jne     ?_034                                   ; 117D _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 1183 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1189 _ A1, 00000244(d)
        sub     esp, 8                                  ; 118E _ 83. EC, 08
        push    ?_229                                   ; 1191 _ 68, 0000004D(d)
        push    7                                       ; 1196 _ 6A, 07
        push    176                                     ; 1198 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 119D _ FF. 75, BC
        push    edx                                     ; 11A0 _ 52
        push    eax                                     ; 11A1 _ 50
        call    showString                              ; 11A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11A7 _ 83. C4, 20
        sub     esp, 8                                  ; 11AA _ 83. EC, 08
        push    100                                     ; 11AD _ 6A, 64
        push    dword [ebp-3CH]                         ; 11AF _ FF. 75, C4
        call    timer_setTime                           ; 11B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11B7 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 11BA _ 83. 45, BC, 08
        jmp     ?_034                                   ; 11BE _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 11C3 _ 55
        mov     ebp, esp                                ; 11C4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 11C6 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 11C9 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 11CF _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 11D2 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 11D8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 11DB _ 66: C7. 40, 06, 01E0
        nop                                             ; 11E1 _ 90
        pop     ebp                                     ; 11E2 _ 5D
        ret                                             ; 11E3 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 11E4 _ 55
        mov     ebp, esp                                ; 11E5 _ 89. E5
        push    ebx                                     ; 11E7 _ 53
        sub     esp, 36                                 ; 11E8 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 11EB _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 11EE _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 11F1 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 11F4 _ 89. 45, F4
        jmp     ?_037                                   ; 11F7 _ EB, 3E

?_036:  mov     eax, dword [ebp+1CH]                    ; 11F9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 11FC _ 0F B6. 00
        movzx   eax, al                                 ; 11FF _ 0F B6. C0
        shl     eax, 4                                  ; 1202 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1205 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 120B _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 120F _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1212 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1215 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1218 _ 8B. 00
        sub     esp, 8                                  ; 121A _ 83. EC, 08
        push    ebx                                     ; 121D _ 53
        push    ecx                                     ; 121E _ 51
        push    dword [ebp+14H]                         ; 121F _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1222 _ FF. 75, 10
        push    edx                                     ; 1225 _ 52
        push    eax                                     ; 1226 _ 50
        call    showFont8                               ; 1227 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 122C _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 122F _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1233 _ 83. 45, 1C, 01
?_037:  mov     eax, dword [ebp+1CH]                    ; 1237 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 123A _ 0F B6. 00
        test    al, al                                  ; 123D _ 84. C0
        jnz     ?_036                                   ; 123F _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 1241 _ 8B. 45, 14
        add     eax, 16                                 ; 1244 _ 83. C0, 10
        sub     esp, 8                                  ; 1247 _ 83. EC, 08
        push    eax                                     ; 124A _ 50
        push    dword [ebp+10H]                         ; 124B _ FF. 75, 10
        push    dword [ebp+14H]                         ; 124E _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 1251 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 1254 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1257 _ FF. 75, 08
        call    sheet_refresh                           ; 125A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 125F _ 83. C4, 20
        nop                                             ; 1262 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1263 _ 8B. 5D, FC
        leave                                           ; 1266 _ C9
        ret                                             ; 1267 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 1268 _ 55
        mov     ebp, esp                                ; 1269 _ 89. E5
        push    ebx                                     ; 126B _ 53
        sub     esp, 4                                  ; 126C _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 126F _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 1272 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 1275 _ 8B. 45, 0C
        sub     eax, 1                                  ; 1278 _ 83. E8, 01
        sub     esp, 4                                  ; 127B _ 83. EC, 04
        push    edx                                     ; 127E _ 52
        push    eax                                     ; 127F _ 50
        push    0                                       ; 1280 _ 6A, 00
        push    0                                       ; 1282 _ 6A, 00
        push    14                                      ; 1284 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 1286 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1289 _ FF. 75, 08
        call    boxfill8                                ; 128C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1291 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1294 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 1297 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 129A _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 129D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 12A0 _ 8B. 45, 10
        sub     eax, 24                                 ; 12A3 _ 83. E8, 18
        sub     esp, 4                                  ; 12A6 _ 83. EC, 04
        push    ecx                                     ; 12A9 _ 51
        push    edx                                     ; 12AA _ 52
        push    eax                                     ; 12AB _ 50
        push    0                                       ; 12AC _ 6A, 00
        push    8                                       ; 12AE _ 6A, 08
        push    dword [ebp+0CH]                         ; 12B0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12B3 _ FF. 75, 08
        call    boxfill8                                ; 12B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12BB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12BE _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 12C1 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 12C4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 12C7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 12CA _ 8B. 45, 10
        sub     eax, 23                                 ; 12CD _ 83. E8, 17
        sub     esp, 4                                  ; 12D0 _ 83. EC, 04
        push    ecx                                     ; 12D3 _ 51
        push    edx                                     ; 12D4 _ 52
        push    eax                                     ; 12D5 _ 50
        push    0                                       ; 12D6 _ 6A, 00
        push    7                                       ; 12D8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 12DA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12DD _ FF. 75, 08
        call    boxfill8                                ; 12E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12E5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12E8 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 12EB _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 12EE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 12F1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 12F4 _ 8B. 45, 10
        sub     eax, 22                                 ; 12F7 _ 83. E8, 16
        sub     esp, 4                                  ; 12FA _ 83. EC, 04
        push    ecx                                     ; 12FD _ 51
        push    edx                                     ; 12FE _ 52
        push    eax                                     ; 12FF _ 50
        push    0                                       ; 1300 _ 6A, 00
        push    8                                       ; 1302 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1304 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1307 _ FF. 75, 08
        call    boxfill8                                ; 130A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 130F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1312 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1315 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 1318 _ 8B. 45, 10
        sub     eax, 20                                 ; 131B _ 83. E8, 14
        sub     esp, 4                                  ; 131E _ 83. EC, 04
        push    edx                                     ; 1321 _ 52
        push    51                                      ; 1322 _ 6A, 33
        push    eax                                     ; 1324 _ 50
        push    10                                      ; 1325 _ 6A, 0A
        push    7                                       ; 1327 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1329 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 132C _ FF. 75, 08
        call    boxfill8                                ; 132F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1334 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1337 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 133A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 133D _ 8B. 45, 10
        sub     eax, 20                                 ; 1340 _ 83. E8, 14
        sub     esp, 4                                  ; 1343 _ 83. EC, 04
        push    edx                                     ; 1346 _ 52
        push    9                                       ; 1347 _ 6A, 09
        push    eax                                     ; 1349 _ 50
        push    9                                       ; 134A _ 6A, 09
        push    7                                       ; 134C _ 6A, 07
        push    dword [ebp+0CH]                         ; 134E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1351 _ FF. 75, 08
        call    boxfill8                                ; 1354 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1359 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 135C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 135F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1362 _ 8B. 45, 10
        sub     eax, 4                                  ; 1365 _ 83. E8, 04
        sub     esp, 4                                  ; 1368 _ 83. EC, 04
        push    edx                                     ; 136B _ 52
        push    50                                      ; 136C _ 6A, 32
        push    eax                                     ; 136E _ 50
        push    10                                      ; 136F _ 6A, 0A
        push    15                                      ; 1371 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1373 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1376 _ FF. 75, 08
        call    boxfill8                                ; 1379 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 137E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1381 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1384 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1387 _ 8B. 45, 10
        sub     eax, 19                                 ; 138A _ 83. E8, 13
        sub     esp, 4                                  ; 138D _ 83. EC, 04
        push    edx                                     ; 1390 _ 52
        push    50                                      ; 1391 _ 6A, 32
        push    eax                                     ; 1393 _ 50
        push    50                                      ; 1394 _ 6A, 32
        push    15                                      ; 1396 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1398 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 139B _ FF. 75, 08
        call    boxfill8                                ; 139E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13A6 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 13A9 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 13AC _ 8B. 45, 10
        sub     eax, 3                                  ; 13AF _ 83. E8, 03
        sub     esp, 4                                  ; 13B2 _ 83. EC, 04
        push    edx                                     ; 13B5 _ 52
        push    50                                      ; 13B6 _ 6A, 32
        push    eax                                     ; 13B8 _ 50
        push    10                                      ; 13B9 _ 6A, 0A
        push    0                                       ; 13BB _ 6A, 00
        push    dword [ebp+0CH]                         ; 13BD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13C0 _ FF. 75, 08
        call    boxfill8                                ; 13C3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13C8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13CB _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 13CE _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 13D1 _ 8B. 45, 10
        sub     eax, 20                                 ; 13D4 _ 83. E8, 14
        sub     esp, 4                                  ; 13D7 _ 83. EC, 04
        push    edx                                     ; 13DA _ 52
        push    51                                      ; 13DB _ 6A, 33
        push    eax                                     ; 13DD _ 50
        push    51                                      ; 13DE _ 6A, 33
        push    0                                       ; 13E0 _ 6A, 00
        push    dword [ebp+0CH]                         ; 13E2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13E5 _ FF. 75, 08
        call    boxfill8                                ; 13E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13ED _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13F0 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 13F3 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 13F6 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 13F9 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 13FC _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 13FF _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1402 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1405 _ 83. E8, 2F
        sub     esp, 4                                  ; 1408 _ 83. EC, 04
        push    ebx                                     ; 140B _ 53
        push    ecx                                     ; 140C _ 51
        push    edx                                     ; 140D _ 52
        push    eax                                     ; 140E _ 50
        push    15                                      ; 140F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1411 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1414 _ FF. 75, 08
        call    boxfill8                                ; 1417 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 141C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 141F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1422 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1425 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1428 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 142B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 142E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1431 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1434 _ 83. E8, 2F
        sub     esp, 4                                  ; 1437 _ 83. EC, 04
        push    ebx                                     ; 143A _ 53
        push    ecx                                     ; 143B _ 51
        push    edx                                     ; 143C _ 52
        push    eax                                     ; 143D _ 50
        push    15                                      ; 143E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1440 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1443 _ FF. 75, 08
        call    boxfill8                                ; 1446 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 144B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 144E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1451 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1454 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1457 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 145A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 145D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1460 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1463 _ 83. E8, 2F
        sub     esp, 4                                  ; 1466 _ 83. EC, 04
        push    ebx                                     ; 1469 _ 53
        push    ecx                                     ; 146A _ 51
        push    edx                                     ; 146B _ 52
        push    eax                                     ; 146C _ 50
        push    7                                       ; 146D _ 6A, 07
        push    dword [ebp+0CH]                         ; 146F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1472 _ FF. 75, 08
        call    boxfill8                                ; 1475 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 147A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 147D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1480 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1483 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1486 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1489 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 148C _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 148F _ 8B. 45, 0C
        sub     eax, 3                                  ; 1492 _ 83. E8, 03
        sub     esp, 4                                  ; 1495 _ 83. EC, 04
        push    ebx                                     ; 1498 _ 53
        push    ecx                                     ; 1499 _ 51
        push    edx                                     ; 149A _ 52
        push    eax                                     ; 149B _ 50
        push    7                                       ; 149C _ 6A, 07
        push    dword [ebp+0CH]                         ; 149E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14A1 _ FF. 75, 08
        call    boxfill8                                ; 14A4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14A9 _ 83. C4, 20
        nop                                             ; 14AC _ 90
        mov     ebx, dword [ebp-4H]                     ; 14AD _ 8B. 5D, FC
        leave                                           ; 14B0 _ C9
        ret                                             ; 14B1 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 14B2 _ 55
        mov     ebp, esp                                ; 14B3 _ 89. E5
        sub     esp, 24                                 ; 14B5 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 14B8 _ A1, 00000004(d)
        mov     dword [ebp-14H], eax                    ; 14BD _ 89. 45, EC
        movzx   eax, word [?_238]                       ; 14C0 _ 0F B7. 05, 00000008(d)
        cwde                                            ; 14C7 _ 98
        mov     dword [ebp-10H], eax                    ; 14C8 _ 89. 45, F0
        movzx   eax, word [?_239]                       ; 14CB _ 0F B7. 05, 0000000A(d)
        cwde                                            ; 14D2 _ 98
        mov     dword [ebp-0CH], eax                    ; 14D3 _ 89. 45, F4
        sub     esp, 4                                  ; 14D6 _ 83. EC, 04
        push    table_rgb.2356                          ; 14D9 _ 68, 00000120(d)
        push    15                                      ; 14DE _ 6A, 0F
        push    0                                       ; 14E0 _ 6A, 00
        call    set_palette                             ; 14E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14E7 _ 83. C4, 10
        nop                                             ; 14EA _ 90
        leave                                           ; 14EB _ C9
        ret                                             ; 14EC _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 14ED _ 55
        mov     ebp, esp                                ; 14EE _ 89. E5
        sub     esp, 24                                 ; 14F0 _ 83. EC, 18
        call    io_load_eflags                          ; 14F3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 14F8 _ 89. 45, F4
        call    io_cli                                  ; 14FB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1500 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1503 _ FF. 75, 08
        push    968                                     ; 1506 _ 68, 000003C8
        call    io_out8                                 ; 150B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1510 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1513 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1516 _ 89. 45, F0
        jmp     ?_039                                   ; 1519 _ EB, 65

?_038:  mov     eax, dword [ebp+10H]                    ; 151B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 151E _ 0F B6. 00
        shr     al, 2                                   ; 1521 _ C0. E8, 02
        movzx   eax, al                                 ; 1524 _ 0F B6. C0
        sub     esp, 8                                  ; 1527 _ 83. EC, 08
        push    eax                                     ; 152A _ 50
        push    969                                     ; 152B _ 68, 000003C9
        call    io_out8                                 ; 1530 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1535 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1538 _ 8B. 45, 10
        add     eax, 1                                  ; 153B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 153E _ 0F B6. 00
        shr     al, 2                                   ; 1541 _ C0. E8, 02
        movzx   eax, al                                 ; 1544 _ 0F B6. C0
        sub     esp, 8                                  ; 1547 _ 83. EC, 08
        push    eax                                     ; 154A _ 50
        push    969                                     ; 154B _ 68, 000003C9
        call    io_out8                                 ; 1550 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1555 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1558 _ 8B. 45, 10
        add     eax, 2                                  ; 155B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 155E _ 0F B6. 00
        shr     al, 2                                   ; 1561 _ C0. E8, 02
        movzx   eax, al                                 ; 1564 _ 0F B6. C0
        sub     esp, 8                                  ; 1567 _ 83. EC, 08
        push    eax                                     ; 156A _ 50
        push    969                                     ; 156B _ 68, 000003C9
        call    io_out8                                 ; 1570 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1575 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1578 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 157C _ 83. 45, F0, 01
?_039:  mov     eax, dword [ebp-10H]                    ; 1580 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1583 _ 3B. 45, 0C
        jle     ?_038                                   ; 1586 _ 7E, 93
        sub     esp, 12                                 ; 1588 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 158B _ FF. 75, F4
        call    io_store_eflags                         ; 158E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1593 _ 83. C4, 10
        nop                                             ; 1596 _ 90
        leave                                           ; 1597 _ C9
        ret                                             ; 1598 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1599 _ 55
        mov     ebp, esp                                ; 159A _ 89. E5
        sub     esp, 20                                 ; 159C _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 159F _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 15A2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 15A5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 15A8 _ 89. 45, FC
        jmp     ?_043                                   ; 15AB _ EB, 33

?_040:  mov     eax, dword [ebp+14H]                    ; 15AD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 15B0 _ 89. 45, F8
        jmp     ?_042                                   ; 15B3 _ EB, 1F

?_041:  mov     eax, dword [ebp-4H]                     ; 15B5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 15B8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15BC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15BE _ 8B. 45, F8
        add     eax, edx                                ; 15C1 _ 01. D0
        mov     edx, eax                                ; 15C3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15C5 _ 8B. 45, 08
        add     edx, eax                                ; 15C8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15CA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15CE _ 88. 02
        add     dword [ebp-8H], 1                       ; 15D0 _ 83. 45, F8, 01
?_042:  mov     eax, dword [ebp-8H]                     ; 15D4 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 15D7 _ 3B. 45, 1C
        jle     ?_041                                   ; 15DA _ 7E, D9
        add     dword [ebp-4H], 1                       ; 15DC _ 83. 45, FC, 01
?_043:  mov     eax, dword [ebp-4H]                     ; 15E0 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 15E3 _ 3B. 45, 20
        jle     ?_040                                   ; 15E6 _ 7E, C5
        nop                                             ; 15E8 _ 90
        leave                                           ; 15E9 _ C9
        ret                                             ; 15EA _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 15EB _ 55
        mov     ebp, esp                                ; 15EC _ 89. E5
        push    edi                                     ; 15EE _ 57
        push    esi                                     ; 15EF _ 56
        push    ebx                                     ; 15F0 _ 53
        sub     esp, 16                                 ; 15F1 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 15F4 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 15F7 _ 8B. 45, 14
        add     eax, edx                                ; 15FA _ 01. D0
        mov     dword [ebp-14H], eax                    ; 15FC _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 15FF _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1602 _ 8B. 45, 18
        add     eax, edx                                ; 1605 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1607 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 160A _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 160D _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1610 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1613 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1616 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1619 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 161C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 161F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1622 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1625 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1628 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 162B _ 8B. 00
        push    edi                                     ; 162D _ 57
        push    esi                                     ; 162E _ 56
        push    ebx                                     ; 162F _ 53
        push    ecx                                     ; 1630 _ 51
        push    15                                      ; 1631 _ 6A, 0F
        push    edx                                     ; 1633 _ 52
        push    eax                                     ; 1634 _ 50
        call    boxfill8                                ; 1635 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 163A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 163D _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1640 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1643 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1646 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1649 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 164C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 164F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1652 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1655 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1658 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 165B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 165E _ 8B. 00
        push    edi                                     ; 1660 _ 57
        push    esi                                     ; 1661 _ 56
        push    ebx                                     ; 1662 _ 53
        push    ecx                                     ; 1663 _ 51
        push    15                                      ; 1664 _ 6A, 0F
        push    edx                                     ; 1666 _ 52
        push    eax                                     ; 1667 _ 50
        call    boxfill8                                ; 1668 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 166D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1670 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1673 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1676 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1679 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 167C _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 167F _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1682 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1685 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1688 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 168B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 168E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1691 _ 8B. 00
        push    edi                                     ; 1693 _ 57
        push    esi                                     ; 1694 _ 56
        push    ebx                                     ; 1695 _ 53
        push    ecx                                     ; 1696 _ 51
        push    7                                       ; 1697 _ 6A, 07
        push    edx                                     ; 1699 _ 52
        push    eax                                     ; 169A _ 50
        call    boxfill8                                ; 169B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16A0 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 16A3 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 16A6 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 16A9 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 16AC _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 16AF _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 16B2 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 16B5 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 16B8 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 16BB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16BE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16C1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16C4 _ 8B. 00
        push    edi                                     ; 16C6 _ 57
        push    esi                                     ; 16C7 _ 56
        push    ebx                                     ; 16C8 _ 53
        push    ecx                                     ; 16C9 _ 51
        push    7                                       ; 16CA _ 6A, 07
        push    edx                                     ; 16CC _ 52
        push    eax                                     ; 16CD _ 50
        call    boxfill8                                ; 16CE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16D3 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 16D6 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 16D9 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 16DC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 16DF _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 16E2 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 16E5 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 16E8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16EB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16EE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16F1 _ 8B. 00
        push    esi                                     ; 16F3 _ 56
        push    dword [ebp-14H]                         ; 16F4 _ FF. 75, EC
        push    ebx                                     ; 16F7 _ 53
        push    ecx                                     ; 16F8 _ 51
        push    0                                       ; 16F9 _ 6A, 00
        push    edx                                     ; 16FB _ 52
        push    eax                                     ; 16FC _ 50
        call    boxfill8                                ; 16FD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1702 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1705 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1708 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 170B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 170E _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1711 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1714 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1717 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 171A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 171D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1720 _ 8B. 00
        push    dword [ebp-10H]                         ; 1722 _ FF. 75, F0
        push    esi                                     ; 1725 _ 56
        push    ebx                                     ; 1726 _ 53
        push    ecx                                     ; 1727 _ 51
        push    0                                       ; 1728 _ 6A, 00
        push    edx                                     ; 172A _ 52
        push    eax                                     ; 172B _ 50
        call    boxfill8                                ; 172C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1731 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1734 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1737 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 173A _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 173D _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1740 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1743 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1746 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1749 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 174C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 174F _ 8B. 00
        push    esi                                     ; 1751 _ 56
        push    dword [ebp-14H]                         ; 1752 _ FF. 75, EC
        push    ebx                                     ; 1755 _ 53
        push    ecx                                     ; 1756 _ 51
        push    8                                       ; 1757 _ 6A, 08
        push    edx                                     ; 1759 _ 52
        push    eax                                     ; 175A _ 50
        call    boxfill8                                ; 175B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1760 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1763 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1766 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1769 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 176C _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 176F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1772 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1775 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1778 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 177B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 177E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1781 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1784 _ 8B. 00
        push    edi                                     ; 1786 _ 57
        push    esi                                     ; 1787 _ 56
        push    ebx                                     ; 1788 _ 53
        push    ecx                                     ; 1789 _ 51
        push    8                                       ; 178A _ 6A, 08
        push    edx                                     ; 178C _ 52
        push    eax                                     ; 178D _ 50
        call    boxfill8                                ; 178E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1793 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1796 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1799 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 179C _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 179F _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 17A2 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 17A5 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 17A8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 17AB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17AE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17B1 _ 8B. 00
        push    dword [ebp-10H]                         ; 17B3 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 17B6 _ FF. 75, EC
        push    esi                                     ; 17B9 _ 56
        push    ebx                                     ; 17BA _ 53
        push    ecx                                     ; 17BB _ 51
        push    edx                                     ; 17BC _ 52
        push    eax                                     ; 17BD _ 50
        call    boxfill8                                ; 17BE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17C3 _ 83. C4, 1C
        nop                                             ; 17C6 _ 90
        lea     esp, [ebp-0CH]                          ; 17C7 _ 8D. 65, F4
        pop     ebx                                     ; 17CA _ 5B
        pop     esi                                     ; 17CB _ 5E
        pop     edi                                     ; 17CC _ 5F
        pop     ebp                                     ; 17CD _ 5D
        ret                                             ; 17CE _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 17CF _ 55
        mov     ebp, esp                                ; 17D0 _ 89. E5
        sub     esp, 20                                 ; 17D2 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 17D5 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 17D8 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 17DB _ C7. 45, FC, 00000000
        jmp     ?_053                                   ; 17E2 _ E9, 0000016C

?_044:  mov     edx, dword [ebp-4H]                     ; 17E7 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 17EA _ 8B. 45, 1C
        add     eax, edx                                ; 17ED _ 01. D0
        movzx   eax, byte [eax]                         ; 17EF _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 17F2 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 17F5 _ 80. 7D, FB, 00
        jns     ?_045                                   ; 17F9 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 17FB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17FE _ 8B. 45, FC
        add     eax, edx                                ; 1801 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1803 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1807 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1809 _ 8B. 45, 10
        add     eax, edx                                ; 180C _ 01. D0
        mov     edx, eax                                ; 180E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1810 _ 8B. 45, 08
        add     edx, eax                                ; 1813 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1815 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1819 _ 88. 02
?_045:  movsx   eax, byte [ebp-5H]                      ; 181B _ 0F BE. 45, FB
        and     eax, 40H                                ; 181F _ 83. E0, 40
        test    eax, eax                                ; 1822 _ 85. C0
        jz      ?_046                                   ; 1824 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1826 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1829 _ 8B. 45, FC
        add     eax, edx                                ; 182C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 182E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1832 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1834 _ 8B. 45, 10
        add     eax, edx                                ; 1837 _ 01. D0
        lea     edx, [eax+1H]                           ; 1839 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 183C _ 8B. 45, 08
        add     edx, eax                                ; 183F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1841 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1845 _ 88. 02
?_046:  movsx   eax, byte [ebp-5H]                      ; 1847 _ 0F BE. 45, FB
        and     eax, 20H                                ; 184B _ 83. E0, 20
        test    eax, eax                                ; 184E _ 85. C0
        jz      ?_047                                   ; 1850 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1852 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1855 _ 8B. 45, FC
        add     eax, edx                                ; 1858 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 185A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 185E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1860 _ 8B. 45, 10
        add     eax, edx                                ; 1863 _ 01. D0
        lea     edx, [eax+2H]                           ; 1865 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1868 _ 8B. 45, 08
        add     edx, eax                                ; 186B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 186D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1871 _ 88. 02
?_047:  movsx   eax, byte [ebp-5H]                      ; 1873 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1877 _ 83. E0, 10
        test    eax, eax                                ; 187A _ 85. C0
        jz      ?_048                                   ; 187C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 187E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1881 _ 8B. 45, FC
        add     eax, edx                                ; 1884 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1886 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 188A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 188C _ 8B. 45, 10
        add     eax, edx                                ; 188F _ 01. D0
        lea     edx, [eax+3H]                           ; 1891 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1894 _ 8B. 45, 08
        add     edx, eax                                ; 1897 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1899 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 189D _ 88. 02
?_048:  movsx   eax, byte [ebp-5H]                      ; 189F _ 0F BE. 45, FB
        and     eax, 08H                                ; 18A3 _ 83. E0, 08
        test    eax, eax                                ; 18A6 _ 85. C0
        jz      ?_049                                   ; 18A8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 18AA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18AD _ 8B. 45, FC
        add     eax, edx                                ; 18B0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18B2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18B6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18B8 _ 8B. 45, 10
        add     eax, edx                                ; 18BB _ 01. D0
        lea     edx, [eax+4H]                           ; 18BD _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 18C0 _ 8B. 45, 08
        add     edx, eax                                ; 18C3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18C5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18C9 _ 88. 02
?_049:  movsx   eax, byte [ebp-5H]                      ; 18CB _ 0F BE. 45, FB
        and     eax, 04H                                ; 18CF _ 83. E0, 04
        test    eax, eax                                ; 18D2 _ 85. C0
        jz      ?_050                                   ; 18D4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 18D6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18D9 _ 8B. 45, FC
        add     eax, edx                                ; 18DC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18DE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18E2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18E4 _ 8B. 45, 10
        add     eax, edx                                ; 18E7 _ 01. D0
        lea     edx, [eax+5H]                           ; 18E9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 18EC _ 8B. 45, 08
        add     edx, eax                                ; 18EF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18F1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18F5 _ 88. 02
?_050:  movsx   eax, byte [ebp-5H]                      ; 18F7 _ 0F BE. 45, FB
        and     eax, 02H                                ; 18FB _ 83. E0, 02
        test    eax, eax                                ; 18FE _ 85. C0
        jz      ?_051                                   ; 1900 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1902 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1905 _ 8B. 45, FC
        add     eax, edx                                ; 1908 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 190A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 190E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1910 _ 8B. 45, 10
        add     eax, edx                                ; 1913 _ 01. D0
        lea     edx, [eax+6H]                           ; 1915 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1918 _ 8B. 45, 08
        add     edx, eax                                ; 191B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 191D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1921 _ 88. 02
?_051:  movsx   eax, byte [ebp-5H]                      ; 1923 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1927 _ 83. E0, 01
        test    eax, eax                                ; 192A _ 85. C0
        jz      ?_052                                   ; 192C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 192E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1931 _ 8B. 45, FC
        add     eax, edx                                ; 1934 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1936 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 193A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 193C _ 8B. 45, 10
        add     eax, edx                                ; 193F _ 01. D0
        lea     edx, [eax+7H]                           ; 1941 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1944 _ 8B. 45, 08
        add     edx, eax                                ; 1947 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1949 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 194D _ 88. 02
?_052:  add     dword [ebp-4H], 1                       ; 194F _ 83. 45, FC, 01
?_053:  cmp     dword [ebp-4H], 15                      ; 1953 _ 83. 7D, FC, 0F
        jle     ?_044                                   ; 1957 _ 0F 8E, FFFFFE8A
        nop                                             ; 195D _ 90
        leave                                           ; 195E _ C9
        ret                                             ; 195F _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1960 _ 55
        mov     ebp, esp                                ; 1961 _ 89. E5
        sub     esp, 20                                 ; 1963 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1966 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1969 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 196C _ C7. 45, FC, 00000000
        jmp     ?_060                                   ; 1973 _ E9, 000000B1

?_054:  mov     dword [ebp-8H], 0                       ; 1978 _ C7. 45, F8, 00000000
        jmp     ?_059                                   ; 197F _ E9, 00000097

?_055:  mov     eax, dword [ebp-4H]                     ; 1984 _ 8B. 45, FC
        shl     eax, 4                                  ; 1987 _ C1. E0, 04
        mov     edx, eax                                ; 198A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 198C _ 8B. 45, F8
        add     eax, edx                                ; 198F _ 01. D0
        add     eax, cursor.2411                        ; 1991 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1996 _ 0F B6. 00
        cmp     al, 42                                  ; 1999 _ 3C, 2A
        jnz     ?_056                                   ; 199B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 199D _ 8B. 45, FC
        shl     eax, 4                                  ; 19A0 _ C1. E0, 04
        mov     edx, eax                                ; 19A3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19A5 _ 8B. 45, F8
        add     eax, edx                                ; 19A8 _ 01. D0
        mov     edx, eax                                ; 19AA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 19AC _ 8B. 45, 08
        add     eax, edx                                ; 19AF _ 01. D0
        mov     byte [eax], 0                           ; 19B1 _ C6. 00, 00
?_056:  mov     eax, dword [ebp-4H]                     ; 19B4 _ 8B. 45, FC
        shl     eax, 4                                  ; 19B7 _ C1. E0, 04
        mov     edx, eax                                ; 19BA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19BC _ 8B. 45, F8
        add     eax, edx                                ; 19BF _ 01. D0
        add     eax, cursor.2411                        ; 19C1 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 19C6 _ 0F B6. 00
        cmp     al, 79                                  ; 19C9 _ 3C, 4F
        jnz     ?_057                                   ; 19CB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 19CD _ 8B. 45, FC
        shl     eax, 4                                  ; 19D0 _ C1. E0, 04
        mov     edx, eax                                ; 19D3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19D5 _ 8B. 45, F8
        add     eax, edx                                ; 19D8 _ 01. D0
        mov     edx, eax                                ; 19DA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 19DC _ 8B. 45, 08
        add     eax, edx                                ; 19DF _ 01. D0
        mov     byte [eax], 7                           ; 19E1 _ C6. 00, 07
?_057:  mov     eax, dword [ebp-4H]                     ; 19E4 _ 8B. 45, FC
        shl     eax, 4                                  ; 19E7 _ C1. E0, 04
        mov     edx, eax                                ; 19EA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19EC _ 8B. 45, F8
        add     eax, edx                                ; 19EF _ 01. D0
        add     eax, cursor.2411                        ; 19F1 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 19F6 _ 0F B6. 00
        cmp     al, 46                                  ; 19F9 _ 3C, 2E
        jnz     ?_058                                   ; 19FB _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 19FD _ 8B. 45, FC
        shl     eax, 4                                  ; 1A00 _ C1. E0, 04
        mov     edx, eax                                ; 1A03 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A05 _ 8B. 45, F8
        add     eax, edx                                ; 1A08 _ 01. D0
        mov     edx, eax                                ; 1A0A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A0C _ 8B. 45, 08
        add     edx, eax                                ; 1A0F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1A11 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1A15 _ 88. 02
?_058:  add     dword [ebp-8H], 1                       ; 1A17 _ 83. 45, F8, 01
?_059:  cmp     dword [ebp-8H], 15                      ; 1A1B _ 83. 7D, F8, 0F
        jle     ?_055                                   ; 1A1F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1A25 _ 83. 45, FC, 01
?_060:  cmp     dword [ebp-4H], 15                      ; 1A29 _ 83. 7D, FC, 0F
        jle     ?_054                                   ; 1A2D _ 0F 8E, FFFFFF45
        nop                                             ; 1A33 _ 90
        leave                                           ; 1A34 _ C9
        ret                                             ; 1A35 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1A36 _ 55
        mov     ebp, esp                                ; 1A37 _ 89. E5
        push    ebx                                     ; 1A39 _ 53
        sub     esp, 16                                 ; 1A3A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1A3D _ C7. 45, F8, 00000000
        jmp     ?_064                                   ; 1A44 _ EB, 50

?_061:  mov     dword [ebp-0CH], 0                      ; 1A46 _ C7. 45, F4, 00000000
        jmp     ?_063                                   ; 1A4D _ EB, 3B

?_062:  mov     eax, dword [ebp-8H]                     ; 1A4F _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1A52 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1A56 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1A58 _ 8B. 45, F4
        add     eax, edx                                ; 1A5B _ 01. D0
        mov     edx, eax                                ; 1A5D _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1A5F _ 8B. 45, 20
        add     eax, edx                                ; 1A62 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1A64 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1A67 _ 8B. 55, F8
        add     edx, ecx                                ; 1A6A _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1A6C _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1A70 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1A73 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1A76 _ 01. D9
        add     edx, ecx                                ; 1A78 _ 01. CA
        mov     ecx, edx                                ; 1A7A _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1A7C _ 8B. 55, 08
        add     edx, ecx                                ; 1A7F _ 01. CA
        movzx   eax, byte [eax]                         ; 1A81 _ 0F B6. 00
        mov     byte [edx], al                          ; 1A84 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1A86 _ 83. 45, F4, 01
?_063:  mov     eax, dword [ebp-0CH]                    ; 1A8A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1A8D _ 3B. 45, 10
        jl      ?_062                                   ; 1A90 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1A92 _ 83. 45, F8, 01
?_064:  mov     eax, dword [ebp-8H]                     ; 1A96 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1A99 _ 3B. 45, 14
        jl      ?_061                                   ; 1A9C _ 7C, A8
        nop                                             ; 1A9E _ 90
        add     esp, 16                                 ; 1A9F _ 83. C4, 10
        pop     ebx                                     ; 1AA2 _ 5B
        pop     ebp                                     ; 1AA3 _ 5D
        ret                                             ; 1AA4 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1AA5 _ 55
        mov     ebp, esp                                ; 1AA6 _ 89. E5
        sub     esp, 24                                 ; 1AA8 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1AAB _ A1, 00000004(d)
        mov     dword [ebp-14H], eax                    ; 1AB0 _ 89. 45, EC
        movzx   eax, word [?_238]                       ; 1AB3 _ 0F B7. 05, 00000008(d)
        cwde                                            ; 1ABA _ 98
        mov     dword [ebp-10H], eax                    ; 1ABB _ 89. 45, F0
        movzx   eax, word [?_239]                       ; 1ABE _ 0F B7. 05, 0000000A(d)
        cwde                                            ; 1AC5 _ 98
        mov     dword [ebp-0CH], eax                    ; 1AC6 _ 89. 45, F4
        sub     esp, 8                                  ; 1AC9 _ 83. EC, 08
        push    32                                      ; 1ACC _ 6A, 20
        push    32                                      ; 1ACE _ 6A, 20
        call    io_out8                                 ; 1AD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AD5 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1AD8 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1ADC _ 83. EC, 0C
        push    96                                      ; 1ADF _ 6A, 60
        call    io_in8                                  ; 1AE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AE6 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1AE9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1AEC _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1AF0 _ 83. EC, 08
        push    eax                                     ; 1AF3 _ 50
        push    keyInfo                                 ; 1AF4 _ 68, 0000000C(d)
        call    fifo8_put                               ; 1AF9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AFE _ 83. C4, 10
        nop                                             ; 1B01 _ 90
        leave                                           ; 1B02 _ C9
        ret                                             ; 1B03 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1B04 _ 55
        mov     ebp, esp                                ; 1B05 _ 89. E5
        sub     esp, 40                                 ; 1B07 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1B0A _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1B0D _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1B10 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1B14 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1B17 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1B1A _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1B1E _ 83. EC, 0C
        push    eax                                     ; 1B21 _ 50
        call    charToVal                               ; 1B22 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B27 _ 83. C4, 10
        mov     byte [?_237], al                        ; 1B2A _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1B2F _ 0F B6. 45, E4
        shr     al, 4                                   ; 1B33 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1B36 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1B39 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1B3D _ 0F BE. C0
        sub     esp, 12                                 ; 1B40 _ 83. EC, 0C
        push    eax                                     ; 1B43 _ 50
        call    charToVal                               ; 1B44 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B49 _ 83. C4, 10
        mov     byte [?_236], al                        ; 1B4C _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1B51 _ B8, 00000000(d)
        leave                                           ; 1B56 _ C9
        ret                                             ; 1B57 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1B58 _ 55
        mov     ebp, esp                                ; 1B59 _ 89. E5
        sub     esp, 4                                  ; 1B5B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1B5E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1B61 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1B64 _ 80. 7D, FC, 09
        jle     ?_065                                   ; 1B68 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1B6A _ 0F B6. 45, FC
        add     eax, 55                                 ; 1B6E _ 83. C0, 37
        jmp     ?_066                                   ; 1B71 _ EB, 07

?_065:  movzx   eax, byte [ebp-4H]                      ; 1B73 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1B77 _ 83. C0, 30
?_066:  leave                                           ; 1B7A _ C9
        ret                                             ; 1B7B _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1B7C _ 55
        mov     ebp, esp                                ; 1B7D _ 89. E5
        sub     esp, 16                                 ; 1B7F _ 83. EC, 10
        mov     byte [str.2454], 48                     ; 1B82 _ C6. 05, 00000274(d), 30
        mov     byte [?_242], 120                       ; 1B89 _ C6. 05, 00000275(d), 78
        mov     byte [?_243], 0                         ; 1B90 _ C6. 05, 0000027E(d), 00
        mov     dword [ebp-0CH], 2                      ; 1B97 _ C7. 45, F4, 00000002
        jmp     ?_068                                   ; 1B9E _ EB, 0F

?_067:  mov     eax, dword [ebp-0CH]                    ; 1BA0 _ 8B. 45, F4
        add     eax, str.2454                           ; 1BA3 _ 05, 00000274(d)
        mov     byte [eax], 48                          ; 1BA8 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1BAB _ 83. 45, F4, 01
?_068:  cmp     dword [ebp-0CH], 9                      ; 1BAF _ 83. 7D, F4, 09
        jle     ?_067                                   ; 1BB3 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1BB5 _ C7. 45, F8, 00000009
        jmp     ?_071                                   ; 1BBC _ EB, 48

?_069:  mov     eax, dword [ebp+8H]                     ; 1BBE _ 8B. 45, 08
        and     eax, 0FH                                ; 1BC1 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1BC4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1BC7 _ 8B. 45, 08
        shr     eax, 4                                  ; 1BCA _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1BCD _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1BD0 _ 83. 7D, FC, 09
        jle     ?_070                                   ; 1BD4 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1BD6 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1BD9 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1BDC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1BDF _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1BE2 _ 89. 55, F8
        mov     edx, ecx                                ; 1BE5 _ 89. CA
        mov     byte [str.2454+eax], dl                 ; 1BE7 _ 88. 90, 00000274(d)
        jmp     ?_071                                   ; 1BED _ EB, 17

?_070:  mov     eax, dword [ebp-4H]                     ; 1BEF _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1BF2 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1BF5 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1BF8 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1BFB _ 89. 55, F8
        mov     edx, ecx                                ; 1BFE _ 89. CA
        mov     byte [str.2454+eax], dl                 ; 1C00 _ 88. 90, 00000274(d)
?_071:  cmp     dword [ebp-8H], 1                       ; 1C06 _ 83. 7D, F8, 01
        jle     ?_072                                   ; 1C0A _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1C0C _ 83. 7D, 08, 00
        jnz     ?_069                                   ; 1C10 _ 75, AC
?_072:  mov     eax, str.2454                           ; 1C12 _ B8, 00000274(d)
        leave                                           ; 1C17 _ C9
        ret                                             ; 1C18 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1C19 _ 55
        mov     ebp, esp                                ; 1C1A _ 89. E5
        sub     esp, 8                                  ; 1C1C _ 83. EC, 08
?_073:  sub     esp, 12                                 ; 1C1F _ 83. EC, 0C
        push    100                                     ; 1C22 _ 6A, 64
        call    io_in8                                  ; 1C24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C29 _ 83. C4, 10
        movsx   eax, al                                 ; 1C2C _ 0F BE. C0
        and     eax, 02H                                ; 1C2F _ 83. E0, 02
        test    eax, eax                                ; 1C32 _ 85. C0
        jz      ?_074                                   ; 1C34 _ 74, 02
        jmp     ?_073                                   ; 1C36 _ EB, E7

?_074:  nop                                             ; 1C38 _ 90
        nop                                             ; 1C39 _ 90
        leave                                           ; 1C3A _ C9
        ret                                             ; 1C3B _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1C3C _ 55
        mov     ebp, esp                                ; 1C3D _ 89. E5
        sub     esp, 8                                  ; 1C3F _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1C42 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C47 _ 83. EC, 08
        push    96                                      ; 1C4A _ 6A, 60
        push    100                                     ; 1C4C _ 6A, 64
        call    io_out8                                 ; 1C4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C53 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1C56 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C5B _ 83. EC, 08
        push    71                                      ; 1C5E _ 6A, 47
        push    96                                      ; 1C60 _ 6A, 60
        call    io_out8                                 ; 1C62 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C67 _ 83. C4, 10
        nop                                             ; 1C6A _ 90
        leave                                           ; 1C6B _ C9
        ret                                             ; 1C6C _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1C6D _ 55
        mov     ebp, esp                                ; 1C6E _ 89. E5
        sub     esp, 8                                  ; 1C70 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1C73 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C78 _ 83. EC, 08
        push    212                                     ; 1C7B _ 68, 000000D4
        push    100                                     ; 1C80 _ 6A, 64
        call    io_out8                                 ; 1C82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C87 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1C8A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C8F _ 83. EC, 08
        push    244                                     ; 1C92 _ 68, 000000F4
        push    96                                      ; 1C97 _ 6A, 60
        call    io_out8                                 ; 1C99 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C9E _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1CA1 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1CA4 _ C6. 40, 03, 00
        nop                                             ; 1CA8 _ 90
        leave                                           ; 1CA9 _ C9
        ret                                             ; 1CAA _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1CAB _ 55
        mov     ebp, esp                                ; 1CAC _ 89. E5
        sub     esp, 24                                 ; 1CAE _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1CB1 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1CB5 _ 83. EC, 08
        push    32                                      ; 1CB8 _ 6A, 20
        push    160                                     ; 1CBA _ 68, 000000A0
        call    io_out8                                 ; 1CBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC4 _ 83. C4, 10
        sub     esp, 8                                  ; 1CC7 _ 83. EC, 08
        push    32                                      ; 1CCA _ 6A, 20
        push    32                                      ; 1CCC _ 6A, 20
        call    io_out8                                 ; 1CCE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CD3 _ 83. C4, 10
        sub     esp, 12                                 ; 1CD6 _ 83. EC, 0C
        push    96                                      ; 1CD9 _ 6A, 60
        call    io_in8                                  ; 1CDB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CE0 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1CE3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1CE6 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1CEA _ 83. EC, 08
        push    eax                                     ; 1CED _ 50
        push    mouseInfo                               ; 1CEE _ 68, 00000028(d)
        call    fifo8_put                               ; 1CF3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CF8 _ 83. C4, 10
        nop                                             ; 1CFB _ 90
        leave                                           ; 1CFC _ C9
        ret                                             ; 1CFD _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1CFE _ 55
        mov     ebp, esp                                ; 1CFF _ 89. E5
        sub     esp, 40                                 ; 1D01 _ 83. EC, 28
        call    io_sti                                  ; 1D04 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1D09 _ A1, 00000004(d)
        mov     dword [ebp-18H], eax                    ; 1D0E _ 89. 45, E8
        movzx   eax, word [?_238]                       ; 1D11 _ 0F B7. 05, 00000008(d)
        cwde                                            ; 1D18 _ 98
        mov     dword [ebp-14H], eax                    ; 1D19 _ 89. 45, EC
        movzx   eax, word [?_239]                       ; 1D1C _ 0F B7. 05, 0000000A(d)
        cwde                                            ; 1D23 _ 98
        mov     dword [ebp-10H], eax                    ; 1D24 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1D27 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1D2B _ 83. EC, 0C
        push    keyInfo                                 ; 1D2E _ 68, 0000000C(d)
        call    fifo8_get                               ; 1D33 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D38 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1D3B _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1D3E _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1D42 _ 83. EC, 0C
        push    eax                                     ; 1D45 _ 50
        call    charToHex                               ; 1D46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D4B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1D4E _ 89. 45, F4
        mov     edx, dword [line.2487]                  ; 1D51 _ 8B. 15, 00000280(d)
        mov     eax, dword [pos.2486]                   ; 1D57 _ A1, 00000284(d)
        sub     esp, 8                                  ; 1D5C _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1D5F _ FF. 75, F4
        push    7                                       ; 1D62 _ 6A, 07
        push    edx                                     ; 1D64 _ 52
        push    eax                                     ; 1D65 _ 50
        push    dword [ebp+0CH]                         ; 1D66 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D69 _ FF. 75, 08
        call    showString                              ; 1D6C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D71 _ 83. C4, 20
        mov     eax, dword [pos.2486]                   ; 1D74 _ A1, 00000284(d)
        add     eax, 32                                 ; 1D79 _ 83. C0, 20
        mov     dword [pos.2486], eax                   ; 1D7C _ A3, 00000284(d)
        mov     eax, dword [pos.2486]                   ; 1D81 _ A1, 00000284(d)
        cmp     dword [ebp-14H], eax                    ; 1D86 _ 39. 45, EC
        jnz     ?_077                                   ; 1D89 _ 75, 28
        mov     eax, dword [line.2487]                  ; 1D8B _ A1, 00000280(d)
        cmp     dword [ebp-10H], eax                    ; 1D90 _ 39. 45, F0
        jz      ?_075                                   ; 1D93 _ 74, 0A
        mov     eax, dword [line.2487]                  ; 1D95 _ A1, 00000280(d)
        add     eax, 16                                 ; 1D9A _ 83. C0, 10
        jmp     ?_076                                   ; 1D9D _ EB, 05

?_075:  mov     eax, 0                                  ; 1D9F _ B8, 00000000
?_076:  mov     dword [line.2487], eax                  ; 1DA4 _ A3, 00000280(d)
        mov     dword [pos.2486], 0                     ; 1DA9 _ C7. 05, 00000284(d), 00000000
?_077:  nop                                             ; 1DB3 _ 90
        leave                                           ; 1DB4 _ C9
        ret                                             ; 1DB5 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1DB6 _ 55
        mov     ebp, esp                                ; 1DB7 _ 89. E5
        sub     esp, 24                                 ; 1DB9 _ 83. EC, 18
        call    io_sti                                  ; 1DBC _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1DC1 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1DC5 _ 83. EC, 0C
        push    mouseInfo                               ; 1DC8 _ 68, 00000028(d)
        call    fifo8_get                               ; 1DCD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DD2 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1DD5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1DD8 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1DDC _ 83. EC, 08
        push    eax                                     ; 1DDF _ 50
        push    mouse_move                              ; 1DE0 _ 68, 00000100(d)
        call    mouse_decode                            ; 1DE5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DEA _ 83. C4, 10
        test    eax, eax                                ; 1DED _ 85. C0
        jz      ?_078                                   ; 1DEF _ 74, 60
        sub     esp, 4                                  ; 1DF1 _ 83. EC, 04
        push    mouse_move                              ; 1DF4 _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 1DF9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DFC _ FF. 75, 08
        call    computeMousePos                         ; 1DFF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E04 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1E07 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 1E0D _ A1, 00000110(d)
        push    edx                                     ; 1E12 _ 52
        push    eax                                     ; 1E13 _ 50
        push    dword [ebp+10H]                         ; 1E14 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1E17 _ FF. 75, 08
        call    sheet_slide                             ; 1E1A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E1F _ 83. C4, 10
        mov     eax, dword [?_241]                      ; 1E22 _ A1, 0000010C(d)
        and     eax, 01H                                ; 1E27 _ 83. E0, 01
        test    eax, eax                                ; 1E2A _ 85. C0
        jz      ?_078                                   ; 1E2C _ 74, 23
        mov     eax, dword [my]                         ; 1E2E _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 1E33 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1E36 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 1E3B _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1E3E _ A1, 00000248(d)
        push    ecx                                     ; 1E43 _ 51
        push    edx                                     ; 1E44 _ 52
        push    eax                                     ; 1E45 _ 50
        push    dword [ebp+8H]                          ; 1E46 _ FF. 75, 08
        call    sheet_slide                             ; 1E49 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E4E _ 83. C4, 10
?_078:  nop                                             ; 1E51 _ 90
        leave                                           ; 1E52 _ C9
        ret                                             ; 1E53 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1E54 _ 55
        mov     ebp, esp                                ; 1E55 _ 89. E5
        sub     esp, 4                                  ; 1E57 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1E5A _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1E5D _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1E60 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E63 _ 0F B6. 40, 03
        test    al, al                                  ; 1E67 _ 84. C0
        jnz     ?_080                                   ; 1E69 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1E6B _ 80. 7D, FC, FA
        jnz     ?_079                                   ; 1E6F _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1E71 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1E74 _ C6. 40, 03, 01
?_079:  mov     eax, 0                                  ; 1E78 _ B8, 00000000
        jmp     ?_087                                   ; 1E7D _ E9, 0000010C

?_080:  mov     eax, dword [ebp+8H]                     ; 1E82 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E85 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1E89 _ 3C, 01
        jnz     ?_082                                   ; 1E8B _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1E8D _ 0F B6. 45, FC
        or      eax, 37H                                ; 1E91 _ 83. C8, 37
        cmp     al, 63                                  ; 1E94 _ 3C, 3F
        jnz     ?_081                                   ; 1E96 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1E98 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E9B _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1E9F _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1EA1 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1EA4 _ C6. 40, 03, 02
?_081:  mov     eax, 0                                  ; 1EA8 _ B8, 00000000
        jmp     ?_087                                   ; 1EAD _ E9, 000000DC

?_082:  mov     eax, dword [ebp+8H]                     ; 1EB2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1EB5 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1EB9 _ 3C, 02
        jnz     ?_083                                   ; 1EBB _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1EBD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1EC0 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1EC4 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1EC7 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1ECA _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1ECE _ B8, 00000000
        jmp     ?_087                                   ; 1ED3 _ E9, 000000B6

?_083:  mov     eax, dword [ebp+8H]                     ; 1ED8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1EDB _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1EDF _ 3C, 03
        jne     ?_086                                   ; 1EE1 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1EE7 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1EEA _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1EEE _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1EF1 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1EF4 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1EF8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1EFB _ 0F B6. 00
        movzx   eax, al                                 ; 1EFE _ 0F B6. C0
        and     eax, 07H                                ; 1F01 _ 83. E0, 07
        mov     edx, eax                                ; 1F04 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F06 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1F09 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1F0C _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1F0F _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1F13 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1F16 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1F19 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F1C _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1F1F _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1F23 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1F26 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F29 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1F2C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1F2F _ 0F B6. 00
        movzx   eax, al                                 ; 1F32 _ 0F B6. C0
        and     eax, 10H                                ; 1F35 _ 83. E0, 10
        test    eax, eax                                ; 1F38 _ 85. C0
        jz      ?_084                                   ; 1F3A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1F3C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1F3F _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1F42 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1F47 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F49 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1F4C _ 89. 50, 04
?_084:  mov     eax, dword [ebp+8H]                     ; 1F4F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1F52 _ 0F B6. 00
        movzx   eax, al                                 ; 1F55 _ 0F B6. C0
        and     eax, 20H                                ; 1F58 _ 83. E0, 20
        test    eax, eax                                ; 1F5B _ 85. C0
        jz      ?_085                                   ; 1F5D _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1F5F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1F62 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1F65 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1F6A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F6C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F6F _ 89. 50, 08
?_085:  mov     eax, dword [ebp+8H]                     ; 1F72 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1F75 _ 8B. 40, 08
        neg     eax                                     ; 1F78 _ F7. D8
        mov     edx, eax                                ; 1F7A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F7C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F7F _ 89. 50, 08
        mov     eax, 1                                  ; 1F82 _ B8, 00000001
        jmp     ?_087                                   ; 1F87 _ EB, 05

?_086:  mov     eax, 4294967295                         ; 1F89 _ B8, FFFFFFFF
?_087:  leave                                           ; 1F8E _ C9
        ret                                             ; 1F8F _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1F90 _ 55
        mov     ebp, esp                                ; 1F91 _ 89. E5
        sub     esp, 16                                 ; 1F93 _ 83. EC, 10
        movzx   eax, word [?_238]                       ; 1F96 _ 0F B7. 05, 00000008(d)
        cwde                                            ; 1F9D _ 98
        mov     dword [ebp-8H], eax                     ; 1F9E _ 89. 45, F8
        movzx   eax, word [?_239]                       ; 1FA1 _ 0F B7. 05, 0000000A(d)
        cwde                                            ; 1FA8 _ 98
        mov     dword [ebp-4H], eax                     ; 1FA9 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1FAC _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1FAF _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1FB2 _ A1, 00000110(d)
        add     eax, edx                                ; 1FB7 _ 01. D0
        mov     dword [mx], eax                         ; 1FB9 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 1FBE _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1FC1 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1FC4 _ A1, 00000114(d)
        add     eax, edx                                ; 1FC9 _ 01. D0
        mov     dword [my], eax                         ; 1FCB _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 1FD0 _ A1, 00000110(d)
        test    eax, eax                                ; 1FD5 _ 85. C0
        jns     ?_088                                   ; 1FD7 _ 79, 0A
        mov     dword [mx], 0                           ; 1FD9 _ C7. 05, 00000110(d), 00000000
?_088:  mov     eax, dword [my]                         ; 1FE3 _ A1, 00000114(d)
        test    eax, eax                                ; 1FE8 _ 85. C0
        jns     ?_089                                   ; 1FEA _ 79, 0A
        mov     dword [my], 0                           ; 1FEC _ C7. 05, 00000114(d), 00000000
?_089:  mov     eax, dword [ebp-8H]                     ; 1FF6 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1FF9 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1FFC _ A1, 00000110(d)
        cmp     edx, eax                                ; 2001 _ 39. C2
        jge     ?_090                                   ; 2003 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 2005 _ 8B. 45, F8
        sub     eax, 9                                  ; 2008 _ 83. E8, 09
        mov     dword [mx], eax                         ; 200B _ A3, 00000110(d)
?_090:  mov     eax, dword [ebp-4H]                     ; 2010 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 2013 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 2016 _ A1, 00000114(d)
        cmp     edx, eax                                ; 201B _ 39. C2
        jge     ?_091                                   ; 201D _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 201F _ 8B. 45, FC
        sub     eax, 1                                  ; 2022 _ 83. E8, 01
        mov     dword [my], eax                         ; 2025 _ A3, 00000114(d)
?_091:  nop                                             ; 202A _ 90
        leave                                           ; 202B _ C9
        ret                                             ; 202C _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 202D _ 55
        mov     ebp, esp                                ; 202E _ 89. E5
        sub     esp, 56                                 ; 2030 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 2033 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 203A _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 2041 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 2048 _ C7. 45, DC, 00000050
        push    100                                     ; 204F _ 6A, 64
        push    dword [ebp+1CH]                         ; 2051 _ FF. 75, 1C
        push    0                                       ; 2054 _ 6A, 00
        push    0                                       ; 2056 _ 6A, 00
        push    14                                      ; 2058 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 205A _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 205D _ FF. 75, 14
        call    boxfill8                                ; 2060 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2065 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 2068 _ 8B. 45, 20
        movsx   eax, al                                 ; 206B _ 0F BE. C0
        sub     esp, 8                                  ; 206E _ 83. EC, 08
        push    ?_230                                   ; 2071 _ 68, 0000004F(d)
        push    eax                                     ; 2076 _ 50
        push    dword [ebp-2CH]                         ; 2077 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 207A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 207D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2080 _ FF. 75, 08
        call    showString                              ; 2083 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2088 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 208B _ 8B. 45, 18
        sub     esp, 12                                 ; 208E _ 83. EC, 0C
        push    eax                                     ; 2091 _ 50
        call    intToHexStr                             ; 2092 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2097 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 209A _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 209D _ 8B. 45, 20
        movsx   eax, al                                 ; 20A0 _ 0F BE. C0
        sub     esp, 8                                  ; 20A3 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 20A6 _ FF. 75, E0
        push    eax                                     ; 20A9 _ 50
        push    dword [ebp-2CH]                         ; 20AA _ FF. 75, D4
        push    dword [ebp-28H]                         ; 20AD _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 20B0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20B3 _ FF. 75, 08
        call    showString                              ; 20B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20BB _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 20BE _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 20C2 _ 8B. 45, 20
        movsx   eax, al                                 ; 20C5 _ 0F BE. C0
        sub     esp, 8                                  ; 20C8 _ 83. EC, 08
        push    ?_231                                   ; 20CB _ 68, 00000059(d)
        push    eax                                     ; 20D0 _ 50
        push    dword [ebp-2CH]                         ; 20D1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 20D4 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 20D7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20DA _ FF. 75, 08
        call    showString                              ; 20DD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20E2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 20E5 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 20E8 _ 8B. 00
        sub     esp, 12                                 ; 20EA _ 83. EC, 0C
        push    eax                                     ; 20ED _ 50
        call    intToHexStr                             ; 20EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20F3 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 20F6 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 20F9 _ 8B. 45, 20
        movsx   eax, al                                 ; 20FC _ 0F BE. C0
        sub     esp, 8                                  ; 20FF _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 2102 _ FF. 75, E4
        push    eax                                     ; 2105 _ 50
        push    dword [ebp-2CH]                         ; 2106 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2109 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 210C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 210F _ FF. 75, 08
        call    showString                              ; 2112 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2117 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 211A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 211E _ 8B. 45, 20
        movsx   eax, al                                 ; 2121 _ 0F BE. C0
        sub     esp, 8                                  ; 2124 _ 83. EC, 08
        push    ?_232                                   ; 2127 _ 68, 00000067(d)
        push    eax                                     ; 212C _ 50
        push    dword [ebp-2CH]                         ; 212D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2130 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2133 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2136 _ FF. 75, 08
        call    showString                              ; 2139 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 213E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2141 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2144 _ 8B. 40, 04
        sub     esp, 12                                 ; 2147 _ 83. EC, 0C
        push    eax                                     ; 214A _ 50
        call    intToHexStr                             ; 214B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2150 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 2153 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 2156 _ 8B. 45, 20
        movsx   eax, al                                 ; 2159 _ 0F BE. C0
        sub     esp, 8                                  ; 215C _ 83. EC, 08
        push    dword [ebp-18H]                         ; 215F _ FF. 75, E8
        push    eax                                     ; 2162 _ 50
        push    dword [ebp-2CH]                         ; 2163 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2166 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2169 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 216C _ FF. 75, 08
        call    showString                              ; 216F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2174 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2177 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 217B _ 8B. 45, 20
        movsx   eax, al                                 ; 217E _ 0F BE. C0
        sub     esp, 8                                  ; 2181 _ 83. EC, 08
        push    ?_233                                   ; 2184 _ 68, 00000076(d)
        push    eax                                     ; 2189 _ 50
        push    dword [ebp-2CH]                         ; 218A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 218D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2190 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2193 _ FF. 75, 08
        call    showString                              ; 2196 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 219B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 219E _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 21A1 _ 8B. 40, 08
        sub     esp, 12                                 ; 21A4 _ 83. EC, 0C
        push    eax                                     ; 21A7 _ 50
        call    intToHexStr                             ; 21A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21AD _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 21B0 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 21B3 _ 8B. 45, 20
        movsx   eax, al                                 ; 21B6 _ 0F BE. C0
        sub     esp, 8                                  ; 21B9 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 21BC _ FF. 75, EC
        push    eax                                     ; 21BF _ 50
        push    dword [ebp-2CH]                         ; 21C0 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21C3 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 21C6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21C9 _ FF. 75, 08
        call    showString                              ; 21CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21D1 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 21D4 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 21D8 _ 8B. 45, 20
        movsx   eax, al                                 ; 21DB _ 0F BE. C0
        sub     esp, 8                                  ; 21DE _ 83. EC, 08
        push    ?_234                                   ; 21E1 _ 68, 00000082(d)
        push    eax                                     ; 21E6 _ 50
        push    dword [ebp-2CH]                         ; 21E7 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 21EA _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 21ED _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21F0 _ FF. 75, 08
        call    showString                              ; 21F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21F8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 21FB _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 21FE _ 8B. 40, 0C
        sub     esp, 12                                 ; 2201 _ 83. EC, 0C
        push    eax                                     ; 2204 _ 50
        call    intToHexStr                             ; 2205 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 220A _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 220D _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 2210 _ 8B. 45, 20
        movsx   eax, al                                 ; 2213 _ 0F BE. C0
        sub     esp, 8                                  ; 2216 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 2219 _ FF. 75, F0
        push    eax                                     ; 221C _ 50
        push    dword [ebp-2CH]                         ; 221D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2220 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2223 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2226 _ FF. 75, 08
        call    showString                              ; 2229 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 222E _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2231 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2235 _ 8B. 45, 20
        movsx   eax, al                                 ; 2238 _ 0F BE. C0
        sub     esp, 8                                  ; 223B _ 83. EC, 08
        push    ?_235                                   ; 223E _ 68, 0000008F(d)
        push    eax                                     ; 2243 _ 50
        push    dword [ebp-2CH]                         ; 2244 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2247 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 224A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 224D _ FF. 75, 08
        call    showString                              ; 2250 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2255 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2258 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 225B _ 8B. 40, 10
        sub     esp, 12                                 ; 225E _ 83. EC, 0C
        push    eax                                     ; 2261 _ 50
        call    intToHexStr                             ; 2262 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2267 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 226A _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 226D _ 8B. 45, 20
        movsx   eax, al                                 ; 2270 _ 0F BE. C0
        sub     esp, 8                                  ; 2273 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 2276 _ FF. 75, F4
        push    eax                                     ; 2279 _ 50
        push    dword [ebp-2CH]                         ; 227A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 227D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2280 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2283 _ FF. 75, 08
        call    showString                              ; 2286 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 228B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 228E _ 83. 45, D4, 10
        nop                                             ; 2292 _ 90
        leave                                           ; 2293 _ C9
        ret                                             ; 2294 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 2295 _ 55
        mov     ebp, esp                                ; 2296 _ 89. E5
        sub     esp, 24                                 ; 2298 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 229B _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 229E _ 0F AF. 45, 14
        mov     edx, eax                                ; 22A2 _ 89. C2
        mov     eax, dword [memman]                     ; 22A4 _ A1, 00000008(d)
        sub     esp, 8                                  ; 22A9 _ 83. EC, 08
        push    edx                                     ; 22AC _ 52
        push    eax                                     ; 22AD _ 50
        call    memman_alloc_4K                         ; 22AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22B3 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 22B6 _ 89. 45, F0
        sub     esp, 12                                 ; 22B9 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 22BC _ FF. 75, 08
        call    sheet_alloc                             ; 22BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22C4 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 22C7 _ 89. 45, F4
        sub     esp, 12                                 ; 22CA _ 83. EC, 0C
        push    99                                      ; 22CD _ 6A, 63
        push    dword [ebp+14H]                         ; 22CF _ FF. 75, 14
        push    dword [ebp+10H]                         ; 22D2 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 22D5 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 22D8 _ FF. 75, F4
        call    sheet_setbuf                            ; 22DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22E0 _ 83. C4, 20
        push    1                                       ; 22E3 _ 6A, 01
        push    dword [ebp+0CH]                         ; 22E5 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 22E8 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 22EB _ FF. 75, 08
        call    make_window8                            ; 22EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22F3 _ 83. C4, 10
        sub     esp, 8                                  ; 22F6 _ 83. EC, 08
        push    7                                       ; 22F9 _ 6A, 07
        push    16                                      ; 22FB _ 6A, 10
        push    150                                     ; 22FD _ 68, 00000096
        push    42                                      ; 2302 _ 6A, 2A
        push    10                                      ; 2304 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 2306 _ FF. 75, F4
        call    make_textbox8                           ; 2309 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 230E _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 2311 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 2314 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2317 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 231A _ FF. 75, 08
        call    sheet_slide                             ; 231D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2322 _ 83. C4, 10
        sub     esp, 4                                  ; 2325 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 2328 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 232B _ FF. 75, F4
        push    dword [ebp+8H]                          ; 232E _ FF. 75, 08
        call    sheet_level_updown                      ; 2331 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2336 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2339 _ 8B. 45, F4
        leave                                           ; 233C _ C9
        ret                                             ; 233D _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 233E _ 55
        mov     ebp, esp                                ; 233F _ 89. E5
        sub     esp, 24                                 ; 2341 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2344 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2347 _ 0F AF. 45, 20
        mov     edx, eax                                ; 234B _ 89. C2
        mov     eax, dword [memman]                     ; 234D _ A1, 00000008(d)
        sub     esp, 8                                  ; 2352 _ 83. EC, 08
        push    edx                                     ; 2355 _ 52
        push    eax                                     ; 2356 _ 50
        call    memman_alloc_4K                         ; 2357 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 235C _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 235F _ 89. 45, F0
        sub     esp, 12                                 ; 2362 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2365 _ FF. 75, 08
        call    sheet_alloc                             ; 2368 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 236D _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2370 _ 89. 45, F4
        sub     esp, 12                                 ; 2373 _ 83. EC, 0C
        push    99                                      ; 2376 _ 6A, 63
        push    dword [ebp+20H]                         ; 2378 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 237B _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 237E _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2381 _ FF. 75, F4
        call    sheet_setbuf                            ; 2384 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2389 _ 83. C4, 20
        push    0                                       ; 238C _ 6A, 00
        push    dword [ebp+18H]                         ; 238E _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2391 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2394 _ FF. 75, 08
        call    make_window8                            ; 2397 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 239C _ 83. C4, 10
        call    task_alloc                              ; 239F _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 23A4 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 23A7 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 23AA _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 23B1 _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 23B4 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 23BB _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 23C0 _ F7. D8
        add     eax, task_b_main                        ; 23C2 _ 05, 00000000(d)
        mov     edx, eax                                ; 23C7 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 23C9 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 23CC _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 23CF _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 23D2 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 23D9 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 23DC _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 23E3 _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 23E6 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 23ED _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 23F0 _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 23F7 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 23FA _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2401 _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 2404 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 240B _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 240E _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 2411 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 2414 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 2417 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 241A _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 241D _ 8B. 40, 4C
        add     eax, 4                                  ; 2420 _ 83. C0, 04
        mov     edx, eax                                ; 2423 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2425 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2428 _ 89. 02
        sub     esp, 4                                  ; 242A _ 83. EC, 04
        push    dword [ebp+14H]                         ; 242D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2430 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2433 _ FF. 75, 0C
        call    task_run                                ; 2436 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 243B _ 83. C4, 10
        push    dword [ebp+28H]                         ; 243E _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2441 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2444 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2447 _ FF. 75, 08
        call    sheet_slide                             ; 244A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 244F _ 83. C4, 10
        sub     esp, 4                                  ; 2452 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2455 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2458 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 245B _ FF. 75, 08
        call    sheet_level_updown                      ; 245E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2463 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2466 _ 8B. 45, F4
        leave                                           ; 2469 _ C9
        ret                                             ; 246A _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 246B _ 55
        mov     ebp, esp                                ; 246C _ 89. E5
        push    ebx                                     ; 246E _ 53
        sub     esp, 36                                 ; 246F _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2472 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2475 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2478 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 247B _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 247E _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2481 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2484 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2487 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 248A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 248D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2490 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2493 _ 8B. 00
        push    0                                       ; 2495 _ 6A, 00
        push    edx                                     ; 2497 _ 52
        push    0                                       ; 2498 _ 6A, 00
        push    0                                       ; 249A _ 6A, 00
        push    8                                       ; 249C _ 6A, 08
        push    dword [ebp-10H]                         ; 249E _ FF. 75, F0
        push    eax                                     ; 24A1 _ 50
        call    boxfill8                                ; 24A2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24A7 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 24AA _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 24AD _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 24B0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24B3 _ 8B. 00
        push    1                                       ; 24B5 _ 6A, 01
        push    edx                                     ; 24B7 _ 52
        push    1                                       ; 24B8 _ 6A, 01
        push    1                                       ; 24BA _ 6A, 01
        push    7                                       ; 24BC _ 6A, 07
        push    dword [ebp-10H]                         ; 24BE _ FF. 75, F0
        push    eax                                     ; 24C1 _ 50
        call    boxfill8                                ; 24C2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24C7 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24CA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 24CD _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 24D0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24D3 _ 8B. 00
        push    edx                                     ; 24D5 _ 52
        push    0                                       ; 24D6 _ 6A, 00
        push    0                                       ; 24D8 _ 6A, 00
        push    0                                       ; 24DA _ 6A, 00
        push    8                                       ; 24DC _ 6A, 08
        push    dword [ebp-10H]                         ; 24DE _ FF. 75, F0
        push    eax                                     ; 24E1 _ 50
        call    boxfill8                                ; 24E2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24E7 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24EA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 24ED _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 24F0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24F3 _ 8B. 00
        push    edx                                     ; 24F5 _ 52
        push    1                                       ; 24F6 _ 6A, 01
        push    1                                       ; 24F8 _ 6A, 01
        push    1                                       ; 24FA _ 6A, 01
        push    7                                       ; 24FC _ 6A, 07
        push    dword [ebp-10H]                         ; 24FE _ FF. 75, F0
        push    eax                                     ; 2501 _ 50
        call    boxfill8                                ; 2502 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2507 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 250A _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 250D _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2510 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2513 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2516 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2519 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 251C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 251F _ 8B. 00
        push    ebx                                     ; 2521 _ 53
        push    ecx                                     ; 2522 _ 51
        push    1                                       ; 2523 _ 6A, 01
        push    edx                                     ; 2525 _ 52
        push    15                                      ; 2526 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2528 _ FF. 75, F0
        push    eax                                     ; 252B _ 50
        call    boxfill8                                ; 252C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2531 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2534 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2537 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 253A _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 253D _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2540 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2543 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2546 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2549 _ 8B. 00
        push    ebx                                     ; 254B _ 53
        push    ecx                                     ; 254C _ 51
        push    0                                       ; 254D _ 6A, 00
        push    edx                                     ; 254F _ 52
        push    0                                       ; 2550 _ 6A, 00
        push    dword [ebp-10H]                         ; 2552 _ FF. 75, F0
        push    eax                                     ; 2555 _ 50
        call    boxfill8                                ; 2556 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 255B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 255E _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2561 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2564 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2567 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 256A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 256D _ 8B. 00
        push    ecx                                     ; 256F _ 51
        push    edx                                     ; 2570 _ 52
        push    2                                       ; 2571 _ 6A, 02
        push    2                                       ; 2573 _ 6A, 02
        push    8                                       ; 2575 _ 6A, 08
        push    dword [ebp-10H]                         ; 2577 _ FF. 75, F0
        push    eax                                     ; 257A _ 50
        call    boxfill8                                ; 257B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2580 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2583 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2586 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2589 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 258C _ 8B. 00
        push    20                                      ; 258E _ 6A, 14
        push    edx                                     ; 2590 _ 52
        push    3                                       ; 2591 _ 6A, 03
        push    3                                       ; 2593 _ 6A, 03
        push    12                                      ; 2595 _ 6A, 0C
        push    dword [ebp-10H]                         ; 2597 _ FF. 75, F0
        push    eax                                     ; 259A _ 50
        call    boxfill8                                ; 259B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25A0 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25A3 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 25A6 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 25A9 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 25AC _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 25AF _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 25B2 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 25B5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25B8 _ 8B. 00
        push    ebx                                     ; 25BA _ 53
        push    ecx                                     ; 25BB _ 51
        push    edx                                     ; 25BC _ 52
        push    1                                       ; 25BD _ 6A, 01
        push    15                                      ; 25BF _ 6A, 0F
        push    dword [ebp-10H]                         ; 25C1 _ FF. 75, F0
        push    eax                                     ; 25C4 _ 50
        call    boxfill8                                ; 25C5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25CA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25CD _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 25D0 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 25D3 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 25D6 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 25D9 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 25DC _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 25DF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25E2 _ 8B. 00
        push    ebx                                     ; 25E4 _ 53
        push    ecx                                     ; 25E5 _ 51
        push    edx                                     ; 25E6 _ 52
        push    0                                       ; 25E7 _ 6A, 00
        push    0                                       ; 25E9 _ 6A, 00
        push    dword [ebp-10H]                         ; 25EB _ FF. 75, F0
        push    eax                                     ; 25EE _ 50
        call    boxfill8                                ; 25EF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25F4 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 25F7 _ 0F BE. 45, E4
        push    eax                                     ; 25FB _ 50
        push    dword [ebp+10H]                         ; 25FC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 25FF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2602 _ FF. 75, 08
        call    make_wtitle8                            ; 2605 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 260A _ 83. C4, 10
        nop                                             ; 260D _ 90
        mov     ebx, dword [ebp-4H]                     ; 260E _ 8B. 5D, FC
        leave                                           ; 2611 _ C9
        ret                                             ; 2612 _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 2613 _ 55
        mov     ebp, esp                                ; 2614 _ 89. E5
        push    ebx                                     ; 2616 _ 53
        sub     esp, 36                                 ; 2617 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 261A _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 261D _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2620 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2623 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2626 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 2629 _ 80. 7D, E4, 00
        jz      ?_092                                   ; 262D _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 262F _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 2633 _ C6. 45, EB, 0C
        jmp     ?_093                                   ; 2637 _ EB, 0E

?_092:  cmp     byte [ebp-1CH], 0                       ; 2639 _ 80. 7D, E4, 00
        jnz     ?_093                                   ; 263D _ 75, 08
        mov     byte [ebp-16H], 8                       ; 263F _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2643 _ C6. 45, EB, 0F
?_093:  mov     eax, dword [ebp-0CH]                    ; 2647 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 264A _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 264D _ 0F B6. 45, EB
        movzx   edx, al                                 ; 2651 _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2654 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2657 _ 8B. 00
        push    20                                      ; 2659 _ 6A, 14
        push    ecx                                     ; 265B _ 51
        push    3                                       ; 265C _ 6A, 03
        push    3                                       ; 265E _ 6A, 03
        push    edx                                     ; 2660 _ 52
        push    dword [ebp-0CH]                         ; 2661 _ FF. 75, F4
        push    eax                                     ; 2664 _ 50
        call    boxfill8                                ; 2665 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 266A _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 266D _ 0F BE. 45, EA
        sub     esp, 8                                  ; 2671 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2674 _ FF. 75, 10
        push    eax                                     ; 2677 _ 50
        push    4                                       ; 2678 _ 6A, 04
        push    8                                       ; 267A _ 6A, 08
        push    dword [ebp+0CH]                         ; 267C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 267F _ FF. 75, 08
        call    showString                              ; 2682 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2687 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 268A _ C7. 45, EC, 00000000
        jmp     ?_100                                   ; 2691 _ EB, 75

?_094:  mov     dword [ebp-10H], 0                      ; 2693 _ C7. 45, F0, 00000000
        jmp     ?_099                                   ; 269A _ EB, 62

?_095:  mov     eax, dword [ebp-14H]                    ; 269C _ 8B. 45, EC
        shl     eax, 4                                  ; 269F _ C1. E0, 04
        mov     edx, eax                                ; 26A2 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 26A4 _ 8B. 45, F0
        add     eax, edx                                ; 26A7 _ 01. D0
        add     eax, closebtn.2564                      ; 26A9 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 26AE _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 26B1 _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 26B4 _ 80. 7D, E9, 40
        jnz     ?_096                                   ; 26B8 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 26BA _ C6. 45, E9, 00
        jmp     ?_098                                   ; 26BE _ EB, 16

?_096:  cmp     byte [ebp-17H], 36                      ; 26C0 _ 80. 7D, E9, 24
        jnz     ?_097                                   ; 26C4 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 26C6 _ C6. 45, E9, 0F
        jmp     ?_098                                   ; 26CA _ EB, 0A

?_097:  cmp     byte [ebp-17H], 81                      ; 26CC _ 80. 7D, E9, 51
        jnz     ?_098                                   ; 26D0 _ 75, 04
        mov     byte [ebp-17H], 8                       ; 26D2 _ C6. 45, E9, 08
?_098:  mov     eax, dword [ebp+0CH]                    ; 26D6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 26D9 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 26DB _ 8B. 55, EC
        add     edx, 5                                  ; 26DE _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 26E1 _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 26E5 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 26E8 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 26EB _ 8B. 4D, F0
        add     ecx, ebx                                ; 26EE _ 01. D9
        add     edx, ecx                                ; 26F0 _ 01. CA
        add     edx, eax                                ; 26F2 _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 26F4 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 26F8 _ 88. 02
        add     dword [ebp-10H], 1                      ; 26FA _ 83. 45, F0, 01
?_099:  cmp     dword [ebp-10H], 15                     ; 26FE _ 83. 7D, F0, 0F
        jle     ?_095                                   ; 2702 _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2704 _ 83. 45, EC, 01
?_100:  cmp     dword [ebp-14H], 13                     ; 2708 _ 83. 7D, EC, 0D
        jle     ?_094                                   ; 270C _ 7E, 85
        nop                                             ; 270E _ 90
        mov     ebx, dword [ebp-4H]                     ; 270F _ 8B. 5D, FC
        leave                                           ; 2712 _ C9
        ret                                             ; 2713 _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2714 _ 55
        mov     ebp, esp                                ; 2715 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2717 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 271A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2720 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2723 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 272A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 272D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2734 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2737 _ C7. 40, 0C, 00000000
        nop                                             ; 273E _ 90
        pop     ebp                                     ; 273F _ 5D
        ret                                             ; 2740 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2741 _ 55
        mov     ebp, esp                                ; 2742 _ 89. E5
        sub     esp, 16                                 ; 2744 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2747 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 274E _ C7. 45, FC, 00000000
        jmp     ?_102                                   ; 2755 _ EB, 14

?_101:  mov     eax, dword [ebp+8H]                     ; 2757 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 275A _ 8B. 55, FC
        add     edx, 2                                  ; 275D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2760 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2764 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2767 _ 83. 45, FC, 01
?_102:  mov     eax, dword [ebp+8H]                     ; 276B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 276E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2770 _ 39. 45, FC
        jl      ?_101                                   ; 2773 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2775 _ 8B. 45, F8
        leave                                           ; 2778 _ C9
        ret                                             ; 2779 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 277A _ 55
        mov     ebp, esp                                ; 277B _ 89. E5
        sub     esp, 16                                 ; 277D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2780 _ C7. 45, F8, 00000000
        jmp     ?_106                                   ; 2787 _ E9, 00000085

?_103:  mov     eax, dword [ebp+8H]                     ; 278C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 278F _ 8B. 55, F8
        add     edx, 2                                  ; 2792 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2795 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2799 _ 39. 45, 0C
        ja      ?_105                                   ; 279C _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 279E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27A1 _ 8B. 55, F8
        add     edx, 2                                  ; 27A4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 27A7 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 27AA _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 27AD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27B0 _ 8B. 55, F8
        add     edx, 2                                  ; 27B3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 27B6 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 27B9 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 27BC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 27BF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27C2 _ 8B. 55, F8
        add     edx, 2                                  ; 27C5 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 27C8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 27CB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27CE _ 8B. 55, F8
        add     edx, 2                                  ; 27D1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 27D4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 27D8 _ 2B. 45, 0C
        mov     edx, eax                                ; 27DB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27DD _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 27E0 _ 8B. 4D, F8
        add     ecx, 2                                  ; 27E3 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 27E6 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 27EA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27ED _ 8B. 55, F8
        add     edx, 2                                  ; 27F0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 27F3 _ 8B. 44 D0, 04
        test    eax, eax                                ; 27F7 _ 85. C0
        jnz     ?_104                                   ; 27F9 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 27FB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27FE _ 8B. 00
        lea     edx, [eax-1H]                           ; 2800 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2803 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2806 _ 89. 10
?_104:  mov     eax, dword [ebp-4H]                     ; 2808 _ 8B. 45, FC
        jmp     ?_107                                   ; 280B _ EB, 17

?_105:  add     dword [ebp-8H], 1                       ; 280D _ 83. 45, F8, 01
?_106:  mov     eax, dword [ebp+8H]                     ; 2811 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2814 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2816 _ 39. 45, F8
        jl      ?_103                                   ; 2819 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 281F _ B8, 00000000
?_107:  leave                                           ; 2824 _ C9
        ret                                             ; 2825 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2826 _ 55
        mov     ebp, esp                                ; 2827 _ 89. E5
        sub     esp, 16                                 ; 2829 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 282C _ 8B. 45, 0C
        add     eax, 4095                               ; 282F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2834 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2839 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 283C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 283F _ FF. 75, 08
        call    memman_alloc_FF                         ; 2842 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2847 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 284A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 284D _ 8B. 45, FC
        leave                                           ; 2850 _ C9
        ret                                             ; 2851 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2852 _ 55
        mov     ebp, esp                                ; 2853 _ 89. E5
        push    ebx                                     ; 2855 _ 53
        sub     esp, 16                                 ; 2856 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2859 _ C7. 45, F4, 00000000
        jmp     ?_109                                   ; 2860 _ EB, 15

?_108:  mov     eax, dword [ebp+8H]                     ; 2862 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2865 _ 8B. 55, F4
        add     edx, 2                                  ; 2868 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 286B _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 286E _ 39. 45, 0C
        jc      ?_110                                   ; 2871 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2873 _ 83. 45, F4, 01
?_109:  mov     eax, dword [ebp+8H]                     ; 2877 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 287A _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 287C _ 39. 45, F4
        jl      ?_108                                   ; 287F _ 7C, E1
        jmp     ?_111                                   ; 2881 _ EB, 01

?_110:  nop                                             ; 2883 _ 90
?_111:  cmp     dword [ebp-0CH], 0                      ; 2884 _ 83. 7D, F4, 00
        jle     ?_113                                   ; 2888 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 288E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2891 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2894 _ 8B. 45, 08
        add     edx, 2                                  ; 2897 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 289A _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 289D _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 28A0 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 28A3 _ 8B. 45, 08
        add     ecx, 2                                  ; 28A6 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 28A9 _ 8B. 44 C8, 04
        add     eax, edx                                ; 28AD _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 28AF _ 39. 45, 0C
        jne     ?_113                                   ; 28B2 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 28B8 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 28BB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28BE _ 8B. 45, 08
        add     edx, 2                                  ; 28C1 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 28C4 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 28C8 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 28CB _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 28CE _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 28D1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28D4 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 28D7 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 28DA _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 28DE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28E1 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 28E3 _ 39. 45, F4
        jge     ?_112                                   ; 28E6 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 28E8 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 28EB _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 28EE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28F1 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28F4 _ 8B. 55, F4
        add     edx, 2                                  ; 28F7 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 28FA _ 8B. 04 D0
        cmp     ecx, eax                                ; 28FD _ 39. C1
        jnz     ?_112                                   ; 28FF _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2901 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2904 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2907 _ 8B. 45, 08
        add     edx, 2                                  ; 290A _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 290D _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2911 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2914 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2917 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 291A _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 291E _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2921 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2924 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2927 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 292A _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 292D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2931 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2934 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2936 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2939 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 293C _ 89. 10
?_112:  mov     eax, 0                                  ; 293E _ B8, 00000000
        jmp     ?_119                                   ; 2943 _ E9, 0000011C

?_113:  mov     eax, dword [ebp+8H]                     ; 2948 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 294B _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 294D _ 39. 45, F4
        jge     ?_114                                   ; 2950 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2952 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2955 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2958 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 295B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 295E _ 8B. 55, F4
        add     edx, 2                                  ; 2961 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2964 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2967 _ 39. C1
        jnz     ?_114                                   ; 2969 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 296B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 296E _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2971 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2974 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2977 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 297A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 297D _ 8B. 55, F4
        add     edx, 2                                  ; 2980 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2983 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2987 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 298A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 298D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2990 _ 8B. 55, F4
        add     edx, 2                                  ; 2993 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2996 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 299A _ B8, 00000000
        jmp     ?_119                                   ; 299F _ E9, 000000C0

?_114:  mov     eax, dword [ebp+8H]                     ; 29A4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29A7 _ 8B. 00
        cmp     eax, 4095                               ; 29A9 _ 3D, 00000FFF
        jg      ?_118                                   ; 29AE _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 29B4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29B7 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 29B9 _ 89. 45, F8
        jmp     ?_116                                   ; 29BC _ EB, 28

?_115:  mov     eax, dword [ebp-8H]                     ; 29BE _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 29C1 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 29C4 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 29C7 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 29CA _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 29CD _ 8B. 45, 08
        add     edx, 2                                  ; 29D0 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 29D3 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 29D6 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 29D8 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 29DB _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 29DE _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 29E2 _ 83. 6D, F8, 01
?_116:  mov     eax, dword [ebp-8H]                     ; 29E6 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 29E9 _ 3B. 45, F4
        jg      ?_115                                   ; 29EC _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 29EE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29F1 _ 8B. 00
        lea     edx, [eax+1H]                           ; 29F3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 29F6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 29F9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 29FB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 29FE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2A01 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A04 _ 8B. 00
        cmp     edx, eax                                ; 2A06 _ 39. C2
        jge     ?_117                                   ; 2A08 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2A0A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2A0D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2A0F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2A12 _ 89. 50, 04
?_117:  mov     eax, dword [ebp+8H]                     ; 2A15 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A18 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2A1B _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2A1E _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2A21 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2A24 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A27 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2A2A _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2A2D _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2A30 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2A34 _ B8, 00000000
        jmp     ?_119                                   ; 2A39 _ EB, 29

?_118:  mov     eax, dword [ebp+8H]                     ; 2A3B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A3E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2A41 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A44 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2A47 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2A4A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A4D _ 8B. 40, 08
        mov     edx, eax                                ; 2A50 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2A52 _ 8B. 45, 10
        add     eax, edx                                ; 2A55 _ 01. D0
        mov     edx, eax                                ; 2A57 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2A59 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2A5C _ 89. 50, 08
        mov     eax, 4294967295                         ; 2A5F _ B8, FFFFFFFF
?_119:  add     esp, 16                                 ; 2A64 _ 83. C4, 10
        pop     ebx                                     ; 2A67 _ 5B
        pop     ebp                                     ; 2A68 _ 5D
        ret                                             ; 2A69 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2A6A _ 55
        mov     ebp, esp                                ; 2A6B _ 89. E5
        sub     esp, 16                                 ; 2A6D _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2A70 _ 8B. 45, 10
        add     eax, 4095                               ; 2A73 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2A78 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2A7D _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2A80 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2A83 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2A86 _ FF. 75, 08
        call    memman_free                             ; 2A89 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2A8E _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2A91 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2A94 _ 8B. 45, FC
        leave                                           ; 2A97 _ C9
        ret                                             ; 2A98 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2A99 _ 55
        mov     ebp, esp                                ; 2A9A _ 89. E5
        sub     esp, 24                                 ; 2A9C _ 83. EC, 18
        sub     esp, 8                                  ; 2A9F _ 83. EC, 08
        push    9232                                    ; 2AA2 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2AA7 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2AAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2AAF _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2AB2 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2AB5 _ 83. 7D, F4, 00
        jnz     ?_120                                   ; 2AB9 _ 75, 0A
        mov     eax, 0                                  ; 2ABB _ B8, 00000000
        jmp     ?_124                                   ; 2AC0 _ E9, 0000009A

?_120:  mov     eax, dword [ebp+10H]                    ; 2AC5 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2AC8 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2ACC _ 83. EC, 08
        push    eax                                     ; 2ACF _ 50
        push    dword [ebp+8H]                          ; 2AD0 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2AD3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2AD8 _ 83. C4, 10
        mov     edx, eax                                ; 2ADB _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2ADD _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2AE0 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2AE3 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2AE6 _ 8B. 40, 04
        test    eax, eax                                ; 2AE9 _ 85. C0
        jnz     ?_121                                   ; 2AEB _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2AED _ 8B. 45, F4
        sub     esp, 4                                  ; 2AF0 _ 83. EC, 04
        push    9232                                    ; 2AF3 _ 68, 00002410
        push    eax                                     ; 2AF8 _ 50
        push    dword [ebp+8H]                          ; 2AF9 _ FF. 75, 08
        call    memman_free_4K                          ; 2AFC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B01 _ 83. C4, 10
        mov     eax, 0                                  ; 2B04 _ B8, 00000000
        jmp     ?_124                                   ; 2B09 _ EB, 54

?_121:  mov     eax, dword [ebp-0CH]                    ; 2B0B _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2B0E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2B11 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2B13 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2B16 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2B19 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B1C _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2B1F _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2B22 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2B25 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2B28 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2B2F _ C7. 45, F0, 00000000
        jmp     ?_123                                   ; 2B36 _ EB, 1B

?_122:  mov     eax, dword [ebp-0CH]                    ; 2B38 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2B3B _ 8B. 55, F0
        add     edx, 33                                 ; 2B3E _ 83. C2, 21
        shl     edx, 5                                  ; 2B41 _ C1. E2, 05
        add     eax, edx                                ; 2B44 _ 01. D0
        add     eax, 16                                 ; 2B46 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2B49 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2B4F _ 83. 45, F0, 01
?_123:  cmp     dword [ebp-10H], 255                    ; 2B53 _ 81. 7D, F0, 000000FF
        jle     ?_122                                   ; 2B5A _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2B5C _ 8B. 45, F4
?_124:  leave                                           ; 2B5F _ C9
        ret                                             ; 2B60 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2B61 _ 55
        mov     ebp, esp                                ; 2B62 _ 89. E5
        sub     esp, 16                                 ; 2B64 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2B67 _ C7. 45, F8, 00000000
        jmp     ?_127                                   ; 2B6E _ EB, 4B

?_125:  mov     eax, dword [ebp+8H]                     ; 2B70 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B73 _ 8B. 55, F8
        add     edx, 33                                 ; 2B76 _ 83. C2, 21
        shl     edx, 5                                  ; 2B79 _ C1. E2, 05
        add     eax, edx                                ; 2B7C _ 01. D0
        add     eax, 16                                 ; 2B7E _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2B81 _ 8B. 00
        test    eax, eax                                ; 2B83 _ 85. C0
        jnz     ?_126                                   ; 2B85 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2B87 _ 8B. 45, F8
        shl     eax, 5                                  ; 2B8A _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2B8D _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2B93 _ 8B. 45, 08
        add     eax, edx                                ; 2B96 _ 01. D0
        add     eax, 4                                  ; 2B98 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2B9B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2B9E _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2BA1 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2BA8 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2BAB _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2BB2 _ 8B. 45, FC
        jmp     ?_128                                   ; 2BB5 _ EB, 12

?_126:  add     dword [ebp-8H], 1                       ; 2BB7 _ 83. 45, F8, 01
?_127:  cmp     dword [ebp-8H], 255                     ; 2BBB _ 81. 7D, F8, 000000FF
        jle     ?_125                                   ; 2BC2 _ 7E, AC
        mov     eax, 0                                  ; 2BC4 _ B8, 00000000
?_128:  leave                                           ; 2BC9 _ C9
        ret                                             ; 2BCA _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2BCB _ 55
        mov     ebp, esp                                ; 2BCC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2BCE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2BD1 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2BD4 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2BD6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2BD9 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2BDC _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2BDF _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2BE2 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2BE5 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2BE8 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2BEB _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2BEE _ 89. 50, 14
        nop                                             ; 2BF1 _ 90
        pop     ebp                                     ; 2BF2 _ 5D
        ret                                             ; 2BF3 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2BF4 _ 55
        mov     ebp, esp                                ; 2BF5 _ 89. E5
        push    esi                                     ; 2BF7 _ 56
        push    ebx                                     ; 2BF8 _ 53
        sub     esp, 32                                 ; 2BF9 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2BFC _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BFF _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2C02 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2C05 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C08 _ 8B. 40, 10
        add     eax, 1                                  ; 2C0B _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2C0E _ 39. 45, 10
        jle     ?_129                                   ; 2C11 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2C13 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C16 _ 8B. 40, 10
        add     eax, 1                                  ; 2C19 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2C1C _ 89. 45, 10
?_129:  cmp     dword [ebp+10H], -1                     ; 2C1F _ 83. 7D, 10, FF
        jge     ?_130                                   ; 2C23 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2C25 _ C7. 45, 10, FFFFFFFF
?_130:  mov     eax, dword [ebp+0CH]                    ; 2C2C _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2C2F _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2C32 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2C35 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2C38 _ 3B. 45, 10
        jle     ?_137                                   ; 2C3B _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2C41 _ 83. 7D, 10, 00
        js      ?_133                                   ; 2C45 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2C4B _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2C4E _ 89. 45, E4
        jmp     ?_132                                   ; 2C51 _ EB, 34

?_131:  mov     eax, dword [ebp-1CH]                    ; 2C53 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2C56 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C59 _ 8B. 45, 08
        add     edx, 4                                  ; 2C5C _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2C5F _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C63 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2C66 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2C69 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2C6C _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2C70 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2C73 _ 8B. 55, E4
        add     edx, 4                                  ; 2C76 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C79 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2C7D _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2C80 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2C83 _ 83. 6D, E4, 01
?_132:  mov     eax, dword [ebp-1CH]                    ; 2C87 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2C8A _ 3B. 45, 10
        jg      ?_131                                   ; 2C8D _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2C8F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C92 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2C95 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2C98 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2C9B _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2C9F _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2CA2 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2CA5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CA8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CAB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CAE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CB1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CB4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CB7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CBA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CBD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2CC0 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2CC3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CC6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CC9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2CCC _ 8B. 40, 0C
        sub     esp, 8                                  ; 2CCF _ 83. EC, 08
        push    esi                                     ; 2CD2 _ 56
        push    ebx                                     ; 2CD3 _ 53
        push    ecx                                     ; 2CD4 _ 51
        push    edx                                     ; 2CD5 _ 52
        push    eax                                     ; 2CD6 _ 50
        push    dword [ebp+8H]                          ; 2CD7 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2CDA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2CDF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2CE2 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2CE5 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2CE8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CEB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CEE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CF1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CF4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CF7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CFA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CFD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D00 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D03 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D06 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D09 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D0C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D0F _ 8B. 40, 0C
        sub     esp, 4                                  ; 2D12 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2D15 _ FF. 75, F4
        push    esi                                     ; 2D18 _ 56
        push    ebx                                     ; 2D19 _ 53
        push    ecx                                     ; 2D1A _ 51
        push    edx                                     ; 2D1B _ 52
        push    eax                                     ; 2D1C _ 50
        push    dword [ebp+8H]                          ; 2D1D _ FF. 75, 08
        call    sheet_refresh_new                       ; 2D20 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D25 _ 83. C4, 20
        jmp     ?_144                                   ; 2D28 _ E9, 00000244

?_133:  mov     eax, dword [ebp+8H]                     ; 2D2D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D30 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2D33 _ 39. 45, F4
        jge     ?_136                                   ; 2D36 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2D38 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2D3B _ 89. 45, E8
        jmp     ?_135                                   ; 2D3E _ EB, 34

?_134:  mov     eax, dword [ebp-18H]                    ; 2D40 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2D43 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D46 _ 8B. 45, 08
        add     edx, 4                                  ; 2D49 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2D4C _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2D50 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2D53 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2D56 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2D59 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2D5D _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2D60 _ 8B. 55, E8
        add     edx, 4                                  ; 2D63 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D66 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2D6A _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2D6D _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2D70 _ 83. 45, E8, 01
?_135:  mov     eax, dword [ebp+8H]                     ; 2D74 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D77 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2D7A _ 39. 45, E8
        jl      ?_134                                   ; 2D7D _ 7C, C1
?_136:  mov     eax, dword [ebp+8H]                     ; 2D7F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D82 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2D85 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D88 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2D8B _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D8E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D91 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D94 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D97 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D9A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D9D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2DA0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2DA3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DA6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2DA9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2DAC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DAF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DB2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2DB5 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2DB8 _ 83. EC, 08
        push    0                                       ; 2DBB _ 6A, 00
        push    ebx                                     ; 2DBD _ 53
        push    ecx                                     ; 2DBE _ 51
        push    edx                                     ; 2DBF _ 52
        push    eax                                     ; 2DC0 _ 50
        push    dword [ebp+8H]                          ; 2DC1 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2DC4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2DC9 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2DCC _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2DCF _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2DD2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DD5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DD8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2DDB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2DDE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2DE1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2DE4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2DE7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DEA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2DED _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2DF0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DF3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DF6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2DF9 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2DFC _ 83. EC, 04
        push    esi                                     ; 2DFF _ 56
        push    0                                       ; 2E00 _ 6A, 00
        push    ebx                                     ; 2E02 _ 53
        push    ecx                                     ; 2E03 _ 51
        push    edx                                     ; 2E04 _ 52
        push    eax                                     ; 2E05 _ 50
        push    dword [ebp+8H]                          ; 2E06 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2E09 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2E0E _ 83. C4, 20
        jmp     ?_144                                   ; 2E11 _ E9, 0000015B

?_137:  mov     eax, dword [ebp-0CH]                    ; 2E16 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2E19 _ 3B. 45, 10
        jge     ?_144                                   ; 2E1C _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2E22 _ 83. 7D, F4, 00
        js      ?_140                                   ; 2E26 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2E28 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2E2B _ 89. 45, EC
        jmp     ?_139                                   ; 2E2E _ EB, 34

?_138:  mov     eax, dword [ebp-14H]                    ; 2E30 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2E33 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E36 _ 8B. 45, 08
        add     edx, 4                                  ; 2E39 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2E3C _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E40 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2E43 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2E46 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2E49 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2E4D _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2E50 _ 8B. 55, EC
        add     edx, 4                                  ; 2E53 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E56 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2E5A _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2E5D _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2E60 _ 83. 45, EC, 01
?_139:  mov     eax, dword [ebp-14H]                    ; 2E64 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2E67 _ 3B. 45, 10
        jl      ?_138                                   ; 2E6A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2E6C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E6F _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2E72 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E75 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2E78 _ 89. 54 88, 04
        jmp     ?_143                                   ; 2E7C _ EB, 72

?_140:  cmp     dword [ebp-0CH], 0                      ; 2E7E _ 83. 7D, F4, 00
        jns     ?_143                                   ; 2E82 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2E84 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E87 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2E8A _ 89. 45, F0
        jmp     ?_142                                   ; 2E8D _ EB, 3A

?_141:  mov     eax, dword [ebp-10H]                    ; 2E8F _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2E92 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2E95 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2E98 _ 8B. 55, F0
        add     edx, 4                                  ; 2E9B _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2E9E _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2EA2 _ 8B. 45, 08
        add     ecx, 4                                  ; 2EA5 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2EA8 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2EAC _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2EAF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EB2 _ 8B. 45, 08
        add     edx, 4                                  ; 2EB5 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2EB8 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2EBC _ 8B. 55, F0
        add     edx, 1                                  ; 2EBF _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2EC2 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2EC5 _ 83. 6D, F0, 01
?_142:  mov     eax, dword [ebp-10H]                    ; 2EC9 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2ECC _ 3B. 45, 10
        jge     ?_141                                   ; 2ECF _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2ED1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2ED4 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2ED7 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2EDA _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2EDD _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2EE1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2EE4 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2EE7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EEA _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2EED _ 89. 50, 10
?_143:  mov     eax, dword [ebp+0CH]                    ; 2EF0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EF3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EF6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2EF9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2EFC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2EFF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F02 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F05 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2F08 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2F0B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F0E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F11 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F14 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F17 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2F1A _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2F1D _ FF. 75, 10
        push    ebx                                     ; 2F20 _ 53
        push    ecx                                     ; 2F21 _ 51
        push    edx                                     ; 2F22 _ 52
        push    eax                                     ; 2F23 _ 50
        push    dword [ebp+8H]                          ; 2F24 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2F27 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F2C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2F2F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F32 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F35 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2F38 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2F3B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2F3E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F41 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F44 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2F47 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2F4A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F4D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F50 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F53 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F56 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2F59 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2F5C _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2F5F _ FF. 75, 10
        push    ebx                                     ; 2F62 _ 53
        push    ecx                                     ; 2F63 _ 51
        push    edx                                     ; 2F64 _ 52
        push    eax                                     ; 2F65 _ 50
        push    dword [ebp+8H]                          ; 2F66 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2F69 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F6E _ 83. C4, 20
?_144:  nop                                             ; 2F71 _ 90
        lea     esp, [ebp-8H]                           ; 2F72 _ 8D. 65, F8
        pop     ebx                                     ; 2F75 _ 5B
        pop     esi                                     ; 2F76 _ 5E
        pop     ebp                                     ; 2F77 _ 5D
        ret                                             ; 2F78 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2F79 _ 55
        mov     ebp, esp                                ; 2F7A _ 89. E5
        push    edi                                     ; 2F7C _ 57
        push    esi                                     ; 2F7D _ 56
        push    ebx                                     ; 2F7E _ 53
        sub     esp, 28                                 ; 2F7F _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2F82 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F85 _ 8B. 40, 18
        test    eax, eax                                ; 2F88 _ 85. C0
        js      ?_145                                   ; 2F8A _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2F8C _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2F8F _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2F92 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2F95 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2F98 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F9B _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2F9E _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2FA1 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2FA4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2FA7 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2FAA _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2FAD _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2FB0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FB3 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2FB6 _ 8B. 45, 14
        add     edx, eax                                ; 2FB9 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2FBB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FBE _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2FC1 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2FC4 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2FC7 _ 03. 45, E4
        sub     esp, 4                                  ; 2FCA _ 83. EC, 04
        push    ebx                                     ; 2FCD _ 53
        push    ecx                                     ; 2FCE _ 51
        push    edi                                     ; 2FCF _ 57
        push    esi                                     ; 2FD0 _ 56
        push    edx                                     ; 2FD1 _ 52
        push    eax                                     ; 2FD2 _ 50
        push    dword [ebp+8H]                          ; 2FD3 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2FD6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FDB _ 83. C4, 20
?_145:  mov     eax, 0                                  ; 2FDE _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2FE3 _ 8D. 65, F4
        pop     ebx                                     ; 2FE6 _ 5B
        pop     esi                                     ; 2FE7 _ 5E
        pop     edi                                     ; 2FE8 _ 5F
        pop     ebp                                     ; 2FE9 _ 5D
        ret                                             ; 2FEA _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2FEB _ 55
        mov     ebp, esp                                ; 2FEC _ 89. E5
        push    esi                                     ; 2FEE _ 56
        push    ebx                                     ; 2FEF _ 53
        sub     esp, 16                                 ; 2FF0 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2FF3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FF6 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2FF9 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2FFC _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2FFF _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 3002 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3005 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3008 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 300B _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 300E _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3011 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3014 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3017 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 301A _ 8B. 40, 18
        test    eax, eax                                ; 301D _ 85. C0
        js      ?_146                                   ; 301F _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 3025 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3028 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 302B _ 8B. 45, F4
        add     edx, eax                                ; 302E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3030 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3033 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 3036 _ 8B. 45, F0
        add     eax, ecx                                ; 3039 _ 01. C8
        sub     esp, 8                                  ; 303B _ 83. EC, 08
        push    0                                       ; 303E _ 6A, 00
        push    edx                                     ; 3040 _ 52
        push    eax                                     ; 3041 _ 50
        push    dword [ebp-0CH]                         ; 3042 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 3045 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 3048 _ FF. 75, 08
        call    sheet_refreshmap                        ; 304B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3050 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3053 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3056 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 3059 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 305C _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 305F _ 8B. 55, 14
        add     ecx, edx                                ; 3062 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 3064 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 3067 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 306A _ 8B. 55, 10
        add     edx, ebx                                ; 306D _ 01. DA
        sub     esp, 8                                  ; 306F _ 83. EC, 08
        push    eax                                     ; 3072 _ 50
        push    ecx                                     ; 3073 _ 51
        push    edx                                     ; 3074 _ 52
        push    dword [ebp+14H]                         ; 3075 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3078 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 307B _ FF. 75, 08
        call    sheet_refreshmap                        ; 307E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3083 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3086 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3089 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 308C _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 308F _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3092 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3095 _ 8B. 45, F4
        add     edx, eax                                ; 3098 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 309A _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 309D _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 30A0 _ 8B. 45, F0
        add     eax, ebx                                ; 30A3 _ 01. D8
        sub     esp, 4                                  ; 30A5 _ 83. EC, 04
        push    ecx                                     ; 30A8 _ 51
        push    0                                       ; 30A9 _ 6A, 00
        push    edx                                     ; 30AB _ 52
        push    eax                                     ; 30AC _ 50
        push    dword [ebp-0CH]                         ; 30AD _ FF. 75, F4
        push    dword [ebp-10H]                         ; 30B0 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 30B3 _ FF. 75, 08
        call    sheet_refresh_new                       ; 30B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 30BB _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 30BE _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 30C1 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 30C4 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 30C7 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 30CA _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 30CD _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 30D0 _ 8B. 4D, 14
        add     ebx, ecx                                ; 30D3 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 30D5 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 30D8 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 30DB _ 8B. 4D, 10
        add     ecx, esi                                ; 30DE _ 01. F1
        sub     esp, 4                                  ; 30E0 _ 83. EC, 04
        push    edx                                     ; 30E3 _ 52
        push    eax                                     ; 30E4 _ 50
        push    ebx                                     ; 30E5 _ 53
        push    ecx                                     ; 30E6 _ 51
        push    dword [ebp+14H]                         ; 30E7 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 30EA _ FF. 75, 10
        push    dword [ebp+8H]                          ; 30ED _ FF. 75, 08
        call    sheet_refresh_new                       ; 30F0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 30F5 _ 83. C4, 20
?_146:  nop                                             ; 30F8 _ 90
        lea     esp, [ebp-8H]                           ; 30F9 _ 8D. 65, F8
        pop     ebx                                     ; 30FC _ 5B
        pop     esi                                     ; 30FD _ 5E
        pop     ebp                                     ; 30FE _ 5D
        ret                                             ; 30FF _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 3100 _ 55
        mov     ebp, esp                                ; 3101 _ 89. E5
        sub     esp, 48                                 ; 3103 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3106 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3109 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 310B _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 310E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3111 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3114 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3117 _ 83. 7D, 0C, 00
        jns     ?_147                                   ; 311B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 311D _ C7. 45, 0C, 00000000
?_147:  cmp     dword [ebp+10H], 8                      ; 3124 _ 83. 7D, 10, 08
        jg      ?_148                                   ; 3128 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 312A _ C7. 45, 10, 00000000
?_148:  mov     eax, dword [ebp+8H]                     ; 3131 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3134 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3137 _ 39. 45, 14
        jle     ?_149                                   ; 313A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 313C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 313F _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3142 _ 89. 45, 14
?_149:  mov     eax, dword [ebp+8H]                     ; 3145 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3148 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 314B _ 39. 45, 18
        jle     ?_150                                   ; 314E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3150 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3153 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3156 _ 89. 45, 18
?_150:  mov     eax, dword [ebp+1CH]                    ; 3159 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 315C _ 89. 45, DC
        jmp     ?_157                                   ; 315F _ E9, 00000118

?_151:  mov     eax, dword [ebp+8H]                     ; 3164 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 3167 _ 8B. 55, DC
        add     edx, 4                                  ; 316A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 316D _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3171 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3174 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3177 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3179 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 317C _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 317F _ 8B. 55, 08
        add     edx, 1044                               ; 3182 _ 81. C2, 00000414
        sub     eax, edx                                ; 3188 _ 29. D0
        sar     eax, 5                                  ; 318A _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 318D _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 3190 _ C7. 45, E0, 00000000
        jmp     ?_156                                   ; 3197 _ E9, 000000CD

?_152:  mov     eax, dword [ebp-10H]                    ; 319C _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 319F _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 31A2 _ 8B. 45, E0
        add     eax, edx                                ; 31A5 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 31A7 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 31AA _ C7. 45, E4, 00000000
        jmp     ?_155                                   ; 31B1 _ E9, 000000A0

?_153:  mov     eax, dword [ebp-10H]                    ; 31B6 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 31B9 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 31BC _ 8B. 45, E4
        add     eax, edx                                ; 31BF _ 01. D0
        mov     dword [ebp-4H], eax                     ; 31C1 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 31C4 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 31C7 _ 3B. 45, FC
        jg      ?_154                                   ; 31CA _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 31D0 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 31D3 _ 3B. 45, 14
        jge     ?_154                                   ; 31D6 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 31D8 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 31DB _ 3B. 45, F8
        jg      ?_154                                   ; 31DE _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 31E0 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 31E3 _ 3B. 45, 18
        jge     ?_154                                   ; 31E6 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 31E8 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 31EB _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 31EE _ 0F AF. 45, E0
        mov     edx, eax                                ; 31F2 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 31F4 _ 8B. 45, E4
        add     eax, edx                                ; 31F7 _ 01. D0
        mov     edx, eax                                ; 31F9 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 31FB _ 8B. 45, F4
        add     eax, edx                                ; 31FE _ 01. D0
        movzx   eax, byte [eax]                         ; 3200 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 3203 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 3206 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3209 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 320C _ 0F AF. 45, F8
        mov     edx, eax                                ; 3210 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3212 _ 8B. 45, FC
        add     eax, edx                                ; 3215 _ 01. D0
        mov     edx, eax                                ; 3217 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3219 _ 8B. 45, EC
        add     eax, edx                                ; 321C _ 01. D0
        movzx   eax, byte [eax]                         ; 321E _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 3221 _ 38. 45, DA
        jnz     ?_154                                   ; 3224 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3226 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 322A _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 322D _ 8B. 40, 14
        cmp     edx, eax                                ; 3230 _ 39. C2
        jz      ?_154                                   ; 3232 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3234 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3237 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 323A _ 0F AF. 45, F8
        mov     edx, eax                                ; 323E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3240 _ 8B. 45, FC
        add     eax, edx                                ; 3243 _ 01. D0
        mov     edx, eax                                ; 3245 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3247 _ 8B. 45, E8
        add     edx, eax                                ; 324A _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 324C _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3250 _ 88. 02
?_154:  add     dword [ebp-1CH], 1                      ; 3252 _ 83. 45, E4, 01
?_155:  mov     eax, dword [ebp-10H]                    ; 3256 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3259 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 325C _ 39. 45, E4
        jl      ?_153                                   ; 325F _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 3265 _ 83. 45, E0, 01
?_156:  mov     eax, dword [ebp-10H]                    ; 3269 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 326C _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 326F _ 39. 45, E0
        jl      ?_152                                   ; 3272 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 3278 _ 83. 45, DC, 01
?_157:  mov     eax, dword [ebp-24H]                    ; 327C _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 327F _ 3B. 45, 20
        jle     ?_151                                   ; 3282 _ 0F 8E, FFFFFEDC
        nop                                             ; 3288 _ 90
        leave                                           ; 3289 _ C9
        ret                                             ; 328A _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 328B _ 55
        mov     ebp, esp                                ; 328C _ 89. E5
        sub     esp, 64                                 ; 328E _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3291 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3294 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3297 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 329A _ 83. 7D, 0C, 00
        jns     ?_158                                   ; 329E _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 32A0 _ C7. 45, 0C, 00000000
?_158:  mov     eax, dword [ebp+8H]                     ; 32A7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 32AA _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 32AD _ 39. 45, 0C
        jle     ?_159                                   ; 32B0 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 32B2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 32B5 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 32B8 _ 89. 45, 0C
?_159:  cmp     dword [ebp+10H], 0                      ; 32BB _ 83. 7D, 10, 00
        jns     ?_160                                   ; 32BF _ 79, 07
        mov     dword [ebp+10H], 0                      ; 32C1 _ C7. 45, 10, 00000000
?_160:  mov     eax, dword [ebp+8H]                     ; 32C8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32CB _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 32CE _ 39. 45, 10
        jle     ?_161                                   ; 32D1 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 32D3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32D6 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 32D9 _ 89. 45, 10
?_161:  mov     eax, dword [ebp+1CH]                    ; 32DC _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 32DF _ 89. 45, E0
        jmp     ?_172                                   ; 32E2 _ E9, 00000140

?_162:  mov     eax, dword [ebp+8H]                     ; 32E7 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 32EA _ 8B. 55, E0
        add     edx, 4                                  ; 32ED _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 32F0 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 32F4 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 32F7 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 32FA _ 8B. 55, 08
        add     edx, 1044                               ; 32FD _ 81. C2, 00000414
        sub     eax, edx                                ; 3303 _ 29. D0
        sar     eax, 5                                  ; 3305 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 3308 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 330B _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 330E _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3310 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3313 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3316 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3319 _ 8B. 55, 0C
        sub     edx, eax                                ; 331C _ 29. C2
        mov     eax, edx                                ; 331E _ 89. D0
        mov     dword [ebp-30H], eax                    ; 3320 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3323 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3326 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3329 _ 8B. 55, 10
        sub     edx, eax                                ; 332C _ 29. C2
        mov     eax, edx                                ; 332E _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 3330 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 3333 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3336 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3339 _ 8B. 55, 14
        sub     edx, eax                                ; 333C _ 29. C2
        mov     eax, edx                                ; 333E _ 89. D0
        mov     dword [ebp-28H], eax                    ; 3340 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 3343 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3346 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3349 _ 8B. 55, 18
        sub     edx, eax                                ; 334C _ 29. C2
        mov     eax, edx                                ; 334E _ 89. D0
        mov     dword [ebp-24H], eax                    ; 3350 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 3353 _ 83. 7D, D0, 00
        jns     ?_163                                   ; 3357 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 3359 _ C7. 45, D0, 00000000
?_163:  cmp     dword [ebp-2CH], 0                      ; 3360 _ 83. 7D, D4, 00
        jns     ?_164                                   ; 3364 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 3366 _ C7. 45, D4, 00000000
?_164:  mov     eax, dword [ebp-10H]                    ; 336D _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3370 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 3373 _ 39. 45, D8
        jle     ?_165                                   ; 3376 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3378 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 337B _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 337E _ 89. 45, D8
?_165:  mov     eax, dword [ebp-10H]                    ; 3381 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3384 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 3387 _ 39. 45, DC
        jle     ?_166                                   ; 338A _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 338C _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 338F _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 3392 _ 89. 45, DC
?_166:  mov     eax, dword [ebp-2CH]                    ; 3395 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 3398 _ 89. 45, E4
        jmp     ?_171                                   ; 339B _ EB, 7A

?_167:  mov     eax, dword [ebp-10H]                    ; 339D _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 33A0 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 33A3 _ 8B. 45, E4
        add     eax, edx                                ; 33A6 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 33A8 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 33AB _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 33AE _ 89. 45, E8
        jmp     ?_170                                   ; 33B1 _ EB, 58

?_168:  mov     eax, dword [ebp-10H]                    ; 33B3 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 33B6 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 33B9 _ 8B. 45, E8
        add     eax, edx                                ; 33BC _ 01. D0
        mov     dword [ebp-4H], eax                     ; 33BE _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 33C1 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 33C4 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 33C7 _ 0F AF. 45, E4
        mov     edx, eax                                ; 33CB _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 33CD _ 8B. 45, E8
        add     eax, edx                                ; 33D0 _ 01. D0
        mov     edx, eax                                ; 33D2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 33D4 _ 8B. 45, F4
        add     eax, edx                                ; 33D7 _ 01. D0
        movzx   eax, byte [eax]                         ; 33D9 _ 0F B6. 00
        movzx   edx, al                                 ; 33DC _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 33DF _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 33E2 _ 8B. 40, 14
        cmp     edx, eax                                ; 33E5 _ 39. C2
        jz      ?_169                                   ; 33E7 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 33E9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33EC _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 33EF _ 0F AF. 45, F8
        mov     edx, eax                                ; 33F3 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 33F5 _ 8B. 45, FC
        add     eax, edx                                ; 33F8 _ 01. D0
        mov     edx, eax                                ; 33FA _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 33FC _ 8B. 45, EC
        add     edx, eax                                ; 33FF _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 3401 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 3405 _ 88. 02
?_169:  add     dword [ebp-18H], 1                      ; 3407 _ 83. 45, E8, 01
?_170:  mov     eax, dword [ebp-18H]                    ; 340B _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 340E _ 3B. 45, D8
        jl      ?_168                                   ; 3411 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3413 _ 83. 45, E4, 01
?_171:  mov     eax, dword [ebp-1CH]                    ; 3417 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 341A _ 3B. 45, DC
        jl      ?_167                                   ; 341D _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 3423 _ 83. 45, E0, 01
?_172:  mov     eax, dword [ebp+8H]                     ; 3427 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 342A _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 342D _ 39. 45, E0
        jle     ?_162                                   ; 3430 _ 0F 8E, FFFFFEB1
        nop                                             ; 3436 _ 90
        leave                                           ; 3437 _ C9
        ret                                             ; 3438 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 3439 _ 55
        mov     ebp, esp                                ; 343A _ 89. E5
        sub     esp, 24                                 ; 343C _ 83. EC, 18
        sub     esp, 8                                  ; 343F _ 83. EC, 08
        push    52                                      ; 3442 _ 6A, 34
        push    67                                      ; 3444 _ 6A, 43
        call    io_out8                                 ; 3446 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 344B _ 83. C4, 10
        sub     esp, 8                                  ; 344E _ 83. EC, 08
        push    156                                     ; 3451 _ 68, 0000009C
        push    64                                      ; 3456 _ 6A, 40
        call    io_out8                                 ; 3458 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 345D _ 83. C4, 10
        sub     esp, 8                                  ; 3460 _ 83. EC, 08
        push    46                                      ; 3463 _ 6A, 2E
        push    64                                      ; 3465 _ 6A, 40
        call    io_out8                                 ; 3467 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 346C _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 346F _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3479 _ C7. 45, F4, 00000000
        jmp     ?_174                                   ; 3480 _ EB, 26

?_173:  mov     eax, dword [ebp-0CH]                    ; 3482 _ 8B. 45, F4
        shl     eax, 4                                  ; 3485 _ C1. E0, 04
        add     eax, ?_245                              ; 3488 _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 348D _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3493 _ 8B. 45, F4
        shl     eax, 4                                  ; 3496 _ C1. E0, 04
        add     eax, ?_246                              ; 3499 _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 349E _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 34A4 _ 83. 45, F4, 01
?_174:  cmp     dword [ebp-0CH], 499                    ; 34A8 _ 81. 7D, F4, 000001F3
        jle     ?_173                                   ; 34AF _ 7E, D1
        nop                                             ; 34B1 _ 90
        leave                                           ; 34B2 _ C9
        ret                                             ; 34B3 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 34B4 _ 55
        mov     ebp, esp                                ; 34B5 _ 89. E5
        sub     esp, 16                                 ; 34B7 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 34BA _ C7. 45, FC, 00000000
        jmp     ?_177                                   ; 34C1 _ EB, 36

?_175:  mov     eax, dword [ebp-4H]                     ; 34C3 _ 8B. 45, FC
        shl     eax, 4                                  ; 34C6 _ C1. E0, 04
        add     eax, ?_245                              ; 34C9 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 34CE _ 8B. 00
        test    eax, eax                                ; 34D0 _ 85. C0
        jnz     ?_176                                   ; 34D2 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 34D4 _ 8B. 45, FC
        shl     eax, 4                                  ; 34D7 _ C1. E0, 04
        add     eax, ?_245                              ; 34DA _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 34DF _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 34E5 _ 8B. 45, FC
        shl     eax, 4                                  ; 34E8 _ C1. E0, 04
        add     eax, timerctl                           ; 34EB _ 05, 000002A0(d)
        add     eax, 4                                  ; 34F0 _ 83. C0, 04
        jmp     ?_178                                   ; 34F3 _ EB, 12

?_176:  add     dword [ebp-4H], 1                       ; 34F5 _ 83. 45, FC, 01
?_177:  cmp     dword [ebp-4H], 499                     ; 34F9 _ 81. 7D, FC, 000001F3
        jle     ?_175                                   ; 3500 _ 7E, C1
        mov     eax, 0                                  ; 3502 _ B8, 00000000
?_178:  leave                                           ; 3507 _ C9
        ret                                             ; 3508 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3509 _ 55
        mov     ebp, esp                                ; 350A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 350C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 350F _ C7. 40, 04, 00000000
        nop                                             ; 3516 _ 90
        pop     ebp                                     ; 3517 _ 5D
        ret                                             ; 3518 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3519 _ 55
        mov     ebp, esp                                ; 351A _ 89. E5
        sub     esp, 4                                  ; 351C _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 351F _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3522 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3525 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3528 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 352B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 352E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3531 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3535 _ 88. 50, 0C
        nop                                             ; 3538 _ 90
        leave                                           ; 3539 _ C9
        ret                                             ; 353A _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 353B _ 55
        mov     ebp, esp                                ; 353C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 353E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3541 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3544 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3546 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3549 _ C7. 40, 04, 00000002
        nop                                             ; 3550 _ 90
        pop     ebp                                     ; 3551 _ 5D
        ret                                             ; 3552 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3553 _ 55
        mov     ebp, esp                                ; 3554 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3556 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3559 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 355C _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 355E _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3561 _ C7. 40, 04, 00000002
        nop                                             ; 3568 _ 90
        pop     ebp                                     ; 3569 _ 5D
        ret                                             ; 356A _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 356B _ 55
        mov     ebp, esp                                ; 356C _ 89. E5
        mov     eax, timerctl                           ; 356E _ B8, 000002A0(d)
        pop     ebp                                     ; 3573 _ 5D
        ret                                             ; 3574 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3575 _ 55
        mov     ebp, esp                                ; 3576 _ 89. E5
        push    ebx                                     ; 3578 _ 53
        sub     esp, 20                                 ; 3579 _ 83. EC, 14
        sub     esp, 8                                  ; 357C _ 83. EC, 08
        push    32                                      ; 357F _ 6A, 20
        push    32                                      ; 3581 _ 6A, 20
        call    io_out8                                 ; 3583 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3588 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 358B _ A1, 000002A0(d)
        add     eax, 1                                  ; 3590 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3593 _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 3598 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 359F _ C7. 45, F4, 00000000
        jmp     ?_182                                   ; 35A6 _ E9, 000000AD

?_179:  mov     eax, dword [ebp-0CH]                    ; 35AB _ 8B. 45, F4
        shl     eax, 4                                  ; 35AE _ C1. E0, 04
        add     eax, ?_245                              ; 35B1 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 35B6 _ 8B. 00
        cmp     eax, 2                                  ; 35B8 _ 83. F8, 02
        jne     ?_180                                   ; 35BB _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 35C1 _ 8B. 45, F4
        shl     eax, 4                                  ; 35C4 _ C1. E0, 04
        add     eax, ?_244                              ; 35C7 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 35CC _ 8B. 00
        lea     edx, [eax-1H]                           ; 35CE _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 35D1 _ 8B. 45, F4
        shl     eax, 4                                  ; 35D4 _ C1. E0, 04
        add     eax, ?_244                              ; 35D7 _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 35DC _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 35DE _ 8B. 45, F4
        shl     eax, 4                                  ; 35E1 _ C1. E0, 04
        add     eax, ?_244                              ; 35E4 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 35E9 _ 8B. 00
        test    eax, eax                                ; 35EB _ 85. C0
        jnz     ?_180                                   ; 35ED _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 35EF _ 8B. 45, F4
        shl     eax, 4                                  ; 35F2 _ C1. E0, 04
        add     eax, ?_245                              ; 35F5 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 35FA _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3600 _ 8B. 45, F4
        shl     eax, 4                                  ; 3603 _ C1. E0, 04
        add     eax, ?_247                              ; 3606 _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 360B _ 0F B6. 00
        movzx   edx, al                                 ; 360E _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3611 _ 8B. 45, F4
        shl     eax, 4                                  ; 3614 _ C1. E0, 04
        add     eax, ?_246                              ; 3617 _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 361C _ 8B. 00
        sub     esp, 8                                  ; 361E _ 83. EC, 08
        push    edx                                     ; 3621 _ 52
        push    eax                                     ; 3622 _ 50
        call    fifo8_put                               ; 3623 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3628 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 362B _ 8B. 45, F4
        shl     eax, 4                                  ; 362E _ C1. E0, 04
        add     eax, timerctl                           ; 3631 _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 3636 _ 8D. 58, 04
        call    getTaskTimer                            ; 3639 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 363E _ 39. C3
        jnz     ?_180                                   ; 3640 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3642 _ C7. 45, F0, 00000001
?_180:  cmp     dword [ebp-10H], 1                      ; 3649 _ 83. 7D, F0, 01
        jnz     ?_181                                   ; 364D _ 75, 05
        call    task_switch                             ; 364F _ E8, FFFFFFFC(rel)
?_181:  add     dword [ebp-0CH], 1                      ; 3654 _ 83. 45, F4, 01
?_182:  cmp     dword [ebp-0CH], 499                    ; 3658 _ 81. 7D, F4, 000001F3
        jle     ?_179                                   ; 365F _ 0F 8E, FFFFFF46
        nop                                             ; 3665 _ 90
        mov     ebx, dword [ebp-4H]                     ; 3666 _ 8B. 5D, FC
        leave                                           ; 3669 _ C9
        ret                                             ; 366A _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 366B _ 55
        mov     ebp, esp                                ; 366C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 366E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3671 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3674 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3677 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 367A _ 8B. 55, 10
        mov     dword [eax], edx                        ; 367D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 367F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3682 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3685 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3688 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 368B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3692 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3695 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 369C _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 369F _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 36A6 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 36A9 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 36AC _ 89. 50, 18
        nop                                             ; 36AF _ 90
        pop     ebp                                     ; 36B0 _ 5D
        ret                                             ; 36B1 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 36B2 _ 55
        mov     ebp, esp                                ; 36B3 _ 89. E5
        sub     esp, 24                                 ; 36B5 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 36B8 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 36BB _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 36BE _ 83. 7D, 08, 00
        jnz     ?_183                                   ; 36C2 _ 75, 0A
        mov     eax, 4294967295                         ; 36C4 _ B8, FFFFFFFF
        jmp     ?_187                                   ; 36C9 _ E9, 000000A0

?_183:  mov     eax, dword [ebp+8H]                     ; 36CE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 36D1 _ 8B. 40, 10
        test    eax, eax                                ; 36D4 _ 85. C0
        jnz     ?_184                                   ; 36D6 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 36D8 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 36DB _ 8B. 40, 14
        or      eax, 01H                                ; 36DE _ 83. C8, 01
        mov     edx, eax                                ; 36E1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 36E3 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 36E6 _ 89. 50, 14
        mov     eax, 4294967295                         ; 36E9 _ B8, FFFFFFFF
        jmp     ?_187                                   ; 36EE _ EB, 7E

?_184:  mov     eax, dword [ebp+8H]                     ; 36F0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 36F3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 36F5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 36F8 _ 8B. 40, 08
        add     edx, eax                                ; 36FB _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 36FD _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3701 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3703 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3706 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3709 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 370C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 370F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3712 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3715 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3718 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 371B _ 8B. 40, 0C
        cmp     edx, eax                                ; 371E _ 39. C2
        jl      ?_185                                   ; 3720 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3722 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3725 _ C7. 40, 08, 00000000
?_185:  mov     eax, dword [ebp+8H]                     ; 372C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 372F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3732 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3735 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3738 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 373B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 373E _ 8B. 40, 18
        test    eax, eax                                ; 3741 _ 85. C0
        jz      ?_186                                   ; 3743 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3745 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3748 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 374B _ 8B. 40, 04
        cmp     eax, 2                                  ; 374E _ 83. F8, 02
        jz      ?_186                                   ; 3751 _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3753 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3756 _ 8B. 40, 18
        sub     esp, 4                                  ; 3759 _ 83. EC, 04
        push    0                                       ; 375C _ 6A, 00
        push    -1                                      ; 375E _ 6A, FF
        push    eax                                     ; 3760 _ 50
        call    task_run                                ; 3761 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3766 _ 83. C4, 10
?_186:  mov     eax, 1                                  ; 3769 _ B8, 00000001
?_187:  leave                                           ; 376E _ C9
        ret                                             ; 376F _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3770 _ 55
        mov     ebp, esp                                ; 3771 _ 89. E5
        sub     esp, 16                                 ; 3773 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3776 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3779 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 377C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 377F _ 8B. 40, 0C
        cmp     edx, eax                                ; 3782 _ 39. C2
        jnz     ?_188                                   ; 3784 _ 75, 07
        mov     eax, 4294967295                         ; 3786 _ B8, FFFFFFFF
        jmp     ?_190                                   ; 378B _ EB, 51

?_188:  mov     eax, dword [ebp+8H]                     ; 378D _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3790 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3792 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3795 _ 8B. 40, 04
        add     eax, edx                                ; 3798 _ 01. D0
        movzx   eax, byte [eax]                         ; 379A _ 0F B6. 00
        movzx   eax, al                                 ; 379D _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 37A0 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 37A3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 37A6 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 37A9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37AC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 37AF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 37B2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 37B5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 37B8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37BB _ 8B. 40, 0C
        cmp     edx, eax                                ; 37BE _ 39. C2
        jl      ?_189                                   ; 37C0 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 37C2 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 37C5 _ C7. 40, 04, 00000000
?_189:  mov     eax, dword [ebp+8H]                     ; 37CC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37CF _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 37D2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37D5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 37D8 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 37DB _ 8B. 45, FC
?_190:  leave                                           ; 37DE _ C9
        ret                                             ; 37DF _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 37E0 _ 55
        mov     ebp, esp                                ; 37E1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 37E3 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 37E6 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 37E9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37EC _ 8B. 40, 10
        sub     edx, eax                                ; 37EF _ 29. C2
        mov     eax, edx                                ; 37F1 _ 89. D0
        pop     ebp                                     ; 37F3 _ 5D
        ret                                             ; 37F4 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 37F5 _ 55
        mov     ebp, esp                                ; 37F6 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 37F8 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_191                                   ; 37FF _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3801 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3808 _ 8B. 45, 0C
        shr     eax, 12                                 ; 380B _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 380E _ 89. 45, 0C
?_191:  mov     eax, dword [ebp+0CH]                    ; 3811 _ 8B. 45, 0C
        mov     edx, eax                                ; 3814 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3816 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3819 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 381C _ 8B. 45, 10
        mov     edx, eax                                ; 381F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3821 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3824 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3828 _ 8B. 45, 10
        sar     eax, 16                                 ; 382B _ C1. F8, 10
        mov     edx, eax                                ; 382E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3830 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3833 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3836 _ 8B. 45, 14
        mov     edx, eax                                ; 3839 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 383B _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 383E _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3841 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3844 _ C1. E8, 10
        and     eax, 0FH                                ; 3847 _ 83. E0, 0F
        mov     edx, eax                                ; 384A _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 384C _ 8B. 45, 14
        sar     eax, 8                                  ; 384F _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3852 _ 83. E0, F0
        or      eax, edx                                ; 3855 _ 09. D0
        mov     edx, eax                                ; 3857 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3859 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 385C _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 385F _ 8B. 45, 10
        shr     eax, 24                                 ; 3862 _ C1. E8, 18
        mov     edx, eax                                ; 3865 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3867 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 386A _ 88. 50, 07
        nop                                             ; 386D _ 90
        pop     ebp                                     ; 386E _ 5D
        ret                                             ; 386F _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3870 _ 55
        mov     ebp, esp                                ; 3871 _ 89. E5
        mov     eax, dword [task_timer]                 ; 3873 _ A1, 000021E4(d)
        pop     ebp                                     ; 3878 _ 5D
        ret                                             ; 3879 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 387A _ 55
        mov     ebp, esp                                ; 387B _ 89. E5
        sub     esp, 16                                 ; 387D _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3880 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3886 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3889 _ 6B. C0, 1C
        add     eax, edx                                ; 388C _ 01. D0
        add     eax, 8                                  ; 388E _ 83. C0, 08
        mov     dword [eax], 0                          ; 3891 _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 3897 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 389D _ 8B. 45, 08
        imul    eax, eax, 28                            ; 38A0 _ 6B. C0, 1C
        add     eax, edx                                ; 38A3 _ 01. D0
        add     eax, 12                                 ; 38A5 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 38A8 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 38AE _ C7. 45, FC, 00000000
        jmp     ?_193                                   ; 38B5 _ EB, 1A

?_192:  mov     eax, dword [taskctl]                    ; 38B7 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 38BC _ 8B. 55, FC
        shl     edx, 5                                  ; 38BF _ C1. E2, 05
        add     eax, edx                                ; 38C2 _ 01. D0
        add     eax, 16                                 ; 38C4 _ 83. C0, 10
        mov     dword [eax], 0                          ; 38C7 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 38CD _ 83. 45, FC, 01
?_193:  cmp     dword [ebp-4H], 4                       ; 38D1 _ 83. 7D, FC, 04
        jle     ?_192                                   ; 38D5 _ 7E, E0
        nop                                             ; 38D7 _ 90
        leave                                           ; 38D8 _ C9
        ret                                             ; 38D9 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 38DA _ 55
        mov     ebp, esp                                ; 38DB _ 89. E5
        sub     esp, 24                                 ; 38DD _ 83. EC, 18
        call    get_addr_gdt                            ; 38E0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 38E5 _ 89. 45, F0
        sub     esp, 8                                  ; 38E8 _ 83. EC, 08
        push    692                                     ; 38EB _ 68, 000002B4
        push    dword [ebp+8H]                          ; 38F0 _ FF. 75, 08
        call    memman_alloc_4K                         ; 38F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38F8 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 38FB _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 3900 _ C7. 45, EC, 00000000
        jmp     ?_195                                   ; 3907 _ EB, 73

?_194:  mov     edx, dword [taskctl]                    ; 3909 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 390F _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3912 _ 6B. C0, 7C
        add     eax, edx                                ; 3915 _ 01. D0
        add     eax, 96                                 ; 3917 _ 83. C0, 60
        mov     dword [eax], 0                          ; 391A _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3920 _ 8B. 45, EC
        add     eax, 7                                  ; 3923 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3926 _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 392C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3933 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3936 _ 6B. C0, 7C
        add     eax, ecx                                ; 3939 _ 01. C8
        add     eax, 92                                 ; 393B _ 83. C0, 5C
        mov     dword [eax], edx                        ; 393E _ 89. 10
        mov     eax, dword [taskctl]                    ; 3940 _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 3945 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 3948 _ 6B. D2, 7C
        add     edx, 96                                 ; 394B _ 83. C2, 60
        add     eax, edx                                ; 394E _ 01. D0
        add     eax, 16                                 ; 3950 _ 83. C0, 10
        mov     ecx, eax                                ; 3953 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 3955 _ 8B. 45, EC
        add     eax, 7                                  ; 3958 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 395B _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3962 _ 8B. 45, F0
        add     eax, edx                                ; 3965 _ 01. D0
        push    137                                     ; 3967 _ 68, 00000089
        push    ecx                                     ; 396C _ 51
        push    103                                     ; 396D _ 6A, 67
        push    eax                                     ; 396F _ 50
        call    set_segmdesc                            ; 3970 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3975 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3978 _ 83. 45, EC, 01
?_195:  cmp     dword [ebp-14H], 4                      ; 397C _ 83. 7D, EC, 04
        jle     ?_194                                   ; 3980 _ 7E, 87
        call    task_alloc                              ; 3982 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3987 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 398A _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 398D _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3994 _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 3997 _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 399E _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 39A1 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 39A8 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 39AB _ FF. 75, F4
        call    task_add                                ; 39AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 39B3 _ 83. C4, 10
        call    task_switchsub                          ; 39B6 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 39BB _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 39BE _ 8B. 00
        sub     esp, 12                                 ; 39C0 _ 83. EC, 0C
        push    eax                                     ; 39C3 _ 50
        call    load_tr                                 ; 39C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 39C9 _ 83. C4, 10
        call    timer_alloc                             ; 39CC _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 39D1 _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 39D6 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 39D9 _ 8B. 40, 08
        mov     edx, eax                                ; 39DC _ 89. C2
        mov     eax, dword [task_timer]                 ; 39DE _ A1, 000021E4(d)
        sub     esp, 8                                  ; 39E3 _ 83. EC, 08
        push    edx                                     ; 39E6 _ 52
        push    eax                                     ; 39E7 _ 50
        call    timer_setTime                           ; 39E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 39ED _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 39F0 _ 8B. 45, F4
        leave                                           ; 39F3 _ C9
        ret                                             ; 39F4 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 39F5 _ 55
        mov     ebp, esp                                ; 39F6 _ 89. E5
        sub     esp, 16                                 ; 39F8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 39FB _ C7. 45, F8, 00000000
        jmp     ?_198                                   ; 3A02 _ E9, 000000E1

?_196:  mov     edx, dword [taskctl]                    ; 3A07 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 3A0D _ 8B. 45, F8
        imul    eax, eax, 124                           ; 3A10 _ 6B. C0, 7C
        add     eax, edx                                ; 3A13 _ 01. D0
        add     eax, 96                                 ; 3A15 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 3A18 _ 8B. 00
        test    eax, eax                                ; 3A1A _ 85. C0
        jne     ?_197                                   ; 3A1C _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3A22 _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 3A27 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3A2A _ 6B. D2, 7C
        add     edx, 80                                 ; 3A2D _ 83. C2, 50
        add     eax, edx                                ; 3A30 _ 01. D0
        add     eax, 12                                 ; 3A32 _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 3A35 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3A38 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3A3B _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3A42 _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3A45 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 3A4C _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3A4F _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A56 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3A59 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A60 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3A63 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A6A _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3A6D _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A74 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3A77 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3A7E _ 8B. 45, F8
        add     eax, 1                                  ; 3A81 _ 83. C0, 01
        shl     eax, 9                                  ; 3A84 _ C1. E0, 09
        mov     edx, eax                                ; 3A87 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A89 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 3A8C _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 3A8F _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3A92 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A99 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3A9C _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AA3 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3AA6 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AAD _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3AB0 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AB7 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3ABA _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AC1 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3AC4 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3ACB _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3ACE _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AD5 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3AD8 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3ADF _ 8B. 45, FC
        jmp     ?_199                                   ; 3AE2 _ EB, 13

?_197:  add     dword [ebp-8H], 1                       ; 3AE4 _ 83. 45, F8, 01
?_198:  cmp     dword [ebp-8H], 4                       ; 3AE8 _ 83. 7D, F8, 04
        jle     ?_196                                   ; 3AEC _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3AF2 _ B8, 00000000
?_199:  leave                                           ; 3AF7 _ C9
        ret                                             ; 3AF8 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3AF9 _ 55
        mov     ebp, esp                                ; 3AFA _ 89. E5
        sub     esp, 8                                  ; 3AFC _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3AFF _ 83. 7D, 0C, 00
        jns     ?_200                                   ; 3B03 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3B05 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B08 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3B0B _ 89. 45, 0C
?_200:  cmp     dword [ebp+10H], 0                      ; 3B0E _ 83. 7D, 10, 00
        jle     ?_201                                   ; 3B12 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3B14 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3B17 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3B1A _ 89. 50, 08
?_201:  mov     eax, dword [ebp+8H]                     ; 3B1D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B20 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3B23 _ 83. F8, 02
        jnz     ?_202                                   ; 3B26 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3B28 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B2B _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3B2E _ 39. 45, 0C
        jz      ?_202                                   ; 3B31 _ 74, 0E
        sub     esp, 12                                 ; 3B33 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3B36 _ FF. 75, 08
        call    task_remove                             ; 3B39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B3E _ 83. C4, 10
?_202:  mov     eax, dword [ebp+8H]                     ; 3B41 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B44 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3B47 _ 83. F8, 02
        jz      ?_203                                   ; 3B4A _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3B4C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B4F _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3B52 _ 89. 50, 0C
        sub     esp, 12                                 ; 3B55 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3B58 _ FF. 75, 08
        call    task_add                                ; 3B5B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B60 _ 83. C4, 10
?_203:  mov     eax, dword [taskctl]                    ; 3B63 _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 3B68 _ C7. 40, 04, 00000001
        nop                                             ; 3B6F _ 90
        leave                                           ; 3B70 _ C9
        ret                                             ; 3B71 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3B72 _ 55
        mov     ebp, esp                                ; 3B73 _ 89. E5
        sub     esp, 24                                 ; 3B75 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 3B78 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3B7E _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3B83 _ 8B. 00
        imul    eax, eax, 28                            ; 3B85 _ 6B. C0, 1C
        add     eax, edx                                ; 3B88 _ 01. D0
        add     eax, 8                                  ; 3B8A _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3B8D _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3B90 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B93 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B96 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3B99 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3B9D _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3BA0 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3BA3 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3BA6 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3BA9 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3BAC _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3BAF _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3BB2 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3BB5 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3BB8 _ 8B. 00
        cmp     edx, eax                                ; 3BBA _ 39. C2
        jnz     ?_204                                   ; 3BBC _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3BBE _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3BC1 _ C7. 40, 04, 00000000
?_204:  mov     eax, dword [taskctl]                    ; 3BC8 _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 3BCD _ 8B. 40, 04
        test    eax, eax                                ; 3BD0 _ 85. C0
        jz      ?_205                                   ; 3BD2 _ 74, 1D
        call    task_switchsub                          ; 3BD4 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 3BD9 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3BDF _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3BE4 _ 8B. 00
        imul    eax, eax, 28                            ; 3BE6 _ 6B. C0, 1C
        add     eax, edx                                ; 3BE9 _ 01. D0
        add     eax, 8                                  ; 3BEB _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3BEE _ 89. 45, EC
?_205:  mov     eax, dword [ebp-14H]                    ; 3BF1 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3BF4 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3BF7 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3BFA _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3BFE _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3C01 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3C04 _ 8B. 40, 08
        mov     edx, eax                                ; 3C07 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3C09 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3C0E _ 83. EC, 08
        push    edx                                     ; 3C11 _ 52
        push    eax                                     ; 3C12 _ 50
        call    timer_setTime                           ; 3C13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C18 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3C1B _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3C1E _ 3B. 45, F0
        jz      ?_206                                   ; 3C21 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3C23 _ 83. 7D, F4, 00
        jz      ?_206                                   ; 3C27 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3C29 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3C2C _ 8B. 00
        sub     esp, 8                                  ; 3C2E _ 83. EC, 08
        push    eax                                     ; 3C31 _ 50
        push    0                                       ; 3C32 _ 6A, 00
        call    farjmp                                  ; 3C34 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C39 _ 83. C4, 10
        nop                                             ; 3C3C _ 90
?_206:  nop                                             ; 3C3D _ 90
        leave                                           ; 3C3E _ C9
        ret                                             ; 3C3F _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3C40 _ 55
        mov     ebp, esp                                ; 3C41 _ 89. E5
        sub     esp, 24                                 ; 3C43 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3C46 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3C4D _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3C51 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3C54 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3C57 _ 83. F8, 02
        jnz     ?_207                                   ; 3C5A _ 75, 4C
        call    task_now                                ; 3C5C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3C61 _ 89. 45, F4
        sub     esp, 12                                 ; 3C64 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3C67 _ FF. 75, 08
        call    task_remove                             ; 3C6A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C6F _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3C72 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3C76 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3C79 _ 3B. 45, F4
        jnz     ?_207                                   ; 3C7C _ 75, 2A
        call    task_switchsub                          ; 3C7E _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3C83 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3C88 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3C8B _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3C8F _ 83. 7D, F4, 00
        jz      ?_207                                   ; 3C93 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3C95 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3C98 _ 8B. 00
        sub     esp, 8                                  ; 3C9A _ 83. EC, 08
        push    eax                                     ; 3C9D _ 50
        push    0                                       ; 3C9E _ 6A, 00
        call    farjmp                                  ; 3CA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3CA5 _ 83. C4, 10
?_207:  movsx   eax, byte [ebp-0DH]                     ; 3CA8 _ 0F BE. 45, F3
        leave                                           ; 3CAC _ C9
        ret                                             ; 3CAD _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3CAE _ 55
        mov     ebp, esp                                ; 3CAF _ 89. E5
        sub     esp, 16                                 ; 3CB1 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3CB4 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3CBA _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3CBF _ 8B. 00
        imul    eax, eax, 28                            ; 3CC1 _ 6B. C0, 1C
        add     eax, edx                                ; 3CC4 _ 01. D0
        add     eax, 8                                  ; 3CC6 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3CC9 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3CCC _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3CCF _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3CD2 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3CD5 _ 8B. 44 90, 08
        leave                                           ; 3CD9 _ C9
        ret                                             ; 3CDA _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3CDB _ 55
        mov     ebp, esp                                ; 3CDC _ 89. E5
        sub     esp, 16                                 ; 3CDE _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3CE1 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3CE7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3CEA _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3CED _ 6B. C0, 1C
        add     eax, edx                                ; 3CF0 _ 01. D0
        add     eax, 8                                  ; 3CF2 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3CF5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3CF8 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3CFB _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3CFD _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3D00 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3D03 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3D07 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D0A _ 8B. 00
        lea     edx, [eax+1H]                           ; 3D0C _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3D0F _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3D12 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3D14 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3D17 _ C7. 40, 04, 00000002
        nop                                             ; 3D1E _ 90
        leave                                           ; 3D1F _ C9
        ret                                             ; 3D20 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3D21 _ 55
        mov     ebp, esp                                ; 3D22 _ 89. E5
        sub     esp, 16                                 ; 3D24 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3D27 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3D2D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3D30 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3D33 _ 6B. C0, 1C
        add     eax, edx                                ; 3D36 _ 01. D0
        add     eax, 8                                  ; 3D38 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3D3B _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3D3E _ C7. 45, F8, 00000000
        jmp     ?_210                                   ; 3D45 _ EB, 23

?_208:  mov     eax, dword [ebp-4H]                     ; 3D47 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3D4A _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3D4D _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3D51 _ 39. 45, 08
        jnz     ?_209                                   ; 3D54 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3D56 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3D59 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3D5C _ C7. 44 90, 08, 00000000
        jmp     ?_211                                   ; 3D64 _ EB, 0E

?_209:  add     dword [ebp-8H], 1                       ; 3D66 _ 83. 45, F8, 01
?_210:  mov     eax, dword [ebp-4H]                     ; 3D6A _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D6D _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3D6F _ 39. 45, F8
        jl      ?_208                                   ; 3D72 _ 7C, D3
?_211:  mov     eax, dword [ebp-4H]                     ; 3D74 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D77 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3D79 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3D7C _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3D7F _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3D81 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3D84 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3D87 _ 39. 45, F8
        jge     ?_212                                   ; 3D8A _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3D8C _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3D8F _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3D92 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3D95 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3D98 _ 89. 50, 04
?_212:  mov     eax, dword [ebp-4H]                     ; 3D9B _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3D9E _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3DA1 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3DA4 _ 8B. 00
        cmp     edx, eax                                ; 3DA6 _ 39. C2
        jl      ?_213                                   ; 3DA8 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3DAA _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3DAD _ C7. 40, 04, 00000000
?_213:  mov     eax, dword [ebp+8H]                     ; 3DB4 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3DB7 _ C7. 40, 04, 00000001
        jmp     ?_215                                   ; 3DBE _ EB, 1B

?_214:  mov     eax, dword [ebp-8H]                     ; 3DC0 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3DC3 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3DC6 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3DC9 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3DCD _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3DD0 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3DD3 _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3DD7 _ 83. 45, F8, 01
?_215:  mov     eax, dword [ebp-4H]                     ; 3DDB _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3DDE _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3DE0 _ 39. 45, F8
        jl      ?_214                                   ; 3DE3 _ 7C, DB
        nop                                             ; 3DE5 _ 90
        leave                                           ; 3DE6 _ C9
        ret                                             ; 3DE7 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3DE8 _ 55
        mov     ebp, esp                                ; 3DE9 _ 89. E5
        sub     esp, 16                                 ; 3DEB _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3DEE _ C7. 45, FC, 00000000
        jmp     ?_217                                   ; 3DF5 _ EB, 1B

?_216:  mov     edx, dword [taskctl]                    ; 3DF7 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 3DFD _ 8B. 45, FC
        imul    eax, eax, 28                            ; 3E00 _ 6B. C0, 1C
        add     eax, edx                                ; 3E03 _ 01. D0
        add     eax, 8                                  ; 3E05 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3E08 _ 8B. 00
        test    eax, eax                                ; 3E0A _ 85. C0
        jg      ?_218                                   ; 3E0C _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3E0E _ 83. 45, FC, 01
?_217:  cmp     dword [ebp-4H], 2                       ; 3E12 _ 83. 7D, FC, 02
        jle     ?_216                                   ; 3E16 _ 7E, DF
        jmp     ?_219                                   ; 3E18 _ EB, 01

?_218:  nop                                             ; 3E1A _ 90
?_219:  mov     eax, dword [taskctl]                    ; 3E1B _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3E20 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3E23 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3E25 _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 3E2A _ C7. 40, 04, 00000000
        nop                                             ; 3E31 _ 90
        leave                                           ; 3E32 _ C9
        ret                                             ; 3E33 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3E34 _ 55
        mov     ebp, esp                                ; 3E35 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3E37 _ A1, 000021E8(d)
        pop     ebp                                     ; 3E3C _ 5D
        ret                                             ; 3E3D _ C3
; getTaskctl End of function



?_220:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_221:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_222:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_223:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_224:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_225:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_226:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_227:                                                  ; byte
        db 44H, 61H, 6EH, 73H, 00H                      ; 003B _ Dans.

?_228:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0040 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0048 _ sk B.

?_229:                                                  ; byte
        db 42H, 00H                                     ; 004D _ B.

?_230:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 004F _ Page is:
        db 20H, 00H                                     ; 0057 _  .

?_231:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0059 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0061 _ Low: .

?_232:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0067 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 006F _ High: .

?_233:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0076 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 007E _ w: .

?_234:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0082 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 008A _ gh: .

?_235:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 008F _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_236:  db 00H                                          ; 0002 _ .

?_237:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

keytable:                                               ; byte
        db 00H, 00H, 31H, 32H, 33H, 34H, 35H, 36H       ; 0020 _ ..123456
        db 37H, 38H, 39H, 30H, 2DH, 2BH, 00H, 00H       ; 0028 _ 7890-+..
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 0030 _ QWERTYUI
        db 4FH, 50H, 40H, 5BH, 00H, 00H, 41H, 53H       ; 0038 _ OP@[..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 3BH       ; 0040 _ DFGHJKL;
        db 3AH, 00H, 00H, 5DH, 5AH, 58H, 43H, 56H       ; 0048 _ :..]ZXCV
        db 42H, 4EH, 4DH, 2CH, 2EH, 2FH, 00H, 2AH       ; 0050 _ BNM,./.*
        db 00H, 20H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ . ......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 37H       ; 0060 _ .......7
        db 38H, 39H, 2DH, 34H, 35H, 36H, 2BH, 31H       ; 0068 _ 89-456+1
        db 32H, 33H, 30H, 2EH, 00H, 00H, 00H, 00H       ; 0070 _ 230.....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........

keytable1:                                              ; byte
        db 00H, 00H, 21H, 40H, 23H, 24H, 25H, 5EH       ; 0080 _ ..!@#$%^
        db 26H, 2AH, 28H, 29H, 2DH, 3DH, 7EH, 00H       ; 0088 _ &*()-=~.
        db 00H, 51H, 57H, 45H, 52H, 54H, 59H, 55H       ; 0090 _ .QWERTYU
        db 49H, 4FH, 50H, 60H, 7BH, 00H, 00H, 41H       ; 0098 _ IOP`{..A
        db 53H, 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH       ; 00A0 _ SDFGHJKL
        db 2BH, 2AH, 00H, 00H, 7DH, 5AH, 58H, 43H       ; 00A8 _ +*..}ZXC
        db 56H, 42H, 4EH, 4DH, 3CH, 3EH, 3FH, 00H       ; 00B0 _ VBNM<>?.
        db 2AH, 00H, 20H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ *. .....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C0 _ ........
        db 37H, 38H, 39H, 2DH, 34H, 35H, 36H, 2BH       ; 00C8 _ 789-456+
        db 31H, 32H, 33H, 30H, 2EH, 00H, 00H, 00H       ; 00D0 _ 1230....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E8 _ ........
        db 00H, 00H, 00H, 00H, 5FH, 00H, 00H, 00H       ; 00F0 _ ...._...
        db 00H, 00H, 00H, 00H, 00H, 00H, 7CH, 00H       ; 00F8 _ ......|.

pos.2290: dd 00000010H, 00000000H                       ; 0100 _ 16 0 
        dd 00000000H, 00000000H                         ; 0108 _ 0 0 
        dd 00000000H, 00000000H                         ; 0110 _ 0 0 
        dd 00000000H, 00000000H                         ; 0118 _ 0 0 

table_rgb.2356:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2411:                                            ; byte
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ **......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0168 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0170 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0178 _ ........
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0180 _ *OO*....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0188 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0190 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0198 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 01A0 _ *OOOO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01A8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 01B0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 01C0 _ *OOOOOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01C8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01D0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01D8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH       ; 01E0 _ *OOOOO**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01E8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 01F0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01F8 _ ........
        db 2AH, 4FH, 2AH, 2AH, 4FH, 4FH, 2AH, 2EH       ; 0200 _ *O**OO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0208 _ ........
        db 2AH, 2AH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0210 _ **..*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0218 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0220 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0228 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0230 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0238 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0240 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0248 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH       ; 0250 _ ......**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0258 _ ........

closebtn.2564:                                          ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0260 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0268 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0270 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0278 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0280 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0288 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0290 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0298 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 02C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 02F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 02F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0300 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0308 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0310 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0318 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0320 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0328 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0330 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0338 _ @@@@@@@@



key_shift:                                              ; dword
        resd    1                                       ; 0000

bootInfo:                                               ; qword
        resb    4                                       ; 0004

?_238:  resw    1                                       ; 0008

?_239:  resw    1                                       ; 000A

keyInfo:                                                ; byte
        resb    24                                      ; 000C

?_240:  resd    1                                       ; 0024

mouseInfo:                                              ; byte
        resb    56                                      ; 0028

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_241:  resd    1                                       ; 010C

mx:     resd    1                                       ; 0110

my:     resd    1                                       ; 0114

buf_back: resd  2                                       ; 0118

buf_mouse:                                              ; byte
        resb    256                                     ; 0120

timerInfo:                                              ; byte
        resb    28                                      ; 0220

timerbuf: resq  1                                       ; 023C

shtctl: resd    1                                       ; 0244

sheet_win:                                              ; dword
        resd    1                                       ; 0248

sheet_back:                                             ; dword
        resd    1                                       ; 024C

sheet_mouse:                                            ; dword
        resd    1                                       ; 0250

task_console:                                           ; dword
        resd    1                                       ; 0254

task_a.2285:                                            ; dword
        resd    1                                       ; 0258

cnt.2286: resd  1                                       ; 025C

line.2289:                                              ; dword
        resd    1                                       ; 0260

task_b.2275:                                            ; oword
        resb    16                                      ; 0264

str.2454:                                               ; byte
        resb    1                                       ; 0274

?_242:  resb    9                                       ; 0275

?_243:  resb    2                                       ; 027E

line.2487:                                              ; dword
        resd    1                                       ; 0280

pos.2486: resd  7                                       ; 0284

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_244:                                                  ; byte
        resb    4                                       ; 02A4

?_245:                                                  ; byte
        resb    4                                       ; 02A8

?_246:                                                  ; byte
        resb    4                                       ; 02AC

?_247:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


