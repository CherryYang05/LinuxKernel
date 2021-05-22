; Disassembly of file: ckernel.o
; Sat May 22 13:36:25 2021
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
        push    bootInfo                                ; 001A _ 68, 00000008(d)
        call    initBootInfo                            ; 001F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0024 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0027 _ A1, 00000008(d)
        mov     dword [ebp-68H], eax                    ; 002C _ 89. 45, 98
        movzx   eax, word [?_244]                       ; 002F _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0036 _ 98
        mov     dword [ebp-64H], eax                    ; 0037 _ 89. 45, 9C
        movzx   eax, word [?_245]                       ; 003A _ 0F B7. 05, 0000000E(d)
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
        push    keyInfo                                 ; 00FB _ 68, 00000010(d)
        call    fifo8_init                              ; 0100 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0105 _ 83. C4, 10
        push    0                                       ; 0108 _ 6A, 00
        push    mousebuf                                ; 010A _ 68, 00000080(d)
        push    128                                     ; 010F _ 68, 00000080
        push    mouseInfo                               ; 0114 _ 68, 0000002C(d)
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
        push    ?_226                                   ; 02F1 _ 68, 00000000(d)
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
        mov     dword [task_a.2288], eax                ; 0356 _ A3, 00000258(d)
        mov     eax, dword [task_a.2288]                ; 035B _ A1, 00000258(d)
        mov     dword [?_246], eax                      ; 0360 _ A3, 00000028(d)
        mov     byte [ebp-79H], 0                       ; 0365 _ C6. 45, 87, 00
        mov     dword [ebp-78H], 7                      ; 0369 _ C7. 45, 88, 00000007
        mov     dword [ebp-74H], 0                      ; 0370 _ C7. 45, 8C, 00000000
        mov     edx, dword [sheet_win]                  ; 0377 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 037D _ A1, 00000244(d)
        sub     esp, 8                                  ; 0382 _ 83. EC, 08
        push    ?_227                                   ; 0385 _ 68, 00000008(d)
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
        push    keyInfo                                 ; 03BC _ 68, 00000010(d)
        call    fifo8_status                            ; 03C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C6 _ 83. C4, 10
        mov     ebx, eax                                ; 03C9 _ 89. C3
        sub     esp, 12                                 ; 03CB _ 83. EC, 0C
        push    mouseInfo                               ; 03CE _ 68, 0000002C(d)
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
        push    keyInfo                                 ; 03FD _ 68, 00000010(d)
        call    fifo8_status                            ; 0402 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0407 _ 83. C4, 10
        test    eax, eax                                ; 040A _ 85. C0
        je      ?_010                                   ; 040C _ 0F 84, 00000400
        call    io_sti                                  ; 0412 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0417 _ 83. EC, 0C
        push    keyInfo                                 ; 041A _ 68, 00000010(d)
        call    fifo8_get                               ; 041F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0424 _ 83. C4, 10
        mov     byte [ebp-79H], al                      ; 0427 _ 88. 45, 87
        cmp     byte [ebp-79H], 28                      ; 042A _ 80. 7D, 87, 1C
        jnz     ?_003                                   ; 042E _ 75, 59
        mov     ebx, dword [cnt.2289]                   ; 0430 _ 8B. 1D, 0000025C(d)
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
        mov     eax, dword [cnt.2289]                   ; 045F _ A1, 0000025C(d)
        add     eax, 1                                  ; 0464 _ 83. C0, 01
        mov     dword [cnt.2289], eax                   ; 0467 _ A3, 0000025C(d)
        mov     eax, dword [cnt.2289]                   ; 046C _ A1, 0000025C(d)
        cmp     dword [ebp-48H], eax                    ; 0471 _ 39. 45, B8
        jg      ?_001                                   ; 0474 _ 0F 8F, FFFFFF35
        mov     dword [cnt.2289], 0                     ; 047A _ C7. 05, 0000025C(d), 00000000
        jmp     ?_001                                   ; 0484 _ E9, FFFFFF26

?_003:  cmp     byte [ebp-79H], 15                      ; 0489 _ 80. 7D, 87, 0F
        jne     ?_006                                   ; 048D _ 0F 85, 000000CB
        cmp     dword [ebp-6CH], 0                      ; 0493 _ 83. 7D, 94, 00
        jnz     ?_004                                   ; 0497 _ 75, 3D
        mov     dword [ebp-6CH], 1                      ; 0499 _ C7. 45, 94, 00000001
        mov     edx, dword [sheet_win]                  ; 04A0 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 04A6 _ A1, 00000244(d)
        push    0                                       ; 04AB _ 6A, 00
        push    ?_226                                   ; 04AD _ 68, 00000000(d)
        push    edx                                     ; 04B2 _ 52
        push    eax                                     ; 04B3 _ 50
        call    make_wtitle8                            ; 04B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04B9 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04BC _ A1, 00000244(d)
        push    1                                       ; 04C1 _ 6A, 01
        push    ?_228                                   ; 04C3 _ 68, 0000001E(d)
        push    dword [ebp-38H]                         ; 04C8 _ FF. 75, C8
        push    eax                                     ; 04CB _ 50
        call    make_wtitle8                            ; 04CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04D1 _ 83. C4, 10
        jmp     ?_005                                   ; 04D4 _ EB, 3B

?_004:  mov     dword [ebp-6CH], 0                      ; 04D6 _ C7. 45, 94, 00000000
        mov     edx, dword [sheet_win]                  ; 04DD _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 04E3 _ A1, 00000244(d)
        push    1                                       ; 04E8 _ 6A, 01
        push    ?_226                                   ; 04EA _ 68, 00000000(d)
        push    edx                                     ; 04EF _ 52
        push    eax                                     ; 04F0 _ 50
        call    make_wtitle8                            ; 04F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04F6 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04F9 _ A1, 00000244(d)
        push    0                                       ; 04FE _ 6A, 00
        push    ?_228                                   ; 0500 _ 68, 0000001E(d)
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
        push    ?_229                                   ; 0576 _ 68, 00000027(d)
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
        mov     eax, dword [line.2292]                  ; 05A3 _ A1, 00000260(d)
        cmp     eax, 142                                ; 05A8 _ 3D, 0000008E
        jg      ?_008                                   ; 05AD _ 0F 8F, 00000109
        mov     eax, dword [pos.2293]                   ; 05B3 _ A1, 00000100(d)
        lea     edi, [eax+28H]                          ; 05B8 _ 8D. 78, 28
        mov     eax, dword [line.2292]                  ; 05BB _ A1, 00000260(d)
        lea     esi, [eax+10H]                          ; 05C0 _ 8D. 70, 10
        mov     eax, dword [pos.2293]                   ; 05C3 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 05C8 _ 8D. 58, 1A
        mov     eax, dword [line.2292]                  ; 05CB _ A1, 00000260(d)
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
        mov     eax, dword [pos.2293]                   ; 05F5 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 05FA _ 8D. 78, 2A
        mov     eax, dword [line.2292]                  ; 05FD _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 0602 _ 8D. 70, 12
        mov     eax, dword [pos.2293]                   ; 0605 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 060A _ 8D. 58, 1A
        mov     eax, dword [line.2292]                  ; 060D _ A1, 00000260(d)
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
        mov     eax, dword [pos.2293]                   ; 0648 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 064D _ 8D. 70, 1A
        mov     eax, dword [line.2292]                  ; 0650 _ A1, 00000260(d)
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
        mov     eax, dword [line.2292]                  ; 0678 _ A1, 00000260(d)
        add     eax, 8                                  ; 067D _ 83. C0, 08
        mov     dword [line.2292], eax                  ; 0680 _ A3, 00000260(d)
        mov     eax, dword [sheet_win]                  ; 0685 _ A1, 00000248(d)
        mov     eax, dword [eax+4H]                     ; 068A _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 068D _ 8D. 50, F0
        mov     eax, dword [line.2292]                  ; 0690 _ A1, 00000260(d)
        cmp     edx, eax                                ; 0695 _ 39. C2
        jg      ?_007                                   ; 0697 _ 7F, 17
        mov     eax, dword [pos.2293]                   ; 0699 _ A1, 00000100(d)
        add     eax, 16                                 ; 069E _ 83. C0, 10
        mov     dword [pos.2293], eax                   ; 06A1 _ A3, 00000100(d)
        mov     dword [line.2292], 0                    ; 06A6 _ C7. 05, 00000260(d), 00000000
?_007:  mov     dword [ebp-70H], 0                      ; 06B0 _ C7. 45, 90, 00000000
        jmp     ?_016                                   ; 06B7 _ E9, 00000332

?_008:  cmp     byte [ebp-79H], 14                      ; 06BC _ 80. 7D, 87, 0E
        jne     ?_001                                   ; 06C0 _ 0F 85, FFFFFCE9
        mov     eax, dword [line.2292]                  ; 06C6 _ A1, 00000260(d)
        cmp     eax, 7                                  ; 06CB _ 83. F8, 07
        jle     ?_001                                   ; 06CE _ 0F 8E, FFFFFCDB
        mov     eax, dword [pos.2293]                   ; 06D4 _ A1, 00000100(d)
        lea     edi, [eax+28H]                          ; 06D9 _ 8D. 78, 28
        mov     eax, dword [line.2292]                  ; 06DC _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 06E1 _ 8D. 70, 12
        mov     eax, dword [pos.2293]                   ; 06E4 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 06E9 _ 8D. 58, 1A
        mov     eax, dword [line.2292]                  ; 06EC _ A1, 00000260(d)
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
        mov     eax, dword [pos.2293]                   ; 0716 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 071B _ 8D. 78, 2A
        mov     eax, dword [line.2292]                  ; 071E _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 0723 _ 8D. 70, 12
        mov     eax, dword [pos.2293]                   ; 0726 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 072B _ 8D. 58, 1A
        mov     eax, dword [line.2292]                  ; 072E _ A1, 00000260(d)
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
        mov     eax, dword [line.2292]                  ; 0752 _ A1, 00000260(d)
        sub     eax, 8                                  ; 0757 _ 83. E8, 08
        mov     dword [line.2292], eax                  ; 075A _ A3, 00000260(d)
        mov     eax, dword [pos.2293]                   ; 075F _ A1, 00000100(d)
        lea     edi, [eax+28H]                          ; 0764 _ 8D. 78, 28
        mov     eax, dword [line.2292]                  ; 0767 _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 076C _ 8D. 70, 12
        mov     eax, dword [pos.2293]                   ; 076F _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 0774 _ 8D. 58, 1A
        mov     eax, dword [line.2292]                  ; 0777 _ A1, 00000260(d)
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
        mov     eax, dword [pos.2293]                   ; 07A1 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 07A6 _ 8D. 78, 2A
        mov     eax, dword [line.2292]                  ; 07A9 _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 07AE _ 8D. 70, 12
        mov     eax, dword [pos.2293]                   ; 07B1 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 07B6 _ 8D. 58, 1A
        mov     eax, dword [line.2292]                  ; 07B9 _ A1, 00000260(d)
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

?_009:  mov     eax, dword [task_a.2288]                ; 07E2 _ A1, 00000258(d)
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
        push    mouseInfo                               ; 0815 _ 68, 0000002C(d)
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
        push    ?_230                                   ; 088E _ 68, 00000030(d)
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
        push    ?_231                                   ; 08F6 _ 68, 00000032(d)
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
        mov     eax, dword [pos.2293]                   ; 0960 _ A1, 00000100(d)
        add     eax, 40                                 ; 0965 _ 83. C0, 28
        mov     dword [ebp-8CH], eax                    ; 0968 _ 89. 85, FFFFFF74
        mov     eax, dword [line.2292]                  ; 096E _ A1, 00000260(d)
        lea     edi, [eax+10H]                          ; 0973 _ 8D. 78, 10
        mov     eax, dword [pos.2293]                   ; 0976 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 097B _ 8D. 70, 1A
        mov     eax, dword [line.2292]                  ; 097E _ A1, 00000260(d)
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
        mov     eax, dword [pos.2293]                   ; 09B2 _ A1, 00000100(d)
        lea     edi, [eax+2AH]                          ; 09B7 _ 8D. 78, 2A
        mov     eax, dword [line.2292]                  ; 09BA _ A1, 00000260(d)
        lea     esi, [eax+12H]                          ; 09BF _ 8D. 70, 12
        mov     eax, dword [pos.2293]                   ; 09C2 _ A1, 00000100(d)
        lea     ebx, [eax+1AH]                          ; 09C7 _ 8D. 58, 1A
        mov     eax, dword [line.2292]                  ; 09CA _ A1, 00000260(d)
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

isSpecialKey:; Function begin
        push    ebp                                     ; 09F3 _ 55
        mov     ebp, esp                                ; 09F4 _ 89. E5
        sub     esp, 8                                  ; 09F6 _ 83. EC, 08
        sub     esp, 12                                 ; 09F9 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 09FC _ FF. 75, 08
        call    transferScanCode                        ; 09FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A04 _ 83. C4, 10
        cmp     dword [ebp+8H], 58                      ; 0A07 _ 83. 7D, 08, 3A
        jz      ?_017                                   ; 0A0B _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 0A0D _ 81. 7D, 08, 000000BA
        jz      ?_017                                   ; 0A14 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0A16 _ 83. 7D, 08, 2A
        jz      ?_017                                   ; 0A1A _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 0A1C _ 83. 7D, 08, 36
        jz      ?_017                                   ; 0A20 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 0A22 _ 81. 7D, 08, 000000AA
        jz      ?_017                                   ; 0A29 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 0A2B _ 81. 7D, 08, 000000B6
        jnz     ?_018                                   ; 0A32 _ 75, 07
?_017:  mov     eax, 1                                  ; 0A34 _ B8, 00000001
        jmp     ?_019                                   ; 0A39 _ EB, 05

?_018:  mov     eax, 0                                  ; 0A3B _ B8, 00000000
?_019:  leave                                           ; 0A40 _ C9
        ret                                             ; 0A41 _ C3
; isSpecialKey End of function

transferScanCode:; Function begin
        push    ebp                                     ; 0A42 _ 55
        mov     ebp, esp                                ; 0A43 _ 89. E5
        sub     esp, 16                                 ; 0A45 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 0A48 _ 83. 7D, 08, 2A
        jnz     ?_020                                   ; 0A4C _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A4E _ A1, 00000000(d)
        or      eax, 01H                                ; 0A53 _ 83. C8, 01
        mov     dword [key_shift], eax                  ; 0A56 _ A3, 00000000(d)
?_020:  cmp     dword [ebp+8H], 54                      ; 0A5B _ 83. 7D, 08, 36
        jnz     ?_021                                   ; 0A5F _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A61 _ A1, 00000000(d)
        or      eax, 02H                                ; 0A66 _ 83. C8, 02
        mov     dword [key_shift], eax                  ; 0A69 _ A3, 00000000(d)
?_021:  cmp     dword [ebp+8H], 170                     ; 0A6E _ 81. 7D, 08, 000000AA
        jnz     ?_022                                   ; 0A75 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A77 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 0A7C _ 83. E0, FE
        mov     dword [key_shift], eax                  ; 0A7F _ A3, 00000000(d)
?_022:  cmp     dword [ebp+8H], 182                     ; 0A84 _ 81. 7D, 08, 000000B6
        jnz     ?_023                                   ; 0A8B _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A8D _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 0A92 _ 83. E0, FD
        mov     dword [key_shift], eax                  ; 0A95 _ A3, 00000000(d)
?_023:  cmp     dword [ebp+8H], 58                      ; 0A9A _ 83. 7D, 08, 3A
        jnz     ?_025                                   ; 0A9E _ 75, 1F
        mov     eax, dword [caps_lock]                  ; 0AA0 _ A1, 00000000(d)
        test    eax, eax                                ; 0AA5 _ 85. C0
        jnz     ?_024                                   ; 0AA7 _ 75, 0C
        mov     dword [caps_lock], 1                    ; 0AA9 _ C7. 05, 00000000(d), 00000001
        jmp     ?_025                                   ; 0AB3 _ EB, 0A

?_024:  mov     dword [caps_lock], 0                    ; 0AB5 _ C7. 05, 00000000(d), 00000000
?_025:  cmp     dword [ebp+8H], 42                      ; 0ABF _ 83. 7D, 08, 2A
        jz      ?_026                                   ; 0AC3 _ 74, 1E
        cmp     dword [ebp+8H], 54                      ; 0AC5 _ 83. 7D, 08, 36
        jz      ?_026                                   ; 0AC9 _ 74, 18
        cmp     dword [ebp+8H], 170                     ; 0ACB _ 81. 7D, 08, 000000AA
        jz      ?_026                                   ; 0AD2 _ 74, 0F
        cmp     dword [ebp+8H], 182                     ; 0AD4 _ 81. 7D, 08, 000000B6
        jz      ?_026                                   ; 0ADB _ 74, 06
        cmp     dword [ebp+8H], 83                      ; 0ADD _ 83. 7D, 08, 53
        jle     ?_027                                   ; 0AE1 _ 7E, 0A
?_026:  mov     eax, 0                                  ; 0AE3 _ B8, 00000000
        jmp     ?_032                                   ; 0AE8 _ E9, 00000090

?_027:  mov     byte [ebp-1H], 0                        ; 0AED _ C6. 45, FF, 00
        mov     eax, dword [key_shift]                  ; 0AF1 _ A1, 00000000(d)
        test    eax, eax                                ; 0AF6 _ 85. C0
        jnz     ?_028                                   ; 0AF8 _ 75, 4A
        cmp     dword [ebp+8H], 14                      ; 0AFA _ 83. 7D, 08, 0E
        jz      ?_028                                   ; 0AFE _ 74, 44
        cmp     dword [ebp+8H], 83                      ; 0B00 _ 83. 7D, 08, 53
        jg      ?_028                                   ; 0B04 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0B06 _ 8B. 45, 08
        add     eax, keytable                           ; 0B09 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B0E _ 0F B6. 00
        test    al, al                                  ; 0B11 _ 84. C0
        jz      ?_028                                   ; 0B13 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0B15 _ 8B. 45, 08
        add     eax, keytable                           ; 0B18 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B1D _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0B20 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0B23 _ 80. 7D, FF, 40
        jle     ?_030                                   ; 0B27 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0B29 _ 80. 7D, FF, 5A
        jg      ?_030                                   ; 0B2D _ 7F, 49
        mov     eax, dword [caps_lock]                  ; 0B2F _ A1, 00000000(d)
        test    eax, eax                                ; 0B34 _ 85. C0
        jnz     ?_030                                   ; 0B36 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0B38 _ 0F B6. 45, FF
        add     eax, 32                                 ; 0B3C _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0B3F _ 88. 45, FF
        jmp     ?_030                                   ; 0B42 _ EB, 34

?_028:  mov     eax, dword [key_shift]                  ; 0B44 _ A1, 00000000(d)
        test    eax, eax                                ; 0B49 _ 85. C0
        jz      ?_029                                   ; 0B4B _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0B4D _ 83. 7D, 08, 7F
        jg      ?_029                                   ; 0B51 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0B53 _ 8B. 45, 08
        add     eax, keytable1                          ; 0B56 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B5B _ 0F B6. 00
        test    al, al                                  ; 0B5E _ 84. C0
        jz      ?_029                                   ; 0B60 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0B62 _ 8B. 45, 08
        add     eax, keytable1                          ; 0B65 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B6A _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0B6D _ 88. 45, FF
        jmp     ?_031                                   ; 0B70 _ EB, 07

?_029:  mov     byte [ebp-1H], 0                        ; 0B72 _ C6. 45, FF, 00
        jmp     ?_031                                   ; 0B76 _ EB, 01

?_030:  nop                                             ; 0B78 _ 90
?_031:  movzx   eax, byte [ebp-1H]                      ; 0B79 _ 0F B6. 45, FF
?_032:  leave                                           ; 0B7D _ C9
        ret                                             ; 0B7E _ C3
; transferScanCode End of function

launch_console:; Function begin
        push    ebp                                     ; 0B7F _ 55
        mov     ebp, esp                                ; 0B80 _ 89. E5
        sub     esp, 24                                 ; 0B82 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0B85 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0B8A _ 83. EC, 0C
        push    eax                                     ; 0B8D _ 50
        call    sheet_alloc                             ; 0B8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B93 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0B96 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0B99 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0B9E _ 83. EC, 08
        push    46080                                   ; 0BA1 _ 68, 0000B400
        push    eax                                     ; 0BA6 _ 50
        call    memman_alloc_4K                         ; 0BA7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BAC _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0BAF _ 89. 45, EC
        sub     esp, 12                                 ; 0BB2 _ 83. EC, 0C
        push    99                                      ; 0BB5 _ 6A, 63
        push    180                                     ; 0BB7 _ 68, 000000B4
        push    256                                     ; 0BBC _ 68, 00000100
        push    dword [ebp-14H]                         ; 0BC1 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0BC4 _ FF. 75, E8
        call    sheet_setbuf                            ; 0BC7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BCC _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0BCF _ A1, 00000244(d)
        push    0                                       ; 0BD4 _ 6A, 00
        push    ?_228                                   ; 0BD6 _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0BDB _ FF. 75, E8
        push    eax                                     ; 0BDE _ 50
        call    make_window8                            ; 0BDF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BE4 _ 83. C4, 10
        sub     esp, 8                                  ; 0BE7 _ 83. EC, 08
        push    0                                       ; 0BEA _ 6A, 00
        push    144                                     ; 0BEC _ 68, 00000090
        push    240                                     ; 0BF1 _ 68, 000000F0
        push    28                                      ; 0BF6 _ 6A, 1C
        push    8                                       ; 0BF8 _ 6A, 08
        push    dword [ebp-18H]                         ; 0BFA _ FF. 75, E8
        call    make_textbox8                           ; 0BFD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C02 _ 83. C4, 20
        call    task_alloc                              ; 0C05 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0C0A _ 89. 45, F0
        call    get_code32_addr                         ; 0C0D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0C12 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0C15 _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 0C18 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 0C1F _ 8B. 45, F0
        mov     dword [eax+78H], 1073741824             ; 0C22 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0C29 _ 8B. 45, F4
        neg     eax                                     ; 0C2C _ F7. D8
        add     eax, console_task                       ; 0C2E _ 05, 00000000(d)
        mov     edx, eax                                ; 0C33 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0C35 _ 8B. 45, F0
        mov     dword [eax+34H], edx                    ; 0C38 _ 89. 50, 34
        mov     eax, dword [ebp-10H]                    ; 0C3B _ 8B. 45, F0
        mov     dword [eax+5CH], 0                      ; 0C3E _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0C45 _ 8B. 45, F0
        mov     dword [eax+60H], 8                      ; 0C48 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp-10H]                    ; 0C4F _ 8B. 45, F0
        mov     dword [eax+64H], 32                     ; 0C52 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp-10H]                    ; 0C59 _ 8B. 45, F0
        mov     dword [eax+68H], 24                     ; 0C5C _ C7. 40, 68, 00000018
        mov     eax, dword [ebp-10H]                    ; 0C63 _ 8B. 45, F0
        mov     dword [eax+6CH], 0                      ; 0C66 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0C6D _ 8B. 45, F0
        mov     dword [eax+70H], 16                     ; 0C70 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp-10H]                    ; 0C77 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0C7A _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 0C7D _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0C80 _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 0C83 _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 0C86 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0C89 _ 8B. 40, 4C
        add     eax, 4                                  ; 0C8C _ 83. C0, 04
        mov     edx, eax                                ; 0C8F _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0C91 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0C94 _ 89. 02
        mov     eax, dword [ebp-10H]                    ; 0C96 _ 8B. 45, F0
        mov     dword [task_console], eax               ; 0C99 _ A3, 00000254(d)
        sub     esp, 4                                  ; 0C9E _ 83. EC, 04
        push    5                                       ; 0CA1 _ 6A, 05
        push    1                                       ; 0CA3 _ 6A, 01
        push    dword [ebp-10H]                         ; 0CA5 _ FF. 75, F0
        call    task_run                                ; 0CA8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAD _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0CB0 _ A1, 00000244(d)
        push    150                                     ; 0CB5 _ 68, 00000096
        push    360                                     ; 0CBA _ 68, 00000168
        push    dword [ebp-18H]                         ; 0CBF _ FF. 75, E8
        push    eax                                     ; 0CC2 _ 50
        call    sheet_slide                             ; 0CC3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CC8 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0CCB _ A1, 00000244(d)
        sub     esp, 4                                  ; 0CD0 _ 83. EC, 04
        push    3                                       ; 0CD3 _ 6A, 03
        push    dword [ebp-18H]                         ; 0CD5 _ FF. 75, E8
        push    eax                                     ; 0CD8 _ 50
        call    sheet_level_updown                      ; 0CD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CDE _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0CE1 _ 8B. 45, E8
        leave                                           ; 0CE4 _ C9
        ret                                             ; 0CE5 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0CE6 _ 55
        mov     ebp, esp                                ; 0CE7 _ 89. E5
        push    esi                                     ; 0CE9 _ 56
        push    ebx                                     ; 0CEA _ 53
        sub     esp, 176                                ; 0CEB _ 81. EC, 000000B0
        mov     eax, dword [ebp+8H]                     ; 0CF1 _ 8B. 45, 08
        mov     dword [ebp-0ACH], eax                   ; 0CF4 _ 89. 85, FFFFFF54
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0CFA _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0D00 _ 89. 45, F4
        xor     eax, eax                                ; 0D03 _ 31. C0
        call    task_now                                ; 0D05 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-9CH], eax                    ; 0D0A _ 89. 85, FFFFFF64
        mov     dword [ebp-0A4H], 8                     ; 0D10 _ C7. 85, FFFFFF5C, 00000008
        mov     dword [ebp-0A0H], 0                     ; 0D1A _ C7. 85, FFFFFF60, 00000000
        mov     eax, dword [ebp-9CH]                    ; 0D24 _ 8B. 85, FFFFFF64
        lea     edx, [eax+10H]                          ; 0D2A _ 8D. 50, 10
        push    dword [ebp-9CH]                         ; 0D2D _ FF. B5, FFFFFF64
        lea     eax, [ebp-8CH]                          ; 0D33 _ 8D. 85, FFFFFF74
        push    eax                                     ; 0D39 _ 50
        push    128                                     ; 0D3A _ 68, 00000080
        push    edx                                     ; 0D3F _ 52
        call    fifo8_init                              ; 0D40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D45 _ 83. C4, 10
        call    timer_alloc                             ; 0D48 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-98H], eax                    ; 0D4D _ 89. 85, FFFFFF68
        mov     eax, dword [ebp-9CH]                    ; 0D53 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D59 _ 83. C0, 10
        sub     esp, 4                                  ; 0D5C _ 83. EC, 04
        push    1                                       ; 0D5F _ 6A, 01
        push    eax                                     ; 0D61 _ 50
        push    dword [ebp-98H]                         ; 0D62 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0D68 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D6D _ 83. C4, 10
        sub     esp, 8                                  ; 0D70 _ 83. EC, 08
        push    50                                      ; 0D73 _ 6A, 32
        push    dword [ebp-98H]                         ; 0D75 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0D7B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D80 _ 83. C4, 10
        mov     dword [ebp-94H], 0                      ; 0D83 _ C7. 85, FFFFFF6C, 00000000
        mov     eax, dword [shtctl]                     ; 0D8D _ A1, 00000244(d)
        sub     esp, 8                                  ; 0D92 _ 83. EC, 08
        push    ?_232                                   ; 0D95 _ 68, 00000039(d)
        push    7                                       ; 0D9A _ 6A, 07
        push    28                                      ; 0D9C _ 6A, 1C
        push    8                                       ; 0D9E _ 6A, 08
        push    dword [ebp-0ACH]                        ; 0DA0 _ FF. B5, FFFFFF54
        push    eax                                     ; 0DA6 _ 50
        call    showString                              ; 0DA7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DAC _ 83. C4, 20
?_033:  call    io_cli                                  ; 0DAF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-9CH]                    ; 0DB4 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0DBA _ 83. C0, 10
        sub     esp, 12                                 ; 0DBD _ 83. EC, 0C
        push    eax                                     ; 0DC0 _ 50
        call    fifo8_status                            ; 0DC1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DC6 _ 83. C4, 10
        test    eax, eax                                ; 0DC9 _ 85. C0
        jnz     ?_034                                   ; 0DCB _ 75, 07
        call    io_sti                                  ; 0DCD _ E8, FFFFFFFC(rel)
        jmp     ?_033                                   ; 0DD2 _ EB, DB

?_034:  mov     eax, dword [ebp-9CH]                    ; 0DD4 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0DDA _ 83. C0, 10
        sub     esp, 12                                 ; 0DDD _ 83. EC, 0C
        push    eax                                     ; 0DE0 _ 50
        call    fifo8_get                               ; 0DE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DE6 _ 83. C4, 10
        mov     dword [ebp-94H], eax                    ; 0DE9 _ 89. 85, FFFFFF6C
        call    io_sti                                  ; 0DEF _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-94H], 1                      ; 0DF4 _ 83. BD, FFFFFF6C, 01
        jg      ?_037                                   ; 0DFB _ 0F 8F, 000000E9
        cmp     dword [ebp-94H], 1                      ; 0E01 _ 83. BD, FFFFFF6C, 01
        jnz     ?_035                                   ; 0E08 _ 75, 29
        mov     eax, dword [ebp-9CH]                    ; 0E0A _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0E10 _ 83. C0, 10
        sub     esp, 4                                  ; 0E13 _ 83. EC, 04
        push    0                                       ; 0E16 _ 6A, 00
        push    eax                                     ; 0E18 _ 50
        push    dword [ebp-98H]                         ; 0E19 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0E1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E24 _ 83. C4, 10
        mov     dword [ebp-0A0H], 7                     ; 0E27 _ C7. 85, FFFFFF60, 00000007
        jmp     ?_036                                   ; 0E31 _ EB, 30

?_035:  cmp     dword [ebp-94H], 0                      ; 0E33 _ 83. BD, FFFFFF6C, 00
        jnz     ?_036                                   ; 0E3A _ 75, 27
        mov     eax, dword [ebp-9CH]                    ; 0E3C _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0E42 _ 83. C0, 10
        sub     esp, 4                                  ; 0E45 _ 83. EC, 04
        push    1                                       ; 0E48 _ 6A, 01
        push    eax                                     ; 0E4A _ 50
        push    dword [ebp-98H]                         ; 0E4B _ FF. B5, FFFFFF68
        call    timer_init                              ; 0E51 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E56 _ 83. C4, 10
        mov     dword [ebp-0A0H], 0                     ; 0E59 _ C7. 85, FFFFFF60, 00000000
?_036:  sub     esp, 8                                  ; 0E63 _ 83. EC, 08
        push    50                                      ; 0E66 _ 6A, 32
        push    dword [ebp-98H]                         ; 0E68 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0E6E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E73 _ 83. C4, 10
        mov     eax, dword [ebp-0A4H]                   ; 0E76 _ 8B. 85, FFFFFF5C
        lea     esi, [eax+10H]                          ; 0E7C _ 8D. 70, 10
        mov     eax, dword [ebp-0A4H]                   ; 0E7F _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+0AH]                          ; 0E85 _ 8D. 58, 0A
        mov     eax, dword [ebp-0A0H]                   ; 0E88 _ 8B. 85, FFFFFF60
        movzx   ecx, al                                 ; 0E8E _ 0F B6. C8
        mov     eax, dword [ebp-0ACH]                   ; 0E91 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0E97 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0E9A _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0EA0 _ 8B. 00
        sub     esp, 4                                  ; 0EA2 _ 83. EC, 04
        push    42                                      ; 0EA5 _ 6A, 2A
        push    esi                                     ; 0EA7 _ 56
        push    28                                      ; 0EA8 _ 6A, 1C
        push    ebx                                     ; 0EAA _ 53
        push    ecx                                     ; 0EAB _ 51
        push    edx                                     ; 0EAC _ 52
        push    eax                                     ; 0EAD _ 50
        call    boxfill8                                ; 0EAE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EB3 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0EB6 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0EBC _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0EBF _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0EC5 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0EC8 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0ECD _ 83. EC, 08
        push    44                                      ; 0ED0 _ 6A, 2C
        push    ecx                                     ; 0ED2 _ 51
        push    28                                      ; 0ED3 _ 6A, 1C
        push    edx                                     ; 0ED5 _ 52
        push    dword [ebp-0ACH]                        ; 0ED6 _ FF. B5, FFFFFF54
        push    eax                                     ; 0EDC _ 50
        call    sheet_refresh                           ; 0EDD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EE2 _ 83. C4, 20
        jmp     ?_033                                   ; 0EE5 _ E9, FFFFFEC5

?_037:  cmp     dword [ebp-94H], 14                     ; 0EEA _ 83. BD, FFFFFF6C, 0E
        jne     ?_038                                   ; 0EF1 _ 0F 85, 000000E7
        cmp     dword [ebp-0A4H], 15                    ; 0EF7 _ 83. BD, FFFFFF5C, 0F
        jle     ?_038                                   ; 0EFE _ 0F 8E, 000000DA
        mov     eax, dword [ebp-0A4H]                   ; 0F04 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0F0A _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0F0D _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0F13 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0F16 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0F1C _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0F1F _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0F25 _ 8B. 00
        sub     esp, 4                                  ; 0F27 _ 83. EC, 04
        push    42                                      ; 0F2A _ 6A, 2A
        push    ebx                                     ; 0F2C _ 53
        push    28                                      ; 0F2D _ 6A, 1C
        push    ecx                                     ; 0F2F _ 51
        push    0                                       ; 0F30 _ 6A, 00
        push    edx                                     ; 0F32 _ 52
        push    eax                                     ; 0F33 _ 50
        call    boxfill8                                ; 0F34 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F39 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0F3C _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0F42 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0F45 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0F4B _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0F4E _ A1, 00000244(d)
        sub     esp, 8                                  ; 0F53 _ 83. EC, 08
        push    44                                      ; 0F56 _ 6A, 2C
        push    ecx                                     ; 0F58 _ 51
        push    28                                      ; 0F59 _ 6A, 1C
        push    edx                                     ; 0F5B _ 52
        push    dword [ebp-0ACH]                        ; 0F5C _ FF. B5, FFFFFF54
        push    eax                                     ; 0F62 _ 50
        call    sheet_refresh                           ; 0F63 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F68 _ 83. C4, 20
        sub     dword [ebp-0A4H], 8                     ; 0F6B _ 83. AD, FFFFFF5C, 08
        mov     eax, dword [ebp-0A4H]                   ; 0F72 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0F78 _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0F7B _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0F81 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0F84 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0F8A _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0F8D _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0F93 _ 8B. 00
        sub     esp, 4                                  ; 0F95 _ 83. EC, 04
        push    42                                      ; 0F98 _ 6A, 2A
        push    ebx                                     ; 0F9A _ 53
        push    28                                      ; 0F9B _ 6A, 1C
        push    ecx                                     ; 0F9D _ 51
        push    0                                       ; 0F9E _ 6A, 00
        push    edx                                     ; 0FA0 _ 52
        push    eax                                     ; 0FA1 _ 50
        call    boxfill8                                ; 0FA2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FA7 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0FAA _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0FB0 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0FB3 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0FB9 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0FBC _ A1, 00000244(d)
        sub     esp, 8                                  ; 0FC1 _ 83. EC, 08
        push    44                                      ; 0FC4 _ 6A, 2C
        push    ecx                                     ; 0FC6 _ 51
        push    28                                      ; 0FC7 _ 6A, 1C
        push    edx                                     ; 0FC9 _ 52
        push    dword [ebp-0ACH]                        ; 0FCA _ FF. B5, FFFFFF54
        push    eax                                     ; 0FD0 _ 50
        call    sheet_refresh                           ; 0FD1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FD6 _ 83. C4, 20
        jmp     ?_039                                   ; 0FD9 _ E9, 0000010C

?_038:  sub     esp, 12                                 ; 0FDE _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0FE1 _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0FE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FEC _ 83. C4, 10
        test    al, al                                  ; 0FEF _ 84. C0
        je      ?_033                                   ; 0FF1 _ 0F 84, FFFFFDB8
        mov     eax, dword [ebp-0ACH]                   ; 0FF7 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax+4H]                     ; 0FFD _ 8B. 40, 04
        sub     eax, 100                                ; 1000 _ 83. E8, 64
        cmp     dword [ebp-0A4H], eax                   ; 1003 _ 39. 85, FFFFFF5C
        jg      ?_033                                   ; 1009 _ 0F 8F, FFFFFDA0
        mov     edx, dword [sheet_back]                 ; 100F _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1015 _ A1, 00000244(d)
        sub     esp, 8                                  ; 101A _ 83. EC, 08
        push    ?_233                                   ; 101D _ 68, 0000003B(d)
        push    11                                      ; 1022 _ 6A, 0B
        push    16                                      ; 1024 _ 6A, 10
        push    0                                       ; 1026 _ 6A, 00
        push    edx                                     ; 1028 _ 52
        push    eax                                     ; 1029 _ 50
        call    showString                              ; 102A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 102F _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 1032 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+10H]                          ; 1038 _ 8D. 58, 10
        mov     eax, dword [ebp-0A4H]                   ; 103B _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 1041 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 1044 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 104A _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 104D _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 1053 _ 8B. 00
        sub     esp, 4                                  ; 1055 _ 83. EC, 04
        push    42                                      ; 1058 _ 6A, 2A
        push    ebx                                     ; 105A _ 53
        push    28                                      ; 105B _ 6A, 1C
        push    ecx                                     ; 105D _ 51
        push    0                                       ; 105E _ 6A, 00
        push    edx                                     ; 1060 _ 52
        push    eax                                     ; 1061 _ 50
        call    boxfill8                                ; 1062 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1067 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 106A _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 1070 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 1073 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 1079 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 107C _ A1, 00000244(d)
        sub     esp, 8                                  ; 1081 _ 83. EC, 08
        push    44                                      ; 1084 _ 6A, 2C
        push    ecx                                     ; 1086 _ 51
        push    28                                      ; 1087 _ 6A, 1C
        push    edx                                     ; 1089 _ 52
        push    dword [ebp-0ACH]                        ; 108A _ FF. B5, FFFFFF54
        push    eax                                     ; 1090 _ 50
        call    sheet_refresh                           ; 1091 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1096 _ 83. C4, 20
        sub     esp, 12                                 ; 1099 _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 109C _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 10A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10A7 _ 83. C4, 10
        mov     byte [ebp-8EH], al                      ; 10AA _ 88. 85, FFFFFF72
        mov     byte [ebp-8DH], 0                       ; 10B0 _ C6. 85, FFFFFF73, 00
        mov     eax, dword [ebp-0A4H]                   ; 10B7 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 10BD _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 10C0 _ A1, 00000244(d)
        sub     esp, 8                                  ; 10C5 _ 83. EC, 08
        lea     edx, [ebp-8EH]                          ; 10C8 _ 8D. 95, FFFFFF72
        push    edx                                     ; 10CE _ 52
        push    7                                       ; 10CF _ 6A, 07
        push    28                                      ; 10D1 _ 6A, 1C
        push    ecx                                     ; 10D3 _ 51
        push    dword [ebp-0ACH]                        ; 10D4 _ FF. B5, FFFFFF54
        push    eax                                     ; 10DA _ 50
        call    showString                              ; 10DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10E0 _ 83. C4, 20
        add     dword [ebp-0A4H], 8                     ; 10E3 _ 83. 85, FFFFFF5C, 08
?_039:  jmp     ?_033                                   ; 10EA _ E9, FFFFFCC0
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 10EF _ 55
        mov     ebp, esp                                ; 10F0 _ 89. E5
        sub     esp, 88                                 ; 10F2 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 10F5 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 10F8 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 10FB _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 1101 _ 89. 45, F4
        xor     eax, eax                                ; 1104 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 1106 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 110C _ A1, 00000244(d)
        sub     esp, 8                                  ; 1111 _ 83. EC, 08
        push    ?_234                                   ; 1114 _ 68, 00000040(d)
        push    7                                       ; 1119 _ 6A, 07
        push    144                                     ; 111B _ 68, 00000090
        push    0                                       ; 1120 _ 6A, 00
        push    edx                                     ; 1122 _ 52
        push    eax                                     ; 1123 _ 50
        call    showString                              ; 1124 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1129 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 112C _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 1133 _ C7. 45, C8, 00000000
        push    0                                       ; 113A _ 6A, 00
        lea     eax, [ebp-14H]                          ; 113C _ 8D. 45, EC
        push    eax                                     ; 113F _ 50
        push    8                                       ; 1140 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 1142 _ 8D. 45, D0
        push    eax                                     ; 1145 _ 50
        call    fifo8_init                              ; 1146 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 114B _ 83. C4, 10
        call    timer_alloc                             ; 114E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 1153 _ 89. 45, C4
        sub     esp, 4                                  ; 1156 _ 83. EC, 04
        push    123                                     ; 1159 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 115B _ 8D. 45, D0
        push    eax                                     ; 115E _ 50
        push    dword [ebp-3CH]                         ; 115F _ FF. 75, C4
        call    timer_init                              ; 1162 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1167 _ 83. C4, 10
        sub     esp, 8                                  ; 116A _ 83. EC, 08
        push    100                                     ; 116D _ 6A, 64
        push    dword [ebp-3CH]                         ; 116F _ FF. 75, C4
        call    timer_setTime                           ; 1172 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1177 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 117A _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 1181 _ C7. 45, C0, 00000000
?_040:  add     dword [ebp-40H], 1                      ; 1188 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 118C _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 118F _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 1192 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 1195 _ 8B. 00
        sub     esp, 4                                  ; 1197 _ 83. EC, 04
        push    38                                      ; 119A _ 6A, 26
        push    100                                     ; 119C _ 6A, 64
        push    23                                      ; 119E _ 6A, 17
        push    8                                       ; 11A0 _ 6A, 08
        push    8                                       ; 11A2 _ 6A, 08
        push    edx                                     ; 11A4 _ 52
        push    eax                                     ; 11A5 _ 50
        call    boxfill8                                ; 11A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11AB _ 83. C4, 20
        sub     esp, 12                                 ; 11AE _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 11B1 _ FF. 75, C0
        call    intToHexStr                             ; 11B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11B9 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 11BC _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 11BF _ A1, 00000244(d)
        sub     esp, 8                                  ; 11C4 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 11C7 _ FF. 75, CC
        push    10                                      ; 11CA _ 6A, 0A
        push    23                                      ; 11CC _ 6A, 17
        push    8                                       ; 11CE _ 6A, 08
        push    dword [ebp-4CH]                         ; 11D0 _ FF. 75, B4
        push    eax                                     ; 11D3 _ 50
        call    showString                              ; 11D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11D9 _ 83. C4, 20
        call    io_cli                                  ; 11DC _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 11E1 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 11E4 _ 8D. 45, D0
        push    eax                                     ; 11E7 _ 50
        call    fifo8_status                            ; 11E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11ED _ 83. C4, 10
        test    eax, eax                                ; 11F0 _ 85. C0
        jnz     ?_041                                   ; 11F2 _ 75, 07
        call    io_sti                                  ; 11F4 _ E8, FFFFFFFC(rel)
        jmp     ?_040                                   ; 11F9 _ EB, 8D

?_041:  sub     esp, 12                                 ; 11FB _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 11FE _ 8D. 45, D0
        push    eax                                     ; 1201 _ 50
        call    fifo8_get                               ; 1202 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1207 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 120A _ 89. 45, C8
        call    io_sti                                  ; 120D _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 1212 _ 83. 7D, C8, 7B
        jne     ?_040                                   ; 1216 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 121C _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1222 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1227 _ 83. EC, 08
        push    ?_235                                   ; 122A _ 68, 0000004D(d)
        push    7                                       ; 122F _ 6A, 07
        push    176                                     ; 1231 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 1236 _ FF. 75, BC
        push    edx                                     ; 1239 _ 52
        push    eax                                     ; 123A _ 50
        call    showString                              ; 123B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1240 _ 83. C4, 20
        sub     esp, 8                                  ; 1243 _ 83. EC, 08
        push    100                                     ; 1246 _ 6A, 64
        push    dword [ebp-3CH]                         ; 1248 _ FF. 75, C4
        call    timer_setTime                           ; 124B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1250 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 1253 _ 83. 45, BC, 08
        jmp     ?_040                                   ; 1257 _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 125C _ 55
        mov     ebp, esp                                ; 125D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 125F _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1262 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1268 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 126B _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1271 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1274 _ 66: C7. 40, 06, 01E0
        nop                                             ; 127A _ 90
        pop     ebp                                     ; 127B _ 5D
        ret                                             ; 127C _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 127D _ 55
        mov     ebp, esp                                ; 127E _ 89. E5
        push    ebx                                     ; 1280 _ 53
        sub     esp, 36                                 ; 1281 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 1284 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1287 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 128A _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 128D _ 89. 45, F4
        jmp     ?_043                                   ; 1290 _ EB, 3E

?_042:  mov     eax, dword [ebp+1CH]                    ; 1292 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1295 _ 0F B6. 00
        movzx   eax, al                                 ; 1298 _ 0F B6. C0
        shl     eax, 4                                  ; 129B _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 129E _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 12A4 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 12A8 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 12AB _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 12AE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 12B1 _ 8B. 00
        sub     esp, 8                                  ; 12B3 _ 83. EC, 08
        push    ebx                                     ; 12B6 _ 53
        push    ecx                                     ; 12B7 _ 51
        push    dword [ebp+14H]                         ; 12B8 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 12BB _ FF. 75, 10
        push    edx                                     ; 12BE _ 52
        push    eax                                     ; 12BF _ 50
        call    showFont8                               ; 12C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12C5 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 12C8 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 12CC _ 83. 45, 1C, 01
?_043:  mov     eax, dword [ebp+1CH]                    ; 12D0 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 12D3 _ 0F B6. 00
        test    al, al                                  ; 12D6 _ 84. C0
        jnz     ?_042                                   ; 12D8 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 12DA _ 8B. 45, 14
        add     eax, 16                                 ; 12DD _ 83. C0, 10
        sub     esp, 8                                  ; 12E0 _ 83. EC, 08
        push    eax                                     ; 12E3 _ 50
        push    dword [ebp+10H]                         ; 12E4 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 12E7 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 12EA _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 12ED _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12F0 _ FF. 75, 08
        call    sheet_refresh                           ; 12F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12F8 _ 83. C4, 20
        nop                                             ; 12FB _ 90
        mov     ebx, dword [ebp-4H]                     ; 12FC _ 8B. 5D, FC
        leave                                           ; 12FF _ C9
        ret                                             ; 1300 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 1301 _ 55
        mov     ebp, esp                                ; 1302 _ 89. E5
        push    ebx                                     ; 1304 _ 53
        sub     esp, 4                                  ; 1305 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 1308 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 130B _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 130E _ 8B. 45, 0C
        sub     eax, 1                                  ; 1311 _ 83. E8, 01
        sub     esp, 4                                  ; 1314 _ 83. EC, 04
        push    edx                                     ; 1317 _ 52
        push    eax                                     ; 1318 _ 50
        push    0                                       ; 1319 _ 6A, 00
        push    0                                       ; 131B _ 6A, 00
        push    14                                      ; 131D _ 6A, 0E
        push    dword [ebp+0CH]                         ; 131F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1322 _ FF. 75, 08
        call    boxfill8                                ; 1325 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 132A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 132D _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 1330 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 1333 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1336 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1339 _ 8B. 45, 10
        sub     eax, 24                                 ; 133C _ 83. E8, 18
        sub     esp, 4                                  ; 133F _ 83. EC, 04
        push    ecx                                     ; 1342 _ 51
        push    edx                                     ; 1343 _ 52
        push    eax                                     ; 1344 _ 50
        push    0                                       ; 1345 _ 6A, 00
        push    8                                       ; 1347 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1349 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 134C _ FF. 75, 08
        call    boxfill8                                ; 134F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1354 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1357 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 135A _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 135D _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1360 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1363 _ 8B. 45, 10
        sub     eax, 23                                 ; 1366 _ 83. E8, 17
        sub     esp, 4                                  ; 1369 _ 83. EC, 04
        push    ecx                                     ; 136C _ 51
        push    edx                                     ; 136D _ 52
        push    eax                                     ; 136E _ 50
        push    0                                       ; 136F _ 6A, 00
        push    7                                       ; 1371 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1373 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1376 _ FF. 75, 08
        call    boxfill8                                ; 1379 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 137E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1381 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1384 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1387 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 138A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 138D _ 8B. 45, 10
        sub     eax, 22                                 ; 1390 _ 83. E8, 16
        sub     esp, 4                                  ; 1393 _ 83. EC, 04
        push    ecx                                     ; 1396 _ 51
        push    edx                                     ; 1397 _ 52
        push    eax                                     ; 1398 _ 50
        push    0                                       ; 1399 _ 6A, 00
        push    8                                       ; 139B _ 6A, 08
        push    dword [ebp+0CH]                         ; 139D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13A0 _ FF. 75, 08
        call    boxfill8                                ; 13A3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13AB _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 13AE _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 13B1 _ 8B. 45, 10
        sub     eax, 20                                 ; 13B4 _ 83. E8, 14
        sub     esp, 4                                  ; 13B7 _ 83. EC, 04
        push    edx                                     ; 13BA _ 52
        push    51                                      ; 13BB _ 6A, 33
        push    eax                                     ; 13BD _ 50
        push    10                                      ; 13BE _ 6A, 0A
        push    7                                       ; 13C0 _ 6A, 07
        push    dword [ebp+0CH]                         ; 13C2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13C5 _ FF. 75, 08
        call    boxfill8                                ; 13C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13CD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13D0 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 13D3 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 13D6 _ 8B. 45, 10
        sub     eax, 20                                 ; 13D9 _ 83. E8, 14
        sub     esp, 4                                  ; 13DC _ 83. EC, 04
        push    edx                                     ; 13DF _ 52
        push    9                                       ; 13E0 _ 6A, 09
        push    eax                                     ; 13E2 _ 50
        push    9                                       ; 13E3 _ 6A, 09
        push    7                                       ; 13E5 _ 6A, 07
        push    dword [ebp+0CH]                         ; 13E7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13EA _ FF. 75, 08
        call    boxfill8                                ; 13ED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13F2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13F5 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 13F8 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 13FB _ 8B. 45, 10
        sub     eax, 4                                  ; 13FE _ 83. E8, 04
        sub     esp, 4                                  ; 1401 _ 83. EC, 04
        push    edx                                     ; 1404 _ 52
        push    50                                      ; 1405 _ 6A, 32
        push    eax                                     ; 1407 _ 50
        push    10                                      ; 1408 _ 6A, 0A
        push    15                                      ; 140A _ 6A, 0F
        push    dword [ebp+0CH]                         ; 140C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 140F _ FF. 75, 08
        call    boxfill8                                ; 1412 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1417 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 141A _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 141D _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1420 _ 8B. 45, 10
        sub     eax, 19                                 ; 1423 _ 83. E8, 13
        sub     esp, 4                                  ; 1426 _ 83. EC, 04
        push    edx                                     ; 1429 _ 52
        push    50                                      ; 142A _ 6A, 32
        push    eax                                     ; 142C _ 50
        push    50                                      ; 142D _ 6A, 32
        push    15                                      ; 142F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1431 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1434 _ FF. 75, 08
        call    boxfill8                                ; 1437 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 143C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 143F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1442 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1445 _ 8B. 45, 10
        sub     eax, 3                                  ; 1448 _ 83. E8, 03
        sub     esp, 4                                  ; 144B _ 83. EC, 04
        push    edx                                     ; 144E _ 52
        push    50                                      ; 144F _ 6A, 32
        push    eax                                     ; 1451 _ 50
        push    10                                      ; 1452 _ 6A, 0A
        push    0                                       ; 1454 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1456 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1459 _ FF. 75, 08
        call    boxfill8                                ; 145C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1461 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1464 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1467 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 146A _ 8B. 45, 10
        sub     eax, 20                                 ; 146D _ 83. E8, 14
        sub     esp, 4                                  ; 1470 _ 83. EC, 04
        push    edx                                     ; 1473 _ 52
        push    51                                      ; 1474 _ 6A, 33
        push    eax                                     ; 1476 _ 50
        push    51                                      ; 1477 _ 6A, 33
        push    0                                       ; 1479 _ 6A, 00
        push    dword [ebp+0CH]                         ; 147B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 147E _ FF. 75, 08
        call    boxfill8                                ; 1481 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1486 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1489 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 148C _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 148F _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1492 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1495 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1498 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 149B _ 8B. 45, 0C
        sub     eax, 47                                 ; 149E _ 83. E8, 2F
        sub     esp, 4                                  ; 14A1 _ 83. EC, 04
        push    ebx                                     ; 14A4 _ 53
        push    ecx                                     ; 14A5 _ 51
        push    edx                                     ; 14A6 _ 52
        push    eax                                     ; 14A7 _ 50
        push    15                                      ; 14A8 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 14AA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14AD _ FF. 75, 08
        call    boxfill8                                ; 14B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14B5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 14B8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 14BB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 14BE _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 14C1 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 14C4 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 14C7 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 14CA _ 8B. 45, 0C
        sub     eax, 47                                 ; 14CD _ 83. E8, 2F
        sub     esp, 4                                  ; 14D0 _ 83. EC, 04
        push    ebx                                     ; 14D3 _ 53
        push    ecx                                     ; 14D4 _ 51
        push    edx                                     ; 14D5 _ 52
        push    eax                                     ; 14D6 _ 50
        push    15                                      ; 14D7 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 14D9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14DC _ FF. 75, 08
        call    boxfill8                                ; 14DF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14E4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 14E7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 14EA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 14ED _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 14F0 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 14F3 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 14F6 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 14F9 _ 8B. 45, 0C
        sub     eax, 47                                 ; 14FC _ 83. E8, 2F
        sub     esp, 4                                  ; 14FF _ 83. EC, 04
        push    ebx                                     ; 1502 _ 53
        push    ecx                                     ; 1503 _ 51
        push    edx                                     ; 1504 _ 52
        push    eax                                     ; 1505 _ 50
        push    7                                       ; 1506 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1508 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 150B _ FF. 75, 08
        call    boxfill8                                ; 150E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1513 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1516 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1519 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 151C _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 151F _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1522 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1525 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1528 _ 8B. 45, 0C
        sub     eax, 3                                  ; 152B _ 83. E8, 03
        sub     esp, 4                                  ; 152E _ 83. EC, 04
        push    ebx                                     ; 1531 _ 53
        push    ecx                                     ; 1532 _ 51
        push    edx                                     ; 1533 _ 52
        push    eax                                     ; 1534 _ 50
        push    7                                       ; 1535 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1537 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 153A _ FF. 75, 08
        call    boxfill8                                ; 153D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1542 _ 83. C4, 20
        nop                                             ; 1545 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1546 _ 8B. 5D, FC
        leave                                           ; 1549 _ C9
        ret                                             ; 154A _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 154B _ 55
        mov     ebp, esp                                ; 154C _ 89. E5
        sub     esp, 24                                 ; 154E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1551 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1556 _ 89. 45, EC
        movzx   eax, word [?_244]                       ; 1559 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1560 _ 98
        mov     dword [ebp-10H], eax                    ; 1561 _ 89. 45, F0
        movzx   eax, word [?_245]                       ; 1564 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 156B _ 98
        mov     dword [ebp-0CH], eax                    ; 156C _ 89. 45, F4
        sub     esp, 4                                  ; 156F _ 83. EC, 04
        push    table_rgb.2362                          ; 1572 _ 68, 00000120(d)
        push    15                                      ; 1577 _ 6A, 0F
        push    0                                       ; 1579 _ 6A, 00
        call    set_palette                             ; 157B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1580 _ 83. C4, 10
        nop                                             ; 1583 _ 90
        leave                                           ; 1584 _ C9
        ret                                             ; 1585 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1586 _ 55
        mov     ebp, esp                                ; 1587 _ 89. E5
        sub     esp, 24                                 ; 1589 _ 83. EC, 18
        call    io_load_eflags                          ; 158C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1591 _ 89. 45, F4
        call    io_cli                                  ; 1594 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1599 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 159C _ FF. 75, 08
        push    968                                     ; 159F _ 68, 000003C8
        call    io_out8                                 ; 15A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15A9 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 15AC _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 15AF _ 89. 45, F0
        jmp     ?_045                                   ; 15B2 _ EB, 65

?_044:  mov     eax, dword [ebp+10H]                    ; 15B4 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 15B7 _ 0F B6. 00
        shr     al, 2                                   ; 15BA _ C0. E8, 02
        movzx   eax, al                                 ; 15BD _ 0F B6. C0
        sub     esp, 8                                  ; 15C0 _ 83. EC, 08
        push    eax                                     ; 15C3 _ 50
        push    969                                     ; 15C4 _ 68, 000003C9
        call    io_out8                                 ; 15C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15CE _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 15D1 _ 8B. 45, 10
        add     eax, 1                                  ; 15D4 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 15D7 _ 0F B6. 00
        shr     al, 2                                   ; 15DA _ C0. E8, 02
        movzx   eax, al                                 ; 15DD _ 0F B6. C0
        sub     esp, 8                                  ; 15E0 _ 83. EC, 08
        push    eax                                     ; 15E3 _ 50
        push    969                                     ; 15E4 _ 68, 000003C9
        call    io_out8                                 ; 15E9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15EE _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 15F1 _ 8B. 45, 10
        add     eax, 2                                  ; 15F4 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 15F7 _ 0F B6. 00
        shr     al, 2                                   ; 15FA _ C0. E8, 02
        movzx   eax, al                                 ; 15FD _ 0F B6. C0
        sub     esp, 8                                  ; 1600 _ 83. EC, 08
        push    eax                                     ; 1603 _ 50
        push    969                                     ; 1604 _ 68, 000003C9
        call    io_out8                                 ; 1609 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 160E _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1611 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 1615 _ 83. 45, F0, 01
?_045:  mov     eax, dword [ebp-10H]                    ; 1619 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 161C _ 3B. 45, 0C
        jle     ?_044                                   ; 161F _ 7E, 93
        sub     esp, 12                                 ; 1621 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 1624 _ FF. 75, F4
        call    io_store_eflags                         ; 1627 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 162C _ 83. C4, 10
        nop                                             ; 162F _ 90
        leave                                           ; 1630 _ C9
        ret                                             ; 1631 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1632 _ 55
        mov     ebp, esp                                ; 1633 _ 89. E5
        sub     esp, 20                                 ; 1635 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1638 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 163B _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 163E _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1641 _ 89. 45, FC
        jmp     ?_049                                   ; 1644 _ EB, 33

?_046:  mov     eax, dword [ebp+14H]                    ; 1646 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1649 _ 89. 45, F8
        jmp     ?_048                                   ; 164C _ EB, 1F

?_047:  mov     eax, dword [ebp-4H]                     ; 164E _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1651 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1655 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1657 _ 8B. 45, F8
        add     eax, edx                                ; 165A _ 01. D0
        mov     edx, eax                                ; 165C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 165E _ 8B. 45, 08
        add     edx, eax                                ; 1661 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1663 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1667 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1669 _ 83. 45, F8, 01
?_048:  mov     eax, dword [ebp-8H]                     ; 166D _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1670 _ 3B. 45, 1C
        jle     ?_047                                   ; 1673 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1675 _ 83. 45, FC, 01
?_049:  mov     eax, dword [ebp-4H]                     ; 1679 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 167C _ 3B. 45, 20
        jle     ?_046                                   ; 167F _ 7E, C5
        nop                                             ; 1681 _ 90
        leave                                           ; 1682 _ C9
        ret                                             ; 1683 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1684 _ 55
        mov     ebp, esp                                ; 1685 _ 89. E5
        push    edi                                     ; 1687 _ 57
        push    esi                                     ; 1688 _ 56
        push    ebx                                     ; 1689 _ 53
        sub     esp, 16                                 ; 168A _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 168D _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1690 _ 8B. 45, 14
        add     eax, edx                                ; 1693 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1695 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1698 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 169B _ 8B. 45, 18
        add     eax, edx                                ; 169E _ 01. D0
        mov     dword [ebp-10H], eax                    ; 16A0 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 16A3 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 16A6 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 16A9 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 16AC _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 16AF _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 16B2 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 16B5 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 16B8 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 16BB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16BE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16C1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16C4 _ 8B. 00
        push    edi                                     ; 16C6 _ 57
        push    esi                                     ; 16C7 _ 56
        push    ebx                                     ; 16C8 _ 53
        push    ecx                                     ; 16C9 _ 51
        push    15                                      ; 16CA _ 6A, 0F
        push    edx                                     ; 16CC _ 52
        push    eax                                     ; 16CD _ 50
        call    boxfill8                                ; 16CE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16D3 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 16D6 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 16D9 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 16DC _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 16DF _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 16E2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 16E5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 16E8 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 16EB _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 16EE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16F1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16F4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16F7 _ 8B. 00
        push    edi                                     ; 16F9 _ 57
        push    esi                                     ; 16FA _ 56
        push    ebx                                     ; 16FB _ 53
        push    ecx                                     ; 16FC _ 51
        push    15                                      ; 16FD _ 6A, 0F
        push    edx                                     ; 16FF _ 52
        push    eax                                     ; 1700 _ 50
        call    boxfill8                                ; 1701 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1706 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1709 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 170C _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 170F _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1712 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1715 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1718 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 171B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 171E _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1721 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1724 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1727 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 172A _ 8B. 00
        push    edi                                     ; 172C _ 57
        push    esi                                     ; 172D _ 56
        push    ebx                                     ; 172E _ 53
        push    ecx                                     ; 172F _ 51
        push    7                                       ; 1730 _ 6A, 07
        push    edx                                     ; 1732 _ 52
        push    eax                                     ; 1733 _ 50
        call    boxfill8                                ; 1734 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1739 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 173C _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 173F _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1742 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1745 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1748 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 174B _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 174E _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1751 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1754 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1757 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 175A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 175D _ 8B. 00
        push    edi                                     ; 175F _ 57
        push    esi                                     ; 1760 _ 56
        push    ebx                                     ; 1761 _ 53
        push    ecx                                     ; 1762 _ 51
        push    7                                       ; 1763 _ 6A, 07
        push    edx                                     ; 1765 _ 52
        push    eax                                     ; 1766 _ 50
        call    boxfill8                                ; 1767 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 176C _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 176F _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1772 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1775 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1778 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 177B _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 177E _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1781 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1784 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1787 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 178A _ 8B. 00
        push    esi                                     ; 178C _ 56
        push    dword [ebp-14H]                         ; 178D _ FF. 75, EC
        push    ebx                                     ; 1790 _ 53
        push    ecx                                     ; 1791 _ 51
        push    0                                       ; 1792 _ 6A, 00
        push    edx                                     ; 1794 _ 52
        push    eax                                     ; 1795 _ 50
        call    boxfill8                                ; 1796 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 179B _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 179E _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 17A1 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 17A4 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 17A7 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 17AA _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 17AD _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 17B0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 17B3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17B6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17B9 _ 8B. 00
        push    dword [ebp-10H]                         ; 17BB _ FF. 75, F0
        push    esi                                     ; 17BE _ 56
        push    ebx                                     ; 17BF _ 53
        push    ecx                                     ; 17C0 _ 51
        push    0                                       ; 17C1 _ 6A, 00
        push    edx                                     ; 17C3 _ 52
        push    eax                                     ; 17C4 _ 50
        call    boxfill8                                ; 17C5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17CA _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 17CD _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 17D0 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 17D3 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 17D6 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 17D9 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 17DC _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 17DF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 17E2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17E5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17E8 _ 8B. 00
        push    esi                                     ; 17EA _ 56
        push    dword [ebp-14H]                         ; 17EB _ FF. 75, EC
        push    ebx                                     ; 17EE _ 53
        push    ecx                                     ; 17EF _ 51
        push    8                                       ; 17F0 _ 6A, 08
        push    edx                                     ; 17F2 _ 52
        push    eax                                     ; 17F3 _ 50
        call    boxfill8                                ; 17F4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17F9 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 17FC _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 17FF _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1802 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1805 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1808 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 180B _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 180E _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1811 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1814 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1817 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 181A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 181D _ 8B. 00
        push    edi                                     ; 181F _ 57
        push    esi                                     ; 1820 _ 56
        push    ebx                                     ; 1821 _ 53
        push    ecx                                     ; 1822 _ 51
        push    8                                       ; 1823 _ 6A, 08
        push    edx                                     ; 1825 _ 52
        push    eax                                     ; 1826 _ 50
        call    boxfill8                                ; 1827 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 182C _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 182F _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1832 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1835 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1838 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 183B _ 8B. 45, 1C
        movzx   ecx, al                                 ; 183E _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1841 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1844 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1847 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 184A _ 8B. 00
        push    dword [ebp-10H]                         ; 184C _ FF. 75, F0
        push    dword [ebp-14H]                         ; 184F _ FF. 75, EC
        push    esi                                     ; 1852 _ 56
        push    ebx                                     ; 1853 _ 53
        push    ecx                                     ; 1854 _ 51
        push    edx                                     ; 1855 _ 52
        push    eax                                     ; 1856 _ 50
        call    boxfill8                                ; 1857 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 185C _ 83. C4, 1C
        nop                                             ; 185F _ 90
        lea     esp, [ebp-0CH]                          ; 1860 _ 8D. 65, F4
        pop     ebx                                     ; 1863 _ 5B
        pop     esi                                     ; 1864 _ 5E
        pop     edi                                     ; 1865 _ 5F
        pop     ebp                                     ; 1866 _ 5D
        ret                                             ; 1867 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1868 _ 55
        mov     ebp, esp                                ; 1869 _ 89. E5
        sub     esp, 20                                 ; 186B _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 186E _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1871 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1874 _ C7. 45, FC, 00000000
        jmp     ?_059                                   ; 187B _ E9, 0000016C

?_050:  mov     edx, dword [ebp-4H]                     ; 1880 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1883 _ 8B. 45, 1C
        add     eax, edx                                ; 1886 _ 01. D0
        movzx   eax, byte [eax]                         ; 1888 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 188B _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 188E _ 80. 7D, FB, 00
        jns     ?_051                                   ; 1892 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1894 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1897 _ 8B. 45, FC
        add     eax, edx                                ; 189A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 189C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18A0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18A2 _ 8B. 45, 10
        add     eax, edx                                ; 18A5 _ 01. D0
        mov     edx, eax                                ; 18A7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18A9 _ 8B. 45, 08
        add     edx, eax                                ; 18AC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18AE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18B2 _ 88. 02
?_051:  movsx   eax, byte [ebp-5H]                      ; 18B4 _ 0F BE. 45, FB
        and     eax, 40H                                ; 18B8 _ 83. E0, 40
        test    eax, eax                                ; 18BB _ 85. C0
        jz      ?_052                                   ; 18BD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 18BF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18C2 _ 8B. 45, FC
        add     eax, edx                                ; 18C5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18C7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18CB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18CD _ 8B. 45, 10
        add     eax, edx                                ; 18D0 _ 01. D0
        lea     edx, [eax+1H]                           ; 18D2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 18D5 _ 8B. 45, 08
        add     edx, eax                                ; 18D8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18DA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18DE _ 88. 02
?_052:  movsx   eax, byte [ebp-5H]                      ; 18E0 _ 0F BE. 45, FB
        and     eax, 20H                                ; 18E4 _ 83. E0, 20
        test    eax, eax                                ; 18E7 _ 85. C0
        jz      ?_053                                   ; 18E9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 18EB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18EE _ 8B. 45, FC
        add     eax, edx                                ; 18F1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18F3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18F7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18F9 _ 8B. 45, 10
        add     eax, edx                                ; 18FC _ 01. D0
        lea     edx, [eax+2H]                           ; 18FE _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1901 _ 8B. 45, 08
        add     edx, eax                                ; 1904 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1906 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 190A _ 88. 02
?_053:  movsx   eax, byte [ebp-5H]                      ; 190C _ 0F BE. 45, FB
        and     eax, 10H                                ; 1910 _ 83. E0, 10
        test    eax, eax                                ; 1913 _ 85. C0
        jz      ?_054                                   ; 1915 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1917 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 191A _ 8B. 45, FC
        add     eax, edx                                ; 191D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 191F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1923 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1925 _ 8B. 45, 10
        add     eax, edx                                ; 1928 _ 01. D0
        lea     edx, [eax+3H]                           ; 192A _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 192D _ 8B. 45, 08
        add     edx, eax                                ; 1930 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1932 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1936 _ 88. 02
?_054:  movsx   eax, byte [ebp-5H]                      ; 1938 _ 0F BE. 45, FB
        and     eax, 08H                                ; 193C _ 83. E0, 08
        test    eax, eax                                ; 193F _ 85. C0
        jz      ?_055                                   ; 1941 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1943 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1946 _ 8B. 45, FC
        add     eax, edx                                ; 1949 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 194B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 194F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1951 _ 8B. 45, 10
        add     eax, edx                                ; 1954 _ 01. D0
        lea     edx, [eax+4H]                           ; 1956 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1959 _ 8B. 45, 08
        add     edx, eax                                ; 195C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 195E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1962 _ 88. 02
?_055:  movsx   eax, byte [ebp-5H]                      ; 1964 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1968 _ 83. E0, 04
        test    eax, eax                                ; 196B _ 85. C0
        jz      ?_056                                   ; 196D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 196F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1972 _ 8B. 45, FC
        add     eax, edx                                ; 1975 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1977 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 197B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 197D _ 8B. 45, 10
        add     eax, edx                                ; 1980 _ 01. D0
        lea     edx, [eax+5H]                           ; 1982 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1985 _ 8B. 45, 08
        add     edx, eax                                ; 1988 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 198A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 198E _ 88. 02
?_056:  movsx   eax, byte [ebp-5H]                      ; 1990 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1994 _ 83. E0, 02
        test    eax, eax                                ; 1997 _ 85. C0
        jz      ?_057                                   ; 1999 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 199B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 199E _ 8B. 45, FC
        add     eax, edx                                ; 19A1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 19A3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 19A7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 19A9 _ 8B. 45, 10
        add     eax, edx                                ; 19AC _ 01. D0
        lea     edx, [eax+6H]                           ; 19AE _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 19B1 _ 8B. 45, 08
        add     edx, eax                                ; 19B4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 19B6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 19BA _ 88. 02
?_057:  movsx   eax, byte [ebp-5H]                      ; 19BC _ 0F BE. 45, FB
        and     eax, 01H                                ; 19C0 _ 83. E0, 01
        test    eax, eax                                ; 19C3 _ 85. C0
        jz      ?_058                                   ; 19C5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 19C7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 19CA _ 8B. 45, FC
        add     eax, edx                                ; 19CD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 19CF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 19D3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 19D5 _ 8B. 45, 10
        add     eax, edx                                ; 19D8 _ 01. D0
        lea     edx, [eax+7H]                           ; 19DA _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 19DD _ 8B. 45, 08
        add     edx, eax                                ; 19E0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 19E2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 19E6 _ 88. 02
?_058:  add     dword [ebp-4H], 1                       ; 19E8 _ 83. 45, FC, 01
?_059:  cmp     dword [ebp-4H], 15                      ; 19EC _ 83. 7D, FC, 0F
        jle     ?_050                                   ; 19F0 _ 0F 8E, FFFFFE8A
        nop                                             ; 19F6 _ 90
        leave                                           ; 19F7 _ C9
        ret                                             ; 19F8 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 19F9 _ 55
        mov     ebp, esp                                ; 19FA _ 89. E5
        sub     esp, 20                                 ; 19FC _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 19FF _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1A02 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1A05 _ C7. 45, FC, 00000000
        jmp     ?_066                                   ; 1A0C _ E9, 000000B1

?_060:  mov     dword [ebp-8H], 0                       ; 1A11 _ C7. 45, F8, 00000000
        jmp     ?_065                                   ; 1A18 _ E9, 00000097

?_061:  mov     eax, dword [ebp-4H]                     ; 1A1D _ 8B. 45, FC
        shl     eax, 4                                  ; 1A20 _ C1. E0, 04
        mov     edx, eax                                ; 1A23 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A25 _ 8B. 45, F8
        add     eax, edx                                ; 1A28 _ 01. D0
        add     eax, cursor.2417                        ; 1A2A _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1A2F _ 0F B6. 00
        cmp     al, 42                                  ; 1A32 _ 3C, 2A
        jnz     ?_062                                   ; 1A34 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1A36 _ 8B. 45, FC
        shl     eax, 4                                  ; 1A39 _ C1. E0, 04
        mov     edx, eax                                ; 1A3C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A3E _ 8B. 45, F8
        add     eax, edx                                ; 1A41 _ 01. D0
        mov     edx, eax                                ; 1A43 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A45 _ 8B. 45, 08
        add     eax, edx                                ; 1A48 _ 01. D0
        mov     byte [eax], 0                           ; 1A4A _ C6. 00, 00
?_062:  mov     eax, dword [ebp-4H]                     ; 1A4D _ 8B. 45, FC
        shl     eax, 4                                  ; 1A50 _ C1. E0, 04
        mov     edx, eax                                ; 1A53 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A55 _ 8B. 45, F8
        add     eax, edx                                ; 1A58 _ 01. D0
        add     eax, cursor.2417                        ; 1A5A _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1A5F _ 0F B6. 00
        cmp     al, 79                                  ; 1A62 _ 3C, 4F
        jnz     ?_063                                   ; 1A64 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1A66 _ 8B. 45, FC
        shl     eax, 4                                  ; 1A69 _ C1. E0, 04
        mov     edx, eax                                ; 1A6C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A6E _ 8B. 45, F8
        add     eax, edx                                ; 1A71 _ 01. D0
        mov     edx, eax                                ; 1A73 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A75 _ 8B. 45, 08
        add     eax, edx                                ; 1A78 _ 01. D0
        mov     byte [eax], 7                           ; 1A7A _ C6. 00, 07
?_063:  mov     eax, dword [ebp-4H]                     ; 1A7D _ 8B. 45, FC
        shl     eax, 4                                  ; 1A80 _ C1. E0, 04
        mov     edx, eax                                ; 1A83 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A85 _ 8B. 45, F8
        add     eax, edx                                ; 1A88 _ 01. D0
        add     eax, cursor.2417                        ; 1A8A _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1A8F _ 0F B6. 00
        cmp     al, 46                                  ; 1A92 _ 3C, 2E
        jnz     ?_064                                   ; 1A94 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1A96 _ 8B. 45, FC
        shl     eax, 4                                  ; 1A99 _ C1. E0, 04
        mov     edx, eax                                ; 1A9C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A9E _ 8B. 45, F8
        add     eax, edx                                ; 1AA1 _ 01. D0
        mov     edx, eax                                ; 1AA3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1AA5 _ 8B. 45, 08
        add     edx, eax                                ; 1AA8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1AAA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1AAE _ 88. 02
?_064:  add     dword [ebp-8H], 1                       ; 1AB0 _ 83. 45, F8, 01
?_065:  cmp     dword [ebp-8H], 15                      ; 1AB4 _ 83. 7D, F8, 0F
        jle     ?_061                                   ; 1AB8 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1ABE _ 83. 45, FC, 01
?_066:  cmp     dword [ebp-4H], 15                      ; 1AC2 _ 83. 7D, FC, 0F
        jle     ?_060                                   ; 1AC6 _ 0F 8E, FFFFFF45
        nop                                             ; 1ACC _ 90
        leave                                           ; 1ACD _ C9
        ret                                             ; 1ACE _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1ACF _ 55
        mov     ebp, esp                                ; 1AD0 _ 89. E5
        push    ebx                                     ; 1AD2 _ 53
        sub     esp, 16                                 ; 1AD3 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1AD6 _ C7. 45, F8, 00000000
        jmp     ?_070                                   ; 1ADD _ EB, 50

?_067:  mov     dword [ebp-0CH], 0                      ; 1ADF _ C7. 45, F4, 00000000
        jmp     ?_069                                   ; 1AE6 _ EB, 3B

?_068:  mov     eax, dword [ebp-8H]                     ; 1AE8 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1AEB _ 0F AF. 45, 24
        mov     edx, eax                                ; 1AEF _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1AF1 _ 8B. 45, F4
        add     eax, edx                                ; 1AF4 _ 01. D0
        mov     edx, eax                                ; 1AF6 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1AF8 _ 8B. 45, 20
        add     eax, edx                                ; 1AFB _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1AFD _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1B00 _ 8B. 55, F8
        add     edx, ecx                                ; 1B03 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1B05 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1B09 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1B0C _ 8B. 4D, F4
        add     ecx, ebx                                ; 1B0F _ 01. D9
        add     edx, ecx                                ; 1B11 _ 01. CA
        mov     ecx, edx                                ; 1B13 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1B15 _ 8B. 55, 08
        add     edx, ecx                                ; 1B18 _ 01. CA
        movzx   eax, byte [eax]                         ; 1B1A _ 0F B6. 00
        mov     byte [edx], al                          ; 1B1D _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1B1F _ 83. 45, F4, 01
?_069:  mov     eax, dword [ebp-0CH]                    ; 1B23 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1B26 _ 3B. 45, 10
        jl      ?_068                                   ; 1B29 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1B2B _ 83. 45, F8, 01
?_070:  mov     eax, dword [ebp-8H]                     ; 1B2F _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1B32 _ 3B. 45, 14
        jl      ?_067                                   ; 1B35 _ 7C, A8
        nop                                             ; 1B37 _ 90
        add     esp, 16                                 ; 1B38 _ 83. C4, 10
        pop     ebx                                     ; 1B3B _ 5B
        pop     ebp                                     ; 1B3C _ 5D
        ret                                             ; 1B3D _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1B3E _ 55
        mov     ebp, esp                                ; 1B3F _ 89. E5
        sub     esp, 24                                 ; 1B41 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1B44 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1B49 _ 89. 45, EC
        movzx   eax, word [?_244]                       ; 1B4C _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1B53 _ 98
        mov     dword [ebp-10H], eax                    ; 1B54 _ 89. 45, F0
        movzx   eax, word [?_245]                       ; 1B57 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1B5E _ 98
        mov     dword [ebp-0CH], eax                    ; 1B5F _ 89. 45, F4
        sub     esp, 8                                  ; 1B62 _ 83. EC, 08
        push    32                                      ; 1B65 _ 6A, 20
        push    32                                      ; 1B67 _ 6A, 20
        call    io_out8                                 ; 1B69 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B6E _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1B71 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1B75 _ 83. EC, 0C
        push    96                                      ; 1B78 _ 6A, 60
        call    io_in8                                  ; 1B7A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B7F _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1B82 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1B85 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1B89 _ 83. EC, 08
        push    eax                                     ; 1B8C _ 50
        push    keyInfo                                 ; 1B8D _ 68, 00000010(d)
        call    fifo8_put                               ; 1B92 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B97 _ 83. C4, 10
        nop                                             ; 1B9A _ 90
        leave                                           ; 1B9B _ C9
        ret                                             ; 1B9C _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1B9D _ 55
        mov     ebp, esp                                ; 1B9E _ 89. E5
        sub     esp, 40                                 ; 1BA0 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1BA3 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1BA6 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1BA9 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1BAD _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1BB0 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1BB3 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1BB7 _ 83. EC, 0C
        push    eax                                     ; 1BBA _ 50
        call    charToVal                               ; 1BBB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BC0 _ 83. C4, 10
        mov     byte [?_243], al                        ; 1BC3 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1BC8 _ 0F B6. 45, E4
        shr     al, 4                                   ; 1BCC _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1BCF _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1BD2 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1BD6 _ 0F BE. C0
        sub     esp, 12                                 ; 1BD9 _ 83. EC, 0C
        push    eax                                     ; 1BDC _ 50
        call    charToVal                               ; 1BDD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BE2 _ 83. C4, 10
        mov     byte [?_242], al                        ; 1BE5 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1BEA _ B8, 00000000(d)
        leave                                           ; 1BEF _ C9
        ret                                             ; 1BF0 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1BF1 _ 55
        mov     ebp, esp                                ; 1BF2 _ 89. E5
        sub     esp, 4                                  ; 1BF4 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1BF7 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1BFA _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1BFD _ 80. 7D, FC, 09
        jle     ?_071                                   ; 1C01 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1C03 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1C07 _ 83. C0, 37
        jmp     ?_072                                   ; 1C0A _ EB, 07

?_071:  movzx   eax, byte [ebp-4H]                      ; 1C0C _ 0F B6. 45, FC
        add     eax, 48                                 ; 1C10 _ 83. C0, 30
?_072:  leave                                           ; 1C13 _ C9
        ret                                             ; 1C14 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1C15 _ 55
        mov     ebp, esp                                ; 1C16 _ 89. E5
        sub     esp, 16                                 ; 1C18 _ 83. EC, 10
        mov     byte [str.2460], 48                     ; 1C1B _ C6. 05, 00000274(d), 30
        mov     byte [?_248], 120                       ; 1C22 _ C6. 05, 00000275(d), 78
        mov     byte [?_249], 0                         ; 1C29 _ C6. 05, 0000027E(d), 00
        mov     dword [ebp-0CH], 2                      ; 1C30 _ C7. 45, F4, 00000002
        jmp     ?_074                                   ; 1C37 _ EB, 0F

?_073:  mov     eax, dword [ebp-0CH]                    ; 1C39 _ 8B. 45, F4
        add     eax, str.2460                           ; 1C3C _ 05, 00000274(d)
        mov     byte [eax], 48                          ; 1C41 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1C44 _ 83. 45, F4, 01
?_074:  cmp     dword [ebp-0CH], 9                      ; 1C48 _ 83. 7D, F4, 09
        jle     ?_073                                   ; 1C4C _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1C4E _ C7. 45, F8, 00000009
        jmp     ?_077                                   ; 1C55 _ EB, 48

?_075:  mov     eax, dword [ebp+8H]                     ; 1C57 _ 8B. 45, 08
        and     eax, 0FH                                ; 1C5A _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1C5D _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1C60 _ 8B. 45, 08
        shr     eax, 4                                  ; 1C63 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1C66 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1C69 _ 83. 7D, FC, 09
        jle     ?_076                                   ; 1C6D _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1C6F _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1C72 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1C75 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1C78 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1C7B _ 89. 55, F8
        mov     edx, ecx                                ; 1C7E _ 89. CA
        mov     byte [str.2460+eax], dl                 ; 1C80 _ 88. 90, 00000274(d)
        jmp     ?_077                                   ; 1C86 _ EB, 17

?_076:  mov     eax, dword [ebp-4H]                     ; 1C88 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1C8B _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1C8E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1C91 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1C94 _ 89. 55, F8
        mov     edx, ecx                                ; 1C97 _ 89. CA
        mov     byte [str.2460+eax], dl                 ; 1C99 _ 88. 90, 00000274(d)
?_077:  cmp     dword [ebp-8H], 1                       ; 1C9F _ 83. 7D, F8, 01
        jle     ?_078                                   ; 1CA3 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1CA5 _ 83. 7D, 08, 00
        jnz     ?_075                                   ; 1CA9 _ 75, AC
?_078:  mov     eax, str.2460                           ; 1CAB _ B8, 00000274(d)
        leave                                           ; 1CB0 _ C9
        ret                                             ; 1CB1 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1CB2 _ 55
        mov     ebp, esp                                ; 1CB3 _ 89. E5
        sub     esp, 8                                  ; 1CB5 _ 83. EC, 08
?_079:  sub     esp, 12                                 ; 1CB8 _ 83. EC, 0C
        push    100                                     ; 1CBB _ 6A, 64
        call    io_in8                                  ; 1CBD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC2 _ 83. C4, 10
        movsx   eax, al                                 ; 1CC5 _ 0F BE. C0
        and     eax, 02H                                ; 1CC8 _ 83. E0, 02
        test    eax, eax                                ; 1CCB _ 85. C0
        jz      ?_080                                   ; 1CCD _ 74, 02
        jmp     ?_079                                   ; 1CCF _ EB, E7

?_080:  nop                                             ; 1CD1 _ 90
        nop                                             ; 1CD2 _ 90
        leave                                           ; 1CD3 _ C9
        ret                                             ; 1CD4 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1CD5 _ 55
        mov     ebp, esp                                ; 1CD6 _ 89. E5
        sub     esp, 8                                  ; 1CD8 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1CDB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1CE0 _ 83. EC, 08
        push    96                                      ; 1CE3 _ 6A, 60
        push    100                                     ; 1CE5 _ 6A, 64
        call    io_out8                                 ; 1CE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CEC _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1CEF _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1CF4 _ 83. EC, 08
        push    71                                      ; 1CF7 _ 6A, 47
        push    96                                      ; 1CF9 _ 6A, 60
        call    io_out8                                 ; 1CFB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D00 _ 83. C4, 10
        nop                                             ; 1D03 _ 90
        leave                                           ; 1D04 _ C9
        ret                                             ; 1D05 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1D06 _ 55
        mov     ebp, esp                                ; 1D07 _ 89. E5
        sub     esp, 8                                  ; 1D09 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1D0C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D11 _ 83. EC, 08
        push    212                                     ; 1D14 _ 68, 000000D4
        push    100                                     ; 1D19 _ 6A, 64
        call    io_out8                                 ; 1D1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D20 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1D23 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D28 _ 83. EC, 08
        push    244                                     ; 1D2B _ 68, 000000F4
        push    96                                      ; 1D30 _ 6A, 60
        call    io_out8                                 ; 1D32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D37 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1D3A _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1D3D _ C6. 40, 03, 00
        nop                                             ; 1D41 _ 90
        leave                                           ; 1D42 _ C9
        ret                                             ; 1D43 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1D44 _ 55
        mov     ebp, esp                                ; 1D45 _ 89. E5
        sub     esp, 24                                 ; 1D47 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1D4A _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1D4E _ 83. EC, 08
        push    32                                      ; 1D51 _ 6A, 20
        push    160                                     ; 1D53 _ 68, 000000A0
        call    io_out8                                 ; 1D58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D5D _ 83. C4, 10
        sub     esp, 8                                  ; 1D60 _ 83. EC, 08
        push    32                                      ; 1D63 _ 6A, 20
        push    32                                      ; 1D65 _ 6A, 20
        call    io_out8                                 ; 1D67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D6C _ 83. C4, 10
        sub     esp, 12                                 ; 1D6F _ 83. EC, 0C
        push    96                                      ; 1D72 _ 6A, 60
        call    io_in8                                  ; 1D74 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D79 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1D7C _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1D7F _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1D83 _ 83. EC, 08
        push    eax                                     ; 1D86 _ 50
        push    mouseInfo                               ; 1D87 _ 68, 0000002C(d)
        call    fifo8_put                               ; 1D8C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D91 _ 83. C4, 10
        nop                                             ; 1D94 _ 90
        leave                                           ; 1D95 _ C9
        ret                                             ; 1D96 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1D97 _ 55
        mov     ebp, esp                                ; 1D98 _ 89. E5
        sub     esp, 40                                 ; 1D9A _ 83. EC, 28
        call    io_sti                                  ; 1D9D _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1DA2 _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 1DA7 _ 89. 45, E8
        movzx   eax, word [?_244]                       ; 1DAA _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1DB1 _ 98
        mov     dword [ebp-14H], eax                    ; 1DB2 _ 89. 45, EC
        movzx   eax, word [?_245]                       ; 1DB5 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1DBC _ 98
        mov     dword [ebp-10H], eax                    ; 1DBD _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1DC0 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1DC4 _ 83. EC, 0C
        push    keyInfo                                 ; 1DC7 _ 68, 00000010(d)
        call    fifo8_get                               ; 1DCC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DD1 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1DD4 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1DD7 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1DDB _ 83. EC, 0C
        push    eax                                     ; 1DDE _ 50
        call    charToHex                               ; 1DDF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DE4 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1DE7 _ 89. 45, F4
        mov     edx, dword [line.2493]                  ; 1DEA _ 8B. 15, 00000280(d)
        mov     eax, dword [pos.2492]                   ; 1DF0 _ A1, 00000284(d)
        sub     esp, 8                                  ; 1DF5 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1DF8 _ FF. 75, F4
        push    7                                       ; 1DFB _ 6A, 07
        push    edx                                     ; 1DFD _ 52
        push    eax                                     ; 1DFE _ 50
        push    dword [ebp+0CH]                         ; 1DFF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E02 _ FF. 75, 08
        call    showString                              ; 1E05 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E0A _ 83. C4, 20
        mov     eax, dword [pos.2492]                   ; 1E0D _ A1, 00000284(d)
        add     eax, 32                                 ; 1E12 _ 83. C0, 20
        mov     dword [pos.2492], eax                   ; 1E15 _ A3, 00000284(d)
        mov     eax, dword [pos.2492]                   ; 1E1A _ A1, 00000284(d)
        cmp     dword [ebp-14H], eax                    ; 1E1F _ 39. 45, EC
        jnz     ?_083                                   ; 1E22 _ 75, 28
        mov     eax, dword [line.2493]                  ; 1E24 _ A1, 00000280(d)
        cmp     dword [ebp-10H], eax                    ; 1E29 _ 39. 45, F0
        jz      ?_081                                   ; 1E2C _ 74, 0A
        mov     eax, dword [line.2493]                  ; 1E2E _ A1, 00000280(d)
        add     eax, 16                                 ; 1E33 _ 83. C0, 10
        jmp     ?_082                                   ; 1E36 _ EB, 05

?_081:  mov     eax, 0                                  ; 1E38 _ B8, 00000000
?_082:  mov     dword [line.2493], eax                  ; 1E3D _ A3, 00000280(d)
        mov     dword [pos.2492], 0                     ; 1E42 _ C7. 05, 00000284(d), 00000000
?_083:  nop                                             ; 1E4C _ 90
        leave                                           ; 1E4D _ C9
        ret                                             ; 1E4E _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1E4F _ 55
        mov     ebp, esp                                ; 1E50 _ 89. E5
        sub     esp, 24                                 ; 1E52 _ 83. EC, 18
        call    io_sti                                  ; 1E55 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1E5A _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1E5E _ 83. EC, 0C
        push    mouseInfo                               ; 1E61 _ 68, 0000002C(d)
        call    fifo8_get                               ; 1E66 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E6B _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1E6E _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1E71 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1E75 _ 83. EC, 08
        push    eax                                     ; 1E78 _ 50
        push    mouse_move                              ; 1E79 _ 68, 00000100(d)
        call    mouse_decode                            ; 1E7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E83 _ 83. C4, 10
        test    eax, eax                                ; 1E86 _ 85. C0
        jz      ?_084                                   ; 1E88 _ 74, 60
        sub     esp, 4                                  ; 1E8A _ 83. EC, 04
        push    mouse_move                              ; 1E8D _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 1E92 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E95 _ FF. 75, 08
        call    computeMousePos                         ; 1E98 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E9D _ 83. C4, 10
        mov     edx, dword [my]                         ; 1EA0 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 1EA6 _ A1, 00000110(d)
        push    edx                                     ; 1EAB _ 52
        push    eax                                     ; 1EAC _ 50
        push    dword [ebp+10H]                         ; 1EAD _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1EB0 _ FF. 75, 08
        call    sheet_slide                             ; 1EB3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EB8 _ 83. C4, 10
        mov     eax, dword [?_247]                      ; 1EBB _ A1, 0000010C(d)
        and     eax, 01H                                ; 1EC0 _ 83. E0, 01
        test    eax, eax                                ; 1EC3 _ 85. C0
        jz      ?_084                                   ; 1EC5 _ 74, 23
        mov     eax, dword [my]                         ; 1EC7 _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 1ECC _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1ECF _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 1ED4 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1ED7 _ A1, 00000248(d)
        push    ecx                                     ; 1EDC _ 51
        push    edx                                     ; 1EDD _ 52
        push    eax                                     ; 1EDE _ 50
        push    dword [ebp+8H]                          ; 1EDF _ FF. 75, 08
        call    sheet_slide                             ; 1EE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EE7 _ 83. C4, 10
?_084:  nop                                             ; 1EEA _ 90
        leave                                           ; 1EEB _ C9
        ret                                             ; 1EEC _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1EED _ 55
        mov     ebp, esp                                ; 1EEE _ 89. E5
        sub     esp, 4                                  ; 1EF0 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1EF3 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1EF6 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1EF9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1EFC _ 0F B6. 40, 03
        test    al, al                                  ; 1F00 _ 84. C0
        jnz     ?_086                                   ; 1F02 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1F04 _ 80. 7D, FC, FA
        jnz     ?_085                                   ; 1F08 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1F0A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1F0D _ C6. 40, 03, 01
?_085:  mov     eax, 0                                  ; 1F11 _ B8, 00000000
        jmp     ?_093                                   ; 1F16 _ E9, 0000010C

?_086:  mov     eax, dword [ebp+8H]                     ; 1F1B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1F1E _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1F22 _ 3C, 01
        jnz     ?_088                                   ; 1F24 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1F26 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1F2A _ 83. C8, 37
        cmp     al, 63                                  ; 1F2D _ 3C, 3F
        jnz     ?_087                                   ; 1F2F _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1F31 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1F34 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1F38 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1F3A _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1F3D _ C6. 40, 03, 02
?_087:  mov     eax, 0                                  ; 1F41 _ B8, 00000000
        jmp     ?_093                                   ; 1F46 _ E9, 000000DC

?_088:  mov     eax, dword [ebp+8H]                     ; 1F4B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1F4E _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1F52 _ 3C, 02
        jnz     ?_089                                   ; 1F54 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1F56 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1F59 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1F5D _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1F60 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1F63 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1F67 _ B8, 00000000
        jmp     ?_093                                   ; 1F6C _ E9, 000000B6

?_089:  mov     eax, dword [ebp+8H]                     ; 1F71 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1F74 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1F78 _ 3C, 03
        jne     ?_092                                   ; 1F7A _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1F80 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1F83 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1F87 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1F8A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1F8D _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1F91 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1F94 _ 0F B6. 00
        movzx   eax, al                                 ; 1F97 _ 0F B6. C0
        and     eax, 07H                                ; 1F9A _ 83. E0, 07
        mov     edx, eax                                ; 1F9D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F9F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1FA2 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1FA5 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1FA8 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1FAC _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1FAF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1FB2 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FB5 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1FB8 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1FBC _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1FBF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1FC2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1FC5 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1FC8 _ 0F B6. 00
        movzx   eax, al                                 ; 1FCB _ 0F B6. C0
        and     eax, 10H                                ; 1FCE _ 83. E0, 10
        test    eax, eax                                ; 1FD1 _ 85. C0
        jz      ?_090                                   ; 1FD3 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1FD5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1FD8 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1FDB _ 0D, FFFFFF00
        mov     edx, eax                                ; 1FE0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1FE2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1FE5 _ 89. 50, 04
?_090:  mov     eax, dword [ebp+8H]                     ; 1FE8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1FEB _ 0F B6. 00
        movzx   eax, al                                 ; 1FEE _ 0F B6. C0
        and     eax, 20H                                ; 1FF1 _ 83. E0, 20
        test    eax, eax                                ; 1FF4 _ 85. C0
        jz      ?_091                                   ; 1FF6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1FF8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1FFB _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1FFE _ 0D, FFFFFF00
        mov     edx, eax                                ; 2003 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2005 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2008 _ 89. 50, 08
?_091:  mov     eax, dword [ebp+8H]                     ; 200B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 200E _ 8B. 40, 08
        neg     eax                                     ; 2011 _ F7. D8
        mov     edx, eax                                ; 2013 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2015 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2018 _ 89. 50, 08
        mov     eax, 1                                  ; 201B _ B8, 00000001
        jmp     ?_093                                   ; 2020 _ EB, 05

?_092:  mov     eax, 4294967295                         ; 2022 _ B8, FFFFFFFF
?_093:  leave                                           ; 2027 _ C9
        ret                                             ; 2028 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 2029 _ 55
        mov     ebp, esp                                ; 202A _ 89. E5
        sub     esp, 16                                 ; 202C _ 83. EC, 10
        movzx   eax, word [?_244]                       ; 202F _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 2036 _ 98
        mov     dword [ebp-8H], eax                     ; 2037 _ 89. 45, F8
        movzx   eax, word [?_245]                       ; 203A _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 2041 _ 98
        mov     dword [ebp-4H], eax                     ; 2042 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 2045 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 2048 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 204B _ A1, 00000110(d)
        add     eax, edx                                ; 2050 _ 01. D0
        mov     dword [mx], eax                         ; 2052 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 2057 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 205A _ 8B. 50, 08
        mov     eax, dword [my]                         ; 205D _ A1, 00000114(d)
        add     eax, edx                                ; 2062 _ 01. D0
        mov     dword [my], eax                         ; 2064 _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 2069 _ A1, 00000110(d)
        test    eax, eax                                ; 206E _ 85. C0
        jns     ?_094                                   ; 2070 _ 79, 0A
        mov     dword [mx], 0                           ; 2072 _ C7. 05, 00000110(d), 00000000
?_094:  mov     eax, dword [my]                         ; 207C _ A1, 00000114(d)
        test    eax, eax                                ; 2081 _ 85. C0
        jns     ?_095                                   ; 2083 _ 79, 0A
        mov     dword [my], 0                           ; 2085 _ C7. 05, 00000114(d), 00000000
?_095:  mov     eax, dword [ebp-8H]                     ; 208F _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 2092 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 2095 _ A1, 00000110(d)
        cmp     edx, eax                                ; 209A _ 39. C2
        jge     ?_096                                   ; 209C _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 209E _ 8B. 45, F8
        sub     eax, 9                                  ; 20A1 _ 83. E8, 09
        mov     dword [mx], eax                         ; 20A4 _ A3, 00000110(d)
?_096:  mov     eax, dword [ebp-4H]                     ; 20A9 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 20AC _ 8D. 50, FF
        mov     eax, dword [my]                         ; 20AF _ A1, 00000114(d)
        cmp     edx, eax                                ; 20B4 _ 39. C2
        jge     ?_097                                   ; 20B6 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 20B8 _ 8B. 45, FC
        sub     eax, 1                                  ; 20BB _ 83. E8, 01
        mov     dword [my], eax                         ; 20BE _ A3, 00000114(d)
?_097:  nop                                             ; 20C3 _ 90
        leave                                           ; 20C4 _ C9
        ret                                             ; 20C5 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 20C6 _ 55
        mov     ebp, esp                                ; 20C7 _ 89. E5
        sub     esp, 56                                 ; 20C9 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 20CC _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 20D3 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 20DA _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 20E1 _ C7. 45, DC, 00000050
        push    100                                     ; 20E8 _ 6A, 64
        push    dword [ebp+1CH]                         ; 20EA _ FF. 75, 1C
        push    0                                       ; 20ED _ 6A, 00
        push    0                                       ; 20EF _ 6A, 00
        push    14                                      ; 20F1 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 20F3 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 20F6 _ FF. 75, 14
        call    boxfill8                                ; 20F9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20FE _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 2101 _ 8B. 45, 20
        movsx   eax, al                                 ; 2104 _ 0F BE. C0
        sub     esp, 8                                  ; 2107 _ 83. EC, 08
        push    ?_236                                   ; 210A _ 68, 0000004F(d)
        push    eax                                     ; 210F _ 50
        push    dword [ebp-2CH]                         ; 2110 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2113 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2116 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2119 _ FF. 75, 08
        call    showString                              ; 211C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2121 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 2124 _ 8B. 45, 18
        sub     esp, 12                                 ; 2127 _ 83. EC, 0C
        push    eax                                     ; 212A _ 50
        call    intToHexStr                             ; 212B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2130 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 2133 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 2136 _ 8B. 45, 20
        movsx   eax, al                                 ; 2139 _ 0F BE. C0
        sub     esp, 8                                  ; 213C _ 83. EC, 08
        push    dword [ebp-20H]                         ; 213F _ FF. 75, E0
        push    eax                                     ; 2142 _ 50
        push    dword [ebp-2CH]                         ; 2143 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2146 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2149 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 214C _ FF. 75, 08
        call    showString                              ; 214F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2154 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2157 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 215B _ 8B. 45, 20
        movsx   eax, al                                 ; 215E _ 0F BE. C0
        sub     esp, 8                                  ; 2161 _ 83. EC, 08
        push    ?_237                                   ; 2164 _ 68, 00000059(d)
        push    eax                                     ; 2169 _ 50
        push    dword [ebp-2CH]                         ; 216A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 216D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2170 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2173 _ FF. 75, 08
        call    showString                              ; 2176 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 217B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 217E _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2181 _ 8B. 00
        sub     esp, 12                                 ; 2183 _ 83. EC, 0C
        push    eax                                     ; 2186 _ 50
        call    intToHexStr                             ; 2187 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 218C _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 218F _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2192 _ 8B. 45, 20
        movsx   eax, al                                 ; 2195 _ 0F BE. C0
        sub     esp, 8                                  ; 2198 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 219B _ FF. 75, E4
        push    eax                                     ; 219E _ 50
        push    dword [ebp-2CH]                         ; 219F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21A2 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 21A5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21A8 _ FF. 75, 08
        call    showString                              ; 21AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21B0 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 21B3 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 21B7 _ 8B. 45, 20
        movsx   eax, al                                 ; 21BA _ 0F BE. C0
        sub     esp, 8                                  ; 21BD _ 83. EC, 08
        push    ?_238                                   ; 21C0 _ 68, 00000067(d)
        push    eax                                     ; 21C5 _ 50
        push    dword [ebp-2CH]                         ; 21C6 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 21C9 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 21CC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21CF _ FF. 75, 08
        call    showString                              ; 21D2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21D7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 21DA _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 21DD _ 8B. 40, 04
        sub     esp, 12                                 ; 21E0 _ 83. EC, 0C
        push    eax                                     ; 21E3 _ 50
        call    intToHexStr                             ; 21E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21E9 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 21EC _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 21EF _ 8B. 45, 20
        movsx   eax, al                                 ; 21F2 _ 0F BE. C0
        sub     esp, 8                                  ; 21F5 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 21F8 _ FF. 75, E8
        push    eax                                     ; 21FB _ 50
        push    dword [ebp-2CH]                         ; 21FC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21FF _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2202 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2205 _ FF. 75, 08
        call    showString                              ; 2208 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 220D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2210 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2214 _ 8B. 45, 20
        movsx   eax, al                                 ; 2217 _ 0F BE. C0
        sub     esp, 8                                  ; 221A _ 83. EC, 08
        push    ?_239                                   ; 221D _ 68, 00000076(d)
        push    eax                                     ; 2222 _ 50
        push    dword [ebp-2CH]                         ; 2223 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2226 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2229 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 222C _ FF. 75, 08
        call    showString                              ; 222F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2234 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2237 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 223A _ 8B. 40, 08
        sub     esp, 12                                 ; 223D _ 83. EC, 0C
        push    eax                                     ; 2240 _ 50
        call    intToHexStr                             ; 2241 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2246 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 2249 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 224C _ 8B. 45, 20
        movsx   eax, al                                 ; 224F _ 0F BE. C0
        sub     esp, 8                                  ; 2252 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 2255 _ FF. 75, EC
        push    eax                                     ; 2258 _ 50
        push    dword [ebp-2CH]                         ; 2259 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 225C _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 225F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2262 _ FF. 75, 08
        call    showString                              ; 2265 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 226A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 226D _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2271 _ 8B. 45, 20
        movsx   eax, al                                 ; 2274 _ 0F BE. C0
        sub     esp, 8                                  ; 2277 _ 83. EC, 08
        push    ?_240                                   ; 227A _ 68, 00000082(d)
        push    eax                                     ; 227F _ 50
        push    dword [ebp-2CH]                         ; 2280 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2283 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2286 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2289 _ FF. 75, 08
        call    showString                              ; 228C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2291 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2294 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 2297 _ 8B. 40, 0C
        sub     esp, 12                                 ; 229A _ 83. EC, 0C
        push    eax                                     ; 229D _ 50
        call    intToHexStr                             ; 229E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22A3 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 22A6 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 22A9 _ 8B. 45, 20
        movsx   eax, al                                 ; 22AC _ 0F BE. C0
        sub     esp, 8                                  ; 22AF _ 83. EC, 08
        push    dword [ebp-10H]                         ; 22B2 _ FF. 75, F0
        push    eax                                     ; 22B5 _ 50
        push    dword [ebp-2CH]                         ; 22B6 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 22B9 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 22BC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 22BF _ FF. 75, 08
        call    showString                              ; 22C2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22C7 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 22CA _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 22CE _ 8B. 45, 20
        movsx   eax, al                                 ; 22D1 _ 0F BE. C0
        sub     esp, 8                                  ; 22D4 _ 83. EC, 08
        push    ?_241                                   ; 22D7 _ 68, 0000008F(d)
        push    eax                                     ; 22DC _ 50
        push    dword [ebp-2CH]                         ; 22DD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 22E0 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 22E3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 22E6 _ FF. 75, 08
        call    showString                              ; 22E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22EE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 22F1 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 22F4 _ 8B. 40, 10
        sub     esp, 12                                 ; 22F7 _ 83. EC, 0C
        push    eax                                     ; 22FA _ 50
        call    intToHexStr                             ; 22FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2300 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2303 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 2306 _ 8B. 45, 20
        movsx   eax, al                                 ; 2309 _ 0F BE. C0
        sub     esp, 8                                  ; 230C _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 230F _ FF. 75, F4
        push    eax                                     ; 2312 _ 50
        push    dword [ebp-2CH]                         ; 2313 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2316 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2319 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 231C _ FF. 75, 08
        call    showString                              ; 231F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2324 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2327 _ 83. 45, D4, 10
        nop                                             ; 232B _ 90
        leave                                           ; 232C _ C9
        ret                                             ; 232D _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 232E _ 55
        mov     ebp, esp                                ; 232F _ 89. E5
        sub     esp, 24                                 ; 2331 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 2334 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2337 _ 0F AF. 45, 14
        mov     edx, eax                                ; 233B _ 89. C2
        mov     eax, dword [memman]                     ; 233D _ A1, 00000008(d)
        sub     esp, 8                                  ; 2342 _ 83. EC, 08
        push    edx                                     ; 2345 _ 52
        push    eax                                     ; 2346 _ 50
        call    memman_alloc_4K                         ; 2347 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 234C _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 234F _ 89. 45, F0
        sub     esp, 12                                 ; 2352 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2355 _ FF. 75, 08
        call    sheet_alloc                             ; 2358 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 235D _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2360 _ 89. 45, F4
        sub     esp, 12                                 ; 2363 _ 83. EC, 0C
        push    99                                      ; 2366 _ 6A, 63
        push    dword [ebp+14H]                         ; 2368 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 236B _ FF. 75, 10
        push    dword [ebp-10H]                         ; 236E _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2371 _ FF. 75, F4
        call    sheet_setbuf                            ; 2374 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2379 _ 83. C4, 20
        push    1                                       ; 237C _ 6A, 01
        push    dword [ebp+0CH]                         ; 237E _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 2381 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2384 _ FF. 75, 08
        call    make_window8                            ; 2387 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 238C _ 83. C4, 10
        sub     esp, 8                                  ; 238F _ 83. EC, 08
        push    7                                       ; 2392 _ 6A, 07
        push    16                                      ; 2394 _ 6A, 10
        push    150                                     ; 2396 _ 68, 00000096
        push    42                                      ; 239B _ 6A, 2A
        push    10                                      ; 239D _ 6A, 0A
        push    dword [ebp-0CH]                         ; 239F _ FF. 75, F4
        call    make_textbox8                           ; 23A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 23A7 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 23AA _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 23AD _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 23B0 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 23B3 _ FF. 75, 08
        call    sheet_slide                             ; 23B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23BB _ 83. C4, 10
        sub     esp, 4                                  ; 23BE _ 83. EC, 04
        push    dword [ebp+20H]                         ; 23C1 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 23C4 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 23C7 _ FF. 75, 08
        call    sheet_level_updown                      ; 23CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23CF _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 23D2 _ 8B. 45, F4
        leave                                           ; 23D5 _ C9
        ret                                             ; 23D6 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 23D7 _ 55
        mov     ebp, esp                                ; 23D8 _ 89. E5
        sub     esp, 24                                 ; 23DA _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 23DD _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 23E0 _ 0F AF. 45, 20
        mov     edx, eax                                ; 23E4 _ 89. C2
        mov     eax, dword [memman]                     ; 23E6 _ A1, 00000008(d)
        sub     esp, 8                                  ; 23EB _ 83. EC, 08
        push    edx                                     ; 23EE _ 52
        push    eax                                     ; 23EF _ 50
        call    memman_alloc_4K                         ; 23F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23F5 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 23F8 _ 89. 45, F0
        sub     esp, 12                                 ; 23FB _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 23FE _ FF. 75, 08
        call    sheet_alloc                             ; 2401 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2406 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2409 _ 89. 45, F4
        sub     esp, 12                                 ; 240C _ 83. EC, 0C
        push    99                                      ; 240F _ 6A, 63
        push    dword [ebp+20H]                         ; 2411 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 2414 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 2417 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 241A _ FF. 75, F4
        call    sheet_setbuf                            ; 241D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2422 _ 83. C4, 20
        push    0                                       ; 2425 _ 6A, 00
        push    dword [ebp+18H]                         ; 2427 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 242A _ FF. 75, F4
        push    dword [ebp+8H]                          ; 242D _ FF. 75, 08
        call    make_window8                            ; 2430 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2435 _ 83. C4, 10
        call    task_alloc                              ; 2438 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 243D _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2440 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 2443 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 244A _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 244D _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 2454 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 2459 _ F7. D8
        add     eax, task_b_main                        ; 245B _ 05, 00000000(d)
        mov     edx, eax                                ; 2460 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 2462 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 2465 _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 2468 _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 246B _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2472 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 2475 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 247C _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 247F _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 2486 _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 2489 _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2490 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 2493 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 249A _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 249D _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 24A4 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 24A7 _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 24AA _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 24AD _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 24B0 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 24B3 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 24B6 _ 8B. 40, 4C
        add     eax, 4                                  ; 24B9 _ 83. C0, 04
        mov     edx, eax                                ; 24BC _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 24BE _ 8B. 45, F4
        mov     dword [edx], eax                        ; 24C1 _ 89. 02
        sub     esp, 4                                  ; 24C3 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 24C6 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 24C9 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 24CC _ FF. 75, 0C
        call    task_run                                ; 24CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24D4 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 24D7 _ FF. 75, 28
        push    dword [ebp+24H]                         ; 24DA _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 24DD _ FF. 75, F4
        push    dword [ebp+8H]                          ; 24E0 _ FF. 75, 08
        call    sheet_slide                             ; 24E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24E8 _ 83. C4, 10
        sub     esp, 4                                  ; 24EB _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 24EE _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 24F1 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 24F4 _ FF. 75, 08
        call    sheet_level_updown                      ; 24F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24FC _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 24FF _ 8B. 45, F4
        leave                                           ; 2502 _ C9
        ret                                             ; 2503 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 2504 _ 55
        mov     ebp, esp                                ; 2505 _ 89. E5
        push    ebx                                     ; 2507 _ 53
        sub     esp, 36                                 ; 2508 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 250B _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 250E _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2511 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2514 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2517 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 251A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 251D _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2520 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2523 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2526 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2529 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 252C _ 8B. 00
        push    0                                       ; 252E _ 6A, 00
        push    edx                                     ; 2530 _ 52
        push    0                                       ; 2531 _ 6A, 00
        push    0                                       ; 2533 _ 6A, 00
        push    8                                       ; 2535 _ 6A, 08
        push    dword [ebp-10H]                         ; 2537 _ FF. 75, F0
        push    eax                                     ; 253A _ 50
        call    boxfill8                                ; 253B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2540 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2543 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2546 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2549 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 254C _ 8B. 00
        push    1                                       ; 254E _ 6A, 01
        push    edx                                     ; 2550 _ 52
        push    1                                       ; 2551 _ 6A, 01
        push    1                                       ; 2553 _ 6A, 01
        push    7                                       ; 2555 _ 6A, 07
        push    dword [ebp-10H]                         ; 2557 _ FF. 75, F0
        push    eax                                     ; 255A _ 50
        call    boxfill8                                ; 255B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2560 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2563 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2566 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2569 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 256C _ 8B. 00
        push    edx                                     ; 256E _ 52
        push    0                                       ; 256F _ 6A, 00
        push    0                                       ; 2571 _ 6A, 00
        push    0                                       ; 2573 _ 6A, 00
        push    8                                       ; 2575 _ 6A, 08
        push    dword [ebp-10H]                         ; 2577 _ FF. 75, F0
        push    eax                                     ; 257A _ 50
        call    boxfill8                                ; 257B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2580 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2583 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2586 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2589 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 258C _ 8B. 00
        push    edx                                     ; 258E _ 52
        push    1                                       ; 258F _ 6A, 01
        push    1                                       ; 2591 _ 6A, 01
        push    1                                       ; 2593 _ 6A, 01
        push    7                                       ; 2595 _ 6A, 07
        push    dword [ebp-10H]                         ; 2597 _ FF. 75, F0
        push    eax                                     ; 259A _ 50
        call    boxfill8                                ; 259B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25A0 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25A3 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 25A6 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 25A9 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 25AC _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 25AF _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 25B2 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 25B5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25B8 _ 8B. 00
        push    ebx                                     ; 25BA _ 53
        push    ecx                                     ; 25BB _ 51
        push    1                                       ; 25BC _ 6A, 01
        push    edx                                     ; 25BE _ 52
        push    15                                      ; 25BF _ 6A, 0F
        push    dword [ebp-10H]                         ; 25C1 _ FF. 75, F0
        push    eax                                     ; 25C4 _ 50
        call    boxfill8                                ; 25C5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25CA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25CD _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 25D0 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 25D3 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 25D6 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 25D9 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 25DC _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 25DF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25E2 _ 8B. 00
        push    ebx                                     ; 25E4 _ 53
        push    ecx                                     ; 25E5 _ 51
        push    0                                       ; 25E6 _ 6A, 00
        push    edx                                     ; 25E8 _ 52
        push    0                                       ; 25E9 _ 6A, 00
        push    dword [ebp-10H]                         ; 25EB _ FF. 75, F0
        push    eax                                     ; 25EE _ 50
        call    boxfill8                                ; 25EF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25F4 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25F7 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 25FA _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 25FD _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2600 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2603 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2606 _ 8B. 00
        push    ecx                                     ; 2608 _ 51
        push    edx                                     ; 2609 _ 52
        push    2                                       ; 260A _ 6A, 02
        push    2                                       ; 260C _ 6A, 02
        push    8                                       ; 260E _ 6A, 08
        push    dword [ebp-10H]                         ; 2610 _ FF. 75, F0
        push    eax                                     ; 2613 _ 50
        call    boxfill8                                ; 2614 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2619 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 261C _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 261F _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2622 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2625 _ 8B. 00
        push    20                                      ; 2627 _ 6A, 14
        push    edx                                     ; 2629 _ 52
        push    3                                       ; 262A _ 6A, 03
        push    3                                       ; 262C _ 6A, 03
        push    12                                      ; 262E _ 6A, 0C
        push    dword [ebp-10H]                         ; 2630 _ FF. 75, F0
        push    eax                                     ; 2633 _ 50
        call    boxfill8                                ; 2634 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2639 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 263C _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 263F _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2642 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2645 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2648 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 264B _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 264E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2651 _ 8B. 00
        push    ebx                                     ; 2653 _ 53
        push    ecx                                     ; 2654 _ 51
        push    edx                                     ; 2655 _ 52
        push    1                                       ; 2656 _ 6A, 01
        push    15                                      ; 2658 _ 6A, 0F
        push    dword [ebp-10H]                         ; 265A _ FF. 75, F0
        push    eax                                     ; 265D _ 50
        call    boxfill8                                ; 265E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2663 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2666 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2669 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 266C _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 266F _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2672 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2675 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2678 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 267B _ 8B. 00
        push    ebx                                     ; 267D _ 53
        push    ecx                                     ; 267E _ 51
        push    edx                                     ; 267F _ 52
        push    0                                       ; 2680 _ 6A, 00
        push    0                                       ; 2682 _ 6A, 00
        push    dword [ebp-10H]                         ; 2684 _ FF. 75, F0
        push    eax                                     ; 2687 _ 50
        call    boxfill8                                ; 2688 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 268D _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2690 _ 0F BE. 45, E4
        push    eax                                     ; 2694 _ 50
        push    dword [ebp+10H]                         ; 2695 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2698 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 269B _ FF. 75, 08
        call    make_wtitle8                            ; 269E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26A3 _ 83. C4, 10
        nop                                             ; 26A6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 26A7 _ 8B. 5D, FC
        leave                                           ; 26AA _ C9
        ret                                             ; 26AB _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 26AC _ 55
        mov     ebp, esp                                ; 26AD _ 89. E5
        push    ebx                                     ; 26AF _ 53
        sub     esp, 36                                 ; 26B0 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 26B3 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 26B6 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 26B9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26BC _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 26BF _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 26C2 _ 80. 7D, E4, 00
        jz      ?_098                                   ; 26C6 _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 26C8 _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 26CC _ C6. 45, EB, 0C
        jmp     ?_099                                   ; 26D0 _ EB, 0E

?_098:  cmp     byte [ebp-1CH], 0                       ; 26D2 _ 80. 7D, E4, 00
        jnz     ?_099                                   ; 26D6 _ 75, 08
        mov     byte [ebp-16H], 8                       ; 26D8 _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 26DC _ C6. 45, EB, 0F
?_099:  mov     eax, dword [ebp-0CH]                    ; 26E0 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 26E3 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 26E6 _ 0F B6. 45, EB
        movzx   edx, al                                 ; 26EA _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 26ED _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 26F0 _ 8B. 00
        push    20                                      ; 26F2 _ 6A, 14
        push    ecx                                     ; 26F4 _ 51
        push    3                                       ; 26F5 _ 6A, 03
        push    3                                       ; 26F7 _ 6A, 03
        push    edx                                     ; 26F9 _ 52
        push    dword [ebp-0CH]                         ; 26FA _ FF. 75, F4
        push    eax                                     ; 26FD _ 50
        call    boxfill8                                ; 26FE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2703 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 2706 _ 0F BE. 45, EA
        sub     esp, 8                                  ; 270A _ 83. EC, 08
        push    dword [ebp+10H]                         ; 270D _ FF. 75, 10
        push    eax                                     ; 2710 _ 50
        push    4                                       ; 2711 _ 6A, 04
        push    8                                       ; 2713 _ 6A, 08
        push    dword [ebp+0CH]                         ; 2715 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2718 _ FF. 75, 08
        call    showString                              ; 271B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2720 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 2723 _ C7. 45, EC, 00000000
        jmp     ?_106                                   ; 272A _ EB, 75

?_100:  mov     dword [ebp-10H], 0                      ; 272C _ C7. 45, F0, 00000000
        jmp     ?_105                                   ; 2733 _ EB, 62

?_101:  mov     eax, dword [ebp-14H]                    ; 2735 _ 8B. 45, EC
        shl     eax, 4                                  ; 2738 _ C1. E0, 04
        mov     edx, eax                                ; 273B _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 273D _ 8B. 45, F0
        add     eax, edx                                ; 2740 _ 01. D0
        add     eax, closebtn.2570                      ; 2742 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2747 _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 274A _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 274D _ 80. 7D, E9, 40
        jnz     ?_102                                   ; 2751 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 2753 _ C6. 45, E9, 00
        jmp     ?_104                                   ; 2757 _ EB, 16

?_102:  cmp     byte [ebp-17H], 36                      ; 2759 _ 80. 7D, E9, 24
        jnz     ?_103                                   ; 275D _ 75, 06
        mov     byte [ebp-17H], 15                      ; 275F _ C6. 45, E9, 0F
        jmp     ?_104                                   ; 2763 _ EB, 0A

?_103:  cmp     byte [ebp-17H], 81                      ; 2765 _ 80. 7D, E9, 51
        jnz     ?_104                                   ; 2769 _ 75, 04
        mov     byte [ebp-17H], 8                       ; 276B _ C6. 45, E9, 08
?_104:  mov     eax, dword [ebp+0CH]                    ; 276F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2772 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2774 _ 8B. 55, EC
        add     edx, 5                                  ; 2777 _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 277A _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 277E _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2781 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2784 _ 8B. 4D, F0
        add     ecx, ebx                                ; 2787 _ 01. D9
        add     edx, ecx                                ; 2789 _ 01. CA
        add     edx, eax                                ; 278B _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 278D _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2791 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2793 _ 83. 45, F0, 01
?_105:  cmp     dword [ebp-10H], 15                     ; 2797 _ 83. 7D, F0, 0F
        jle     ?_101                                   ; 279B _ 7E, 98
        add     dword [ebp-14H], 1                      ; 279D _ 83. 45, EC, 01
?_106:  cmp     dword [ebp-14H], 13                     ; 27A1 _ 83. 7D, EC, 0D
        jle     ?_100                                   ; 27A5 _ 7E, 85
        nop                                             ; 27A7 _ 90
        mov     ebx, dword [ebp-4H]                     ; 27A8 _ 8B. 5D, FC
        leave                                           ; 27AB _ C9
        ret                                             ; 27AC _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 27AD _ 55
        mov     ebp, esp                                ; 27AE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 27B0 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 27B3 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 27B9 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 27BC _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 27C3 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 27C6 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 27CD _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 27D0 _ C7. 40, 0C, 00000000
        nop                                             ; 27D7 _ 90
        pop     ebp                                     ; 27D8 _ 5D
        ret                                             ; 27D9 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 27DA _ 55
        mov     ebp, esp                                ; 27DB _ 89. E5
        sub     esp, 16                                 ; 27DD _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 27E0 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 27E7 _ C7. 45, FC, 00000000
        jmp     ?_108                                   ; 27EE _ EB, 14

?_107:  mov     eax, dword [ebp+8H]                     ; 27F0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 27F3 _ 8B. 55, FC
        add     edx, 2                                  ; 27F6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 27F9 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 27FD _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2800 _ 83. 45, FC, 01
?_108:  mov     eax, dword [ebp+8H]                     ; 2804 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2807 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2809 _ 39. 45, FC
        jl      ?_107                                   ; 280C _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 280E _ 8B. 45, F8
        leave                                           ; 2811 _ C9
        ret                                             ; 2812 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2813 _ 55
        mov     ebp, esp                                ; 2814 _ 89. E5
        sub     esp, 16                                 ; 2816 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2819 _ C7. 45, F8, 00000000
        jmp     ?_112                                   ; 2820 _ E9, 00000085

?_109:  mov     eax, dword [ebp+8H]                     ; 2825 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2828 _ 8B. 55, F8
        add     edx, 2                                  ; 282B _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 282E _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2832 _ 39. 45, 0C
        ja      ?_111                                   ; 2835 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2837 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 283A _ 8B. 55, F8
        add     edx, 2                                  ; 283D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2840 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2843 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2846 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2849 _ 8B. 55, F8
        add     edx, 2                                  ; 284C _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 284F _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2852 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2855 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2858 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 285B _ 8B. 55, F8
        add     edx, 2                                  ; 285E _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2861 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2864 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2867 _ 8B. 55, F8
        add     edx, 2                                  ; 286A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 286D _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2871 _ 2B. 45, 0C
        mov     edx, eax                                ; 2874 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2876 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2879 _ 8B. 4D, F8
        add     ecx, 2                                  ; 287C _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 287F _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2883 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2886 _ 8B. 55, F8
        add     edx, 2                                  ; 2889 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 288C _ 8B. 44 D0, 04
        test    eax, eax                                ; 2890 _ 85. C0
        jnz     ?_110                                   ; 2892 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2894 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2897 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2899 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 289C _ 8B. 45, 08
        mov     dword [eax], edx                        ; 289F _ 89. 10
?_110:  mov     eax, dword [ebp-4H]                     ; 28A1 _ 8B. 45, FC
        jmp     ?_113                                   ; 28A4 _ EB, 17

?_111:  add     dword [ebp-8H], 1                       ; 28A6 _ 83. 45, F8, 01
?_112:  mov     eax, dword [ebp+8H]                     ; 28AA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28AD _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 28AF _ 39. 45, F8
        jl      ?_109                                   ; 28B2 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 28B8 _ B8, 00000000
?_113:  leave                                           ; 28BD _ C9
        ret                                             ; 28BE _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 28BF _ 55
        mov     ebp, esp                                ; 28C0 _ 89. E5
        sub     esp, 16                                 ; 28C2 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 28C5 _ 8B. 45, 0C
        add     eax, 4095                               ; 28C8 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 28CD _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 28D2 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 28D5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 28D8 _ FF. 75, 08
        call    memman_alloc_FF                         ; 28DB _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 28E0 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 28E3 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 28E6 _ 8B. 45, FC
        leave                                           ; 28E9 _ C9
        ret                                             ; 28EA _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 28EB _ 55
        mov     ebp, esp                                ; 28EC _ 89. E5
        push    ebx                                     ; 28EE _ 53
        sub     esp, 16                                 ; 28EF _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 28F2 _ C7. 45, F4, 00000000
        jmp     ?_115                                   ; 28F9 _ EB, 15

?_114:  mov     eax, dword [ebp+8H]                     ; 28FB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28FE _ 8B. 55, F4
        add     edx, 2                                  ; 2901 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2904 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2907 _ 39. 45, 0C
        jc      ?_116                                   ; 290A _ 72, 10
        add     dword [ebp-0CH], 1                      ; 290C _ 83. 45, F4, 01
?_115:  mov     eax, dword [ebp+8H]                     ; 2910 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2913 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2915 _ 39. 45, F4
        jl      ?_114                                   ; 2918 _ 7C, E1
        jmp     ?_117                                   ; 291A _ EB, 01

?_116:  nop                                             ; 291C _ 90
?_117:  cmp     dword [ebp-0CH], 0                      ; 291D _ 83. 7D, F4, 00
        jle     ?_119                                   ; 2921 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2927 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 292A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 292D _ 8B. 45, 08
        add     edx, 2                                  ; 2930 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2933 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2936 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2939 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 293C _ 8B. 45, 08
        add     ecx, 2                                  ; 293F _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2942 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2946 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2948 _ 39. 45, 0C
        jne     ?_119                                   ; 294B _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2951 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2954 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2957 _ 8B. 45, 08
        add     edx, 2                                  ; 295A _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 295D _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2961 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2964 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2967 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 296A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 296D _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2970 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2973 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2977 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 297A _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 297C _ 39. 45, F4
        jge     ?_118                                   ; 297F _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2981 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2984 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2987 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 298A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 298D _ 8B. 55, F4
        add     edx, 2                                  ; 2990 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2993 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2996 _ 39. C1
        jnz     ?_118                                   ; 2998 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 299A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 299D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 29A0 _ 8B. 45, 08
        add     edx, 2                                  ; 29A3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 29A6 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 29AA _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 29AD _ 8B. 4D, F4
        add     ecx, 2                                  ; 29B0 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 29B3 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 29B7 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 29BA _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 29BD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 29C0 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 29C3 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 29C6 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 29CA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29CD _ 8B. 00
        lea     edx, [eax-1H]                           ; 29CF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 29D2 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 29D5 _ 89. 10
?_118:  mov     eax, 0                                  ; 29D7 _ B8, 00000000
        jmp     ?_125                                   ; 29DC _ E9, 0000011C

?_119:  mov     eax, dword [ebp+8H]                     ; 29E1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29E4 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 29E6 _ 39. 45, F4
        jge     ?_120                                   ; 29E9 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 29EB _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 29EE _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 29F1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 29F4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 29F7 _ 8B. 55, F4
        add     edx, 2                                  ; 29FA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 29FD _ 8B. 04 D0
        cmp     ecx, eax                                ; 2A00 _ 39. C1
        jnz     ?_120                                   ; 2A02 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2A04 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A07 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2A0A _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2A0D _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2A10 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2A13 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A16 _ 8B. 55, F4
        add     edx, 2                                  ; 2A19 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2A1C _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2A20 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2A23 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2A26 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A29 _ 8B. 55, F4
        add     edx, 2                                  ; 2A2C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2A2F _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2A33 _ B8, 00000000
        jmp     ?_125                                   ; 2A38 _ E9, 000000C0

?_120:  mov     eax, dword [ebp+8H]                     ; 2A3D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A40 _ 8B. 00
        cmp     eax, 4095                               ; 2A42 _ 3D, 00000FFF
        jg      ?_124                                   ; 2A47 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2A4D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A50 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2A52 _ 89. 45, F8
        jmp     ?_122                                   ; 2A55 _ EB, 28

?_121:  mov     eax, dword [ebp-8H]                     ; 2A57 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2A5A _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2A5D _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2A60 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2A63 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2A66 _ 8B. 45, 08
        add     edx, 2                                  ; 2A69 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2A6C _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2A6F _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2A71 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2A74 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2A77 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2A7B _ 83. 6D, F8, 01
?_122:  mov     eax, dword [ebp-8H]                     ; 2A7F _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2A82 _ 3B. 45, F4
        jg      ?_121                                   ; 2A85 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2A87 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A8A _ 8B. 00
        lea     edx, [eax+1H]                           ; 2A8C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A8F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2A92 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2A94 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2A97 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2A9A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A9D _ 8B. 00
        cmp     edx, eax                                ; 2A9F _ 39. C2
        jge     ?_123                                   ; 2AA1 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2AA3 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2AA6 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2AA8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2AAB _ 89. 50, 04
?_123:  mov     eax, dword [ebp+8H]                     ; 2AAE _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2AB1 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2AB4 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2AB7 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2ABA _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2ABD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2AC0 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2AC3 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2AC6 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2AC9 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2ACD _ B8, 00000000
        jmp     ?_125                                   ; 2AD2 _ EB, 29

?_124:  mov     eax, dword [ebp+8H]                     ; 2AD4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2AD7 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2ADA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2ADD _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2AE0 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2AE3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AE6 _ 8B. 40, 08
        mov     edx, eax                                ; 2AE9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2AEB _ 8B. 45, 10
        add     eax, edx                                ; 2AEE _ 01. D0
        mov     edx, eax                                ; 2AF0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2AF2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2AF5 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2AF8 _ B8, FFFFFFFF
?_125:  add     esp, 16                                 ; 2AFD _ 83. C4, 10
        pop     ebx                                     ; 2B00 _ 5B
        pop     ebp                                     ; 2B01 _ 5D
        ret                                             ; 2B02 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2B03 _ 55
        mov     ebp, esp                                ; 2B04 _ 89. E5
        sub     esp, 16                                 ; 2B06 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2B09 _ 8B. 45, 10
        add     eax, 4095                               ; 2B0C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2B11 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2B16 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2B19 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2B1C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2B1F _ FF. 75, 08
        call    memman_free                             ; 2B22 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2B27 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2B2A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2B2D _ 8B. 45, FC
        leave                                           ; 2B30 _ C9
        ret                                             ; 2B31 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2B32 _ 55
        mov     ebp, esp                                ; 2B33 _ 89. E5
        sub     esp, 24                                 ; 2B35 _ 83. EC, 18
        sub     esp, 8                                  ; 2B38 _ 83. EC, 08
        push    9232                                    ; 2B3B _ 68, 00002410
        push    dword [ebp+8H]                          ; 2B40 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2B43 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B48 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2B4B _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2B4E _ 83. 7D, F4, 00
        jnz     ?_126                                   ; 2B52 _ 75, 0A
        mov     eax, 0                                  ; 2B54 _ B8, 00000000
        jmp     ?_130                                   ; 2B59 _ E9, 0000009A

?_126:  mov     eax, dword [ebp+10H]                    ; 2B5E _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2B61 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2B65 _ 83. EC, 08
        push    eax                                     ; 2B68 _ 50
        push    dword [ebp+8H]                          ; 2B69 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2B6C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B71 _ 83. C4, 10
        mov     edx, eax                                ; 2B74 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2B76 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2B79 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2B7C _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2B7F _ 8B. 40, 04
        test    eax, eax                                ; 2B82 _ 85. C0
        jnz     ?_127                                   ; 2B84 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2B86 _ 8B. 45, F4
        sub     esp, 4                                  ; 2B89 _ 83. EC, 04
        push    9232                                    ; 2B8C _ 68, 00002410
        push    eax                                     ; 2B91 _ 50
        push    dword [ebp+8H]                          ; 2B92 _ FF. 75, 08
        call    memman_free_4K                          ; 2B95 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B9A _ 83. C4, 10
        mov     eax, 0                                  ; 2B9D _ B8, 00000000
        jmp     ?_130                                   ; 2BA2 _ EB, 54

?_127:  mov     eax, dword [ebp-0CH]                    ; 2BA4 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2BA7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2BAA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2BAC _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2BAF _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2BB2 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2BB5 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2BB8 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2BBB _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2BBE _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2BC1 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2BC8 _ C7. 45, F0, 00000000
        jmp     ?_129                                   ; 2BCF _ EB, 1B

?_128:  mov     eax, dword [ebp-0CH]                    ; 2BD1 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2BD4 _ 8B. 55, F0
        add     edx, 33                                 ; 2BD7 _ 83. C2, 21
        shl     edx, 5                                  ; 2BDA _ C1. E2, 05
        add     eax, edx                                ; 2BDD _ 01. D0
        add     eax, 16                                 ; 2BDF _ 83. C0, 10
        mov     dword [eax], 0                          ; 2BE2 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2BE8 _ 83. 45, F0, 01
?_129:  cmp     dword [ebp-10H], 255                    ; 2BEC _ 81. 7D, F0, 000000FF
        jle     ?_128                                   ; 2BF3 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2BF5 _ 8B. 45, F4
?_130:  leave                                           ; 2BF8 _ C9
        ret                                             ; 2BF9 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2BFA _ 55
        mov     ebp, esp                                ; 2BFB _ 89. E5
        sub     esp, 16                                 ; 2BFD _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2C00 _ C7. 45, F8, 00000000
        jmp     ?_133                                   ; 2C07 _ EB, 4B

?_131:  mov     eax, dword [ebp+8H]                     ; 2C09 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2C0C _ 8B. 55, F8
        add     edx, 33                                 ; 2C0F _ 83. C2, 21
        shl     edx, 5                                  ; 2C12 _ C1. E2, 05
        add     eax, edx                                ; 2C15 _ 01. D0
        add     eax, 16                                 ; 2C17 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2C1A _ 8B. 00
        test    eax, eax                                ; 2C1C _ 85. C0
        jnz     ?_132                                   ; 2C1E _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2C20 _ 8B. 45, F8
        shl     eax, 5                                  ; 2C23 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2C26 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2C2C _ 8B. 45, 08
        add     eax, edx                                ; 2C2F _ 01. D0
        add     eax, 4                                  ; 2C31 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2C34 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2C37 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2C3A _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2C41 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2C44 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2C4B _ 8B. 45, FC
        jmp     ?_134                                   ; 2C4E _ EB, 12

?_132:  add     dword [ebp-8H], 1                       ; 2C50 _ 83. 45, F8, 01
?_133:  cmp     dword [ebp-8H], 255                     ; 2C54 _ 81. 7D, F8, 000000FF
        jle     ?_131                                   ; 2C5B _ 7E, AC
        mov     eax, 0                                  ; 2C5D _ B8, 00000000
?_134:  leave                                           ; 2C62 _ C9
        ret                                             ; 2C63 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2C64 _ 55
        mov     ebp, esp                                ; 2C65 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C67 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C6A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2C6D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2C6F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C72 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2C75 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2C78 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2C7B _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2C7E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2C81 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2C84 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2C87 _ 89. 50, 14
        nop                                             ; 2C8A _ 90
        pop     ebp                                     ; 2C8B _ 5D
        ret                                             ; 2C8C _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2C8D _ 55
        mov     ebp, esp                                ; 2C8E _ 89. E5
        push    esi                                     ; 2C90 _ 56
        push    ebx                                     ; 2C91 _ 53
        sub     esp, 32                                 ; 2C92 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2C95 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C98 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2C9B _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2C9E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CA1 _ 8B. 40, 10
        add     eax, 1                                  ; 2CA4 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2CA7 _ 39. 45, 10
        jle     ?_135                                   ; 2CAA _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2CAC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CAF _ 8B. 40, 10
        add     eax, 1                                  ; 2CB2 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2CB5 _ 89. 45, 10
?_135:  cmp     dword [ebp+10H], -1                     ; 2CB8 _ 83. 7D, 10, FF
        jge     ?_136                                   ; 2CBC _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2CBE _ C7. 45, 10, FFFFFFFF
?_136:  mov     eax, dword [ebp+0CH]                    ; 2CC5 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2CC8 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2CCB _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2CCE _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2CD1 _ 3B. 45, 10
        jle     ?_143                                   ; 2CD4 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2CDA _ 83. 7D, 10, 00
        js      ?_139                                   ; 2CDE _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2CE4 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2CE7 _ 89. 45, E4
        jmp     ?_138                                   ; 2CEA _ EB, 34

?_137:  mov     eax, dword [ebp-1CH]                    ; 2CEC _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2CEF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CF2 _ 8B. 45, 08
        add     edx, 4                                  ; 2CF5 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2CF8 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2CFC _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2CFF _ 8B. 4D, E4
        add     ecx, 4                                  ; 2D02 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2D05 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2D09 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2D0C _ 8B. 55, E4
        add     edx, 4                                  ; 2D0F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D12 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2D16 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2D19 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2D1C _ 83. 6D, E4, 01
?_138:  mov     eax, dword [ebp-1CH]                    ; 2D20 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2D23 _ 3B. 45, 10
        jg      ?_137                                   ; 2D26 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2D28 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2D2B _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2D2E _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2D31 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2D34 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2D38 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2D3B _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2D3E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D41 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D44 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D47 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D4A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D4D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D50 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D53 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D56 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D59 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D5C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D5F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D62 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D65 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2D68 _ 83. EC, 08
        push    esi                                     ; 2D6B _ 56
        push    ebx                                     ; 2D6C _ 53
        push    ecx                                     ; 2D6D _ 51
        push    edx                                     ; 2D6E _ 52
        push    eax                                     ; 2D6F _ 50
        push    dword [ebp+8H]                          ; 2D70 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2D73 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D78 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2D7B _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2D7E _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2D81 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D84 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D87 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D8A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D8D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D90 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D93 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D96 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D99 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D9C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D9F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DA2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DA5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2DA8 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2DAB _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2DAE _ FF. 75, F4
        push    esi                                     ; 2DB1 _ 56
        push    ebx                                     ; 2DB2 _ 53
        push    ecx                                     ; 2DB3 _ 51
        push    edx                                     ; 2DB4 _ 52
        push    eax                                     ; 2DB5 _ 50
        push    dword [ebp+8H]                          ; 2DB6 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2DB9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2DBE _ 83. C4, 20
        jmp     ?_150                                   ; 2DC1 _ E9, 00000244

?_139:  mov     eax, dword [ebp+8H]                     ; 2DC6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DC9 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2DCC _ 39. 45, F4
        jge     ?_142                                   ; 2DCF _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2DD1 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2DD4 _ 89. 45, E8
        jmp     ?_141                                   ; 2DD7 _ EB, 34

?_140:  mov     eax, dword [ebp-18H]                    ; 2DD9 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2DDC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2DDF _ 8B. 45, 08
        add     edx, 4                                  ; 2DE2 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2DE5 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DE9 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2DEC _ 8B. 4D, E8
        add     ecx, 4                                  ; 2DEF _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2DF2 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2DF6 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2DF9 _ 8B. 55, E8
        add     edx, 4                                  ; 2DFC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2DFF _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2E03 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2E06 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2E09 _ 83. 45, E8, 01
?_141:  mov     eax, dword [ebp+8H]                     ; 2E0D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E10 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2E13 _ 39. 45, E8
        jl      ?_140                                   ; 2E16 _ 7C, C1
?_142:  mov     eax, dword [ebp+8H]                     ; 2E18 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E1B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2E1E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E21 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E24 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E27 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E2A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E2D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E30 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E33 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E36 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E39 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E3C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E3F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E42 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E45 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E48 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E4B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E4E _ 8B. 40, 0C
        sub     esp, 8                                  ; 2E51 _ 83. EC, 08
        push    0                                       ; 2E54 _ 6A, 00
        push    ebx                                     ; 2E56 _ 53
        push    ecx                                     ; 2E57 _ 51
        push    edx                                     ; 2E58 _ 52
        push    eax                                     ; 2E59 _ 50
        push    dword [ebp+8H]                          ; 2E5A _ FF. 75, 08
        call    sheet_refreshmap                        ; 2E5D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2E62 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2E65 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2E68 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2E6B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E6E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E71 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E74 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E77 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E7A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E7D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E80 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E83 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E86 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E89 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E8C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E8F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E92 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2E95 _ 83. EC, 04
        push    esi                                     ; 2E98 _ 56
        push    0                                       ; 2E99 _ 6A, 00
        push    ebx                                     ; 2E9B _ 53
        push    ecx                                     ; 2E9C _ 51
        push    edx                                     ; 2E9D _ 52
        push    eax                                     ; 2E9E _ 50
        push    dword [ebp+8H]                          ; 2E9F _ FF. 75, 08
        call    sheet_refresh_new                       ; 2EA2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2EA7 _ 83. C4, 20
        jmp     ?_150                                   ; 2EAA _ E9, 0000015B

?_143:  mov     eax, dword [ebp-0CH]                    ; 2EAF _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2EB2 _ 3B. 45, 10
        jge     ?_150                                   ; 2EB5 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2EBB _ 83. 7D, F4, 00
        js      ?_146                                   ; 2EBF _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2EC1 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2EC4 _ 89. 45, EC
        jmp     ?_145                                   ; 2EC7 _ EB, 34

?_144:  mov     eax, dword [ebp-14H]                    ; 2EC9 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2ECC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2ECF _ 8B. 45, 08
        add     edx, 4                                  ; 2ED2 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2ED5 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2ED9 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2EDC _ 8B. 4D, EC
        add     ecx, 4                                  ; 2EDF _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2EE2 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2EE6 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2EE9 _ 8B. 55, EC
        add     edx, 4                                  ; 2EEC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2EEF _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2EF3 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2EF6 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2EF9 _ 83. 45, EC, 01
?_145:  mov     eax, dword [ebp-14H]                    ; 2EFD _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2F00 _ 3B. 45, 10
        jl      ?_144                                   ; 2F03 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2F05 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F08 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2F0B _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2F0E _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2F11 _ 89. 54 88, 04
        jmp     ?_149                                   ; 2F15 _ EB, 72

?_146:  cmp     dword [ebp-0CH], 0                      ; 2F17 _ 83. 7D, F4, 00
        jns     ?_149                                   ; 2F1B _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2F1D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F20 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2F23 _ 89. 45, F0
        jmp     ?_148                                   ; 2F26 _ EB, 3A

?_147:  mov     eax, dword [ebp-10H]                    ; 2F28 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2F2B _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2F2E _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2F31 _ 8B. 55, F0
        add     edx, 4                                  ; 2F34 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2F37 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2F3B _ 8B. 45, 08
        add     ecx, 4                                  ; 2F3E _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2F41 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2F45 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2F48 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F4B _ 8B. 45, 08
        add     edx, 4                                  ; 2F4E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2F51 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2F55 _ 8B. 55, F0
        add     edx, 1                                  ; 2F58 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2F5B _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2F5E _ 83. 6D, F0, 01
?_148:  mov     eax, dword [ebp-10H]                    ; 2F62 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2F65 _ 3B. 45, 10
        jge     ?_147                                   ; 2F68 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2F6A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F6D _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2F70 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2F73 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2F76 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2F7A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F7D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2F80 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F83 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2F86 _ 89. 50, 10
?_149:  mov     eax, dword [ebp+0CH]                    ; 2F89 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F8C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F8F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2F92 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2F95 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2F98 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F9B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F9E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2FA1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2FA4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2FA7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FAA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FAD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FB0 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2FB3 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2FB6 _ FF. 75, 10
        push    ebx                                     ; 2FB9 _ 53
        push    ecx                                     ; 2FBA _ 51
        push    edx                                     ; 2FBB _ 52
        push    eax                                     ; 2FBC _ 50
        push    dword [ebp+8H]                          ; 2FBD _ FF. 75, 08
        call    sheet_refreshmap                        ; 2FC0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FC5 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2FC8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FCB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FCE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2FD1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2FD4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2FD7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2FDA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2FDD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2FE0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2FE3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2FE6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FE9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FEC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FEF _ 8B. 40, 0C
        sub     esp, 4                                  ; 2FF2 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2FF5 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2FF8 _ FF. 75, 10
        push    ebx                                     ; 2FFB _ 53
        push    ecx                                     ; 2FFC _ 51
        push    edx                                     ; 2FFD _ 52
        push    eax                                     ; 2FFE _ 50
        push    dword [ebp+8H]                          ; 2FFF _ FF. 75, 08
        call    sheet_refresh_new                       ; 3002 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3007 _ 83. C4, 20
?_150:  nop                                             ; 300A _ 90
        lea     esp, [ebp-8H]                           ; 300B _ 8D. 65, F8
        pop     ebx                                     ; 300E _ 5B
        pop     esi                                     ; 300F _ 5E
        pop     ebp                                     ; 3010 _ 5D
        ret                                             ; 3011 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 3012 _ 55
        mov     ebp, esp                                ; 3013 _ 89. E5
        push    edi                                     ; 3015 _ 57
        push    esi                                     ; 3016 _ 56
        push    ebx                                     ; 3017 _ 53
        sub     esp, 28                                 ; 3018 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 301B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 301E _ 8B. 40, 18
        test    eax, eax                                ; 3021 _ 85. C0
        js      ?_151                                   ; 3023 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 3025 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 3028 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 302B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 302E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3031 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3034 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 3037 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 303A _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 303D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3040 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3043 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 3046 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 3049 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 304C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 304F _ 8B. 45, 14
        add     edx, eax                                ; 3052 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3054 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3057 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 305A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 305D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3060 _ 03. 45, E4
        sub     esp, 4                                  ; 3063 _ 83. EC, 04
        push    ebx                                     ; 3066 _ 53
        push    ecx                                     ; 3067 _ 51
        push    edi                                     ; 3068 _ 57
        push    esi                                     ; 3069 _ 56
        push    edx                                     ; 306A _ 52
        push    eax                                     ; 306B _ 50
        push    dword [ebp+8H]                          ; 306C _ FF. 75, 08
        call    sheet_refresh_new                       ; 306F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3074 _ 83. C4, 20
?_151:  mov     eax, 0                                  ; 3077 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 307C _ 8D. 65, F4
        pop     ebx                                     ; 307F _ 5B
        pop     esi                                     ; 3080 _ 5E
        pop     edi                                     ; 3081 _ 5F
        pop     ebp                                     ; 3082 _ 5D
        ret                                             ; 3083 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 3084 _ 55
        mov     ebp, esp                                ; 3085 _ 89. E5
        push    esi                                     ; 3087 _ 56
        push    ebx                                     ; 3088 _ 53
        sub     esp, 16                                 ; 3089 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 308C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 308F _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 3092 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 3095 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3098 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 309B _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 309E _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 30A1 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 30A4 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 30A7 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 30AA _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 30AD _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 30B0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 30B3 _ 8B. 40, 18
        test    eax, eax                                ; 30B6 _ 85. C0
        js      ?_152                                   ; 30B8 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 30BE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 30C1 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 30C4 _ 8B. 45, F4
        add     edx, eax                                ; 30C7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 30C9 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 30CC _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 30CF _ 8B. 45, F0
        add     eax, ecx                                ; 30D2 _ 01. C8
        sub     esp, 8                                  ; 30D4 _ 83. EC, 08
        push    0                                       ; 30D7 _ 6A, 00
        push    edx                                     ; 30D9 _ 52
        push    eax                                     ; 30DA _ 50
        push    dword [ebp-0CH]                         ; 30DB _ FF. 75, F4
        push    dword [ebp-10H]                         ; 30DE _ FF. 75, F0
        push    dword [ebp+8H]                          ; 30E1 _ FF. 75, 08
        call    sheet_refreshmap                        ; 30E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 30E9 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 30EC _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 30EF _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 30F2 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 30F5 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 30F8 _ 8B. 55, 14
        add     ecx, edx                                ; 30FB _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 30FD _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 3100 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 3103 _ 8B. 55, 10
        add     edx, ebx                                ; 3106 _ 01. DA
        sub     esp, 8                                  ; 3108 _ 83. EC, 08
        push    eax                                     ; 310B _ 50
        push    ecx                                     ; 310C _ 51
        push    edx                                     ; 310D _ 52
        push    dword [ebp+14H]                         ; 310E _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3111 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3114 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3117 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 311C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 311F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3122 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3125 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3128 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 312B _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 312E _ 8B. 45, F4
        add     edx, eax                                ; 3131 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3133 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3136 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 3139 _ 8B. 45, F0
        add     eax, ebx                                ; 313C _ 01. D8
        sub     esp, 4                                  ; 313E _ 83. EC, 04
        push    ecx                                     ; 3141 _ 51
        push    0                                       ; 3142 _ 6A, 00
        push    edx                                     ; 3144 _ 52
        push    eax                                     ; 3145 _ 50
        push    dword [ebp-0CH]                         ; 3146 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 3149 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 314C _ FF. 75, 08
        call    sheet_refresh_new                       ; 314F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3154 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3157 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 315A _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 315D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3160 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 3163 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 3166 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 3169 _ 8B. 4D, 14
        add     ebx, ecx                                ; 316C _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 316E _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 3171 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 3174 _ 8B. 4D, 10
        add     ecx, esi                                ; 3177 _ 01. F1
        sub     esp, 4                                  ; 3179 _ 83. EC, 04
        push    edx                                     ; 317C _ 52
        push    eax                                     ; 317D _ 50
        push    ebx                                     ; 317E _ 53
        push    ecx                                     ; 317F _ 51
        push    dword [ebp+14H]                         ; 3180 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3183 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3186 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3189 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 318E _ 83. C4, 20
?_152:  nop                                             ; 3191 _ 90
        lea     esp, [ebp-8H]                           ; 3192 _ 8D. 65, F8
        pop     ebx                                     ; 3195 _ 5B
        pop     esi                                     ; 3196 _ 5E
        pop     ebp                                     ; 3197 _ 5D
        ret                                             ; 3198 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 3199 _ 55
        mov     ebp, esp                                ; 319A _ 89. E5
        sub     esp, 48                                 ; 319C _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 319F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 31A2 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 31A4 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 31A7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 31AA _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 31AD _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 31B0 _ 83. 7D, 0C, 00
        jns     ?_153                                   ; 31B4 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 31B6 _ C7. 45, 0C, 00000000
?_153:  cmp     dword [ebp+10H], 8                      ; 31BD _ 83. 7D, 10, 08
        jg      ?_154                                   ; 31C1 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 31C3 _ C7. 45, 10, 00000000
?_154:  mov     eax, dword [ebp+8H]                     ; 31CA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31CD _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 31D0 _ 39. 45, 14
        jle     ?_155                                   ; 31D3 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 31D5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31D8 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 31DB _ 89. 45, 14
?_155:  mov     eax, dword [ebp+8H]                     ; 31DE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31E1 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 31E4 _ 39. 45, 18
        jle     ?_156                                   ; 31E7 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 31E9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31EC _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 31EF _ 89. 45, 18
?_156:  mov     eax, dword [ebp+1CH]                    ; 31F2 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 31F5 _ 89. 45, DC
        jmp     ?_163                                   ; 31F8 _ E9, 00000118

?_157:  mov     eax, dword [ebp+8H]                     ; 31FD _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 3200 _ 8B. 55, DC
        add     edx, 4                                  ; 3203 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3206 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 320A _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 320D _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3210 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3212 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3215 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3218 _ 8B. 55, 08
        add     edx, 1044                               ; 321B _ 81. C2, 00000414
        sub     eax, edx                                ; 3221 _ 29. D0
        sar     eax, 5                                  ; 3223 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 3226 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 3229 _ C7. 45, E0, 00000000
        jmp     ?_162                                   ; 3230 _ E9, 000000CD

?_158:  mov     eax, dword [ebp-10H]                    ; 3235 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 3238 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 323B _ 8B. 45, E0
        add     eax, edx                                ; 323E _ 01. D0
        mov     dword [ebp-8H], eax                     ; 3240 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 3243 _ C7. 45, E4, 00000000
        jmp     ?_161                                   ; 324A _ E9, 000000A0

?_159:  mov     eax, dword [ebp-10H]                    ; 324F _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3252 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 3255 _ 8B. 45, E4
        add     eax, edx                                ; 3258 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 325A _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 325D _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 3260 _ 3B. 45, FC
        jg      ?_160                                   ; 3263 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 3269 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 326C _ 3B. 45, 14
        jge     ?_160                                   ; 326F _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 3271 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 3274 _ 3B. 45, F8
        jg      ?_160                                   ; 3277 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 3279 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 327C _ 3B. 45, 18
        jge     ?_160                                   ; 327F _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 3281 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3284 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 3287 _ 0F AF. 45, E0
        mov     edx, eax                                ; 328B _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 328D _ 8B. 45, E4
        add     eax, edx                                ; 3290 _ 01. D0
        mov     edx, eax                                ; 3292 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3294 _ 8B. 45, F4
        add     eax, edx                                ; 3297 _ 01. D0
        movzx   eax, byte [eax]                         ; 3299 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 329C _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 329F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 32A2 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 32A5 _ 0F AF. 45, F8
        mov     edx, eax                                ; 32A9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 32AB _ 8B. 45, FC
        add     eax, edx                                ; 32AE _ 01. D0
        mov     edx, eax                                ; 32B0 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 32B2 _ 8B. 45, EC
        add     eax, edx                                ; 32B5 _ 01. D0
        movzx   eax, byte [eax]                         ; 32B7 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 32BA _ 38. 45, DA
        jnz     ?_160                                   ; 32BD _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 32BF _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 32C3 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 32C6 _ 8B. 40, 14
        cmp     edx, eax                                ; 32C9 _ 39. C2
        jz      ?_160                                   ; 32CB _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 32CD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 32D0 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 32D3 _ 0F AF. 45, F8
        mov     edx, eax                                ; 32D7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 32D9 _ 8B. 45, FC
        add     eax, edx                                ; 32DC _ 01. D0
        mov     edx, eax                                ; 32DE _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 32E0 _ 8B. 45, E8
        add     edx, eax                                ; 32E3 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 32E5 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 32E9 _ 88. 02
?_160:  add     dword [ebp-1CH], 1                      ; 32EB _ 83. 45, E4, 01
?_161:  mov     eax, dword [ebp-10H]                    ; 32EF _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32F2 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 32F5 _ 39. 45, E4
        jl      ?_159                                   ; 32F8 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 32FE _ 83. 45, E0, 01
?_162:  mov     eax, dword [ebp-10H]                    ; 3302 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3305 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 3308 _ 39. 45, E0
        jl      ?_158                                   ; 330B _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 3311 _ 83. 45, DC, 01
?_163:  mov     eax, dword [ebp-24H]                    ; 3315 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 3318 _ 3B. 45, 20
        jle     ?_157                                   ; 331B _ 0F 8E, FFFFFEDC
        nop                                             ; 3321 _ 90
        leave                                           ; 3322 _ C9
        ret                                             ; 3323 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 3324 _ 55
        mov     ebp, esp                                ; 3325 _ 89. E5
        sub     esp, 64                                 ; 3327 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 332A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 332D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3330 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3333 _ 83. 7D, 0C, 00
        jns     ?_164                                   ; 3337 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3339 _ C7. 45, 0C, 00000000
?_164:  mov     eax, dword [ebp+8H]                     ; 3340 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3343 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 3346 _ 39. 45, 0C
        jle     ?_165                                   ; 3349 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 334B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 334E _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 3351 _ 89. 45, 0C
?_165:  cmp     dword [ebp+10H], 0                      ; 3354 _ 83. 7D, 10, 00
        jns     ?_166                                   ; 3358 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 335A _ C7. 45, 10, 00000000
?_166:  mov     eax, dword [ebp+8H]                     ; 3361 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3364 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 3367 _ 39. 45, 10
        jle     ?_167                                   ; 336A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 336C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 336F _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 3372 _ 89. 45, 10
?_167:  mov     eax, dword [ebp+1CH]                    ; 3375 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 3378 _ 89. 45, E0
        jmp     ?_178                                   ; 337B _ E9, 00000140

?_168:  mov     eax, dword [ebp+8H]                     ; 3380 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 3383 _ 8B. 55, E0
        add     edx, 4                                  ; 3386 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3389 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 338D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3390 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3393 _ 8B. 55, 08
        add     edx, 1044                               ; 3396 _ 81. C2, 00000414
        sub     eax, edx                                ; 339C _ 29. D0
        sar     eax, 5                                  ; 339E _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 33A1 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 33A4 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 33A7 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 33A9 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 33AC _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 33AF _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 33B2 _ 8B. 55, 0C
        sub     edx, eax                                ; 33B5 _ 29. C2
        mov     eax, edx                                ; 33B7 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 33B9 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 33BC _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 33BF _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 33C2 _ 8B. 55, 10
        sub     edx, eax                                ; 33C5 _ 29. C2
        mov     eax, edx                                ; 33C7 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 33C9 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 33CC _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 33CF _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 33D2 _ 8B. 55, 14
        sub     edx, eax                                ; 33D5 _ 29. C2
        mov     eax, edx                                ; 33D7 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 33D9 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 33DC _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 33DF _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 33E2 _ 8B. 55, 18
        sub     edx, eax                                ; 33E5 _ 29. C2
        mov     eax, edx                                ; 33E7 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 33E9 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 33EC _ 83. 7D, D0, 00
        jns     ?_169                                   ; 33F0 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 33F2 _ C7. 45, D0, 00000000
?_169:  cmp     dword [ebp-2CH], 0                      ; 33F9 _ 83. 7D, D4, 00
        jns     ?_170                                   ; 33FD _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 33FF _ C7. 45, D4, 00000000
?_170:  mov     eax, dword [ebp-10H]                    ; 3406 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3409 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 340C _ 39. 45, D8
        jle     ?_171                                   ; 340F _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3411 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3414 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 3417 _ 89. 45, D8
?_171:  mov     eax, dword [ebp-10H]                    ; 341A _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 341D _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 3420 _ 39. 45, DC
        jle     ?_172                                   ; 3423 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3425 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3428 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 342B _ 89. 45, DC
?_172:  mov     eax, dword [ebp-2CH]                    ; 342E _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 3431 _ 89. 45, E4
        jmp     ?_177                                   ; 3434 _ EB, 7A

?_173:  mov     eax, dword [ebp-10H]                    ; 3436 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 3439 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 343C _ 8B. 45, E4
        add     eax, edx                                ; 343F _ 01. D0
        mov     dword [ebp-8H], eax                     ; 3441 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 3444 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 3447 _ 89. 45, E8
        jmp     ?_176                                   ; 344A _ EB, 58

?_174:  mov     eax, dword [ebp-10H]                    ; 344C _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 344F _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 3452 _ 8B. 45, E8
        add     eax, edx                                ; 3455 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 3457 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 345A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 345D _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 3460 _ 0F AF. 45, E4
        mov     edx, eax                                ; 3464 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3466 _ 8B. 45, E8
        add     eax, edx                                ; 3469 _ 01. D0
        mov     edx, eax                                ; 346B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 346D _ 8B. 45, F4
        add     eax, edx                                ; 3470 _ 01. D0
        movzx   eax, byte [eax]                         ; 3472 _ 0F B6. 00
        movzx   edx, al                                 ; 3475 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 3478 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 347B _ 8B. 40, 14
        cmp     edx, eax                                ; 347E _ 39. C2
        jz      ?_175                                   ; 3480 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3482 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3485 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3488 _ 0F AF. 45, F8
        mov     edx, eax                                ; 348C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 348E _ 8B. 45, FC
        add     eax, edx                                ; 3491 _ 01. D0
        mov     edx, eax                                ; 3493 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3495 _ 8B. 45, EC
        add     edx, eax                                ; 3498 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 349A _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 349E _ 88. 02
?_175:  add     dword [ebp-18H], 1                      ; 34A0 _ 83. 45, E8, 01
?_176:  mov     eax, dword [ebp-18H]                    ; 34A4 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 34A7 _ 3B. 45, D8
        jl      ?_174                                   ; 34AA _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 34AC _ 83. 45, E4, 01
?_177:  mov     eax, dword [ebp-1CH]                    ; 34B0 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 34B3 _ 3B. 45, DC
        jl      ?_173                                   ; 34B6 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 34BC _ 83. 45, E0, 01
?_178:  mov     eax, dword [ebp+8H]                     ; 34C0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34C3 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 34C6 _ 39. 45, E0
        jle     ?_168                                   ; 34C9 _ 0F 8E, FFFFFEB1
        nop                                             ; 34CF _ 90
        leave                                           ; 34D0 _ C9
        ret                                             ; 34D1 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 34D2 _ 55
        mov     ebp, esp                                ; 34D3 _ 89. E5
        sub     esp, 24                                 ; 34D5 _ 83. EC, 18
        sub     esp, 8                                  ; 34D8 _ 83. EC, 08
        push    52                                      ; 34DB _ 6A, 34
        push    67                                      ; 34DD _ 6A, 43
        call    io_out8                                 ; 34DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 34E4 _ 83. C4, 10
        sub     esp, 8                                  ; 34E7 _ 83. EC, 08
        push    156                                     ; 34EA _ 68, 0000009C
        push    64                                      ; 34EF _ 6A, 40
        call    io_out8                                 ; 34F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 34F6 _ 83. C4, 10
        sub     esp, 8                                  ; 34F9 _ 83. EC, 08
        push    46                                      ; 34FC _ 6A, 2E
        push    64                                      ; 34FE _ 6A, 40
        call    io_out8                                 ; 3500 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3505 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3508 _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3512 _ C7. 45, F4, 00000000
        jmp     ?_180                                   ; 3519 _ EB, 26

?_179:  mov     eax, dword [ebp-0CH]                    ; 351B _ 8B. 45, F4
        shl     eax, 4                                  ; 351E _ C1. E0, 04
        add     eax, ?_251                              ; 3521 _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 3526 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 352C _ 8B. 45, F4
        shl     eax, 4                                  ; 352F _ C1. E0, 04
        add     eax, ?_252                              ; 3532 _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 3537 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 353D _ 83. 45, F4, 01
?_180:  cmp     dword [ebp-0CH], 499                    ; 3541 _ 81. 7D, F4, 000001F3
        jle     ?_179                                   ; 3548 _ 7E, D1
        nop                                             ; 354A _ 90
        leave                                           ; 354B _ C9
        ret                                             ; 354C _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 354D _ 55
        mov     ebp, esp                                ; 354E _ 89. E5
        sub     esp, 16                                 ; 3550 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3553 _ C7. 45, FC, 00000000
        jmp     ?_183                                   ; 355A _ EB, 36

?_181:  mov     eax, dword [ebp-4H]                     ; 355C _ 8B. 45, FC
        shl     eax, 4                                  ; 355F _ C1. E0, 04
        add     eax, ?_251                              ; 3562 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3567 _ 8B. 00
        test    eax, eax                                ; 3569 _ 85. C0
        jnz     ?_182                                   ; 356B _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 356D _ 8B. 45, FC
        shl     eax, 4                                  ; 3570 _ C1. E0, 04
        add     eax, ?_251                              ; 3573 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3578 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 357E _ 8B. 45, FC
        shl     eax, 4                                  ; 3581 _ C1. E0, 04
        add     eax, timerctl                           ; 3584 _ 05, 000002A0(d)
        add     eax, 4                                  ; 3589 _ 83. C0, 04
        jmp     ?_184                                   ; 358C _ EB, 12

?_182:  add     dword [ebp-4H], 1                       ; 358E _ 83. 45, FC, 01
?_183:  cmp     dword [ebp-4H], 499                     ; 3592 _ 81. 7D, FC, 000001F3
        jle     ?_181                                   ; 3599 _ 7E, C1
        mov     eax, 0                                  ; 359B _ B8, 00000000
?_184:  leave                                           ; 35A0 _ C9
        ret                                             ; 35A1 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 35A2 _ 55
        mov     ebp, esp                                ; 35A3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 35A5 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 35A8 _ C7. 40, 04, 00000000
        nop                                             ; 35AF _ 90
        pop     ebp                                     ; 35B0 _ 5D
        ret                                             ; 35B1 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 35B2 _ 55
        mov     ebp, esp                                ; 35B3 _ 89. E5
        sub     esp, 4                                  ; 35B5 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 35B8 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 35BB _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 35BE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35C1 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 35C4 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 35C7 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 35CA _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 35CE _ 88. 50, 0C
        nop                                             ; 35D1 _ 90
        leave                                           ; 35D2 _ C9
        ret                                             ; 35D3 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 35D4 _ 55
        mov     ebp, esp                                ; 35D5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 35D7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35DA _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 35DD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 35DF _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 35E2 _ C7. 40, 04, 00000002
        nop                                             ; 35E9 _ 90
        pop     ebp                                     ; 35EA _ 5D
        ret                                             ; 35EB _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 35EC _ 55
        mov     ebp, esp                                ; 35ED _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 35EF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35F2 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 35F5 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 35F7 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 35FA _ C7. 40, 04, 00000002
        nop                                             ; 3601 _ 90
        pop     ebp                                     ; 3602 _ 5D
        ret                                             ; 3603 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 3604 _ 55
        mov     ebp, esp                                ; 3605 _ 89. E5
        mov     eax, timerctl                           ; 3607 _ B8, 000002A0(d)
        pop     ebp                                     ; 360C _ 5D
        ret                                             ; 360D _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 360E _ 55
        mov     ebp, esp                                ; 360F _ 89. E5
        push    ebx                                     ; 3611 _ 53
        sub     esp, 20                                 ; 3612 _ 83. EC, 14
        sub     esp, 8                                  ; 3615 _ 83. EC, 08
        push    32                                      ; 3618 _ 6A, 20
        push    32                                      ; 361A _ 6A, 20
        call    io_out8                                 ; 361C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3621 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 3624 _ A1, 000002A0(d)
        add     eax, 1                                  ; 3629 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 362C _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 3631 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3638 _ C7. 45, F4, 00000000
        jmp     ?_188                                   ; 363F _ E9, 000000AD

?_185:  mov     eax, dword [ebp-0CH]                    ; 3644 _ 8B. 45, F4
        shl     eax, 4                                  ; 3647 _ C1. E0, 04
        add     eax, ?_251                              ; 364A _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 364F _ 8B. 00
        cmp     eax, 2                                  ; 3651 _ 83. F8, 02
        jne     ?_186                                   ; 3654 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 365A _ 8B. 45, F4
        shl     eax, 4                                  ; 365D _ C1. E0, 04
        add     eax, ?_250                              ; 3660 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3665 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3667 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 366A _ 8B. 45, F4
        shl     eax, 4                                  ; 366D _ C1. E0, 04
        add     eax, ?_250                              ; 3670 _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 3675 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3677 _ 8B. 45, F4
        shl     eax, 4                                  ; 367A _ C1. E0, 04
        add     eax, ?_250                              ; 367D _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3682 _ 8B. 00
        test    eax, eax                                ; 3684 _ 85. C0
        jnz     ?_186                                   ; 3686 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 3688 _ 8B. 45, F4
        shl     eax, 4                                  ; 368B _ C1. E0, 04
        add     eax, ?_251                              ; 368E _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3693 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3699 _ 8B. 45, F4
        shl     eax, 4                                  ; 369C _ C1. E0, 04
        add     eax, ?_253                              ; 369F _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 36A4 _ 0F B6. 00
        movzx   edx, al                                 ; 36A7 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 36AA _ 8B. 45, F4
        shl     eax, 4                                  ; 36AD _ C1. E0, 04
        add     eax, ?_252                              ; 36B0 _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 36B5 _ 8B. 00
        sub     esp, 8                                  ; 36B7 _ 83. EC, 08
        push    edx                                     ; 36BA _ 52
        push    eax                                     ; 36BB _ 50
        call    fifo8_put                               ; 36BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36C1 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 36C4 _ 8B. 45, F4
        shl     eax, 4                                  ; 36C7 _ C1. E0, 04
        add     eax, timerctl                           ; 36CA _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 36CF _ 8D. 58, 04
        call    getTaskTimer                            ; 36D2 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 36D7 _ 39. C3
        jnz     ?_186                                   ; 36D9 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 36DB _ C7. 45, F0, 00000001
?_186:  cmp     dword [ebp-10H], 1                      ; 36E2 _ 83. 7D, F0, 01
        jnz     ?_187                                   ; 36E6 _ 75, 05
        call    task_switch                             ; 36E8 _ E8, FFFFFFFC(rel)
?_187:  add     dword [ebp-0CH], 1                      ; 36ED _ 83. 45, F4, 01
?_188:  cmp     dword [ebp-0CH], 499                    ; 36F1 _ 81. 7D, F4, 000001F3
        jle     ?_185                                   ; 36F8 _ 0F 8E, FFFFFF46
        nop                                             ; 36FE _ 90
        mov     ebx, dword [ebp-4H]                     ; 36FF _ 8B. 5D, FC
        leave                                           ; 3702 _ C9
        ret                                             ; 3703 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 3704 _ 55
        mov     ebp, esp                                ; 3705 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3707 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 370A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 370D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3710 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3713 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3716 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3718 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 371B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 371E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3721 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3724 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 372B _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 372E _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3735 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3738 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 373F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3742 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3745 _ 89. 50, 18
        nop                                             ; 3748 _ 90
        pop     ebp                                     ; 3749 _ 5D
        ret                                             ; 374A _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 374B _ 55
        mov     ebp, esp                                ; 374C _ 89. E5
        sub     esp, 24                                 ; 374E _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3751 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3754 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3757 _ 83. 7D, 08, 00
        jnz     ?_189                                   ; 375B _ 75, 0A
        mov     eax, 4294967295                         ; 375D _ B8, FFFFFFFF
        jmp     ?_193                                   ; 3762 _ E9, 000000A0

?_189:  mov     eax, dword [ebp+8H]                     ; 3767 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 376A _ 8B. 40, 10
        test    eax, eax                                ; 376D _ 85. C0
        jnz     ?_190                                   ; 376F _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3771 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3774 _ 8B. 40, 14
        or      eax, 01H                                ; 3777 _ 83. C8, 01
        mov     edx, eax                                ; 377A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 377C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 377F _ 89. 50, 14
        mov     eax, 4294967295                         ; 3782 _ B8, FFFFFFFF
        jmp     ?_193                                   ; 3787 _ EB, 7E

?_190:  mov     eax, dword [ebp+8H]                     ; 3789 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 378C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 378E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3791 _ 8B. 40, 08
        add     edx, eax                                ; 3794 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3796 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 379A _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 379C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 379F _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 37A2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37A5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 37A8 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 37AB _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 37AE _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 37B1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37B4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 37B7 _ 39. C2
        jl      ?_191                                   ; 37B9 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 37BB _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 37BE _ C7. 40, 08, 00000000
?_191:  mov     eax, dword [ebp+8H]                     ; 37C5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37C8 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 37CB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 37CE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 37D1 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 37D4 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 37D7 _ 8B. 40, 18
        test    eax, eax                                ; 37DA _ 85. C0
        jz      ?_192                                   ; 37DC _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 37DE _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 37E1 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 37E4 _ 8B. 40, 04
        cmp     eax, 2                                  ; 37E7 _ 83. F8, 02
        jz      ?_192                                   ; 37EA _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 37EC _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 37EF _ 8B. 40, 18
        sub     esp, 4                                  ; 37F2 _ 83. EC, 04
        push    0                                       ; 37F5 _ 6A, 00
        push    -1                                      ; 37F7 _ 6A, FF
        push    eax                                     ; 37F9 _ 50
        call    task_run                                ; 37FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 37FF _ 83. C4, 10
?_192:  mov     eax, 1                                  ; 3802 _ B8, 00000001
?_193:  leave                                           ; 3807 _ C9
        ret                                             ; 3808 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3809 _ 55
        mov     ebp, esp                                ; 380A _ 89. E5
        sub     esp, 16                                 ; 380C _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 380F _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3812 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3815 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3818 _ 8B. 40, 0C
        cmp     edx, eax                                ; 381B _ 39. C2
        jnz     ?_194                                   ; 381D _ 75, 07
        mov     eax, 4294967295                         ; 381F _ B8, FFFFFFFF
        jmp     ?_196                                   ; 3824 _ EB, 51

?_194:  mov     eax, dword [ebp+8H]                     ; 3826 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3829 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 382B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 382E _ 8B. 40, 04
        add     eax, edx                                ; 3831 _ 01. D0
        movzx   eax, byte [eax]                         ; 3833 _ 0F B6. 00
        movzx   eax, al                                 ; 3836 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3839 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 383C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 383F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3842 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3845 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3848 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 384B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 384E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3851 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3854 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3857 _ 39. C2
        jl      ?_195                                   ; 3859 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 385B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 385E _ C7. 40, 04, 00000000
?_195:  mov     eax, dword [ebp+8H]                     ; 3865 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3868 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 386B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 386E _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3871 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3874 _ 8B. 45, FC
?_196:  leave                                           ; 3877 _ C9
        ret                                             ; 3878 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3879 _ 55
        mov     ebp, esp                                ; 387A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 387C _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 387F _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3882 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3885 _ 8B. 40, 10
        sub     edx, eax                                ; 3888 _ 29. C2
        mov     eax, edx                                ; 388A _ 89. D0
        pop     ebp                                     ; 388C _ 5D
        ret                                             ; 388D _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 388E _ 55
        mov     ebp, esp                                ; 388F _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3891 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_197                                   ; 3898 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 389A _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 38A1 _ 8B. 45, 0C
        shr     eax, 12                                 ; 38A4 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 38A7 _ 89. 45, 0C
?_197:  mov     eax, dword [ebp+0CH]                    ; 38AA _ 8B. 45, 0C
        mov     edx, eax                                ; 38AD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38AF _ 8B. 45, 08
        mov     word [eax], dx                          ; 38B2 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 38B5 _ 8B. 45, 10
        mov     edx, eax                                ; 38B8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38BA _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 38BD _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 38C1 _ 8B. 45, 10
        sar     eax, 16                                 ; 38C4 _ C1. F8, 10
        mov     edx, eax                                ; 38C7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38C9 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 38CC _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 38CF _ 8B. 45, 14
        mov     edx, eax                                ; 38D2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38D4 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 38D7 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 38DA _ 8B. 45, 0C
        shr     eax, 16                                 ; 38DD _ C1. E8, 10
        and     eax, 0FH                                ; 38E0 _ 83. E0, 0F
        mov     edx, eax                                ; 38E3 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 38E5 _ 8B. 45, 14
        sar     eax, 8                                  ; 38E8 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 38EB _ 83. E0, F0
        or      eax, edx                                ; 38EE _ 09. D0
        mov     edx, eax                                ; 38F0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38F2 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 38F5 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 38F8 _ 8B. 45, 10
        shr     eax, 24                                 ; 38FB _ C1. E8, 18
        mov     edx, eax                                ; 38FE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3900 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3903 _ 88. 50, 07
        nop                                             ; 3906 _ 90
        pop     ebp                                     ; 3907 _ 5D
        ret                                             ; 3908 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3909 _ 55
        mov     ebp, esp                                ; 390A _ 89. E5
        mov     eax, dword [task_timer]                 ; 390C _ A1, 000021E4(d)
        pop     ebp                                     ; 3911 _ 5D
        ret                                             ; 3912 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 3913 _ 55
        mov     ebp, esp                                ; 3914 _ 89. E5
        sub     esp, 16                                 ; 3916 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3919 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 391F _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3922 _ 6B. C0, 1C
        add     eax, edx                                ; 3925 _ 01. D0
        add     eax, 8                                  ; 3927 _ 83. C0, 08
        mov     dword [eax], 0                          ; 392A _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 3930 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3936 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3939 _ 6B. C0, 1C
        add     eax, edx                                ; 393C _ 01. D0
        add     eax, 12                                 ; 393E _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3941 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3947 _ C7. 45, FC, 00000000
        jmp     ?_199                                   ; 394E _ EB, 1A

?_198:  mov     eax, dword [taskctl]                    ; 3950 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3955 _ 8B. 55, FC
        shl     edx, 5                                  ; 3958 _ C1. E2, 05
        add     eax, edx                                ; 395B _ 01. D0
        add     eax, 16                                 ; 395D _ 83. C0, 10
        mov     dword [eax], 0                          ; 3960 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3966 _ 83. 45, FC, 01
?_199:  cmp     dword [ebp-4H], 4                       ; 396A _ 83. 7D, FC, 04
        jle     ?_198                                   ; 396E _ 7E, E0
        nop                                             ; 3970 _ 90
        leave                                           ; 3971 _ C9
        ret                                             ; 3972 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3973 _ 55
        mov     ebp, esp                                ; 3974 _ 89. E5
        sub     esp, 24                                 ; 3976 _ 83. EC, 18
        call    get_addr_gdt                            ; 3979 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 397E _ 89. 45, F0
        sub     esp, 8                                  ; 3981 _ 83. EC, 08
        push    692                                     ; 3984 _ 68, 000002B4
        push    dword [ebp+8H]                          ; 3989 _ FF. 75, 08
        call    memman_alloc_4K                         ; 398C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3991 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3994 _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 3999 _ C7. 45, EC, 00000000
        jmp     ?_201                                   ; 39A0 _ EB, 73

?_200:  mov     edx, dword [taskctl]                    ; 39A2 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 39A8 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 39AB _ 6B. C0, 7C
        add     eax, edx                                ; 39AE _ 01. D0
        add     eax, 96                                 ; 39B0 _ 83. C0, 60
        mov     dword [eax], 0                          ; 39B3 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 39B9 _ 8B. 45, EC
        add     eax, 7                                  ; 39BC _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 39BF _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 39C5 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 39CC _ 8B. 45, EC
        imul    eax, eax, 124                           ; 39CF _ 6B. C0, 7C
        add     eax, ecx                                ; 39D2 _ 01. C8
        add     eax, 92                                 ; 39D4 _ 83. C0, 5C
        mov     dword [eax], edx                        ; 39D7 _ 89. 10
        mov     eax, dword [taskctl]                    ; 39D9 _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 39DE _ 8B. 55, EC
        imul    edx, edx, 124                           ; 39E1 _ 6B. D2, 7C
        add     edx, 96                                 ; 39E4 _ 83. C2, 60
        add     eax, edx                                ; 39E7 _ 01. D0
        add     eax, 16                                 ; 39E9 _ 83. C0, 10
        mov     ecx, eax                                ; 39EC _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 39EE _ 8B. 45, EC
        add     eax, 7                                  ; 39F1 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 39F4 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 39FB _ 8B. 45, F0
        add     eax, edx                                ; 39FE _ 01. D0
        push    137                                     ; 3A00 _ 68, 00000089
        push    ecx                                     ; 3A05 _ 51
        push    103                                     ; 3A06 _ 6A, 67
        push    eax                                     ; 3A08 _ 50
        call    set_segmdesc                            ; 3A09 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A0E _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3A11 _ 83. 45, EC, 01
?_201:  cmp     dword [ebp-14H], 4                      ; 3A15 _ 83. 7D, EC, 04
        jle     ?_200                                   ; 3A19 _ 7E, 87
        call    task_alloc                              ; 3A1B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3A20 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3A23 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3A26 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3A2D _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 3A30 _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 3A37 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3A3A _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 3A41 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3A44 _ FF. 75, F4
        call    task_add                                ; 3A47 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A4C _ 83. C4, 10
        call    task_switchsub                          ; 3A4F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3A54 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3A57 _ 8B. 00
        sub     esp, 12                                 ; 3A59 _ 83. EC, 0C
        push    eax                                     ; 3A5C _ 50
        call    load_tr                                 ; 3A5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A62 _ 83. C4, 10
        call    timer_alloc                             ; 3A65 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3A6A _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 3A6F _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3A72 _ 8B. 40, 08
        mov     edx, eax                                ; 3A75 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3A77 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3A7C _ 83. EC, 08
        push    edx                                     ; 3A7F _ 52
        push    eax                                     ; 3A80 _ 50
        call    timer_setTime                           ; 3A81 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A86 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3A89 _ 8B. 45, F4
        leave                                           ; 3A8C _ C9
        ret                                             ; 3A8D _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3A8E _ 55
        mov     ebp, esp                                ; 3A8F _ 89. E5
        sub     esp, 16                                 ; 3A91 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3A94 _ C7. 45, F8, 00000000
        jmp     ?_204                                   ; 3A9B _ E9, 000000E1

?_202:  mov     edx, dword [taskctl]                    ; 3AA0 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 3AA6 _ 8B. 45, F8
        imul    eax, eax, 124                           ; 3AA9 _ 6B. C0, 7C
        add     eax, edx                                ; 3AAC _ 01. D0
        add     eax, 96                                 ; 3AAE _ 83. C0, 60
        mov     eax, dword [eax]                        ; 3AB1 _ 8B. 00
        test    eax, eax                                ; 3AB3 _ 85. C0
        jne     ?_203                                   ; 3AB5 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3ABB _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 3AC0 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3AC3 _ 6B. D2, 7C
        add     edx, 80                                 ; 3AC6 _ 83. C2, 50
        add     eax, edx                                ; 3AC9 _ 01. D0
        add     eax, 12                                 ; 3ACB _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 3ACE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3AD1 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3AD4 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3ADB _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3ADE _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 3AE5 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3AE8 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AEF _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3AF2 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AF9 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3AFC _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B03 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3B06 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B0D _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3B10 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3B17 _ 8B. 45, F8
        add     eax, 1                                  ; 3B1A _ 83. C0, 01
        shl     eax, 9                                  ; 3B1D _ C1. E0, 09
        mov     edx, eax                                ; 3B20 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3B22 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 3B25 _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 3B28 _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3B2B _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B32 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3B35 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B3C _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3B3F _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B46 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3B49 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B50 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3B53 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B5A _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3B5D _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B64 _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3B67 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B6E _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3B71 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3B78 _ 8B. 45, FC
        jmp     ?_205                                   ; 3B7B _ EB, 13

?_203:  add     dword [ebp-8H], 1                       ; 3B7D _ 83. 45, F8, 01
?_204:  cmp     dword [ebp-8H], 4                       ; 3B81 _ 83. 7D, F8, 04
        jle     ?_202                                   ; 3B85 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3B8B _ B8, 00000000
?_205:  leave                                           ; 3B90 _ C9
        ret                                             ; 3B91 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3B92 _ 55
        mov     ebp, esp                                ; 3B93 _ 89. E5
        sub     esp, 8                                  ; 3B95 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3B98 _ 83. 7D, 0C, 00
        jns     ?_206                                   ; 3B9C _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3B9E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3BA1 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3BA4 _ 89. 45, 0C
?_206:  cmp     dword [ebp+10H], 0                      ; 3BA7 _ 83. 7D, 10, 00
        jle     ?_207                                   ; 3BAB _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3BAD _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3BB0 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3BB3 _ 89. 50, 08
?_207:  mov     eax, dword [ebp+8H]                     ; 3BB6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3BB9 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3BBC _ 83. F8, 02
        jnz     ?_208                                   ; 3BBF _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3BC1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3BC4 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3BC7 _ 39. 45, 0C
        jz      ?_208                                   ; 3BCA _ 74, 0E
        sub     esp, 12                                 ; 3BCC _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3BCF _ FF. 75, 08
        call    task_remove                             ; 3BD2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3BD7 _ 83. C4, 10
?_208:  mov     eax, dword [ebp+8H]                     ; 3BDA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3BDD _ 8B. 40, 04
        cmp     eax, 2                                  ; 3BE0 _ 83. F8, 02
        jz      ?_209                                   ; 3BE3 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3BE5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3BE8 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3BEB _ 89. 50, 0C
        sub     esp, 12                                 ; 3BEE _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3BF1 _ FF. 75, 08
        call    task_add                                ; 3BF4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3BF9 _ 83. C4, 10
?_209:  mov     eax, dword [taskctl]                    ; 3BFC _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 3C01 _ C7. 40, 04, 00000001
        nop                                             ; 3C08 _ 90
        leave                                           ; 3C09 _ C9
        ret                                             ; 3C0A _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3C0B _ 55
        mov     ebp, esp                                ; 3C0C _ 89. E5
        sub     esp, 24                                 ; 3C0E _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 3C11 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3C17 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3C1C _ 8B. 00
        imul    eax, eax, 28                            ; 3C1E _ 6B. C0, 1C
        add     eax, edx                                ; 3C21 _ 01. D0
        add     eax, 8                                  ; 3C23 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3C26 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3C29 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3C2C _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3C2F _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3C32 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3C36 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3C39 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3C3C _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3C3F _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3C42 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3C45 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3C48 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3C4B _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3C4E _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3C51 _ 8B. 00
        cmp     edx, eax                                ; 3C53 _ 39. C2
        jnz     ?_210                                   ; 3C55 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3C57 _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3C5A _ C7. 40, 04, 00000000
?_210:  mov     eax, dword [taskctl]                    ; 3C61 _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 3C66 _ 8B. 40, 04
        test    eax, eax                                ; 3C69 _ 85. C0
        jz      ?_211                                   ; 3C6B _ 74, 1D
        call    task_switchsub                          ; 3C6D _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 3C72 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3C78 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3C7D _ 8B. 00
        imul    eax, eax, 28                            ; 3C7F _ 6B. C0, 1C
        add     eax, edx                                ; 3C82 _ 01. D0
        add     eax, 8                                  ; 3C84 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3C87 _ 89. 45, EC
?_211:  mov     eax, dword [ebp-14H]                    ; 3C8A _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3C8D _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3C90 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3C93 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3C97 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3C9A _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3C9D _ 8B. 40, 08
        mov     edx, eax                                ; 3CA0 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3CA2 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3CA7 _ 83. EC, 08
        push    edx                                     ; 3CAA _ 52
        push    eax                                     ; 3CAB _ 50
        call    timer_setTime                           ; 3CAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3CB1 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3CB4 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3CB7 _ 3B. 45, F0
        jz      ?_212                                   ; 3CBA _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3CBC _ 83. 7D, F4, 00
        jz      ?_212                                   ; 3CC0 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3CC2 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3CC5 _ 8B. 00
        sub     esp, 8                                  ; 3CC7 _ 83. EC, 08
        push    eax                                     ; 3CCA _ 50
        push    0                                       ; 3CCB _ 6A, 00
        call    farjmp                                  ; 3CCD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3CD2 _ 83. C4, 10
        nop                                             ; 3CD5 _ 90
?_212:  nop                                             ; 3CD6 _ 90
        leave                                           ; 3CD7 _ C9
        ret                                             ; 3CD8 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3CD9 _ 55
        mov     ebp, esp                                ; 3CDA _ 89. E5
        sub     esp, 24                                 ; 3CDC _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3CDF _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3CE6 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3CEA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3CED _ 8B. 40, 04
        cmp     eax, 2                                  ; 3CF0 _ 83. F8, 02
        jnz     ?_213                                   ; 3CF3 _ 75, 4C
        call    task_now                                ; 3CF5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3CFA _ 89. 45, F4
        sub     esp, 12                                 ; 3CFD _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3D00 _ FF. 75, 08
        call    task_remove                             ; 3D03 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D08 _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3D0B _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3D0F _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3D12 _ 3B. 45, F4
        jnz     ?_213                                   ; 3D15 _ 75, 2A
        call    task_switchsub                          ; 3D17 _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3D1C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3D21 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3D24 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3D28 _ 83. 7D, F4, 00
        jz      ?_213                                   ; 3D2C _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3D2E _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3D31 _ 8B. 00
        sub     esp, 8                                  ; 3D33 _ 83. EC, 08
        push    eax                                     ; 3D36 _ 50
        push    0                                       ; 3D37 _ 6A, 00
        call    farjmp                                  ; 3D39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D3E _ 83. C4, 10
?_213:  movsx   eax, byte [ebp-0DH]                     ; 3D41 _ 0F BE. 45, F3
        leave                                           ; 3D45 _ C9
        ret                                             ; 3D46 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3D47 _ 55
        mov     ebp, esp                                ; 3D48 _ 89. E5
        sub     esp, 16                                 ; 3D4A _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3D4D _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3D53 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3D58 _ 8B. 00
        imul    eax, eax, 28                            ; 3D5A _ 6B. C0, 1C
        add     eax, edx                                ; 3D5D _ 01. D0
        add     eax, 8                                  ; 3D5F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3D62 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3D65 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3D68 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3D6B _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3D6E _ 8B. 44 90, 08
        leave                                           ; 3D72 _ C9
        ret                                             ; 3D73 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3D74 _ 55
        mov     ebp, esp                                ; 3D75 _ 89. E5
        sub     esp, 16                                 ; 3D77 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3D7A _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3D80 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3D83 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3D86 _ 6B. C0, 1C
        add     eax, edx                                ; 3D89 _ 01. D0
        add     eax, 8                                  ; 3D8B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3D8E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3D91 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3D94 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3D96 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3D99 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3D9C _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3DA0 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3DA3 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3DA5 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3DA8 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3DAB _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3DAD _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3DB0 _ C7. 40, 04, 00000002
        nop                                             ; 3DB7 _ 90
        leave                                           ; 3DB8 _ C9
        ret                                             ; 3DB9 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3DBA _ 55
        mov     ebp, esp                                ; 3DBB _ 89. E5
        sub     esp, 16                                 ; 3DBD _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3DC0 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3DC6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DC9 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3DCC _ 6B. C0, 1C
        add     eax, edx                                ; 3DCF _ 01. D0
        add     eax, 8                                  ; 3DD1 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3DD4 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3DD7 _ C7. 45, F8, 00000000
        jmp     ?_216                                   ; 3DDE _ EB, 23

?_214:  mov     eax, dword [ebp-4H]                     ; 3DE0 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3DE3 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3DE6 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3DEA _ 39. 45, 08
        jnz     ?_215                                   ; 3DED _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3DEF _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3DF2 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3DF5 _ C7. 44 90, 08, 00000000
        jmp     ?_217                                   ; 3DFD _ EB, 0E

?_215:  add     dword [ebp-8H], 1                       ; 3DFF _ 83. 45, F8, 01
?_216:  mov     eax, dword [ebp-4H]                     ; 3E03 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E06 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3E08 _ 39. 45, F8
        jl      ?_214                                   ; 3E0B _ 7C, D3
?_217:  mov     eax, dword [ebp-4H]                     ; 3E0D _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E10 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3E12 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3E15 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3E18 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3E1A _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3E1D _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3E20 _ 39. 45, F8
        jge     ?_218                                   ; 3E23 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3E25 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3E28 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3E2B _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3E2E _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3E31 _ 89. 50, 04
?_218:  mov     eax, dword [ebp-4H]                     ; 3E34 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3E37 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3E3A _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E3D _ 8B. 00
        cmp     edx, eax                                ; 3E3F _ 39. C2
        jl      ?_219                                   ; 3E41 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3E43 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3E46 _ C7. 40, 04, 00000000
?_219:  mov     eax, dword [ebp+8H]                     ; 3E4D _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3E50 _ C7. 40, 04, 00000001
        jmp     ?_221                                   ; 3E57 _ EB, 1B

?_220:  mov     eax, dword [ebp-8H]                     ; 3E59 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3E5C _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3E5F _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3E62 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3E66 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3E69 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3E6C _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3E70 _ 83. 45, F8, 01
?_221:  mov     eax, dword [ebp-4H]                     ; 3E74 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E77 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3E79 _ 39. 45, F8
        jl      ?_220                                   ; 3E7C _ 7C, DB
        nop                                             ; 3E7E _ 90
        leave                                           ; 3E7F _ C9
        ret                                             ; 3E80 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3E81 _ 55
        mov     ebp, esp                                ; 3E82 _ 89. E5
        sub     esp, 16                                 ; 3E84 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3E87 _ C7. 45, FC, 00000000
        jmp     ?_223                                   ; 3E8E _ EB, 1B

?_222:  mov     edx, dword [taskctl]                    ; 3E90 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 3E96 _ 8B. 45, FC
        imul    eax, eax, 28                            ; 3E99 _ 6B. C0, 1C
        add     eax, edx                                ; 3E9C _ 01. D0
        add     eax, 8                                  ; 3E9E _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3EA1 _ 8B. 00
        test    eax, eax                                ; 3EA3 _ 85. C0
        jg      ?_224                                   ; 3EA5 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3EA7 _ 83. 45, FC, 01
?_223:  cmp     dword [ebp-4H], 2                       ; 3EAB _ 83. 7D, FC, 02
        jle     ?_222                                   ; 3EAF _ 7E, DF
        jmp     ?_225                                   ; 3EB1 _ EB, 01

?_224:  nop                                             ; 3EB3 _ 90
?_225:  mov     eax, dword [taskctl]                    ; 3EB4 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3EB9 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3EBC _ 89. 10
        mov     eax, dword [taskctl]                    ; 3EBE _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 3EC3 _ C7. 40, 04, 00000000
        nop                                             ; 3ECA _ 90
        leave                                           ; 3ECB _ C9
        ret                                             ; 3ECC _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3ECD _ 55
        mov     ebp, esp                                ; 3ECE _ 89. E5
        mov     eax, dword [taskctl]                    ; 3ED0 _ A1, 000021E8(d)
        pop     ebp                                     ; 3ED5 _ 5D
        ret                                             ; 3ED6 _ C3
; getTaskctl End of function



?_226:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_227:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_228:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_229:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_230:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_231:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_232:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_233:                                                  ; byte
        db 44H, 61H, 6EH, 73H, 00H                      ; 003B _ Dans.

?_234:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0040 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0048 _ sk B.

?_235:                                                  ; byte
        db 42H, 00H                                     ; 004D _ B.

?_236:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 004F _ Page is:
        db 20H, 00H                                     ; 0057 _  .

?_237:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0059 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0061 _ Low: .

?_238:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0067 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 006F _ High: .

?_239:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0076 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 007E _ w: .

?_240:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0082 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 008A _ gh: .

?_241:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 008F _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_242:  db 00H                                          ; 0002 _ .

?_243:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2293: dd 00000010H, 00000000H                       ; 0100 _ 16 0 
        dd 00000000H, 00000000H                         ; 0108 _ 0 0 
        dd 00000000H, 00000000H                         ; 0110 _ 0 0 
        dd 00000000H, 00000000H                         ; 0118 _ 0 0 

table_rgb.2362:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2417:                                            ; byte
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

closebtn.2570:                                          ; byte
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

caps_lock:                                              ; dword
        resd    1                                       ; 0004

bootInfo:                                               ; qword
        resb    4                                       ; 0008

?_244:  resw    1                                       ; 000C

?_245:  resw    1                                       ; 000E

keyInfo:                                                ; byte
        resb    24                                      ; 0010

?_246:  resd    1                                       ; 0028

mouseInfo:                                              ; byte
        resb    52                                      ; 002C

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_247:  resd    1                                       ; 010C

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

task_a.2288:                                            ; dword
        resd    1                                       ; 0258

cnt.2289: resd  1                                       ; 025C

line.2292:                                              ; dword
        resd    1                                       ; 0260

task_b.2278:                                            ; oword
        resb    16                                      ; 0264

str.2460:                                               ; byte
        resb    1                                       ; 0274

?_248:  resb    9                                       ; 0275

?_249:  resb    2                                       ; 027E

line.2493:                                              ; dword
        resd    1                                       ; 0280

pos.2492: resd  7                                       ; 0284

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_250:                                                  ; byte
        resb    4                                       ; 02A4

?_251:                                                  ; byte
        resb    4                                       ; 02A8

?_252:                                                  ; byte
        resb    4                                       ; 02AC

?_253:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


