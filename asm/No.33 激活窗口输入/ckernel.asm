; Disassembly of file: ckernel.o
; Tue May 18 15:26:43 2021
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
        push    bootInfo                                ; 001A _ 68, 00000000(d)
        call    initBootInfo                            ; 001F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0024 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0027 _ A1, 00000000(d)
        mov     dword [ebp-68H], eax                    ; 002C _ 89. 45, 98
        movzx   eax, word [?_228]                       ; 002F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0036 _ 98
        mov     dword [ebp-64H], eax                    ; 0037 _ 89. 45, 9C
        movzx   eax, word [?_229]                       ; 003A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0041 _ 98
        mov     dword [ebp-60H], eax                    ; 0042 _ 89. 45, A0
        call    getTimerController                      ; 0045 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-5CH], eax                    ; 004A _ 89. 45, A4
        call    init_pit                                ; 004D _ E8, FFFFFFFC(rel)
        push    0                                       ; 0052 _ 6A, 00
        push    timerbuf                                ; 0054 _ 68, 0000021C(d)
        push    8                                       ; 0059 _ 6A, 08
        push    timerInfo                               ; 005B _ 68, 00000200(d)
        call    fifo8_init                              ; 0060 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0065 _ 83. C4, 10
        call    timer_alloc                             ; 0068 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-58H], eax                    ; 006D _ 89. 45, A8
        sub     esp, 4                                  ; 0070 _ 83. EC, 04
        push    10                                      ; 0073 _ 6A, 0A
        push    timerInfo                               ; 0075 _ 68, 00000200(d)
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
        push    timerInfo                               ; 00A2 _ 68, 00000200(d)
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
        push    timerInfo                               ; 00D2 _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 00D7 _ FF. 75, B0
        call    timer_init                              ; 00DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DF _ 83. C4, 10
        sub     esp, 8                                  ; 00E2 _ 83. EC, 08
        push    50                                      ; 00E5 _ 6A, 32
        push    dword [ebp-50H]                         ; 00E7 _ FF. 75, B0
        call    timer_setTime                           ; 00EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EF _ 83. C4, 10
        push    0                                       ; 00F2 _ 6A, 00
        push    keybuf                                  ; 00F4 _ 68, 00000040(d)
        push    32                                      ; 00F9 _ 6A, 20
        push    keyInfo                                 ; 00FB _ 68, 00000008(d)
        call    fifo8_init                              ; 0100 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0105 _ 83. C4, 10
        push    0                                       ; 0108 _ 6A, 00
        push    mousebuf                                ; 010A _ 68, 00000060(d)
        push    128                                     ; 010F _ 68, 00000080
        push    mouseInfo                               ; 0114 _ 68, 00000024(d)
        call    fifo8_init                              ; 0119 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 011E _ 83. C4, 10
        call    init_palette                            ; 0121 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0126 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 012B _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0130 _ 83. EC, 0C
        push    mouse_move                              ; 0133 _ 68, 000000E0(d)
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
        mov     dword [shtctl], eax                     ; 01BC _ A3, 00000224(d)
        mov     eax, dword [shtctl]                     ; 01C1 _ A1, 00000224(d)
        sub     esp, 12                                 ; 01C6 _ 83. EC, 0C
        push    eax                                     ; 01C9 _ 50
        call    sheet_alloc                             ; 01CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CF _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01D2 _ A3, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 01D7 _ A1, 00000224(d)
        sub     esp, 12                                 ; 01DC _ 83. EC, 0C
        push    eax                                     ; 01DF _ 50
        call    sheet_alloc                             ; 01E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E5 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01E8 _ A3, 00000230(d)
        mov     eax, dword [ebp-64H]                    ; 01ED _ 8B. 45, 9C
        imul    eax, dword [ebp-60H]                    ; 01F0 _ 0F AF. 45, A0
        mov     edx, eax                                ; 01F4 _ 89. C2
        mov     eax, dword [memman]                     ; 01F6 _ A1, 00000008(d)
        sub     esp, 8                                  ; 01FB _ 83. EC, 08
        push    edx                                     ; 01FE _ 52
        push    eax                                     ; 01FF _ 50
        call    memman_alloc_4K                         ; 0200 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0205 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0208 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 020D _ A1, 000000F8(d)
        sub     esp, 4                                  ; 0212 _ 83. EC, 04
        push    dword [ebp-60H]                         ; 0215 _ FF. 75, A0
        push    dword [ebp-64H]                         ; 0218 _ FF. 75, 9C
        push    eax                                     ; 021B _ 50
        call    init_screen8                            ; 021C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0221 _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0224 _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 022A _ A1, 0000022C(d)
        sub     esp, 12                                 ; 022F _ 83. EC, 0C
        push    99                                      ; 0232 _ 6A, 63
        push    dword [ebp-60H]                         ; 0234 _ FF. 75, A0
        push    dword [ebp-64H]                         ; 0237 _ FF. 75, 9C
        push    edx                                     ; 023A _ 52
        push    eax                                     ; 023B _ 50
        call    sheet_setbuf                            ; 023C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0241 _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 0244 _ A1, 00000230(d)
        sub     esp, 12                                 ; 0249 _ 83. EC, 0C
        push    99                                      ; 024C _ 6A, 63
        push    16                                      ; 024E _ 6A, 10
        push    16                                      ; 0250 _ 6A, 10
        push    buf_mouse                               ; 0252 _ 68, 00000100(d)
        push    eax                                     ; 0257 _ 50
        call    sheet_setbuf                            ; 0258 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 025D _ 83. C4, 20
        sub     esp, 8                                  ; 0260 _ 83. EC, 08
        push    99                                      ; 0263 _ 6A, 63
        push    buf_mouse                               ; 0265 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 026A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026F _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 0272 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0278 _ A1, 00000224(d)
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
        mov     dword [mx], eax                         ; 029A _ A3, 000000F0(d)
        mov     eax, dword [ebp-60H]                    ; 029F _ 8B. 45, A0
        sub     eax, 44                                 ; 02A2 _ 83. E8, 2C
        mov     edx, eax                                ; 02A5 _ 89. C2
        shr     edx, 31                                 ; 02A7 _ C1. EA, 1F
        add     eax, edx                                ; 02AA _ 01. D0
        sar     eax, 1                                  ; 02AC _ D1. F8
        mov     dword [my], eax                         ; 02AE _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 02B3 _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 02B9 _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 02BF _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02C5 _ A1, 00000224(d)
        push    ebx                                     ; 02CA _ 53
        push    ecx                                     ; 02CB _ 51
        push    edx                                     ; 02CC _ 52
        push    eax                                     ; 02CD _ 50
        call    sheet_slide                             ; 02CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D3 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02D6 _ A1, 00000224(d)
        sub     esp, 4                                  ; 02DB _ 83. EC, 04
        push    1                                       ; 02DE _ 6A, 01
        push    100                                     ; 02E0 _ 6A, 64
        push    170                                     ; 02E2 _ 68, 000000AA
        push    150                                     ; 02E7 _ 68, 00000096
        push    300                                     ; 02EC _ 68, 0000012C
        push    ?_210                                   ; 02F1 _ 68, 00000000(d)
        push    eax                                     ; 02F6 _ 50
        call    messageBox                              ; 02F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02FC _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02FF _ A3, 00000228(d)
        mov     edx, dword [sheet_back]                 ; 0304 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 030A _ A1, 00000224(d)
        sub     esp, 4                                  ; 030F _ 83. EC, 04
        push    0                                       ; 0312 _ 6A, 00
        push    edx                                     ; 0314 _ 52
        push    eax                                     ; 0315 _ 50
        call    sheet_level_updown                      ; 0316 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031B _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 031E _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0324 _ A1, 00000224(d)
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
        mov     dword [task_a.2281], eax                ; 0356 _ A3, 00000238(d)
        mov     eax, dword [task_a.2281]                ; 035B _ A1, 00000238(d)
        mov     dword [?_230], eax                      ; 0360 _ A3, 00000020(d)
        mov     byte [ebp-79H], 0                       ; 0365 _ C6. 45, 87, 00
        mov     dword [ebp-78H], 7                      ; 0369 _ C7. 45, 88, 00000007
        mov     dword [ebp-74H], 0                      ; 0370 _ C7. 45, 8C, 00000000
        mov     edx, dword [sheet_win]                  ; 0377 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 037D _ A1, 00000224(d)
        sub     esp, 8                                  ; 0382 _ 83. EC, 08
        push    ?_211                                   ; 0385 _ 68, 00000008(d)
        push    10                                      ; 038A _ 6A, 0A
        push    63                                      ; 038C _ 6A, 3F
        push    8                                       ; 038E _ 6A, 08
        push    edx                                     ; 0390 _ 52
        push    eax                                     ; 0391 _ 50
        call    showString                              ; 0392 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0397 _ 83. C4, 20
        mov     dword [ebp-70H], 0                      ; 039A _ C7. 45, 90, 00000000
        mov     dword [ebp-6CH], 0                      ; 03A1 _ C7. 45, 94, 00000000
        call    launch_console                          ; 03A8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 03AD _ 89. 45, C8
?_001:  call    io_sti                                  ; 03B0 _ E8, FFFFFFFC(rel)
        call    io_cli                                  ; 03B5 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03BA _ 83. EC, 0C
        push    keyInfo                                 ; 03BD _ 68, 00000008(d)
        call    fifo8_status                            ; 03C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C7 _ 83. C4, 10
        mov     ebx, eax                                ; 03CA _ 89. C3
        sub     esp, 12                                 ; 03CC _ 83. EC, 0C
        push    mouseInfo                               ; 03CF _ 68, 00000024(d)
        call    fifo8_status                            ; 03D4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D9 _ 83. C4, 10
        add     ebx, eax                                ; 03DC _ 01. C3
        sub     esp, 12                                 ; 03DE _ 83. EC, 0C
        push    timerInfo                               ; 03E1 _ 68, 00000200(d)
        call    fifo8_status                            ; 03E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03EB _ 83. C4, 10
        add     eax, ebx                                ; 03EE _ 01. D8
        test    eax, eax                                ; 03F0 _ 85. C0
        jnz     ?_002                                   ; 03F2 _ 75, 07
        call    io_sti                                  ; 03F4 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 03F9 _ EB, B5

?_002:  sub     esp, 12                                 ; 03FB _ 83. EC, 0C
        push    keyInfo                                 ; 03FE _ 68, 00000008(d)
        call    fifo8_status                            ; 0403 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0408 _ 83. C4, 10
        test    eax, eax                                ; 040B _ 85. C0
        je      ?_010                                   ; 040D _ 0F 84, 0000040A
        call    io_sti                                  ; 0413 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0418 _ 83. EC, 0C
        push    keyInfo                                 ; 041B _ 68, 00000008(d)
        call    fifo8_get                               ; 0420 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0425 _ 83. C4, 10
        mov     byte [ebp-79H], al                      ; 0428 _ 88. 45, 87
        cmp     byte [ebp-79H], 28                      ; 042B _ 80. 7D, 87, 1C
        jnz     ?_003                                   ; 042F _ 75, 59
        mov     ebx, dword [cnt.2282]                   ; 0431 _ 8B. 1D, 0000023C(d)
        mov     eax, dword [sheet_back]                 ; 0437 _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 043C _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 043E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0444 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0449 _ 83. EC, 04
        push    7                                       ; 044C _ 6A, 07
        push    dword [ebp-64H]                         ; 044E _ FF. 75, 9C
        push    ebx                                     ; 0451 _ 53
        push    ecx                                     ; 0452 _ 51
        push    dword [ebp-4CH]                         ; 0453 _ FF. 75, B4
        push    edx                                     ; 0456 _ 52
        push    eax                                     ; 0457 _ 50
        call    showMemInfo                             ; 0458 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 045D _ 83. C4, 20
        mov     eax, dword [cnt.2282]                   ; 0460 _ A1, 0000023C(d)
        add     eax, 1                                  ; 0465 _ 83. C0, 01
        mov     dword [cnt.2282], eax                   ; 0468 _ A3, 0000023C(d)
        mov     eax, dword [cnt.2282]                   ; 046D _ A1, 0000023C(d)
        cmp     dword [ebp-48H], eax                    ; 0472 _ 39. 45, B8
        jg      ?_001                                   ; 0475 _ 0F 8F, FFFFFF35
        mov     dword [cnt.2282], 0                     ; 047B _ C7. 05, 0000023C(d), 00000000
        jmp     ?_001                                   ; 0485 _ E9, FFFFFF26

?_003:  cmp     byte [ebp-79H], 15                      ; 048A _ 80. 7D, 87, 0F
        jne     ?_006                                   ; 048E _ 0F 85, 000000CB
        cmp     dword [ebp-6CH], 0                      ; 0494 _ 83. 7D, 94, 00
        jnz     ?_004                                   ; 0498 _ 75, 3D
        mov     dword [ebp-6CH], 1                      ; 049A _ C7. 45, 94, 00000001
        mov     edx, dword [sheet_win]                  ; 04A1 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 04A7 _ A1, 00000224(d)
        push    0                                       ; 04AC _ 6A, 00
        push    ?_210                                   ; 04AE _ 68, 00000000(d)
        push    edx                                     ; 04B3 _ 52
        push    eax                                     ; 04B4 _ 50
        call    make_wtitle8                            ; 04B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04BA _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04BD _ A1, 00000224(d)
        push    1                                       ; 04C2 _ 6A, 01
        push    ?_212                                   ; 04C4 _ 68, 0000001E(d)
        push    dword [ebp-38H]                         ; 04C9 _ FF. 75, C8
        push    eax                                     ; 04CC _ 50
        call    make_wtitle8                            ; 04CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04D2 _ 83. C4, 10
        jmp     ?_005                                   ; 04D5 _ EB, 3B

?_004:  mov     dword [ebp-6CH], 0                      ; 04D7 _ C7. 45, 94, 00000000
        mov     edx, dword [sheet_win]                  ; 04DE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 04E4 _ A1, 00000224(d)
        push    1                                       ; 04E9 _ 6A, 01
        push    ?_210                                   ; 04EB _ 68, 00000000(d)
        push    edx                                     ; 04F0 _ 52
        push    eax                                     ; 04F1 _ 50
        call    make_wtitle8                            ; 04F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04F7 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04FA _ A1, 00000224(d)
        push    0                                       ; 04FF _ 6A, 00
        push    ?_212                                   ; 0501 _ 68, 0000001E(d)
        push    dword [ebp-38H]                         ; 0506 _ FF. 75, C8
        push    eax                                     ; 0509 _ 50
        call    make_wtitle8                            ; 050A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 050F _ 83. C4, 10
?_005:  mov     eax, dword [sheet_win]                  ; 0512 _ A1, 00000228(d)
        mov     ecx, dword [eax+4H]                     ; 0517 _ 8B. 48, 04
        mov     edx, dword [sheet_win]                  ; 051A _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0520 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0525 _ 83. EC, 08
        push    21                                      ; 0528 _ 6A, 15
        push    ecx                                     ; 052A _ 51
        push    0                                       ; 052B _ 6A, 00
        push    0                                       ; 052D _ 6A, 00
        push    edx                                     ; 052F _ 52
        push    eax                                     ; 0530 _ 50
        call    sheet_refresh                           ; 0531 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0536 _ 83. C4, 20
        mov     eax, dword [ebp-38H]                    ; 0539 _ 8B. 45, C8
        mov     edx, dword [eax+4H]                     ; 053C _ 8B. 50, 04
        mov     eax, dword [shtctl]                     ; 053F _ A1, 00000224(d)
        sub     esp, 8                                  ; 0544 _ 83. EC, 08
        push    21                                      ; 0547 _ 6A, 15
        push    edx                                     ; 0549 _ 52
        push    0                                       ; 054A _ 6A, 00
        push    0                                       ; 054C _ 6A, 00
        push    dword [ebp-38H]                         ; 054E _ FF. 75, C8
        push    eax                                     ; 0551 _ 50
        call    sheet_refresh                           ; 0552 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0557 _ 83. C4, 20
        jmp     ?_001                                   ; 055A _ E9, FFFFFE51

?_006:  cmp     dword [ebp-6CH], 0                      ; 055F _ 83. 7D, 94, 00
        jne     ?_009                                   ; 0563 _ 0F 85, 00000284
        mov     edx, dword [sheet_back]                 ; 0569 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 056F _ A1, 00000224(d)
        sub     esp, 8                                  ; 0574 _ 83. EC, 08
        push    ?_213                                   ; 0577 _ 68, 00000027(d)
        push    11                                      ; 057C _ 6A, 0B
        push    0                                       ; 057E _ 6A, 00
        push    0                                       ; 0580 _ 6A, 00
        push    edx                                     ; 0582 _ 52
        push    eax                                     ; 0583 _ 50
        call    showString                              ; 0584 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0589 _ 83. C4, 20
        movzx   eax, byte [ebp-79H]                     ; 058C _ 0F B6. 45, 87
        movzx   eax, byte [keytable+eax]                ; 0590 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 0597 _ 84. C0
        je      ?_008                                   ; 0599 _ 0F 84, 00000128
        cmp     byte [ebp-79H], 15                      ; 059F _ 80. 7D, 87, 0F
        jbe     ?_008                                   ; 05A3 _ 0F 86, 0000011E
        cmp     byte [ebp-79H], 83                      ; 05A9 _ 80. 7D, 87, 53
        ja      ?_008                                   ; 05AD _ 0F 87, 00000114
        mov     eax, dword [line.2285]                  ; 05B3 _ A1, 00000240(d)
        cmp     eax, 142                                ; 05B8 _ 3D, 0000008E
        jg      ?_008                                   ; 05BD _ 0F 8F, 00000104
        mov     eax, dword [pos.2286]                   ; 05C3 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 05C8 _ 8D. 78, 28
        mov     eax, dword [line.2285]                  ; 05CB _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 05D0 _ 8D. 70, 10
        mov     eax, dword [pos.2286]                   ; 05D3 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05D8 _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 05DB _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 05E0 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 05E3 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 05E8 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 05EB _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 05F0 _ 8B. 00
        sub     esp, 4                                  ; 05F2 _ 83. EC, 04
        push    edi                                     ; 05F5 _ 57
        push    esi                                     ; 05F6 _ 56
        push    ebx                                     ; 05F7 _ 53
        push    ecx                                     ; 05F8 _ 51
        push    7                                       ; 05F9 _ 6A, 07
        push    edx                                     ; 05FB _ 52
        push    eax                                     ; 05FC _ 50
        call    boxfill8                                ; 05FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0602 _ 83. C4, 20
        mov     eax, dword [pos.2286]                   ; 0605 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 060A _ 8D. 78, 2A
        mov     eax, dword [line.2285]                  ; 060D _ A1, 00000240(d)
        lea     esi, [eax+12H]                          ; 0612 _ 8D. 70, 12
        mov     eax, dword [pos.2286]                   ; 0615 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 061A _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 061D _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 0622 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0625 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 062B _ A1, 00000224(d)
        sub     esp, 8                                  ; 0630 _ 83. EC, 08
        push    edi                                     ; 0633 _ 57
        push    esi                                     ; 0634 _ 56
        push    ebx                                     ; 0635 _ 53
        push    ecx                                     ; 0636 _ 51
        push    edx                                     ; 0637 _ 52
        push    eax                                     ; 0638 _ 50
        call    sheet_refresh                           ; 0639 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 063E _ 83. C4, 20
        movzx   eax, byte [ebp-79H]                     ; 0641 _ 0F B6. 45, 87
        movzx   eax, byte [keytable+eax]                ; 0645 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 064C _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 064F _ C6. 45, E3, 00
        mov     eax, dword [pos.2286]                   ; 0653 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0658 _ 8D. 70, 1A
        mov     eax, dword [line.2285]                  ; 065B _ A1, 00000240(d)
        lea     ebx, [eax+0AH]                          ; 0660 _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 0663 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0669 _ A1, 00000224(d)
        sub     esp, 8                                  ; 066E _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0671 _ 8D. 4D, E2
        push    ecx                                     ; 0674 _ 51
        push    0                                       ; 0675 _ 6A, 00
        push    esi                                     ; 0677 _ 56
        push    ebx                                     ; 0678 _ 53
        push    edx                                     ; 0679 _ 52
        push    eax                                     ; 067A _ 50
        call    showString                              ; 067B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0680 _ 83. C4, 20
        mov     eax, dword [line.2285]                  ; 0683 _ A1, 00000240(d)
        add     eax, 8                                  ; 0688 _ 83. C0, 08
        mov     dword [line.2285], eax                  ; 068B _ A3, 00000240(d)
        mov     eax, dword [sheet_win]                  ; 0690 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 0695 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0698 _ 8D. 50, F0
        mov     eax, dword [line.2285]                  ; 069B _ A1, 00000240(d)
        cmp     edx, eax                                ; 06A0 _ 39. C2
        jg      ?_007                                   ; 06A2 _ 7F, 17
        mov     eax, dword [pos.2286]                   ; 06A4 _ A1, 00000074(d)
        add     eax, 16                                 ; 06A9 _ 83. C0, 10
        mov     dword [pos.2286], eax                   ; 06AC _ A3, 00000074(d)
        mov     dword [line.2285], 0                    ; 06B1 _ C7. 05, 00000240(d), 00000000
?_007:  mov     dword [ebp-70H], 0                      ; 06BB _ C7. 45, 90, 00000000
        jmp     ?_016                                   ; 06C2 _ E9, 00000343

?_008:  cmp     byte [ebp-79H], 14                      ; 06C7 _ 80. 7D, 87, 0E
        jne     ?_001                                   ; 06CB _ 0F 85, FFFFFCDF
        mov     eax, dword [line.2285]                  ; 06D1 _ A1, 00000240(d)
        cmp     eax, 7                                  ; 06D6 _ 83. F8, 07
        jle     ?_001                                   ; 06D9 _ 0F 8E, FFFFFCD1
        mov     eax, dword [pos.2286]                   ; 06DF _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06E4 _ 8D. 78, 28
        mov     eax, dword [line.2285]                  ; 06E7 _ A1, 00000240(d)
        lea     esi, [eax+12H]                          ; 06EC _ 8D. 70, 12
        mov     eax, dword [pos.2286]                   ; 06EF _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06F4 _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 06F7 _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 06FC _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 06FF _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0704 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0707 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 070C _ 8B. 00
        sub     esp, 4                                  ; 070E _ 83. EC, 04
        push    edi                                     ; 0711 _ 57
        push    esi                                     ; 0712 _ 56
        push    ebx                                     ; 0713 _ 53
        push    ecx                                     ; 0714 _ 51
        push    7                                       ; 0715 _ 6A, 07
        push    edx                                     ; 0717 _ 52
        push    eax                                     ; 0718 _ 50
        call    boxfill8                                ; 0719 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 071E _ 83. C4, 20
        mov     eax, dword [pos.2286]                   ; 0721 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0726 _ 8D. 78, 2A
        mov     eax, dword [line.2285]                  ; 0729 _ A1, 00000240(d)
        lea     esi, [eax+12H]                          ; 072E _ 8D. 70, 12
        mov     eax, dword [pos.2286]                   ; 0731 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0736 _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 0739 _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 073E _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0741 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0747 _ A1, 00000224(d)
        sub     esp, 8                                  ; 074C _ 83. EC, 08
        push    edi                                     ; 074F _ 57
        push    esi                                     ; 0750 _ 56
        push    ebx                                     ; 0751 _ 53
        push    ecx                                     ; 0752 _ 51
        push    edx                                     ; 0753 _ 52
        push    eax                                     ; 0754 _ 50
        call    sheet_refresh                           ; 0755 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 075A _ 83. C4, 20
        mov     eax, dword [line.2285]                  ; 075D _ A1, 00000240(d)
        sub     eax, 8                                  ; 0762 _ 83. E8, 08
        mov     dword [line.2285], eax                  ; 0765 _ A3, 00000240(d)
        mov     eax, dword [pos.2286]                   ; 076A _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 076F _ 8D. 78, 28
        mov     eax, dword [line.2285]                  ; 0772 _ A1, 00000240(d)
        lea     esi, [eax+12H]                          ; 0777 _ 8D. 70, 12
        mov     eax, dword [pos.2286]                   ; 077A _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 077F _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 0782 _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 0787 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 078A _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 078F _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0792 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0797 _ 8B. 00
        sub     esp, 4                                  ; 0799 _ 83. EC, 04
        push    edi                                     ; 079C _ 57
        push    esi                                     ; 079D _ 56
        push    ebx                                     ; 079E _ 53
        push    ecx                                     ; 079F _ 51
        push    7                                       ; 07A0 _ 6A, 07
        push    edx                                     ; 07A2 _ 52
        push    eax                                     ; 07A3 _ 50
        call    boxfill8                                ; 07A4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07A9 _ 83. C4, 20
        mov     eax, dword [pos.2286]                   ; 07AC _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 07B1 _ 8D. 78, 2A
        mov     eax, dword [line.2285]                  ; 07B4 _ A1, 00000240(d)
        lea     esi, [eax+12H]                          ; 07B9 _ 8D. 70, 12
        mov     eax, dword [pos.2286]                   ; 07BC _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 07C1 _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 07C4 _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 07C9 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 07CC _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 07D2 _ A1, 00000224(d)
        sub     esp, 8                                  ; 07D7 _ 83. EC, 08
        push    edi                                     ; 07DA _ 57
        push    esi                                     ; 07DB _ 56
        push    ebx                                     ; 07DC _ 53
        push    ecx                                     ; 07DD _ 51
        push    edx                                     ; 07DE _ 52
        push    eax                                     ; 07DF _ 50
        call    sheet_refresh                           ; 07E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07E5 _ 83. C4, 20
        jmp     ?_001                                   ; 07E8 _ E9, FFFFFBC3

?_009:  mov     eax, dword [task_a.2281]                ; 07ED _ A1, 00000238(d)
        sub     esp, 12                                 ; 07F2 _ 83. EC, 0C
        push    eax                                     ; 07F5 _ 50
        call    task_sleep                              ; 07F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07FB _ 83. C4, 10
        movzx   eax, byte [ebp-79H]                     ; 07FE _ 0F B6. 45, 87
        mov     edx, dword [task_console]               ; 0802 _ 8B. 15, 00000234(d)
        add     edx, 16                                 ; 0808 _ 83. C2, 10
        sub     esp, 8                                  ; 080B _ 83. EC, 08
        push    eax                                     ; 080E _ 50
        push    edx                                     ; 080F _ 52
        call    fifo8_put                               ; 0810 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0815 _ 83. C4, 10
        jmp     ?_001                                   ; 0818 _ E9, FFFFFB93

?_010:  sub     esp, 12                                 ; 081D _ 83. EC, 0C
        push    mouseInfo                               ; 0820 _ 68, 00000024(d)
        call    fifo8_status                            ; 0825 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 082A _ 83. C4, 10
        test    eax, eax                                ; 082D _ 85. C0
        jz      ?_011                                   ; 082F _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0831 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 0837 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 083D _ A1, 00000224(d)
        sub     esp, 4                                  ; 0842 _ 83. EC, 04
        push    ecx                                     ; 0845 _ 51
        push    edx                                     ; 0846 _ 52
        push    eax                                     ; 0847 _ 50
        call    showMouseInfo                           ; 0848 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 084D _ 83. C4, 10
        jmp     ?_001                                   ; 0850 _ E9, FFFFFB5B

?_011:  sub     esp, 12                                 ; 0855 _ 83. EC, 0C
        push    timerInfo                               ; 0858 _ 68, 00000200(d)
        call    fifo8_status                            ; 085D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0862 _ 83. C4, 10
        test    eax, eax                                ; 0865 _ 85. C0
        je      ?_001                                   ; 0867 _ 0F 84, FFFFFB43
        call    io_sti                                  ; 086D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0872 _ 83. EC, 0C
        push    timerInfo                               ; 0875 _ 68, 00000200(d)
        call    fifo8_get                               ; 087A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 087F _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0882 _ 89. 45, CC
        cmp     dword [ebp-34H], 10                     ; 0885 _ 83. 7D, CC, 0A
        jnz     ?_012                                   ; 0889 _ 75, 73
        mov     edx, dword [sheet_back]                 ; 088B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0891 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0896 _ 83. EC, 08
        push    ?_214                                   ; 0899 _ 68, 00000030(d)
        push    7                                       ; 089E _ 6A, 07
        push    160                                     ; 08A0 _ 68, 000000A0
        push    dword [ebp-74H]                         ; 08A5 _ FF. 75, 8C
        push    edx                                     ; 08A8 _ 52
        push    eax                                     ; 08A9 _ 50
        call    showString                              ; 08AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08AF _ 83. C4, 20
        sub     esp, 8                                  ; 08B2 _ 83. EC, 08
        push    100                                     ; 08B5 _ 6A, 64
        push    dword [ebp-58H]                         ; 08B7 _ FF. 75, A8
        call    timer_setTime                           ; 08BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08BF _ 83. C4, 10
        add     dword [ebp-74H], 8                      ; 08C2 _ 83. 45, 8C, 08
        add     dword [ebp-70H], 1                      ; 08C6 _ 83. 45, 90, 01
        cmp     dword [ebp-74H], 39                     ; 08CA _ 83. 7D, 8C, 27
        jle     ?_001                                   ; 08CE _ 0F 8E, FFFFFADC
        cmp     dword [ebp-70H], 5                      ; 08D4 _ 83. 7D, 90, 05
        jne     ?_001                                   ; 08D8 _ 0F 85, FFFFFAD2
        call    io_cli                                  ; 08DE _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2281]                ; 08E3 _ A1, 00000238(d)
        sub     esp, 12                                 ; 08E8 _ 83. EC, 0C
        push    eax                                     ; 08EB _ 50
        call    task_sleep                              ; 08EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08F1 _ 83. C4, 10
        call    io_sti                                  ; 08F4 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08F9 _ E9, FFFFFAB2

?_012:  cmp     dword [ebp-34H], 2                      ; 08FE _ 83. 7D, CC, 02
        jnz     ?_013                                   ; 0902 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0904 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 090A _ A1, 00000224(d)
        sub     esp, 8                                  ; 090F _ 83. EC, 08
        push    ?_215                                   ; 0912 _ 68, 00000032(d)
        push    7                                       ; 0917 _ 6A, 07
        push    32                                      ; 0919 _ 6A, 20
        push    0                                       ; 091B _ 6A, 00
        push    edx                                     ; 091D _ 52
        push    eax                                     ; 091E _ 50
        call    showString                              ; 091F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0924 _ 83. C4, 20
        jmp     ?_001                                   ; 0927 _ E9, FFFFFA84

?_013:  cmp     dword [ebp-34H], 0                      ; 092C _ 83. 7D, CC, 00
        jz      ?_014                                   ; 0930 _ 74, 1E
        sub     esp, 4                                  ; 0932 _ 83. EC, 04
        push    0                                       ; 0935 _ 6A, 00
        push    timerInfo                               ; 0937 _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 093C _ FF. 75, B0
        call    timer_init                              ; 093F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0944 _ 83. C4, 10
        mov     dword [ebp-78H], 0                      ; 0947 _ C7. 45, 88, 00000000
        jmp     ?_015                                   ; 094E _ EB, 1C

?_014:  sub     esp, 4                                  ; 0950 _ 83. EC, 04
        push    1                                       ; 0953 _ 6A, 01
        push    timerInfo                               ; 0955 _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 095A _ FF. 75, B0
        call    timer_init                              ; 095D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0962 _ 83. C4, 10
        mov     dword [ebp-78H], 7                      ; 0965 _ C7. 45, 88, 00000007
?_015:  sub     esp, 8                                  ; 096C _ 83. EC, 08
        push    50                                      ; 096F _ 6A, 32
        push    dword [ebp-50H]                         ; 0971 _ FF. 75, B0
        call    timer_setTime                           ; 0974 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0979 _ 83. C4, 10
        mov     eax, dword [pos.2286]                   ; 097C _ A1, 00000074(d)
        add     eax, 40                                 ; 0981 _ 83. C0, 28
        mov     dword [ebp-8CH], eax                    ; 0984 _ 89. 85, FFFFFF74
        mov     eax, dword [line.2285]                  ; 098A _ A1, 00000240(d)
        lea     edi, [eax+10H]                          ; 098F _ 8D. 78, 10
        mov     eax, dword [pos.2286]                   ; 0992 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0997 _ 8D. 70, 1A
        mov     eax, dword [line.2285]                  ; 099A _ A1, 00000240(d)
        lea     ebx, [eax+0AH]                          ; 099F _ 8D. 58, 0A
        mov     eax, dword [ebp-78H]                    ; 09A2 _ 8B. 45, 88
        movzx   ecx, al                                 ; 09A5 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 09A8 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 09AD _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 09B0 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 09B5 _ 8B. 00
        sub     esp, 4                                  ; 09B7 _ 83. EC, 04
        push    dword [ebp-8CH]                         ; 09BA _ FF. B5, FFFFFF74
        push    edi                                     ; 09C0 _ 57
        push    esi                                     ; 09C1 _ 56
        push    ebx                                     ; 09C2 _ 53
        push    ecx                                     ; 09C3 _ 51
        push    edx                                     ; 09C4 _ 52
        push    eax                                     ; 09C5 _ 50
        call    boxfill8                                ; 09C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09CB _ 83. C4, 20
        mov     eax, dword [pos.2286]                   ; 09CE _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 09D3 _ 8D. 78, 2A
        mov     eax, dword [line.2285]                  ; 09D6 _ A1, 00000240(d)
        lea     esi, [eax+12H]                          ; 09DB _ 8D. 70, 12
        mov     eax, dword [pos.2286]                   ; 09DE _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09E3 _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 09E6 _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 09EB _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 09EE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 09F4 _ A1, 00000224(d)
        sub     esp, 8                                  ; 09F9 _ 83. EC, 08
        push    edi                                     ; 09FC _ 57
        push    esi                                     ; 09FD _ 56
        push    ebx                                     ; 09FE _ 53
        push    ecx                                     ; 09FF _ 51
        push    edx                                     ; 0A00 _ 52
        push    eax                                     ; 0A01 _ 50
        call    sheet_refresh                           ; 0A02 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A07 _ 83. C4, 20
?_016:  jmp     ?_001                                   ; 0A0A _ E9, FFFFF9A1
; CMain End of function

launch_console:; Function begin
        push    ebp                                     ; 0A0F _ 55
        mov     ebp, esp                                ; 0A10 _ 89. E5
        sub     esp, 24                                 ; 0A12 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0A15 _ A1, 00000224(d)
        sub     esp, 12                                 ; 0A1A _ 83. EC, 0C
        push    eax                                     ; 0A1D _ 50
        call    sheet_alloc                             ; 0A1E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A23 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0A26 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0A29 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0A2E _ 83. EC, 08
        push    46080                                   ; 0A31 _ 68, 0000B400
        push    eax                                     ; 0A36 _ 50
        call    memman_alloc_4K                         ; 0A37 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A3C _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0A3F _ 89. 45, EC
        sub     esp, 12                                 ; 0A42 _ 83. EC, 0C
        push    99                                      ; 0A45 _ 6A, 63
        push    180                                     ; 0A47 _ 68, 000000B4
        push    256                                     ; 0A4C _ 68, 00000100
        push    dword [ebp-14H]                         ; 0A51 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0A54 _ FF. 75, E8
        call    sheet_setbuf                            ; 0A57 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A5C _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0A5F _ A1, 00000224(d)
        push    0                                       ; 0A64 _ 6A, 00
        push    ?_212                                   ; 0A66 _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0A6B _ FF. 75, E8
        push    eax                                     ; 0A6E _ 50
        call    make_window8                            ; 0A6F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A74 _ 83. C4, 10
        sub     esp, 8                                  ; 0A77 _ 83. EC, 08
        push    0                                       ; 0A7A _ 6A, 00
        push    144                                     ; 0A7C _ 68, 00000090
        push    240                                     ; 0A81 _ 68, 000000F0
        push    28                                      ; 0A86 _ 6A, 1C
        push    8                                       ; 0A88 _ 6A, 08
        push    dword [ebp-18H]                         ; 0A8A _ FF. 75, E8
        call    make_textbox8                           ; 0A8D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A92 _ 83. C4, 20
        call    task_alloc                              ; 0A95 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0A9A _ 89. 45, F0
        call    get_code32_addr                         ; 0A9D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0AA2 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0AA5 _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 0AA8 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 0AAF _ 8B. 45, F0
        mov     dword [eax+78H], 1073741824             ; 0AB2 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0AB9 _ 8B. 45, F4
        neg     eax                                     ; 0ABC _ F7. D8
        add     eax, console_task                       ; 0ABE _ 05, 00000000(d)
        mov     edx, eax                                ; 0AC3 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0AC5 _ 8B. 45, F0
        mov     dword [eax+34H], edx                    ; 0AC8 _ 89. 50, 34
        mov     eax, dword [ebp-10H]                    ; 0ACB _ 8B. 45, F0
        mov     dword [eax+5CH], 0                      ; 0ACE _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0AD5 _ 8B. 45, F0
        mov     dword [eax+60H], 8                      ; 0AD8 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp-10H]                    ; 0ADF _ 8B. 45, F0
        mov     dword [eax+64H], 32                     ; 0AE2 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp-10H]                    ; 0AE9 _ 8B. 45, F0
        mov     dword [eax+68H], 24                     ; 0AEC _ C7. 40, 68, 00000018
        mov     eax, dword [ebp-10H]                    ; 0AF3 _ 8B. 45, F0
        mov     dword [eax+6CH], 0                      ; 0AF6 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0AFD _ 8B. 45, F0
        mov     dword [eax+70H], 16                     ; 0B00 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp-10H]                    ; 0B07 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0B0A _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 0B0D _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0B10 _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 0B13 _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 0B16 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0B19 _ 8B. 40, 4C
        add     eax, 4                                  ; 0B1C _ 83. C0, 04
        mov     edx, eax                                ; 0B1F _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0B21 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0B24 _ 89. 02
        mov     eax, dword [ebp-10H]                    ; 0B26 _ 8B. 45, F0
        mov     dword [task_console], eax               ; 0B29 _ A3, 00000234(d)
        sub     esp, 4                                  ; 0B2E _ 83. EC, 04
        push    5                                       ; 0B31 _ 6A, 05
        push    1                                       ; 0B33 _ 6A, 01
        push    dword [ebp-10H]                         ; 0B35 _ FF. 75, F0
        call    task_run                                ; 0B38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B3D _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0B40 _ A1, 00000224(d)
        push    16                                      ; 0B45 _ 6A, 10
        push    350                                     ; 0B47 _ 68, 0000015E
        push    dword [ebp-18H]                         ; 0B4C _ FF. 75, E8
        push    eax                                     ; 0B4F _ 50
        call    sheet_slide                             ; 0B50 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B55 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0B58 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0B5D _ 83. EC, 04
        push    2                                       ; 0B60 _ 6A, 02
        push    dword [ebp-18H]                         ; 0B62 _ FF. 75, E8
        push    eax                                     ; 0B65 _ 50
        call    sheet_level_updown                      ; 0B66 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B6B _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0B6E _ 8B. 45, E8
        leave                                           ; 0B71 _ C9
        ret                                             ; 0B72 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0B73 _ 55
        mov     ebp, esp                                ; 0B74 _ 89. E5
        push    esi                                     ; 0B76 _ 56
        push    ebx                                     ; 0B77 _ 53
        sub     esp, 176                                ; 0B78 _ 81. EC, 000000B0
        mov     eax, dword [ebp+8H]                     ; 0B7E _ 8B. 45, 08
        mov     dword [ebp-0ACH], eax                   ; 0B81 _ 89. 85, FFFFFF54
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0B87 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0B8D _ 89. 45, F4
        xor     eax, eax                                ; 0B90 _ 31. C0
        call    task_now                                ; 0B92 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-9CH], eax                    ; 0B97 _ 89. 85, FFFFFF64
        mov     dword [ebp-0A4H], 8                     ; 0B9D _ C7. 85, FFFFFF5C, 00000008
        mov     dword [ebp-0A0H], 0                     ; 0BA7 _ C7. 85, FFFFFF60, 00000000
        mov     eax, dword [ebp-9CH]                    ; 0BB1 _ 8B. 85, FFFFFF64
        lea     edx, [eax+10H]                          ; 0BB7 _ 8D. 50, 10
        push    dword [ebp-9CH]                         ; 0BBA _ FF. B5, FFFFFF64
        lea     eax, [ebp-8CH]                          ; 0BC0 _ 8D. 85, FFFFFF74
        push    eax                                     ; 0BC6 _ 50
        push    128                                     ; 0BC7 _ 68, 00000080
        push    edx                                     ; 0BCC _ 52
        call    fifo8_init                              ; 0BCD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BD2 _ 83. C4, 10
        call    timer_alloc                             ; 0BD5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-98H], eax                    ; 0BDA _ 89. 85, FFFFFF68
        mov     eax, dword [ebp-9CH]                    ; 0BE0 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0BE6 _ 83. C0, 10
        sub     esp, 4                                  ; 0BE9 _ 83. EC, 04
        push    1                                       ; 0BEC _ 6A, 01
        push    eax                                     ; 0BEE _ 50
        push    dword [ebp-98H]                         ; 0BEF _ FF. B5, FFFFFF68
        call    timer_init                              ; 0BF5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BFA _ 83. C4, 10
        sub     esp, 8                                  ; 0BFD _ 83. EC, 08
        push    50                                      ; 0C00 _ 6A, 32
        push    dword [ebp-98H]                         ; 0C02 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0C08 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C0D _ 83. C4, 10
        mov     dword [ebp-94H], 0                      ; 0C10 _ C7. 85, FFFFFF6C, 00000000
        mov     eax, dword [shtctl]                     ; 0C1A _ A1, 00000224(d)
        sub     esp, 8                                  ; 0C1F _ 83. EC, 08
        push    ?_216                                   ; 0C22 _ 68, 00000039(d)
        push    7                                       ; 0C27 _ 6A, 07
        push    28                                      ; 0C29 _ 6A, 1C
        push    8                                       ; 0C2B _ 6A, 08
        push    dword [ebp-0ACH]                        ; 0C2D _ FF. B5, FFFFFF54
        push    eax                                     ; 0C33 _ 50
        call    showString                              ; 0C34 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C39 _ 83. C4, 20
?_017:  call    io_cli                                  ; 0C3C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-9CH]                    ; 0C41 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0C47 _ 83. C0, 10
        sub     esp, 12                                 ; 0C4A _ 83. EC, 0C
        push    eax                                     ; 0C4D _ 50
        call    fifo8_status                            ; 0C4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C53 _ 83. C4, 10
        test    eax, eax                                ; 0C56 _ 85. C0
        jnz     ?_018                                   ; 0C58 _ 75, 07
        call    io_sti                                  ; 0C5A _ E8, FFFFFFFC(rel)
        jmp     ?_017                                   ; 0C5F _ EB, DB

?_018:  mov     eax, dword [ebp-9CH]                    ; 0C61 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0C67 _ 83. C0, 10
        sub     esp, 12                                 ; 0C6A _ 83. EC, 0C
        push    eax                                     ; 0C6D _ 50
        call    fifo8_get                               ; 0C6E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C73 _ 83. C4, 10
        mov     dword [ebp-94H], eax                    ; 0C76 _ 89. 85, FFFFFF6C
        call    io_sti                                  ; 0C7C _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-94H], 1                      ; 0C81 _ 83. BD, FFFFFF6C, 01
        jg      ?_021                                   ; 0C88 _ 0F 8F, 000000E9
        cmp     dword [ebp-94H], 1                      ; 0C8E _ 83. BD, FFFFFF6C, 01
        jnz     ?_019                                   ; 0C95 _ 75, 29
        mov     eax, dword [ebp-9CH]                    ; 0C97 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0C9D _ 83. C0, 10
        sub     esp, 4                                  ; 0CA0 _ 83. EC, 04
        push    0                                       ; 0CA3 _ 6A, 00
        push    eax                                     ; 0CA5 _ 50
        push    dword [ebp-98H]                         ; 0CA6 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0CAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB1 _ 83. C4, 10
        mov     dword [ebp-0A0H], 7                     ; 0CB4 _ C7. 85, FFFFFF60, 00000007
        jmp     ?_020                                   ; 0CBE _ EB, 30

?_019:  cmp     dword [ebp-94H], 0                      ; 0CC0 _ 83. BD, FFFFFF6C, 00
        jnz     ?_020                                   ; 0CC7 _ 75, 27
        mov     eax, dword [ebp-9CH]                    ; 0CC9 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0CCF _ 83. C0, 10
        sub     esp, 4                                  ; 0CD2 _ 83. EC, 04
        push    1                                       ; 0CD5 _ 6A, 01
        push    eax                                     ; 0CD7 _ 50
        push    dword [ebp-98H]                         ; 0CD8 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0CDE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE3 _ 83. C4, 10
        mov     dword [ebp-0A0H], 0                     ; 0CE6 _ C7. 85, FFFFFF60, 00000000
?_020:  sub     esp, 8                                  ; 0CF0 _ 83. EC, 08
        push    50                                      ; 0CF3 _ 6A, 32
        push    dword [ebp-98H]                         ; 0CF5 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0CFB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D00 _ 83. C4, 10
        mov     eax, dword [ebp-0A4H]                   ; 0D03 _ 8B. 85, FFFFFF5C
        lea     esi, [eax+10H]                          ; 0D09 _ 8D. 70, 10
        mov     eax, dword [ebp-0A4H]                   ; 0D0C _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+0AH]                          ; 0D12 _ 8D. 58, 0A
        mov     eax, dword [ebp-0A0H]                   ; 0D15 _ 8B. 85, FFFFFF60
        movzx   ecx, al                                 ; 0D1B _ 0F B6. C8
        mov     eax, dword [ebp-0ACH]                   ; 0D1E _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0D24 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0D27 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0D2D _ 8B. 00
        sub     esp, 4                                  ; 0D2F _ 83. EC, 04
        push    42                                      ; 0D32 _ 6A, 2A
        push    esi                                     ; 0D34 _ 56
        push    28                                      ; 0D35 _ 6A, 1C
        push    ebx                                     ; 0D37 _ 53
        push    ecx                                     ; 0D38 _ 51
        push    edx                                     ; 0D39 _ 52
        push    eax                                     ; 0D3A _ 50
        call    boxfill8                                ; 0D3B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D40 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0D43 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0D49 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0D4C _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0D52 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0D55 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0D5A _ 83. EC, 08
        push    44                                      ; 0D5D _ 6A, 2C
        push    ecx                                     ; 0D5F _ 51
        push    28                                      ; 0D60 _ 6A, 1C
        push    edx                                     ; 0D62 _ 52
        push    dword [ebp-0ACH]                        ; 0D63 _ FF. B5, FFFFFF54
        push    eax                                     ; 0D69 _ 50
        call    sheet_refresh                           ; 0D6A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D6F _ 83. C4, 20
        jmp     ?_017                                   ; 0D72 _ E9, FFFFFEC5

?_021:  cmp     dword [ebp-94H], 14                     ; 0D77 _ 83. BD, FFFFFF6C, 0E
        jne     ?_022                                   ; 0D7E _ 0F 85, 000000E7
        cmp     dword [ebp-0A4H], 15                    ; 0D84 _ 83. BD, FFFFFF5C, 0F
        jle     ?_022                                   ; 0D8B _ 0F 8E, 000000DA
        mov     eax, dword [ebp-0A4H]                   ; 0D91 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0D97 _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0D9A _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0DA0 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0DA3 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0DA9 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0DAC _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0DB2 _ 8B. 00
        sub     esp, 4                                  ; 0DB4 _ 83. EC, 04
        push    42                                      ; 0DB7 _ 6A, 2A
        push    ebx                                     ; 0DB9 _ 53
        push    28                                      ; 0DBA _ 6A, 1C
        push    ecx                                     ; 0DBC _ 51
        push    0                                       ; 0DBD _ 6A, 00
        push    edx                                     ; 0DBF _ 52
        push    eax                                     ; 0DC0 _ 50
        call    boxfill8                                ; 0DC1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DC6 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0DC9 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0DCF _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0DD2 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0DD8 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0DDB _ A1, 00000224(d)
        sub     esp, 8                                  ; 0DE0 _ 83. EC, 08
        push    44                                      ; 0DE3 _ 6A, 2C
        push    ecx                                     ; 0DE5 _ 51
        push    28                                      ; 0DE6 _ 6A, 1C
        push    edx                                     ; 0DE8 _ 52
        push    dword [ebp-0ACH]                        ; 0DE9 _ FF. B5, FFFFFF54
        push    eax                                     ; 0DEF _ 50
        call    sheet_refresh                           ; 0DF0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DF5 _ 83. C4, 20
        sub     dword [ebp-0A4H], 8                     ; 0DF8 _ 83. AD, FFFFFF5C, 08
        mov     eax, dword [ebp-0A4H]                   ; 0DFF _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0E05 _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0E08 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0E0E _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0E11 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0E17 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0E1A _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0E20 _ 8B. 00
        sub     esp, 4                                  ; 0E22 _ 83. EC, 04
        push    42                                      ; 0E25 _ 6A, 2A
        push    ebx                                     ; 0E27 _ 53
        push    28                                      ; 0E28 _ 6A, 1C
        push    ecx                                     ; 0E2A _ 51
        push    0                                       ; 0E2B _ 6A, 00
        push    edx                                     ; 0E2D _ 52
        push    eax                                     ; 0E2E _ 50
        call    boxfill8                                ; 0E2F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E34 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0E37 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0E3D _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0E40 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0E46 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0E49 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0E4E _ 83. EC, 08
        push    44                                      ; 0E51 _ 6A, 2C
        push    ecx                                     ; 0E53 _ 51
        push    28                                      ; 0E54 _ 6A, 1C
        push    edx                                     ; 0E56 _ 52
        push    dword [ebp-0ACH]                        ; 0E57 _ FF. B5, FFFFFF54
        push    eax                                     ; 0E5D _ 50
        call    sheet_refresh                           ; 0E5E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E63 _ 83. C4, 20
        jmp     ?_023                                   ; 0E66 _ E9, 00000120

?_022:  mov     eax, dword [ebp-94H]                    ; 0E6B _ 8B. 85, FFFFFF6C
        add     eax, keytable                           ; 0E71 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0E76 _ 0F B6. 00
        test    al, al                                  ; 0E79 _ 84. C0
        je      ?_017                                   ; 0E7B _ 0F 84, FFFFFDBB
        cmp     dword [ebp-94H], 15                     ; 0E81 _ 83. BD, FFFFFF6C, 0F
        jle     ?_017                                   ; 0E88 _ 0F 8E, FFFFFDAE
        cmp     dword [ebp-94H], 83                     ; 0E8E _ 83. BD, FFFFFF6C, 53
        jg      ?_017                                   ; 0E95 _ 0F 8F, FFFFFDA1
        mov     eax, dword [ebp-0ACH]                   ; 0E9B _ 8B. 85, FFFFFF54
        mov     eax, dword [eax+4H]                     ; 0EA1 _ 8B. 40, 04
        sub     eax, 100                                ; 0EA4 _ 83. E8, 64
        cmp     dword [ebp-0A4H], eax                   ; 0EA7 _ 39. 85, FFFFFF5C
        jg      ?_017                                   ; 0EAD _ 0F 8F, FFFFFD89
        mov     edx, dword [sheet_back]                 ; 0EB3 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0EB9 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0EBE _ 83. EC, 08
        push    ?_217                                   ; 0EC1 _ 68, 0000003B(d)
        push    11                                      ; 0EC6 _ 6A, 0B
        push    16                                      ; 0EC8 _ 6A, 10
        push    0                                       ; 0ECA _ 6A, 00
        push    edx                                     ; 0ECC _ 52
        push    eax                                     ; 0ECD _ 50
        call    showString                              ; 0ECE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0ED3 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0ED6 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+10H]                          ; 0EDC _ 8D. 58, 10
        mov     eax, dword [ebp-0A4H]                   ; 0EDF _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0EE5 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0EE8 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0EEE _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0EF1 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0EF7 _ 8B. 00
        sub     esp, 4                                  ; 0EF9 _ 83. EC, 04
        push    42                                      ; 0EFC _ 6A, 2A
        push    ebx                                     ; 0EFE _ 53
        push    28                                      ; 0EFF _ 6A, 1C
        push    ecx                                     ; 0F01 _ 51
        push    0                                       ; 0F02 _ 6A, 00
        push    edx                                     ; 0F04 _ 52
        push    eax                                     ; 0F05 _ 50
        call    boxfill8                                ; 0F06 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F0B _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0F0E _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0F14 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0F17 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0F1D _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0F20 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0F25 _ 83. EC, 08
        push    44                                      ; 0F28 _ 6A, 2C
        push    ecx                                     ; 0F2A _ 51
        push    28                                      ; 0F2B _ 6A, 1C
        push    edx                                     ; 0F2D _ 52
        push    dword [ebp-0ACH]                        ; 0F2E _ FF. B5, FFFFFF54
        push    eax                                     ; 0F34 _ 50
        call    sheet_refresh                           ; 0F35 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F3A _ 83. C4, 20
        mov     eax, dword [ebp-94H]                    ; 0F3D _ 8B. 85, FFFFFF6C
        add     eax, keytable                           ; 0F43 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0F48 _ 0F B6. 00
        mov     byte [ebp-8EH], al                      ; 0F4B _ 88. 85, FFFFFF72
        mov     byte [ebp-8DH], 0                       ; 0F51 _ C6. 85, FFFFFF73, 00
        mov     eax, dword [ebp-0A4H]                   ; 0F58 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0F5E _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 0F61 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0F66 _ 83. EC, 08
        lea     edx, [ebp-8EH]                          ; 0F69 _ 8D. 95, FFFFFF72
        push    edx                                     ; 0F6F _ 52
        push    7                                       ; 0F70 _ 6A, 07
        push    28                                      ; 0F72 _ 6A, 1C
        push    ecx                                     ; 0F74 _ 51
        push    dword [ebp-0ACH]                        ; 0F75 _ FF. B5, FFFFFF54
        push    eax                                     ; 0F7B _ 50
        call    showString                              ; 0F7C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F81 _ 83. C4, 20
        add     dword [ebp-0A4H], 8                     ; 0F84 _ 83. 85, FFFFFF5C, 08
?_023:  jmp     ?_017                                   ; 0F8B _ E9, FFFFFCAC
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 0F90 _ 55
        mov     ebp, esp                                ; 0F91 _ 89. E5
        sub     esp, 88                                 ; 0F93 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 0F96 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 0F99 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0F9C _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0FA2 _ 89. 45, F4
        xor     eax, eax                                ; 0FA5 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0FA7 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0FAD _ A1, 00000224(d)
        sub     esp, 8                                  ; 0FB2 _ 83. EC, 08
        push    ?_218                                   ; 0FB5 _ 68, 00000040(d)
        push    7                                       ; 0FBA _ 6A, 07
        push    144                                     ; 0FBC _ 68, 00000090
        push    0                                       ; 0FC1 _ 6A, 00
        push    edx                                     ; 0FC3 _ 52
        push    eax                                     ; 0FC4 _ 50
        call    showString                              ; 0FC5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FCA _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 0FCD _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0FD4 _ C7. 45, C8, 00000000
        push    0                                       ; 0FDB _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0FDD _ 8D. 45, EC
        push    eax                                     ; 0FE0 _ 50
        push    8                                       ; 0FE1 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0FE3 _ 8D. 45, D0
        push    eax                                     ; 0FE6 _ 50
        call    fifo8_init                              ; 0FE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FEC _ 83. C4, 10
        call    timer_alloc                             ; 0FEF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0FF4 _ 89. 45, C4
        sub     esp, 4                                  ; 0FF7 _ 83. EC, 04
        push    123                                     ; 0FFA _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0FFC _ 8D. 45, D0
        push    eax                                     ; 0FFF _ 50
        push    dword [ebp-3CH]                         ; 1000 _ FF. 75, C4
        call    timer_init                              ; 1003 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1008 _ 83. C4, 10
        sub     esp, 8                                  ; 100B _ 83. EC, 08
        push    100                                     ; 100E _ 6A, 64
        push    dword [ebp-3CH]                         ; 1010 _ FF. 75, C4
        call    timer_setTime                           ; 1013 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1018 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 101B _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 1022 _ C7. 45, C0, 00000000
?_024:  add     dword [ebp-40H], 1                      ; 1029 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 102D _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 1030 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 1033 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 1036 _ 8B. 00
        sub     esp, 4                                  ; 1038 _ 83. EC, 04
        push    38                                      ; 103B _ 6A, 26
        push    100                                     ; 103D _ 6A, 64
        push    23                                      ; 103F _ 6A, 17
        push    8                                       ; 1041 _ 6A, 08
        push    8                                       ; 1043 _ 6A, 08
        push    edx                                     ; 1045 _ 52
        push    eax                                     ; 1046 _ 50
        call    boxfill8                                ; 1047 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 104C _ 83. C4, 20
        sub     esp, 12                                 ; 104F _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 1052 _ FF. 75, C0
        call    intToHexStr                             ; 1055 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 105A _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 105D _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 1060 _ A1, 00000224(d)
        sub     esp, 8                                  ; 1065 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 1068 _ FF. 75, CC
        push    10                                      ; 106B _ 6A, 0A
        push    23                                      ; 106D _ 6A, 17
        push    8                                       ; 106F _ 6A, 08
        push    dword [ebp-4CH]                         ; 1071 _ FF. 75, B4
        push    eax                                     ; 1074 _ 50
        call    showString                              ; 1075 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 107A _ 83. C4, 20
        call    io_cli                                  ; 107D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1082 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1085 _ 8D. 45, D0
        push    eax                                     ; 1088 _ 50
        call    fifo8_status                            ; 1089 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 108E _ 83. C4, 10
        test    eax, eax                                ; 1091 _ 85. C0
        jnz     ?_025                                   ; 1093 _ 75, 07
        call    io_sti                                  ; 1095 _ E8, FFFFFFFC(rel)
        jmp     ?_024                                   ; 109A _ EB, 8D

?_025:  sub     esp, 12                                 ; 109C _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 109F _ 8D. 45, D0
        push    eax                                     ; 10A2 _ 50
        call    fifo8_get                               ; 10A3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10A8 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 10AB _ 89. 45, C8
        call    io_sti                                  ; 10AE _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 10B3 _ 83. 7D, C8, 7B
        jne     ?_024                                   ; 10B7 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 10BD _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 10C3 _ A1, 00000224(d)
        sub     esp, 8                                  ; 10C8 _ 83. EC, 08
        push    ?_219                                   ; 10CB _ 68, 0000004D(d)
        push    7                                       ; 10D0 _ 6A, 07
        push    176                                     ; 10D2 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 10D7 _ FF. 75, BC
        push    edx                                     ; 10DA _ 52
        push    eax                                     ; 10DB _ 50
        call    showString                              ; 10DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10E1 _ 83. C4, 20
        sub     esp, 8                                  ; 10E4 _ 83. EC, 08
        push    100                                     ; 10E7 _ 6A, 64
        push    dword [ebp-3CH]                         ; 10E9 _ FF. 75, C4
        call    timer_setTime                           ; 10EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10F1 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 10F4 _ 83. 45, BC, 08
        jmp     ?_024                                   ; 10F8 _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 10FD _ 55
        mov     ebp, esp                                ; 10FE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1100 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1103 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1109 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 110C _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1112 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1115 _ 66: C7. 40, 06, 01E0
        nop                                             ; 111B _ 90
        pop     ebp                                     ; 111C _ 5D
        ret                                             ; 111D _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 111E _ 55
        mov     ebp, esp                                ; 111F _ 89. E5
        push    ebx                                     ; 1121 _ 53
        sub     esp, 36                                 ; 1122 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 1125 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1128 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 112B _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 112E _ 89. 45, F4
        jmp     ?_027                                   ; 1131 _ EB, 3E

?_026:  mov     eax, dword [ebp+1CH]                    ; 1133 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1136 _ 0F B6. 00
        movzx   eax, al                                 ; 1139 _ 0F B6. C0
        shl     eax, 4                                  ; 113C _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 113F _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 1145 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 1149 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 114C _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 114F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1152 _ 8B. 00
        sub     esp, 8                                  ; 1154 _ 83. EC, 08
        push    ebx                                     ; 1157 _ 53
        push    ecx                                     ; 1158 _ 51
        push    dword [ebp+14H]                         ; 1159 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 115C _ FF. 75, 10
        push    edx                                     ; 115F _ 52
        push    eax                                     ; 1160 _ 50
        call    showFont8                               ; 1161 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1166 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 1169 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 116D _ 83. 45, 1C, 01
?_027:  mov     eax, dword [ebp+1CH]                    ; 1171 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1174 _ 0F B6. 00
        test    al, al                                  ; 1177 _ 84. C0
        jnz     ?_026                                   ; 1179 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 117B _ 8B. 45, 14
        add     eax, 16                                 ; 117E _ 83. C0, 10
        sub     esp, 8                                  ; 1181 _ 83. EC, 08
        push    eax                                     ; 1184 _ 50
        push    dword [ebp+10H]                         ; 1185 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 1188 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 118B _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 118E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1191 _ FF. 75, 08
        call    sheet_refresh                           ; 1194 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1199 _ 83. C4, 20
        nop                                             ; 119C _ 90
        mov     ebx, dword [ebp-4H]                     ; 119D _ 8B. 5D, FC
        leave                                           ; 11A0 _ C9
        ret                                             ; 11A1 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 11A2 _ 55
        mov     ebp, esp                                ; 11A3 _ 89. E5
        push    ebx                                     ; 11A5 _ 53
        sub     esp, 4                                  ; 11A6 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 11A9 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 11AC _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 11AF _ 8B. 45, 0C
        sub     eax, 1                                  ; 11B2 _ 83. E8, 01
        sub     esp, 4                                  ; 11B5 _ 83. EC, 04
        push    edx                                     ; 11B8 _ 52
        push    eax                                     ; 11B9 _ 50
        push    0                                       ; 11BA _ 6A, 00
        push    0                                       ; 11BC _ 6A, 00
        push    14                                      ; 11BE _ 6A, 0E
        push    dword [ebp+0CH]                         ; 11C0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11C3 _ FF. 75, 08
        call    boxfill8                                ; 11C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11CB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 11CE _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 11D1 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 11D4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 11D7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 11DA _ 8B. 45, 10
        sub     eax, 24                                 ; 11DD _ 83. E8, 18
        sub     esp, 4                                  ; 11E0 _ 83. EC, 04
        push    ecx                                     ; 11E3 _ 51
        push    edx                                     ; 11E4 _ 52
        push    eax                                     ; 11E5 _ 50
        push    0                                       ; 11E6 _ 6A, 00
        push    8                                       ; 11E8 _ 6A, 08
        push    dword [ebp+0CH]                         ; 11EA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11ED _ FF. 75, 08
        call    boxfill8                                ; 11F0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11F5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 11F8 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 11FB _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 11FE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1201 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1204 _ 8B. 45, 10
        sub     eax, 23                                 ; 1207 _ 83. E8, 17
        sub     esp, 4                                  ; 120A _ 83. EC, 04
        push    ecx                                     ; 120D _ 51
        push    edx                                     ; 120E _ 52
        push    eax                                     ; 120F _ 50
        push    0                                       ; 1210 _ 6A, 00
        push    7                                       ; 1212 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1214 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1217 _ FF. 75, 08
        call    boxfill8                                ; 121A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 121F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1222 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1225 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1228 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 122B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 122E _ 8B. 45, 10
        sub     eax, 22                                 ; 1231 _ 83. E8, 16
        sub     esp, 4                                  ; 1234 _ 83. EC, 04
        push    ecx                                     ; 1237 _ 51
        push    edx                                     ; 1238 _ 52
        push    eax                                     ; 1239 _ 50
        push    0                                       ; 123A _ 6A, 00
        push    8                                       ; 123C _ 6A, 08
        push    dword [ebp+0CH]                         ; 123E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1241 _ FF. 75, 08
        call    boxfill8                                ; 1244 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1249 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 124C _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 124F _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 1252 _ 8B. 45, 10
        sub     eax, 20                                 ; 1255 _ 83. E8, 14
        sub     esp, 4                                  ; 1258 _ 83. EC, 04
        push    edx                                     ; 125B _ 52
        push    51                                      ; 125C _ 6A, 33
        push    eax                                     ; 125E _ 50
        push    10                                      ; 125F _ 6A, 0A
        push    7                                       ; 1261 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1263 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1266 _ FF. 75, 08
        call    boxfill8                                ; 1269 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 126E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1271 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1274 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1277 _ 8B. 45, 10
        sub     eax, 20                                 ; 127A _ 83. E8, 14
        sub     esp, 4                                  ; 127D _ 83. EC, 04
        push    edx                                     ; 1280 _ 52
        push    9                                       ; 1281 _ 6A, 09
        push    eax                                     ; 1283 _ 50
        push    9                                       ; 1284 _ 6A, 09
        push    7                                       ; 1286 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1288 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 128B _ FF. 75, 08
        call    boxfill8                                ; 128E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1293 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1296 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1299 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 129C _ 8B. 45, 10
        sub     eax, 4                                  ; 129F _ 83. E8, 04
        sub     esp, 4                                  ; 12A2 _ 83. EC, 04
        push    edx                                     ; 12A5 _ 52
        push    50                                      ; 12A6 _ 6A, 32
        push    eax                                     ; 12A8 _ 50
        push    10                                      ; 12A9 _ 6A, 0A
        push    15                                      ; 12AB _ 6A, 0F
        push    dword [ebp+0CH]                         ; 12AD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12B0 _ FF. 75, 08
        call    boxfill8                                ; 12B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12B8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12BB _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 12BE _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 12C1 _ 8B. 45, 10
        sub     eax, 19                                 ; 12C4 _ 83. E8, 13
        sub     esp, 4                                  ; 12C7 _ 83. EC, 04
        push    edx                                     ; 12CA _ 52
        push    50                                      ; 12CB _ 6A, 32
        push    eax                                     ; 12CD _ 50
        push    50                                      ; 12CE _ 6A, 32
        push    15                                      ; 12D0 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 12D2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12D5 _ FF. 75, 08
        call    boxfill8                                ; 12D8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12DD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12E0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 12E3 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 12E6 _ 8B. 45, 10
        sub     eax, 3                                  ; 12E9 _ 83. E8, 03
        sub     esp, 4                                  ; 12EC _ 83. EC, 04
        push    edx                                     ; 12EF _ 52
        push    50                                      ; 12F0 _ 6A, 32
        push    eax                                     ; 12F2 _ 50
        push    10                                      ; 12F3 _ 6A, 0A
        push    0                                       ; 12F5 _ 6A, 00
        push    dword [ebp+0CH]                         ; 12F7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12FA _ FF. 75, 08
        call    boxfill8                                ; 12FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1302 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1305 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1308 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 130B _ 8B. 45, 10
        sub     eax, 20                                 ; 130E _ 83. E8, 14
        sub     esp, 4                                  ; 1311 _ 83. EC, 04
        push    edx                                     ; 1314 _ 52
        push    51                                      ; 1315 _ 6A, 33
        push    eax                                     ; 1317 _ 50
        push    51                                      ; 1318 _ 6A, 33
        push    0                                       ; 131A _ 6A, 00
        push    dword [ebp+0CH]                         ; 131C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 131F _ FF. 75, 08
        call    boxfill8                                ; 1322 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1327 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 132A _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 132D _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 1330 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1333 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1336 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1339 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 133C _ 8B. 45, 0C
        sub     eax, 47                                 ; 133F _ 83. E8, 2F
        sub     esp, 4                                  ; 1342 _ 83. EC, 04
        push    ebx                                     ; 1345 _ 53
        push    ecx                                     ; 1346 _ 51
        push    edx                                     ; 1347 _ 52
        push    eax                                     ; 1348 _ 50
        push    15                                      ; 1349 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 134B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 134E _ FF. 75, 08
        call    boxfill8                                ; 1351 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1356 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1359 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 135C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 135F _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1362 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1365 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1368 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 136B _ 8B. 45, 0C
        sub     eax, 47                                 ; 136E _ 83. E8, 2F
        sub     esp, 4                                  ; 1371 _ 83. EC, 04
        push    ebx                                     ; 1374 _ 53
        push    ecx                                     ; 1375 _ 51
        push    edx                                     ; 1376 _ 52
        push    eax                                     ; 1377 _ 50
        push    15                                      ; 1378 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 137A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 137D _ FF. 75, 08
        call    boxfill8                                ; 1380 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1385 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1388 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 138B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 138E _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1391 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1394 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1397 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 139A _ 8B. 45, 0C
        sub     eax, 47                                 ; 139D _ 83. E8, 2F
        sub     esp, 4                                  ; 13A0 _ 83. EC, 04
        push    ebx                                     ; 13A3 _ 53
        push    ecx                                     ; 13A4 _ 51
        push    edx                                     ; 13A5 _ 52
        push    eax                                     ; 13A6 _ 50
        push    7                                       ; 13A7 _ 6A, 07
        push    dword [ebp+0CH]                         ; 13A9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13AC _ FF. 75, 08
        call    boxfill8                                ; 13AF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13B4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13B7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 13BA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 13BD _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 13C0 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 13C3 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 13C6 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 13C9 _ 8B. 45, 0C
        sub     eax, 3                                  ; 13CC _ 83. E8, 03
        sub     esp, 4                                  ; 13CF _ 83. EC, 04
        push    ebx                                     ; 13D2 _ 53
        push    ecx                                     ; 13D3 _ 51
        push    edx                                     ; 13D4 _ 52
        push    eax                                     ; 13D5 _ 50
        push    7                                       ; 13D6 _ 6A, 07
        push    dword [ebp+0CH]                         ; 13D8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13DB _ FF. 75, 08
        call    boxfill8                                ; 13DE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13E3 _ 83. C4, 20
        nop                                             ; 13E6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 13E7 _ 8B. 5D, FC
        leave                                           ; 13EA _ C9
        ret                                             ; 13EB _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 13EC _ 55
        mov     ebp, esp                                ; 13ED _ 89. E5
        sub     esp, 24                                 ; 13EF _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 13F2 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 13F7 _ 89. 45, EC
        movzx   eax, word [?_228]                       ; 13FA _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1401 _ 98
        mov     dword [ebp-10H], eax                    ; 1402 _ 89. 45, F0
        movzx   eax, word [?_229]                       ; 1405 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 140C _ 98
        mov     dword [ebp-0CH], eax                    ; 140D _ 89. 45, F4
        sub     esp, 4                                  ; 1410 _ 83. EC, 04
        push    table_rgb.2348                          ; 1413 _ 68, 00000080(d)
        push    15                                      ; 1418 _ 6A, 0F
        push    0                                       ; 141A _ 6A, 00
        call    set_palette                             ; 141C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1421 _ 83. C4, 10
        nop                                             ; 1424 _ 90
        leave                                           ; 1425 _ C9
        ret                                             ; 1426 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1427 _ 55
        mov     ebp, esp                                ; 1428 _ 89. E5
        sub     esp, 24                                 ; 142A _ 83. EC, 18
        call    io_load_eflags                          ; 142D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1432 _ 89. 45, F4
        call    io_cli                                  ; 1435 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 143A _ 83. EC, 08
        push    dword [ebp+8H]                          ; 143D _ FF. 75, 08
        push    968                                     ; 1440 _ 68, 000003C8
        call    io_out8                                 ; 1445 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 144A _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 144D _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1450 _ 89. 45, F0
        jmp     ?_029                                   ; 1453 _ EB, 65

?_028:  mov     eax, dword [ebp+10H]                    ; 1455 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1458 _ 0F B6. 00
        shr     al, 2                                   ; 145B _ C0. E8, 02
        movzx   eax, al                                 ; 145E _ 0F B6. C0
        sub     esp, 8                                  ; 1461 _ 83. EC, 08
        push    eax                                     ; 1464 _ 50
        push    969                                     ; 1465 _ 68, 000003C9
        call    io_out8                                 ; 146A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 146F _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1472 _ 8B. 45, 10
        add     eax, 1                                  ; 1475 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1478 _ 0F B6. 00
        shr     al, 2                                   ; 147B _ C0. E8, 02
        movzx   eax, al                                 ; 147E _ 0F B6. C0
        sub     esp, 8                                  ; 1481 _ 83. EC, 08
        push    eax                                     ; 1484 _ 50
        push    969                                     ; 1485 _ 68, 000003C9
        call    io_out8                                 ; 148A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 148F _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1492 _ 8B. 45, 10
        add     eax, 2                                  ; 1495 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1498 _ 0F B6. 00
        shr     al, 2                                   ; 149B _ C0. E8, 02
        movzx   eax, al                                 ; 149E _ 0F B6. C0
        sub     esp, 8                                  ; 14A1 _ 83. EC, 08
        push    eax                                     ; 14A4 _ 50
        push    969                                     ; 14A5 _ 68, 000003C9
        call    io_out8                                 ; 14AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14AF _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 14B2 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 14B6 _ 83. 45, F0, 01
?_029:  mov     eax, dword [ebp-10H]                    ; 14BA _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 14BD _ 3B. 45, 0C
        jle     ?_028                                   ; 14C0 _ 7E, 93
        sub     esp, 12                                 ; 14C2 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 14C5 _ FF. 75, F4
        call    io_store_eflags                         ; 14C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14CD _ 83. C4, 10
        nop                                             ; 14D0 _ 90
        leave                                           ; 14D1 _ C9
        ret                                             ; 14D2 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 14D3 _ 55
        mov     ebp, esp                                ; 14D4 _ 89. E5
        sub     esp, 20                                 ; 14D6 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 14D9 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 14DC _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 14DF _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 14E2 _ 89. 45, FC
        jmp     ?_033                                   ; 14E5 _ EB, 33

?_030:  mov     eax, dword [ebp+14H]                    ; 14E7 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 14EA _ 89. 45, F8
        jmp     ?_032                                   ; 14ED _ EB, 1F

?_031:  mov     eax, dword [ebp-4H]                     ; 14EF _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 14F2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14F6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14F8 _ 8B. 45, F8
        add     eax, edx                                ; 14FB _ 01. D0
        mov     edx, eax                                ; 14FD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14FF _ 8B. 45, 08
        add     edx, eax                                ; 1502 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1504 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1508 _ 88. 02
        add     dword [ebp-8H], 1                       ; 150A _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 150E _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1511 _ 3B. 45, 1C
        jle     ?_031                                   ; 1514 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1516 _ 83. 45, FC, 01
?_033:  mov     eax, dword [ebp-4H]                     ; 151A _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 151D _ 3B. 45, 20
        jle     ?_030                                   ; 1520 _ 7E, C5
        nop                                             ; 1522 _ 90
        leave                                           ; 1523 _ C9
        ret                                             ; 1524 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1525 _ 55
        mov     ebp, esp                                ; 1526 _ 89. E5
        push    edi                                     ; 1528 _ 57
        push    esi                                     ; 1529 _ 56
        push    ebx                                     ; 152A _ 53
        sub     esp, 16                                 ; 152B _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 152E _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1531 _ 8B. 45, 14
        add     eax, edx                                ; 1534 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1536 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1539 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 153C _ 8B. 45, 18
        add     eax, edx                                ; 153F _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1541 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1544 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1547 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 154A _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 154D _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1550 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1553 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1556 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1559 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 155C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 155F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1562 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1565 _ 8B. 00
        push    edi                                     ; 1567 _ 57
        push    esi                                     ; 1568 _ 56
        push    ebx                                     ; 1569 _ 53
        push    ecx                                     ; 156A _ 51
        push    15                                      ; 156B _ 6A, 0F
        push    edx                                     ; 156D _ 52
        push    eax                                     ; 156E _ 50
        call    boxfill8                                ; 156F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1574 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1577 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 157A _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 157D _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1580 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1583 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1586 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1589 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 158C _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 158F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1592 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1595 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1598 _ 8B. 00
        push    edi                                     ; 159A _ 57
        push    esi                                     ; 159B _ 56
        push    ebx                                     ; 159C _ 53
        push    ecx                                     ; 159D _ 51
        push    15                                      ; 159E _ 6A, 0F
        push    edx                                     ; 15A0 _ 52
        push    eax                                     ; 15A1 _ 50
        call    boxfill8                                ; 15A2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15A7 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 15AA _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 15AD _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 15B0 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 15B3 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 15B6 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 15B9 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 15BC _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 15BF _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 15C2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 15C5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15C8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15CB _ 8B. 00
        push    edi                                     ; 15CD _ 57
        push    esi                                     ; 15CE _ 56
        push    ebx                                     ; 15CF _ 53
        push    ecx                                     ; 15D0 _ 51
        push    7                                       ; 15D1 _ 6A, 07
        push    edx                                     ; 15D3 _ 52
        push    eax                                     ; 15D4 _ 50
        call    boxfill8                                ; 15D5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15DA _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 15DD _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 15E0 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 15E3 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 15E6 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 15E9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 15EC _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 15EF _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 15F2 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 15F5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 15F8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15FB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15FE _ 8B. 00
        push    edi                                     ; 1600 _ 57
        push    esi                                     ; 1601 _ 56
        push    ebx                                     ; 1602 _ 53
        push    ecx                                     ; 1603 _ 51
        push    7                                       ; 1604 _ 6A, 07
        push    edx                                     ; 1606 _ 52
        push    eax                                     ; 1607 _ 50
        call    boxfill8                                ; 1608 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 160D _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1610 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1613 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1616 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1619 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 161C _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 161F _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1622 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1625 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1628 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 162B _ 8B. 00
        push    esi                                     ; 162D _ 56
        push    dword [ebp-14H]                         ; 162E _ FF. 75, EC
        push    ebx                                     ; 1631 _ 53
        push    ecx                                     ; 1632 _ 51
        push    0                                       ; 1633 _ 6A, 00
        push    edx                                     ; 1635 _ 52
        push    eax                                     ; 1636 _ 50
        call    boxfill8                                ; 1637 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 163C _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 163F _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1642 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1645 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1648 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 164B _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 164E _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1651 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1654 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1657 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 165A _ 8B. 00
        push    dword [ebp-10H]                         ; 165C _ FF. 75, F0
        push    esi                                     ; 165F _ 56
        push    ebx                                     ; 1660 _ 53
        push    ecx                                     ; 1661 _ 51
        push    0                                       ; 1662 _ 6A, 00
        push    edx                                     ; 1664 _ 52
        push    eax                                     ; 1665 _ 50
        call    boxfill8                                ; 1666 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 166B _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 166E _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1671 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1674 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1677 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 167A _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 167D _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1680 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1683 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1686 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1689 _ 8B. 00
        push    esi                                     ; 168B _ 56
        push    dword [ebp-14H]                         ; 168C _ FF. 75, EC
        push    ebx                                     ; 168F _ 53
        push    ecx                                     ; 1690 _ 51
        push    8                                       ; 1691 _ 6A, 08
        push    edx                                     ; 1693 _ 52
        push    eax                                     ; 1694 _ 50
        call    boxfill8                                ; 1695 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 169A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 169D _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 16A0 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 16A3 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 16A6 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 16A9 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 16AC _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 16AF _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 16B2 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 16B5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16B8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16BB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16BE _ 8B. 00
        push    edi                                     ; 16C0 _ 57
        push    esi                                     ; 16C1 _ 56
        push    ebx                                     ; 16C2 _ 53
        push    ecx                                     ; 16C3 _ 51
        push    8                                       ; 16C4 _ 6A, 08
        push    edx                                     ; 16C6 _ 52
        push    eax                                     ; 16C7 _ 50
        call    boxfill8                                ; 16C8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16CD _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 16D0 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 16D3 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 16D6 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 16D9 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 16DC _ 8B. 45, 1C
        movzx   ecx, al                                 ; 16DF _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 16E2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16E5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16E8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16EB _ 8B. 00
        push    dword [ebp-10H]                         ; 16ED _ FF. 75, F0
        push    dword [ebp-14H]                         ; 16F0 _ FF. 75, EC
        push    esi                                     ; 16F3 _ 56
        push    ebx                                     ; 16F4 _ 53
        push    ecx                                     ; 16F5 _ 51
        push    edx                                     ; 16F6 _ 52
        push    eax                                     ; 16F7 _ 50
        call    boxfill8                                ; 16F8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16FD _ 83. C4, 1C
        nop                                             ; 1700 _ 90
        lea     esp, [ebp-0CH]                          ; 1701 _ 8D. 65, F4
        pop     ebx                                     ; 1704 _ 5B
        pop     esi                                     ; 1705 _ 5E
        pop     edi                                     ; 1706 _ 5F
        pop     ebp                                     ; 1707 _ 5D
        ret                                             ; 1708 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1709 _ 55
        mov     ebp, esp                                ; 170A _ 89. E5
        sub     esp, 20                                 ; 170C _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 170F _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1712 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1715 _ C7. 45, FC, 00000000
        jmp     ?_043                                   ; 171C _ E9, 0000016C

?_034:  mov     edx, dword [ebp-4H]                     ; 1721 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1724 _ 8B. 45, 1C
        add     eax, edx                                ; 1727 _ 01. D0
        movzx   eax, byte [eax]                         ; 1729 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 172C _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 172F _ 80. 7D, FB, 00
        jns     ?_035                                   ; 1733 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1735 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1738 _ 8B. 45, FC
        add     eax, edx                                ; 173B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 173D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1741 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1743 _ 8B. 45, 10
        add     eax, edx                                ; 1746 _ 01. D0
        mov     edx, eax                                ; 1748 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 174A _ 8B. 45, 08
        add     edx, eax                                ; 174D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 174F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1753 _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 1755 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1759 _ 83. E0, 40
        test    eax, eax                                ; 175C _ 85. C0
        jz      ?_036                                   ; 175E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1760 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1763 _ 8B. 45, FC
        add     eax, edx                                ; 1766 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1768 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 176C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 176E _ 8B. 45, 10
        add     eax, edx                                ; 1771 _ 01. D0
        lea     edx, [eax+1H]                           ; 1773 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1776 _ 8B. 45, 08
        add     edx, eax                                ; 1779 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 177B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 177F _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 1781 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1785 _ 83. E0, 20
        test    eax, eax                                ; 1788 _ 85. C0
        jz      ?_037                                   ; 178A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 178C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 178F _ 8B. 45, FC
        add     eax, edx                                ; 1792 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1794 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1798 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 179A _ 8B. 45, 10
        add     eax, edx                                ; 179D _ 01. D0
        lea     edx, [eax+2H]                           ; 179F _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 17A2 _ 8B. 45, 08
        add     edx, eax                                ; 17A5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17A7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 17AB _ 88. 02
?_037:  movsx   eax, byte [ebp-5H]                      ; 17AD _ 0F BE. 45, FB
        and     eax, 10H                                ; 17B1 _ 83. E0, 10
        test    eax, eax                                ; 17B4 _ 85. C0
        jz      ?_038                                   ; 17B6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 17B8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17BB _ 8B. 45, FC
        add     eax, edx                                ; 17BE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 17C0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 17C4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17C6 _ 8B. 45, 10
        add     eax, edx                                ; 17C9 _ 01. D0
        lea     edx, [eax+3H]                           ; 17CB _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 17CE _ 8B. 45, 08
        add     edx, eax                                ; 17D1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17D3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 17D7 _ 88. 02
?_038:  movsx   eax, byte [ebp-5H]                      ; 17D9 _ 0F BE. 45, FB
        and     eax, 08H                                ; 17DD _ 83. E0, 08
        test    eax, eax                                ; 17E0 _ 85. C0
        jz      ?_039                                   ; 17E2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 17E4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17E7 _ 8B. 45, FC
        add     eax, edx                                ; 17EA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 17EC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 17F0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17F2 _ 8B. 45, 10
        add     eax, edx                                ; 17F5 _ 01. D0
        lea     edx, [eax+4H]                           ; 17F7 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17FA _ 8B. 45, 08
        add     edx, eax                                ; 17FD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17FF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1803 _ 88. 02
?_039:  movsx   eax, byte [ebp-5H]                      ; 1805 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1809 _ 83. E0, 04
        test    eax, eax                                ; 180C _ 85. C0
        jz      ?_040                                   ; 180E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1810 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1813 _ 8B. 45, FC
        add     eax, edx                                ; 1816 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1818 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 181C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 181E _ 8B. 45, 10
        add     eax, edx                                ; 1821 _ 01. D0
        lea     edx, [eax+5H]                           ; 1823 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1826 _ 8B. 45, 08
        add     edx, eax                                ; 1829 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 182B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 182F _ 88. 02
?_040:  movsx   eax, byte [ebp-5H]                      ; 1831 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1835 _ 83. E0, 02
        test    eax, eax                                ; 1838 _ 85. C0
        jz      ?_041                                   ; 183A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 183C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 183F _ 8B. 45, FC
        add     eax, edx                                ; 1842 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1844 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1848 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 184A _ 8B. 45, 10
        add     eax, edx                                ; 184D _ 01. D0
        lea     edx, [eax+6H]                           ; 184F _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1852 _ 8B. 45, 08
        add     edx, eax                                ; 1855 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1857 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 185B _ 88. 02
?_041:  movsx   eax, byte [ebp-5H]                      ; 185D _ 0F BE. 45, FB
        and     eax, 01H                                ; 1861 _ 83. E0, 01
        test    eax, eax                                ; 1864 _ 85. C0
        jz      ?_042                                   ; 1866 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1868 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 186B _ 8B. 45, FC
        add     eax, edx                                ; 186E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1870 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1874 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1876 _ 8B. 45, 10
        add     eax, edx                                ; 1879 _ 01. D0
        lea     edx, [eax+7H]                           ; 187B _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 187E _ 8B. 45, 08
        add     edx, eax                                ; 1881 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1883 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1887 _ 88. 02
?_042:  add     dword [ebp-4H], 1                       ; 1889 _ 83. 45, FC, 01
?_043:  cmp     dword [ebp-4H], 15                      ; 188D _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 1891 _ 0F 8E, FFFFFE8A
        nop                                             ; 1897 _ 90
        leave                                           ; 1898 _ C9
        ret                                             ; 1899 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 189A _ 55
        mov     ebp, esp                                ; 189B _ 89. E5
        sub     esp, 20                                 ; 189D _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 18A0 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 18A3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 18A6 _ C7. 45, FC, 00000000
        jmp     ?_050                                   ; 18AD _ E9, 000000B1

?_044:  mov     dword [ebp-8H], 0                       ; 18B2 _ C7. 45, F8, 00000000
        jmp     ?_049                                   ; 18B9 _ E9, 00000097

?_045:  mov     eax, dword [ebp-4H]                     ; 18BE _ 8B. 45, FC
        shl     eax, 4                                  ; 18C1 _ C1. E0, 04
        mov     edx, eax                                ; 18C4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 18C6 _ 8B. 45, F8
        add     eax, edx                                ; 18C9 _ 01. D0
        add     eax, cursor.2403                        ; 18CB _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 18D0 _ 0F B6. 00
        cmp     al, 42                                  ; 18D3 _ 3C, 2A
        jnz     ?_046                                   ; 18D5 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 18D7 _ 8B. 45, FC
        shl     eax, 4                                  ; 18DA _ C1. E0, 04
        mov     edx, eax                                ; 18DD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 18DF _ 8B. 45, F8
        add     eax, edx                                ; 18E2 _ 01. D0
        mov     edx, eax                                ; 18E4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18E6 _ 8B. 45, 08
        add     eax, edx                                ; 18E9 _ 01. D0
        mov     byte [eax], 0                           ; 18EB _ C6. 00, 00
?_046:  mov     eax, dword [ebp-4H]                     ; 18EE _ 8B. 45, FC
        shl     eax, 4                                  ; 18F1 _ C1. E0, 04
        mov     edx, eax                                ; 18F4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 18F6 _ 8B. 45, F8
        add     eax, edx                                ; 18F9 _ 01. D0
        add     eax, cursor.2403                        ; 18FB _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1900 _ 0F B6. 00
        cmp     al, 79                                  ; 1903 _ 3C, 4F
        jnz     ?_047                                   ; 1905 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1907 _ 8B. 45, FC
        shl     eax, 4                                  ; 190A _ C1. E0, 04
        mov     edx, eax                                ; 190D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 190F _ 8B. 45, F8
        add     eax, edx                                ; 1912 _ 01. D0
        mov     edx, eax                                ; 1914 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1916 _ 8B. 45, 08
        add     eax, edx                                ; 1919 _ 01. D0
        mov     byte [eax], 7                           ; 191B _ C6. 00, 07
?_047:  mov     eax, dword [ebp-4H]                     ; 191E _ 8B. 45, FC
        shl     eax, 4                                  ; 1921 _ C1. E0, 04
        mov     edx, eax                                ; 1924 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1926 _ 8B. 45, F8
        add     eax, edx                                ; 1929 _ 01. D0
        add     eax, cursor.2403                        ; 192B _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1930 _ 0F B6. 00
        cmp     al, 46                                  ; 1933 _ 3C, 2E
        jnz     ?_048                                   ; 1935 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1937 _ 8B. 45, FC
        shl     eax, 4                                  ; 193A _ C1. E0, 04
        mov     edx, eax                                ; 193D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 193F _ 8B. 45, F8
        add     eax, edx                                ; 1942 _ 01. D0
        mov     edx, eax                                ; 1944 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1946 _ 8B. 45, 08
        add     edx, eax                                ; 1949 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 194B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 194F _ 88. 02
?_048:  add     dword [ebp-8H], 1                       ; 1951 _ 83. 45, F8, 01
?_049:  cmp     dword [ebp-8H], 15                      ; 1955 _ 83. 7D, F8, 0F
        jle     ?_045                                   ; 1959 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 195F _ 83. 45, FC, 01
?_050:  cmp     dword [ebp-4H], 15                      ; 1963 _ 83. 7D, FC, 0F
        jle     ?_044                                   ; 1967 _ 0F 8E, FFFFFF45
        nop                                             ; 196D _ 90
        leave                                           ; 196E _ C9
        ret                                             ; 196F _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1970 _ 55
        mov     ebp, esp                                ; 1971 _ 89. E5
        push    ebx                                     ; 1973 _ 53
        sub     esp, 16                                 ; 1974 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1977 _ C7. 45, F8, 00000000
        jmp     ?_054                                   ; 197E _ EB, 50

?_051:  mov     dword [ebp-0CH], 0                      ; 1980 _ C7. 45, F4, 00000000
        jmp     ?_053                                   ; 1987 _ EB, 3B

?_052:  mov     eax, dword [ebp-8H]                     ; 1989 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 198C _ 0F AF. 45, 24
        mov     edx, eax                                ; 1990 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1992 _ 8B. 45, F4
        add     eax, edx                                ; 1995 _ 01. D0
        mov     edx, eax                                ; 1997 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1999 _ 8B. 45, 20
        add     eax, edx                                ; 199C _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 199E _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 19A1 _ 8B. 55, F8
        add     edx, ecx                                ; 19A4 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 19A6 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 19AA _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 19AD _ 8B. 4D, F4
        add     ecx, ebx                                ; 19B0 _ 01. D9
        add     edx, ecx                                ; 19B2 _ 01. CA
        mov     ecx, edx                                ; 19B4 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 19B6 _ 8B. 55, 08
        add     edx, ecx                                ; 19B9 _ 01. CA
        movzx   eax, byte [eax]                         ; 19BB _ 0F B6. 00
        mov     byte [edx], al                          ; 19BE _ 88. 02
        add     dword [ebp-0CH], 1                      ; 19C0 _ 83. 45, F4, 01
?_053:  mov     eax, dword [ebp-0CH]                    ; 19C4 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 19C7 _ 3B. 45, 10
        jl      ?_052                                   ; 19CA _ 7C, BD
        add     dword [ebp-8H], 1                       ; 19CC _ 83. 45, F8, 01
?_054:  mov     eax, dword [ebp-8H]                     ; 19D0 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 19D3 _ 3B. 45, 14
        jl      ?_051                                   ; 19D6 _ 7C, A8
        nop                                             ; 19D8 _ 90
        add     esp, 16                                 ; 19D9 _ 83. C4, 10
        pop     ebx                                     ; 19DC _ 5B
        pop     ebp                                     ; 19DD _ 5D
        ret                                             ; 19DE _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 19DF _ 55
        mov     ebp, esp                                ; 19E0 _ 89. E5
        sub     esp, 24                                 ; 19E2 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 19E5 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 19EA _ 89. 45, EC
        movzx   eax, word [?_228]                       ; 19ED _ 0F B7. 05, 00000004(d)
        cwde                                            ; 19F4 _ 98
        mov     dword [ebp-10H], eax                    ; 19F5 _ 89. 45, F0
        movzx   eax, word [?_229]                       ; 19F8 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 19FF _ 98
        mov     dword [ebp-0CH], eax                    ; 1A00 _ 89. 45, F4
        sub     esp, 8                                  ; 1A03 _ 83. EC, 08
        push    32                                      ; 1A06 _ 6A, 20
        push    32                                      ; 1A08 _ 6A, 20
        call    io_out8                                 ; 1A0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A0F _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1A12 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1A16 _ 83. EC, 0C
        push    96                                      ; 1A19 _ 6A, 60
        call    io_in8                                  ; 1A1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A20 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1A23 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1A26 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1A2A _ 83. EC, 08
        push    eax                                     ; 1A2D _ 50
        push    keyInfo                                 ; 1A2E _ 68, 00000008(d)
        call    fifo8_put                               ; 1A33 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A38 _ 83. C4, 10
        nop                                             ; 1A3B _ 90
        leave                                           ; 1A3C _ C9
        ret                                             ; 1A3D _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1A3E _ 55
        mov     ebp, esp                                ; 1A3F _ 89. E5
        sub     esp, 40                                 ; 1A41 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1A44 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1A47 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1A4A _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1A4E _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1A51 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1A54 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1A58 _ 83. EC, 0C
        push    eax                                     ; 1A5B _ 50
        call    charToVal                               ; 1A5C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A61 _ 83. C4, 10
        mov     byte [?_227], al                        ; 1A64 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1A69 _ 0F B6. 45, E4
        shr     al, 4                                   ; 1A6D _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1A70 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1A73 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1A77 _ 0F BE. C0
        sub     esp, 12                                 ; 1A7A _ 83. EC, 0C
        push    eax                                     ; 1A7D _ 50
        call    charToVal                               ; 1A7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A83 _ 83. C4, 10
        mov     byte [?_226], al                        ; 1A86 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1A8B _ B8, 00000000(d)
        leave                                           ; 1A90 _ C9
        ret                                             ; 1A91 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1A92 _ 55
        mov     ebp, esp                                ; 1A93 _ 89. E5
        sub     esp, 4                                  ; 1A95 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1A98 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1A9B _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1A9E _ 80. 7D, FC, 09
        jle     ?_055                                   ; 1AA2 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1AA4 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1AA8 _ 83. C0, 37
        jmp     ?_056                                   ; 1AAB _ EB, 07

?_055:  movzx   eax, byte [ebp-4H]                      ; 1AAD _ 0F B6. 45, FC
        add     eax, 48                                 ; 1AB1 _ 83. C0, 30
?_056:  leave                                           ; 1AB4 _ C9
        ret                                             ; 1AB5 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1AB6 _ 55
        mov     ebp, esp                                ; 1AB7 _ 89. E5
        sub     esp, 16                                 ; 1AB9 _ 83. EC, 10
        mov     byte [str.2446], 48                     ; 1ABC _ C6. 05, 00000254(d), 30
        mov     byte [?_232], 120                       ; 1AC3 _ C6. 05, 00000255(d), 78
        mov     byte [?_233], 0                         ; 1ACA _ C6. 05, 0000025E(d), 00
        mov     dword [ebp-0CH], 2                      ; 1AD1 _ C7. 45, F4, 00000002
        jmp     ?_058                                   ; 1AD8 _ EB, 0F

?_057:  mov     eax, dword [ebp-0CH]                    ; 1ADA _ 8B. 45, F4
        add     eax, str.2446                           ; 1ADD _ 05, 00000254(d)
        mov     byte [eax], 48                          ; 1AE2 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1AE5 _ 83. 45, F4, 01
?_058:  cmp     dword [ebp-0CH], 9                      ; 1AE9 _ 83. 7D, F4, 09
        jle     ?_057                                   ; 1AED _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1AEF _ C7. 45, F8, 00000009
        jmp     ?_061                                   ; 1AF6 _ EB, 48

?_059:  mov     eax, dword [ebp+8H]                     ; 1AF8 _ 8B. 45, 08
        and     eax, 0FH                                ; 1AFB _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1AFE _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1B01 _ 8B. 45, 08
        shr     eax, 4                                  ; 1B04 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1B07 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1B0A _ 83. 7D, FC, 09
        jle     ?_060                                   ; 1B0E _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1B10 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1B13 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1B16 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1B19 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1B1C _ 89. 55, F8
        mov     edx, ecx                                ; 1B1F _ 89. CA
        mov     byte [str.2446+eax], dl                 ; 1B21 _ 88. 90, 00000254(d)
        jmp     ?_061                                   ; 1B27 _ EB, 17

?_060:  mov     eax, dword [ebp-4H]                     ; 1B29 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1B2C _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1B2F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1B32 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1B35 _ 89. 55, F8
        mov     edx, ecx                                ; 1B38 _ 89. CA
        mov     byte [str.2446+eax], dl                 ; 1B3A _ 88. 90, 00000254(d)
?_061:  cmp     dword [ebp-8H], 1                       ; 1B40 _ 83. 7D, F8, 01
        jle     ?_062                                   ; 1B44 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1B46 _ 83. 7D, 08, 00
        jnz     ?_059                                   ; 1B4A _ 75, AC
?_062:  mov     eax, str.2446                           ; 1B4C _ B8, 00000254(d)
        leave                                           ; 1B51 _ C9
        ret                                             ; 1B52 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1B53 _ 55
        mov     ebp, esp                                ; 1B54 _ 89. E5
        sub     esp, 8                                  ; 1B56 _ 83. EC, 08
?_063:  sub     esp, 12                                 ; 1B59 _ 83. EC, 0C
        push    100                                     ; 1B5C _ 6A, 64
        call    io_in8                                  ; 1B5E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B63 _ 83. C4, 10
        movsx   eax, al                                 ; 1B66 _ 0F BE. C0
        and     eax, 02H                                ; 1B69 _ 83. E0, 02
        test    eax, eax                                ; 1B6C _ 85. C0
        jz      ?_064                                   ; 1B6E _ 74, 02
        jmp     ?_063                                   ; 1B70 _ EB, E7

?_064:  nop                                             ; 1B72 _ 90
        nop                                             ; 1B73 _ 90
        leave                                           ; 1B74 _ C9
        ret                                             ; 1B75 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1B76 _ 55
        mov     ebp, esp                                ; 1B77 _ 89. E5
        sub     esp, 8                                  ; 1B79 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1B7C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B81 _ 83. EC, 08
        push    96                                      ; 1B84 _ 6A, 60
        push    100                                     ; 1B86 _ 6A, 64
        call    io_out8                                 ; 1B88 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B8D _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1B90 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B95 _ 83. EC, 08
        push    71                                      ; 1B98 _ 6A, 47
        push    96                                      ; 1B9A _ 6A, 60
        call    io_out8                                 ; 1B9C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BA1 _ 83. C4, 10
        nop                                             ; 1BA4 _ 90
        leave                                           ; 1BA5 _ C9
        ret                                             ; 1BA6 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1BA7 _ 55
        mov     ebp, esp                                ; 1BA8 _ 89. E5
        sub     esp, 8                                  ; 1BAA _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1BAD _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1BB2 _ 83. EC, 08
        push    212                                     ; 1BB5 _ 68, 000000D4
        push    100                                     ; 1BBA _ 6A, 64
        call    io_out8                                 ; 1BBC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BC1 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1BC4 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1BC9 _ 83. EC, 08
        push    244                                     ; 1BCC _ 68, 000000F4
        push    96                                      ; 1BD1 _ 6A, 60
        call    io_out8                                 ; 1BD3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BD8 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1BDB _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1BDE _ C6. 40, 03, 00
        nop                                             ; 1BE2 _ 90
        leave                                           ; 1BE3 _ C9
        ret                                             ; 1BE4 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1BE5 _ 55
        mov     ebp, esp                                ; 1BE6 _ 89. E5
        sub     esp, 24                                 ; 1BE8 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1BEB _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1BEF _ 83. EC, 08
        push    32                                      ; 1BF2 _ 6A, 20
        push    160                                     ; 1BF4 _ 68, 000000A0
        call    io_out8                                 ; 1BF9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BFE _ 83. C4, 10
        sub     esp, 8                                  ; 1C01 _ 83. EC, 08
        push    32                                      ; 1C04 _ 6A, 20
        push    32                                      ; 1C06 _ 6A, 20
        call    io_out8                                 ; 1C08 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C0D _ 83. C4, 10
        sub     esp, 12                                 ; 1C10 _ 83. EC, 0C
        push    96                                      ; 1C13 _ 6A, 60
        call    io_in8                                  ; 1C15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C1A _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1C1D _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1C20 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1C24 _ 83. EC, 08
        push    eax                                     ; 1C27 _ 50
        push    mouseInfo                               ; 1C28 _ 68, 00000024(d)
        call    fifo8_put                               ; 1C2D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C32 _ 83. C4, 10
        nop                                             ; 1C35 _ 90
        leave                                           ; 1C36 _ C9
        ret                                             ; 1C37 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1C38 _ 55
        mov     ebp, esp                                ; 1C39 _ 89. E5
        sub     esp, 40                                 ; 1C3B _ 83. EC, 28
        call    io_sti                                  ; 1C3E _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1C43 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 1C48 _ 89. 45, E8
        movzx   eax, word [?_228]                       ; 1C4B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1C52 _ 98
        mov     dword [ebp-14H], eax                    ; 1C53 _ 89. 45, EC
        movzx   eax, word [?_229]                       ; 1C56 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1C5D _ 98
        mov     dword [ebp-10H], eax                    ; 1C5E _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1C61 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1C65 _ 83. EC, 0C
        push    keyInfo                                 ; 1C68 _ 68, 00000008(d)
        call    fifo8_get                               ; 1C6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C72 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1C75 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1C78 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1C7C _ 83. EC, 0C
        push    eax                                     ; 1C7F _ 50
        call    charToHex                               ; 1C80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C85 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1C88 _ 89. 45, F4
        mov     edx, dword [line.2479]                  ; 1C8B _ 8B. 15, 00000260(d)
        mov     eax, dword [pos.2478]                   ; 1C91 _ A1, 00000264(d)
        sub     esp, 8                                  ; 1C96 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1C99 _ FF. 75, F4
        push    7                                       ; 1C9C _ 6A, 07
        push    edx                                     ; 1C9E _ 52
        push    eax                                     ; 1C9F _ 50
        push    dword [ebp+0CH]                         ; 1CA0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CA3 _ FF. 75, 08
        call    showString                              ; 1CA6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CAB _ 83. C4, 20
        mov     eax, dword [pos.2478]                   ; 1CAE _ A1, 00000264(d)
        add     eax, 32                                 ; 1CB3 _ 83. C0, 20
        mov     dword [pos.2478], eax                   ; 1CB6 _ A3, 00000264(d)
        mov     eax, dword [pos.2478]                   ; 1CBB _ A1, 00000264(d)
        cmp     dword [ebp-14H], eax                    ; 1CC0 _ 39. 45, EC
        jnz     ?_067                                   ; 1CC3 _ 75, 28
        mov     eax, dword [line.2479]                  ; 1CC5 _ A1, 00000260(d)
        cmp     dword [ebp-10H], eax                    ; 1CCA _ 39. 45, F0
        jz      ?_065                                   ; 1CCD _ 74, 0A
        mov     eax, dword [line.2479]                  ; 1CCF _ A1, 00000260(d)
        add     eax, 16                                 ; 1CD4 _ 83. C0, 10
        jmp     ?_066                                   ; 1CD7 _ EB, 05

?_065:  mov     eax, 0                                  ; 1CD9 _ B8, 00000000
?_066:  mov     dword [line.2479], eax                  ; 1CDE _ A3, 00000260(d)
        mov     dword [pos.2478], 0                     ; 1CE3 _ C7. 05, 00000264(d), 00000000
?_067:  nop                                             ; 1CED _ 90
        leave                                           ; 1CEE _ C9
        ret                                             ; 1CEF _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1CF0 _ 55
        mov     ebp, esp                                ; 1CF1 _ 89. E5
        sub     esp, 24                                 ; 1CF3 _ 83. EC, 18
        call    io_sti                                  ; 1CF6 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1CFB _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1CFF _ 83. EC, 0C
        push    mouseInfo                               ; 1D02 _ 68, 00000024(d)
        call    fifo8_get                               ; 1D07 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D0C _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1D0F _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1D12 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1D16 _ 83. EC, 08
        push    eax                                     ; 1D19 _ 50
        push    mouse_move                              ; 1D1A _ 68, 000000E0(d)
        call    mouse_decode                            ; 1D1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D24 _ 83. C4, 10
        test    eax, eax                                ; 1D27 _ 85. C0
        jz      ?_068                                   ; 1D29 _ 74, 60
        sub     esp, 4                                  ; 1D2B _ 83. EC, 04
        push    mouse_move                              ; 1D2E _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1D33 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D36 _ FF. 75, 08
        call    computeMousePos                         ; 1D39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D3E _ 83. C4, 10
        mov     edx, dword [my]                         ; 1D41 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1D47 _ A1, 000000F0(d)
        push    edx                                     ; 1D4C _ 52
        push    eax                                     ; 1D4D _ 50
        push    dword [ebp+10H]                         ; 1D4E _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1D51 _ FF. 75, 08
        call    sheet_slide                             ; 1D54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D59 _ 83. C4, 10
        mov     eax, dword [?_231]                      ; 1D5C _ A1, 000000EC(d)
        and     eax, 01H                                ; 1D61 _ 83. E0, 01
        test    eax, eax                                ; 1D64 _ 85. C0
        jz      ?_068                                   ; 1D66 _ 74, 23
        mov     eax, dword [my]                         ; 1D68 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1D6D _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1D70 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1D75 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1D78 _ A1, 00000228(d)
        push    ecx                                     ; 1D7D _ 51
        push    edx                                     ; 1D7E _ 52
        push    eax                                     ; 1D7F _ 50
        push    dword [ebp+8H]                          ; 1D80 _ FF. 75, 08
        call    sheet_slide                             ; 1D83 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D88 _ 83. C4, 10
?_068:  nop                                             ; 1D8B _ 90
        leave                                           ; 1D8C _ C9
        ret                                             ; 1D8D _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1D8E _ 55
        mov     ebp, esp                                ; 1D8F _ 89. E5
        sub     esp, 4                                  ; 1D91 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1D94 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1D97 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1D9A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1D9D _ 0F B6. 40, 03
        test    al, al                                  ; 1DA1 _ 84. C0
        jnz     ?_070                                   ; 1DA3 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1DA5 _ 80. 7D, FC, FA
        jnz     ?_069                                   ; 1DA9 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1DAB _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1DAE _ C6. 40, 03, 01
?_069:  mov     eax, 0                                  ; 1DB2 _ B8, 00000000
        jmp     ?_077                                   ; 1DB7 _ E9, 0000010C

?_070:  mov     eax, dword [ebp+8H]                     ; 1DBC _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1DBF _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1DC3 _ 3C, 01
        jnz     ?_072                                   ; 1DC5 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1DC7 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1DCB _ 83. C8, 37
        cmp     al, 63                                  ; 1DCE _ 3C, 3F
        jnz     ?_071                                   ; 1DD0 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1DD2 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1DD5 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1DD9 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1DDB _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1DDE _ C6. 40, 03, 02
?_071:  mov     eax, 0                                  ; 1DE2 _ B8, 00000000
        jmp     ?_077                                   ; 1DE7 _ E9, 000000DC

?_072:  mov     eax, dword [ebp+8H]                     ; 1DEC _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1DEF _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1DF3 _ 3C, 02
        jnz     ?_073                                   ; 1DF5 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1DF7 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1DFA _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1DFE _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E01 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1E04 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1E08 _ B8, 00000000
        jmp     ?_077                                   ; 1E0D _ E9, 000000B6

?_073:  mov     eax, dword [ebp+8H]                     ; 1E12 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E15 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1E19 _ 3C, 03
        jne     ?_076                                   ; 1E1B _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1E21 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E24 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1E28 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1E2B _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1E2E _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1E32 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E35 _ 0F B6. 00
        movzx   eax, al                                 ; 1E38 _ 0F B6. C0
        and     eax, 07H                                ; 1E3B _ 83. E0, 07
        mov     edx, eax                                ; 1E3E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E40 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1E43 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1E46 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1E49 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1E4D _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1E50 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1E53 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E56 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1E59 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1E5D _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1E60 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1E63 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1E66 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E69 _ 0F B6. 00
        movzx   eax, al                                 ; 1E6C _ 0F B6. C0
        and     eax, 10H                                ; 1E6F _ 83. E0, 10
        test    eax, eax                                ; 1E72 _ 85. C0
        jz      ?_074                                   ; 1E74 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1E76 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1E79 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1E7C _ 0D, FFFFFF00
        mov     edx, eax                                ; 1E81 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E83 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1E86 _ 89. 50, 04
?_074:  mov     eax, dword [ebp+8H]                     ; 1E89 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E8C _ 0F B6. 00
        movzx   eax, al                                 ; 1E8F _ 0F B6. C0
        and     eax, 20H                                ; 1E92 _ 83. E0, 20
        test    eax, eax                                ; 1E95 _ 85. C0
        jz      ?_075                                   ; 1E97 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1E99 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1E9C _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1E9F _ 0D, FFFFFF00
        mov     edx, eax                                ; 1EA4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EA6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1EA9 _ 89. 50, 08
?_075:  mov     eax, dword [ebp+8H]                     ; 1EAC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1EAF _ 8B. 40, 08
        neg     eax                                     ; 1EB2 _ F7. D8
        mov     edx, eax                                ; 1EB4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EB6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1EB9 _ 89. 50, 08
        mov     eax, 1                                  ; 1EBC _ B8, 00000001
        jmp     ?_077                                   ; 1EC1 _ EB, 05

?_076:  mov     eax, 4294967295                         ; 1EC3 _ B8, FFFFFFFF
?_077:  leave                                           ; 1EC8 _ C9
        ret                                             ; 1EC9 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1ECA _ 55
        mov     ebp, esp                                ; 1ECB _ 89. E5
        sub     esp, 16                                 ; 1ECD _ 83. EC, 10
        movzx   eax, word [?_228]                       ; 1ED0 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1ED7 _ 98
        mov     dword [ebp-8H], eax                     ; 1ED8 _ 89. 45, F8
        movzx   eax, word [?_229]                       ; 1EDB _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1EE2 _ 98
        mov     dword [ebp-4H], eax                     ; 1EE3 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1EE6 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1EE9 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1EEC _ A1, 000000F0(d)
        add     eax, edx                                ; 1EF1 _ 01. D0
        mov     dword [mx], eax                         ; 1EF3 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1EF8 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1EFB _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1EFE _ A1, 000000F4(d)
        add     eax, edx                                ; 1F03 _ 01. D0
        mov     dword [my], eax                         ; 1F05 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1F0A _ A1, 000000F0(d)
        test    eax, eax                                ; 1F0F _ 85. C0
        jns     ?_078                                   ; 1F11 _ 79, 0A
        mov     dword [mx], 0                           ; 1F13 _ C7. 05, 000000F0(d), 00000000
?_078:  mov     eax, dword [my]                         ; 1F1D _ A1, 000000F4(d)
        test    eax, eax                                ; 1F22 _ 85. C0
        jns     ?_079                                   ; 1F24 _ 79, 0A
        mov     dword [my], 0                           ; 1F26 _ C7. 05, 000000F4(d), 00000000
?_079:  mov     eax, dword [ebp-8H]                     ; 1F30 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1F33 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1F36 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1F3B _ 39. C2
        jge     ?_080                                   ; 1F3D _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1F3F _ 8B. 45, F8
        sub     eax, 9                                  ; 1F42 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1F45 _ A3, 000000F0(d)
?_080:  mov     eax, dword [ebp-4H]                     ; 1F4A _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1F4D _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1F50 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1F55 _ 39. C2
        jge     ?_081                                   ; 1F57 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1F59 _ 8B. 45, FC
        sub     eax, 1                                  ; 1F5C _ 83. E8, 01
        mov     dword [my], eax                         ; 1F5F _ A3, 000000F4(d)
?_081:  nop                                             ; 1F64 _ 90
        leave                                           ; 1F65 _ C9
        ret                                             ; 1F66 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1F67 _ 55
        mov     ebp, esp                                ; 1F68 _ 89. E5
        sub     esp, 56                                 ; 1F6A _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1F6D _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1F74 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1F7B _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1F82 _ C7. 45, DC, 00000050
        push    100                                     ; 1F89 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1F8B _ FF. 75, 1C
        push    0                                       ; 1F8E _ 6A, 00
        push    0                                       ; 1F90 _ 6A, 00
        push    14                                      ; 1F92 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1F94 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1F97 _ FF. 75, 14
        call    boxfill8                                ; 1F9A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F9F _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1FA2 _ 8B. 45, 20
        movsx   eax, al                                 ; 1FA5 _ 0F BE. C0
        sub     esp, 8                                  ; 1FA8 _ 83. EC, 08
        push    ?_220                                   ; 1FAB _ 68, 0000004F(d)
        push    eax                                     ; 1FB0 _ 50
        push    dword [ebp-2CH]                         ; 1FB1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1FB4 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1FB7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1FBA _ FF. 75, 08
        call    showString                              ; 1FBD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FC2 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1FC5 _ 8B. 45, 18
        sub     esp, 12                                 ; 1FC8 _ 83. EC, 0C
        push    eax                                     ; 1FCB _ 50
        call    intToHexStr                             ; 1FCC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FD1 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1FD4 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1FD7 _ 8B. 45, 20
        movsx   eax, al                                 ; 1FDA _ 0F BE. C0
        sub     esp, 8                                  ; 1FDD _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1FE0 _ FF. 75, E0
        push    eax                                     ; 1FE3 _ 50
        push    dword [ebp-2CH]                         ; 1FE4 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1FE7 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1FEA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1FED _ FF. 75, 08
        call    showString                              ; 1FF0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FF5 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1FF8 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1FFC _ 8B. 45, 20
        movsx   eax, al                                 ; 1FFF _ 0F BE. C0
        sub     esp, 8                                  ; 2002 _ 83. EC, 08
        push    ?_221                                   ; 2005 _ 68, 00000059(d)
        push    eax                                     ; 200A _ 50
        push    dword [ebp-2CH]                         ; 200B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 200E _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2011 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2014 _ FF. 75, 08
        call    showString                              ; 2017 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 201C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 201F _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2022 _ 8B. 00
        sub     esp, 12                                 ; 2024 _ 83. EC, 0C
        push    eax                                     ; 2027 _ 50
        call    intToHexStr                             ; 2028 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 202D _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 2030 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2033 _ 8B. 45, 20
        movsx   eax, al                                 ; 2036 _ 0F BE. C0
        sub     esp, 8                                  ; 2039 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 203C _ FF. 75, E4
        push    eax                                     ; 203F _ 50
        push    dword [ebp-2CH]                         ; 2040 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2043 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2046 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2049 _ FF. 75, 08
        call    showString                              ; 204C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2051 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2054 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2058 _ 8B. 45, 20
        movsx   eax, al                                 ; 205B _ 0F BE. C0
        sub     esp, 8                                  ; 205E _ 83. EC, 08
        push    ?_222                                   ; 2061 _ 68, 00000067(d)
        push    eax                                     ; 2066 _ 50
        push    dword [ebp-2CH]                         ; 2067 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 206A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 206D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2070 _ FF. 75, 08
        call    showString                              ; 2073 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2078 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 207B _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 207E _ 8B. 40, 04
        sub     esp, 12                                 ; 2081 _ 83. EC, 0C
        push    eax                                     ; 2084 _ 50
        call    intToHexStr                             ; 2085 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 208A _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 208D _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 2090 _ 8B. 45, 20
        movsx   eax, al                                 ; 2093 _ 0F BE. C0
        sub     esp, 8                                  ; 2096 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 2099 _ FF. 75, E8
        push    eax                                     ; 209C _ 50
        push    dword [ebp-2CH]                         ; 209D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 20A0 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 20A3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20A6 _ FF. 75, 08
        call    showString                              ; 20A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20AE _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 20B1 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 20B5 _ 8B. 45, 20
        movsx   eax, al                                 ; 20B8 _ 0F BE. C0
        sub     esp, 8                                  ; 20BB _ 83. EC, 08
        push    ?_223                                   ; 20BE _ 68, 00000076(d)
        push    eax                                     ; 20C3 _ 50
        push    dword [ebp-2CH]                         ; 20C4 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 20C7 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 20CA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20CD _ FF. 75, 08
        call    showString                              ; 20D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20D5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 20D8 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 20DB _ 8B. 40, 08
        sub     esp, 12                                 ; 20DE _ 83. EC, 0C
        push    eax                                     ; 20E1 _ 50
        call    intToHexStr                             ; 20E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20E7 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 20EA _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 20ED _ 8B. 45, 20
        movsx   eax, al                                 ; 20F0 _ 0F BE. C0
        sub     esp, 8                                  ; 20F3 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 20F6 _ FF. 75, EC
        push    eax                                     ; 20F9 _ 50
        push    dword [ebp-2CH]                         ; 20FA _ FF. 75, D4
        push    dword [ebp-28H]                         ; 20FD _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2100 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2103 _ FF. 75, 08
        call    showString                              ; 2106 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 210B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 210E _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2112 _ 8B. 45, 20
        movsx   eax, al                                 ; 2115 _ 0F BE. C0
        sub     esp, 8                                  ; 2118 _ 83. EC, 08
        push    ?_224                                   ; 211B _ 68, 00000082(d)
        push    eax                                     ; 2120 _ 50
        push    dword [ebp-2CH]                         ; 2121 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2124 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2127 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 212A _ FF. 75, 08
        call    showString                              ; 212D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2132 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2135 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 2138 _ 8B. 40, 0C
        sub     esp, 12                                 ; 213B _ 83. EC, 0C
        push    eax                                     ; 213E _ 50
        call    intToHexStr                             ; 213F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2144 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2147 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 214A _ 8B. 45, 20
        movsx   eax, al                                 ; 214D _ 0F BE. C0
        sub     esp, 8                                  ; 2150 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 2153 _ FF. 75, F0
        push    eax                                     ; 2156 _ 50
        push    dword [ebp-2CH]                         ; 2157 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 215A _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 215D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2160 _ FF. 75, 08
        call    showString                              ; 2163 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2168 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 216B _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 216F _ 8B. 45, 20
        movsx   eax, al                                 ; 2172 _ 0F BE. C0
        sub     esp, 8                                  ; 2175 _ 83. EC, 08
        push    ?_225                                   ; 2178 _ 68, 0000008F(d)
        push    eax                                     ; 217D _ 50
        push    dword [ebp-2CH]                         ; 217E _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2181 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2184 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2187 _ FF. 75, 08
        call    showString                              ; 218A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 218F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2192 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 2195 _ 8B. 40, 10
        sub     esp, 12                                 ; 2198 _ 83. EC, 0C
        push    eax                                     ; 219B _ 50
        call    intToHexStr                             ; 219C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21A1 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 21A4 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 21A7 _ 8B. 45, 20
        movsx   eax, al                                 ; 21AA _ 0F BE. C0
        sub     esp, 8                                  ; 21AD _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 21B0 _ FF. 75, F4
        push    eax                                     ; 21B3 _ 50
        push    dword [ebp-2CH]                         ; 21B4 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21B7 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 21BA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21BD _ FF. 75, 08
        call    showString                              ; 21C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21C5 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 21C8 _ 83. 45, D4, 10
        nop                                             ; 21CC _ 90
        leave                                           ; 21CD _ C9
        ret                                             ; 21CE _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 21CF _ 55
        mov     ebp, esp                                ; 21D0 _ 89. E5
        sub     esp, 24                                 ; 21D2 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 21D5 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 21D8 _ 0F AF. 45, 14
        mov     edx, eax                                ; 21DC _ 89. C2
        mov     eax, dword [memman]                     ; 21DE _ A1, 00000008(d)
        sub     esp, 8                                  ; 21E3 _ 83. EC, 08
        push    edx                                     ; 21E6 _ 52
        push    eax                                     ; 21E7 _ 50
        call    memman_alloc_4K                         ; 21E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21ED _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 21F0 _ 89. 45, F0
        sub     esp, 12                                 ; 21F3 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 21F6 _ FF. 75, 08
        call    sheet_alloc                             ; 21F9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21FE _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2201 _ 89. 45, F4
        sub     esp, 12                                 ; 2204 _ 83. EC, 0C
        push    99                                      ; 2207 _ 6A, 63
        push    dword [ebp+14H]                         ; 2209 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 220C _ FF. 75, 10
        push    dword [ebp-10H]                         ; 220F _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2212 _ FF. 75, F4
        call    sheet_setbuf                            ; 2215 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 221A _ 83. C4, 20
        push    1                                       ; 221D _ 6A, 01
        push    dword [ebp+0CH]                         ; 221F _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 2222 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2225 _ FF. 75, 08
        call    make_window8                            ; 2228 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 222D _ 83. C4, 10
        sub     esp, 8                                  ; 2230 _ 83. EC, 08
        push    7                                       ; 2233 _ 6A, 07
        push    16                                      ; 2235 _ 6A, 10
        push    150                                     ; 2237 _ 68, 00000096
        push    42                                      ; 223C _ 6A, 2A
        push    10                                      ; 223E _ 6A, 0A
        push    dword [ebp-0CH]                         ; 2240 _ FF. 75, F4
        call    make_textbox8                           ; 2243 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2248 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 224B _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 224E _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2251 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2254 _ FF. 75, 08
        call    sheet_slide                             ; 2257 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 225C _ 83. C4, 10
        sub     esp, 4                                  ; 225F _ 83. EC, 04
        push    dword [ebp+20H]                         ; 2262 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 2265 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2268 _ FF. 75, 08
        call    sheet_level_updown                      ; 226B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2270 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2273 _ 8B. 45, F4
        leave                                           ; 2276 _ C9
        ret                                             ; 2277 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 2278 _ 55
        mov     ebp, esp                                ; 2279 _ 89. E5
        sub     esp, 24                                 ; 227B _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 227E _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2281 _ 0F AF. 45, 20
        mov     edx, eax                                ; 2285 _ 89. C2
        mov     eax, dword [memman]                     ; 2287 _ A1, 00000008(d)
        sub     esp, 8                                  ; 228C _ 83. EC, 08
        push    edx                                     ; 228F _ 52
        push    eax                                     ; 2290 _ 50
        call    memman_alloc_4K                         ; 2291 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2296 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2299 _ 89. 45, F0
        sub     esp, 12                                 ; 229C _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 229F _ FF. 75, 08
        call    sheet_alloc                             ; 22A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22A7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 22AA _ 89. 45, F4
        sub     esp, 12                                 ; 22AD _ 83. EC, 0C
        push    99                                      ; 22B0 _ 6A, 63
        push    dword [ebp+20H]                         ; 22B2 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 22B5 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 22B8 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 22BB _ FF. 75, F4
        call    sheet_setbuf                            ; 22BE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22C3 _ 83. C4, 20
        push    0                                       ; 22C6 _ 6A, 00
        push    dword [ebp+18H]                         ; 22C8 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 22CB _ FF. 75, F4
        push    dword [ebp+8H]                          ; 22CE _ FF. 75, 08
        call    make_window8                            ; 22D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22D6 _ 83. C4, 10
        call    task_alloc                              ; 22D9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 22DE _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 22E1 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 22E4 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 22EB _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 22EE _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 22F5 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 22FA _ F7. D8
        add     eax, task_b_main                        ; 22FC _ 05, 00000000(d)
        mov     edx, eax                                ; 2301 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 2303 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 2306 _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 2309 _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 230C _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2313 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 2316 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 231D _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 2320 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 2327 _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 232A _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2331 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 2334 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 233B _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 233E _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2345 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2348 _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 234B _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 234E _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 2351 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 2354 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2357 _ 8B. 40, 4C
        add     eax, 4                                  ; 235A _ 83. C0, 04
        mov     edx, eax                                ; 235D _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 235F _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2362 _ 89. 02
        sub     esp, 4                                  ; 2364 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2367 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 236A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 236D _ FF. 75, 0C
        call    task_run                                ; 2370 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2375 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 2378 _ FF. 75, 28
        push    dword [ebp+24H]                         ; 237B _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 237E _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2381 _ FF. 75, 08
        call    sheet_slide                             ; 2384 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2389 _ 83. C4, 10
        sub     esp, 4                                  ; 238C _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 238F _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2392 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2395 _ FF. 75, 08
        call    sheet_level_updown                      ; 2398 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 239D _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 23A0 _ 8B. 45, F4
        leave                                           ; 23A3 _ C9
        ret                                             ; 23A4 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 23A5 _ 55
        mov     ebp, esp                                ; 23A6 _ 89. E5
        push    ebx                                     ; 23A8 _ 53
        sub     esp, 36                                 ; 23A9 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 23AC _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 23AF _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 23B2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 23B5 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 23B8 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 23BB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 23BE _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 23C1 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 23C4 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 23C7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 23CA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 23CD _ 8B. 00
        push    0                                       ; 23CF _ 6A, 00
        push    edx                                     ; 23D1 _ 52
        push    0                                       ; 23D2 _ 6A, 00
        push    0                                       ; 23D4 _ 6A, 00
        push    8                                       ; 23D6 _ 6A, 08
        push    dword [ebp-10H]                         ; 23D8 _ FF. 75, F0
        push    eax                                     ; 23DB _ 50
        call    boxfill8                                ; 23DC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 23E1 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 23E4 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 23E7 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 23EA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 23ED _ 8B. 00
        push    1                                       ; 23EF _ 6A, 01
        push    edx                                     ; 23F1 _ 52
        push    1                                       ; 23F2 _ 6A, 01
        push    1                                       ; 23F4 _ 6A, 01
        push    7                                       ; 23F6 _ 6A, 07
        push    dword [ebp-10H]                         ; 23F8 _ FF. 75, F0
        push    eax                                     ; 23FB _ 50
        call    boxfill8                                ; 23FC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2401 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2404 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2407 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 240A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 240D _ 8B. 00
        push    edx                                     ; 240F _ 52
        push    0                                       ; 2410 _ 6A, 00
        push    0                                       ; 2412 _ 6A, 00
        push    0                                       ; 2414 _ 6A, 00
        push    8                                       ; 2416 _ 6A, 08
        push    dword [ebp-10H]                         ; 2418 _ FF. 75, F0
        push    eax                                     ; 241B _ 50
        call    boxfill8                                ; 241C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2421 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2424 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2427 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 242A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 242D _ 8B. 00
        push    edx                                     ; 242F _ 52
        push    1                                       ; 2430 _ 6A, 01
        push    1                                       ; 2432 _ 6A, 01
        push    1                                       ; 2434 _ 6A, 01
        push    7                                       ; 2436 _ 6A, 07
        push    dword [ebp-10H]                         ; 2438 _ FF. 75, F0
        push    eax                                     ; 243B _ 50
        call    boxfill8                                ; 243C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2441 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2444 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2447 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 244A _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 244D _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2450 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2453 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2456 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2459 _ 8B. 00
        push    ebx                                     ; 245B _ 53
        push    ecx                                     ; 245C _ 51
        push    1                                       ; 245D _ 6A, 01
        push    edx                                     ; 245F _ 52
        push    15                                      ; 2460 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2462 _ FF. 75, F0
        push    eax                                     ; 2465 _ 50
        call    boxfill8                                ; 2466 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 246B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 246E _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2471 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2474 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2477 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 247A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 247D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2480 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2483 _ 8B. 00
        push    ebx                                     ; 2485 _ 53
        push    ecx                                     ; 2486 _ 51
        push    0                                       ; 2487 _ 6A, 00
        push    edx                                     ; 2489 _ 52
        push    0                                       ; 248A _ 6A, 00
        push    dword [ebp-10H]                         ; 248C _ FF. 75, F0
        push    eax                                     ; 248F _ 50
        call    boxfill8                                ; 2490 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2495 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2498 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 249B _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 249E _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 24A1 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 24A4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24A7 _ 8B. 00
        push    ecx                                     ; 24A9 _ 51
        push    edx                                     ; 24AA _ 52
        push    2                                       ; 24AB _ 6A, 02
        push    2                                       ; 24AD _ 6A, 02
        push    8                                       ; 24AF _ 6A, 08
        push    dword [ebp-10H]                         ; 24B1 _ FF. 75, F0
        push    eax                                     ; 24B4 _ 50
        call    boxfill8                                ; 24B5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24BA _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 24BD _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 24C0 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 24C3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24C6 _ 8B. 00
        push    20                                      ; 24C8 _ 6A, 14
        push    edx                                     ; 24CA _ 52
        push    3                                       ; 24CB _ 6A, 03
        push    3                                       ; 24CD _ 6A, 03
        push    12                                      ; 24CF _ 6A, 0C
        push    dword [ebp-10H]                         ; 24D1 _ FF. 75, F0
        push    eax                                     ; 24D4 _ 50
        call    boxfill8                                ; 24D5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24DA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24DD _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 24E0 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 24E3 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 24E6 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 24E9 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 24EC _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 24EF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24F2 _ 8B. 00
        push    ebx                                     ; 24F4 _ 53
        push    ecx                                     ; 24F5 _ 51
        push    edx                                     ; 24F6 _ 52
        push    1                                       ; 24F7 _ 6A, 01
        push    15                                      ; 24F9 _ 6A, 0F
        push    dword [ebp-10H]                         ; 24FB _ FF. 75, F0
        push    eax                                     ; 24FE _ 50
        call    boxfill8                                ; 24FF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2504 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2507 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 250A _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 250D _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2510 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2513 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2516 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2519 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 251C _ 8B. 00
        push    ebx                                     ; 251E _ 53
        push    ecx                                     ; 251F _ 51
        push    edx                                     ; 2520 _ 52
        push    0                                       ; 2521 _ 6A, 00
        push    0                                       ; 2523 _ 6A, 00
        push    dword [ebp-10H]                         ; 2525 _ FF. 75, F0
        push    eax                                     ; 2528 _ 50
        call    boxfill8                                ; 2529 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 252E _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2531 _ 0F BE. 45, E4
        push    eax                                     ; 2535 _ 50
        push    dword [ebp+10H]                         ; 2536 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2539 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 253C _ FF. 75, 08
        call    make_wtitle8                            ; 253F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2544 _ 83. C4, 10
        nop                                             ; 2547 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2548 _ 8B. 5D, FC
        leave                                           ; 254B _ C9
        ret                                             ; 254C _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 254D _ 55
        mov     ebp, esp                                ; 254E _ 89. E5
        push    ebx                                     ; 2550 _ 53
        sub     esp, 36                                 ; 2551 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2554 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2557 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 255A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 255D _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2560 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 2563 _ 80. 7D, E4, 00
        jz      ?_082                                   ; 2567 _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 2569 _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 256D _ C6. 45, EB, 0C
        jmp     ?_083                                   ; 2571 _ EB, 0E

?_082:  cmp     byte [ebp-1CH], 0                       ; 2573 _ 80. 7D, E4, 00
        jnz     ?_083                                   ; 2577 _ 75, 08
        mov     byte [ebp-16H], 8                       ; 2579 _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 257D _ C6. 45, EB, 0F
?_083:  mov     eax, dword [ebp-0CH]                    ; 2581 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 2584 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 2587 _ 0F B6. 45, EB
        movzx   edx, al                                 ; 258B _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 258E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2591 _ 8B. 00
        push    20                                      ; 2593 _ 6A, 14
        push    ecx                                     ; 2595 _ 51
        push    3                                       ; 2596 _ 6A, 03
        push    3                                       ; 2598 _ 6A, 03
        push    edx                                     ; 259A _ 52
        push    dword [ebp-0CH]                         ; 259B _ FF. 75, F4
        push    eax                                     ; 259E _ 50
        call    boxfill8                                ; 259F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25A4 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 25A7 _ 0F BE. 45, EA
        sub     esp, 8                                  ; 25AB _ 83. EC, 08
        push    dword [ebp+10H]                         ; 25AE _ FF. 75, 10
        push    eax                                     ; 25B1 _ 50
        push    4                                       ; 25B2 _ 6A, 04
        push    8                                       ; 25B4 _ 6A, 08
        push    dword [ebp+0CH]                         ; 25B6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25B9 _ FF. 75, 08
        call    showString                              ; 25BC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25C1 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 25C4 _ C7. 45, EC, 00000000
        jmp     ?_090                                   ; 25CB _ EB, 75

?_084:  mov     dword [ebp-10H], 0                      ; 25CD _ C7. 45, F0, 00000000
        jmp     ?_089                                   ; 25D4 _ EB, 62

?_085:  mov     eax, dword [ebp-14H]                    ; 25D6 _ 8B. 45, EC
        shl     eax, 4                                  ; 25D9 _ C1. E0, 04
        mov     edx, eax                                ; 25DC _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 25DE _ 8B. 45, F0
        add     eax, edx                                ; 25E1 _ 01. D0
        add     eax, closebtn.2556                      ; 25E3 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 25E8 _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 25EB _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 25EE _ 80. 7D, E9, 40
        jnz     ?_086                                   ; 25F2 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 25F4 _ C6. 45, E9, 00
        jmp     ?_088                                   ; 25F8 _ EB, 16

?_086:  cmp     byte [ebp-17H], 36                      ; 25FA _ 80. 7D, E9, 24
        jnz     ?_087                                   ; 25FE _ 75, 06
        mov     byte [ebp-17H], 15                      ; 2600 _ C6. 45, E9, 0F
        jmp     ?_088                                   ; 2604 _ EB, 0A

?_087:  cmp     byte [ebp-17H], 81                      ; 2606 _ 80. 7D, E9, 51
        jnz     ?_088                                   ; 260A _ 75, 04
        mov     byte [ebp-17H], 8                       ; 260C _ C6. 45, E9, 08
?_088:  mov     eax, dword [ebp+0CH]                    ; 2610 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2613 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2615 _ 8B. 55, EC
        add     edx, 5                                  ; 2618 _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 261B _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 261F _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2622 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2625 _ 8B. 4D, F0
        add     ecx, ebx                                ; 2628 _ 01. D9
        add     edx, ecx                                ; 262A _ 01. CA
        add     edx, eax                                ; 262C _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 262E _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2632 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2634 _ 83. 45, F0, 01
?_089:  cmp     dword [ebp-10H], 15                     ; 2638 _ 83. 7D, F0, 0F
        jle     ?_085                                   ; 263C _ 7E, 98
        add     dword [ebp-14H], 1                      ; 263E _ 83. 45, EC, 01
?_090:  cmp     dword [ebp-14H], 13                     ; 2642 _ 83. 7D, EC, 0D
        jle     ?_084                                   ; 2646 _ 7E, 85
        nop                                             ; 2648 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2649 _ 8B. 5D, FC
        leave                                           ; 264C _ C9
        ret                                             ; 264D _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 264E _ 55
        mov     ebp, esp                                ; 264F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2651 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2654 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 265A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 265D _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2664 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2667 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 266E _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2671 _ C7. 40, 0C, 00000000
        nop                                             ; 2678 _ 90
        pop     ebp                                     ; 2679 _ 5D
        ret                                             ; 267A _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 267B _ 55
        mov     ebp, esp                                ; 267C _ 89. E5
        sub     esp, 16                                 ; 267E _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2681 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2688 _ C7. 45, FC, 00000000
        jmp     ?_092                                   ; 268F _ EB, 14

?_091:  mov     eax, dword [ebp+8H]                     ; 2691 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2694 _ 8B. 55, FC
        add     edx, 2                                  ; 2697 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 269A _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 269E _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 26A1 _ 83. 45, FC, 01
?_092:  mov     eax, dword [ebp+8H]                     ; 26A5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 26A8 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 26AA _ 39. 45, FC
        jl      ?_091                                   ; 26AD _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 26AF _ 8B. 45, F8
        leave                                           ; 26B2 _ C9
        ret                                             ; 26B3 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 26B4 _ 55
        mov     ebp, esp                                ; 26B5 _ 89. E5
        sub     esp, 16                                 ; 26B7 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 26BA _ C7. 45, F8, 00000000
        jmp     ?_096                                   ; 26C1 _ E9, 00000085

?_093:  mov     eax, dword [ebp+8H]                     ; 26C6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26C9 _ 8B. 55, F8
        add     edx, 2                                  ; 26CC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 26CF _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 26D3 _ 39. 45, 0C
        ja      ?_095                                   ; 26D6 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 26D8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26DB _ 8B. 55, F8
        add     edx, 2                                  ; 26DE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 26E1 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 26E4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 26E7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26EA _ 8B. 55, F8
        add     edx, 2                                  ; 26ED _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 26F0 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 26F3 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 26F6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 26F9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26FC _ 8B. 55, F8
        add     edx, 2                                  ; 26FF _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2702 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2705 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2708 _ 8B. 55, F8
        add     edx, 2                                  ; 270B _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 270E _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2712 _ 2B. 45, 0C
        mov     edx, eax                                ; 2715 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2717 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 271A _ 8B. 4D, F8
        add     ecx, 2                                  ; 271D _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2720 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2724 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2727 _ 8B. 55, F8
        add     edx, 2                                  ; 272A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 272D _ 8B. 44 D0, 04
        test    eax, eax                                ; 2731 _ 85. C0
        jnz     ?_094                                   ; 2733 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2735 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2738 _ 8B. 00
        lea     edx, [eax-1H]                           ; 273A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 273D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2740 _ 89. 10
?_094:  mov     eax, dword [ebp-4H]                     ; 2742 _ 8B. 45, FC
        jmp     ?_097                                   ; 2745 _ EB, 17

?_095:  add     dword [ebp-8H], 1                       ; 2747 _ 83. 45, F8, 01
?_096:  mov     eax, dword [ebp+8H]                     ; 274B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 274E _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2750 _ 39. 45, F8
        jl      ?_093                                   ; 2753 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2759 _ B8, 00000000
?_097:  leave                                           ; 275E _ C9
        ret                                             ; 275F _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2760 _ 55
        mov     ebp, esp                                ; 2761 _ 89. E5
        sub     esp, 16                                 ; 2763 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2766 _ 8B. 45, 0C
        add     eax, 4095                               ; 2769 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 276E _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2773 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2776 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2779 _ FF. 75, 08
        call    memman_alloc_FF                         ; 277C _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2781 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2784 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2787 _ 8B. 45, FC
        leave                                           ; 278A _ C9
        ret                                             ; 278B _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 278C _ 55
        mov     ebp, esp                                ; 278D _ 89. E5
        push    ebx                                     ; 278F _ 53
        sub     esp, 16                                 ; 2790 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2793 _ C7. 45, F4, 00000000
        jmp     ?_099                                   ; 279A _ EB, 15

?_098:  mov     eax, dword [ebp+8H]                     ; 279C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 279F _ 8B. 55, F4
        add     edx, 2                                  ; 27A2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 27A5 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 27A8 _ 39. 45, 0C
        jc      ?_100                                   ; 27AB _ 72, 10
        add     dword [ebp-0CH], 1                      ; 27AD _ 83. 45, F4, 01
?_099:  mov     eax, dword [ebp+8H]                     ; 27B1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27B4 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 27B6 _ 39. 45, F4
        jl      ?_098                                   ; 27B9 _ 7C, E1
        jmp     ?_101                                   ; 27BB _ EB, 01

?_100:  nop                                             ; 27BD _ 90
?_101:  cmp     dword [ebp-0CH], 0                      ; 27BE _ 83. 7D, F4, 00
        jle     ?_103                                   ; 27C2 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 27C8 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 27CB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27CE _ 8B. 45, 08
        add     edx, 2                                  ; 27D1 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 27D4 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 27D7 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 27DA _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 27DD _ 8B. 45, 08
        add     ecx, 2                                  ; 27E0 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 27E3 _ 8B. 44 C8, 04
        add     eax, edx                                ; 27E7 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 27E9 _ 39. 45, 0C
        jne     ?_103                                   ; 27EC _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 27F2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 27F5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27F8 _ 8B. 45, 08
        add     edx, 2                                  ; 27FB _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 27FE _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2802 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2805 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2808 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 280B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 280E _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2811 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2814 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2818 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 281B _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 281D _ 39. 45, F4
        jge     ?_102                                   ; 2820 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2822 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2825 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2828 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 282B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 282E _ 8B. 55, F4
        add     edx, 2                                  ; 2831 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2834 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2837 _ 39. C1
        jnz     ?_102                                   ; 2839 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 283B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 283E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2841 _ 8B. 45, 08
        add     edx, 2                                  ; 2844 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2847 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 284B _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 284E _ 8B. 4D, F4
        add     ecx, 2                                  ; 2851 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2854 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2858 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 285B _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 285E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2861 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2864 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2867 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 286B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 286E _ 8B. 00
        lea     edx, [eax-1H]                           ; 2870 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2873 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2876 _ 89. 10
?_102:  mov     eax, 0                                  ; 2878 _ B8, 00000000
        jmp     ?_109                                   ; 287D _ E9, 0000011C

?_103:  mov     eax, dword [ebp+8H]                     ; 2882 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2885 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2887 _ 39. 45, F4
        jge     ?_104                                   ; 288A _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 288C _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 288F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2892 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2895 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2898 _ 8B. 55, F4
        add     edx, 2                                  ; 289B _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 289E _ 8B. 04 D0
        cmp     ecx, eax                                ; 28A1 _ 39. C1
        jnz     ?_104                                   ; 28A3 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 28A5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28A8 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 28AB _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 28AE _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 28B1 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 28B4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28B7 _ 8B. 55, F4
        add     edx, 2                                  ; 28BA _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 28BD _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 28C1 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 28C4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28C7 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28CA _ 8B. 55, F4
        add     edx, 2                                  ; 28CD _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 28D0 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 28D4 _ B8, 00000000
        jmp     ?_109                                   ; 28D9 _ E9, 000000C0

?_104:  mov     eax, dword [ebp+8H]                     ; 28DE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28E1 _ 8B. 00
        cmp     eax, 4095                               ; 28E3 _ 3D, 00000FFF
        jg      ?_108                                   ; 28E8 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 28EE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28F1 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 28F3 _ 89. 45, F8
        jmp     ?_106                                   ; 28F6 _ EB, 28

?_105:  mov     eax, dword [ebp-8H]                     ; 28F8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 28FB _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 28FE _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2901 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2904 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2907 _ 8B. 45, 08
        add     edx, 2                                  ; 290A _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 290D _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2910 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2912 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2915 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2918 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 291C _ 83. 6D, F8, 01
?_106:  mov     eax, dword [ebp-8H]                     ; 2920 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2923 _ 3B. 45, F4
        jg      ?_105                                   ; 2926 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2928 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 292B _ 8B. 00
        lea     edx, [eax+1H]                           ; 292D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2930 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2933 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2935 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2938 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 293B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 293E _ 8B. 00
        cmp     edx, eax                                ; 2940 _ 39. C2
        jge     ?_107                                   ; 2942 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2944 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2947 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2949 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 294C _ 89. 50, 04
?_107:  mov     eax, dword [ebp+8H]                     ; 294F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2952 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2955 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2958 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 295B _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 295E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2961 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2964 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2967 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 296A _ 89. 54 C8, 04
        mov     eax, 0                                  ; 296E _ B8, 00000000
        jmp     ?_109                                   ; 2973 _ EB, 29

?_108:  mov     eax, dword [ebp+8H]                     ; 2975 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2978 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 297B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 297E _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2981 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2984 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2987 _ 8B. 40, 08
        mov     edx, eax                                ; 298A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 298C _ 8B. 45, 10
        add     eax, edx                                ; 298F _ 01. D0
        mov     edx, eax                                ; 2991 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2993 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2996 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2999 _ B8, FFFFFFFF
?_109:  add     esp, 16                                 ; 299E _ 83. C4, 10
        pop     ebx                                     ; 29A1 _ 5B
        pop     ebp                                     ; 29A2 _ 5D
        ret                                             ; 29A3 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 29A4 _ 55
        mov     ebp, esp                                ; 29A5 _ 89. E5
        sub     esp, 16                                 ; 29A7 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 29AA _ 8B. 45, 10
        add     eax, 4095                               ; 29AD _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 29B2 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 29B7 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 29BA _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 29BD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 29C0 _ FF. 75, 08
        call    memman_free                             ; 29C3 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 29C8 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 29CB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 29CE _ 8B. 45, FC
        leave                                           ; 29D1 _ C9
        ret                                             ; 29D2 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 29D3 _ 55
        mov     ebp, esp                                ; 29D4 _ 89. E5
        sub     esp, 24                                 ; 29D6 _ 83. EC, 18
        sub     esp, 8                                  ; 29D9 _ 83. EC, 08
        push    9232                                    ; 29DC _ 68, 00002410
        push    dword [ebp+8H]                          ; 29E1 _ FF. 75, 08
        call    memman_alloc_4K                         ; 29E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 29E9 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 29EC _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 29EF _ 83. 7D, F4, 00
        jnz     ?_110                                   ; 29F3 _ 75, 0A
        mov     eax, 0                                  ; 29F5 _ B8, 00000000
        jmp     ?_114                                   ; 29FA _ E9, 0000009A

?_110:  mov     eax, dword [ebp+10H]                    ; 29FF _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2A02 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2A06 _ 83. EC, 08
        push    eax                                     ; 2A09 _ 50
        push    dword [ebp+8H]                          ; 2A0A _ FF. 75, 08
        call    memman_alloc_4K                         ; 2A0D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A12 _ 83. C4, 10
        mov     edx, eax                                ; 2A15 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2A17 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2A1A _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2A1D _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2A20 _ 8B. 40, 04
        test    eax, eax                                ; 2A23 _ 85. C0
        jnz     ?_111                                   ; 2A25 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2A27 _ 8B. 45, F4
        sub     esp, 4                                  ; 2A2A _ 83. EC, 04
        push    9232                                    ; 2A2D _ 68, 00002410
        push    eax                                     ; 2A32 _ 50
        push    dword [ebp+8H]                          ; 2A33 _ FF. 75, 08
        call    memman_free_4K                          ; 2A36 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A3B _ 83. C4, 10
        mov     eax, 0                                  ; 2A3E _ B8, 00000000
        jmp     ?_114                                   ; 2A43 _ EB, 54

?_111:  mov     eax, dword [ebp-0CH]                    ; 2A45 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2A48 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2A4B _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2A4D _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2A50 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2A53 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2A56 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2A59 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2A5C _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2A5F _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2A62 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2A69 _ C7. 45, F0, 00000000
        jmp     ?_113                                   ; 2A70 _ EB, 1B

?_112:  mov     eax, dword [ebp-0CH]                    ; 2A72 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2A75 _ 8B. 55, F0
        add     edx, 33                                 ; 2A78 _ 83. C2, 21
        shl     edx, 5                                  ; 2A7B _ C1. E2, 05
        add     eax, edx                                ; 2A7E _ 01. D0
        add     eax, 16                                 ; 2A80 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2A83 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2A89 _ 83. 45, F0, 01
?_113:  cmp     dword [ebp-10H], 255                    ; 2A8D _ 81. 7D, F0, 000000FF
        jle     ?_112                                   ; 2A94 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2A96 _ 8B. 45, F4
?_114:  leave                                           ; 2A99 _ C9
        ret                                             ; 2A9A _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2A9B _ 55
        mov     ebp, esp                                ; 2A9C _ 89. E5
        sub     esp, 16                                 ; 2A9E _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2AA1 _ C7. 45, F8, 00000000
        jmp     ?_117                                   ; 2AA8 _ EB, 4B

?_115:  mov     eax, dword [ebp+8H]                     ; 2AAA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2AAD _ 8B. 55, F8
        add     edx, 33                                 ; 2AB0 _ 83. C2, 21
        shl     edx, 5                                  ; 2AB3 _ C1. E2, 05
        add     eax, edx                                ; 2AB6 _ 01. D0
        add     eax, 16                                 ; 2AB8 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2ABB _ 8B. 00
        test    eax, eax                                ; 2ABD _ 85. C0
        jnz     ?_116                                   ; 2ABF _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2AC1 _ 8B. 45, F8
        shl     eax, 5                                  ; 2AC4 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2AC7 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2ACD _ 8B. 45, 08
        add     eax, edx                                ; 2AD0 _ 01. D0
        add     eax, 4                                  ; 2AD2 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2AD5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2AD8 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2ADB _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2AE2 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2AE5 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2AEC _ 8B. 45, FC
        jmp     ?_118                                   ; 2AEF _ EB, 12

?_116:  add     dword [ebp-8H], 1                       ; 2AF1 _ 83. 45, F8, 01
?_117:  cmp     dword [ebp-8H], 255                     ; 2AF5 _ 81. 7D, F8, 000000FF
        jle     ?_115                                   ; 2AFC _ 7E, AC
        mov     eax, 0                                  ; 2AFE _ B8, 00000000
?_118:  leave                                           ; 2B03 _ C9
        ret                                             ; 2B04 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2B05 _ 55
        mov     ebp, esp                                ; 2B06 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2B08 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B0B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2B0E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2B10 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2B13 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2B16 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2B19 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2B1C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2B1F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2B22 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2B25 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2B28 _ 89. 50, 14
        nop                                             ; 2B2B _ 90
        pop     ebp                                     ; 2B2C _ 5D
        ret                                             ; 2B2D _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2B2E _ 55
        mov     ebp, esp                                ; 2B2F _ 89. E5
        push    esi                                     ; 2B31 _ 56
        push    ebx                                     ; 2B32 _ 53
        sub     esp, 32                                 ; 2B33 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2B36 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B39 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2B3C _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2B3F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B42 _ 8B. 40, 10
        add     eax, 1                                  ; 2B45 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2B48 _ 39. 45, 10
        jle     ?_119                                   ; 2B4B _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2B4D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B50 _ 8B. 40, 10
        add     eax, 1                                  ; 2B53 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2B56 _ 89. 45, 10
?_119:  cmp     dword [ebp+10H], -1                     ; 2B59 _ 83. 7D, 10, FF
        jge     ?_120                                   ; 2B5D _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2B5F _ C7. 45, 10, FFFFFFFF
?_120:  mov     eax, dword [ebp+0CH]                    ; 2B66 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2B69 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2B6C _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2B6F _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2B72 _ 3B. 45, 10
        jle     ?_127                                   ; 2B75 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2B7B _ 83. 7D, 10, 00
        js      ?_123                                   ; 2B7F _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2B85 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2B88 _ 89. 45, E4
        jmp     ?_122                                   ; 2B8B _ EB, 34

?_121:  mov     eax, dword [ebp-1CH]                    ; 2B8D _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2B90 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2B93 _ 8B. 45, 08
        add     edx, 4                                  ; 2B96 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2B99 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2B9D _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2BA0 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2BA3 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2BA6 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2BAA _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2BAD _ 8B. 55, E4
        add     edx, 4                                  ; 2BB0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BB3 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2BB7 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2BBA _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2BBD _ 83. 6D, E4, 01
?_122:  mov     eax, dword [ebp-1CH]                    ; 2BC1 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2BC4 _ 3B. 45, 10
        jg      ?_121                                   ; 2BC7 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2BC9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2BCC _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2BCF _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2BD2 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2BD5 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2BD9 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2BDC _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2BDF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2BE2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2BE5 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2BE8 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2BEB _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2BEE _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2BF1 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2BF4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2BF7 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2BFA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2BFD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C00 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C03 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C06 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2C09 _ 83. EC, 08
        push    esi                                     ; 2C0C _ 56
        push    ebx                                     ; 2C0D _ 53
        push    ecx                                     ; 2C0E _ 51
        push    edx                                     ; 2C0F _ 52
        push    eax                                     ; 2C10 _ 50
        push    dword [ebp+8H]                          ; 2C11 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2C14 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C19 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2C1C _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2C1F _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2C22 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C25 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C28 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2C2B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2C2E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2C31 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C34 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C37 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C3A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2C3D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2C40 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C43 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C46 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C49 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2C4C _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2C4F _ FF. 75, F4
        push    esi                                     ; 2C52 _ 56
        push    ebx                                     ; 2C53 _ 53
        push    ecx                                     ; 2C54 _ 51
        push    edx                                     ; 2C55 _ 52
        push    eax                                     ; 2C56 _ 50
        push    dword [ebp+8H]                          ; 2C57 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C5A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C5F _ 83. C4, 20
        jmp     ?_134                                   ; 2C62 _ E9, 00000244

?_123:  mov     eax, dword [ebp+8H]                     ; 2C67 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C6A _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2C6D _ 39. 45, F4
        jge     ?_126                                   ; 2C70 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2C72 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2C75 _ 89. 45, E8
        jmp     ?_125                                   ; 2C78 _ EB, 34

?_124:  mov     eax, dword [ebp-18H]                    ; 2C7A _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2C7D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2C80 _ 8B. 45, 08
        add     edx, 4                                  ; 2C83 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2C86 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C8A _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2C8D _ 8B. 4D, E8
        add     ecx, 4                                  ; 2C90 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2C93 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2C97 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2C9A _ 8B. 55, E8
        add     edx, 4                                  ; 2C9D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CA0 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2CA4 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2CA7 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2CAA _ 83. 45, E8, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 2CAE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CB1 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2CB4 _ 39. 45, E8
        jl      ?_124                                   ; 2CB7 _ 7C, C1
?_126:  mov     eax, dword [ebp+8H]                     ; 2CB9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CBC _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2CBF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CC2 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2CC5 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CC8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CCB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CCE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CD1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CD4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CD7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CDA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CDD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CE0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2CE3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2CE6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CE9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CEC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2CEF _ 8B. 40, 0C
        sub     esp, 8                                  ; 2CF2 _ 83. EC, 08
        push    0                                       ; 2CF5 _ 6A, 00
        push    ebx                                     ; 2CF7 _ 53
        push    ecx                                     ; 2CF8 _ 51
        push    edx                                     ; 2CF9 _ 52
        push    eax                                     ; 2CFA _ 50
        push    dword [ebp+8H]                          ; 2CFB _ FF. 75, 08
        call    sheet_refreshmap                        ; 2CFE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D03 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2D06 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2D09 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2D0C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D0F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D12 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D15 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D18 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D1B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D1E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D21 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D24 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D27 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D2A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D2D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D30 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D33 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2D36 _ 83. EC, 04
        push    esi                                     ; 2D39 _ 56
        push    0                                       ; 2D3A _ 6A, 00
        push    ebx                                     ; 2D3C _ 53
        push    ecx                                     ; 2D3D _ 51
        push    edx                                     ; 2D3E _ 52
        push    eax                                     ; 2D3F _ 50
        push    dword [ebp+8H]                          ; 2D40 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2D43 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D48 _ 83. C4, 20
        jmp     ?_134                                   ; 2D4B _ E9, 0000015B

?_127:  mov     eax, dword [ebp-0CH]                    ; 2D50 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2D53 _ 3B. 45, 10
        jge     ?_134                                   ; 2D56 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2D5C _ 83. 7D, F4, 00
        js      ?_130                                   ; 2D60 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2D62 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2D65 _ 89. 45, EC
        jmp     ?_129                                   ; 2D68 _ EB, 34

?_128:  mov     eax, dword [ebp-14H]                    ; 2D6A _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2D6D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D70 _ 8B. 45, 08
        add     edx, 4                                  ; 2D73 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2D76 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2D7A _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2D7D _ 8B. 4D, EC
        add     ecx, 4                                  ; 2D80 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2D83 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2D87 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2D8A _ 8B. 55, EC
        add     edx, 4                                  ; 2D8D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D90 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2D94 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2D97 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2D9A _ 83. 45, EC, 01
?_129:  mov     eax, dword [ebp-14H]                    ; 2D9E _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2DA1 _ 3B. 45, 10
        jl      ?_128                                   ; 2DA4 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2DA6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2DA9 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2DAC _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2DAF _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2DB2 _ 89. 54 88, 04
        jmp     ?_133                                   ; 2DB6 _ EB, 72

?_130:  cmp     dword [ebp-0CH], 0                      ; 2DB8 _ 83. 7D, F4, 00
        jns     ?_133                                   ; 2DBC _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2DBE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DC1 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2DC4 _ 89. 45, F0
        jmp     ?_132                                   ; 2DC7 _ EB, 3A

?_131:  mov     eax, dword [ebp-10H]                    ; 2DC9 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2DCC _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2DCF _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2DD2 _ 8B. 55, F0
        add     edx, 4                                  ; 2DD5 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2DD8 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DDC _ 8B. 45, 08
        add     ecx, 4                                  ; 2DDF _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2DE2 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2DE6 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2DE9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2DEC _ 8B. 45, 08
        add     edx, 4                                  ; 2DEF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2DF2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2DF6 _ 8B. 55, F0
        add     edx, 1                                  ; 2DF9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2DFC _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2DFF _ 83. 6D, F0, 01
?_132:  mov     eax, dword [ebp-10H]                    ; 2E03 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2E06 _ 3B. 45, 10
        jge     ?_131                                   ; 2E09 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2E0B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E0E _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2E11 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E14 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2E17 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2E1B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E1E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2E21 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E24 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E27 _ 89. 50, 10
?_133:  mov     eax, dword [ebp+0CH]                    ; 2E2A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E2D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E30 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E33 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E36 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E39 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E3C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E3F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E42 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E45 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E48 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E4B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E4E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E51 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2E54 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2E57 _ FF. 75, 10
        push    ebx                                     ; 2E5A _ 53
        push    ecx                                     ; 2E5B _ 51
        push    edx                                     ; 2E5C _ 52
        push    eax                                     ; 2E5D _ 50
        push    dword [ebp+8H]                          ; 2E5E _ FF. 75, 08
        call    sheet_refreshmap                        ; 2E61 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2E66 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2E69 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E6C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E6F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E72 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E75 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E78 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E7B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E7E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E81 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E84 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E87 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E8A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E8D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E90 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2E93 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2E96 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2E99 _ FF. 75, 10
        push    ebx                                     ; 2E9C _ 53
        push    ecx                                     ; 2E9D _ 51
        push    edx                                     ; 2E9E _ 52
        push    eax                                     ; 2E9F _ 50
        push    dword [ebp+8H]                          ; 2EA0 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2EA3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2EA8 _ 83. C4, 20
?_134:  nop                                             ; 2EAB _ 90
        lea     esp, [ebp-8H]                           ; 2EAC _ 8D. 65, F8
        pop     ebx                                     ; 2EAF _ 5B
        pop     esi                                     ; 2EB0 _ 5E
        pop     ebp                                     ; 2EB1 _ 5D
        ret                                             ; 2EB2 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2EB3 _ 55
        mov     ebp, esp                                ; 2EB4 _ 89. E5
        push    edi                                     ; 2EB6 _ 57
        push    esi                                     ; 2EB7 _ 56
        push    ebx                                     ; 2EB8 _ 53
        sub     esp, 28                                 ; 2EB9 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2EBC _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2EBF _ 8B. 40, 18
        test    eax, eax                                ; 2EC2 _ 85. C0
        js      ?_135                                   ; 2EC4 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2EC6 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2EC9 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2ECC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2ECF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2ED2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2ED5 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2ED8 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2EDB _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2EDE _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2EE1 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2EE4 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2EE7 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2EEA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EED _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2EF0 _ 8B. 45, 14
        add     edx, eax                                ; 2EF3 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2EF5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2EF8 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2EFB _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2EFE _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2F01 _ 03. 45, E4
        sub     esp, 4                                  ; 2F04 _ 83. EC, 04
        push    ebx                                     ; 2F07 _ 53
        push    ecx                                     ; 2F08 _ 51
        push    edi                                     ; 2F09 _ 57
        push    esi                                     ; 2F0A _ 56
        push    edx                                     ; 2F0B _ 52
        push    eax                                     ; 2F0C _ 50
        push    dword [ebp+8H]                          ; 2F0D _ FF. 75, 08
        call    sheet_refresh_new                       ; 2F10 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F15 _ 83. C4, 20
?_135:  mov     eax, 0                                  ; 2F18 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2F1D _ 8D. 65, F4
        pop     ebx                                     ; 2F20 _ 5B
        pop     esi                                     ; 2F21 _ 5E
        pop     edi                                     ; 2F22 _ 5F
        pop     ebp                                     ; 2F23 _ 5D
        ret                                             ; 2F24 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2F25 _ 55
        mov     ebp, esp                                ; 2F26 _ 89. E5
        push    esi                                     ; 2F28 _ 56
        push    ebx                                     ; 2F29 _ 53
        sub     esp, 16                                 ; 2F2A _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2F2D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F30 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2F33 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2F36 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2F39 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2F3C _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2F3F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F42 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2F45 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F48 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2F4B _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2F4E _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F51 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F54 _ 8B. 40, 18
        test    eax, eax                                ; 2F57 _ 85. C0
        js      ?_136                                   ; 2F59 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2F5F _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2F62 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2F65 _ 8B. 45, F4
        add     edx, eax                                ; 2F68 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2F6A _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2F6D _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2F70 _ 8B. 45, F0
        add     eax, ecx                                ; 2F73 _ 01. C8
        sub     esp, 8                                  ; 2F75 _ 83. EC, 08
        push    0                                       ; 2F78 _ 6A, 00
        push    edx                                     ; 2F7A _ 52
        push    eax                                     ; 2F7B _ 50
        push    dword [ebp-0CH]                         ; 2F7C _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2F7F _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2F82 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2F85 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F8A _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2F8D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F90 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2F93 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2F96 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2F99 _ 8B. 55, 14
        add     ecx, edx                                ; 2F9C _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2F9E _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2FA1 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2FA4 _ 8B. 55, 10
        add     edx, ebx                                ; 2FA7 _ 01. DA
        sub     esp, 8                                  ; 2FA9 _ 83. EC, 08
        push    eax                                     ; 2FAC _ 50
        push    ecx                                     ; 2FAD _ 51
        push    edx                                     ; 2FAE _ 52
        push    dword [ebp+14H]                         ; 2FAF _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2FB2 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2FB5 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2FB8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FBD _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2FC0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2FC3 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2FC6 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2FC9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2FCC _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2FCF _ 8B. 45, F4
        add     edx, eax                                ; 2FD2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2FD4 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2FD7 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2FDA _ 8B. 45, F0
        add     eax, ebx                                ; 2FDD _ 01. D8
        sub     esp, 4                                  ; 2FDF _ 83. EC, 04
        push    ecx                                     ; 2FE2 _ 51
        push    0                                       ; 2FE3 _ 6A, 00
        push    edx                                     ; 2FE5 _ 52
        push    eax                                     ; 2FE6 _ 50
        push    dword [ebp-0CH]                         ; 2FE7 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2FEA _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2FED _ FF. 75, 08
        call    sheet_refresh_new                       ; 2FF0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FF5 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2FF8 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2FFB _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2FFE _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3001 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 3004 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 3007 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 300A _ 8B. 4D, 14
        add     ebx, ecx                                ; 300D _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 300F _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 3012 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 3015 _ 8B. 4D, 10
        add     ecx, esi                                ; 3018 _ 01. F1
        sub     esp, 4                                  ; 301A _ 83. EC, 04
        push    edx                                     ; 301D _ 52
        push    eax                                     ; 301E _ 50
        push    ebx                                     ; 301F _ 53
        push    ecx                                     ; 3020 _ 51
        push    dword [ebp+14H]                         ; 3021 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3024 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3027 _ FF. 75, 08
        call    sheet_refresh_new                       ; 302A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 302F _ 83. C4, 20
?_136:  nop                                             ; 3032 _ 90
        lea     esp, [ebp-8H]                           ; 3033 _ 8D. 65, F8
        pop     ebx                                     ; 3036 _ 5B
        pop     esi                                     ; 3037 _ 5E
        pop     ebp                                     ; 3038 _ 5D
        ret                                             ; 3039 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 303A _ 55
        mov     ebp, esp                                ; 303B _ 89. E5
        sub     esp, 48                                 ; 303D _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3040 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3043 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 3045 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 3048 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 304B _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 304E _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3051 _ 83. 7D, 0C, 00
        jns     ?_137                                   ; 3055 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3057 _ C7. 45, 0C, 00000000
?_137:  cmp     dword [ebp+10H], 8                      ; 305E _ 83. 7D, 10, 08
        jg      ?_138                                   ; 3062 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3064 _ C7. 45, 10, 00000000
?_138:  mov     eax, dword [ebp+8H]                     ; 306B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 306E _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3071 _ 39. 45, 14
        jle     ?_139                                   ; 3074 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3076 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3079 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 307C _ 89. 45, 14
?_139:  mov     eax, dword [ebp+8H]                     ; 307F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3082 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3085 _ 39. 45, 18
        jle     ?_140                                   ; 3088 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 308A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 308D _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3090 _ 89. 45, 18
?_140:  mov     eax, dword [ebp+1CH]                    ; 3093 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 3096 _ 89. 45, DC
        jmp     ?_147                                   ; 3099 _ E9, 00000118

?_141:  mov     eax, dword [ebp+8H]                     ; 309E _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 30A1 _ 8B. 55, DC
        add     edx, 4                                  ; 30A4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 30A7 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 30AB _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 30AE _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 30B1 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 30B3 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 30B6 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 30B9 _ 8B. 55, 08
        add     edx, 1044                               ; 30BC _ 81. C2, 00000414
        sub     eax, edx                                ; 30C2 _ 29. D0
        sar     eax, 5                                  ; 30C4 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 30C7 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 30CA _ C7. 45, E0, 00000000
        jmp     ?_146                                   ; 30D1 _ E9, 000000CD

?_142:  mov     eax, dword [ebp-10H]                    ; 30D6 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 30D9 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 30DC _ 8B. 45, E0
        add     eax, edx                                ; 30DF _ 01. D0
        mov     dword [ebp-8H], eax                     ; 30E1 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 30E4 _ C7. 45, E4, 00000000
        jmp     ?_145                                   ; 30EB _ E9, 000000A0

?_143:  mov     eax, dword [ebp-10H]                    ; 30F0 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 30F3 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 30F6 _ 8B. 45, E4
        add     eax, edx                                ; 30F9 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 30FB _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 30FE _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 3101 _ 3B. 45, FC
        jg      ?_144                                   ; 3104 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 310A _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 310D _ 3B. 45, 14
        jge     ?_144                                   ; 3110 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 3112 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 3115 _ 3B. 45, F8
        jg      ?_144                                   ; 3118 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 311A _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 311D _ 3B. 45, 18
        jge     ?_144                                   ; 3120 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 3122 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3125 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 3128 _ 0F AF. 45, E0
        mov     edx, eax                                ; 312C _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 312E _ 8B. 45, E4
        add     eax, edx                                ; 3131 _ 01. D0
        mov     edx, eax                                ; 3133 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3135 _ 8B. 45, F4
        add     eax, edx                                ; 3138 _ 01. D0
        movzx   eax, byte [eax]                         ; 313A _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 313D _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 3140 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3143 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3146 _ 0F AF. 45, F8
        mov     edx, eax                                ; 314A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 314C _ 8B. 45, FC
        add     eax, edx                                ; 314F _ 01. D0
        mov     edx, eax                                ; 3151 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3153 _ 8B. 45, EC
        add     eax, edx                                ; 3156 _ 01. D0
        movzx   eax, byte [eax]                         ; 3158 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 315B _ 38. 45, DA
        jnz     ?_144                                   ; 315E _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3160 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 3164 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3167 _ 8B. 40, 14
        cmp     edx, eax                                ; 316A _ 39. C2
        jz      ?_144                                   ; 316C _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 316E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3171 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3174 _ 0F AF. 45, F8
        mov     edx, eax                                ; 3178 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 317A _ 8B. 45, FC
        add     eax, edx                                ; 317D _ 01. D0
        mov     edx, eax                                ; 317F _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3181 _ 8B. 45, E8
        add     edx, eax                                ; 3184 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3186 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 318A _ 88. 02
?_144:  add     dword [ebp-1CH], 1                      ; 318C _ 83. 45, E4, 01
?_145:  mov     eax, dword [ebp-10H]                    ; 3190 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3193 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 3196 _ 39. 45, E4
        jl      ?_143                                   ; 3199 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 319F _ 83. 45, E0, 01
?_146:  mov     eax, dword [ebp-10H]                    ; 31A3 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 31A6 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 31A9 _ 39. 45, E0
        jl      ?_142                                   ; 31AC _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 31B2 _ 83. 45, DC, 01
?_147:  mov     eax, dword [ebp-24H]                    ; 31B6 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 31B9 _ 3B. 45, 20
        jle     ?_141                                   ; 31BC _ 0F 8E, FFFFFEDC
        nop                                             ; 31C2 _ 90
        leave                                           ; 31C3 _ C9
        ret                                             ; 31C4 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 31C5 _ 55
        mov     ebp, esp                                ; 31C6 _ 89. E5
        sub     esp, 64                                 ; 31C8 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 31CB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 31CE _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 31D1 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 31D4 _ 83. 7D, 0C, 00
        jns     ?_148                                   ; 31D8 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 31DA _ C7. 45, 0C, 00000000
?_148:  mov     eax, dword [ebp+8H]                     ; 31E1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31E4 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 31E7 _ 39. 45, 0C
        jle     ?_149                                   ; 31EA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 31EC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31EF _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 31F2 _ 89. 45, 0C
?_149:  cmp     dword [ebp+10H], 0                      ; 31F5 _ 83. 7D, 10, 00
        jns     ?_150                                   ; 31F9 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 31FB _ C7. 45, 10, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 3202 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3205 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 3208 _ 39. 45, 10
        jle     ?_151                                   ; 320B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 320D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3210 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 3213 _ 89. 45, 10
?_151:  mov     eax, dword [ebp+1CH]                    ; 3216 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 3219 _ 89. 45, E0
        jmp     ?_162                                   ; 321C _ E9, 00000140

?_152:  mov     eax, dword [ebp+8H]                     ; 3221 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 3224 _ 8B. 55, E0
        add     edx, 4                                  ; 3227 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 322A _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 322E _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3231 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3234 _ 8B. 55, 08
        add     edx, 1044                               ; 3237 _ 81. C2, 00000414
        sub     eax, edx                                ; 323D _ 29. D0
        sar     eax, 5                                  ; 323F _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 3242 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 3245 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3248 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 324A _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 324D _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3250 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3253 _ 8B. 55, 0C
        sub     edx, eax                                ; 3256 _ 29. C2
        mov     eax, edx                                ; 3258 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 325A _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 325D _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3260 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3263 _ 8B. 55, 10
        sub     edx, eax                                ; 3266 _ 29. C2
        mov     eax, edx                                ; 3268 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 326A _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 326D _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3270 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3273 _ 8B. 55, 14
        sub     edx, eax                                ; 3276 _ 29. C2
        mov     eax, edx                                ; 3278 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 327A _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 327D _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3280 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3283 _ 8B. 55, 18
        sub     edx, eax                                ; 3286 _ 29. C2
        mov     eax, edx                                ; 3288 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 328A _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 328D _ 83. 7D, D0, 00
        jns     ?_153                                   ; 3291 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 3293 _ C7. 45, D0, 00000000
?_153:  cmp     dword [ebp-2CH], 0                      ; 329A _ 83. 7D, D4, 00
        jns     ?_154                                   ; 329E _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 32A0 _ C7. 45, D4, 00000000
?_154:  mov     eax, dword [ebp-10H]                    ; 32A7 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32AA _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 32AD _ 39. 45, D8
        jle     ?_155                                   ; 32B0 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 32B2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32B5 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 32B8 _ 89. 45, D8
?_155:  mov     eax, dword [ebp-10H]                    ; 32BB _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 32BE _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 32C1 _ 39. 45, DC
        jle     ?_156                                   ; 32C4 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 32C6 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 32C9 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 32CC _ 89. 45, DC
?_156:  mov     eax, dword [ebp-2CH]                    ; 32CF _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 32D2 _ 89. 45, E4
        jmp     ?_161                                   ; 32D5 _ EB, 7A

?_157:  mov     eax, dword [ebp-10H]                    ; 32D7 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 32DA _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 32DD _ 8B. 45, E4
        add     eax, edx                                ; 32E0 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 32E2 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 32E5 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 32E8 _ 89. 45, E8
        jmp     ?_160                                   ; 32EB _ EB, 58

?_158:  mov     eax, dword [ebp-10H]                    ; 32ED _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 32F0 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 32F3 _ 8B. 45, E8
        add     eax, edx                                ; 32F6 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 32F8 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 32FB _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32FE _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 3301 _ 0F AF. 45, E4
        mov     edx, eax                                ; 3305 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3307 _ 8B. 45, E8
        add     eax, edx                                ; 330A _ 01. D0
        mov     edx, eax                                ; 330C _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 330E _ 8B. 45, F4
        add     eax, edx                                ; 3311 _ 01. D0
        movzx   eax, byte [eax]                         ; 3313 _ 0F B6. 00
        movzx   edx, al                                 ; 3316 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 3319 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 331C _ 8B. 40, 14
        cmp     edx, eax                                ; 331F _ 39. C2
        jz      ?_159                                   ; 3321 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3323 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3326 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3329 _ 0F AF. 45, F8
        mov     edx, eax                                ; 332D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 332F _ 8B. 45, FC
        add     eax, edx                                ; 3332 _ 01. D0
        mov     edx, eax                                ; 3334 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3336 _ 8B. 45, EC
        add     edx, eax                                ; 3339 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 333B _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 333F _ 88. 02
?_159:  add     dword [ebp-18H], 1                      ; 3341 _ 83. 45, E8, 01
?_160:  mov     eax, dword [ebp-18H]                    ; 3345 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 3348 _ 3B. 45, D8
        jl      ?_158                                   ; 334B _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 334D _ 83. 45, E4, 01
?_161:  mov     eax, dword [ebp-1CH]                    ; 3351 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 3354 _ 3B. 45, DC
        jl      ?_157                                   ; 3357 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 335D _ 83. 45, E0, 01
?_162:  mov     eax, dword [ebp+8H]                     ; 3361 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3364 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3367 _ 39. 45, E0
        jle     ?_152                                   ; 336A _ 0F 8E, FFFFFEB1
        nop                                             ; 3370 _ 90
        leave                                           ; 3371 _ C9
        ret                                             ; 3372 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 3373 _ 55
        mov     ebp, esp                                ; 3374 _ 89. E5
        sub     esp, 24                                 ; 3376 _ 83. EC, 18
        sub     esp, 8                                  ; 3379 _ 83. EC, 08
        push    52                                      ; 337C _ 6A, 34
        push    67                                      ; 337E _ 6A, 43
        call    io_out8                                 ; 3380 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3385 _ 83. C4, 10
        sub     esp, 8                                  ; 3388 _ 83. EC, 08
        push    156                                     ; 338B _ 68, 0000009C
        push    64                                      ; 3390 _ 6A, 40
        call    io_out8                                 ; 3392 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3397 _ 83. C4, 10
        sub     esp, 8                                  ; 339A _ 83. EC, 08
        push    46                                      ; 339D _ 6A, 2E
        push    64                                      ; 339F _ 6A, 40
        call    io_out8                                 ; 33A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 33A6 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 33A9 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 33B3 _ C7. 45, F4, 00000000
        jmp     ?_164                                   ; 33BA _ EB, 26

?_163:  mov     eax, dword [ebp-0CH]                    ; 33BC _ 8B. 45, F4
        shl     eax, 4                                  ; 33BF _ C1. E0, 04
        add     eax, ?_235                              ; 33C2 _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 33C7 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 33CD _ 8B. 45, F4
        shl     eax, 4                                  ; 33D0 _ C1. E0, 04
        add     eax, ?_236                              ; 33D3 _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 33D8 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 33DE _ 83. 45, F4, 01
?_164:  cmp     dword [ebp-0CH], 499                    ; 33E2 _ 81. 7D, F4, 000001F3
        jle     ?_163                                   ; 33E9 _ 7E, D1
        nop                                             ; 33EB _ 90
        leave                                           ; 33EC _ C9
        ret                                             ; 33ED _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 33EE _ 55
        mov     ebp, esp                                ; 33EF _ 89. E5
        sub     esp, 16                                 ; 33F1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 33F4 _ C7. 45, FC, 00000000
        jmp     ?_167                                   ; 33FB _ EB, 36

?_165:  mov     eax, dword [ebp-4H]                     ; 33FD _ 8B. 45, FC
        shl     eax, 4                                  ; 3400 _ C1. E0, 04
        add     eax, ?_235                              ; 3403 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 3408 _ 8B. 00
        test    eax, eax                                ; 340A _ 85. C0
        jnz     ?_166                                   ; 340C _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 340E _ 8B. 45, FC
        shl     eax, 4                                  ; 3411 _ C1. E0, 04
        add     eax, ?_235                              ; 3414 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 3419 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 341F _ 8B. 45, FC
        shl     eax, 4                                  ; 3422 _ C1. E0, 04
        add     eax, timerctl                           ; 3425 _ 05, 00000280(d)
        add     eax, 4                                  ; 342A _ 83. C0, 04
        jmp     ?_168                                   ; 342D _ EB, 12

?_166:  add     dword [ebp-4H], 1                       ; 342F _ 83. 45, FC, 01
?_167:  cmp     dword [ebp-4H], 499                     ; 3433 _ 81. 7D, FC, 000001F3
        jle     ?_165                                   ; 343A _ 7E, C1
        mov     eax, 0                                  ; 343C _ B8, 00000000
?_168:  leave                                           ; 3441 _ C9
        ret                                             ; 3442 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3443 _ 55
        mov     ebp, esp                                ; 3444 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3446 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3449 _ C7. 40, 04, 00000000
        nop                                             ; 3450 _ 90
        pop     ebp                                     ; 3451 _ 5D
        ret                                             ; 3452 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3453 _ 55
        mov     ebp, esp                                ; 3454 _ 89. E5
        sub     esp, 4                                  ; 3456 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3459 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 345C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 345F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3462 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3465 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3468 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 346B _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 346F _ 88. 50, 0C
        nop                                             ; 3472 _ 90
        leave                                           ; 3473 _ C9
        ret                                             ; 3474 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3475 _ 55
        mov     ebp, esp                                ; 3476 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3478 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 347B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 347E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3480 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3483 _ C7. 40, 04, 00000002
        nop                                             ; 348A _ 90
        pop     ebp                                     ; 348B _ 5D
        ret                                             ; 348C _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 348D _ 55
        mov     ebp, esp                                ; 348E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3490 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3493 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3496 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3498 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 349B _ C7. 40, 04, 00000002
        nop                                             ; 34A2 _ 90
        pop     ebp                                     ; 34A3 _ 5D
        ret                                             ; 34A4 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 34A5 _ 55
        mov     ebp, esp                                ; 34A6 _ 89. E5
        mov     eax, timerctl                           ; 34A8 _ B8, 00000280(d)
        pop     ebp                                     ; 34AD _ 5D
        ret                                             ; 34AE _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 34AF _ 55
        mov     ebp, esp                                ; 34B0 _ 89. E5
        push    ebx                                     ; 34B2 _ 53
        sub     esp, 20                                 ; 34B3 _ 83. EC, 14
        sub     esp, 8                                  ; 34B6 _ 83. EC, 08
        push    32                                      ; 34B9 _ 6A, 20
        push    32                                      ; 34BB _ 6A, 20
        call    io_out8                                 ; 34BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 34C2 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 34C5 _ A1, 00000280(d)
        add     eax, 1                                  ; 34CA _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 34CD _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 34D2 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 34D9 _ C7. 45, F4, 00000000
        jmp     ?_172                                   ; 34E0 _ E9, 000000AD

?_169:  mov     eax, dword [ebp-0CH]                    ; 34E5 _ 8B. 45, F4
        shl     eax, 4                                  ; 34E8 _ C1. E0, 04
        add     eax, ?_235                              ; 34EB _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 34F0 _ 8B. 00
        cmp     eax, 2                                  ; 34F2 _ 83. F8, 02
        jne     ?_170                                   ; 34F5 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 34FB _ 8B. 45, F4
        shl     eax, 4                                  ; 34FE _ C1. E0, 04
        add     eax, ?_234                              ; 3501 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 3506 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3508 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 350B _ 8B. 45, F4
        shl     eax, 4                                  ; 350E _ C1. E0, 04
        add     eax, ?_234                              ; 3511 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 3516 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3518 _ 8B. 45, F4
        shl     eax, 4                                  ; 351B _ C1. E0, 04
        add     eax, ?_234                              ; 351E _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 3523 _ 8B. 00
        test    eax, eax                                ; 3525 _ 85. C0
        jnz     ?_170                                   ; 3527 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 3529 _ 8B. 45, F4
        shl     eax, 4                                  ; 352C _ C1. E0, 04
        add     eax, ?_235                              ; 352F _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 3534 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 353A _ 8B. 45, F4
        shl     eax, 4                                  ; 353D _ C1. E0, 04
        add     eax, ?_237                              ; 3540 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 3545 _ 0F B6. 00
        movzx   edx, al                                 ; 3548 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 354B _ 8B. 45, F4
        shl     eax, 4                                  ; 354E _ C1. E0, 04
        add     eax, ?_236                              ; 3551 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 3556 _ 8B. 00
        sub     esp, 8                                  ; 3558 _ 83. EC, 08
        push    edx                                     ; 355B _ 52
        push    eax                                     ; 355C _ 50
        call    fifo8_put                               ; 355D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3562 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3565 _ 8B. 45, F4
        shl     eax, 4                                  ; 3568 _ C1. E0, 04
        add     eax, timerctl                           ; 356B _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 3570 _ 8D. 58, 04
        call    getTaskTimer                            ; 3573 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3578 _ 39. C3
        jnz     ?_170                                   ; 357A _ 75, 07
        mov     dword [ebp-10H], 1                      ; 357C _ C7. 45, F0, 00000001
?_170:  cmp     dword [ebp-10H], 1                      ; 3583 _ 83. 7D, F0, 01
        jnz     ?_171                                   ; 3587 _ 75, 05
        call    task_switch                             ; 3589 _ E8, FFFFFFFC(rel)
?_171:  add     dword [ebp-0CH], 1                      ; 358E _ 83. 45, F4, 01
?_172:  cmp     dword [ebp-0CH], 499                    ; 3592 _ 81. 7D, F4, 000001F3
        jle     ?_169                                   ; 3599 _ 0F 8E, FFFFFF46
        nop                                             ; 359F _ 90
        mov     ebx, dword [ebp-4H]                     ; 35A0 _ 8B. 5D, FC
        leave                                           ; 35A3 _ C9
        ret                                             ; 35A4 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 35A5 _ 55
        mov     ebp, esp                                ; 35A6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 35A8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35AB _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 35AE _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 35B1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 35B4 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 35B7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 35B9 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35BC _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 35BF _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 35C2 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 35C5 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 35CC _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 35CF _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 35D6 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 35D9 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 35E0 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 35E3 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 35E6 _ 89. 50, 18
        nop                                             ; 35E9 _ 90
        pop     ebp                                     ; 35EA _ 5D
        ret                                             ; 35EB _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 35EC _ 55
        mov     ebp, esp                                ; 35ED _ 89. E5
        sub     esp, 24                                 ; 35EF _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 35F2 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 35F5 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 35F8 _ 83. 7D, 08, 00
        jnz     ?_173                                   ; 35FC _ 75, 0A
        mov     eax, 4294967295                         ; 35FE _ B8, FFFFFFFF
        jmp     ?_177                                   ; 3603 _ E9, 000000A0

?_173:  mov     eax, dword [ebp+8H]                     ; 3608 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 360B _ 8B. 40, 10
        test    eax, eax                                ; 360E _ 85. C0
        jnz     ?_174                                   ; 3610 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3612 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3615 _ 8B. 40, 14
        or      eax, 01H                                ; 3618 _ 83. C8, 01
        mov     edx, eax                                ; 361B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 361D _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3620 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3623 _ B8, FFFFFFFF
        jmp     ?_177                                   ; 3628 _ EB, 7E

?_174:  mov     eax, dword [ebp+8H]                     ; 362A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 362D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 362F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3632 _ 8B. 40, 08
        add     edx, eax                                ; 3635 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3637 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 363B _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 363D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3640 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3643 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3646 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3649 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 364C _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 364F _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3652 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3655 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3658 _ 39. C2
        jl      ?_175                                   ; 365A _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 365C _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 365F _ C7. 40, 08, 00000000
?_175:  mov     eax, dword [ebp+8H]                     ; 3666 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3669 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 366C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 366F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3672 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3675 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3678 _ 8B. 40, 18
        test    eax, eax                                ; 367B _ 85. C0
        jz      ?_176                                   ; 367D _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 367F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3682 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3685 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3688 _ 83. F8, 02
        jz      ?_176                                   ; 368B _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 368D _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3690 _ 8B. 40, 18
        sub     esp, 4                                  ; 3693 _ 83. EC, 04
        push    0                                       ; 3696 _ 6A, 00
        push    -1                                      ; 3698 _ 6A, FF
        push    eax                                     ; 369A _ 50
        call    task_run                                ; 369B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36A0 _ 83. C4, 10
?_176:  mov     eax, 1                                  ; 36A3 _ B8, 00000001
?_177:  leave                                           ; 36A8 _ C9
        ret                                             ; 36A9 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 36AA _ 55
        mov     ebp, esp                                ; 36AB _ 89. E5
        sub     esp, 16                                 ; 36AD _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 36B0 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 36B3 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 36B6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36B9 _ 8B. 40, 0C
        cmp     edx, eax                                ; 36BC _ 39. C2
        jnz     ?_178                                   ; 36BE _ 75, 07
        mov     eax, 4294967295                         ; 36C0 _ B8, FFFFFFFF
        jmp     ?_180                                   ; 36C5 _ EB, 51

?_178:  mov     eax, dword [ebp+8H]                     ; 36C7 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 36CA _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 36CC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 36CF _ 8B. 40, 04
        add     eax, edx                                ; 36D2 _ 01. D0
        movzx   eax, byte [eax]                         ; 36D4 _ 0F B6. 00
        movzx   eax, al                                 ; 36D7 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 36DA _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 36DD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 36E0 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 36E3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 36E6 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 36E9 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 36EC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 36EF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 36F2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36F5 _ 8B. 40, 0C
        cmp     edx, eax                                ; 36F8 _ 39. C2
        jl      ?_179                                   ; 36FA _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 36FC _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 36FF _ C7. 40, 04, 00000000
?_179:  mov     eax, dword [ebp+8H]                     ; 3706 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3709 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 370C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 370F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3712 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3715 _ 8B. 45, FC
?_180:  leave                                           ; 3718 _ C9
        ret                                             ; 3719 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 371A _ 55
        mov     ebp, esp                                ; 371B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 371D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3720 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3723 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3726 _ 8B. 40, 10
        sub     edx, eax                                ; 3729 _ 29. C2
        mov     eax, edx                                ; 372B _ 89. D0
        pop     ebp                                     ; 372D _ 5D
        ret                                             ; 372E _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 372F _ 55
        mov     ebp, esp                                ; 3730 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3732 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_181                                   ; 3739 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 373B _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3742 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3745 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3748 _ 89. 45, 0C
?_181:  mov     eax, dword [ebp+0CH]                    ; 374B _ 8B. 45, 0C
        mov     edx, eax                                ; 374E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3750 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3753 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3756 _ 8B. 45, 10
        mov     edx, eax                                ; 3759 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 375B _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 375E _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3762 _ 8B. 45, 10
        sar     eax, 16                                 ; 3765 _ C1. F8, 10
        mov     edx, eax                                ; 3768 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 376A _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 376D _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3770 _ 8B. 45, 14
        mov     edx, eax                                ; 3773 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3775 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3778 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 377B _ 8B. 45, 0C
        shr     eax, 16                                 ; 377E _ C1. E8, 10
        and     eax, 0FH                                ; 3781 _ 83. E0, 0F
        mov     edx, eax                                ; 3784 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3786 _ 8B. 45, 14
        sar     eax, 8                                  ; 3789 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 378C _ 83. E0, F0
        or      eax, edx                                ; 378F _ 09. D0
        mov     edx, eax                                ; 3791 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3793 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3796 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3799 _ 8B. 45, 10
        shr     eax, 24                                 ; 379C _ C1. E8, 18
        mov     edx, eax                                ; 379F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37A1 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 37A4 _ 88. 50, 07
        nop                                             ; 37A7 _ 90
        pop     ebp                                     ; 37A8 _ 5D
        ret                                             ; 37A9 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 37AA _ 55
        mov     ebp, esp                                ; 37AB _ 89. E5
        mov     eax, dword [task_timer]                 ; 37AD _ A1, 000021C4(d)
        pop     ebp                                     ; 37B2 _ 5D
        ret                                             ; 37B3 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 37B4 _ 55
        mov     ebp, esp                                ; 37B5 _ 89. E5
        sub     esp, 16                                 ; 37B7 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 37BA _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 37C0 _ 8B. 55, 08
        mov     eax, edx                                ; 37C3 _ 89. D0
        shl     eax, 2                                  ; 37C5 _ C1. E0, 02
        add     eax, edx                                ; 37C8 _ 01. D0
        shl     eax, 2                                  ; 37CA _ C1. E0, 02
        add     eax, ecx                                ; 37CD _ 01. C8
        add     eax, 8                                  ; 37CF _ 83. C0, 08
        mov     dword [eax], 0                          ; 37D2 _ C7. 00, 00000000
        mov     ecx, dword [taskctl]                    ; 37D8 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 37DE _ 8B. 55, 08
        mov     eax, edx                                ; 37E1 _ 89. D0
        shl     eax, 2                                  ; 37E3 _ C1. E0, 02
        add     eax, edx                                ; 37E6 _ 01. D0
        shl     eax, 2                                  ; 37E8 _ C1. E0, 02
        add     eax, ecx                                ; 37EB _ 01. C8
        add     eax, 12                                 ; 37ED _ 83. C0, 0C
        mov     dword [eax], 0                          ; 37F0 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 37F6 _ C7. 45, FC, 00000000
        jmp     ?_183                                   ; 37FD _ EB, 21

?_182:  mov     ecx, dword [taskctl]                    ; 37FF _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3805 _ 8B. 55, FC
        mov     eax, edx                                ; 3808 _ 89. D0
        add     eax, eax                                ; 380A _ 01. C0
        add     eax, edx                                ; 380C _ 01. D0
        shl     eax, 3                                  ; 380E _ C1. E0, 03
        add     eax, ecx                                ; 3811 _ 01. C8
        add     eax, 16                                 ; 3813 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3816 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 381C _ 83. 45, FC, 01
?_183:  cmp     dword [ebp-4H], 2                       ; 3820 _ 83. 7D, FC, 02
        jle     ?_182                                   ; 3824 _ 7E, D9
        nop                                             ; 3826 _ 90
        leave                                           ; 3827 _ C9
        ret                                             ; 3828 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3829 _ 55
        mov     ebp, esp                                ; 382A _ 89. E5
        sub     esp, 24                                 ; 382C _ 83. EC, 18
        call    get_addr_gdt                            ; 382F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3834 _ 89. 45, F0
        sub     esp, 8                                  ; 3837 _ 83. EC, 08
        push    668                                     ; 383A _ 68, 0000029C
        push    dword [ebp+8H]                          ; 383F _ FF. 75, 08
        call    memman_alloc_4K                         ; 3842 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3847 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 384A _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 384F _ C7. 45, EC, 00000000
        jmp     ?_185                                   ; 3856 _ EB, 73

?_184:  mov     edx, dword [taskctl]                    ; 3858 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 385E _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3861 _ 6B. C0, 7C
        add     eax, edx                                ; 3864 _ 01. D0
        add     eax, 72                                 ; 3866 _ 83. C0, 48
        mov     dword [eax], 0                          ; 3869 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 386F _ 8B. 45, EC
        add     eax, 7                                  ; 3872 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3875 _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 387B _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3882 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3885 _ 6B. C0, 7C
        add     eax, ecx                                ; 3888 _ 01. C8
        add     eax, 68                                 ; 388A _ 83. C0, 44
        mov     dword [eax], edx                        ; 388D _ 89. 10
        mov     eax, dword [taskctl]                    ; 388F _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 3894 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 3897 _ 6B. D2, 7C
        add     edx, 80                                 ; 389A _ 83. C2, 50
        add     eax, edx                                ; 389D _ 01. D0
        add     eax, 8                                  ; 389F _ 83. C0, 08
        mov     ecx, eax                                ; 38A2 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 38A4 _ 8B. 45, EC
        add     eax, 7                                  ; 38A7 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 38AA _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 38B1 _ 8B. 45, F0
        add     eax, edx                                ; 38B4 _ 01. D0
        push    137                                     ; 38B6 _ 68, 00000089
        push    ecx                                     ; 38BB _ 51
        push    103                                     ; 38BC _ 6A, 67
        push    eax                                     ; 38BE _ 50
        call    set_segmdesc                            ; 38BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38C4 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 38C7 _ 83. 45, EC, 01
?_185:  cmp     dword [ebp-14H], 4                      ; 38CB _ 83. 7D, EC, 04
        jle     ?_184                                   ; 38CF _ 7E, 87
        call    task_alloc                              ; 38D1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 38D6 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 38D9 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 38DC _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 38E3 _ 8B. 45, F4
        mov     dword [eax+8H], 100                     ; 38E6 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-0CH]                    ; 38ED _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 38F0 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 38F7 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 38FA _ FF. 75, F4
        call    task_add                                ; 38FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3902 _ 83. C4, 10
        call    task_switchsub                          ; 3905 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 390A _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 390D _ 8B. 00
        sub     esp, 12                                 ; 390F _ 83. EC, 0C
        push    eax                                     ; 3912 _ 50
        call    load_tr                                 ; 3913 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3918 _ 83. C4, 10
        call    timer_alloc                             ; 391B _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3920 _ A3, 000021C4(d)
        mov     eax, dword [ebp-0CH]                    ; 3925 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3928 _ 8B. 40, 08
        mov     edx, eax                                ; 392B _ 89. C2
        mov     eax, dword [task_timer]                 ; 392D _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3932 _ 83. EC, 08
        push    edx                                     ; 3935 _ 52
        push    eax                                     ; 3936 _ 50
        call    timer_setTime                           ; 3937 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 393C _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 393F _ 8B. 45, F4
        leave                                           ; 3942 _ C9
        ret                                             ; 3943 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3944 _ 55
        mov     ebp, esp                                ; 3945 _ 89. E5
        sub     esp, 16                                 ; 3947 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 394A _ C7. 45, F8, 00000000
        jmp     ?_188                                   ; 3951 _ E9, 000000E1

?_186:  mov     edx, dword [taskctl]                    ; 3956 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 395C _ 8B. 45, F8
        imul    eax, eax, 124                           ; 395F _ 6B. C0, 7C
        add     eax, edx                                ; 3962 _ 01. D0
        add     eax, 72                                 ; 3964 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 3967 _ 8B. 00
        test    eax, eax                                ; 3969 _ 85. C0
        jne     ?_187                                   ; 396B _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3971 _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 3976 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3979 _ 6B. D2, 7C
        add     edx, 64                                 ; 397C _ 83. C2, 40
        add     eax, edx                                ; 397F _ 01. D0
        add     eax, 4                                  ; 3981 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 3984 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3987 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 398A _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3991 _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3994 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 399B _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 399E _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 39A5 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 39A8 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 39AF _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 39B2 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 39B9 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 39BC _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 39C3 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 39C6 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 39CD _ 8B. 45, F8
        add     eax, 1                                  ; 39D0 _ 83. C0, 01
        shl     eax, 9                                  ; 39D3 _ C1. E0, 09
        mov     edx, eax                                ; 39D6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 39D8 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 39DB _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 39DE _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 39E1 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 39E8 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 39EB _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 39F2 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 39F5 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 39FC _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 39FF _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A06 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3A09 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A10 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3A13 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A1A _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3A1D _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A24 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3A27 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3A2E _ 8B. 45, FC
        jmp     ?_189                                   ; 3A31 _ EB, 13

?_187:  add     dword [ebp-8H], 1                       ; 3A33 _ 83. 45, F8, 01
?_188:  cmp     dword [ebp-8H], 4                       ; 3A37 _ 83. 7D, F8, 04
        jle     ?_186                                   ; 3A3B _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3A41 _ B8, 00000000
?_189:  leave                                           ; 3A46 _ C9
        ret                                             ; 3A47 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3A48 _ 55
        mov     ebp, esp                                ; 3A49 _ 89. E5
        sub     esp, 8                                  ; 3A4B _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3A4E _ 83. 7D, 0C, 00
        jns     ?_190                                   ; 3A52 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3A54 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A57 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3A5A _ 89. 45, 0C
?_190:  cmp     dword [ebp+10H], 0                      ; 3A5D _ 83. 7D, 10, 00
        jle     ?_191                                   ; 3A61 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3A63 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3A66 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3A69 _ 89. 50, 08
?_191:  mov     eax, dword [ebp+8H]                     ; 3A6C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A6F _ 8B. 40, 04
        cmp     eax, 2                                  ; 3A72 _ 83. F8, 02
        jnz     ?_192                                   ; 3A75 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3A77 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A7A _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3A7D _ 39. 45, 0C
        jz      ?_192                                   ; 3A80 _ 74, 0E
        sub     esp, 12                                 ; 3A82 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3A85 _ FF. 75, 08
        call    task_remove                             ; 3A88 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A8D _ 83. C4, 10
?_192:  mov     eax, dword [ebp+8H]                     ; 3A90 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A93 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3A96 _ 83. F8, 02
        jz      ?_193                                   ; 3A99 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3A9B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3A9E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3AA1 _ 89. 50, 0C
        sub     esp, 12                                 ; 3AA4 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3AA7 _ FF. 75, 08
        call    task_add                                ; 3AAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3AAF _ 83. C4, 10
?_193:  mov     eax, dword [taskctl]                    ; 3AB2 _ A1, 000021C8(d)
        mov     dword [eax+4H], 1                       ; 3AB7 _ C7. 40, 04, 00000001
        nop                                             ; 3ABE _ 90
        leave                                           ; 3ABF _ C9
        ret                                             ; 3AC0 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3AC1 _ 55
        mov     ebp, esp                                ; 3AC2 _ 89. E5
        sub     esp, 24                                 ; 3AC4 _ 83. EC, 18
        mov     ecx, dword [taskctl]                    ; 3AC7 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3ACD _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 3AD2 _ 8B. 10
        mov     eax, edx                                ; 3AD4 _ 89. D0
        shl     eax, 2                                  ; 3AD6 _ C1. E0, 02
        add     eax, edx                                ; 3AD9 _ 01. D0
        shl     eax, 2                                  ; 3ADB _ C1. E0, 02
        add     eax, ecx                                ; 3ADE _ 01. C8
        add     eax, 8                                  ; 3AE0 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3AE3 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3AE6 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3AE9 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3AEC _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3AEF _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3AF3 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3AF6 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3AF9 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3AFC _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3AFF _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3B02 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B05 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B08 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B0B _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3B0E _ 8B. 00
        cmp     edx, eax                                ; 3B10 _ 39. C2
        jnz     ?_194                                   ; 3B12 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3B14 _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3B17 _ C7. 40, 04, 00000000
?_194:  mov     eax, dword [taskctl]                    ; 3B1E _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 3B23 _ 8B. 40, 04
        test    eax, eax                                ; 3B26 _ 85. C0
        jz      ?_195                                   ; 3B28 _ 74, 24
        call    task_switchsub                          ; 3B2A _ E8, FFFFFFFC(rel)
        mov     ecx, dword [taskctl]                    ; 3B2F _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3B35 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 3B3A _ 8B. 10
        mov     eax, edx                                ; 3B3C _ 89. D0
        shl     eax, 2                                  ; 3B3E _ C1. E0, 02
        add     eax, edx                                ; 3B41 _ 01. D0
        shl     eax, 2                                  ; 3B43 _ C1. E0, 02
        add     eax, ecx                                ; 3B46 _ 01. C8
        add     eax, 8                                  ; 3B48 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3B4B _ 89. 45, EC
?_195:  mov     eax, dword [ebp-14H]                    ; 3B4E _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B51 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B54 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3B57 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3B5B _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3B5E _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3B61 _ 8B. 40, 08
        mov     edx, eax                                ; 3B64 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3B66 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3B6B _ 83. EC, 08
        push    edx                                     ; 3B6E _ 52
        push    eax                                     ; 3B6F _ 50
        call    timer_setTime                           ; 3B70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B75 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3B78 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3B7B _ 3B. 45, F0
        jz      ?_196                                   ; 3B7E _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3B80 _ 83. 7D, F4, 00
        jz      ?_196                                   ; 3B84 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3B86 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3B89 _ 8B. 00
        sub     esp, 8                                  ; 3B8B _ 83. EC, 08
        push    eax                                     ; 3B8E _ 50
        push    0                                       ; 3B8F _ 6A, 00
        call    farjmp                                  ; 3B91 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B96 _ 83. C4, 10
        nop                                             ; 3B99 _ 90
?_196:  nop                                             ; 3B9A _ 90
        leave                                           ; 3B9B _ C9
        ret                                             ; 3B9C _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3B9D _ 55
        mov     ebp, esp                                ; 3B9E _ 89. E5
        sub     esp, 24                                 ; 3BA0 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3BA3 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3BAA _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3BAE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3BB1 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3BB4 _ 83. F8, 02
        jnz     ?_197                                   ; 3BB7 _ 75, 4C
        call    task_now                                ; 3BB9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3BBE _ 89. 45, F4
        sub     esp, 12                                 ; 3BC1 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3BC4 _ FF. 75, 08
        call    task_remove                             ; 3BC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3BCC _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3BCF _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3BD3 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3BD6 _ 3B. 45, F4
        jnz     ?_197                                   ; 3BD9 _ 75, 2A
        call    task_switchsub                          ; 3BDB _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3BE0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3BE5 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3BE8 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3BEC _ 83. 7D, F4, 00
        jz      ?_197                                   ; 3BF0 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3BF2 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3BF5 _ 8B. 00
        sub     esp, 8                                  ; 3BF7 _ 83. EC, 08
        push    eax                                     ; 3BFA _ 50
        push    0                                       ; 3BFB _ 6A, 00
        call    farjmp                                  ; 3BFD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C02 _ 83. C4, 10
?_197:  movsx   eax, byte [ebp-0DH]                     ; 3C05 _ 0F BE. 45, F3
        leave                                           ; 3C09 _ C9
        ret                                             ; 3C0A _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3C0B _ 55
        mov     ebp, esp                                ; 3C0C _ 89. E5
        sub     esp, 16                                 ; 3C0E _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3C11 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3C17 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 3C1C _ 8B. 10
        mov     eax, edx                                ; 3C1E _ 89. D0
        shl     eax, 2                                  ; 3C20 _ C1. E0, 02
        add     eax, edx                                ; 3C23 _ 01. D0
        shl     eax, 2                                  ; 3C25 _ C1. E0, 02
        add     eax, ecx                                ; 3C28 _ 01. C8
        add     eax, 8                                  ; 3C2A _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3C2D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3C30 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3C33 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3C36 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3C39 _ 8B. 44 90, 08
        leave                                           ; 3C3D _ C9
        ret                                             ; 3C3E _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3C3F _ 55
        mov     ebp, esp                                ; 3C40 _ 89. E5
        sub     esp, 16                                 ; 3C42 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3C45 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3C4B _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3C4E _ 8B. 50, 0C
        mov     eax, edx                                ; 3C51 _ 89. D0
        shl     eax, 2                                  ; 3C53 _ C1. E0, 02
        add     eax, edx                                ; 3C56 _ 01. D0
        shl     eax, 2                                  ; 3C58 _ C1. E0, 02
        add     eax, ecx                                ; 3C5B _ 01. C8
        add     eax, 8                                  ; 3C5D _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3C60 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3C63 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3C66 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3C68 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3C6B _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3C6E _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3C72 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3C75 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3C77 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3C7A _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3C7D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3C7F _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3C82 _ C7. 40, 04, 00000002
        nop                                             ; 3C89 _ 90
        leave                                           ; 3C8A _ C9
        ret                                             ; 3C8B _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3C8C _ 55
        mov     ebp, esp                                ; 3C8D _ 89. E5
        sub     esp, 16                                 ; 3C8F _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3C92 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3C98 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3C9B _ 8B. 50, 0C
        mov     eax, edx                                ; 3C9E _ 89. D0
        shl     eax, 2                                  ; 3CA0 _ C1. E0, 02
        add     eax, edx                                ; 3CA3 _ 01. D0
        shl     eax, 2                                  ; 3CA5 _ C1. E0, 02
        add     eax, ecx                                ; 3CA8 _ 01. C8
        add     eax, 8                                  ; 3CAA _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3CAD _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3CB0 _ C7. 45, F8, 00000000
        jmp     ?_200                                   ; 3CB7 _ EB, 23

?_198:  mov     eax, dword [ebp-4H]                     ; 3CB9 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3CBC _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3CBF _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3CC3 _ 39. 45, 08
        jnz     ?_199                                   ; 3CC6 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3CC8 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3CCB _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3CCE _ C7. 44 90, 08, 00000000
        jmp     ?_201                                   ; 3CD6 _ EB, 0E

?_199:  add     dword [ebp-8H], 1                       ; 3CD8 _ 83. 45, F8, 01
?_200:  mov     eax, dword [ebp-4H]                     ; 3CDC _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3CDF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3CE1 _ 39. 45, F8
        jl      ?_198                                   ; 3CE4 _ 7C, D3
?_201:  mov     eax, dword [ebp-4H]                     ; 3CE6 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3CE9 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3CEB _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3CEE _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3CF1 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3CF3 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3CF6 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3CF9 _ 39. 45, F8
        jge     ?_202                                   ; 3CFC _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3CFE _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3D01 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3D04 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3D07 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3D0A _ 89. 50, 04
?_202:  mov     eax, dword [ebp-4H]                     ; 3D0D _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3D10 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3D13 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D16 _ 8B. 00
        cmp     edx, eax                                ; 3D18 _ 39. C2
        jl      ?_203                                   ; 3D1A _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3D1C _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3D1F _ C7. 40, 04, 00000000
?_203:  mov     eax, dword [ebp+8H]                     ; 3D26 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3D29 _ C7. 40, 04, 00000001
        jmp     ?_205                                   ; 3D30 _ EB, 1B

?_204:  mov     eax, dword [ebp-8H]                     ; 3D32 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3D35 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3D38 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3D3B _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3D3F _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3D42 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3D45 _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3D49 _ 83. 45, F8, 01
?_205:  mov     eax, dword [ebp-4H]                     ; 3D4D _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D50 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3D52 _ 39. 45, F8
        jl      ?_204                                   ; 3D55 _ 7C, DB
        nop                                             ; 3D57 _ 90
        leave                                           ; 3D58 _ C9
        ret                                             ; 3D59 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3D5A _ 55
        mov     ebp, esp                                ; 3D5B _ 89. E5
        sub     esp, 16                                 ; 3D5D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3D60 _ C7. 45, FC, 00000000
        jmp     ?_207                                   ; 3D67 _ EB, 22

?_206:  mov     ecx, dword [taskctl]                    ; 3D69 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3D6F _ 8B. 55, FC
        mov     eax, edx                                ; 3D72 _ 89. D0
        shl     eax, 2                                  ; 3D74 _ C1. E0, 02
        add     eax, edx                                ; 3D77 _ 01. D0
        shl     eax, 2                                  ; 3D79 _ C1. E0, 02
        add     eax, ecx                                ; 3D7C _ 01. C8
        add     eax, 8                                  ; 3D7E _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3D81 _ 8B. 00
        test    eax, eax                                ; 3D83 _ 85. C0
        jg      ?_208                                   ; 3D85 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3D87 _ 83. 45, FC, 01
?_207:  cmp     dword [ebp-4H], 2                       ; 3D8B _ 83. 7D, FC, 02
        jle     ?_206                                   ; 3D8F _ 7E, D8
        jmp     ?_209                                   ; 3D91 _ EB, 01

?_208:  nop                                             ; 3D93 _ 90
?_209:  mov     eax, dword [taskctl]                    ; 3D94 _ A1, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3D99 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3D9C _ 89. 10
        mov     eax, dword [taskctl]                    ; 3D9E _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3DA3 _ C7. 40, 04, 00000000
        nop                                             ; 3DAA _ 90
        leave                                           ; 3DAB _ C9
        ret                                             ; 3DAC _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3DAD _ 55
        mov     ebp, esp                                ; 3DAE _ 89. E5
        mov     eax, dword [taskctl]                    ; 3DB0 _ A1, 000021C8(d)
        pop     ebp                                     ; 3DB5 _ 5D
        ret                                             ; 3DB6 _ C3
; getTaskctl End of function



?_210:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_211:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_212:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_213:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_214:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_215:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_216:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_217:                                                  ; byte
        db 44H, 61H, 6EH, 73H, 00H                      ; 003B _ Dans.

?_218:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0040 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0048 _ sk B.

?_219:                                                  ; byte
        db 42H, 00H                                     ; 004D _ B.

?_220:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 004F _ Page is:
        db 20H, 00H                                     ; 0057 _  .

?_221:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0059 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0061 _ Low: .

?_222:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0067 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 006F _ High: .

?_223:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0076 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 007E _ w: .

?_224:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0082 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 008A _ gh: .

?_225:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 008F _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_226:  db 00H                                          ; 0002 _ .

?_227:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2286: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2348:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2403:                                            ; byte
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

closebtn.2556:                                          ; byte
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

?_228:  resw    1                                       ; 0004

?_229:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

?_230:  resd    1                                       ; 0020

mouseInfo:                                              ; byte
        resb    28                                      ; 0024

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_231:  resd    1                                       ; 00EC

mx:     resd    1                                       ; 00F0

my:     resd    1                                       ; 00F4

buf_back: resd  2                                       ; 00F8

buf_mouse:                                              ; byte
        resb    256                                     ; 0100

timerInfo:                                              ; byte
        resb    28                                      ; 0200

timerbuf: resq  1                                       ; 021C

shtctl: resd    1                                       ; 0224

sheet_win:                                              ; dword
        resd    1                                       ; 0228

sheet_back:                                             ; dword
        resd    1                                       ; 022C

sheet_mouse:                                            ; dword
        resd    1                                       ; 0230

task_console:                                           ; dword
        resd    1                                       ; 0234

task_a.2281:                                            ; dword
        resd    1                                       ; 0238

cnt.2282: resd  1                                       ; 023C

line.2285:                                              ; dword
        resd    1                                       ; 0240

task_b.2271:                                            ; oword
        resb    16                                      ; 0244

str.2446:                                               ; byte
        resb    1                                       ; 0254

?_232:  resb    9                                       ; 0255

?_233:  resb    2                                       ; 025E

line.2479:                                              ; dword
        resd    1                                       ; 0260

pos.2478: resd  7                                       ; 0264

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_234:                                                  ; byte
        resb    4                                       ; 0284

?_235:                                                  ; byte
        resb    4                                       ; 0288

?_236:                                                  ; byte
        resb    4                                       ; 028C

?_237:                                                  ; byte
        resb    7988                                    ; 0290

task_timer:                                             ; dword
        resd    1                                       ; 21C4

taskctl: resd   1                                       ; 21C8


