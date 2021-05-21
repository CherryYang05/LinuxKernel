; Disassembly of file: ckernel.o
; Fri May 21 17:35:49 2021
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
        jmp     ?_016                                   ; 06C2 _ E9, 00000332

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
        jnz     ?_012                                   ; 0889 _ 75, 62
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
        call    io_sti                                  ; 08E3 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08E8 _ E9, FFFFFAC3

?_012:  cmp     dword [ebp-34H], 2                      ; 08ED _ 83. 7D, CC, 02
        jnz     ?_013                                   ; 08F1 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 08F3 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 08F9 _ A1, 00000224(d)
        sub     esp, 8                                  ; 08FE _ 83. EC, 08
        push    ?_215                                   ; 0901 _ 68, 00000032(d)
        push    7                                       ; 0906 _ 6A, 07
        push    32                                      ; 0908 _ 6A, 20
        push    0                                       ; 090A _ 6A, 00
        push    edx                                     ; 090C _ 52
        push    eax                                     ; 090D _ 50
        call    showString                              ; 090E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0913 _ 83. C4, 20
        jmp     ?_001                                   ; 0916 _ E9, FFFFFA95

?_013:  cmp     dword [ebp-34H], 0                      ; 091B _ 83. 7D, CC, 00
        jz      ?_014                                   ; 091F _ 74, 1E
        sub     esp, 4                                  ; 0921 _ 83. EC, 04
        push    0                                       ; 0924 _ 6A, 00
        push    timerInfo                               ; 0926 _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 092B _ FF. 75, B0
        call    timer_init                              ; 092E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0933 _ 83. C4, 10
        mov     dword [ebp-78H], 0                      ; 0936 _ C7. 45, 88, 00000000
        jmp     ?_015                                   ; 093D _ EB, 1C

?_014:  sub     esp, 4                                  ; 093F _ 83. EC, 04
        push    1                                       ; 0942 _ 6A, 01
        push    timerInfo                               ; 0944 _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 0949 _ FF. 75, B0
        call    timer_init                              ; 094C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0951 _ 83. C4, 10
        mov     dword [ebp-78H], 7                      ; 0954 _ C7. 45, 88, 00000007
?_015:  sub     esp, 8                                  ; 095B _ 83. EC, 08
        push    50                                      ; 095E _ 6A, 32
        push    dword [ebp-50H]                         ; 0960 _ FF. 75, B0
        call    timer_setTime                           ; 0963 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0968 _ 83. C4, 10
        mov     eax, dword [pos.2286]                   ; 096B _ A1, 00000074(d)
        add     eax, 40                                 ; 0970 _ 83. C0, 28
        mov     dword [ebp-8CH], eax                    ; 0973 _ 89. 85, FFFFFF74
        mov     eax, dword [line.2285]                  ; 0979 _ A1, 00000240(d)
        lea     edi, [eax+10H]                          ; 097E _ 8D. 78, 10
        mov     eax, dword [pos.2286]                   ; 0981 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0986 _ 8D. 70, 1A
        mov     eax, dword [line.2285]                  ; 0989 _ A1, 00000240(d)
        lea     ebx, [eax+0AH]                          ; 098E _ 8D. 58, 0A
        mov     eax, dword [ebp-78H]                    ; 0991 _ 8B. 45, 88
        movzx   ecx, al                                 ; 0994 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0997 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 099C _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 099F _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 09A4 _ 8B. 00
        sub     esp, 4                                  ; 09A6 _ 83. EC, 04
        push    dword [ebp-8CH]                         ; 09A9 _ FF. B5, FFFFFF74
        push    edi                                     ; 09AF _ 57
        push    esi                                     ; 09B0 _ 56
        push    ebx                                     ; 09B1 _ 53
        push    ecx                                     ; 09B2 _ 51
        push    edx                                     ; 09B3 _ 52
        push    eax                                     ; 09B4 _ 50
        call    boxfill8                                ; 09B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09BA _ 83. C4, 20
        mov     eax, dword [pos.2286]                   ; 09BD _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 09C2 _ 8D. 78, 2A
        mov     eax, dword [line.2285]                  ; 09C5 _ A1, 00000240(d)
        lea     esi, [eax+12H]                          ; 09CA _ 8D. 70, 12
        mov     eax, dword [pos.2286]                   ; 09CD _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09D2 _ 8D. 58, 1A
        mov     eax, dword [line.2285]                  ; 09D5 _ A1, 00000240(d)
        lea     ecx, [eax+0AH]                          ; 09DA _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 09DD _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 09E3 _ A1, 00000224(d)
        sub     esp, 8                                  ; 09E8 _ 83. EC, 08
        push    edi                                     ; 09EB _ 57
        push    esi                                     ; 09EC _ 56
        push    ebx                                     ; 09ED _ 53
        push    ecx                                     ; 09EE _ 51
        push    edx                                     ; 09EF _ 52
        push    eax                                     ; 09F0 _ 50
        call    sheet_refresh                           ; 09F1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09F6 _ 83. C4, 20
?_016:  jmp     ?_001                                   ; 09F9 _ E9, FFFFF9B2
; CMain End of function

launch_console:; Function begin
        push    ebp                                     ; 09FE _ 55
        mov     ebp, esp                                ; 09FF _ 89. E5
        sub     esp, 24                                 ; 0A01 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0A04 _ A1, 00000224(d)
        sub     esp, 12                                 ; 0A09 _ 83. EC, 0C
        push    eax                                     ; 0A0C _ 50
        call    sheet_alloc                             ; 0A0D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A12 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0A15 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0A18 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0A1D _ 83. EC, 08
        push    46080                                   ; 0A20 _ 68, 0000B400
        push    eax                                     ; 0A25 _ 50
        call    memman_alloc_4K                         ; 0A26 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A2B _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0A2E _ 89. 45, EC
        sub     esp, 12                                 ; 0A31 _ 83. EC, 0C
        push    99                                      ; 0A34 _ 6A, 63
        push    180                                     ; 0A36 _ 68, 000000B4
        push    256                                     ; 0A3B _ 68, 00000100
        push    dword [ebp-14H]                         ; 0A40 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0A43 _ FF. 75, E8
        call    sheet_setbuf                            ; 0A46 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A4B _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0A4E _ A1, 00000224(d)
        push    0                                       ; 0A53 _ 6A, 00
        push    ?_212                                   ; 0A55 _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0A5A _ FF. 75, E8
        push    eax                                     ; 0A5D _ 50
        call    make_window8                            ; 0A5E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A63 _ 83. C4, 10
        sub     esp, 8                                  ; 0A66 _ 83. EC, 08
        push    0                                       ; 0A69 _ 6A, 00
        push    144                                     ; 0A6B _ 68, 00000090
        push    240                                     ; 0A70 _ 68, 000000F0
        push    28                                      ; 0A75 _ 6A, 1C
        push    8                                       ; 0A77 _ 6A, 08
        push    dword [ebp-18H]                         ; 0A79 _ FF. 75, E8
        call    make_textbox8                           ; 0A7C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A81 _ 83. C4, 20
        call    task_alloc                              ; 0A84 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0A89 _ 89. 45, F0
        call    get_code32_addr                         ; 0A8C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0A91 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0A94 _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 0A97 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 0A9E _ 8B. 45, F0
        mov     dword [eax+78H], 1073741824             ; 0AA1 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0AA8 _ 8B. 45, F4
        neg     eax                                     ; 0AAB _ F7. D8
        add     eax, console_task                       ; 0AAD _ 05, 00000000(d)
        mov     edx, eax                                ; 0AB2 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0AB4 _ 8B. 45, F0
        mov     dword [eax+34H], edx                    ; 0AB7 _ 89. 50, 34
        mov     eax, dword [ebp-10H]                    ; 0ABA _ 8B. 45, F0
        mov     dword [eax+5CH], 0                      ; 0ABD _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0AC4 _ 8B. 45, F0
        mov     dword [eax+60H], 8                      ; 0AC7 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp-10H]                    ; 0ACE _ 8B. 45, F0
        mov     dword [eax+64H], 32                     ; 0AD1 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp-10H]                    ; 0AD8 _ 8B. 45, F0
        mov     dword [eax+68H], 24                     ; 0ADB _ C7. 40, 68, 00000018
        mov     eax, dword [ebp-10H]                    ; 0AE2 _ 8B. 45, F0
        mov     dword [eax+6CH], 0                      ; 0AE5 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0AEC _ 8B. 45, F0
        mov     dword [eax+70H], 16                     ; 0AEF _ C7. 40, 70, 00000010
        mov     eax, dword [ebp-10H]                    ; 0AF6 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0AF9 _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 0AFC _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0AFF _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 0B02 _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 0B05 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0B08 _ 8B. 40, 4C
        add     eax, 4                                  ; 0B0B _ 83. C0, 04
        mov     edx, eax                                ; 0B0E _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0B10 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0B13 _ 89. 02
        mov     eax, dword [ebp-10H]                    ; 0B15 _ 8B. 45, F0
        mov     dword [task_console], eax               ; 0B18 _ A3, 00000234(d)
        sub     esp, 4                                  ; 0B1D _ 83. EC, 04
        push    5                                       ; 0B20 _ 6A, 05
        push    1                                       ; 0B22 _ 6A, 01
        push    dword [ebp-10H]                         ; 0B24 _ FF. 75, F0
        call    task_run                                ; 0B27 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B2C _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0B2F _ A1, 00000224(d)
        push    150                                     ; 0B34 _ 68, 00000096
        push    360                                     ; 0B39 _ 68, 00000168
        push    dword [ebp-18H]                         ; 0B3E _ FF. 75, E8
        push    eax                                     ; 0B41 _ 50
        call    sheet_slide                             ; 0B42 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B47 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0B4A _ A1, 00000224(d)
        sub     esp, 4                                  ; 0B4F _ 83. EC, 04
        push    3                                       ; 0B52 _ 6A, 03
        push    dword [ebp-18H]                         ; 0B54 _ FF. 75, E8
        push    eax                                     ; 0B57 _ 50
        call    sheet_level_updown                      ; 0B58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5D _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0B60 _ 8B. 45, E8
        leave                                           ; 0B63 _ C9
        ret                                             ; 0B64 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0B65 _ 55
        mov     ebp, esp                                ; 0B66 _ 89. E5
        push    esi                                     ; 0B68 _ 56
        push    ebx                                     ; 0B69 _ 53
        sub     esp, 176                                ; 0B6A _ 81. EC, 000000B0
        mov     eax, dword [ebp+8H]                     ; 0B70 _ 8B. 45, 08
        mov     dword [ebp-0ACH], eax                   ; 0B73 _ 89. 85, FFFFFF54
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0B79 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0B7F _ 89. 45, F4
        xor     eax, eax                                ; 0B82 _ 31. C0
        call    task_now                                ; 0B84 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-9CH], eax                    ; 0B89 _ 89. 85, FFFFFF64
        mov     dword [ebp-0A4H], 8                     ; 0B8F _ C7. 85, FFFFFF5C, 00000008
        mov     dword [ebp-0A0H], 0                     ; 0B99 _ C7. 85, FFFFFF60, 00000000
        mov     eax, dword [ebp-9CH]                    ; 0BA3 _ 8B. 85, FFFFFF64
        lea     edx, [eax+10H]                          ; 0BA9 _ 8D. 50, 10
        push    dword [ebp-9CH]                         ; 0BAC _ FF. B5, FFFFFF64
        lea     eax, [ebp-8CH]                          ; 0BB2 _ 8D. 85, FFFFFF74
        push    eax                                     ; 0BB8 _ 50
        push    128                                     ; 0BB9 _ 68, 00000080
        push    edx                                     ; 0BBE _ 52
        call    fifo8_init                              ; 0BBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BC4 _ 83. C4, 10
        call    timer_alloc                             ; 0BC7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-98H], eax                    ; 0BCC _ 89. 85, FFFFFF68
        mov     eax, dword [ebp-9CH]                    ; 0BD2 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0BD8 _ 83. C0, 10
        sub     esp, 4                                  ; 0BDB _ 83. EC, 04
        push    1                                       ; 0BDE _ 6A, 01
        push    eax                                     ; 0BE0 _ 50
        push    dword [ebp-98H]                         ; 0BE1 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0BE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BEC _ 83. C4, 10
        sub     esp, 8                                  ; 0BEF _ 83. EC, 08
        push    50                                      ; 0BF2 _ 6A, 32
        push    dword [ebp-98H]                         ; 0BF4 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0BFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BFF _ 83. C4, 10
        mov     dword [ebp-94H], 0                      ; 0C02 _ C7. 85, FFFFFF6C, 00000000
        mov     eax, dword [shtctl]                     ; 0C0C _ A1, 00000224(d)
        sub     esp, 8                                  ; 0C11 _ 83. EC, 08
        push    ?_216                                   ; 0C14 _ 68, 00000039(d)
        push    7                                       ; 0C19 _ 6A, 07
        push    28                                      ; 0C1B _ 6A, 1C
        push    8                                       ; 0C1D _ 6A, 08
        push    dword [ebp-0ACH]                        ; 0C1F _ FF. B5, FFFFFF54
        push    eax                                     ; 0C25 _ 50
        call    showString                              ; 0C26 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C2B _ 83. C4, 20
?_017:  call    io_cli                                  ; 0C2E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-9CH]                    ; 0C33 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0C39 _ 83. C0, 10
        sub     esp, 12                                 ; 0C3C _ 83. EC, 0C
        push    eax                                     ; 0C3F _ 50
        call    fifo8_status                            ; 0C40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C45 _ 83. C4, 10
        test    eax, eax                                ; 0C48 _ 85. C0
        jnz     ?_018                                   ; 0C4A _ 75, 07
        call    io_sti                                  ; 0C4C _ E8, FFFFFFFC(rel)
        jmp     ?_017                                   ; 0C51 _ EB, DB

?_018:  mov     eax, dword [ebp-9CH]                    ; 0C53 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0C59 _ 83. C0, 10
        sub     esp, 12                                 ; 0C5C _ 83. EC, 0C
        push    eax                                     ; 0C5F _ 50
        call    fifo8_get                               ; 0C60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C65 _ 83. C4, 10
        mov     dword [ebp-94H], eax                    ; 0C68 _ 89. 85, FFFFFF6C
        call    io_sti                                  ; 0C6E _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-94H], 1                      ; 0C73 _ 83. BD, FFFFFF6C, 01
        jg      ?_021                                   ; 0C7A _ 0F 8F, 000000E9
        cmp     dword [ebp-94H], 1                      ; 0C80 _ 83. BD, FFFFFF6C, 01
        jnz     ?_019                                   ; 0C87 _ 75, 29
        mov     eax, dword [ebp-9CH]                    ; 0C89 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0C8F _ 83. C0, 10
        sub     esp, 4                                  ; 0C92 _ 83. EC, 04
        push    0                                       ; 0C95 _ 6A, 00
        push    eax                                     ; 0C97 _ 50
        push    dword [ebp-98H]                         ; 0C98 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0C9E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CA3 _ 83. C4, 10
        mov     dword [ebp-0A0H], 7                     ; 0CA6 _ C7. 85, FFFFFF60, 00000007
        jmp     ?_020                                   ; 0CB0 _ EB, 30

?_019:  cmp     dword [ebp-94H], 0                      ; 0CB2 _ 83. BD, FFFFFF6C, 00
        jnz     ?_020                                   ; 0CB9 _ 75, 27
        mov     eax, dword [ebp-9CH]                    ; 0CBB _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0CC1 _ 83. C0, 10
        sub     esp, 4                                  ; 0CC4 _ 83. EC, 04
        push    1                                       ; 0CC7 _ 6A, 01
        push    eax                                     ; 0CC9 _ 50
        push    dword [ebp-98H]                         ; 0CCA _ FF. B5, FFFFFF68
        call    timer_init                              ; 0CD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD5 _ 83. C4, 10
        mov     dword [ebp-0A0H], 0                     ; 0CD8 _ C7. 85, FFFFFF60, 00000000
?_020:  sub     esp, 8                                  ; 0CE2 _ 83. EC, 08
        push    50                                      ; 0CE5 _ 6A, 32
        push    dword [ebp-98H]                         ; 0CE7 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0CED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CF2 _ 83. C4, 10
        mov     eax, dword [ebp-0A4H]                   ; 0CF5 _ 8B. 85, FFFFFF5C
        lea     esi, [eax+10H]                          ; 0CFB _ 8D. 70, 10
        mov     eax, dword [ebp-0A4H]                   ; 0CFE _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+0AH]                          ; 0D04 _ 8D. 58, 0A
        mov     eax, dword [ebp-0A0H]                   ; 0D07 _ 8B. 85, FFFFFF60
        movzx   ecx, al                                 ; 0D0D _ 0F B6. C8
        mov     eax, dword [ebp-0ACH]                   ; 0D10 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0D16 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0D19 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0D1F _ 8B. 00
        sub     esp, 4                                  ; 0D21 _ 83. EC, 04
        push    42                                      ; 0D24 _ 6A, 2A
        push    esi                                     ; 0D26 _ 56
        push    28                                      ; 0D27 _ 6A, 1C
        push    ebx                                     ; 0D29 _ 53
        push    ecx                                     ; 0D2A _ 51
        push    edx                                     ; 0D2B _ 52
        push    eax                                     ; 0D2C _ 50
        call    boxfill8                                ; 0D2D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D32 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0D35 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0D3B _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0D3E _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0D44 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0D47 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0D4C _ 83. EC, 08
        push    44                                      ; 0D4F _ 6A, 2C
        push    ecx                                     ; 0D51 _ 51
        push    28                                      ; 0D52 _ 6A, 1C
        push    edx                                     ; 0D54 _ 52
        push    dword [ebp-0ACH]                        ; 0D55 _ FF. B5, FFFFFF54
        push    eax                                     ; 0D5B _ 50
        call    sheet_refresh                           ; 0D5C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D61 _ 83. C4, 20
        jmp     ?_017                                   ; 0D64 _ E9, FFFFFEC5

?_021:  cmp     dword [ebp-94H], 14                     ; 0D69 _ 83. BD, FFFFFF6C, 0E
        jne     ?_022                                   ; 0D70 _ 0F 85, 000000E7
        cmp     dword [ebp-0A4H], 15                    ; 0D76 _ 83. BD, FFFFFF5C, 0F
        jle     ?_022                                   ; 0D7D _ 0F 8E, 000000DA
        mov     eax, dword [ebp-0A4H]                   ; 0D83 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0D89 _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0D8C _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0D92 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0D95 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0D9B _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0D9E _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0DA4 _ 8B. 00
        sub     esp, 4                                  ; 0DA6 _ 83. EC, 04
        push    42                                      ; 0DA9 _ 6A, 2A
        push    ebx                                     ; 0DAB _ 53
        push    28                                      ; 0DAC _ 6A, 1C
        push    ecx                                     ; 0DAE _ 51
        push    0                                       ; 0DAF _ 6A, 00
        push    edx                                     ; 0DB1 _ 52
        push    eax                                     ; 0DB2 _ 50
        call    boxfill8                                ; 0DB3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DB8 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0DBB _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0DC1 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0DC4 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0DCA _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0DCD _ A1, 00000224(d)
        sub     esp, 8                                  ; 0DD2 _ 83. EC, 08
        push    44                                      ; 0DD5 _ 6A, 2C
        push    ecx                                     ; 0DD7 _ 51
        push    28                                      ; 0DD8 _ 6A, 1C
        push    edx                                     ; 0DDA _ 52
        push    dword [ebp-0ACH]                        ; 0DDB _ FF. B5, FFFFFF54
        push    eax                                     ; 0DE1 _ 50
        call    sheet_refresh                           ; 0DE2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DE7 _ 83. C4, 20
        sub     dword [ebp-0A4H], 8                     ; 0DEA _ 83. AD, FFFFFF5C, 08
        mov     eax, dword [ebp-0A4H]                   ; 0DF1 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+12H]                          ; 0DF7 _ 8D. 58, 12
        mov     eax, dword [ebp-0A4H]                   ; 0DFA _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0E00 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0E03 _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0E09 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0E0C _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0E12 _ 8B. 00
        sub     esp, 4                                  ; 0E14 _ 83. EC, 04
        push    42                                      ; 0E17 _ 6A, 2A
        push    ebx                                     ; 0E19 _ 53
        push    28                                      ; 0E1A _ 6A, 1C
        push    ecx                                     ; 0E1C _ 51
        push    0                                       ; 0E1D _ 6A, 00
        push    edx                                     ; 0E1F _ 52
        push    eax                                     ; 0E20 _ 50
        call    boxfill8                                ; 0E21 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E26 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0E29 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0E2F _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0E32 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0E38 _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0E3B _ A1, 00000224(d)
        sub     esp, 8                                  ; 0E40 _ 83. EC, 08
        push    44                                      ; 0E43 _ 6A, 2C
        push    ecx                                     ; 0E45 _ 51
        push    28                                      ; 0E46 _ 6A, 1C
        push    edx                                     ; 0E48 _ 52
        push    dword [ebp-0ACH]                        ; 0E49 _ FF. B5, FFFFFF54
        push    eax                                     ; 0E4F _ 50
        call    sheet_refresh                           ; 0E50 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E55 _ 83. C4, 20
        jmp     ?_023                                   ; 0E58 _ E9, 00000120

?_022:  mov     eax, dword [ebp-94H]                    ; 0E5D _ 8B. 85, FFFFFF6C
        add     eax, keytable                           ; 0E63 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0E68 _ 0F B6. 00
        test    al, al                                  ; 0E6B _ 84. C0
        je      ?_017                                   ; 0E6D _ 0F 84, FFFFFDBB
        cmp     dword [ebp-94H], 15                     ; 0E73 _ 83. BD, FFFFFF6C, 0F
        jle     ?_017                                   ; 0E7A _ 0F 8E, FFFFFDAE
        cmp     dword [ebp-94H], 83                     ; 0E80 _ 83. BD, FFFFFF6C, 53
        jg      ?_017                                   ; 0E87 _ 0F 8F, FFFFFDA1
        mov     eax, dword [ebp-0ACH]                   ; 0E8D _ 8B. 85, FFFFFF54
        mov     eax, dword [eax+4H]                     ; 0E93 _ 8B. 40, 04
        sub     eax, 100                                ; 0E96 _ 83. E8, 64
        cmp     dword [ebp-0A4H], eax                   ; 0E99 _ 39. 85, FFFFFF5C
        jg      ?_017                                   ; 0E9F _ 0F 8F, FFFFFD89
        mov     edx, dword [sheet_back]                 ; 0EA5 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0EAB _ A1, 00000224(d)
        sub     esp, 8                                  ; 0EB0 _ 83. EC, 08
        push    ?_217                                   ; 0EB3 _ 68, 0000003B(d)
        push    11                                      ; 0EB8 _ 6A, 0B
        push    16                                      ; 0EBA _ 6A, 10
        push    0                                       ; 0EBC _ 6A, 00
        push    edx                                     ; 0EBE _ 52
        push    eax                                     ; 0EBF _ 50
        call    showString                              ; 0EC0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EC5 _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0EC8 _ 8B. 85, FFFFFF5C
        lea     ebx, [eax+10H]                          ; 0ECE _ 8D. 58, 10
        mov     eax, dword [ebp-0A4H]                   ; 0ED1 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0ED7 _ 8D. 48, 0A
        mov     eax, dword [ebp-0ACH]                   ; 0EDA _ 8B. 85, FFFFFF54
        mov     edx, dword [eax+4H]                     ; 0EE0 _ 8B. 50, 04
        mov     eax, dword [ebp-0ACH]                   ; 0EE3 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax]                        ; 0EE9 _ 8B. 00
        sub     esp, 4                                  ; 0EEB _ 83. EC, 04
        push    42                                      ; 0EEE _ 6A, 2A
        push    ebx                                     ; 0EF0 _ 53
        push    28                                      ; 0EF1 _ 6A, 1C
        push    ecx                                     ; 0EF3 _ 51
        push    0                                       ; 0EF4 _ 6A, 00
        push    edx                                     ; 0EF6 _ 52
        push    eax                                     ; 0EF7 _ 50
        call    boxfill8                                ; 0EF8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EFD _ 83. C4, 20
        mov     eax, dword [ebp-0A4H]                   ; 0F00 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+12H]                          ; 0F06 _ 8D. 48, 12
        mov     eax, dword [ebp-0A4H]                   ; 0F09 _ 8B. 85, FFFFFF5C
        lea     edx, [eax+0AH]                          ; 0F0F _ 8D. 50, 0A
        mov     eax, dword [shtctl]                     ; 0F12 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0F17 _ 83. EC, 08
        push    44                                      ; 0F1A _ 6A, 2C
        push    ecx                                     ; 0F1C _ 51
        push    28                                      ; 0F1D _ 6A, 1C
        push    edx                                     ; 0F1F _ 52
        push    dword [ebp-0ACH]                        ; 0F20 _ FF. B5, FFFFFF54
        push    eax                                     ; 0F26 _ 50
        call    sheet_refresh                           ; 0F27 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F2C _ 83. C4, 20
        mov     eax, dword [ebp-94H]                    ; 0F2F _ 8B. 85, FFFFFF6C
        add     eax, keytable                           ; 0F35 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0F3A _ 0F B6. 00
        mov     byte [ebp-8EH], al                      ; 0F3D _ 88. 85, FFFFFF72
        mov     byte [ebp-8DH], 0                       ; 0F43 _ C6. 85, FFFFFF73, 00
        mov     eax, dword [ebp-0A4H]                   ; 0F4A _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0F50 _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 0F53 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0F58 _ 83. EC, 08
        lea     edx, [ebp-8EH]                          ; 0F5B _ 8D. 95, FFFFFF72
        push    edx                                     ; 0F61 _ 52
        push    7                                       ; 0F62 _ 6A, 07
        push    28                                      ; 0F64 _ 6A, 1C
        push    ecx                                     ; 0F66 _ 51
        push    dword [ebp-0ACH]                        ; 0F67 _ FF. B5, FFFFFF54
        push    eax                                     ; 0F6D _ 50
        call    showString                              ; 0F6E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F73 _ 83. C4, 20
        add     dword [ebp-0A4H], 8                     ; 0F76 _ 83. 85, FFFFFF5C, 08
?_023:  jmp     ?_017                                   ; 0F7D _ E9, FFFFFCAC
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 0F82 _ 55
        mov     ebp, esp                                ; 0F83 _ 89. E5
        sub     esp, 88                                 ; 0F85 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 0F88 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 0F8B _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0F8E _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0F94 _ 89. 45, F4
        xor     eax, eax                                ; 0F97 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0F99 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0F9F _ A1, 00000224(d)
        sub     esp, 8                                  ; 0FA4 _ 83. EC, 08
        push    ?_218                                   ; 0FA7 _ 68, 00000040(d)
        push    7                                       ; 0FAC _ 6A, 07
        push    144                                     ; 0FAE _ 68, 00000090
        push    0                                       ; 0FB3 _ 6A, 00
        push    edx                                     ; 0FB5 _ 52
        push    eax                                     ; 0FB6 _ 50
        call    showString                              ; 0FB7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FBC _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 0FBF _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0FC6 _ C7. 45, C8, 00000000
        push    0                                       ; 0FCD _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0FCF _ 8D. 45, EC
        push    eax                                     ; 0FD2 _ 50
        push    8                                       ; 0FD3 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0FD5 _ 8D. 45, D0
        push    eax                                     ; 0FD8 _ 50
        call    fifo8_init                              ; 0FD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FDE _ 83. C4, 10
        call    timer_alloc                             ; 0FE1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0FE6 _ 89. 45, C4
        sub     esp, 4                                  ; 0FE9 _ 83. EC, 04
        push    123                                     ; 0FEC _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0FEE _ 8D. 45, D0
        push    eax                                     ; 0FF1 _ 50
        push    dword [ebp-3CH]                         ; 0FF2 _ FF. 75, C4
        call    timer_init                              ; 0FF5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FFA _ 83. C4, 10
        sub     esp, 8                                  ; 0FFD _ 83. EC, 08
        push    100                                     ; 1000 _ 6A, 64
        push    dword [ebp-3CH]                         ; 1002 _ FF. 75, C4
        call    timer_setTime                           ; 1005 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 100A _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 100D _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 1014 _ C7. 45, C0, 00000000
?_024:  add     dword [ebp-40H], 1                      ; 101B _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 101F _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 1022 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 1025 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 1028 _ 8B. 00
        sub     esp, 4                                  ; 102A _ 83. EC, 04
        push    38                                      ; 102D _ 6A, 26
        push    100                                     ; 102F _ 6A, 64
        push    23                                      ; 1031 _ 6A, 17
        push    8                                       ; 1033 _ 6A, 08
        push    8                                       ; 1035 _ 6A, 08
        push    edx                                     ; 1037 _ 52
        push    eax                                     ; 1038 _ 50
        call    boxfill8                                ; 1039 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 103E _ 83. C4, 20
        sub     esp, 12                                 ; 1041 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 1044 _ FF. 75, C0
        call    intToHexStr                             ; 1047 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 104C _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 104F _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 1052 _ A1, 00000224(d)
        sub     esp, 8                                  ; 1057 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 105A _ FF. 75, CC
        push    10                                      ; 105D _ 6A, 0A
        push    23                                      ; 105F _ 6A, 17
        push    8                                       ; 1061 _ 6A, 08
        push    dword [ebp-4CH]                         ; 1063 _ FF. 75, B4
        push    eax                                     ; 1066 _ 50
        call    showString                              ; 1067 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 106C _ 83. C4, 20
        call    io_cli                                  ; 106F _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1074 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1077 _ 8D. 45, D0
        push    eax                                     ; 107A _ 50
        call    fifo8_status                            ; 107B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1080 _ 83. C4, 10
        test    eax, eax                                ; 1083 _ 85. C0
        jnz     ?_025                                   ; 1085 _ 75, 07
        call    io_sti                                  ; 1087 _ E8, FFFFFFFC(rel)
        jmp     ?_024                                   ; 108C _ EB, 8D

?_025:  sub     esp, 12                                 ; 108E _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1091 _ 8D. 45, D0
        push    eax                                     ; 1094 _ 50
        call    fifo8_get                               ; 1095 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 109A _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 109D _ 89. 45, C8
        call    io_sti                                  ; 10A0 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 10A5 _ 83. 7D, C8, 7B
        jne     ?_024                                   ; 10A9 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 10AF _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 10B5 _ A1, 00000224(d)
        sub     esp, 8                                  ; 10BA _ 83. EC, 08
        push    ?_219                                   ; 10BD _ 68, 0000004D(d)
        push    7                                       ; 10C2 _ 6A, 07
        push    176                                     ; 10C4 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 10C9 _ FF. 75, BC
        push    edx                                     ; 10CC _ 52
        push    eax                                     ; 10CD _ 50
        call    showString                              ; 10CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10D3 _ 83. C4, 20
        sub     esp, 8                                  ; 10D6 _ 83. EC, 08
        push    100                                     ; 10D9 _ 6A, 64
        push    dword [ebp-3CH]                         ; 10DB _ FF. 75, C4
        call    timer_setTime                           ; 10DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10E3 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 10E6 _ 83. 45, BC, 08
        jmp     ?_024                                   ; 10EA _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 10EF _ 55
        mov     ebp, esp                                ; 10F0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 10F2 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 10F5 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 10FB _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 10FE _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1104 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1107 _ 66: C7. 40, 06, 01E0
        nop                                             ; 110D _ 90
        pop     ebp                                     ; 110E _ 5D
        ret                                             ; 110F _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 1110 _ 55
        mov     ebp, esp                                ; 1111 _ 89. E5
        push    ebx                                     ; 1113 _ 53
        sub     esp, 36                                 ; 1114 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 1117 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 111A _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 111D _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1120 _ 89. 45, F4
        jmp     ?_027                                   ; 1123 _ EB, 3E

?_026:  mov     eax, dword [ebp+1CH]                    ; 1125 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1128 _ 0F B6. 00
        movzx   eax, al                                 ; 112B _ 0F B6. C0
        shl     eax, 4                                  ; 112E _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1131 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 1137 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 113B _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 113E _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1141 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1144 _ 8B. 00
        sub     esp, 8                                  ; 1146 _ 83. EC, 08
        push    ebx                                     ; 1149 _ 53
        push    ecx                                     ; 114A _ 51
        push    dword [ebp+14H]                         ; 114B _ FF. 75, 14
        push    dword [ebp+10H]                         ; 114E _ FF. 75, 10
        push    edx                                     ; 1151 _ 52
        push    eax                                     ; 1152 _ 50
        call    showFont8                               ; 1153 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1158 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 115B _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 115F _ 83. 45, 1C, 01
?_027:  mov     eax, dword [ebp+1CH]                    ; 1163 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1166 _ 0F B6. 00
        test    al, al                                  ; 1169 _ 84. C0
        jnz     ?_026                                   ; 116B _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 116D _ 8B. 45, 14
        add     eax, 16                                 ; 1170 _ 83. C0, 10
        sub     esp, 8                                  ; 1173 _ 83. EC, 08
        push    eax                                     ; 1176 _ 50
        push    dword [ebp+10H]                         ; 1177 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 117A _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 117D _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 1180 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1183 _ FF. 75, 08
        call    sheet_refresh                           ; 1186 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 118B _ 83. C4, 20
        nop                                             ; 118E _ 90
        mov     ebx, dword [ebp-4H]                     ; 118F _ 8B. 5D, FC
        leave                                           ; 1192 _ C9
        ret                                             ; 1193 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 1194 _ 55
        mov     ebp, esp                                ; 1195 _ 89. E5
        push    ebx                                     ; 1197 _ 53
        sub     esp, 4                                  ; 1198 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 119B _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 119E _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 11A1 _ 8B. 45, 0C
        sub     eax, 1                                  ; 11A4 _ 83. E8, 01
        sub     esp, 4                                  ; 11A7 _ 83. EC, 04
        push    edx                                     ; 11AA _ 52
        push    eax                                     ; 11AB _ 50
        push    0                                       ; 11AC _ 6A, 00
        push    0                                       ; 11AE _ 6A, 00
        push    14                                      ; 11B0 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 11B2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11B5 _ FF. 75, 08
        call    boxfill8                                ; 11B8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11BD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 11C0 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 11C3 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 11C6 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 11C9 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 11CC _ 8B. 45, 10
        sub     eax, 24                                 ; 11CF _ 83. E8, 18
        sub     esp, 4                                  ; 11D2 _ 83. EC, 04
        push    ecx                                     ; 11D5 _ 51
        push    edx                                     ; 11D6 _ 52
        push    eax                                     ; 11D7 _ 50
        push    0                                       ; 11D8 _ 6A, 00
        push    8                                       ; 11DA _ 6A, 08
        push    dword [ebp+0CH]                         ; 11DC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11DF _ FF. 75, 08
        call    boxfill8                                ; 11E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11E7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 11EA _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 11ED _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 11F0 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 11F3 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 11F6 _ 8B. 45, 10
        sub     eax, 23                                 ; 11F9 _ 83. E8, 17
        sub     esp, 4                                  ; 11FC _ 83. EC, 04
        push    ecx                                     ; 11FF _ 51
        push    edx                                     ; 1200 _ 52
        push    eax                                     ; 1201 _ 50
        push    0                                       ; 1202 _ 6A, 00
        push    7                                       ; 1204 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1206 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1209 _ FF. 75, 08
        call    boxfill8                                ; 120C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1211 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1214 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1217 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 121A _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 121D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1220 _ 8B. 45, 10
        sub     eax, 22                                 ; 1223 _ 83. E8, 16
        sub     esp, 4                                  ; 1226 _ 83. EC, 04
        push    ecx                                     ; 1229 _ 51
        push    edx                                     ; 122A _ 52
        push    eax                                     ; 122B _ 50
        push    0                                       ; 122C _ 6A, 00
        push    8                                       ; 122E _ 6A, 08
        push    dword [ebp+0CH]                         ; 1230 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1233 _ FF. 75, 08
        call    boxfill8                                ; 1236 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 123B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 123E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1241 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 1244 _ 8B. 45, 10
        sub     eax, 20                                 ; 1247 _ 83. E8, 14
        sub     esp, 4                                  ; 124A _ 83. EC, 04
        push    edx                                     ; 124D _ 52
        push    51                                      ; 124E _ 6A, 33
        push    eax                                     ; 1250 _ 50
        push    10                                      ; 1251 _ 6A, 0A
        push    7                                       ; 1253 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1255 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1258 _ FF. 75, 08
        call    boxfill8                                ; 125B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1260 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1263 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1266 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1269 _ 8B. 45, 10
        sub     eax, 20                                 ; 126C _ 83. E8, 14
        sub     esp, 4                                  ; 126F _ 83. EC, 04
        push    edx                                     ; 1272 _ 52
        push    9                                       ; 1273 _ 6A, 09
        push    eax                                     ; 1275 _ 50
        push    9                                       ; 1276 _ 6A, 09
        push    7                                       ; 1278 _ 6A, 07
        push    dword [ebp+0CH]                         ; 127A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 127D _ FF. 75, 08
        call    boxfill8                                ; 1280 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1285 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1288 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 128B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 128E _ 8B. 45, 10
        sub     eax, 4                                  ; 1291 _ 83. E8, 04
        sub     esp, 4                                  ; 1294 _ 83. EC, 04
        push    edx                                     ; 1297 _ 52
        push    50                                      ; 1298 _ 6A, 32
        push    eax                                     ; 129A _ 50
        push    10                                      ; 129B _ 6A, 0A
        push    15                                      ; 129D _ 6A, 0F
        push    dword [ebp+0CH]                         ; 129F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12A2 _ FF. 75, 08
        call    boxfill8                                ; 12A5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12AA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12AD _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 12B0 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 12B3 _ 8B. 45, 10
        sub     eax, 19                                 ; 12B6 _ 83. E8, 13
        sub     esp, 4                                  ; 12B9 _ 83. EC, 04
        push    edx                                     ; 12BC _ 52
        push    50                                      ; 12BD _ 6A, 32
        push    eax                                     ; 12BF _ 50
        push    50                                      ; 12C0 _ 6A, 32
        push    15                                      ; 12C2 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 12C4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12C7 _ FF. 75, 08
        call    boxfill8                                ; 12CA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12CF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12D2 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 12D5 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 12D8 _ 8B. 45, 10
        sub     eax, 3                                  ; 12DB _ 83. E8, 03
        sub     esp, 4                                  ; 12DE _ 83. EC, 04
        push    edx                                     ; 12E1 _ 52
        push    50                                      ; 12E2 _ 6A, 32
        push    eax                                     ; 12E4 _ 50
        push    10                                      ; 12E5 _ 6A, 0A
        push    0                                       ; 12E7 _ 6A, 00
        push    dword [ebp+0CH]                         ; 12E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12EC _ FF. 75, 08
        call    boxfill8                                ; 12EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12F4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12F7 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 12FA _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 12FD _ 8B. 45, 10
        sub     eax, 20                                 ; 1300 _ 83. E8, 14
        sub     esp, 4                                  ; 1303 _ 83. EC, 04
        push    edx                                     ; 1306 _ 52
        push    51                                      ; 1307 _ 6A, 33
        push    eax                                     ; 1309 _ 50
        push    51                                      ; 130A _ 6A, 33
        push    0                                       ; 130C _ 6A, 00
        push    dword [ebp+0CH]                         ; 130E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1311 _ FF. 75, 08
        call    boxfill8                                ; 1314 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1319 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 131C _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 131F _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 1322 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1325 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1328 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 132B _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 132E _ 8B. 45, 0C
        sub     eax, 47                                 ; 1331 _ 83. E8, 2F
        sub     esp, 4                                  ; 1334 _ 83. EC, 04
        push    ebx                                     ; 1337 _ 53
        push    ecx                                     ; 1338 _ 51
        push    edx                                     ; 1339 _ 52
        push    eax                                     ; 133A _ 50
        push    15                                      ; 133B _ 6A, 0F
        push    dword [ebp+0CH]                         ; 133D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1340 _ FF. 75, 08
        call    boxfill8                                ; 1343 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1348 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 134B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 134E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1351 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1354 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1357 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 135A _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 135D _ 8B. 45, 0C
        sub     eax, 47                                 ; 1360 _ 83. E8, 2F
        sub     esp, 4                                  ; 1363 _ 83. EC, 04
        push    ebx                                     ; 1366 _ 53
        push    ecx                                     ; 1367 _ 51
        push    edx                                     ; 1368 _ 52
        push    eax                                     ; 1369 _ 50
        push    15                                      ; 136A _ 6A, 0F
        push    dword [ebp+0CH]                         ; 136C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 136F _ FF. 75, 08
        call    boxfill8                                ; 1372 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1377 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 137A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 137D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1380 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1383 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1386 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1389 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 138C _ 8B. 45, 0C
        sub     eax, 47                                 ; 138F _ 83. E8, 2F
        sub     esp, 4                                  ; 1392 _ 83. EC, 04
        push    ebx                                     ; 1395 _ 53
        push    ecx                                     ; 1396 _ 51
        push    edx                                     ; 1397 _ 52
        push    eax                                     ; 1398 _ 50
        push    7                                       ; 1399 _ 6A, 07
        push    dword [ebp+0CH]                         ; 139B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 139E _ FF. 75, 08
        call    boxfill8                                ; 13A1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13A9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 13AC _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 13AF _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 13B2 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 13B5 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 13B8 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 13BB _ 8B. 45, 0C
        sub     eax, 3                                  ; 13BE _ 83. E8, 03
        sub     esp, 4                                  ; 13C1 _ 83. EC, 04
        push    ebx                                     ; 13C4 _ 53
        push    ecx                                     ; 13C5 _ 51
        push    edx                                     ; 13C6 _ 52
        push    eax                                     ; 13C7 _ 50
        push    7                                       ; 13C8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 13CA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13CD _ FF. 75, 08
        call    boxfill8                                ; 13D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13D5 _ 83. C4, 20
        nop                                             ; 13D8 _ 90
        mov     ebx, dword [ebp-4H]                     ; 13D9 _ 8B. 5D, FC
        leave                                           ; 13DC _ C9
        ret                                             ; 13DD _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 13DE _ 55
        mov     ebp, esp                                ; 13DF _ 89. E5
        sub     esp, 24                                 ; 13E1 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 13E4 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 13E9 _ 89. 45, EC
        movzx   eax, word [?_228]                       ; 13EC _ 0F B7. 05, 00000004(d)
        cwde                                            ; 13F3 _ 98
        mov     dword [ebp-10H], eax                    ; 13F4 _ 89. 45, F0
        movzx   eax, word [?_229]                       ; 13F7 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 13FE _ 98
        mov     dword [ebp-0CH], eax                    ; 13FF _ 89. 45, F4
        sub     esp, 4                                  ; 1402 _ 83. EC, 04
        push    table_rgb.2348                          ; 1405 _ 68, 00000080(d)
        push    15                                      ; 140A _ 6A, 0F
        push    0                                       ; 140C _ 6A, 00
        call    set_palette                             ; 140E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1413 _ 83. C4, 10
        nop                                             ; 1416 _ 90
        leave                                           ; 1417 _ C9
        ret                                             ; 1418 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1419 _ 55
        mov     ebp, esp                                ; 141A _ 89. E5
        sub     esp, 24                                 ; 141C _ 83. EC, 18
        call    io_load_eflags                          ; 141F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1424 _ 89. 45, F4
        call    io_cli                                  ; 1427 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 142C _ 83. EC, 08
        push    dword [ebp+8H]                          ; 142F _ FF. 75, 08
        push    968                                     ; 1432 _ 68, 000003C8
        call    io_out8                                 ; 1437 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 143C _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 143F _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1442 _ 89. 45, F0
        jmp     ?_029                                   ; 1445 _ EB, 65

?_028:  mov     eax, dword [ebp+10H]                    ; 1447 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 144A _ 0F B6. 00
        shr     al, 2                                   ; 144D _ C0. E8, 02
        movzx   eax, al                                 ; 1450 _ 0F B6. C0
        sub     esp, 8                                  ; 1453 _ 83. EC, 08
        push    eax                                     ; 1456 _ 50
        push    969                                     ; 1457 _ 68, 000003C9
        call    io_out8                                 ; 145C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1461 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1464 _ 8B. 45, 10
        add     eax, 1                                  ; 1467 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 146A _ 0F B6. 00
        shr     al, 2                                   ; 146D _ C0. E8, 02
        movzx   eax, al                                 ; 1470 _ 0F B6. C0
        sub     esp, 8                                  ; 1473 _ 83. EC, 08
        push    eax                                     ; 1476 _ 50
        push    969                                     ; 1477 _ 68, 000003C9
        call    io_out8                                 ; 147C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1481 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1484 _ 8B. 45, 10
        add     eax, 2                                  ; 1487 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 148A _ 0F B6. 00
        shr     al, 2                                   ; 148D _ C0. E8, 02
        movzx   eax, al                                 ; 1490 _ 0F B6. C0
        sub     esp, 8                                  ; 1493 _ 83. EC, 08
        push    eax                                     ; 1496 _ 50
        push    969                                     ; 1497 _ 68, 000003C9
        call    io_out8                                 ; 149C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14A1 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 14A4 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 14A8 _ 83. 45, F0, 01
?_029:  mov     eax, dword [ebp-10H]                    ; 14AC _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 14AF _ 3B. 45, 0C
        jle     ?_028                                   ; 14B2 _ 7E, 93
        sub     esp, 12                                 ; 14B4 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 14B7 _ FF. 75, F4
        call    io_store_eflags                         ; 14BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14BF _ 83. C4, 10
        nop                                             ; 14C2 _ 90
        leave                                           ; 14C3 _ C9
        ret                                             ; 14C4 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 14C5 _ 55
        mov     ebp, esp                                ; 14C6 _ 89. E5
        sub     esp, 20                                 ; 14C8 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 14CB _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 14CE _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 14D1 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 14D4 _ 89. 45, FC
        jmp     ?_033                                   ; 14D7 _ EB, 33

?_030:  mov     eax, dword [ebp+14H]                    ; 14D9 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 14DC _ 89. 45, F8
        jmp     ?_032                                   ; 14DF _ EB, 1F

?_031:  mov     eax, dword [ebp-4H]                     ; 14E1 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 14E4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14E8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14EA _ 8B. 45, F8
        add     eax, edx                                ; 14ED _ 01. D0
        mov     edx, eax                                ; 14EF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14F1 _ 8B. 45, 08
        add     edx, eax                                ; 14F4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14F6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14FA _ 88. 02
        add     dword [ebp-8H], 1                       ; 14FC _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 1500 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1503 _ 3B. 45, 1C
        jle     ?_031                                   ; 1506 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1508 _ 83. 45, FC, 01
?_033:  mov     eax, dword [ebp-4H]                     ; 150C _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 150F _ 3B. 45, 20
        jle     ?_030                                   ; 1512 _ 7E, C5
        nop                                             ; 1514 _ 90
        leave                                           ; 1515 _ C9
        ret                                             ; 1516 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1517 _ 55
        mov     ebp, esp                                ; 1518 _ 89. E5
        push    edi                                     ; 151A _ 57
        push    esi                                     ; 151B _ 56
        push    ebx                                     ; 151C _ 53
        sub     esp, 16                                 ; 151D _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1520 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1523 _ 8B. 45, 14
        add     eax, edx                                ; 1526 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1528 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 152B _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 152E _ 8B. 45, 18
        add     eax, edx                                ; 1531 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1533 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1536 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1539 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 153C _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 153F _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1542 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1545 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1548 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 154B _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 154E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1551 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1554 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1557 _ 8B. 00
        push    edi                                     ; 1559 _ 57
        push    esi                                     ; 155A _ 56
        push    ebx                                     ; 155B _ 53
        push    ecx                                     ; 155C _ 51
        push    15                                      ; 155D _ 6A, 0F
        push    edx                                     ; 155F _ 52
        push    eax                                     ; 1560 _ 50
        call    boxfill8                                ; 1561 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1566 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1569 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 156C _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 156F _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1572 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1575 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1578 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 157B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 157E _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1581 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1584 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1587 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 158A _ 8B. 00
        push    edi                                     ; 158C _ 57
        push    esi                                     ; 158D _ 56
        push    ebx                                     ; 158E _ 53
        push    ecx                                     ; 158F _ 51
        push    15                                      ; 1590 _ 6A, 0F
        push    edx                                     ; 1592 _ 52
        push    eax                                     ; 1593 _ 50
        call    boxfill8                                ; 1594 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1599 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 159C _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 159F _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 15A2 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 15A5 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 15A8 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 15AB _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 15AE _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 15B1 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 15B4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 15B7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15BA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15BD _ 8B. 00
        push    edi                                     ; 15BF _ 57
        push    esi                                     ; 15C0 _ 56
        push    ebx                                     ; 15C1 _ 53
        push    ecx                                     ; 15C2 _ 51
        push    7                                       ; 15C3 _ 6A, 07
        push    edx                                     ; 15C5 _ 52
        push    eax                                     ; 15C6 _ 50
        call    boxfill8                                ; 15C7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15CC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 15CF _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 15D2 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 15D5 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 15D8 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 15DB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 15DE _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 15E1 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 15E4 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 15E7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 15EA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15ED _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15F0 _ 8B. 00
        push    edi                                     ; 15F2 _ 57
        push    esi                                     ; 15F3 _ 56
        push    ebx                                     ; 15F4 _ 53
        push    ecx                                     ; 15F5 _ 51
        push    7                                       ; 15F6 _ 6A, 07
        push    edx                                     ; 15F8 _ 52
        push    eax                                     ; 15F9 _ 50
        call    boxfill8                                ; 15FA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15FF _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1602 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1605 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1608 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 160B _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 160E _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1611 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1614 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1617 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 161A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 161D _ 8B. 00
        push    esi                                     ; 161F _ 56
        push    dword [ebp-14H]                         ; 1620 _ FF. 75, EC
        push    ebx                                     ; 1623 _ 53
        push    ecx                                     ; 1624 _ 51
        push    0                                       ; 1625 _ 6A, 00
        push    edx                                     ; 1627 _ 52
        push    eax                                     ; 1628 _ 50
        call    boxfill8                                ; 1629 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 162E _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1631 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1634 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1637 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 163A _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 163D _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1640 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1643 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1646 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1649 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 164C _ 8B. 00
        push    dword [ebp-10H]                         ; 164E _ FF. 75, F0
        push    esi                                     ; 1651 _ 56
        push    ebx                                     ; 1652 _ 53
        push    ecx                                     ; 1653 _ 51
        push    0                                       ; 1654 _ 6A, 00
        push    edx                                     ; 1656 _ 52
        push    eax                                     ; 1657 _ 50
        call    boxfill8                                ; 1658 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 165D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1660 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1663 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1666 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1669 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 166C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 166F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1672 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1675 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1678 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 167B _ 8B. 00
        push    esi                                     ; 167D _ 56
        push    dword [ebp-14H]                         ; 167E _ FF. 75, EC
        push    ebx                                     ; 1681 _ 53
        push    ecx                                     ; 1682 _ 51
        push    8                                       ; 1683 _ 6A, 08
        push    edx                                     ; 1685 _ 52
        push    eax                                     ; 1686 _ 50
        call    boxfill8                                ; 1687 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 168C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 168F _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1692 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1695 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1698 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 169B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 169E _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 16A1 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 16A4 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 16A7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16AA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16AD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16B0 _ 8B. 00
        push    edi                                     ; 16B2 _ 57
        push    esi                                     ; 16B3 _ 56
        push    ebx                                     ; 16B4 _ 53
        push    ecx                                     ; 16B5 _ 51
        push    8                                       ; 16B6 _ 6A, 08
        push    edx                                     ; 16B8 _ 52
        push    eax                                     ; 16B9 _ 50
        call    boxfill8                                ; 16BA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16BF _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 16C2 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 16C5 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 16C8 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 16CB _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 16CE _ 8B. 45, 1C
        movzx   ecx, al                                 ; 16D1 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 16D4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16D7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16DA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16DD _ 8B. 00
        push    dword [ebp-10H]                         ; 16DF _ FF. 75, F0
        push    dword [ebp-14H]                         ; 16E2 _ FF. 75, EC
        push    esi                                     ; 16E5 _ 56
        push    ebx                                     ; 16E6 _ 53
        push    ecx                                     ; 16E7 _ 51
        push    edx                                     ; 16E8 _ 52
        push    eax                                     ; 16E9 _ 50
        call    boxfill8                                ; 16EA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16EF _ 83. C4, 1C
        nop                                             ; 16F2 _ 90
        lea     esp, [ebp-0CH]                          ; 16F3 _ 8D. 65, F4
        pop     ebx                                     ; 16F6 _ 5B
        pop     esi                                     ; 16F7 _ 5E
        pop     edi                                     ; 16F8 _ 5F
        pop     ebp                                     ; 16F9 _ 5D
        ret                                             ; 16FA _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 16FB _ 55
        mov     ebp, esp                                ; 16FC _ 89. E5
        sub     esp, 20                                 ; 16FE _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1701 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1704 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1707 _ C7. 45, FC, 00000000
        jmp     ?_043                                   ; 170E _ E9, 0000016C

?_034:  mov     edx, dword [ebp-4H]                     ; 1713 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1716 _ 8B. 45, 1C
        add     eax, edx                                ; 1719 _ 01. D0
        movzx   eax, byte [eax]                         ; 171B _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 171E _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1721 _ 80. 7D, FB, 00
        jns     ?_035                                   ; 1725 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1727 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 172A _ 8B. 45, FC
        add     eax, edx                                ; 172D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 172F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1733 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1735 _ 8B. 45, 10
        add     eax, edx                                ; 1738 _ 01. D0
        mov     edx, eax                                ; 173A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 173C _ 8B. 45, 08
        add     edx, eax                                ; 173F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1741 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1745 _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 1747 _ 0F BE. 45, FB
        and     eax, 40H                                ; 174B _ 83. E0, 40
        test    eax, eax                                ; 174E _ 85. C0
        jz      ?_036                                   ; 1750 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1752 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1755 _ 8B. 45, FC
        add     eax, edx                                ; 1758 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 175A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 175E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1760 _ 8B. 45, 10
        add     eax, edx                                ; 1763 _ 01. D0
        lea     edx, [eax+1H]                           ; 1765 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1768 _ 8B. 45, 08
        add     edx, eax                                ; 176B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 176D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1771 _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 1773 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1777 _ 83. E0, 20
        test    eax, eax                                ; 177A _ 85. C0
        jz      ?_037                                   ; 177C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 177E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1781 _ 8B. 45, FC
        add     eax, edx                                ; 1784 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1786 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 178A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 178C _ 8B. 45, 10
        add     eax, edx                                ; 178F _ 01. D0
        lea     edx, [eax+2H]                           ; 1791 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1794 _ 8B. 45, 08
        add     edx, eax                                ; 1797 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1799 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 179D _ 88. 02
?_037:  movsx   eax, byte [ebp-5H]                      ; 179F _ 0F BE. 45, FB
        and     eax, 10H                                ; 17A3 _ 83. E0, 10
        test    eax, eax                                ; 17A6 _ 85. C0
        jz      ?_038                                   ; 17A8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 17AA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17AD _ 8B. 45, FC
        add     eax, edx                                ; 17B0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 17B2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 17B6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17B8 _ 8B. 45, 10
        add     eax, edx                                ; 17BB _ 01. D0
        lea     edx, [eax+3H]                           ; 17BD _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 17C0 _ 8B. 45, 08
        add     edx, eax                                ; 17C3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17C5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 17C9 _ 88. 02
?_038:  movsx   eax, byte [ebp-5H]                      ; 17CB _ 0F BE. 45, FB
        and     eax, 08H                                ; 17CF _ 83. E0, 08
        test    eax, eax                                ; 17D2 _ 85. C0
        jz      ?_039                                   ; 17D4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 17D6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17D9 _ 8B. 45, FC
        add     eax, edx                                ; 17DC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 17DE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 17E2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17E4 _ 8B. 45, 10
        add     eax, edx                                ; 17E7 _ 01. D0
        lea     edx, [eax+4H]                           ; 17E9 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17EC _ 8B. 45, 08
        add     edx, eax                                ; 17EF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17F1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 17F5 _ 88. 02
?_039:  movsx   eax, byte [ebp-5H]                      ; 17F7 _ 0F BE. 45, FB
        and     eax, 04H                                ; 17FB _ 83. E0, 04
        test    eax, eax                                ; 17FE _ 85. C0
        jz      ?_040                                   ; 1800 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1802 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1805 _ 8B. 45, FC
        add     eax, edx                                ; 1808 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 180A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 180E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1810 _ 8B. 45, 10
        add     eax, edx                                ; 1813 _ 01. D0
        lea     edx, [eax+5H]                           ; 1815 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1818 _ 8B. 45, 08
        add     edx, eax                                ; 181B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 181D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1821 _ 88. 02
?_040:  movsx   eax, byte [ebp-5H]                      ; 1823 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1827 _ 83. E0, 02
        test    eax, eax                                ; 182A _ 85. C0
        jz      ?_041                                   ; 182C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 182E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1831 _ 8B. 45, FC
        add     eax, edx                                ; 1834 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1836 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 183A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 183C _ 8B. 45, 10
        add     eax, edx                                ; 183F _ 01. D0
        lea     edx, [eax+6H]                           ; 1841 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1844 _ 8B. 45, 08
        add     edx, eax                                ; 1847 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1849 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 184D _ 88. 02
?_041:  movsx   eax, byte [ebp-5H]                      ; 184F _ 0F BE. 45, FB
        and     eax, 01H                                ; 1853 _ 83. E0, 01
        test    eax, eax                                ; 1856 _ 85. C0
        jz      ?_042                                   ; 1858 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 185A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 185D _ 8B. 45, FC
        add     eax, edx                                ; 1860 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1862 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1866 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1868 _ 8B. 45, 10
        add     eax, edx                                ; 186B _ 01. D0
        lea     edx, [eax+7H]                           ; 186D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1870 _ 8B. 45, 08
        add     edx, eax                                ; 1873 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1875 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1879 _ 88. 02
?_042:  add     dword [ebp-4H], 1                       ; 187B _ 83. 45, FC, 01
?_043:  cmp     dword [ebp-4H], 15                      ; 187F _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 1883 _ 0F 8E, FFFFFE8A
        nop                                             ; 1889 _ 90
        leave                                           ; 188A _ C9
        ret                                             ; 188B _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 188C _ 55
        mov     ebp, esp                                ; 188D _ 89. E5
        sub     esp, 20                                 ; 188F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1892 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1895 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1898 _ C7. 45, FC, 00000000
        jmp     ?_050                                   ; 189F _ E9, 000000B1

?_044:  mov     dword [ebp-8H], 0                       ; 18A4 _ C7. 45, F8, 00000000
        jmp     ?_049                                   ; 18AB _ E9, 00000097

?_045:  mov     eax, dword [ebp-4H]                     ; 18B0 _ 8B. 45, FC
        shl     eax, 4                                  ; 18B3 _ C1. E0, 04
        mov     edx, eax                                ; 18B6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 18B8 _ 8B. 45, F8
        add     eax, edx                                ; 18BB _ 01. D0
        add     eax, cursor.2403                        ; 18BD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 18C2 _ 0F B6. 00
        cmp     al, 42                                  ; 18C5 _ 3C, 2A
        jnz     ?_046                                   ; 18C7 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 18C9 _ 8B. 45, FC
        shl     eax, 4                                  ; 18CC _ C1. E0, 04
        mov     edx, eax                                ; 18CF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 18D1 _ 8B. 45, F8
        add     eax, edx                                ; 18D4 _ 01. D0
        mov     edx, eax                                ; 18D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18D8 _ 8B. 45, 08
        add     eax, edx                                ; 18DB _ 01. D0
        mov     byte [eax], 0                           ; 18DD _ C6. 00, 00
?_046:  mov     eax, dword [ebp-4H]                     ; 18E0 _ 8B. 45, FC
        shl     eax, 4                                  ; 18E3 _ C1. E0, 04
        mov     edx, eax                                ; 18E6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 18E8 _ 8B. 45, F8
        add     eax, edx                                ; 18EB _ 01. D0
        add     eax, cursor.2403                        ; 18ED _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 18F2 _ 0F B6. 00
        cmp     al, 79                                  ; 18F5 _ 3C, 4F
        jnz     ?_047                                   ; 18F7 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 18F9 _ 8B. 45, FC
        shl     eax, 4                                  ; 18FC _ C1. E0, 04
        mov     edx, eax                                ; 18FF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1901 _ 8B. 45, F8
        add     eax, edx                                ; 1904 _ 01. D0
        mov     edx, eax                                ; 1906 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1908 _ 8B. 45, 08
        add     eax, edx                                ; 190B _ 01. D0
        mov     byte [eax], 7                           ; 190D _ C6. 00, 07
?_047:  mov     eax, dword [ebp-4H]                     ; 1910 _ 8B. 45, FC
        shl     eax, 4                                  ; 1913 _ C1. E0, 04
        mov     edx, eax                                ; 1916 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1918 _ 8B. 45, F8
        add     eax, edx                                ; 191B _ 01. D0
        add     eax, cursor.2403                        ; 191D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1922 _ 0F B6. 00
        cmp     al, 46                                  ; 1925 _ 3C, 2E
        jnz     ?_048                                   ; 1927 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1929 _ 8B. 45, FC
        shl     eax, 4                                  ; 192C _ C1. E0, 04
        mov     edx, eax                                ; 192F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1931 _ 8B. 45, F8
        add     eax, edx                                ; 1934 _ 01. D0
        mov     edx, eax                                ; 1936 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1938 _ 8B. 45, 08
        add     edx, eax                                ; 193B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 193D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1941 _ 88. 02
?_048:  add     dword [ebp-8H], 1                       ; 1943 _ 83. 45, F8, 01
?_049:  cmp     dword [ebp-8H], 15                      ; 1947 _ 83. 7D, F8, 0F
        jle     ?_045                                   ; 194B _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1951 _ 83. 45, FC, 01
?_050:  cmp     dword [ebp-4H], 15                      ; 1955 _ 83. 7D, FC, 0F
        jle     ?_044                                   ; 1959 _ 0F 8E, FFFFFF45
        nop                                             ; 195F _ 90
        leave                                           ; 1960 _ C9
        ret                                             ; 1961 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1962 _ 55
        mov     ebp, esp                                ; 1963 _ 89. E5
        push    ebx                                     ; 1965 _ 53
        sub     esp, 16                                 ; 1966 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1969 _ C7. 45, F8, 00000000
        jmp     ?_054                                   ; 1970 _ EB, 50

?_051:  mov     dword [ebp-0CH], 0                      ; 1972 _ C7. 45, F4, 00000000
        jmp     ?_053                                   ; 1979 _ EB, 3B

?_052:  mov     eax, dword [ebp-8H]                     ; 197B _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 197E _ 0F AF. 45, 24
        mov     edx, eax                                ; 1982 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1984 _ 8B. 45, F4
        add     eax, edx                                ; 1987 _ 01. D0
        mov     edx, eax                                ; 1989 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 198B _ 8B. 45, 20
        add     eax, edx                                ; 198E _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1990 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1993 _ 8B. 55, F8
        add     edx, ecx                                ; 1996 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1998 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 199C _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 199F _ 8B. 4D, F4
        add     ecx, ebx                                ; 19A2 _ 01. D9
        add     edx, ecx                                ; 19A4 _ 01. CA
        mov     ecx, edx                                ; 19A6 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 19A8 _ 8B. 55, 08
        add     edx, ecx                                ; 19AB _ 01. CA
        movzx   eax, byte [eax]                         ; 19AD _ 0F B6. 00
        mov     byte [edx], al                          ; 19B0 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 19B2 _ 83. 45, F4, 01
?_053:  mov     eax, dword [ebp-0CH]                    ; 19B6 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 19B9 _ 3B. 45, 10
        jl      ?_052                                   ; 19BC _ 7C, BD
        add     dword [ebp-8H], 1                       ; 19BE _ 83. 45, F8, 01
?_054:  mov     eax, dword [ebp-8H]                     ; 19C2 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 19C5 _ 3B. 45, 14
        jl      ?_051                                   ; 19C8 _ 7C, A8
        nop                                             ; 19CA _ 90
        add     esp, 16                                 ; 19CB _ 83. C4, 10
        pop     ebx                                     ; 19CE _ 5B
        pop     ebp                                     ; 19CF _ 5D
        ret                                             ; 19D0 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 19D1 _ 55
        mov     ebp, esp                                ; 19D2 _ 89. E5
        sub     esp, 24                                 ; 19D4 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 19D7 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 19DC _ 89. 45, EC
        movzx   eax, word [?_228]                       ; 19DF _ 0F B7. 05, 00000004(d)
        cwde                                            ; 19E6 _ 98
        mov     dword [ebp-10H], eax                    ; 19E7 _ 89. 45, F0
        movzx   eax, word [?_229]                       ; 19EA _ 0F B7. 05, 00000006(d)
        cwde                                            ; 19F1 _ 98
        mov     dword [ebp-0CH], eax                    ; 19F2 _ 89. 45, F4
        sub     esp, 8                                  ; 19F5 _ 83. EC, 08
        push    32                                      ; 19F8 _ 6A, 20
        push    32                                      ; 19FA _ 6A, 20
        call    io_out8                                 ; 19FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A01 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1A04 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1A08 _ 83. EC, 0C
        push    96                                      ; 1A0B _ 6A, 60
        call    io_in8                                  ; 1A0D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A12 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1A15 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1A18 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1A1C _ 83. EC, 08
        push    eax                                     ; 1A1F _ 50
        push    keyInfo                                 ; 1A20 _ 68, 00000008(d)
        call    fifo8_put                               ; 1A25 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A2A _ 83. C4, 10
        nop                                             ; 1A2D _ 90
        leave                                           ; 1A2E _ C9
        ret                                             ; 1A2F _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1A30 _ 55
        mov     ebp, esp                                ; 1A31 _ 89. E5
        sub     esp, 40                                 ; 1A33 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1A36 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1A39 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1A3C _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1A40 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1A43 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1A46 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1A4A _ 83. EC, 0C
        push    eax                                     ; 1A4D _ 50
        call    charToVal                               ; 1A4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A53 _ 83. C4, 10
        mov     byte [?_227], al                        ; 1A56 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1A5B _ 0F B6. 45, E4
        shr     al, 4                                   ; 1A5F _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1A62 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1A65 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1A69 _ 0F BE. C0
        sub     esp, 12                                 ; 1A6C _ 83. EC, 0C
        push    eax                                     ; 1A6F _ 50
        call    charToVal                               ; 1A70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A75 _ 83. C4, 10
        mov     byte [?_226], al                        ; 1A78 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1A7D _ B8, 00000000(d)
        leave                                           ; 1A82 _ C9
        ret                                             ; 1A83 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1A84 _ 55
        mov     ebp, esp                                ; 1A85 _ 89. E5
        sub     esp, 4                                  ; 1A87 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1A8A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1A8D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1A90 _ 80. 7D, FC, 09
        jle     ?_055                                   ; 1A94 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1A96 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1A9A _ 83. C0, 37
        jmp     ?_056                                   ; 1A9D _ EB, 07

?_055:  movzx   eax, byte [ebp-4H]                      ; 1A9F _ 0F B6. 45, FC
        add     eax, 48                                 ; 1AA3 _ 83. C0, 30
?_056:  leave                                           ; 1AA6 _ C9
        ret                                             ; 1AA7 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1AA8 _ 55
        mov     ebp, esp                                ; 1AA9 _ 89. E5
        sub     esp, 16                                 ; 1AAB _ 83. EC, 10
        mov     byte [str.2446], 48                     ; 1AAE _ C6. 05, 00000254(d), 30
        mov     byte [?_232], 120                       ; 1AB5 _ C6. 05, 00000255(d), 78
        mov     byte [?_233], 0                         ; 1ABC _ C6. 05, 0000025E(d), 00
        mov     dword [ebp-0CH], 2                      ; 1AC3 _ C7. 45, F4, 00000002
        jmp     ?_058                                   ; 1ACA _ EB, 0F

?_057:  mov     eax, dword [ebp-0CH]                    ; 1ACC _ 8B. 45, F4
        add     eax, str.2446                           ; 1ACF _ 05, 00000254(d)
        mov     byte [eax], 48                          ; 1AD4 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1AD7 _ 83. 45, F4, 01
?_058:  cmp     dword [ebp-0CH], 9                      ; 1ADB _ 83. 7D, F4, 09
        jle     ?_057                                   ; 1ADF _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1AE1 _ C7. 45, F8, 00000009
        jmp     ?_061                                   ; 1AE8 _ EB, 48

?_059:  mov     eax, dword [ebp+8H]                     ; 1AEA _ 8B. 45, 08
        and     eax, 0FH                                ; 1AED _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1AF0 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1AF3 _ 8B. 45, 08
        shr     eax, 4                                  ; 1AF6 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1AF9 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1AFC _ 83. 7D, FC, 09
        jle     ?_060                                   ; 1B00 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1B02 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1B05 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1B08 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1B0B _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1B0E _ 89. 55, F8
        mov     edx, ecx                                ; 1B11 _ 89. CA
        mov     byte [str.2446+eax], dl                 ; 1B13 _ 88. 90, 00000254(d)
        jmp     ?_061                                   ; 1B19 _ EB, 17

?_060:  mov     eax, dword [ebp-4H]                     ; 1B1B _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1B1E _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1B21 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1B24 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1B27 _ 89. 55, F8
        mov     edx, ecx                                ; 1B2A _ 89. CA
        mov     byte [str.2446+eax], dl                 ; 1B2C _ 88. 90, 00000254(d)
?_061:  cmp     dword [ebp-8H], 1                       ; 1B32 _ 83. 7D, F8, 01
        jle     ?_062                                   ; 1B36 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1B38 _ 83. 7D, 08, 00
        jnz     ?_059                                   ; 1B3C _ 75, AC
?_062:  mov     eax, str.2446                           ; 1B3E _ B8, 00000254(d)
        leave                                           ; 1B43 _ C9
        ret                                             ; 1B44 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1B45 _ 55
        mov     ebp, esp                                ; 1B46 _ 89. E5
        sub     esp, 8                                  ; 1B48 _ 83. EC, 08
?_063:  sub     esp, 12                                 ; 1B4B _ 83. EC, 0C
        push    100                                     ; 1B4E _ 6A, 64
        call    io_in8                                  ; 1B50 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B55 _ 83. C4, 10
        movsx   eax, al                                 ; 1B58 _ 0F BE. C0
        and     eax, 02H                                ; 1B5B _ 83. E0, 02
        test    eax, eax                                ; 1B5E _ 85. C0
        jz      ?_064                                   ; 1B60 _ 74, 02
        jmp     ?_063                                   ; 1B62 _ EB, E7

?_064:  nop                                             ; 1B64 _ 90
        nop                                             ; 1B65 _ 90
        leave                                           ; 1B66 _ C9
        ret                                             ; 1B67 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1B68 _ 55
        mov     ebp, esp                                ; 1B69 _ 89. E5
        sub     esp, 8                                  ; 1B6B _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1B6E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B73 _ 83. EC, 08
        push    96                                      ; 1B76 _ 6A, 60
        push    100                                     ; 1B78 _ 6A, 64
        call    io_out8                                 ; 1B7A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B7F _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1B82 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B87 _ 83. EC, 08
        push    71                                      ; 1B8A _ 6A, 47
        push    96                                      ; 1B8C _ 6A, 60
        call    io_out8                                 ; 1B8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B93 _ 83. C4, 10
        nop                                             ; 1B96 _ 90
        leave                                           ; 1B97 _ C9
        ret                                             ; 1B98 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1B99 _ 55
        mov     ebp, esp                                ; 1B9A _ 89. E5
        sub     esp, 8                                  ; 1B9C _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1B9F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1BA4 _ 83. EC, 08
        push    212                                     ; 1BA7 _ 68, 000000D4
        push    100                                     ; 1BAC _ 6A, 64
        call    io_out8                                 ; 1BAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BB3 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1BB6 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1BBB _ 83. EC, 08
        push    244                                     ; 1BBE _ 68, 000000F4
        push    96                                      ; 1BC3 _ 6A, 60
        call    io_out8                                 ; 1BC5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BCA _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1BCD _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1BD0 _ C6. 40, 03, 00
        nop                                             ; 1BD4 _ 90
        leave                                           ; 1BD5 _ C9
        ret                                             ; 1BD6 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1BD7 _ 55
        mov     ebp, esp                                ; 1BD8 _ 89. E5
        sub     esp, 24                                 ; 1BDA _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1BDD _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1BE1 _ 83. EC, 08
        push    32                                      ; 1BE4 _ 6A, 20
        push    160                                     ; 1BE6 _ 68, 000000A0
        call    io_out8                                 ; 1BEB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BF0 _ 83. C4, 10
        sub     esp, 8                                  ; 1BF3 _ 83. EC, 08
        push    32                                      ; 1BF6 _ 6A, 20
        push    32                                      ; 1BF8 _ 6A, 20
        call    io_out8                                 ; 1BFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BFF _ 83. C4, 10
        sub     esp, 12                                 ; 1C02 _ 83. EC, 0C
        push    96                                      ; 1C05 _ 6A, 60
        call    io_in8                                  ; 1C07 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C0C _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1C0F _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1C12 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1C16 _ 83. EC, 08
        push    eax                                     ; 1C19 _ 50
        push    mouseInfo                               ; 1C1A _ 68, 00000024(d)
        call    fifo8_put                               ; 1C1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C24 _ 83. C4, 10
        nop                                             ; 1C27 _ 90
        leave                                           ; 1C28 _ C9
        ret                                             ; 1C29 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1C2A _ 55
        mov     ebp, esp                                ; 1C2B _ 89. E5
        sub     esp, 40                                 ; 1C2D _ 83. EC, 28
        call    io_sti                                  ; 1C30 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1C35 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 1C3A _ 89. 45, E8
        movzx   eax, word [?_228]                       ; 1C3D _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1C44 _ 98
        mov     dword [ebp-14H], eax                    ; 1C45 _ 89. 45, EC
        movzx   eax, word [?_229]                       ; 1C48 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1C4F _ 98
        mov     dword [ebp-10H], eax                    ; 1C50 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1C53 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1C57 _ 83. EC, 0C
        push    keyInfo                                 ; 1C5A _ 68, 00000008(d)
        call    fifo8_get                               ; 1C5F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C64 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1C67 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1C6A _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1C6E _ 83. EC, 0C
        push    eax                                     ; 1C71 _ 50
        call    charToHex                               ; 1C72 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C77 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1C7A _ 89. 45, F4
        mov     edx, dword [line.2479]                  ; 1C7D _ 8B. 15, 00000260(d)
        mov     eax, dword [pos.2478]                   ; 1C83 _ A1, 00000264(d)
        sub     esp, 8                                  ; 1C88 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1C8B _ FF. 75, F4
        push    7                                       ; 1C8E _ 6A, 07
        push    edx                                     ; 1C90 _ 52
        push    eax                                     ; 1C91 _ 50
        push    dword [ebp+0CH]                         ; 1C92 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C95 _ FF. 75, 08
        call    showString                              ; 1C98 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C9D _ 83. C4, 20
        mov     eax, dword [pos.2478]                   ; 1CA0 _ A1, 00000264(d)
        add     eax, 32                                 ; 1CA5 _ 83. C0, 20
        mov     dword [pos.2478], eax                   ; 1CA8 _ A3, 00000264(d)
        mov     eax, dword [pos.2478]                   ; 1CAD _ A1, 00000264(d)
        cmp     dword [ebp-14H], eax                    ; 1CB2 _ 39. 45, EC
        jnz     ?_067                                   ; 1CB5 _ 75, 28
        mov     eax, dword [line.2479]                  ; 1CB7 _ A1, 00000260(d)
        cmp     dword [ebp-10H], eax                    ; 1CBC _ 39. 45, F0
        jz      ?_065                                   ; 1CBF _ 74, 0A
        mov     eax, dword [line.2479]                  ; 1CC1 _ A1, 00000260(d)
        add     eax, 16                                 ; 1CC6 _ 83. C0, 10
        jmp     ?_066                                   ; 1CC9 _ EB, 05

?_065:  mov     eax, 0                                  ; 1CCB _ B8, 00000000
?_066:  mov     dword [line.2479], eax                  ; 1CD0 _ A3, 00000260(d)
        mov     dword [pos.2478], 0                     ; 1CD5 _ C7. 05, 00000264(d), 00000000
?_067:  nop                                             ; 1CDF _ 90
        leave                                           ; 1CE0 _ C9
        ret                                             ; 1CE1 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1CE2 _ 55
        mov     ebp, esp                                ; 1CE3 _ 89. E5
        sub     esp, 24                                 ; 1CE5 _ 83. EC, 18
        call    io_sti                                  ; 1CE8 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1CED _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1CF1 _ 83. EC, 0C
        push    mouseInfo                               ; 1CF4 _ 68, 00000024(d)
        call    fifo8_get                               ; 1CF9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CFE _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1D01 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1D04 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1D08 _ 83. EC, 08
        push    eax                                     ; 1D0B _ 50
        push    mouse_move                              ; 1D0C _ 68, 000000E0(d)
        call    mouse_decode                            ; 1D11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D16 _ 83. C4, 10
        test    eax, eax                                ; 1D19 _ 85. C0
        jz      ?_068                                   ; 1D1B _ 74, 60
        sub     esp, 4                                  ; 1D1D _ 83. EC, 04
        push    mouse_move                              ; 1D20 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1D25 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D28 _ FF. 75, 08
        call    computeMousePos                         ; 1D2B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D30 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1D33 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1D39 _ A1, 000000F0(d)
        push    edx                                     ; 1D3E _ 52
        push    eax                                     ; 1D3F _ 50
        push    dword [ebp+10H]                         ; 1D40 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1D43 _ FF. 75, 08
        call    sheet_slide                             ; 1D46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D4B _ 83. C4, 10
        mov     eax, dword [?_231]                      ; 1D4E _ A1, 000000EC(d)
        and     eax, 01H                                ; 1D53 _ 83. E0, 01
        test    eax, eax                                ; 1D56 _ 85. C0
        jz      ?_068                                   ; 1D58 _ 74, 23
        mov     eax, dword [my]                         ; 1D5A _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1D5F _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1D62 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1D67 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1D6A _ A1, 00000228(d)
        push    ecx                                     ; 1D6F _ 51
        push    edx                                     ; 1D70 _ 52
        push    eax                                     ; 1D71 _ 50
        push    dword [ebp+8H]                          ; 1D72 _ FF. 75, 08
        call    sheet_slide                             ; 1D75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D7A _ 83. C4, 10
?_068:  nop                                             ; 1D7D _ 90
        leave                                           ; 1D7E _ C9
        ret                                             ; 1D7F _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1D80 _ 55
        mov     ebp, esp                                ; 1D81 _ 89. E5
        sub     esp, 4                                  ; 1D83 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1D86 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1D89 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1D8C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1D8F _ 0F B6. 40, 03
        test    al, al                                  ; 1D93 _ 84. C0
        jnz     ?_070                                   ; 1D95 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1D97 _ 80. 7D, FC, FA
        jnz     ?_069                                   ; 1D9B _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1D9D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1DA0 _ C6. 40, 03, 01
?_069:  mov     eax, 0                                  ; 1DA4 _ B8, 00000000
        jmp     ?_077                                   ; 1DA9 _ E9, 0000010C

?_070:  mov     eax, dword [ebp+8H]                     ; 1DAE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1DB1 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1DB5 _ 3C, 01
        jnz     ?_072                                   ; 1DB7 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1DB9 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1DBD _ 83. C8, 37
        cmp     al, 63                                  ; 1DC0 _ 3C, 3F
        jnz     ?_071                                   ; 1DC2 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1DC4 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1DC7 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1DCB _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1DCD _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1DD0 _ C6. 40, 03, 02
?_071:  mov     eax, 0                                  ; 1DD4 _ B8, 00000000
        jmp     ?_077                                   ; 1DD9 _ E9, 000000DC

?_072:  mov     eax, dword [ebp+8H]                     ; 1DDE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1DE1 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1DE5 _ 3C, 02
        jnz     ?_073                                   ; 1DE7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1DE9 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1DEC _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1DF0 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DF3 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1DF6 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1DFA _ B8, 00000000
        jmp     ?_077                                   ; 1DFF _ E9, 000000B6

?_073:  mov     eax, dword [ebp+8H]                     ; 1E04 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E07 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1E0B _ 3C, 03
        jne     ?_076                                   ; 1E0D _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1E13 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E16 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1E1A _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1E1D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1E20 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1E24 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E27 _ 0F B6. 00
        movzx   eax, al                                 ; 1E2A _ 0F B6. C0
        and     eax, 07H                                ; 1E2D _ 83. E0, 07
        mov     edx, eax                                ; 1E30 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E32 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1E35 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1E38 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1E3B _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1E3F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1E42 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1E45 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E48 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1E4B _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1E4F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1E52 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1E55 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1E58 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E5B _ 0F B6. 00
        movzx   eax, al                                 ; 1E5E _ 0F B6. C0
        and     eax, 10H                                ; 1E61 _ 83. E0, 10
        test    eax, eax                                ; 1E64 _ 85. C0
        jz      ?_074                                   ; 1E66 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1E68 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1E6B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1E6E _ 0D, FFFFFF00
        mov     edx, eax                                ; 1E73 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E75 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1E78 _ 89. 50, 04
?_074:  mov     eax, dword [ebp+8H]                     ; 1E7B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E7E _ 0F B6. 00
        movzx   eax, al                                 ; 1E81 _ 0F B6. C0
        and     eax, 20H                                ; 1E84 _ 83. E0, 20
        test    eax, eax                                ; 1E87 _ 85. C0
        jz      ?_075                                   ; 1E89 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1E8B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1E8E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1E91 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1E96 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E98 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1E9B _ 89. 50, 08
?_075:  mov     eax, dword [ebp+8H]                     ; 1E9E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1EA1 _ 8B. 40, 08
        neg     eax                                     ; 1EA4 _ F7. D8
        mov     edx, eax                                ; 1EA6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EA8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1EAB _ 89. 50, 08
        mov     eax, 1                                  ; 1EAE _ B8, 00000001
        jmp     ?_077                                   ; 1EB3 _ EB, 05

?_076:  mov     eax, 4294967295                         ; 1EB5 _ B8, FFFFFFFF
?_077:  leave                                           ; 1EBA _ C9
        ret                                             ; 1EBB _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1EBC _ 55
        mov     ebp, esp                                ; 1EBD _ 89. E5
        sub     esp, 16                                 ; 1EBF _ 83. EC, 10
        movzx   eax, word [?_228]                       ; 1EC2 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1EC9 _ 98
        mov     dword [ebp-8H], eax                     ; 1ECA _ 89. 45, F8
        movzx   eax, word [?_229]                       ; 1ECD _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1ED4 _ 98
        mov     dword [ebp-4H], eax                     ; 1ED5 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1ED8 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1EDB _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1EDE _ A1, 000000F0(d)
        add     eax, edx                                ; 1EE3 _ 01. D0
        mov     dword [mx], eax                         ; 1EE5 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1EEA _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1EED _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1EF0 _ A1, 000000F4(d)
        add     eax, edx                                ; 1EF5 _ 01. D0
        mov     dword [my], eax                         ; 1EF7 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1EFC _ A1, 000000F0(d)
        test    eax, eax                                ; 1F01 _ 85. C0
        jns     ?_078                                   ; 1F03 _ 79, 0A
        mov     dword [mx], 0                           ; 1F05 _ C7. 05, 000000F0(d), 00000000
?_078:  mov     eax, dword [my]                         ; 1F0F _ A1, 000000F4(d)
        test    eax, eax                                ; 1F14 _ 85. C0
        jns     ?_079                                   ; 1F16 _ 79, 0A
        mov     dword [my], 0                           ; 1F18 _ C7. 05, 000000F4(d), 00000000
?_079:  mov     eax, dword [ebp-8H]                     ; 1F22 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1F25 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1F28 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1F2D _ 39. C2
        jge     ?_080                                   ; 1F2F _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1F31 _ 8B. 45, F8
        sub     eax, 9                                  ; 1F34 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1F37 _ A3, 000000F0(d)
?_080:  mov     eax, dword [ebp-4H]                     ; 1F3C _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1F3F _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1F42 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1F47 _ 39. C2
        jge     ?_081                                   ; 1F49 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1F4B _ 8B. 45, FC
        sub     eax, 1                                  ; 1F4E _ 83. E8, 01
        mov     dword [my], eax                         ; 1F51 _ A3, 000000F4(d)
?_081:  nop                                             ; 1F56 _ 90
        leave                                           ; 1F57 _ C9
        ret                                             ; 1F58 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1F59 _ 55
        mov     ebp, esp                                ; 1F5A _ 89. E5
        sub     esp, 56                                 ; 1F5C _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1F5F _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1F66 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1F6D _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1F74 _ C7. 45, DC, 00000050
        push    100                                     ; 1F7B _ 6A, 64
        push    dword [ebp+1CH]                         ; 1F7D _ FF. 75, 1C
        push    0                                       ; 1F80 _ 6A, 00
        push    0                                       ; 1F82 _ 6A, 00
        push    14                                      ; 1F84 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1F86 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1F89 _ FF. 75, 14
        call    boxfill8                                ; 1F8C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F91 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1F94 _ 8B. 45, 20
        movsx   eax, al                                 ; 1F97 _ 0F BE. C0
        sub     esp, 8                                  ; 1F9A _ 83. EC, 08
        push    ?_220                                   ; 1F9D _ 68, 0000004F(d)
        push    eax                                     ; 1FA2 _ 50
        push    dword [ebp-2CH]                         ; 1FA3 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1FA6 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1FA9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1FAC _ FF. 75, 08
        call    showString                              ; 1FAF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FB4 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1FB7 _ 8B. 45, 18
        sub     esp, 12                                 ; 1FBA _ 83. EC, 0C
        push    eax                                     ; 1FBD _ 50
        call    intToHexStr                             ; 1FBE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FC3 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1FC6 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1FC9 _ 8B. 45, 20
        movsx   eax, al                                 ; 1FCC _ 0F BE. C0
        sub     esp, 8                                  ; 1FCF _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1FD2 _ FF. 75, E0
        push    eax                                     ; 1FD5 _ 50
        push    dword [ebp-2CH]                         ; 1FD6 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1FD9 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1FDC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1FDF _ FF. 75, 08
        call    showString                              ; 1FE2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FE7 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1FEA _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1FEE _ 8B. 45, 20
        movsx   eax, al                                 ; 1FF1 _ 0F BE. C0
        sub     esp, 8                                  ; 1FF4 _ 83. EC, 08
        push    ?_221                                   ; 1FF7 _ 68, 00000059(d)
        push    eax                                     ; 1FFC _ 50
        push    dword [ebp-2CH]                         ; 1FFD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2000 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2003 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2006 _ FF. 75, 08
        call    showString                              ; 2009 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 200E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2011 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2014 _ 8B. 00
        sub     esp, 12                                 ; 2016 _ 83. EC, 0C
        push    eax                                     ; 2019 _ 50
        call    intToHexStr                             ; 201A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 201F _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 2022 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2025 _ 8B. 45, 20
        movsx   eax, al                                 ; 2028 _ 0F BE. C0
        sub     esp, 8                                  ; 202B _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 202E _ FF. 75, E4
        push    eax                                     ; 2031 _ 50
        push    dword [ebp-2CH]                         ; 2032 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2035 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2038 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 203B _ FF. 75, 08
        call    showString                              ; 203E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2043 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2046 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 204A _ 8B. 45, 20
        movsx   eax, al                                 ; 204D _ 0F BE. C0
        sub     esp, 8                                  ; 2050 _ 83. EC, 08
        push    ?_222                                   ; 2053 _ 68, 00000067(d)
        push    eax                                     ; 2058 _ 50
        push    dword [ebp-2CH]                         ; 2059 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 205C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 205F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2062 _ FF. 75, 08
        call    showString                              ; 2065 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 206A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 206D _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2070 _ 8B. 40, 04
        sub     esp, 12                                 ; 2073 _ 83. EC, 0C
        push    eax                                     ; 2076 _ 50
        call    intToHexStr                             ; 2077 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 207C _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 207F _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 2082 _ 8B. 45, 20
        movsx   eax, al                                 ; 2085 _ 0F BE. C0
        sub     esp, 8                                  ; 2088 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 208B _ FF. 75, E8
        push    eax                                     ; 208E _ 50
        push    dword [ebp-2CH]                         ; 208F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2092 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2095 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2098 _ FF. 75, 08
        call    showString                              ; 209B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20A0 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 20A3 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 20A7 _ 8B. 45, 20
        movsx   eax, al                                 ; 20AA _ 0F BE. C0
        sub     esp, 8                                  ; 20AD _ 83. EC, 08
        push    ?_223                                   ; 20B0 _ 68, 00000076(d)
        push    eax                                     ; 20B5 _ 50
        push    dword [ebp-2CH]                         ; 20B6 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 20B9 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 20BC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20BF _ FF. 75, 08
        call    showString                              ; 20C2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20C7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 20CA _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 20CD _ 8B. 40, 08
        sub     esp, 12                                 ; 20D0 _ 83. EC, 0C
        push    eax                                     ; 20D3 _ 50
        call    intToHexStr                             ; 20D4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20D9 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 20DC _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 20DF _ 8B. 45, 20
        movsx   eax, al                                 ; 20E2 _ 0F BE. C0
        sub     esp, 8                                  ; 20E5 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 20E8 _ FF. 75, EC
        push    eax                                     ; 20EB _ 50
        push    dword [ebp-2CH]                         ; 20EC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 20EF _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 20F2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20F5 _ FF. 75, 08
        call    showString                              ; 20F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20FD _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2100 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2104 _ 8B. 45, 20
        movsx   eax, al                                 ; 2107 _ 0F BE. C0
        sub     esp, 8                                  ; 210A _ 83. EC, 08
        push    ?_224                                   ; 210D _ 68, 00000082(d)
        push    eax                                     ; 2112 _ 50
        push    dword [ebp-2CH]                         ; 2113 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2116 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2119 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 211C _ FF. 75, 08
        call    showString                              ; 211F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2124 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2127 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 212A _ 8B. 40, 0C
        sub     esp, 12                                 ; 212D _ 83. EC, 0C
        push    eax                                     ; 2130 _ 50
        call    intToHexStr                             ; 2131 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2136 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2139 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 213C _ 8B. 45, 20
        movsx   eax, al                                 ; 213F _ 0F BE. C0
        sub     esp, 8                                  ; 2142 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 2145 _ FF. 75, F0
        push    eax                                     ; 2148 _ 50
        push    dword [ebp-2CH]                         ; 2149 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 214C _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 214F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2152 _ FF. 75, 08
        call    showString                              ; 2155 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 215A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 215D _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2161 _ 8B. 45, 20
        movsx   eax, al                                 ; 2164 _ 0F BE. C0
        sub     esp, 8                                  ; 2167 _ 83. EC, 08
        push    ?_225                                   ; 216A _ 68, 0000008F(d)
        push    eax                                     ; 216F _ 50
        push    dword [ebp-2CH]                         ; 2170 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2173 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2176 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2179 _ FF. 75, 08
        call    showString                              ; 217C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2181 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2184 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 2187 _ 8B. 40, 10
        sub     esp, 12                                 ; 218A _ 83. EC, 0C
        push    eax                                     ; 218D _ 50
        call    intToHexStr                             ; 218E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2193 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2196 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 2199 _ 8B. 45, 20
        movsx   eax, al                                 ; 219C _ 0F BE. C0
        sub     esp, 8                                  ; 219F _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 21A2 _ FF. 75, F4
        push    eax                                     ; 21A5 _ 50
        push    dword [ebp-2CH]                         ; 21A6 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21A9 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 21AC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21AF _ FF. 75, 08
        call    showString                              ; 21B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21B7 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 21BA _ 83. 45, D4, 10
        nop                                             ; 21BE _ 90
        leave                                           ; 21BF _ C9
        ret                                             ; 21C0 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 21C1 _ 55
        mov     ebp, esp                                ; 21C2 _ 89. E5
        sub     esp, 24                                 ; 21C4 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 21C7 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 21CA _ 0F AF. 45, 14
        mov     edx, eax                                ; 21CE _ 89. C2
        mov     eax, dword [memman]                     ; 21D0 _ A1, 00000008(d)
        sub     esp, 8                                  ; 21D5 _ 83. EC, 08
        push    edx                                     ; 21D8 _ 52
        push    eax                                     ; 21D9 _ 50
        call    memman_alloc_4K                         ; 21DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21DF _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 21E2 _ 89. 45, F0
        sub     esp, 12                                 ; 21E5 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 21E8 _ FF. 75, 08
        call    sheet_alloc                             ; 21EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21F0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 21F3 _ 89. 45, F4
        sub     esp, 12                                 ; 21F6 _ 83. EC, 0C
        push    99                                      ; 21F9 _ 6A, 63
        push    dword [ebp+14H]                         ; 21FB _ FF. 75, 14
        push    dword [ebp+10H]                         ; 21FE _ FF. 75, 10
        push    dword [ebp-10H]                         ; 2201 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2204 _ FF. 75, F4
        call    sheet_setbuf                            ; 2207 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 220C _ 83. C4, 20
        push    1                                       ; 220F _ 6A, 01
        push    dword [ebp+0CH]                         ; 2211 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 2214 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2217 _ FF. 75, 08
        call    make_window8                            ; 221A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 221F _ 83. C4, 10
        sub     esp, 8                                  ; 2222 _ 83. EC, 08
        push    7                                       ; 2225 _ 6A, 07
        push    16                                      ; 2227 _ 6A, 10
        push    150                                     ; 2229 _ 68, 00000096
        push    42                                      ; 222E _ 6A, 2A
        push    10                                      ; 2230 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 2232 _ FF. 75, F4
        call    make_textbox8                           ; 2235 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 223A _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 223D _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 2240 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2243 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2246 _ FF. 75, 08
        call    sheet_slide                             ; 2249 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 224E _ 83. C4, 10
        sub     esp, 4                                  ; 2251 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 2254 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 2257 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 225A _ FF. 75, 08
        call    sheet_level_updown                      ; 225D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2262 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2265 _ 8B. 45, F4
        leave                                           ; 2268 _ C9
        ret                                             ; 2269 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 226A _ 55
        mov     ebp, esp                                ; 226B _ 89. E5
        sub     esp, 24                                 ; 226D _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2270 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2273 _ 0F AF. 45, 20
        mov     edx, eax                                ; 2277 _ 89. C2
        mov     eax, dword [memman]                     ; 2279 _ A1, 00000008(d)
        sub     esp, 8                                  ; 227E _ 83. EC, 08
        push    edx                                     ; 2281 _ 52
        push    eax                                     ; 2282 _ 50
        call    memman_alloc_4K                         ; 2283 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2288 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 228B _ 89. 45, F0
        sub     esp, 12                                 ; 228E _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2291 _ FF. 75, 08
        call    sheet_alloc                             ; 2294 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2299 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 229C _ 89. 45, F4
        sub     esp, 12                                 ; 229F _ 83. EC, 0C
        push    99                                      ; 22A2 _ 6A, 63
        push    dword [ebp+20H]                         ; 22A4 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 22A7 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 22AA _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 22AD _ FF. 75, F4
        call    sheet_setbuf                            ; 22B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22B5 _ 83. C4, 20
        push    0                                       ; 22B8 _ 6A, 00
        push    dword [ebp+18H]                         ; 22BA _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 22BD _ FF. 75, F4
        push    dword [ebp+8H]                          ; 22C0 _ FF. 75, 08
        call    make_window8                            ; 22C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22C8 _ 83. C4, 10
        call    task_alloc                              ; 22CB _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 22D0 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 22D3 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 22D6 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 22DD _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 22E0 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 22E7 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 22EC _ F7. D8
        add     eax, task_b_main                        ; 22EE _ 05, 00000000(d)
        mov     edx, eax                                ; 22F3 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 22F5 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 22F8 _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 22FB _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 22FE _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2305 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 2308 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 230F _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 2312 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 2319 _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 231C _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2323 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 2326 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 232D _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 2330 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2337 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 233A _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 233D _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 2340 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 2343 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 2346 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2349 _ 8B. 40, 4C
        add     eax, 4                                  ; 234C _ 83. C0, 04
        mov     edx, eax                                ; 234F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2351 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2354 _ 89. 02
        sub     esp, 4                                  ; 2356 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2359 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 235C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 235F _ FF. 75, 0C
        call    task_run                                ; 2362 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2367 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 236A _ FF. 75, 28
        push    dword [ebp+24H]                         ; 236D _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2370 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2373 _ FF. 75, 08
        call    sheet_slide                             ; 2376 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 237B _ 83. C4, 10
        sub     esp, 4                                  ; 237E _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2381 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2384 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2387 _ FF. 75, 08
        call    sheet_level_updown                      ; 238A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 238F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2392 _ 8B. 45, F4
        leave                                           ; 2395 _ C9
        ret                                             ; 2396 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 2397 _ 55
        mov     ebp, esp                                ; 2398 _ 89. E5
        push    ebx                                     ; 239A _ 53
        sub     esp, 36                                 ; 239B _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 239E _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 23A1 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 23A4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 23A7 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 23AA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 23AD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 23B0 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 23B3 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 23B6 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 23B9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 23BC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 23BF _ 8B. 00
        push    0                                       ; 23C1 _ 6A, 00
        push    edx                                     ; 23C3 _ 52
        push    0                                       ; 23C4 _ 6A, 00
        push    0                                       ; 23C6 _ 6A, 00
        push    8                                       ; 23C8 _ 6A, 08
        push    dword [ebp-10H]                         ; 23CA _ FF. 75, F0
        push    eax                                     ; 23CD _ 50
        call    boxfill8                                ; 23CE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 23D3 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 23D6 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 23D9 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 23DC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 23DF _ 8B. 00
        push    1                                       ; 23E1 _ 6A, 01
        push    edx                                     ; 23E3 _ 52
        push    1                                       ; 23E4 _ 6A, 01
        push    1                                       ; 23E6 _ 6A, 01
        push    7                                       ; 23E8 _ 6A, 07
        push    dword [ebp-10H]                         ; 23EA _ FF. 75, F0
        push    eax                                     ; 23ED _ 50
        call    boxfill8                                ; 23EE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 23F3 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 23F6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23F9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 23FC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 23FF _ 8B. 00
        push    edx                                     ; 2401 _ 52
        push    0                                       ; 2402 _ 6A, 00
        push    0                                       ; 2404 _ 6A, 00
        push    0                                       ; 2406 _ 6A, 00
        push    8                                       ; 2408 _ 6A, 08
        push    dword [ebp-10H]                         ; 240A _ FF. 75, F0
        push    eax                                     ; 240D _ 50
        call    boxfill8                                ; 240E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2413 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2416 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2419 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 241C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 241F _ 8B. 00
        push    edx                                     ; 2421 _ 52
        push    1                                       ; 2422 _ 6A, 01
        push    1                                       ; 2424 _ 6A, 01
        push    1                                       ; 2426 _ 6A, 01
        push    7                                       ; 2428 _ 6A, 07
        push    dword [ebp-10H]                         ; 242A _ FF. 75, F0
        push    eax                                     ; 242D _ 50
        call    boxfill8                                ; 242E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2433 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2436 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2439 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 243C _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 243F _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2442 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2445 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2448 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 244B _ 8B. 00
        push    ebx                                     ; 244D _ 53
        push    ecx                                     ; 244E _ 51
        push    1                                       ; 244F _ 6A, 01
        push    edx                                     ; 2451 _ 52
        push    15                                      ; 2452 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2454 _ FF. 75, F0
        push    eax                                     ; 2457 _ 50
        call    boxfill8                                ; 2458 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 245D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2460 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2463 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2466 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2469 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 246C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 246F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2472 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2475 _ 8B. 00
        push    ebx                                     ; 2477 _ 53
        push    ecx                                     ; 2478 _ 51
        push    0                                       ; 2479 _ 6A, 00
        push    edx                                     ; 247B _ 52
        push    0                                       ; 247C _ 6A, 00
        push    dword [ebp-10H]                         ; 247E _ FF. 75, F0
        push    eax                                     ; 2481 _ 50
        call    boxfill8                                ; 2482 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2487 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 248A _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 248D _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2490 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2493 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2496 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2499 _ 8B. 00
        push    ecx                                     ; 249B _ 51
        push    edx                                     ; 249C _ 52
        push    2                                       ; 249D _ 6A, 02
        push    2                                       ; 249F _ 6A, 02
        push    8                                       ; 24A1 _ 6A, 08
        push    dword [ebp-10H]                         ; 24A3 _ FF. 75, F0
        push    eax                                     ; 24A6 _ 50
        call    boxfill8                                ; 24A7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24AC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 24AF _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 24B2 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 24B5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24B8 _ 8B. 00
        push    20                                      ; 24BA _ 6A, 14
        push    edx                                     ; 24BC _ 52
        push    3                                       ; 24BD _ 6A, 03
        push    3                                       ; 24BF _ 6A, 03
        push    12                                      ; 24C1 _ 6A, 0C
        push    dword [ebp-10H]                         ; 24C3 _ FF. 75, F0
        push    eax                                     ; 24C6 _ 50
        call    boxfill8                                ; 24C7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24CC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24CF _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 24D2 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 24D5 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 24D8 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 24DB _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 24DE _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 24E1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24E4 _ 8B. 00
        push    ebx                                     ; 24E6 _ 53
        push    ecx                                     ; 24E7 _ 51
        push    edx                                     ; 24E8 _ 52
        push    1                                       ; 24E9 _ 6A, 01
        push    15                                      ; 24EB _ 6A, 0F
        push    dword [ebp-10H]                         ; 24ED _ FF. 75, F0
        push    eax                                     ; 24F0 _ 50
        call    boxfill8                                ; 24F1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24F6 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24F9 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 24FC _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 24FF _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2502 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2505 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2508 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 250B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 250E _ 8B. 00
        push    ebx                                     ; 2510 _ 53
        push    ecx                                     ; 2511 _ 51
        push    edx                                     ; 2512 _ 52
        push    0                                       ; 2513 _ 6A, 00
        push    0                                       ; 2515 _ 6A, 00
        push    dword [ebp-10H]                         ; 2517 _ FF. 75, F0
        push    eax                                     ; 251A _ 50
        call    boxfill8                                ; 251B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2520 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2523 _ 0F BE. 45, E4
        push    eax                                     ; 2527 _ 50
        push    dword [ebp+10H]                         ; 2528 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 252B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 252E _ FF. 75, 08
        call    make_wtitle8                            ; 2531 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2536 _ 83. C4, 10
        nop                                             ; 2539 _ 90
        mov     ebx, dword [ebp-4H]                     ; 253A _ 8B. 5D, FC
        leave                                           ; 253D _ C9
        ret                                             ; 253E _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 253F _ 55
        mov     ebp, esp                                ; 2540 _ 89. E5
        push    ebx                                     ; 2542 _ 53
        sub     esp, 36                                 ; 2543 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2546 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2549 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 254C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 254F _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2552 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 2555 _ 80. 7D, E4, 00
        jz      ?_082                                   ; 2559 _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 255B _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 255F _ C6. 45, EB, 0C
        jmp     ?_083                                   ; 2563 _ EB, 0E

?_082:  cmp     byte [ebp-1CH], 0                       ; 2565 _ 80. 7D, E4, 00
        jnz     ?_083                                   ; 2569 _ 75, 08
        mov     byte [ebp-16H], 8                       ; 256B _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 256F _ C6. 45, EB, 0F
?_083:  mov     eax, dword [ebp-0CH]                    ; 2573 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 2576 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 2579 _ 0F B6. 45, EB
        movzx   edx, al                                 ; 257D _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2580 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2583 _ 8B. 00
        push    20                                      ; 2585 _ 6A, 14
        push    ecx                                     ; 2587 _ 51
        push    3                                       ; 2588 _ 6A, 03
        push    3                                       ; 258A _ 6A, 03
        push    edx                                     ; 258C _ 52
        push    dword [ebp-0CH]                         ; 258D _ FF. 75, F4
        push    eax                                     ; 2590 _ 50
        call    boxfill8                                ; 2591 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2596 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 2599 _ 0F BE. 45, EA
        sub     esp, 8                                  ; 259D _ 83. EC, 08
        push    dword [ebp+10H]                         ; 25A0 _ FF. 75, 10
        push    eax                                     ; 25A3 _ 50
        push    4                                       ; 25A4 _ 6A, 04
        push    8                                       ; 25A6 _ 6A, 08
        push    dword [ebp+0CH]                         ; 25A8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25AB _ FF. 75, 08
        call    showString                              ; 25AE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25B3 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 25B6 _ C7. 45, EC, 00000000
        jmp     ?_090                                   ; 25BD _ EB, 75

?_084:  mov     dword [ebp-10H], 0                      ; 25BF _ C7. 45, F0, 00000000
        jmp     ?_089                                   ; 25C6 _ EB, 62

?_085:  mov     eax, dword [ebp-14H]                    ; 25C8 _ 8B. 45, EC
        shl     eax, 4                                  ; 25CB _ C1. E0, 04
        mov     edx, eax                                ; 25CE _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 25D0 _ 8B. 45, F0
        add     eax, edx                                ; 25D3 _ 01. D0
        add     eax, closebtn.2556                      ; 25D5 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 25DA _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 25DD _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 25E0 _ 80. 7D, E9, 40
        jnz     ?_086                                   ; 25E4 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 25E6 _ C6. 45, E9, 00
        jmp     ?_088                                   ; 25EA _ EB, 16

?_086:  cmp     byte [ebp-17H], 36                      ; 25EC _ 80. 7D, E9, 24
        jnz     ?_087                                   ; 25F0 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 25F2 _ C6. 45, E9, 0F
        jmp     ?_088                                   ; 25F6 _ EB, 0A

?_087:  cmp     byte [ebp-17H], 81                      ; 25F8 _ 80. 7D, E9, 51
        jnz     ?_088                                   ; 25FC _ 75, 04
        mov     byte [ebp-17H], 8                       ; 25FE _ C6. 45, E9, 08
?_088:  mov     eax, dword [ebp+0CH]                    ; 2602 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2605 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2607 _ 8B. 55, EC
        add     edx, 5                                  ; 260A _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 260D _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 2611 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2614 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2617 _ 8B. 4D, F0
        add     ecx, ebx                                ; 261A _ 01. D9
        add     edx, ecx                                ; 261C _ 01. CA
        add     edx, eax                                ; 261E _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 2620 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2624 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2626 _ 83. 45, F0, 01
?_089:  cmp     dword [ebp-10H], 15                     ; 262A _ 83. 7D, F0, 0F
        jle     ?_085                                   ; 262E _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2630 _ 83. 45, EC, 01
?_090:  cmp     dword [ebp-14H], 13                     ; 2634 _ 83. 7D, EC, 0D
        jle     ?_084                                   ; 2638 _ 7E, 85
        nop                                             ; 263A _ 90
        mov     ebx, dword [ebp-4H]                     ; 263B _ 8B. 5D, FC
        leave                                           ; 263E _ C9
        ret                                             ; 263F _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2640 _ 55
        mov     ebp, esp                                ; 2641 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2643 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2646 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 264C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 264F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2656 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2659 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2660 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2663 _ C7. 40, 0C, 00000000
        nop                                             ; 266A _ 90
        pop     ebp                                     ; 266B _ 5D
        ret                                             ; 266C _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 266D _ 55
        mov     ebp, esp                                ; 266E _ 89. E5
        sub     esp, 16                                 ; 2670 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2673 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 267A _ C7. 45, FC, 00000000
        jmp     ?_092                                   ; 2681 _ EB, 14

?_091:  mov     eax, dword [ebp+8H]                     ; 2683 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2686 _ 8B. 55, FC
        add     edx, 2                                  ; 2689 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 268C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2690 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2693 _ 83. 45, FC, 01
?_092:  mov     eax, dword [ebp+8H]                     ; 2697 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 269A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 269C _ 39. 45, FC
        jl      ?_091                                   ; 269F _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 26A1 _ 8B. 45, F8
        leave                                           ; 26A4 _ C9
        ret                                             ; 26A5 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 26A6 _ 55
        mov     ebp, esp                                ; 26A7 _ 89. E5
        sub     esp, 16                                 ; 26A9 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 26AC _ C7. 45, F8, 00000000
        jmp     ?_096                                   ; 26B3 _ E9, 00000085

?_093:  mov     eax, dword [ebp+8H]                     ; 26B8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26BB _ 8B. 55, F8
        add     edx, 2                                  ; 26BE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 26C1 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 26C5 _ 39. 45, 0C
        ja      ?_095                                   ; 26C8 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 26CA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26CD _ 8B. 55, F8
        add     edx, 2                                  ; 26D0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 26D3 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 26D6 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 26D9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26DC _ 8B. 55, F8
        add     edx, 2                                  ; 26DF _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 26E2 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 26E5 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 26E8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 26EB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26EE _ 8B. 55, F8
        add     edx, 2                                  ; 26F1 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 26F4 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 26F7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26FA _ 8B. 55, F8
        add     edx, 2                                  ; 26FD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2700 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2704 _ 2B. 45, 0C
        mov     edx, eax                                ; 2707 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2709 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 270C _ 8B. 4D, F8
        add     ecx, 2                                  ; 270F _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2712 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2716 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2719 _ 8B. 55, F8
        add     edx, 2                                  ; 271C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 271F _ 8B. 44 D0, 04
        test    eax, eax                                ; 2723 _ 85. C0
        jnz     ?_094                                   ; 2725 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2727 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 272A _ 8B. 00
        lea     edx, [eax-1H]                           ; 272C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 272F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2732 _ 89. 10
?_094:  mov     eax, dword [ebp-4H]                     ; 2734 _ 8B. 45, FC
        jmp     ?_097                                   ; 2737 _ EB, 17

?_095:  add     dword [ebp-8H], 1                       ; 2739 _ 83. 45, F8, 01
?_096:  mov     eax, dword [ebp+8H]                     ; 273D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2740 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2742 _ 39. 45, F8
        jl      ?_093                                   ; 2745 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 274B _ B8, 00000000
?_097:  leave                                           ; 2750 _ C9
        ret                                             ; 2751 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2752 _ 55
        mov     ebp, esp                                ; 2753 _ 89. E5
        sub     esp, 16                                 ; 2755 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2758 _ 8B. 45, 0C
        add     eax, 4095                               ; 275B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2760 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2765 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2768 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 276B _ FF. 75, 08
        call    memman_alloc_FF                         ; 276E _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2773 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2776 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2779 _ 8B. 45, FC
        leave                                           ; 277C _ C9
        ret                                             ; 277D _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 277E _ 55
        mov     ebp, esp                                ; 277F _ 89. E5
        push    ebx                                     ; 2781 _ 53
        sub     esp, 16                                 ; 2782 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2785 _ C7. 45, F4, 00000000
        jmp     ?_099                                   ; 278C _ EB, 15

?_098:  mov     eax, dword [ebp+8H]                     ; 278E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2791 _ 8B. 55, F4
        add     edx, 2                                  ; 2794 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2797 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 279A _ 39. 45, 0C
        jc      ?_100                                   ; 279D _ 72, 10
        add     dword [ebp-0CH], 1                      ; 279F _ 83. 45, F4, 01
?_099:  mov     eax, dword [ebp+8H]                     ; 27A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27A6 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 27A8 _ 39. 45, F4
        jl      ?_098                                   ; 27AB _ 7C, E1
        jmp     ?_101                                   ; 27AD _ EB, 01

?_100:  nop                                             ; 27AF _ 90
?_101:  cmp     dword [ebp-0CH], 0                      ; 27B0 _ 83. 7D, F4, 00
        jle     ?_103                                   ; 27B4 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 27BA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 27BD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27C0 _ 8B. 45, 08
        add     edx, 2                                  ; 27C3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 27C6 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 27C9 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 27CC _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 27CF _ 8B. 45, 08
        add     ecx, 2                                  ; 27D2 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 27D5 _ 8B. 44 C8, 04
        add     eax, edx                                ; 27D9 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 27DB _ 39. 45, 0C
        jne     ?_103                                   ; 27DE _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 27E4 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 27E7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27EA _ 8B. 45, 08
        add     edx, 2                                  ; 27ED _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 27F0 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 27F4 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 27F7 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 27FA _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 27FD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2800 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2803 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2806 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 280A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 280D _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 280F _ 39. 45, F4
        jge     ?_102                                   ; 2812 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2814 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2817 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 281A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 281D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2820 _ 8B. 55, F4
        add     edx, 2                                  ; 2823 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2826 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2829 _ 39. C1
        jnz     ?_102                                   ; 282B _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 282D _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2830 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2833 _ 8B. 45, 08
        add     edx, 2                                  ; 2836 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2839 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 283D _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2840 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2843 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2846 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 284A _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 284D _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2850 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2853 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2856 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2859 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 285D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2860 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2862 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2865 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2868 _ 89. 10
?_102:  mov     eax, 0                                  ; 286A _ B8, 00000000
        jmp     ?_109                                   ; 286F _ E9, 0000011C

?_103:  mov     eax, dword [ebp+8H]                     ; 2874 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2877 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2879 _ 39. 45, F4
        jge     ?_104                                   ; 287C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 287E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2881 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2884 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2887 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 288A _ 8B. 55, F4
        add     edx, 2                                  ; 288D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2890 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2893 _ 39. C1
        jnz     ?_104                                   ; 2895 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2897 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 289A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 289D _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 28A0 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 28A3 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 28A6 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28A9 _ 8B. 55, F4
        add     edx, 2                                  ; 28AC _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 28AF _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 28B3 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 28B6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28B9 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28BC _ 8B. 55, F4
        add     edx, 2                                  ; 28BF _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 28C2 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 28C6 _ B8, 00000000
        jmp     ?_109                                   ; 28CB _ E9, 000000C0

?_104:  mov     eax, dword [ebp+8H]                     ; 28D0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28D3 _ 8B. 00
        cmp     eax, 4095                               ; 28D5 _ 3D, 00000FFF
        jg      ?_108                                   ; 28DA _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 28E0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28E3 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 28E5 _ 89. 45, F8
        jmp     ?_106                                   ; 28E8 _ EB, 28

?_105:  mov     eax, dword [ebp-8H]                     ; 28EA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 28ED _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 28F0 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 28F3 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 28F6 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 28F9 _ 8B. 45, 08
        add     edx, 2                                  ; 28FC _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 28FF _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2902 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2904 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2907 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 290A _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 290E _ 83. 6D, F8, 01
?_106:  mov     eax, dword [ebp-8H]                     ; 2912 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2915 _ 3B. 45, F4
        jg      ?_105                                   ; 2918 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 291A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 291D _ 8B. 00
        lea     edx, [eax+1H]                           ; 291F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2922 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2925 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2927 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 292A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 292D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2930 _ 8B. 00
        cmp     edx, eax                                ; 2932 _ 39. C2
        jge     ?_107                                   ; 2934 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2936 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2939 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 293B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 293E _ 89. 50, 04
?_107:  mov     eax, dword [ebp+8H]                     ; 2941 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2944 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2947 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 294A _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 294D _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2950 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2953 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2956 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2959 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 295C _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2960 _ B8, 00000000
        jmp     ?_109                                   ; 2965 _ EB, 29

?_108:  mov     eax, dword [ebp+8H]                     ; 2967 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 296A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 296D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2970 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2973 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2976 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2979 _ 8B. 40, 08
        mov     edx, eax                                ; 297C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 297E _ 8B. 45, 10
        add     eax, edx                                ; 2981 _ 01. D0
        mov     edx, eax                                ; 2983 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2985 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2988 _ 89. 50, 08
        mov     eax, 4294967295                         ; 298B _ B8, FFFFFFFF
?_109:  add     esp, 16                                 ; 2990 _ 83. C4, 10
        pop     ebx                                     ; 2993 _ 5B
        pop     ebp                                     ; 2994 _ 5D
        ret                                             ; 2995 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2996 _ 55
        mov     ebp, esp                                ; 2997 _ 89. E5
        sub     esp, 16                                 ; 2999 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 299C _ 8B. 45, 10
        add     eax, 4095                               ; 299F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 29A4 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 29A9 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 29AC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 29AF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 29B2 _ FF. 75, 08
        call    memman_free                             ; 29B5 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 29BA _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 29BD _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 29C0 _ 8B. 45, FC
        leave                                           ; 29C3 _ C9
        ret                                             ; 29C4 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 29C5 _ 55
        mov     ebp, esp                                ; 29C6 _ 89. E5
        sub     esp, 24                                 ; 29C8 _ 83. EC, 18
        sub     esp, 8                                  ; 29CB _ 83. EC, 08
        push    9232                                    ; 29CE _ 68, 00002410
        push    dword [ebp+8H]                          ; 29D3 _ FF. 75, 08
        call    memman_alloc_4K                         ; 29D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 29DB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 29DE _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 29E1 _ 83. 7D, F4, 00
        jnz     ?_110                                   ; 29E5 _ 75, 0A
        mov     eax, 0                                  ; 29E7 _ B8, 00000000
        jmp     ?_114                                   ; 29EC _ E9, 0000009A

?_110:  mov     eax, dword [ebp+10H]                    ; 29F1 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 29F4 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 29F8 _ 83. EC, 08
        push    eax                                     ; 29FB _ 50
        push    dword [ebp+8H]                          ; 29FC _ FF. 75, 08
        call    memman_alloc_4K                         ; 29FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A04 _ 83. C4, 10
        mov     edx, eax                                ; 2A07 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2A09 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2A0C _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2A0F _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2A12 _ 8B. 40, 04
        test    eax, eax                                ; 2A15 _ 85. C0
        jnz     ?_111                                   ; 2A17 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2A19 _ 8B. 45, F4
        sub     esp, 4                                  ; 2A1C _ 83. EC, 04
        push    9232                                    ; 2A1F _ 68, 00002410
        push    eax                                     ; 2A24 _ 50
        push    dword [ebp+8H]                          ; 2A25 _ FF. 75, 08
        call    memman_free_4K                          ; 2A28 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A2D _ 83. C4, 10
        mov     eax, 0                                  ; 2A30 _ B8, 00000000
        jmp     ?_114                                   ; 2A35 _ EB, 54

?_111:  mov     eax, dword [ebp-0CH]                    ; 2A37 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2A3A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2A3D _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2A3F _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2A42 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2A45 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2A48 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2A4B _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2A4E _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2A51 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2A54 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2A5B _ C7. 45, F0, 00000000
        jmp     ?_113                                   ; 2A62 _ EB, 1B

?_112:  mov     eax, dword [ebp-0CH]                    ; 2A64 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2A67 _ 8B. 55, F0
        add     edx, 33                                 ; 2A6A _ 83. C2, 21
        shl     edx, 5                                  ; 2A6D _ C1. E2, 05
        add     eax, edx                                ; 2A70 _ 01. D0
        add     eax, 16                                 ; 2A72 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2A75 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2A7B _ 83. 45, F0, 01
?_113:  cmp     dword [ebp-10H], 255                    ; 2A7F _ 81. 7D, F0, 000000FF
        jle     ?_112                                   ; 2A86 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2A88 _ 8B. 45, F4
?_114:  leave                                           ; 2A8B _ C9
        ret                                             ; 2A8C _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2A8D _ 55
        mov     ebp, esp                                ; 2A8E _ 89. E5
        sub     esp, 16                                 ; 2A90 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2A93 _ C7. 45, F8, 00000000
        jmp     ?_117                                   ; 2A9A _ EB, 4B

?_115:  mov     eax, dword [ebp+8H]                     ; 2A9C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2A9F _ 8B. 55, F8
        add     edx, 33                                 ; 2AA2 _ 83. C2, 21
        shl     edx, 5                                  ; 2AA5 _ C1. E2, 05
        add     eax, edx                                ; 2AA8 _ 01. D0
        add     eax, 16                                 ; 2AAA _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2AAD _ 8B. 00
        test    eax, eax                                ; 2AAF _ 85. C0
        jnz     ?_116                                   ; 2AB1 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2AB3 _ 8B. 45, F8
        shl     eax, 5                                  ; 2AB6 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2AB9 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2ABF _ 8B. 45, 08
        add     eax, edx                                ; 2AC2 _ 01. D0
        add     eax, 4                                  ; 2AC4 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2AC7 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2ACA _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2ACD _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2AD4 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2AD7 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2ADE _ 8B. 45, FC
        jmp     ?_118                                   ; 2AE1 _ EB, 12

?_116:  add     dword [ebp-8H], 1                       ; 2AE3 _ 83. 45, F8, 01
?_117:  cmp     dword [ebp-8H], 255                     ; 2AE7 _ 81. 7D, F8, 000000FF
        jle     ?_115                                   ; 2AEE _ 7E, AC
        mov     eax, 0                                  ; 2AF0 _ B8, 00000000
?_118:  leave                                           ; 2AF5 _ C9
        ret                                             ; 2AF6 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2AF7 _ 55
        mov     ebp, esp                                ; 2AF8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2AFA _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2AFD _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2B00 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2B02 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2B05 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2B08 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2B0B _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2B0E _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2B11 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2B14 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2B17 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2B1A _ 89. 50, 14
        nop                                             ; 2B1D _ 90
        pop     ebp                                     ; 2B1E _ 5D
        ret                                             ; 2B1F _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2B20 _ 55
        mov     ebp, esp                                ; 2B21 _ 89. E5
        push    esi                                     ; 2B23 _ 56
        push    ebx                                     ; 2B24 _ 53
        sub     esp, 32                                 ; 2B25 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2B28 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B2B _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2B2E _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2B31 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B34 _ 8B. 40, 10
        add     eax, 1                                  ; 2B37 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2B3A _ 39. 45, 10
        jle     ?_119                                   ; 2B3D _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2B3F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B42 _ 8B. 40, 10
        add     eax, 1                                  ; 2B45 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2B48 _ 89. 45, 10
?_119:  cmp     dword [ebp+10H], -1                     ; 2B4B _ 83. 7D, 10, FF
        jge     ?_120                                   ; 2B4F _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2B51 _ C7. 45, 10, FFFFFFFF
?_120:  mov     eax, dword [ebp+0CH]                    ; 2B58 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2B5B _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2B5E _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2B61 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2B64 _ 3B. 45, 10
        jle     ?_127                                   ; 2B67 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2B6D _ 83. 7D, 10, 00
        js      ?_123                                   ; 2B71 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2B77 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2B7A _ 89. 45, E4
        jmp     ?_122                                   ; 2B7D _ EB, 34

?_121:  mov     eax, dword [ebp-1CH]                    ; 2B7F _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2B82 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2B85 _ 8B. 45, 08
        add     edx, 4                                  ; 2B88 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2B8B _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2B8F _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2B92 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2B95 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2B98 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2B9C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2B9F _ 8B. 55, E4
        add     edx, 4                                  ; 2BA2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BA5 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2BA9 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2BAC _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2BAF _ 83. 6D, E4, 01
?_122:  mov     eax, dword [ebp-1CH]                    ; 2BB3 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2BB6 _ 3B. 45, 10
        jg      ?_121                                   ; 2BB9 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2BBB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2BBE _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2BC1 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2BC4 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2BC7 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2BCB _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2BCE _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2BD1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2BD4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2BD7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2BDA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2BDD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2BE0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2BE3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2BE6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2BE9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2BEC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2BEF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2BF2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2BF5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2BF8 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2BFB _ 83. EC, 08
        push    esi                                     ; 2BFE _ 56
        push    ebx                                     ; 2BFF _ 53
        push    ecx                                     ; 2C00 _ 51
        push    edx                                     ; 2C01 _ 52
        push    eax                                     ; 2C02 _ 50
        push    dword [ebp+8H]                          ; 2C03 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2C06 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C0B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2C0E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2C11 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2C14 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C17 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C1A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2C1D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2C20 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2C23 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C26 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C29 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C2C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2C2F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2C32 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C35 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C38 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C3B _ 8B. 40, 0C
        sub     esp, 4                                  ; 2C3E _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2C41 _ FF. 75, F4
        push    esi                                     ; 2C44 _ 56
        push    ebx                                     ; 2C45 _ 53
        push    ecx                                     ; 2C46 _ 51
        push    edx                                     ; 2C47 _ 52
        push    eax                                     ; 2C48 _ 50
        push    dword [ebp+8H]                          ; 2C49 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C4C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C51 _ 83. C4, 20
        jmp     ?_134                                   ; 2C54 _ E9, 00000244

?_123:  mov     eax, dword [ebp+8H]                     ; 2C59 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C5C _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2C5F _ 39. 45, F4
        jge     ?_126                                   ; 2C62 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2C64 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2C67 _ 89. 45, E8
        jmp     ?_125                                   ; 2C6A _ EB, 34

?_124:  mov     eax, dword [ebp-18H]                    ; 2C6C _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2C6F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2C72 _ 8B. 45, 08
        add     edx, 4                                  ; 2C75 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2C78 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C7C _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2C7F _ 8B. 4D, E8
        add     ecx, 4                                  ; 2C82 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2C85 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2C89 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2C8C _ 8B. 55, E8
        add     edx, 4                                  ; 2C8F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C92 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2C96 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2C99 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2C9C _ 83. 45, E8, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 2CA0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CA3 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2CA6 _ 39. 45, E8
        jl      ?_124                                   ; 2CA9 _ 7C, C1
?_126:  mov     eax, dword [ebp+8H]                     ; 2CAB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CAE _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2CB1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CB4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2CB7 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CBA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CBD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CC0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CC3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CC6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CC9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CCC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CCF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CD2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2CD5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2CD8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CDB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CDE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2CE1 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2CE4 _ 83. EC, 08
        push    0                                       ; 2CE7 _ 6A, 00
        push    ebx                                     ; 2CE9 _ 53
        push    ecx                                     ; 2CEA _ 51
        push    edx                                     ; 2CEB _ 52
        push    eax                                     ; 2CEC _ 50
        push    dword [ebp+8H]                          ; 2CED _ FF. 75, 08
        call    sheet_refreshmap                        ; 2CF0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2CF5 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2CF8 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2CFB _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2CFE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D01 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D04 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D07 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D0A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D0D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D10 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D13 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D16 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D19 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D1C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D1F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D22 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D25 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2D28 _ 83. EC, 04
        push    esi                                     ; 2D2B _ 56
        push    0                                       ; 2D2C _ 6A, 00
        push    ebx                                     ; 2D2E _ 53
        push    ecx                                     ; 2D2F _ 51
        push    edx                                     ; 2D30 _ 52
        push    eax                                     ; 2D31 _ 50
        push    dword [ebp+8H]                          ; 2D32 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2D35 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D3A _ 83. C4, 20
        jmp     ?_134                                   ; 2D3D _ E9, 0000015B

?_127:  mov     eax, dword [ebp-0CH]                    ; 2D42 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2D45 _ 3B. 45, 10
        jge     ?_134                                   ; 2D48 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2D4E _ 83. 7D, F4, 00
        js      ?_130                                   ; 2D52 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2D54 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2D57 _ 89. 45, EC
        jmp     ?_129                                   ; 2D5A _ EB, 34

?_128:  mov     eax, dword [ebp-14H]                    ; 2D5C _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2D5F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D62 _ 8B. 45, 08
        add     edx, 4                                  ; 2D65 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2D68 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2D6C _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2D6F _ 8B. 4D, EC
        add     ecx, 4                                  ; 2D72 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2D75 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2D79 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2D7C _ 8B. 55, EC
        add     edx, 4                                  ; 2D7F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D82 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2D86 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2D89 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2D8C _ 83. 45, EC, 01
?_129:  mov     eax, dword [ebp-14H]                    ; 2D90 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2D93 _ 3B. 45, 10
        jl      ?_128                                   ; 2D96 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2D98 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2D9B _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2D9E _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2DA1 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2DA4 _ 89. 54 88, 04
        jmp     ?_133                                   ; 2DA8 _ EB, 72

?_130:  cmp     dword [ebp-0CH], 0                      ; 2DAA _ 83. 7D, F4, 00
        jns     ?_133                                   ; 2DAE _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2DB0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DB3 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2DB6 _ 89. 45, F0
        jmp     ?_132                                   ; 2DB9 _ EB, 3A

?_131:  mov     eax, dword [ebp-10H]                    ; 2DBB _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2DBE _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2DC1 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2DC4 _ 8B. 55, F0
        add     edx, 4                                  ; 2DC7 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2DCA _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DCE _ 8B. 45, 08
        add     ecx, 4                                  ; 2DD1 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2DD4 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2DD8 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2DDB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2DDE _ 8B. 45, 08
        add     edx, 4                                  ; 2DE1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2DE4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2DE8 _ 8B. 55, F0
        add     edx, 1                                  ; 2DEB _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2DEE _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2DF1 _ 83. 6D, F0, 01
?_132:  mov     eax, dword [ebp-10H]                    ; 2DF5 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2DF8 _ 3B. 45, 10
        jge     ?_131                                   ; 2DFB _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2DFD _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E00 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2E03 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E06 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2E09 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2E0D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E10 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2E13 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E16 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E19 _ 89. 50, 10
?_133:  mov     eax, dword [ebp+0CH]                    ; 2E1C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E1F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E22 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E25 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E28 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E2B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E2E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E31 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E34 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E37 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E3A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E3D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E40 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E43 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2E46 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2E49 _ FF. 75, 10
        push    ebx                                     ; 2E4C _ 53
        push    ecx                                     ; 2E4D _ 51
        push    edx                                     ; 2E4E _ 52
        push    eax                                     ; 2E4F _ 50
        push    dword [ebp+8H]                          ; 2E50 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2E53 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2E58 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2E5B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E5E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E61 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E64 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E67 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E6A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E6D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E70 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E73 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E76 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E79 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E7C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E7F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E82 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2E85 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2E88 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2E8B _ FF. 75, 10
        push    ebx                                     ; 2E8E _ 53
        push    ecx                                     ; 2E8F _ 51
        push    edx                                     ; 2E90 _ 52
        push    eax                                     ; 2E91 _ 50
        push    dword [ebp+8H]                          ; 2E92 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2E95 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2E9A _ 83. C4, 20
?_134:  nop                                             ; 2E9D _ 90
        lea     esp, [ebp-8H]                           ; 2E9E _ 8D. 65, F8
        pop     ebx                                     ; 2EA1 _ 5B
        pop     esi                                     ; 2EA2 _ 5E
        pop     ebp                                     ; 2EA3 _ 5D
        ret                                             ; 2EA4 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2EA5 _ 55
        mov     ebp, esp                                ; 2EA6 _ 89. E5
        push    edi                                     ; 2EA8 _ 57
        push    esi                                     ; 2EA9 _ 56
        push    ebx                                     ; 2EAA _ 53
        sub     esp, 28                                 ; 2EAB _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2EAE _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2EB1 _ 8B. 40, 18
        test    eax, eax                                ; 2EB4 _ 85. C0
        js      ?_135                                   ; 2EB6 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2EB8 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2EBB _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2EBE _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2EC1 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2EC4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EC7 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2ECA _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2ECD _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2ED0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2ED3 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2ED6 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2ED9 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2EDC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EDF _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2EE2 _ 8B. 45, 14
        add     edx, eax                                ; 2EE5 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2EE7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2EEA _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2EED _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2EF0 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2EF3 _ 03. 45, E4
        sub     esp, 4                                  ; 2EF6 _ 83. EC, 04
        push    ebx                                     ; 2EF9 _ 53
        push    ecx                                     ; 2EFA _ 51
        push    edi                                     ; 2EFB _ 57
        push    esi                                     ; 2EFC _ 56
        push    edx                                     ; 2EFD _ 52
        push    eax                                     ; 2EFE _ 50
        push    dword [ebp+8H]                          ; 2EFF _ FF. 75, 08
        call    sheet_refresh_new                       ; 2F02 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F07 _ 83. C4, 20
?_135:  mov     eax, 0                                  ; 2F0A _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2F0F _ 8D. 65, F4
        pop     ebx                                     ; 2F12 _ 5B
        pop     esi                                     ; 2F13 _ 5E
        pop     edi                                     ; 2F14 _ 5F
        pop     ebp                                     ; 2F15 _ 5D
        ret                                             ; 2F16 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2F17 _ 55
        mov     ebp, esp                                ; 2F18 _ 89. E5
        push    esi                                     ; 2F1A _ 56
        push    ebx                                     ; 2F1B _ 53
        sub     esp, 16                                 ; 2F1C _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2F1F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F22 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2F25 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2F28 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2F2B _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2F2E _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2F31 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F34 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2F37 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F3A _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2F3D _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2F40 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F43 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F46 _ 8B. 40, 18
        test    eax, eax                                ; 2F49 _ 85. C0
        js      ?_136                                   ; 2F4B _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2F51 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2F54 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2F57 _ 8B. 45, F4
        add     edx, eax                                ; 2F5A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2F5C _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2F5F _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2F62 _ 8B. 45, F0
        add     eax, ecx                                ; 2F65 _ 01. C8
        sub     esp, 8                                  ; 2F67 _ 83. EC, 08
        push    0                                       ; 2F6A _ 6A, 00
        push    edx                                     ; 2F6C _ 52
        push    eax                                     ; 2F6D _ 50
        push    dword [ebp-0CH]                         ; 2F6E _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2F71 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2F74 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2F77 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F7C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2F7F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F82 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2F85 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2F88 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2F8B _ 8B. 55, 14
        add     ecx, edx                                ; 2F8E _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2F90 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2F93 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2F96 _ 8B. 55, 10
        add     edx, ebx                                ; 2F99 _ 01. DA
        sub     esp, 8                                  ; 2F9B _ 83. EC, 08
        push    eax                                     ; 2F9E _ 50
        push    ecx                                     ; 2F9F _ 51
        push    edx                                     ; 2FA0 _ 52
        push    dword [ebp+14H]                         ; 2FA1 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2FA4 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2FA7 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2FAA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FAF _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2FB2 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2FB5 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2FB8 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2FBB _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2FBE _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2FC1 _ 8B. 45, F4
        add     edx, eax                                ; 2FC4 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2FC6 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2FC9 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2FCC _ 8B. 45, F0
        add     eax, ebx                                ; 2FCF _ 01. D8
        sub     esp, 4                                  ; 2FD1 _ 83. EC, 04
        push    ecx                                     ; 2FD4 _ 51
        push    0                                       ; 2FD5 _ 6A, 00
        push    edx                                     ; 2FD7 _ 52
        push    eax                                     ; 2FD8 _ 50
        push    dword [ebp-0CH]                         ; 2FD9 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2FDC _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2FDF _ FF. 75, 08
        call    sheet_refresh_new                       ; 2FE2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FE7 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2FEA _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2FED _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2FF0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2FF3 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2FF6 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2FF9 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2FFC _ 8B. 4D, 14
        add     ebx, ecx                                ; 2FFF _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 3001 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 3004 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 3007 _ 8B. 4D, 10
        add     ecx, esi                                ; 300A _ 01. F1
        sub     esp, 4                                  ; 300C _ 83. EC, 04
        push    edx                                     ; 300F _ 52
        push    eax                                     ; 3010 _ 50
        push    ebx                                     ; 3011 _ 53
        push    ecx                                     ; 3012 _ 51
        push    dword [ebp+14H]                         ; 3013 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3016 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3019 _ FF. 75, 08
        call    sheet_refresh_new                       ; 301C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3021 _ 83. C4, 20
?_136:  nop                                             ; 3024 _ 90
        lea     esp, [ebp-8H]                           ; 3025 _ 8D. 65, F8
        pop     ebx                                     ; 3028 _ 5B
        pop     esi                                     ; 3029 _ 5E
        pop     ebp                                     ; 302A _ 5D
        ret                                             ; 302B _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 302C _ 55
        mov     ebp, esp                                ; 302D _ 89. E5
        sub     esp, 48                                 ; 302F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3032 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3035 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 3037 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 303A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 303D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3040 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3043 _ 83. 7D, 0C, 00
        jns     ?_137                                   ; 3047 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3049 _ C7. 45, 0C, 00000000
?_137:  cmp     dword [ebp+10H], 8                      ; 3050 _ 83. 7D, 10, 08
        jg      ?_138                                   ; 3054 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3056 _ C7. 45, 10, 00000000
?_138:  mov     eax, dword [ebp+8H]                     ; 305D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3060 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3063 _ 39. 45, 14
        jle     ?_139                                   ; 3066 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3068 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 306B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 306E _ 89. 45, 14
?_139:  mov     eax, dword [ebp+8H]                     ; 3071 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3074 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3077 _ 39. 45, 18
        jle     ?_140                                   ; 307A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 307C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 307F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3082 _ 89. 45, 18
?_140:  mov     eax, dword [ebp+1CH]                    ; 3085 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 3088 _ 89. 45, DC
        jmp     ?_147                                   ; 308B _ E9, 00000118

?_141:  mov     eax, dword [ebp+8H]                     ; 3090 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 3093 _ 8B. 55, DC
        add     edx, 4                                  ; 3096 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3099 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 309D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 30A0 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 30A3 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 30A5 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 30A8 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 30AB _ 8B. 55, 08
        add     edx, 1044                               ; 30AE _ 81. C2, 00000414
        sub     eax, edx                                ; 30B4 _ 29. D0
        sar     eax, 5                                  ; 30B6 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 30B9 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 30BC _ C7. 45, E0, 00000000
        jmp     ?_146                                   ; 30C3 _ E9, 000000CD

?_142:  mov     eax, dword [ebp-10H]                    ; 30C8 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 30CB _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 30CE _ 8B. 45, E0
        add     eax, edx                                ; 30D1 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 30D3 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 30D6 _ C7. 45, E4, 00000000
        jmp     ?_145                                   ; 30DD _ E9, 000000A0

?_143:  mov     eax, dword [ebp-10H]                    ; 30E2 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 30E5 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 30E8 _ 8B. 45, E4
        add     eax, edx                                ; 30EB _ 01. D0
        mov     dword [ebp-4H], eax                     ; 30ED _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 30F0 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 30F3 _ 3B. 45, FC
        jg      ?_144                                   ; 30F6 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 30FC _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 30FF _ 3B. 45, 14
        jge     ?_144                                   ; 3102 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 3104 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 3107 _ 3B. 45, F8
        jg      ?_144                                   ; 310A _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 310C _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 310F _ 3B. 45, 18
        jge     ?_144                                   ; 3112 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 3114 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3117 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 311A _ 0F AF. 45, E0
        mov     edx, eax                                ; 311E _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3120 _ 8B. 45, E4
        add     eax, edx                                ; 3123 _ 01. D0
        mov     edx, eax                                ; 3125 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3127 _ 8B. 45, F4
        add     eax, edx                                ; 312A _ 01. D0
        movzx   eax, byte [eax]                         ; 312C _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 312F _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 3132 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3135 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3138 _ 0F AF. 45, F8
        mov     edx, eax                                ; 313C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 313E _ 8B. 45, FC
        add     eax, edx                                ; 3141 _ 01. D0
        mov     edx, eax                                ; 3143 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3145 _ 8B. 45, EC
        add     eax, edx                                ; 3148 _ 01. D0
        movzx   eax, byte [eax]                         ; 314A _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 314D _ 38. 45, DA
        jnz     ?_144                                   ; 3150 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3152 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 3156 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3159 _ 8B. 40, 14
        cmp     edx, eax                                ; 315C _ 39. C2
        jz      ?_144                                   ; 315E _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3160 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3163 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3166 _ 0F AF. 45, F8
        mov     edx, eax                                ; 316A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 316C _ 8B. 45, FC
        add     eax, edx                                ; 316F _ 01. D0
        mov     edx, eax                                ; 3171 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3173 _ 8B. 45, E8
        add     edx, eax                                ; 3176 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3178 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 317C _ 88. 02
?_144:  add     dword [ebp-1CH], 1                      ; 317E _ 83. 45, E4, 01
?_145:  mov     eax, dword [ebp-10H]                    ; 3182 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3185 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 3188 _ 39. 45, E4
        jl      ?_143                                   ; 318B _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 3191 _ 83. 45, E0, 01
?_146:  mov     eax, dword [ebp-10H]                    ; 3195 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3198 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 319B _ 39. 45, E0
        jl      ?_142                                   ; 319E _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 31A4 _ 83. 45, DC, 01
?_147:  mov     eax, dword [ebp-24H]                    ; 31A8 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 31AB _ 3B. 45, 20
        jle     ?_141                                   ; 31AE _ 0F 8E, FFFFFEDC
        nop                                             ; 31B4 _ 90
        leave                                           ; 31B5 _ C9
        ret                                             ; 31B6 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 31B7 _ 55
        mov     ebp, esp                                ; 31B8 _ 89. E5
        sub     esp, 64                                 ; 31BA _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 31BD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 31C0 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 31C3 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 31C6 _ 83. 7D, 0C, 00
        jns     ?_148                                   ; 31CA _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 31CC _ C7. 45, 0C, 00000000
?_148:  mov     eax, dword [ebp+8H]                     ; 31D3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31D6 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 31D9 _ 39. 45, 0C
        jle     ?_149                                   ; 31DC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 31DE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31E1 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 31E4 _ 89. 45, 0C
?_149:  cmp     dword [ebp+10H], 0                      ; 31E7 _ 83. 7D, 10, 00
        jns     ?_150                                   ; 31EB _ 79, 07
        mov     dword [ebp+10H], 0                      ; 31ED _ C7. 45, 10, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 31F4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31F7 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 31FA _ 39. 45, 10
        jle     ?_151                                   ; 31FD _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 31FF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3202 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 3205 _ 89. 45, 10
?_151:  mov     eax, dword [ebp+1CH]                    ; 3208 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 320B _ 89. 45, E0
        jmp     ?_162                                   ; 320E _ E9, 00000140

?_152:  mov     eax, dword [ebp+8H]                     ; 3213 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 3216 _ 8B. 55, E0
        add     edx, 4                                  ; 3219 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 321C _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3220 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3223 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3226 _ 8B. 55, 08
        add     edx, 1044                               ; 3229 _ 81. C2, 00000414
        sub     eax, edx                                ; 322F _ 29. D0
        sar     eax, 5                                  ; 3231 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 3234 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 3237 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 323A _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 323C _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 323F _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3242 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3245 _ 8B. 55, 0C
        sub     edx, eax                                ; 3248 _ 29. C2
        mov     eax, edx                                ; 324A _ 89. D0
        mov     dword [ebp-30H], eax                    ; 324C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 324F _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3252 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3255 _ 8B. 55, 10
        sub     edx, eax                                ; 3258 _ 29. C2
        mov     eax, edx                                ; 325A _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 325C _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 325F _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3262 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3265 _ 8B. 55, 14
        sub     edx, eax                                ; 3268 _ 29. C2
        mov     eax, edx                                ; 326A _ 89. D0
        mov     dword [ebp-28H], eax                    ; 326C _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 326F _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3272 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3275 _ 8B. 55, 18
        sub     edx, eax                                ; 3278 _ 29. C2
        mov     eax, edx                                ; 327A _ 89. D0
        mov     dword [ebp-24H], eax                    ; 327C _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 327F _ 83. 7D, D0, 00
        jns     ?_153                                   ; 3283 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 3285 _ C7. 45, D0, 00000000
?_153:  cmp     dword [ebp-2CH], 0                      ; 328C _ 83. 7D, D4, 00
        jns     ?_154                                   ; 3290 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 3292 _ C7. 45, D4, 00000000
?_154:  mov     eax, dword [ebp-10H]                    ; 3299 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 329C _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 329F _ 39. 45, D8
        jle     ?_155                                   ; 32A2 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 32A4 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32A7 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 32AA _ 89. 45, D8
?_155:  mov     eax, dword [ebp-10H]                    ; 32AD _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 32B0 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 32B3 _ 39. 45, DC
        jle     ?_156                                   ; 32B6 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 32B8 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 32BB _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 32BE _ 89. 45, DC
?_156:  mov     eax, dword [ebp-2CH]                    ; 32C1 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 32C4 _ 89. 45, E4
        jmp     ?_161                                   ; 32C7 _ EB, 7A

?_157:  mov     eax, dword [ebp-10H]                    ; 32C9 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 32CC _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 32CF _ 8B. 45, E4
        add     eax, edx                                ; 32D2 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 32D4 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 32D7 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 32DA _ 89. 45, E8
        jmp     ?_160                                   ; 32DD _ EB, 58

?_158:  mov     eax, dword [ebp-10H]                    ; 32DF _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 32E2 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 32E5 _ 8B. 45, E8
        add     eax, edx                                ; 32E8 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 32EA _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 32ED _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32F0 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 32F3 _ 0F AF. 45, E4
        mov     edx, eax                                ; 32F7 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 32F9 _ 8B. 45, E8
        add     eax, edx                                ; 32FC _ 01. D0
        mov     edx, eax                                ; 32FE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3300 _ 8B. 45, F4
        add     eax, edx                                ; 3303 _ 01. D0
        movzx   eax, byte [eax]                         ; 3305 _ 0F B6. 00
        movzx   edx, al                                 ; 3308 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 330B _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 330E _ 8B. 40, 14
        cmp     edx, eax                                ; 3311 _ 39. C2
        jz      ?_159                                   ; 3313 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3315 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3318 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 331B _ 0F AF. 45, F8
        mov     edx, eax                                ; 331F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3321 _ 8B. 45, FC
        add     eax, edx                                ; 3324 _ 01. D0
        mov     edx, eax                                ; 3326 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3328 _ 8B. 45, EC
        add     edx, eax                                ; 332B _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 332D _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 3331 _ 88. 02
?_159:  add     dword [ebp-18H], 1                      ; 3333 _ 83. 45, E8, 01
?_160:  mov     eax, dword [ebp-18H]                    ; 3337 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 333A _ 3B. 45, D8
        jl      ?_158                                   ; 333D _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 333F _ 83. 45, E4, 01
?_161:  mov     eax, dword [ebp-1CH]                    ; 3343 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 3346 _ 3B. 45, DC
        jl      ?_157                                   ; 3349 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 334F _ 83. 45, E0, 01
?_162:  mov     eax, dword [ebp+8H]                     ; 3353 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3356 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3359 _ 39. 45, E0
        jle     ?_152                                   ; 335C _ 0F 8E, FFFFFEB1
        nop                                             ; 3362 _ 90
        leave                                           ; 3363 _ C9
        ret                                             ; 3364 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 3365 _ 55
        mov     ebp, esp                                ; 3366 _ 89. E5
        sub     esp, 24                                 ; 3368 _ 83. EC, 18
        sub     esp, 8                                  ; 336B _ 83. EC, 08
        push    52                                      ; 336E _ 6A, 34
        push    67                                      ; 3370 _ 6A, 43
        call    io_out8                                 ; 3372 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3377 _ 83. C4, 10
        sub     esp, 8                                  ; 337A _ 83. EC, 08
        push    156                                     ; 337D _ 68, 0000009C
        push    64                                      ; 3382 _ 6A, 40
        call    io_out8                                 ; 3384 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3389 _ 83. C4, 10
        sub     esp, 8                                  ; 338C _ 83. EC, 08
        push    46                                      ; 338F _ 6A, 2E
        push    64                                      ; 3391 _ 6A, 40
        call    io_out8                                 ; 3393 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3398 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 339B _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 33A5 _ C7. 45, F4, 00000000
        jmp     ?_164                                   ; 33AC _ EB, 26

?_163:  mov     eax, dword [ebp-0CH]                    ; 33AE _ 8B. 45, F4
        shl     eax, 4                                  ; 33B1 _ C1. E0, 04
        add     eax, ?_235                              ; 33B4 _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 33B9 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 33BF _ 8B. 45, F4
        shl     eax, 4                                  ; 33C2 _ C1. E0, 04
        add     eax, ?_236                              ; 33C5 _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 33CA _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 33D0 _ 83. 45, F4, 01
?_164:  cmp     dword [ebp-0CH], 499                    ; 33D4 _ 81. 7D, F4, 000001F3
        jle     ?_163                                   ; 33DB _ 7E, D1
        nop                                             ; 33DD _ 90
        leave                                           ; 33DE _ C9
        ret                                             ; 33DF _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 33E0 _ 55
        mov     ebp, esp                                ; 33E1 _ 89. E5
        sub     esp, 16                                 ; 33E3 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 33E6 _ C7. 45, FC, 00000000
        jmp     ?_167                                   ; 33ED _ EB, 36

?_165:  mov     eax, dword [ebp-4H]                     ; 33EF _ 8B. 45, FC
        shl     eax, 4                                  ; 33F2 _ C1. E0, 04
        add     eax, ?_235                              ; 33F5 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 33FA _ 8B. 00
        test    eax, eax                                ; 33FC _ 85. C0
        jnz     ?_166                                   ; 33FE _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3400 _ 8B. 45, FC
        shl     eax, 4                                  ; 3403 _ C1. E0, 04
        add     eax, ?_235                              ; 3406 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 340B _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3411 _ 8B. 45, FC
        shl     eax, 4                                  ; 3414 _ C1. E0, 04
        add     eax, timerctl                           ; 3417 _ 05, 00000280(d)
        add     eax, 4                                  ; 341C _ 83. C0, 04
        jmp     ?_168                                   ; 341F _ EB, 12

?_166:  add     dword [ebp-4H], 1                       ; 3421 _ 83. 45, FC, 01
?_167:  cmp     dword [ebp-4H], 499                     ; 3425 _ 81. 7D, FC, 000001F3
        jle     ?_165                                   ; 342C _ 7E, C1
        mov     eax, 0                                  ; 342E _ B8, 00000000
?_168:  leave                                           ; 3433 _ C9
        ret                                             ; 3434 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3435 _ 55
        mov     ebp, esp                                ; 3436 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3438 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 343B _ C7. 40, 04, 00000000
        nop                                             ; 3442 _ 90
        pop     ebp                                     ; 3443 _ 5D
        ret                                             ; 3444 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3445 _ 55
        mov     ebp, esp                                ; 3446 _ 89. E5
        sub     esp, 4                                  ; 3448 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 344B _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 344E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3451 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3454 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3457 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 345A _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 345D _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3461 _ 88. 50, 0C
        nop                                             ; 3464 _ 90
        leave                                           ; 3465 _ C9
        ret                                             ; 3466 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3467 _ 55
        mov     ebp, esp                                ; 3468 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 346A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 346D _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3470 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3472 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3475 _ C7. 40, 04, 00000002
        nop                                             ; 347C _ 90
        pop     ebp                                     ; 347D _ 5D
        ret                                             ; 347E _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 347F _ 55
        mov     ebp, esp                                ; 3480 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3482 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3485 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3488 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 348A _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 348D _ C7. 40, 04, 00000002
        nop                                             ; 3494 _ 90
        pop     ebp                                     ; 3495 _ 5D
        ret                                             ; 3496 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 3497 _ 55
        mov     ebp, esp                                ; 3498 _ 89. E5
        mov     eax, timerctl                           ; 349A _ B8, 00000280(d)
        pop     ebp                                     ; 349F _ 5D
        ret                                             ; 34A0 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 34A1 _ 55
        mov     ebp, esp                                ; 34A2 _ 89. E5
        push    ebx                                     ; 34A4 _ 53
        sub     esp, 20                                 ; 34A5 _ 83. EC, 14
        sub     esp, 8                                  ; 34A8 _ 83. EC, 08
        push    32                                      ; 34AB _ 6A, 20
        push    32                                      ; 34AD _ 6A, 20
        call    io_out8                                 ; 34AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 34B4 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 34B7 _ A1, 00000280(d)
        add     eax, 1                                  ; 34BC _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 34BF _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 34C4 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 34CB _ C7. 45, F4, 00000000
        jmp     ?_172                                   ; 34D2 _ E9, 000000AD

?_169:  mov     eax, dword [ebp-0CH]                    ; 34D7 _ 8B. 45, F4
        shl     eax, 4                                  ; 34DA _ C1. E0, 04
        add     eax, ?_235                              ; 34DD _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 34E2 _ 8B. 00
        cmp     eax, 2                                  ; 34E4 _ 83. F8, 02
        jne     ?_170                                   ; 34E7 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 34ED _ 8B. 45, F4
        shl     eax, 4                                  ; 34F0 _ C1. E0, 04
        add     eax, ?_234                              ; 34F3 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 34F8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 34FA _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 34FD _ 8B. 45, F4
        shl     eax, 4                                  ; 3500 _ C1. E0, 04
        add     eax, ?_234                              ; 3503 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 3508 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 350A _ 8B. 45, F4
        shl     eax, 4                                  ; 350D _ C1. E0, 04
        add     eax, ?_234                              ; 3510 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 3515 _ 8B. 00
        test    eax, eax                                ; 3517 _ 85. C0
        jnz     ?_170                                   ; 3519 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 351B _ 8B. 45, F4
        shl     eax, 4                                  ; 351E _ C1. E0, 04
        add     eax, ?_235                              ; 3521 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 3526 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 352C _ 8B. 45, F4
        shl     eax, 4                                  ; 352F _ C1. E0, 04
        add     eax, ?_237                              ; 3532 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 3537 _ 0F B6. 00
        movzx   edx, al                                 ; 353A _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 353D _ 8B. 45, F4
        shl     eax, 4                                  ; 3540 _ C1. E0, 04
        add     eax, ?_236                              ; 3543 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 3548 _ 8B. 00
        sub     esp, 8                                  ; 354A _ 83. EC, 08
        push    edx                                     ; 354D _ 52
        push    eax                                     ; 354E _ 50
        call    fifo8_put                               ; 354F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3554 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3557 _ 8B. 45, F4
        shl     eax, 4                                  ; 355A _ C1. E0, 04
        add     eax, timerctl                           ; 355D _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 3562 _ 8D. 58, 04
        call    getTaskTimer                            ; 3565 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 356A _ 39. C3
        jnz     ?_170                                   ; 356C _ 75, 07
        mov     dword [ebp-10H], 1                      ; 356E _ C7. 45, F0, 00000001
?_170:  cmp     dword [ebp-10H], 1                      ; 3575 _ 83. 7D, F0, 01
        jnz     ?_171                                   ; 3579 _ 75, 05
        call    task_switch                             ; 357B _ E8, FFFFFFFC(rel)
?_171:  add     dword [ebp-0CH], 1                      ; 3580 _ 83. 45, F4, 01
?_172:  cmp     dword [ebp-0CH], 499                    ; 3584 _ 81. 7D, F4, 000001F3
        jle     ?_169                                   ; 358B _ 0F 8E, FFFFFF46
        nop                                             ; 3591 _ 90
        mov     ebx, dword [ebp-4H]                     ; 3592 _ 8B. 5D, FC
        leave                                           ; 3595 _ C9
        ret                                             ; 3596 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 3597 _ 55
        mov     ebp, esp                                ; 3598 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 359A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 359D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 35A0 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 35A3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 35A6 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 35A9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 35AB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35AE _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 35B1 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 35B4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 35B7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 35BE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 35C1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 35C8 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 35CB _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 35D2 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 35D5 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 35D8 _ 89. 50, 18
        nop                                             ; 35DB _ 90
        pop     ebp                                     ; 35DC _ 5D
        ret                                             ; 35DD _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 35DE _ 55
        mov     ebp, esp                                ; 35DF _ 89. E5
        sub     esp, 24                                 ; 35E1 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 35E4 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 35E7 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 35EA _ 83. 7D, 08, 00
        jnz     ?_173                                   ; 35EE _ 75, 0A
        mov     eax, 4294967295                         ; 35F0 _ B8, FFFFFFFF
        jmp     ?_177                                   ; 35F5 _ E9, 000000A0

?_173:  mov     eax, dword [ebp+8H]                     ; 35FA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 35FD _ 8B. 40, 10
        test    eax, eax                                ; 3600 _ 85. C0
        jnz     ?_174                                   ; 3602 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3604 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3607 _ 8B. 40, 14
        or      eax, 01H                                ; 360A _ 83. C8, 01
        mov     edx, eax                                ; 360D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 360F _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3612 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3615 _ B8, FFFFFFFF
        jmp     ?_177                                   ; 361A _ EB, 7E

?_174:  mov     eax, dword [ebp+8H]                     ; 361C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 361F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3621 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3624 _ 8B. 40, 08
        add     edx, eax                                ; 3627 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3629 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 362D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 362F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3632 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3635 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3638 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 363B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 363E _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3641 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3644 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3647 _ 8B. 40, 0C
        cmp     edx, eax                                ; 364A _ 39. C2
        jl      ?_175                                   ; 364C _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 364E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3651 _ C7. 40, 08, 00000000
?_175:  mov     eax, dword [ebp+8H]                     ; 3658 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 365B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 365E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3661 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3664 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3667 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 366A _ 8B. 40, 18
        test    eax, eax                                ; 366D _ 85. C0
        jz      ?_176                                   ; 366F _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3671 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3674 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3677 _ 8B. 40, 04
        cmp     eax, 2                                  ; 367A _ 83. F8, 02
        jz      ?_176                                   ; 367D _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 367F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3682 _ 8B. 40, 18
        sub     esp, 4                                  ; 3685 _ 83. EC, 04
        push    0                                       ; 3688 _ 6A, 00
        push    -1                                      ; 368A _ 6A, FF
        push    eax                                     ; 368C _ 50
        call    task_run                                ; 368D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3692 _ 83. C4, 10
?_176:  mov     eax, 1                                  ; 3695 _ B8, 00000001
?_177:  leave                                           ; 369A _ C9
        ret                                             ; 369B _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 369C _ 55
        mov     ebp, esp                                ; 369D _ 89. E5
        sub     esp, 16                                 ; 369F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 36A2 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 36A5 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 36A8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36AB _ 8B. 40, 0C
        cmp     edx, eax                                ; 36AE _ 39. C2
        jnz     ?_178                                   ; 36B0 _ 75, 07
        mov     eax, 4294967295                         ; 36B2 _ B8, FFFFFFFF
        jmp     ?_180                                   ; 36B7 _ EB, 51

?_178:  mov     eax, dword [ebp+8H]                     ; 36B9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 36BC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 36BE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 36C1 _ 8B. 40, 04
        add     eax, edx                                ; 36C4 _ 01. D0
        movzx   eax, byte [eax]                         ; 36C6 _ 0F B6. 00
        movzx   eax, al                                 ; 36C9 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 36CC _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 36CF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 36D2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 36D5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 36D8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 36DB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 36DE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 36E1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 36E4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36E7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 36EA _ 39. C2
        jl      ?_179                                   ; 36EC _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 36EE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 36F1 _ C7. 40, 04, 00000000
?_179:  mov     eax, dword [ebp+8H]                     ; 36F8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 36FB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 36FE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3701 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3704 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3707 _ 8B. 45, FC
?_180:  leave                                           ; 370A _ C9
        ret                                             ; 370B _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 370C _ 55
        mov     ebp, esp                                ; 370D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 370F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3712 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3715 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3718 _ 8B. 40, 10
        sub     edx, eax                                ; 371B _ 29. C2
        mov     eax, edx                                ; 371D _ 89. D0
        pop     ebp                                     ; 371F _ 5D
        ret                                             ; 3720 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3721 _ 55
        mov     ebp, esp                                ; 3722 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3724 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_181                                   ; 372B _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 372D _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3734 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3737 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 373A _ 89. 45, 0C
?_181:  mov     eax, dword [ebp+0CH]                    ; 373D _ 8B. 45, 0C
        mov     edx, eax                                ; 3740 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3742 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3745 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3748 _ 8B. 45, 10
        mov     edx, eax                                ; 374B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 374D _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3750 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3754 _ 8B. 45, 10
        sar     eax, 16                                 ; 3757 _ C1. F8, 10
        mov     edx, eax                                ; 375A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 375C _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 375F _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3762 _ 8B. 45, 14
        mov     edx, eax                                ; 3765 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3767 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 376A _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 376D _ 8B. 45, 0C
        shr     eax, 16                                 ; 3770 _ C1. E8, 10
        and     eax, 0FH                                ; 3773 _ 83. E0, 0F
        mov     edx, eax                                ; 3776 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3778 _ 8B. 45, 14
        sar     eax, 8                                  ; 377B _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 377E _ 83. E0, F0
        or      eax, edx                                ; 3781 _ 09. D0
        mov     edx, eax                                ; 3783 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3785 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3788 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 378B _ 8B. 45, 10
        shr     eax, 24                                 ; 378E _ C1. E8, 18
        mov     edx, eax                                ; 3791 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3793 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3796 _ 88. 50, 07
        nop                                             ; 3799 _ 90
        pop     ebp                                     ; 379A _ 5D
        ret                                             ; 379B _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 379C _ 55
        mov     ebp, esp                                ; 379D _ 89. E5
        mov     eax, dword [task_timer]                 ; 379F _ A1, 000021C4(d)
        pop     ebp                                     ; 37A4 _ 5D
        ret                                             ; 37A5 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 37A6 _ 55
        mov     ebp, esp                                ; 37A7 _ 89. E5
        sub     esp, 16                                 ; 37A9 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 37AC _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 37B2 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 37B5 _ 6B. C0, 1C
        add     eax, edx                                ; 37B8 _ 01. D0
        add     eax, 8                                  ; 37BA _ 83. C0, 08
        mov     dword [eax], 0                          ; 37BD _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 37C3 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 37C9 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 37CC _ 6B. C0, 1C
        add     eax, edx                                ; 37CF _ 01. D0
        add     eax, 12                                 ; 37D1 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 37D4 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 37DA _ C7. 45, FC, 00000000
        jmp     ?_183                                   ; 37E1 _ EB, 1A

?_182:  mov     eax, dword [taskctl]                    ; 37E3 _ A1, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 37E8 _ 8B. 55, FC
        shl     edx, 5                                  ; 37EB _ C1. E2, 05
        add     eax, edx                                ; 37EE _ 01. D0
        add     eax, 16                                 ; 37F0 _ 83. C0, 10
        mov     dword [eax], 0                          ; 37F3 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 37F9 _ 83. 45, FC, 01
?_183:  cmp     dword [ebp-4H], 4                       ; 37FD _ 83. 7D, FC, 04
        jle     ?_182                                   ; 3801 _ 7E, E0
        nop                                             ; 3803 _ 90
        leave                                           ; 3804 _ C9
        ret                                             ; 3805 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3806 _ 55
        mov     ebp, esp                                ; 3807 _ 89. E5
        sub     esp, 24                                 ; 3809 _ 83. EC, 18
        call    get_addr_gdt                            ; 380C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3811 _ 89. 45, F0
        sub     esp, 8                                  ; 3814 _ 83. EC, 08
        push    692                                     ; 3817 _ 68, 000002B4
        push    dword [ebp+8H]                          ; 381C _ FF. 75, 08
        call    memman_alloc_4K                         ; 381F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3824 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3827 _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 382C _ C7. 45, EC, 00000000
        jmp     ?_185                                   ; 3833 _ EB, 73

?_184:  mov     edx, dword [taskctl]                    ; 3835 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 383B _ 8B. 45, EC
        imul    eax, eax, 124                           ; 383E _ 6B. C0, 7C
        add     eax, edx                                ; 3841 _ 01. D0
        add     eax, 96                                 ; 3843 _ 83. C0, 60
        mov     dword [eax], 0                          ; 3846 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 384C _ 8B. 45, EC
        add     eax, 7                                  ; 384F _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3852 _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 3858 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 385F _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3862 _ 6B. C0, 7C
        add     eax, ecx                                ; 3865 _ 01. C8
        add     eax, 92                                 ; 3867 _ 83. C0, 5C
        mov     dword [eax], edx                        ; 386A _ 89. 10
        mov     eax, dword [taskctl]                    ; 386C _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 3871 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 3874 _ 6B. D2, 7C
        add     edx, 96                                 ; 3877 _ 83. C2, 60
        add     eax, edx                                ; 387A _ 01. D0
        add     eax, 16                                 ; 387C _ 83. C0, 10
        mov     ecx, eax                                ; 387F _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 3881 _ 8B. 45, EC
        add     eax, 7                                  ; 3884 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3887 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 388E _ 8B. 45, F0
        add     eax, edx                                ; 3891 _ 01. D0
        push    137                                     ; 3893 _ 68, 00000089
        push    ecx                                     ; 3898 _ 51
        push    103                                     ; 3899 _ 6A, 67
        push    eax                                     ; 389B _ 50
        call    set_segmdesc                            ; 389C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38A1 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 38A4 _ 83. 45, EC, 01
?_185:  cmp     dword [ebp-14H], 4                      ; 38A8 _ 83. 7D, EC, 04
        jle     ?_184                                   ; 38AC _ 7E, 87
        call    task_alloc                              ; 38AE _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 38B3 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 38B6 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 38B9 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 38C0 _ 8B. 45, F4
        mov     dword [eax+8H], 1                       ; 38C3 _ C7. 40, 08, 00000001
        mov     eax, dword [ebp-0CH]                    ; 38CA _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 38CD _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 38D4 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 38D7 _ FF. 75, F4
        call    task_add                                ; 38DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38DF _ 83. C4, 10
        call    task_switchsub                          ; 38E2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 38E7 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 38EA _ 8B. 00
        sub     esp, 12                                 ; 38EC _ 83. EC, 0C
        push    eax                                     ; 38EF _ 50
        call    load_tr                                 ; 38F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38F5 _ 83. C4, 10
        call    timer_alloc                             ; 38F8 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 38FD _ A3, 000021C4(d)
        mov     eax, dword [ebp-0CH]                    ; 3902 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3905 _ 8B. 40, 08
        mov     edx, eax                                ; 3908 _ 89. C2
        mov     eax, dword [task_timer]                 ; 390A _ A1, 000021C4(d)
        sub     esp, 8                                  ; 390F _ 83. EC, 08
        push    edx                                     ; 3912 _ 52
        push    eax                                     ; 3913 _ 50
        call    timer_setTime                           ; 3914 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3919 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 391C _ 8B. 45, F4
        leave                                           ; 391F _ C9
        ret                                             ; 3920 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3921 _ 55
        mov     ebp, esp                                ; 3922 _ 89. E5
        sub     esp, 16                                 ; 3924 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3927 _ C7. 45, F8, 00000000
        jmp     ?_188                                   ; 392E _ E9, 000000E1

?_186:  mov     edx, dword [taskctl]                    ; 3933 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 3939 _ 8B. 45, F8
        imul    eax, eax, 124                           ; 393C _ 6B. C0, 7C
        add     eax, edx                                ; 393F _ 01. D0
        add     eax, 96                                 ; 3941 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 3944 _ 8B. 00
        test    eax, eax                                ; 3946 _ 85. C0
        jne     ?_187                                   ; 3948 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 394E _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 3953 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3956 _ 6B. D2, 7C
        add     edx, 80                                 ; 3959 _ 83. C2, 50
        add     eax, edx                                ; 395C _ 01. D0
        add     eax, 12                                 ; 395E _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 3961 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3964 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3967 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 396E _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3971 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 3978 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 397B _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3982 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3985 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 398C _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 398F _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3996 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3999 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 39A0 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 39A3 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 39AA _ 8B. 45, F8
        add     eax, 1                                  ; 39AD _ 83. C0, 01
        shl     eax, 9                                  ; 39B0 _ C1. E0, 09
        mov     edx, eax                                ; 39B3 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 39B5 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 39B8 _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 39BB _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 39BE _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 39C5 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 39C8 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 39CF _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 39D2 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 39D9 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 39DC _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 39E3 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 39E6 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 39ED _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 39F0 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 39F7 _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 39FA _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A01 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3A04 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3A0B _ 8B. 45, FC
        jmp     ?_189                                   ; 3A0E _ EB, 13

?_187:  add     dword [ebp-8H], 1                       ; 3A10 _ 83. 45, F8, 01
?_188:  cmp     dword [ebp-8H], 4                       ; 3A14 _ 83. 7D, F8, 04
        jle     ?_186                                   ; 3A18 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3A1E _ B8, 00000000
?_189:  leave                                           ; 3A23 _ C9
        ret                                             ; 3A24 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3A25 _ 55
        mov     ebp, esp                                ; 3A26 _ 89. E5
        sub     esp, 8                                  ; 3A28 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3A2B _ 83. 7D, 0C, 00
        jns     ?_190                                   ; 3A2F _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3A31 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A34 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3A37 _ 89. 45, 0C
?_190:  cmp     dword [ebp+10H], 0                      ; 3A3A _ 83. 7D, 10, 00
        jle     ?_191                                   ; 3A3E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3A40 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3A43 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3A46 _ 89. 50, 08
?_191:  mov     eax, dword [ebp+8H]                     ; 3A49 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A4C _ 8B. 40, 04
        cmp     eax, 2                                  ; 3A4F _ 83. F8, 02
        jnz     ?_192                                   ; 3A52 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3A54 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A57 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3A5A _ 39. 45, 0C
        jz      ?_192                                   ; 3A5D _ 74, 0E
        sub     esp, 12                                 ; 3A5F _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3A62 _ FF. 75, 08
        call    task_remove                             ; 3A65 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A6A _ 83. C4, 10
?_192:  mov     eax, dword [ebp+8H]                     ; 3A6D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A70 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3A73 _ 83. F8, 02
        jz      ?_193                                   ; 3A76 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3A78 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3A7B _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3A7E _ 89. 50, 0C
        sub     esp, 12                                 ; 3A81 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3A84 _ FF. 75, 08
        call    task_add                                ; 3A87 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A8C _ 83. C4, 10
?_193:  mov     eax, dword [taskctl]                    ; 3A8F _ A1, 000021C8(d)
        mov     dword [eax+4H], 1                       ; 3A94 _ C7. 40, 04, 00000001
        nop                                             ; 3A9B _ 90
        leave                                           ; 3A9C _ C9
        ret                                             ; 3A9D _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3A9E _ 55
        mov     ebp, esp                                ; 3A9F _ 89. E5
        sub     esp, 24                                 ; 3AA1 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 3AA4 _ 8B. 15, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3AAA _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 3AAF _ 8B. 00
        imul    eax, eax, 28                            ; 3AB1 _ 6B. C0, 1C
        add     eax, edx                                ; 3AB4 _ 01. D0
        add     eax, 8                                  ; 3AB6 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3AB9 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3ABC _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3ABF _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3AC2 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3AC5 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3AC9 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3ACC _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3ACF _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3AD2 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3AD5 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3AD8 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3ADB _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3ADE _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3AE1 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3AE4 _ 8B. 00
        cmp     edx, eax                                ; 3AE6 _ 39. C2
        jnz     ?_194                                   ; 3AE8 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3AEA _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3AED _ C7. 40, 04, 00000000
?_194:  mov     eax, dword [taskctl]                    ; 3AF4 _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 3AF9 _ 8B. 40, 04
        test    eax, eax                                ; 3AFC _ 85. C0
        jz      ?_195                                   ; 3AFE _ 74, 1D
        call    task_switchsub                          ; 3B00 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 3B05 _ 8B. 15, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3B0B _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 3B10 _ 8B. 00
        imul    eax, eax, 28                            ; 3B12 _ 6B. C0, 1C
        add     eax, edx                                ; 3B15 _ 01. D0
        add     eax, 8                                  ; 3B17 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3B1A _ 89. 45, EC
?_195:  mov     eax, dword [ebp-14H]                    ; 3B1D _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B20 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B23 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3B26 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3B2A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3B2D _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3B30 _ 8B. 40, 08
        mov     edx, eax                                ; 3B33 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3B35 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3B3A _ 83. EC, 08
        push    edx                                     ; 3B3D _ 52
        push    eax                                     ; 3B3E _ 50
        call    timer_setTime                           ; 3B3F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B44 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3B47 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3B4A _ 3B. 45, F0
        jz      ?_196                                   ; 3B4D _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3B4F _ 83. 7D, F4, 00
        jz      ?_196                                   ; 3B53 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3B55 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3B58 _ 8B. 00
        sub     esp, 8                                  ; 3B5A _ 83. EC, 08
        push    eax                                     ; 3B5D _ 50
        push    0                                       ; 3B5E _ 6A, 00
        call    farjmp                                  ; 3B60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B65 _ 83. C4, 10
        nop                                             ; 3B68 _ 90
?_196:  nop                                             ; 3B69 _ 90
        leave                                           ; 3B6A _ C9
        ret                                             ; 3B6B _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3B6C _ 55
        mov     ebp, esp                                ; 3B6D _ 89. E5
        sub     esp, 24                                 ; 3B6F _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3B72 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3B79 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3B7D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B80 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3B83 _ 83. F8, 02
        jnz     ?_197                                   ; 3B86 _ 75, 4C
        call    task_now                                ; 3B88 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3B8D _ 89. 45, F4
        sub     esp, 12                                 ; 3B90 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3B93 _ FF. 75, 08
        call    task_remove                             ; 3B96 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B9B _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3B9E _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3BA2 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3BA5 _ 3B. 45, F4
        jnz     ?_197                                   ; 3BA8 _ 75, 2A
        call    task_switchsub                          ; 3BAA _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3BAF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3BB4 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3BB7 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3BBB _ 83. 7D, F4, 00
        jz      ?_197                                   ; 3BBF _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3BC1 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3BC4 _ 8B. 00
        sub     esp, 8                                  ; 3BC6 _ 83. EC, 08
        push    eax                                     ; 3BC9 _ 50
        push    0                                       ; 3BCA _ 6A, 00
        call    farjmp                                  ; 3BCC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3BD1 _ 83. C4, 10
?_197:  movsx   eax, byte [ebp-0DH]                     ; 3BD4 _ 0F BE. 45, F3
        leave                                           ; 3BD8 _ C9
        ret                                             ; 3BD9 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3BDA _ 55
        mov     ebp, esp                                ; 3BDB _ 89. E5
        sub     esp, 16                                 ; 3BDD _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3BE0 _ 8B. 15, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3BE6 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 3BEB _ 8B. 00
        imul    eax, eax, 28                            ; 3BED _ 6B. C0, 1C
        add     eax, edx                                ; 3BF0 _ 01. D0
        add     eax, 8                                  ; 3BF2 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3BF5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3BF8 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3BFB _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3BFE _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3C01 _ 8B. 44 90, 08
        leave                                           ; 3C05 _ C9
        ret                                             ; 3C06 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3C07 _ 55
        mov     ebp, esp                                ; 3C08 _ 89. E5
        sub     esp, 16                                 ; 3C0A _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3C0D _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3C13 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C16 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3C19 _ 6B. C0, 1C
        add     eax, edx                                ; 3C1C _ 01. D0
        add     eax, 8                                  ; 3C1E _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3C21 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3C24 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3C27 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3C29 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3C2C _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3C2F _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3C33 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3C36 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3C38 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3C3B _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3C3E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3C40 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3C43 _ C7. 40, 04, 00000002
        nop                                             ; 3C4A _ 90
        leave                                           ; 3C4B _ C9
        ret                                             ; 3C4C _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3C4D _ 55
        mov     ebp, esp                                ; 3C4E _ 89. E5
        sub     esp, 16                                 ; 3C50 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3C53 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3C59 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C5C _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3C5F _ 6B. C0, 1C
        add     eax, edx                                ; 3C62 _ 01. D0
        add     eax, 8                                  ; 3C64 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3C67 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3C6A _ C7. 45, F8, 00000000
        jmp     ?_200                                   ; 3C71 _ EB, 23

?_198:  mov     eax, dword [ebp-4H]                     ; 3C73 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3C76 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3C79 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3C7D _ 39. 45, 08
        jnz     ?_199                                   ; 3C80 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3C82 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3C85 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3C88 _ C7. 44 90, 08, 00000000
        jmp     ?_201                                   ; 3C90 _ EB, 0E

?_199:  add     dword [ebp-8H], 1                       ; 3C92 _ 83. 45, F8, 01
?_200:  mov     eax, dword [ebp-4H]                     ; 3C96 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3C99 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3C9B _ 39. 45, F8
        jl      ?_198                                   ; 3C9E _ 7C, D3
?_201:  mov     eax, dword [ebp-4H]                     ; 3CA0 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3CA3 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3CA5 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3CA8 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3CAB _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3CAD _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3CB0 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3CB3 _ 39. 45, F8
        jge     ?_202                                   ; 3CB6 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3CB8 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3CBB _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3CBE _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3CC1 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3CC4 _ 89. 50, 04
?_202:  mov     eax, dword [ebp-4H]                     ; 3CC7 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3CCA _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3CCD _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3CD0 _ 8B. 00
        cmp     edx, eax                                ; 3CD2 _ 39. C2
        jl      ?_203                                   ; 3CD4 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3CD6 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3CD9 _ C7. 40, 04, 00000000
?_203:  mov     eax, dword [ebp+8H]                     ; 3CE0 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3CE3 _ C7. 40, 04, 00000001
        jmp     ?_205                                   ; 3CEA _ EB, 1B

?_204:  mov     eax, dword [ebp-8H]                     ; 3CEC _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3CEF _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3CF2 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3CF5 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3CF9 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3CFC _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3CFF _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3D03 _ 83. 45, F8, 01
?_205:  mov     eax, dword [ebp-4H]                     ; 3D07 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D0A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3D0C _ 39. 45, F8
        jl      ?_204                                   ; 3D0F _ 7C, DB
        nop                                             ; 3D11 _ 90
        leave                                           ; 3D12 _ C9
        ret                                             ; 3D13 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3D14 _ 55
        mov     ebp, esp                                ; 3D15 _ 89. E5
        sub     esp, 16                                 ; 3D17 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3D1A _ C7. 45, FC, 00000000
        jmp     ?_207                                   ; 3D21 _ EB, 1B

?_206:  mov     edx, dword [taskctl]                    ; 3D23 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-4H]                     ; 3D29 _ 8B. 45, FC
        imul    eax, eax, 28                            ; 3D2C _ 6B. C0, 1C
        add     eax, edx                                ; 3D2F _ 01. D0
        add     eax, 8                                  ; 3D31 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3D34 _ 8B. 00
        test    eax, eax                                ; 3D36 _ 85. C0
        jg      ?_208                                   ; 3D38 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3D3A _ 83. 45, FC, 01
?_207:  cmp     dword [ebp-4H], 2                       ; 3D3E _ 83. 7D, FC, 02
        jle     ?_206                                   ; 3D42 _ 7E, DF
        jmp     ?_209                                   ; 3D44 _ EB, 01

?_208:  nop                                             ; 3D46 _ 90
?_209:  mov     eax, dword [taskctl]                    ; 3D47 _ A1, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3D4C _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3D4F _ 89. 10
        mov     eax, dword [taskctl]                    ; 3D51 _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3D56 _ C7. 40, 04, 00000000
        nop                                             ; 3D5D _ 90
        leave                                           ; 3D5E _ C9
        ret                                             ; 3D5F _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3D60 _ 55
        mov     ebp, esp                                ; 3D61 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3D63 _ A1, 000021C8(d)
        pop     ebp                                     ; 3D68 _ 5D
        ret                                             ; 3D69 _ C3
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


