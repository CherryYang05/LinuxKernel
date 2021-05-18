; Disassembly of file: ckernel.o
; Mon May 17 16:44:01 2021
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
        movzx   eax, word [?_223]                       ; 002F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0036 _ 98
        mov     dword [ebp-64H], eax                    ; 0037 _ 89. 45, 9C
        movzx   eax, word [?_224]                       ; 003A _ 0F B7. 05, 00000006(d)
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
        push    ?_208                                   ; 02F1 _ 68, 00000000(d)
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
        mov     dword [task_a.2279], eax                ; 0356 _ A3, 00000234(d)
        mov     eax, dword [task_a.2279]                ; 035B _ A1, 00000234(d)
        mov     dword [?_225], eax                      ; 0360 _ A3, 00000020(d)
        mov     byte [ebp-79H], 0                       ; 0365 _ C6. 45, 87, 00
        mov     dword [ebp-78H], 7                      ; 0369 _ C7. 45, 88, 00000007
        mov     dword [ebp-74H], 0                      ; 0370 _ C7. 45, 8C, 00000000
        mov     edx, dword [sheet_win]                  ; 0377 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 037D _ A1, 00000224(d)
        sub     esp, 8                                  ; 0382 _ 83. EC, 08
        push    ?_209                                   ; 0385 _ 68, 00000008(d)
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
        je      ?_011                                   ; 040D _ 0F 84, 000003ED
        call    io_sti                                  ; 0413 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0418 _ 83. EC, 0C
        push    keyInfo                                 ; 041B _ 68, 00000008(d)
        call    fifo8_get                               ; 0420 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0425 _ 83. C4, 10
        mov     byte [ebp-79H], al                      ; 0428 _ 88. 45, 87
        cmp     byte [ebp-79H], 28                      ; 042B _ 80. 7D, 87, 1C
        jnz     ?_003                                   ; 042F _ 75, 59
        mov     ebx, dword [cnt.2280]                   ; 0431 _ 8B. 1D, 00000238(d)
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
        mov     eax, dword [cnt.2280]                   ; 0460 _ A1, 00000238(d)
        add     eax, 1                                  ; 0465 _ 83. C0, 01
        mov     dword [cnt.2280], eax                   ; 0468 _ A3, 00000238(d)
        mov     eax, dword [cnt.2280]                   ; 046D _ A1, 00000238(d)
        cmp     dword [ebp-48H], eax                    ; 0472 _ 39. 45, B8
        jg      ?_001                                   ; 0475 _ 0F 8F, FFFFFF35
        mov     dword [cnt.2280], 0                     ; 047B _ C7. 05, 00000238(d), 00000000
        jmp     ?_001                                   ; 0485 _ E9, FFFFFF26

?_003:  movzx   eax, byte [ebp-79H]                     ; 048A _ 0F B6. 45, 87
        movzx   eax, byte [keytable+eax]                ; 048E _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 0495 _ 84. C0
        jz      ?_004                                   ; 0497 _ 74, 18
        cmp     byte [ebp-79H], 15                      ; 0499 _ 80. 7D, 87, 0F
        jbe     ?_004                                   ; 049D _ 76, 12
        cmp     byte [ebp-79H], 83                      ; 049F _ 80. 7D, 87, 53
        ja      ?_004                                   ; 04A3 _ 77, 0C
        mov     eax, dword [line.2283]                  ; 04A5 _ A1, 0000023C(d)
        cmp     eax, 142                                ; 04AA _ 3D, 0000008E
        jle     ?_005                                   ; 04AF _ 7E, 18
?_004:  cmp     byte [ebp-79H], 14                      ; 04B1 _ 80. 7D, 87, 0E
        jne     ?_008                                   ; 04B5 _ 0F 85, 00000270
        mov     eax, dword [line.2283]                  ; 04BB _ A1, 0000023C(d)
        cmp     eax, 7                                  ; 04C0 _ 83. F8, 07
        jle     ?_008                                   ; 04C3 _ 0F 8E, 00000262
?_005:  movzx   eax, byte [ebp-79H]                     ; 04C9 _ 0F B6. 45, 87
        movzx   eax, byte [keytable+eax]                ; 04CD _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 04D4 _ 84. C0
        je      ?_007                                   ; 04D6 _ 0F 84, 00000129
        cmp     byte [ebp-79H], 15                      ; 04DC _ 80. 7D, 87, 0F
        jbe     ?_007                                   ; 04E0 _ 0F 86, 0000011F
        cmp     byte [ebp-79H], 83                      ; 04E6 _ 80. 7D, 87, 53
        ja      ?_007                                   ; 04EA _ 0F 87, 00000115
        mov     eax, dword [line.2283]                  ; 04F0 _ A1, 0000023C(d)
        cmp     eax, 142                                ; 04F5 _ 3D, 0000008E
        jg      ?_007                                   ; 04FA _ 0F 8F, 00000105
        mov     eax, dword [pos.2284]                   ; 0500 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0505 _ 8D. 78, 28
        mov     eax, dword [line.2283]                  ; 0508 _ A1, 0000023C(d)
        lea     esi, [eax+10H]                          ; 050D _ 8D. 70, 10
        mov     eax, dword [pos.2284]                   ; 0510 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0515 _ 8D. 58, 1A
        mov     eax, dword [line.2283]                  ; 0518 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 051D _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 0520 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0525 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0528 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 052D _ 8B. 00
        sub     esp, 4                                  ; 052F _ 83. EC, 04
        push    edi                                     ; 0532 _ 57
        push    esi                                     ; 0533 _ 56
        push    ebx                                     ; 0534 _ 53
        push    ecx                                     ; 0535 _ 51
        push    7                                       ; 0536 _ 6A, 07
        push    edx                                     ; 0538 _ 52
        push    eax                                     ; 0539 _ 50
        call    boxfill8                                ; 053A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 053F _ 83. C4, 20
        mov     eax, dword [pos.2284]                   ; 0542 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0547 _ 8D. 78, 2A
        mov     eax, dword [line.2283]                  ; 054A _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 054F _ 8D. 70, 12
        mov     eax, dword [pos.2284]                   ; 0552 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0557 _ 8D. 58, 1A
        mov     eax, dword [line.2283]                  ; 055A _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 055F _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0562 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0568 _ A1, 00000224(d)
        sub     esp, 8                                  ; 056D _ 83. EC, 08
        push    edi                                     ; 0570 _ 57
        push    esi                                     ; 0571 _ 56
        push    ebx                                     ; 0572 _ 53
        push    ecx                                     ; 0573 _ 51
        push    edx                                     ; 0574 _ 52
        push    eax                                     ; 0575 _ 50
        call    sheet_refresh                           ; 0576 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 057B _ 83. C4, 20
        movzx   eax, byte [ebp-79H]                     ; 057E _ 0F B6. 45, 87
        movzx   eax, byte [keytable+eax]                ; 0582 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0589 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 058C _ C6. 45, E3, 00
        mov     eax, dword [pos.2284]                   ; 0590 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0595 _ 8D. 70, 1A
        mov     eax, dword [line.2283]                  ; 0598 _ A1, 0000023C(d)
        lea     ebx, [eax+0AH]                          ; 059D _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 05A0 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 05A6 _ A1, 00000224(d)
        sub     esp, 8                                  ; 05AB _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 05AE _ 8D. 4D, E2
        push    ecx                                     ; 05B1 _ 51
        push    0                                       ; 05B2 _ 6A, 00
        push    esi                                     ; 05B4 _ 56
        push    ebx                                     ; 05B5 _ 53
        push    edx                                     ; 05B6 _ 52
        push    eax                                     ; 05B7 _ 50
        call    showString                              ; 05B8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05BD _ 83. C4, 20
        mov     eax, dword [line.2283]                  ; 05C0 _ A1, 0000023C(d)
        add     eax, 8                                  ; 05C5 _ 83. C0, 08
        mov     dword [line.2283], eax                  ; 05C8 _ A3, 0000023C(d)
        mov     eax, dword [sheet_win]                  ; 05CD _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 05D2 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 05D5 _ 8D. 50, F0
        mov     eax, dword [line.2283]                  ; 05D8 _ A1, 0000023C(d)
        cmp     edx, eax                                ; 05DD _ 39. C2
        jg      ?_006                                   ; 05DF _ 7F, 17
        mov     eax, dword [pos.2284]                   ; 05E1 _ A1, 00000074(d)
        add     eax, 16                                 ; 05E6 _ 83. C0, 10
        mov     dword [pos.2284], eax                   ; 05E9 _ A3, 00000074(d)
        mov     dword [line.2283], 0                    ; 05EE _ C7. 05, 0000023C(d), 00000000
?_006:  mov     dword [ebp-70H], 0                      ; 05F8 _ C7. 45, 90, 00000000
        nop                                             ; 05FF _ 90
        jmp     ?_017                                   ; 0600 _ E9, 000003ED

?_007:  cmp     byte [ebp-79H], 14                      ; 0605 _ 80. 7D, 87, 0E
        jne     ?_017                                   ; 0609 _ 0F 85, 000003E3
        mov     eax, dword [line.2283]                  ; 060F _ A1, 0000023C(d)
        cmp     eax, 7                                  ; 0614 _ 83. F8, 07
        jle     ?_017                                   ; 0617 _ 0F 8E, 000003D5
        mov     eax, dword [pos.2284]                   ; 061D _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0622 _ 8D. 78, 28
        mov     eax, dword [line.2283]                  ; 0625 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 062A _ 8D. 70, 12
        mov     eax, dword [pos.2284]                   ; 062D _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0632 _ 8D. 58, 1A
        mov     eax, dword [line.2283]                  ; 0635 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 063A _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 063D _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0642 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0645 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 064A _ 8B. 00
        sub     esp, 4                                  ; 064C _ 83. EC, 04
        push    edi                                     ; 064F _ 57
        push    esi                                     ; 0650 _ 56
        push    ebx                                     ; 0651 _ 53
        push    ecx                                     ; 0652 _ 51
        push    7                                       ; 0653 _ 6A, 07
        push    edx                                     ; 0655 _ 52
        push    eax                                     ; 0656 _ 50
        call    boxfill8                                ; 0657 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 065C _ 83. C4, 20
        mov     eax, dword [pos.2284]                   ; 065F _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0664 _ 8D. 78, 2A
        mov     eax, dword [line.2283]                  ; 0667 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 066C _ 8D. 70, 12
        mov     eax, dword [pos.2284]                   ; 066F _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0674 _ 8D. 58, 1A
        mov     eax, dword [line.2283]                  ; 0677 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 067C _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 067F _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0685 _ A1, 00000224(d)
        sub     esp, 8                                  ; 068A _ 83. EC, 08
        push    edi                                     ; 068D _ 57
        push    esi                                     ; 068E _ 56
        push    ebx                                     ; 068F _ 53
        push    ecx                                     ; 0690 _ 51
        push    edx                                     ; 0691 _ 52
        push    eax                                     ; 0692 _ 50
        call    sheet_refresh                           ; 0693 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0698 _ 83. C4, 20
        mov     eax, dword [line.2283]                  ; 069B _ A1, 0000023C(d)
        sub     eax, 8                                  ; 06A0 _ 83. E8, 08
        mov     dword [line.2283], eax                  ; 06A3 _ A3, 0000023C(d)
        mov     eax, dword [pos.2284]                   ; 06A8 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06AD _ 8D. 78, 28
        mov     eax, dword [line.2283]                  ; 06B0 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 06B5 _ 8D. 70, 12
        mov     eax, dword [pos.2284]                   ; 06B8 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06BD _ 8D. 58, 1A
        mov     eax, dword [line.2283]                  ; 06C0 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 06C5 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 06C8 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 06CD _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 06D0 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 06D5 _ 8B. 00
        sub     esp, 4                                  ; 06D7 _ 83. EC, 04
        push    edi                                     ; 06DA _ 57
        push    esi                                     ; 06DB _ 56
        push    ebx                                     ; 06DC _ 53
        push    ecx                                     ; 06DD _ 51
        push    7                                       ; 06DE _ 6A, 07
        push    edx                                     ; 06E0 _ 52
        push    eax                                     ; 06E1 _ 50
        call    boxfill8                                ; 06E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06E7 _ 83. C4, 20
        mov     eax, dword [pos.2284]                   ; 06EA _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 06EF _ 8D. 78, 2A
        mov     eax, dword [line.2283]                  ; 06F2 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 06F7 _ 8D. 70, 12
        mov     eax, dword [pos.2284]                   ; 06FA _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06FF _ 8D. 58, 1A
        mov     eax, dword [line.2283]                  ; 0702 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 0707 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 070A _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0710 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0715 _ 83. EC, 08
        push    edi                                     ; 0718 _ 57
        push    esi                                     ; 0719 _ 56
        push    ebx                                     ; 071A _ 53
        push    ecx                                     ; 071B _ 51
        push    edx                                     ; 071C _ 52
        push    eax                                     ; 071D _ 50
        call    sheet_refresh                           ; 071E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0723 _ 83. C4, 20
        jmp     ?_017                                   ; 0726 _ E9, 000002C7

?_008:  cmp     byte [ebp-79H], 15                      ; 072B _ 80. 7D, 87, 0F
        jne     ?_001                                   ; 072F _ 0F 85, FFFFFC7B
        cmp     dword [ebp-6CH], 0                      ; 0735 _ 83. 7D, 94, 00
        jnz     ?_009                                   ; 0739 _ 75, 3D
        mov     dword [ebp-6CH], 1                      ; 073B _ C7. 45, 94, 00000001
        mov     edx, dword [sheet_win]                  ; 0742 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0748 _ A1, 00000224(d)
        push    0                                       ; 074D _ 6A, 00
        push    ?_208                                   ; 074F _ 68, 00000000(d)
        push    edx                                     ; 0754 _ 52
        push    eax                                     ; 0755 _ 50
        call    make_wtitle8                            ; 0756 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 075B _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 075E _ A1, 00000224(d)
        push    1                                       ; 0763 _ 6A, 01
        push    ?_210                                   ; 0765 _ 68, 0000001E(d)
        push    dword [ebp-38H]                         ; 076A _ FF. 75, C8
        push    eax                                     ; 076D _ 50
        call    make_wtitle8                            ; 076E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0773 _ 83. C4, 10
        jmp     ?_010                                   ; 0776 _ EB, 3B

?_009:  mov     dword [ebp-6CH], 0                      ; 0778 _ C7. 45, 94, 00000000
        mov     edx, dword [sheet_win]                  ; 077F _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0785 _ A1, 00000224(d)
        push    1                                       ; 078A _ 6A, 01
        push    ?_208                                   ; 078C _ 68, 00000000(d)
        push    edx                                     ; 0791 _ 52
        push    eax                                     ; 0792 _ 50
        call    make_wtitle8                            ; 0793 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0798 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 079B _ A1, 00000224(d)
        push    0                                       ; 07A0 _ 6A, 00
        push    ?_210                                   ; 07A2 _ 68, 0000001E(d)
        push    dword [ebp-38H]                         ; 07A7 _ FF. 75, C8
        push    eax                                     ; 07AA _ 50
        call    make_wtitle8                            ; 07AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07B0 _ 83. C4, 10
?_010:  mov     eax, dword [sheet_win]                  ; 07B3 _ A1, 00000228(d)
        mov     ecx, dword [eax+4H]                     ; 07B8 _ 8B. 48, 04
        mov     edx, dword [sheet_win]                  ; 07BB _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 07C1 _ A1, 00000224(d)
        sub     esp, 8                                  ; 07C6 _ 83. EC, 08
        push    21                                      ; 07C9 _ 6A, 15
        push    ecx                                     ; 07CB _ 51
        push    0                                       ; 07CC _ 6A, 00
        push    0                                       ; 07CE _ 6A, 00
        push    edx                                     ; 07D0 _ 52
        push    eax                                     ; 07D1 _ 50
        call    sheet_refresh                           ; 07D2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07D7 _ 83. C4, 20
        mov     eax, dword [ebp-38H]                    ; 07DA _ 8B. 45, C8
        mov     edx, dword [eax+4H]                     ; 07DD _ 8B. 50, 04
        mov     eax, dword [shtctl]                     ; 07E0 _ A1, 00000224(d)
        sub     esp, 8                                  ; 07E5 _ 83. EC, 08
        push    21                                      ; 07E8 _ 6A, 15
        push    edx                                     ; 07EA _ 52
        push    0                                       ; 07EB _ 6A, 00
        push    0                                       ; 07ED _ 6A, 00
        push    dword [ebp-38H]                         ; 07EF _ FF. 75, C8
        push    eax                                     ; 07F2 _ 50
        call    sheet_refresh                           ; 07F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07F8 _ 83. C4, 20
        jmp     ?_001                                   ; 07FB _ E9, FFFFFBB0

?_011:  sub     esp, 12                                 ; 0800 _ 83. EC, 0C
        push    mouseInfo                               ; 0803 _ 68, 00000024(d)
        call    fifo8_status                            ; 0808 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 080D _ 83. C4, 10
        test    eax, eax                                ; 0810 _ 85. C0
        jz      ?_012                                   ; 0812 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0814 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 081A _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0820 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0825 _ 83. EC, 04
        push    ecx                                     ; 0828 _ 51
        push    edx                                     ; 0829 _ 52
        push    eax                                     ; 082A _ 50
        call    showMouseInfo                           ; 082B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0830 _ 83. C4, 10
        jmp     ?_001                                   ; 0833 _ E9, FFFFFB78

?_012:  sub     esp, 12                                 ; 0838 _ 83. EC, 0C
        push    timerInfo                               ; 083B _ 68, 00000200(d)
        call    fifo8_status                            ; 0840 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0845 _ 83. C4, 10
        test    eax, eax                                ; 0848 _ 85. C0
        je      ?_001                                   ; 084A _ 0F 84, FFFFFB60
        call    io_sti                                  ; 0850 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0855 _ 83. EC, 0C
        push    timerInfo                               ; 0858 _ 68, 00000200(d)
        call    fifo8_get                               ; 085D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0862 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0865 _ 89. 45, CC
        cmp     dword [ebp-34H], 10                     ; 0868 _ 83. 7D, CC, 0A
        jnz     ?_013                                   ; 086C _ 75, 73
        mov     edx, dword [sheet_back]                 ; 086E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0874 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0879 _ 83. EC, 08
        push    ?_211                                   ; 087C _ 68, 00000027(d)
        push    7                                       ; 0881 _ 6A, 07
        push    160                                     ; 0883 _ 68, 000000A0
        push    dword [ebp-74H]                         ; 0888 _ FF. 75, 8C
        push    edx                                     ; 088B _ 52
        push    eax                                     ; 088C _ 50
        call    showString                              ; 088D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0892 _ 83. C4, 20
        sub     esp, 8                                  ; 0895 _ 83. EC, 08
        push    100                                     ; 0898 _ 6A, 64
        push    dword [ebp-58H]                         ; 089A _ FF. 75, A8
        call    timer_setTime                           ; 089D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08A2 _ 83. C4, 10
        add     dword [ebp-74H], 8                      ; 08A5 _ 83. 45, 8C, 08
        add     dword [ebp-70H], 1                      ; 08A9 _ 83. 45, 90, 01
        cmp     dword [ebp-74H], 39                     ; 08AD _ 83. 7D, 8C, 27
        jle     ?_001                                   ; 08B1 _ 0F 8E, FFFFFAF9
        cmp     dword [ebp-70H], 5                      ; 08B7 _ 83. 7D, 90, 05
        jne     ?_001                                   ; 08BB _ 0F 85, FFFFFAEF
        call    io_cli                                  ; 08C1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2279]                ; 08C6 _ A1, 00000234(d)
        sub     esp, 12                                 ; 08CB _ 83. EC, 0C
        push    eax                                     ; 08CE _ 50
        call    task_sleep                              ; 08CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08D4 _ 83. C4, 10
        call    io_sti                                  ; 08D7 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08DC _ E9, FFFFFACF

?_013:  cmp     dword [ebp-34H], 2                      ; 08E1 _ 83. 7D, CC, 02
        jnz     ?_014                                   ; 08E5 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 08E7 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 08ED _ A1, 00000224(d)
        sub     esp, 8                                  ; 08F2 _ 83. EC, 08
        push    ?_212                                   ; 08F5 _ 68, 00000029(d)
        push    7                                       ; 08FA _ 6A, 07
        push    32                                      ; 08FC _ 6A, 20
        push    0                                       ; 08FE _ 6A, 00
        push    edx                                     ; 0900 _ 52
        push    eax                                     ; 0901 _ 50
        call    showString                              ; 0902 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0907 _ 83. C4, 20
        jmp     ?_001                                   ; 090A _ E9, FFFFFAA1

?_014:  cmp     dword [ebp-34H], 0                      ; 090F _ 83. 7D, CC, 00
        jz      ?_015                                   ; 0913 _ 74, 1E
        sub     esp, 4                                  ; 0915 _ 83. EC, 04
        push    0                                       ; 0918 _ 6A, 00
        push    timerInfo                               ; 091A _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 091F _ FF. 75, B0
        call    timer_init                              ; 0922 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0927 _ 83. C4, 10
        mov     dword [ebp-78H], 0                      ; 092A _ C7. 45, 88, 00000000
        jmp     ?_016                                   ; 0931 _ EB, 1C

?_015:  sub     esp, 4                                  ; 0933 _ 83. EC, 04
        push    1                                       ; 0936 _ 6A, 01
        push    timerInfo                               ; 0938 _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 093D _ FF. 75, B0
        call    timer_init                              ; 0940 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0945 _ 83. C4, 10
        mov     dword [ebp-78H], 7                      ; 0948 _ C7. 45, 88, 00000007
?_016:  sub     esp, 8                                  ; 094F _ 83. EC, 08
        push    50                                      ; 0952 _ 6A, 32
        push    dword [ebp-50H]                         ; 0954 _ FF. 75, B0
        call    timer_setTime                           ; 0957 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 095C _ 83. C4, 10
        mov     eax, dword [pos.2284]                   ; 095F _ A1, 00000074(d)
        add     eax, 40                                 ; 0964 _ 83. C0, 28
        mov     dword [ebp-8CH], eax                    ; 0967 _ 89. 85, FFFFFF74
        mov     eax, dword [line.2283]                  ; 096D _ A1, 0000023C(d)
        lea     edi, [eax+10H]                          ; 0972 _ 8D. 78, 10
        mov     eax, dword [pos.2284]                   ; 0975 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 097A _ 8D. 70, 1A
        mov     eax, dword [line.2283]                  ; 097D _ A1, 0000023C(d)
        lea     ebx, [eax+0AH]                          ; 0982 _ 8D. 58, 0A
        mov     eax, dword [ebp-78H]                    ; 0985 _ 8B. 45, 88
        movzx   ecx, al                                 ; 0988 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 098B _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0990 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0993 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0998 _ 8B. 00
        sub     esp, 4                                  ; 099A _ 83. EC, 04
        push    dword [ebp-8CH]                         ; 099D _ FF. B5, FFFFFF74
        push    edi                                     ; 09A3 _ 57
        push    esi                                     ; 09A4 _ 56
        push    ebx                                     ; 09A5 _ 53
        push    ecx                                     ; 09A6 _ 51
        push    edx                                     ; 09A7 _ 52
        push    eax                                     ; 09A8 _ 50
        call    boxfill8                                ; 09A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09AE _ 83. C4, 20
        mov     eax, dword [pos.2284]                   ; 09B1 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 09B6 _ 8D. 78, 2A
        mov     eax, dword [line.2283]                  ; 09B9 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 09BE _ 8D. 70, 12
        mov     eax, dword [pos.2284]                   ; 09C1 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09C6 _ 8D. 58, 1A
        mov     eax, dword [line.2283]                  ; 09C9 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 09CE _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 09D1 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 09D7 _ A1, 00000224(d)
        sub     esp, 8                                  ; 09DC _ 83. EC, 08
        push    edi                                     ; 09DF _ 57
        push    esi                                     ; 09E0 _ 56
        push    ebx                                     ; 09E1 _ 53
        push    ecx                                     ; 09E2 _ 51
        push    edx                                     ; 09E3 _ 52
        push    eax                                     ; 09E4 _ 50
        call    sheet_refresh                           ; 09E5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09EA _ 83. C4, 20
        jmp     ?_001                                   ; 09ED _ E9, FFFFF9BE

?_017:  nop                                             ; 09F2 _ 90
        jmp     ?_001                                   ; 09F3 _ E9, FFFFF9B8
; CMain End of function

launch_console:; Function begin
        push    ebp                                     ; 09F8 _ 55
        mov     ebp, esp                                ; 09F9 _ 89. E5
        sub     esp, 24                                 ; 09FB _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 09FE _ A1, 00000224(d)
        sub     esp, 12                                 ; 0A03 _ 83. EC, 0C
        push    eax                                     ; 0A06 _ 50
        call    sheet_alloc                             ; 0A07 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A0C _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0A0F _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0A12 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0A17 _ 83. EC, 08
        push    46080                                   ; 0A1A _ 68, 0000B400
        push    eax                                     ; 0A1F _ 50
        call    memman_alloc_4K                         ; 0A20 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A25 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0A28 _ 89. 45, EC
        sub     esp, 12                                 ; 0A2B _ 83. EC, 0C
        push    99                                      ; 0A2E _ 6A, 63
        push    180                                     ; 0A30 _ 68, 000000B4
        push    256                                     ; 0A35 _ 68, 00000100
        push    dword [ebp-14H]                         ; 0A3A _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0A3D _ FF. 75, E8
        call    sheet_setbuf                            ; 0A40 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A45 _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0A48 _ A1, 00000224(d)
        push    0                                       ; 0A4D _ 6A, 00
        push    ?_210                                   ; 0A4F _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0A54 _ FF. 75, E8
        push    eax                                     ; 0A57 _ 50
        call    make_window8                            ; 0A58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A5D _ 83. C4, 10
        sub     esp, 8                                  ; 0A60 _ 83. EC, 08
        push    0                                       ; 0A63 _ 6A, 00
        push    144                                     ; 0A65 _ 68, 00000090
        push    240                                     ; 0A6A _ 68, 000000F0
        push    28                                      ; 0A6F _ 6A, 1C
        push    8                                       ; 0A71 _ 6A, 08
        push    dword [ebp-18H]                         ; 0A73 _ FF. 75, E8
        call    make_textbox8                           ; 0A76 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A7B _ 83. C4, 20
        call    task_alloc                              ; 0A7E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0A83 _ 89. 45, F0
        call    get_code32_addr                         ; 0A86 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0A8B _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0A8E _ 8B. 45, F0
        mov     dword [eax+70H], 0                      ; 0A91 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-10H]                    ; 0A98 _ 8B. 45, F0
        mov     dword [eax+74H], 1073741824             ; 0A9B _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0AA2 _ 8B. 45, F4
        neg     eax                                     ; 0AA5 _ F7. D8
        add     eax, console_task                       ; 0AA7 _ 05, 00000000(d)
        mov     edx, eax                                ; 0AAC _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0AAE _ 8B. 45, F0
        mov     dword [eax+30H], edx                    ; 0AB1 _ 89. 50, 30
        mov     eax, dword [ebp-10H]                    ; 0AB4 _ 8B. 45, F0
        mov     dword [eax+58H], 0                      ; 0AB7 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-10H]                    ; 0ABE _ 8B. 45, F0
        mov     dword [eax+5CH], 8                      ; 0AC1 _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp-10H]                    ; 0AC8 _ 8B. 45, F0
        mov     dword [eax+60H], 32                     ; 0ACB _ C7. 40, 60, 00000020
        mov     eax, dword [ebp-10H]                    ; 0AD2 _ 8B. 45, F0
        mov     dword [eax+64H], 24                     ; 0AD5 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp-10H]                    ; 0ADC _ 8B. 45, F0
        mov     dword [eax+68H], 0                      ; 0ADF _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-10H]                    ; 0AE6 _ 8B. 45, F0
        mov     dword [eax+6CH], 16                     ; 0AE9 _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp-10H]                    ; 0AF0 _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0AF3 _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 0AF6 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0AF9 _ 8B. 45, F0
        mov     dword [eax+48H], edx                    ; 0AFC _ 89. 50, 48
        mov     eax, dword [ebp-10H]                    ; 0AFF _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0B02 _ 8B. 40, 48
        add     eax, 4                                  ; 0B05 _ 83. C0, 04
        mov     edx, eax                                ; 0B08 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0B0A _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0B0D _ 89. 02
        sub     esp, 4                                  ; 0B0F _ 83. EC, 04
        push    5                                       ; 0B12 _ 6A, 05
        push    1                                       ; 0B14 _ 6A, 01
        push    dword [ebp-10H]                         ; 0B16 _ FF. 75, F0
        call    task_run                                ; 0B19 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B1E _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0B21 _ A1, 00000224(d)
        push    16                                      ; 0B26 _ 6A, 10
        push    350                                     ; 0B28 _ 68, 0000015E
        push    dword [ebp-18H]                         ; 0B2D _ FF. 75, E8
        push    eax                                     ; 0B30 _ 50
        call    sheet_slide                             ; 0B31 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B36 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0B39 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0B3E _ 83. EC, 04
        push    2                                       ; 0B41 _ 6A, 02
        push    dword [ebp-18H]                         ; 0B43 _ FF. 75, E8
        push    eax                                     ; 0B46 _ 50
        call    sheet_level_updown                      ; 0B47 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B4C _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0B4F _ 8B. 45, E8
        leave                                           ; 0B52 _ C9
        ret                                             ; 0B53 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0B54 _ 55
        mov     ebp, esp                                ; 0B55 _ 89. E5
        push    ebx                                     ; 0B57 _ 53
        sub     esp, 212                                ; 0B58 _ 81. EC, 000000D4
        mov     eax, dword [ebp+8H]                     ; 0B5E _ 8B. 45, 08
        mov     dword [ebp-0CCH], eax                   ; 0B61 _ 89. 85, FFFFFF34
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0B67 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0B6D _ 89. 45, F4
        xor     eax, eax                                ; 0B70 _ 31. C0
        call    task_now                                ; 0B72 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B8H], eax                   ; 0B77 _ 89. 85, FFFFFF48
        mov     dword [ebp-0B4H], 8                     ; 0B7D _ C7. 85, FFFFFF4C, 00000008
        mov     dword [ebp-0BCH], 0                     ; 0B87 _ C7. 85, FFFFFF44, 00000000
        push    dword [ebp-0B8H]                        ; 0B91 _ FF. B5, FFFFFF48
        lea     eax, [ebp-8CH]                          ; 0B97 _ 8D. 85, FFFFFF74
        push    eax                                     ; 0B9D _ 50
        push    128                                     ; 0B9E _ 68, 00000080
        lea     eax, [ebp-0A8H]                         ; 0BA3 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0BA9 _ 50
        call    fifo8_init                              ; 0BAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BAF _ 83. C4, 10
        call    timer_alloc                             ; 0BB2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B0H], eax                   ; 0BB7 _ 89. 85, FFFFFF50
        sub     esp, 4                                  ; 0BBD _ 83. EC, 04
        push    1                                       ; 0BC0 _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0BC2 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0BC8 _ 50
        push    dword [ebp-0B0H]                        ; 0BC9 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0BCF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BD4 _ 83. C4, 10
        sub     esp, 8                                  ; 0BD7 _ 83. EC, 08
        push    50                                      ; 0BDA _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0BDC _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0BE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BE7 _ 83. C4, 10
        mov     dword [ebp-0ACH], 0                     ; 0BEA _ C7. 85, FFFFFF54, 00000000
?_018:  call    io_cli                                  ; 0BF4 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0BF9 _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 0BFC _ 8D. 85, FFFFFF58
        push    eax                                     ; 0C02 _ 50
        call    fifo8_status                            ; 0C03 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C08 _ 83. C4, 10
        test    eax, eax                                ; 0C0B _ 85. C0
        jnz     ?_019                                   ; 0C0D _ 75, 07
        call    io_sti                                  ; 0C0F _ E8, FFFFFFFC(rel)
        jmp     ?_018                                   ; 0C14 _ EB, DE

?_019:  sub     esp, 12                                 ; 0C16 _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 0C19 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0C1F _ 50
        call    fifo8_get                               ; 0C20 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C25 _ 83. C4, 10
        mov     dword [ebp-0ACH], eax                   ; 0C28 _ 89. 85, FFFFFF54
        call    io_sti                                  ; 0C2E _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-0ACH], 1                     ; 0C33 _ 83. BD, FFFFFF54, 01
        jg      ?_018                                   ; 0C3A _ 7F, B8
        cmp     dword [ebp-0ACH], 1                     ; 0C3C _ 83. BD, FFFFFF54, 01
        jnz     ?_020                                   ; 0C43 _ 75, 26
        sub     esp, 4                                  ; 0C45 _ 83. EC, 04
        push    0                                       ; 0C48 _ 6A, 00
        lea     eax, [ebp-0A8H]                         ; 0C4A _ 8D. 85, FFFFFF58
        push    eax                                     ; 0C50 _ 50
        push    dword [ebp-0B0H]                        ; 0C51 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0C57 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C5C _ 83. C4, 10
        mov     dword [ebp-0BCH], 7                     ; 0C5F _ C7. 85, FFFFFF44, 00000007
        jmp     ?_021                                   ; 0C69 _ EB, 2D

?_020:  cmp     dword [ebp-0ACH], 0                     ; 0C6B _ 83. BD, FFFFFF54, 00
        jnz     ?_021                                   ; 0C72 _ 75, 24
        sub     esp, 4                                  ; 0C74 _ 83. EC, 04
        push    1                                       ; 0C77 _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0C79 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0C7F _ 50
        push    dword [ebp-0B0H]                        ; 0C80 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0C86 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C8B _ 83. C4, 10
        mov     dword [ebp-0BCH], 0                     ; 0C8E _ C7. 85, FFFFFF44, 00000000
?_021:  sub     esp, 8                                  ; 0C98 _ 83. EC, 08
        push    50                                      ; 0C9B _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0C9D _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0CA3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CA8 _ 83. C4, 10
        mov     eax, dword [ebp-0B4H]                   ; 0CAB _ 8B. 85, FFFFFF4C
        lea     ebx, [eax+6H]                           ; 0CB1 _ 8D. 58, 06
        mov     eax, dword [ebp-0BCH]                   ; 0CB4 _ 8B. 85, FFFFFF44
        movzx   ecx, al                                 ; 0CBA _ 0F B6. C8
        mov     eax, dword [ebp-0CCH]                   ; 0CBD _ 8B. 85, FFFFFF34
        mov     edx, dword [eax+4H]                     ; 0CC3 _ 8B. 50, 04
        mov     eax, dword [ebp-0CCH]                   ; 0CC6 _ 8B. 85, FFFFFF34
        mov     eax, dword [eax]                        ; 0CCC _ 8B. 00
        sub     esp, 4                                  ; 0CCE _ 83. EC, 04
        push    43                                      ; 0CD1 _ 6A, 2B
        push    ebx                                     ; 0CD3 _ 53
        push    28                                      ; 0CD4 _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0CD6 _ FF. B5, FFFFFF4C
        push    ecx                                     ; 0CDC _ 51
        push    edx                                     ; 0CDD _ 52
        push    eax                                     ; 0CDE _ 50
        call    boxfill8                                ; 0CDF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CE4 _ 83. C4, 20
        mov     eax, dword [ebp-0B4H]                   ; 0CE7 _ 8B. 85, FFFFFF4C
        lea     edx, [eax+8H]                           ; 0CED _ 8D. 50, 08
        mov     eax, dword [shtctl]                     ; 0CF0 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0CF5 _ 83. EC, 08
        push    44                                      ; 0CF8 _ 6A, 2C
        push    edx                                     ; 0CFA _ 52
        push    28                                      ; 0CFB _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0CFD _ FF. B5, FFFFFF4C
        push    dword [ebp-0CCH]                        ; 0D03 _ FF. B5, FFFFFF34
        push    eax                                     ; 0D09 _ 50
        call    sheet_refresh                           ; 0D0A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D0F _ 83. C4, 20
        jmp     ?_018                                   ; 0D12 _ E9, FFFFFEDD
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 0D17 _ 55
        mov     ebp, esp                                ; 0D18 _ 89. E5
        sub     esp, 88                                 ; 0D1A _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 0D1D _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 0D20 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0D23 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0D29 _ 89. 45, F4
        xor     eax, eax                                ; 0D2C _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0D2E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0D34 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0D39 _ 83. EC, 08
        push    ?_213                                   ; 0D3C _ 68, 00000030(d)
        push    7                                       ; 0D41 _ 6A, 07
        push    144                                     ; 0D43 _ 68, 00000090
        push    0                                       ; 0D48 _ 6A, 00
        push    edx                                     ; 0D4A _ 52
        push    eax                                     ; 0D4B _ 50
        call    showString                              ; 0D4C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D51 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 0D54 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0D5B _ C7. 45, C8, 00000000
        push    0                                       ; 0D62 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0D64 _ 8D. 45, EC
        push    eax                                     ; 0D67 _ 50
        push    8                                       ; 0D68 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0D6A _ 8D. 45, D0
        push    eax                                     ; 0D6D _ 50
        call    fifo8_init                              ; 0D6E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D73 _ 83. C4, 10
        call    timer_alloc                             ; 0D76 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0D7B _ 89. 45, C4
        sub     esp, 4                                  ; 0D7E _ 83. EC, 04
        push    123                                     ; 0D81 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0D83 _ 8D. 45, D0
        push    eax                                     ; 0D86 _ 50
        push    dword [ebp-3CH]                         ; 0D87 _ FF. 75, C4
        call    timer_init                              ; 0D8A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D8F _ 83. C4, 10
        sub     esp, 8                                  ; 0D92 _ 83. EC, 08
        push    100                                     ; 0D95 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0D97 _ FF. 75, C4
        call    timer_setTime                           ; 0D9A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D9F _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 0DA2 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 0DA9 _ C7. 45, C0, 00000000
?_022:  add     dword [ebp-40H], 1                      ; 0DB0 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 0DB4 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 0DB7 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 0DBA _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 0DBD _ 8B. 00
        sub     esp, 4                                  ; 0DBF _ 83. EC, 04
        push    38                                      ; 0DC2 _ 6A, 26
        push    100                                     ; 0DC4 _ 6A, 64
        push    23                                      ; 0DC6 _ 6A, 17
        push    8                                       ; 0DC8 _ 6A, 08
        push    8                                       ; 0DCA _ 6A, 08
        push    edx                                     ; 0DCC _ 52
        push    eax                                     ; 0DCD _ 50
        call    boxfill8                                ; 0DCE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DD3 _ 83. C4, 20
        sub     esp, 12                                 ; 0DD6 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 0DD9 _ FF. 75, C0
        call    intToHexStr                             ; 0DDC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DE1 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0DE4 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 0DE7 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0DEC _ 83. EC, 08
        push    dword [ebp-34H]                         ; 0DEF _ FF. 75, CC
        push    10                                      ; 0DF2 _ 6A, 0A
        push    23                                      ; 0DF4 _ 6A, 17
        push    8                                       ; 0DF6 _ 6A, 08
        push    dword [ebp-4CH]                         ; 0DF8 _ FF. 75, B4
        push    eax                                     ; 0DFB _ 50
        call    showString                              ; 0DFC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E01 _ 83. C4, 20
        call    io_cli                                  ; 0E04 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0E09 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0E0C _ 8D. 45, D0
        push    eax                                     ; 0E0F _ 50
        call    fifo8_status                            ; 0E10 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E15 _ 83. C4, 10
        test    eax, eax                                ; 0E18 _ 85. C0
        jnz     ?_023                                   ; 0E1A _ 75, 07
        call    io_sti                                  ; 0E1C _ E8, FFFFFFFC(rel)
        jmp     ?_022                                   ; 0E21 _ EB, 8D

?_023:  sub     esp, 12                                 ; 0E23 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0E26 _ 8D. 45, D0
        push    eax                                     ; 0E29 _ 50
        call    fifo8_get                               ; 0E2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E2F _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0E32 _ 89. 45, C8
        call    io_sti                                  ; 0E35 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 0E3A _ 83. 7D, C8, 7B
        jne     ?_022                                   ; 0E3E _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 0E44 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0E4A _ A1, 00000224(d)
        sub     esp, 8                                  ; 0E4F _ 83. EC, 08
        push    ?_214                                   ; 0E52 _ 68, 0000003D(d)
        push    7                                       ; 0E57 _ 6A, 07
        push    176                                     ; 0E59 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 0E5E _ FF. 75, BC
        push    edx                                     ; 0E61 _ 52
        push    eax                                     ; 0E62 _ 50
        call    showString                              ; 0E63 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E68 _ 83. C4, 20
        sub     esp, 8                                  ; 0E6B _ 83. EC, 08
        push    100                                     ; 0E6E _ 6A, 64
        push    dword [ebp-3CH]                         ; 0E70 _ FF. 75, C4
        call    timer_setTime                           ; 0E73 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E78 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 0E7B _ 83. 45, BC, 08
        jmp     ?_022                                   ; 0E7F _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0E84 _ 55
        mov     ebp, esp                                ; 0E85 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E87 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0E8A _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0E90 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0E93 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0E99 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0E9C _ 66: C7. 40, 06, 01E0
        nop                                             ; 0EA2 _ 90
        pop     ebp                                     ; 0EA3 _ 5D
        ret                                             ; 0EA4 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0EA5 _ 55
        mov     ebp, esp                                ; 0EA6 _ 89. E5
        push    ebx                                     ; 0EA8 _ 53
        sub     esp, 36                                 ; 0EA9 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0EAC _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0EAF _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0EB2 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0EB5 _ 89. 45, F4
        jmp     ?_025                                   ; 0EB8 _ EB, 3E

?_024:  mov     eax, dword [ebp+1CH]                    ; 0EBA _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0EBD _ 0F B6. 00
        movzx   eax, al                                 ; 0EC0 _ 0F B6. C0
        shl     eax, 4                                  ; 0EC3 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0EC6 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0ECC _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0ED0 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0ED3 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0ED6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0ED9 _ 8B. 00
        sub     esp, 8                                  ; 0EDB _ 83. EC, 08
        push    ebx                                     ; 0EDE _ 53
        push    ecx                                     ; 0EDF _ 51
        push    dword [ebp+14H]                         ; 0EE0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0EE3 _ FF. 75, 10
        push    edx                                     ; 0EE6 _ 52
        push    eax                                     ; 0EE7 _ 50
        call    showFont8                               ; 0EE8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EED _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0EF0 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0EF4 _ 83. 45, 1C, 01
?_025:  mov     eax, dword [ebp+1CH]                    ; 0EF8 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0EFB _ 0F B6. 00
        test    al, al                                  ; 0EFE _ 84. C0
        jnz     ?_024                                   ; 0F00 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0F02 _ 8B. 45, 14
        add     eax, 16                                 ; 0F05 _ 83. C0, 10
        sub     esp, 8                                  ; 0F08 _ 83. EC, 08
        push    eax                                     ; 0F0B _ 50
        push    dword [ebp+10H]                         ; 0F0C _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0F0F _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0F12 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0F15 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F18 _ FF. 75, 08
        call    sheet_refresh                           ; 0F1B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F20 _ 83. C4, 20
        nop                                             ; 0F23 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F24 _ 8B. 5D, FC
        leave                                           ; 0F27 _ C9
        ret                                             ; 0F28 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0F29 _ 55
        mov     ebp, esp                                ; 0F2A _ 89. E5
        push    ebx                                     ; 0F2C _ 53
        sub     esp, 4                                  ; 0F2D _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0F30 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0F33 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0F36 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0F39 _ 83. E8, 01
        sub     esp, 4                                  ; 0F3C _ 83. EC, 04
        push    edx                                     ; 0F3F _ 52
        push    eax                                     ; 0F40 _ 50
        push    0                                       ; 0F41 _ 6A, 00
        push    0                                       ; 0F43 _ 6A, 00
        push    14                                      ; 0F45 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0F47 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F4A _ FF. 75, 08
        call    boxfill8                                ; 0F4D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F52 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F55 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0F58 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0F5B _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F5E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F61 _ 8B. 45, 10
        sub     eax, 24                                 ; 0F64 _ 83. E8, 18
        sub     esp, 4                                  ; 0F67 _ 83. EC, 04
        push    ecx                                     ; 0F6A _ 51
        push    edx                                     ; 0F6B _ 52
        push    eax                                     ; 0F6C _ 50
        push    0                                       ; 0F6D _ 6A, 00
        push    8                                       ; 0F6F _ 6A, 08
        push    dword [ebp+0CH]                         ; 0F71 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F74 _ FF. 75, 08
        call    boxfill8                                ; 0F77 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F7C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F7F _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0F82 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0F85 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F88 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F8B _ 8B. 45, 10
        sub     eax, 23                                 ; 0F8E _ 83. E8, 17
        sub     esp, 4                                  ; 0F91 _ 83. EC, 04
        push    ecx                                     ; 0F94 _ 51
        push    edx                                     ; 0F95 _ 52
        push    eax                                     ; 0F96 _ 50
        push    0                                       ; 0F97 _ 6A, 00
        push    7                                       ; 0F99 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0F9B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F9E _ FF. 75, 08
        call    boxfill8                                ; 0FA1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FA6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FA9 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0FAC _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0FAF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0FB2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0FB5 _ 8B. 45, 10
        sub     eax, 22                                 ; 0FB8 _ 83. E8, 16
        sub     esp, 4                                  ; 0FBB _ 83. EC, 04
        push    ecx                                     ; 0FBE _ 51
        push    edx                                     ; 0FBF _ 52
        push    eax                                     ; 0FC0 _ 50
        push    0                                       ; 0FC1 _ 6A, 00
        push    8                                       ; 0FC3 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0FC5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FC8 _ FF. 75, 08
        call    boxfill8                                ; 0FCB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FD0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FD3 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FD6 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0FD9 _ 8B. 45, 10
        sub     eax, 20                                 ; 0FDC _ 83. E8, 14
        sub     esp, 4                                  ; 0FDF _ 83. EC, 04
        push    edx                                     ; 0FE2 _ 52
        push    51                                      ; 0FE3 _ 6A, 33
        push    eax                                     ; 0FE5 _ 50
        push    10                                      ; 0FE6 _ 6A, 0A
        push    7                                       ; 0FE8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FEA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FED _ FF. 75, 08
        call    boxfill8                                ; 0FF0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FF5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FF8 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0FFB _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0FFE _ 8B. 45, 10
        sub     eax, 20                                 ; 1001 _ 83. E8, 14
        sub     esp, 4                                  ; 1004 _ 83. EC, 04
        push    edx                                     ; 1007 _ 52
        push    9                                       ; 1008 _ 6A, 09
        push    eax                                     ; 100A _ 50
        push    9                                       ; 100B _ 6A, 09
        push    7                                       ; 100D _ 6A, 07
        push    dword [ebp+0CH]                         ; 100F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1012 _ FF. 75, 08
        call    boxfill8                                ; 1015 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 101A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 101D _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1020 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1023 _ 8B. 45, 10
        sub     eax, 4                                  ; 1026 _ 83. E8, 04
        sub     esp, 4                                  ; 1029 _ 83. EC, 04
        push    edx                                     ; 102C _ 52
        push    50                                      ; 102D _ 6A, 32
        push    eax                                     ; 102F _ 50
        push    10                                      ; 1030 _ 6A, 0A
        push    15                                      ; 1032 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1034 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1037 _ FF. 75, 08
        call    boxfill8                                ; 103A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 103F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1042 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1045 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1048 _ 8B. 45, 10
        sub     eax, 19                                 ; 104B _ 83. E8, 13
        sub     esp, 4                                  ; 104E _ 83. EC, 04
        push    edx                                     ; 1051 _ 52
        push    50                                      ; 1052 _ 6A, 32
        push    eax                                     ; 1054 _ 50
        push    50                                      ; 1055 _ 6A, 32
        push    15                                      ; 1057 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1059 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 105C _ FF. 75, 08
        call    boxfill8                                ; 105F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1064 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1067 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 106A _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 106D _ 8B. 45, 10
        sub     eax, 3                                  ; 1070 _ 83. E8, 03
        sub     esp, 4                                  ; 1073 _ 83. EC, 04
        push    edx                                     ; 1076 _ 52
        push    50                                      ; 1077 _ 6A, 32
        push    eax                                     ; 1079 _ 50
        push    10                                      ; 107A _ 6A, 0A
        push    0                                       ; 107C _ 6A, 00
        push    dword [ebp+0CH]                         ; 107E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1081 _ FF. 75, 08
        call    boxfill8                                ; 1084 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1089 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 108C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 108F _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1092 _ 8B. 45, 10
        sub     eax, 20                                 ; 1095 _ 83. E8, 14
        sub     esp, 4                                  ; 1098 _ 83. EC, 04
        push    edx                                     ; 109B _ 52
        push    51                                      ; 109C _ 6A, 33
        push    eax                                     ; 109E _ 50
        push    51                                      ; 109F _ 6A, 33
        push    0                                       ; 10A1 _ 6A, 00
        push    dword [ebp+0CH]                         ; 10A3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10A6 _ FF. 75, 08
        call    boxfill8                                ; 10A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10AE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10B1 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 10B4 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 10B7 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 10BA _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 10BD _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 10C0 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 10C3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 10C6 _ 83. E8, 2F
        sub     esp, 4                                  ; 10C9 _ 83. EC, 04
        push    ebx                                     ; 10CC _ 53
        push    ecx                                     ; 10CD _ 51
        push    edx                                     ; 10CE _ 52
        push    eax                                     ; 10CF _ 50
        push    15                                      ; 10D0 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 10D2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10D5 _ FF. 75, 08
        call    boxfill8                                ; 10D8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10DD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10E0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 10E3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 10E6 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 10E9 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 10EC _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 10EF _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 10F2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 10F5 _ 83. E8, 2F
        sub     esp, 4                                  ; 10F8 _ 83. EC, 04
        push    ebx                                     ; 10FB _ 53
        push    ecx                                     ; 10FC _ 51
        push    edx                                     ; 10FD _ 52
        push    eax                                     ; 10FE _ 50
        push    15                                      ; 10FF _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1101 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1104 _ FF. 75, 08
        call    boxfill8                                ; 1107 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 110C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 110F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1112 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1115 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1118 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 111B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 111E _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1121 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1124 _ 83. E8, 2F
        sub     esp, 4                                  ; 1127 _ 83. EC, 04
        push    ebx                                     ; 112A _ 53
        push    ecx                                     ; 112B _ 51
        push    edx                                     ; 112C _ 52
        push    eax                                     ; 112D _ 50
        push    7                                       ; 112E _ 6A, 07
        push    dword [ebp+0CH]                         ; 1130 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1133 _ FF. 75, 08
        call    boxfill8                                ; 1136 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 113B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 113E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1141 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1144 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1147 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 114A _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 114D _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1150 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1153 _ 83. E8, 03
        sub     esp, 4                                  ; 1156 _ 83. EC, 04
        push    ebx                                     ; 1159 _ 53
        push    ecx                                     ; 115A _ 51
        push    edx                                     ; 115B _ 52
        push    eax                                     ; 115C _ 50
        push    7                                       ; 115D _ 6A, 07
        push    dword [ebp+0CH]                         ; 115F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1162 _ FF. 75, 08
        call    boxfill8                                ; 1165 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 116A _ 83. C4, 20
        nop                                             ; 116D _ 90
        mov     ebx, dword [ebp-4H]                     ; 116E _ 8B. 5D, FC
        leave                                           ; 1171 _ C9
        ret                                             ; 1172 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1173 _ 55
        mov     ebp, esp                                ; 1174 _ 89. E5
        sub     esp, 24                                 ; 1176 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1179 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 117E _ 89. 45, EC
        movzx   eax, word [?_223]                       ; 1181 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1188 _ 98
        mov     dword [ebp-10H], eax                    ; 1189 _ 89. 45, F0
        movzx   eax, word [?_224]                       ; 118C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1193 _ 98
        mov     dword [ebp-0CH], eax                    ; 1194 _ 89. 45, F4
        sub     esp, 4                                  ; 1197 _ 83. EC, 04
        push    table_rgb.2346                          ; 119A _ 68, 00000080(d)
        push    15                                      ; 119F _ 6A, 0F
        push    0                                       ; 11A1 _ 6A, 00
        call    set_palette                             ; 11A3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11A8 _ 83. C4, 10
        nop                                             ; 11AB _ 90
        leave                                           ; 11AC _ C9
        ret                                             ; 11AD _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 11AE _ 55
        mov     ebp, esp                                ; 11AF _ 89. E5
        sub     esp, 24                                 ; 11B1 _ 83. EC, 18
        call    io_load_eflags                          ; 11B4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 11B9 _ 89. 45, F4
        call    io_cli                                  ; 11BC _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 11C1 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 11C4 _ FF. 75, 08
        push    968                                     ; 11C7 _ 68, 000003C8
        call    io_out8                                 ; 11CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11D1 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 11D4 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 11D7 _ 89. 45, F0
        jmp     ?_027                                   ; 11DA _ EB, 65

?_026:  mov     eax, dword [ebp+10H]                    ; 11DC _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 11DF _ 0F B6. 00
        shr     al, 2                                   ; 11E2 _ C0. E8, 02
        movzx   eax, al                                 ; 11E5 _ 0F B6. C0
        sub     esp, 8                                  ; 11E8 _ 83. EC, 08
        push    eax                                     ; 11EB _ 50
        push    969                                     ; 11EC _ 68, 000003C9
        call    io_out8                                 ; 11F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11F6 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 11F9 _ 8B. 45, 10
        add     eax, 1                                  ; 11FC _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 11FF _ 0F B6. 00
        shr     al, 2                                   ; 1202 _ C0. E8, 02
        movzx   eax, al                                 ; 1205 _ 0F B6. C0
        sub     esp, 8                                  ; 1208 _ 83. EC, 08
        push    eax                                     ; 120B _ 50
        push    969                                     ; 120C _ 68, 000003C9
        call    io_out8                                 ; 1211 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1216 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1219 _ 8B. 45, 10
        add     eax, 2                                  ; 121C _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 121F _ 0F B6. 00
        shr     al, 2                                   ; 1222 _ C0. E8, 02
        movzx   eax, al                                 ; 1225 _ 0F B6. C0
        sub     esp, 8                                  ; 1228 _ 83. EC, 08
        push    eax                                     ; 122B _ 50
        push    969                                     ; 122C _ 68, 000003C9
        call    io_out8                                 ; 1231 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1236 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1239 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 123D _ 83. 45, F0, 01
?_027:  mov     eax, dword [ebp-10H]                    ; 1241 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1244 _ 3B. 45, 0C
        jle     ?_026                                   ; 1247 _ 7E, 93
        sub     esp, 12                                 ; 1249 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 124C _ FF. 75, F4
        call    io_store_eflags                         ; 124F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1254 _ 83. C4, 10
        nop                                             ; 1257 _ 90
        leave                                           ; 1258 _ C9
        ret                                             ; 1259 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 125A _ 55
        mov     ebp, esp                                ; 125B _ 89. E5
        sub     esp, 20                                 ; 125D _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1260 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1263 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1266 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1269 _ 89. 45, FC
        jmp     ?_031                                   ; 126C _ EB, 33

?_028:  mov     eax, dword [ebp+14H]                    ; 126E _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1271 _ 89. 45, F8
        jmp     ?_030                                   ; 1274 _ EB, 1F

?_029:  mov     eax, dword [ebp-4H]                     ; 1276 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1279 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 127D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 127F _ 8B. 45, F8
        add     eax, edx                                ; 1282 _ 01. D0
        mov     edx, eax                                ; 1284 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1286 _ 8B. 45, 08
        add     edx, eax                                ; 1289 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 128B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 128F _ 88. 02
        add     dword [ebp-8H], 1                       ; 1291 _ 83. 45, F8, 01
?_030:  mov     eax, dword [ebp-8H]                     ; 1295 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1298 _ 3B. 45, 1C
        jle     ?_029                                   ; 129B _ 7E, D9
        add     dword [ebp-4H], 1                       ; 129D _ 83. 45, FC, 01
?_031:  mov     eax, dword [ebp-4H]                     ; 12A1 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 12A4 _ 3B. 45, 20
        jle     ?_028                                   ; 12A7 _ 7E, C5
        nop                                             ; 12A9 _ 90
        leave                                           ; 12AA _ C9
        ret                                             ; 12AB _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 12AC _ 55
        mov     ebp, esp                                ; 12AD _ 89. E5
        push    edi                                     ; 12AF _ 57
        push    esi                                     ; 12B0 _ 56
        push    ebx                                     ; 12B1 _ 53
        sub     esp, 16                                 ; 12B2 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 12B5 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 12B8 _ 8B. 45, 14
        add     eax, edx                                ; 12BB _ 01. D0
        mov     dword [ebp-14H], eax                    ; 12BD _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 12C0 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 12C3 _ 8B. 45, 18
        add     eax, edx                                ; 12C6 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 12C8 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 12CB _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 12CE _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 12D1 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 12D4 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 12D7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 12DA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 12DD _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 12E0 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 12E3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12E6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12E9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12EC _ 8B. 00
        push    edi                                     ; 12EE _ 57
        push    esi                                     ; 12EF _ 56
        push    ebx                                     ; 12F0 _ 53
        push    ecx                                     ; 12F1 _ 51
        push    15                                      ; 12F2 _ 6A, 0F
        push    edx                                     ; 12F4 _ 52
        push    eax                                     ; 12F5 _ 50
        call    boxfill8                                ; 12F6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12FB _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 12FE _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1301 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1304 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1307 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 130A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 130D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1310 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1313 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1316 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1319 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 131C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 131F _ 8B. 00
        push    edi                                     ; 1321 _ 57
        push    esi                                     ; 1322 _ 56
        push    ebx                                     ; 1323 _ 53
        push    ecx                                     ; 1324 _ 51
        push    15                                      ; 1325 _ 6A, 0F
        push    edx                                     ; 1327 _ 52
        push    eax                                     ; 1328 _ 50
        call    boxfill8                                ; 1329 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 132E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1331 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1334 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1337 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 133A _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 133D _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1340 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1343 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1346 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1349 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 134C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 134F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1352 _ 8B. 00
        push    edi                                     ; 1354 _ 57
        push    esi                                     ; 1355 _ 56
        push    ebx                                     ; 1356 _ 53
        push    ecx                                     ; 1357 _ 51
        push    7                                       ; 1358 _ 6A, 07
        push    edx                                     ; 135A _ 52
        push    eax                                     ; 135B _ 50
        call    boxfill8                                ; 135C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1361 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1364 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1367 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 136A _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 136D _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1370 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1373 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1376 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1379 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 137C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 137F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1382 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1385 _ 8B. 00
        push    edi                                     ; 1387 _ 57
        push    esi                                     ; 1388 _ 56
        push    ebx                                     ; 1389 _ 53
        push    ecx                                     ; 138A _ 51
        push    7                                       ; 138B _ 6A, 07
        push    edx                                     ; 138D _ 52
        push    eax                                     ; 138E _ 50
        call    boxfill8                                ; 138F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1394 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1397 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 139A _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 139D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13A0 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 13A3 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 13A6 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 13A9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13AC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13B2 _ 8B. 00
        push    esi                                     ; 13B4 _ 56
        push    dword [ebp-14H]                         ; 13B5 _ FF. 75, EC
        push    ebx                                     ; 13B8 _ 53
        push    ecx                                     ; 13B9 _ 51
        push    0                                       ; 13BA _ 6A, 00
        push    edx                                     ; 13BC _ 52
        push    eax                                     ; 13BD _ 50
        call    boxfill8                                ; 13BE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13C3 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 13C6 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 13C9 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 13CC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13CF _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 13D2 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 13D5 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 13D8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13DB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13DE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13E1 _ 8B. 00
        push    dword [ebp-10H]                         ; 13E3 _ FF. 75, F0
        push    esi                                     ; 13E6 _ 56
        push    ebx                                     ; 13E7 _ 53
        push    ecx                                     ; 13E8 _ 51
        push    0                                       ; 13E9 _ 6A, 00
        push    edx                                     ; 13EB _ 52
        push    eax                                     ; 13EC _ 50
        call    boxfill8                                ; 13ED _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13F2 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 13F5 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 13F8 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 13FB _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 13FE _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1401 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1404 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1407 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 140A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 140D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1410 _ 8B. 00
        push    esi                                     ; 1412 _ 56
        push    dword [ebp-14H]                         ; 1413 _ FF. 75, EC
        push    ebx                                     ; 1416 _ 53
        push    ecx                                     ; 1417 _ 51
        push    8                                       ; 1418 _ 6A, 08
        push    edx                                     ; 141A _ 52
        push    eax                                     ; 141B _ 50
        call    boxfill8                                ; 141C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1421 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1424 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1427 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 142A _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 142D _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1430 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1433 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1436 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1439 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 143C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 143F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1442 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1445 _ 8B. 00
        push    edi                                     ; 1447 _ 57
        push    esi                                     ; 1448 _ 56
        push    ebx                                     ; 1449 _ 53
        push    ecx                                     ; 144A _ 51
        push    8                                       ; 144B _ 6A, 08
        push    edx                                     ; 144D _ 52
        push    eax                                     ; 144E _ 50
        call    boxfill8                                ; 144F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1454 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1457 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 145A _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 145D _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1460 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1463 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1466 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1469 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 146C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 146F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1472 _ 8B. 00
        push    dword [ebp-10H]                         ; 1474 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1477 _ FF. 75, EC
        push    esi                                     ; 147A _ 56
        push    ebx                                     ; 147B _ 53
        push    ecx                                     ; 147C _ 51
        push    edx                                     ; 147D _ 52
        push    eax                                     ; 147E _ 50
        call    boxfill8                                ; 147F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1484 _ 83. C4, 1C
        nop                                             ; 1487 _ 90
        lea     esp, [ebp-0CH]                          ; 1488 _ 8D. 65, F4
        pop     ebx                                     ; 148B _ 5B
        pop     esi                                     ; 148C _ 5E
        pop     edi                                     ; 148D _ 5F
        pop     ebp                                     ; 148E _ 5D
        ret                                             ; 148F _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1490 _ 55
        mov     ebp, esp                                ; 1491 _ 89. E5
        sub     esp, 20                                 ; 1493 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1496 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1499 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 149C _ C7. 45, FC, 00000000
        jmp     ?_041                                   ; 14A3 _ E9, 0000016C

?_032:  mov     edx, dword [ebp-4H]                     ; 14A8 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 14AB _ 8B. 45, 1C
        add     eax, edx                                ; 14AE _ 01. D0
        movzx   eax, byte [eax]                         ; 14B0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 14B3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 14B6 _ 80. 7D, FB, 00
        jns     ?_033                                   ; 14BA _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 14BC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14BF _ 8B. 45, FC
        add     eax, edx                                ; 14C2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14C4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14C8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14CA _ 8B. 45, 10
        add     eax, edx                                ; 14CD _ 01. D0
        mov     edx, eax                                ; 14CF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14D1 _ 8B. 45, 08
        add     edx, eax                                ; 14D4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14D6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14DA _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 14DC _ 0F BE. 45, FB
        and     eax, 40H                                ; 14E0 _ 83. E0, 40
        test    eax, eax                                ; 14E3 _ 85. C0
        jz      ?_034                                   ; 14E5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14E7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14EA _ 8B. 45, FC
        add     eax, edx                                ; 14ED _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14EF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14F3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14F5 _ 8B. 45, 10
        add     eax, edx                                ; 14F8 _ 01. D0
        lea     edx, [eax+1H]                           ; 14FA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 14FD _ 8B. 45, 08
        add     edx, eax                                ; 1500 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1502 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1506 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1508 _ 0F BE. 45, FB
        and     eax, 20H                                ; 150C _ 83. E0, 20
        test    eax, eax                                ; 150F _ 85. C0
        jz      ?_035                                   ; 1511 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1513 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1516 _ 8B. 45, FC
        add     eax, edx                                ; 1519 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 151B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 151F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1521 _ 8B. 45, 10
        add     eax, edx                                ; 1524 _ 01. D0
        lea     edx, [eax+2H]                           ; 1526 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1529 _ 8B. 45, 08
        add     edx, eax                                ; 152C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 152E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1532 _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 1534 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1538 _ 83. E0, 10
        test    eax, eax                                ; 153B _ 85. C0
        jz      ?_036                                   ; 153D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 153F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1542 _ 8B. 45, FC
        add     eax, edx                                ; 1545 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1547 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 154B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 154D _ 8B. 45, 10
        add     eax, edx                                ; 1550 _ 01. D0
        lea     edx, [eax+3H]                           ; 1552 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1555 _ 8B. 45, 08
        add     edx, eax                                ; 1558 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 155A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 155E _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 1560 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1564 _ 83. E0, 08
        test    eax, eax                                ; 1567 _ 85. C0
        jz      ?_037                                   ; 1569 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 156B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 156E _ 8B. 45, FC
        add     eax, edx                                ; 1571 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1573 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1577 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1579 _ 8B. 45, 10
        add     eax, edx                                ; 157C _ 01. D0
        lea     edx, [eax+4H]                           ; 157E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1581 _ 8B. 45, 08
        add     edx, eax                                ; 1584 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1586 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 158A _ 88. 02
?_037:  movsx   eax, byte [ebp-5H]                      ; 158C _ 0F BE. 45, FB
        and     eax, 04H                                ; 1590 _ 83. E0, 04
        test    eax, eax                                ; 1593 _ 85. C0
        jz      ?_038                                   ; 1595 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1597 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 159A _ 8B. 45, FC
        add     eax, edx                                ; 159D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 159F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15A3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15A5 _ 8B. 45, 10
        add     eax, edx                                ; 15A8 _ 01. D0
        lea     edx, [eax+5H]                           ; 15AA _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 15AD _ 8B. 45, 08
        add     edx, eax                                ; 15B0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15B2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15B6 _ 88. 02
?_038:  movsx   eax, byte [ebp-5H]                      ; 15B8 _ 0F BE. 45, FB
        and     eax, 02H                                ; 15BC _ 83. E0, 02
        test    eax, eax                                ; 15BF _ 85. C0
        jz      ?_039                                   ; 15C1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 15C3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15C6 _ 8B. 45, FC
        add     eax, edx                                ; 15C9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15CB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15CF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15D1 _ 8B. 45, 10
        add     eax, edx                                ; 15D4 _ 01. D0
        lea     edx, [eax+6H]                           ; 15D6 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 15D9 _ 8B. 45, 08
        add     edx, eax                                ; 15DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15E2 _ 88. 02
?_039:  movsx   eax, byte [ebp-5H]                      ; 15E4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 15E8 _ 83. E0, 01
        test    eax, eax                                ; 15EB _ 85. C0
        jz      ?_040                                   ; 15ED _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 15EF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15F2 _ 8B. 45, FC
        add     eax, edx                                ; 15F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15F7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15FB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15FD _ 8B. 45, 10
        add     eax, edx                                ; 1600 _ 01. D0
        lea     edx, [eax+7H]                           ; 1602 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1605 _ 8B. 45, 08
        add     edx, eax                                ; 1608 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 160A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 160E _ 88. 02
?_040:  add     dword [ebp-4H], 1                       ; 1610 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 15                      ; 1614 _ 83. 7D, FC, 0F
        jle     ?_032                                   ; 1618 _ 0F 8E, FFFFFE8A
        nop                                             ; 161E _ 90
        leave                                           ; 161F _ C9
        ret                                             ; 1620 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1621 _ 55
        mov     ebp, esp                                ; 1622 _ 89. E5
        sub     esp, 20                                 ; 1624 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1627 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 162A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 162D _ C7. 45, FC, 00000000
        jmp     ?_048                                   ; 1634 _ E9, 000000B1

?_042:  mov     dword [ebp-8H], 0                       ; 1639 _ C7. 45, F8, 00000000
        jmp     ?_047                                   ; 1640 _ E9, 00000097

?_043:  mov     eax, dword [ebp-4H]                     ; 1645 _ 8B. 45, FC
        shl     eax, 4                                  ; 1648 _ C1. E0, 04
        mov     edx, eax                                ; 164B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 164D _ 8B. 45, F8
        add     eax, edx                                ; 1650 _ 01. D0
        add     eax, cursor.2401                        ; 1652 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1657 _ 0F B6. 00
        cmp     al, 42                                  ; 165A _ 3C, 2A
        jnz     ?_044                                   ; 165C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 165E _ 8B. 45, FC
        shl     eax, 4                                  ; 1661 _ C1. E0, 04
        mov     edx, eax                                ; 1664 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1666 _ 8B. 45, F8
        add     eax, edx                                ; 1669 _ 01. D0
        mov     edx, eax                                ; 166B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 166D _ 8B. 45, 08
        add     eax, edx                                ; 1670 _ 01. D0
        mov     byte [eax], 0                           ; 1672 _ C6. 00, 00
?_044:  mov     eax, dword [ebp-4H]                     ; 1675 _ 8B. 45, FC
        shl     eax, 4                                  ; 1678 _ C1. E0, 04
        mov     edx, eax                                ; 167B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 167D _ 8B. 45, F8
        add     eax, edx                                ; 1680 _ 01. D0
        add     eax, cursor.2401                        ; 1682 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1687 _ 0F B6. 00
        cmp     al, 79                                  ; 168A _ 3C, 4F
        jnz     ?_045                                   ; 168C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 168E _ 8B. 45, FC
        shl     eax, 4                                  ; 1691 _ C1. E0, 04
        mov     edx, eax                                ; 1694 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1696 _ 8B. 45, F8
        add     eax, edx                                ; 1699 _ 01. D0
        mov     edx, eax                                ; 169B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 169D _ 8B. 45, 08
        add     eax, edx                                ; 16A0 _ 01. D0
        mov     byte [eax], 7                           ; 16A2 _ C6. 00, 07
?_045:  mov     eax, dword [ebp-4H]                     ; 16A5 _ 8B. 45, FC
        shl     eax, 4                                  ; 16A8 _ C1. E0, 04
        mov     edx, eax                                ; 16AB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16AD _ 8B. 45, F8
        add     eax, edx                                ; 16B0 _ 01. D0
        add     eax, cursor.2401                        ; 16B2 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 16B7 _ 0F B6. 00
        cmp     al, 46                                  ; 16BA _ 3C, 2E
        jnz     ?_046                                   ; 16BC _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 16BE _ 8B. 45, FC
        shl     eax, 4                                  ; 16C1 _ C1. E0, 04
        mov     edx, eax                                ; 16C4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16C6 _ 8B. 45, F8
        add     eax, edx                                ; 16C9 _ 01. D0
        mov     edx, eax                                ; 16CB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16CD _ 8B. 45, 08
        add     edx, eax                                ; 16D0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 16D2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 16D6 _ 88. 02
?_046:  add     dword [ebp-8H], 1                       ; 16D8 _ 83. 45, F8, 01
?_047:  cmp     dword [ebp-8H], 15                      ; 16DC _ 83. 7D, F8, 0F
        jle     ?_043                                   ; 16E0 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 16E6 _ 83. 45, FC, 01
?_048:  cmp     dword [ebp-4H], 15                      ; 16EA _ 83. 7D, FC, 0F
        jle     ?_042                                   ; 16EE _ 0F 8E, FFFFFF45
        nop                                             ; 16F4 _ 90
        leave                                           ; 16F5 _ C9
        ret                                             ; 16F6 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 16F7 _ 55
        mov     ebp, esp                                ; 16F8 _ 89. E5
        push    ebx                                     ; 16FA _ 53
        sub     esp, 16                                 ; 16FB _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 16FE _ C7. 45, F8, 00000000
        jmp     ?_052                                   ; 1705 _ EB, 50

?_049:  mov     dword [ebp-0CH], 0                      ; 1707 _ C7. 45, F4, 00000000
        jmp     ?_051                                   ; 170E _ EB, 3B

?_050:  mov     eax, dword [ebp-8H]                     ; 1710 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1713 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1717 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1719 _ 8B. 45, F4
        add     eax, edx                                ; 171C _ 01. D0
        mov     edx, eax                                ; 171E _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1720 _ 8B. 45, 20
        add     eax, edx                                ; 1723 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1725 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1728 _ 8B. 55, F8
        add     edx, ecx                                ; 172B _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 172D _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1731 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1734 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1737 _ 01. D9
        add     edx, ecx                                ; 1739 _ 01. CA
        mov     ecx, edx                                ; 173B _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 173D _ 8B. 55, 08
        add     edx, ecx                                ; 1740 _ 01. CA
        movzx   eax, byte [eax]                         ; 1742 _ 0F B6. 00
        mov     byte [edx], al                          ; 1745 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1747 _ 83. 45, F4, 01
?_051:  mov     eax, dword [ebp-0CH]                    ; 174B _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 174E _ 3B. 45, 10
        jl      ?_050                                   ; 1751 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1753 _ 83. 45, F8, 01
?_052:  mov     eax, dword [ebp-8H]                     ; 1757 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 175A _ 3B. 45, 14
        jl      ?_049                                   ; 175D _ 7C, A8
        nop                                             ; 175F _ 90
        add     esp, 16                                 ; 1760 _ 83. C4, 10
        pop     ebx                                     ; 1763 _ 5B
        pop     ebp                                     ; 1764 _ 5D
        ret                                             ; 1765 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1766 _ 55
        mov     ebp, esp                                ; 1767 _ 89. E5
        sub     esp, 24                                 ; 1769 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 176C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1771 _ 89. 45, EC
        movzx   eax, word [?_223]                       ; 1774 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 177B _ 98
        mov     dword [ebp-10H], eax                    ; 177C _ 89. 45, F0
        movzx   eax, word [?_224]                       ; 177F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1786 _ 98
        mov     dword [ebp-0CH], eax                    ; 1787 _ 89. 45, F4
        sub     esp, 8                                  ; 178A _ 83. EC, 08
        push    32                                      ; 178D _ 6A, 20
        push    32                                      ; 178F _ 6A, 20
        call    io_out8                                 ; 1791 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1796 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1799 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 179D _ 83. EC, 0C
        push    96                                      ; 17A0 _ 6A, 60
        call    io_in8                                  ; 17A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17A7 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 17AA _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 17AD _ 0F B6. 45, EB
        sub     esp, 8                                  ; 17B1 _ 83. EC, 08
        push    eax                                     ; 17B4 _ 50
        push    keyInfo                                 ; 17B5 _ 68, 00000008(d)
        call    fifo8_put                               ; 17BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17BF _ 83. C4, 10
        nop                                             ; 17C2 _ 90
        leave                                           ; 17C3 _ C9
        ret                                             ; 17C4 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 17C5 _ 55
        mov     ebp, esp                                ; 17C6 _ 89. E5
        sub     esp, 40                                 ; 17C8 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 17CB _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 17CE _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 17D1 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 17D5 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 17D8 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 17DB _ 0F BE. 45, F7
        sub     esp, 12                                 ; 17DF _ 83. EC, 0C
        push    eax                                     ; 17E2 _ 50
        call    charToVal                               ; 17E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17E8 _ 83. C4, 10
        mov     byte [?_222], al                        ; 17EB _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 17F0 _ 0F B6. 45, E4
        shr     al, 4                                   ; 17F4 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 17F7 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 17FA _ 0F B6. 45, E4
        movsx   eax, al                                 ; 17FE _ 0F BE. C0
        sub     esp, 12                                 ; 1801 _ 83. EC, 0C
        push    eax                                     ; 1804 _ 50
        call    charToVal                               ; 1805 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 180A _ 83. C4, 10
        mov     byte [?_221], al                        ; 180D _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1812 _ B8, 00000000(d)
        leave                                           ; 1817 _ C9
        ret                                             ; 1818 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1819 _ 55
        mov     ebp, esp                                ; 181A _ 89. E5
        sub     esp, 4                                  ; 181C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 181F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1822 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1825 _ 80. 7D, FC, 09
        jle     ?_053                                   ; 1829 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 182B _ 0F B6. 45, FC
        add     eax, 55                                 ; 182F _ 83. C0, 37
        jmp     ?_054                                   ; 1832 _ EB, 07

?_053:  movzx   eax, byte [ebp-4H]                      ; 1834 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1838 _ 83. C0, 30
?_054:  leave                                           ; 183B _ C9
        ret                                             ; 183C _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 183D _ 55
        mov     ebp, esp                                ; 183E _ 89. E5
        sub     esp, 16                                 ; 1840 _ 83. EC, 10
        mov     byte [str.2444], 48                     ; 1843 _ C6. 05, 00000250(d), 30
        mov     byte [?_227], 120                       ; 184A _ C6. 05, 00000251(d), 78
        mov     byte [?_228], 0                         ; 1851 _ C6. 05, 0000025A(d), 00
        mov     dword [ebp-0CH], 2                      ; 1858 _ C7. 45, F4, 00000002
        jmp     ?_056                                   ; 185F _ EB, 0F

?_055:  mov     eax, dword [ebp-0CH]                    ; 1861 _ 8B. 45, F4
        add     eax, str.2444                           ; 1864 _ 05, 00000250(d)
        mov     byte [eax], 48                          ; 1869 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 186C _ 83. 45, F4, 01
?_056:  cmp     dword [ebp-0CH], 9                      ; 1870 _ 83. 7D, F4, 09
        jle     ?_055                                   ; 1874 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1876 _ C7. 45, F8, 00000009
        jmp     ?_059                                   ; 187D _ EB, 48

?_057:  mov     eax, dword [ebp+8H]                     ; 187F _ 8B. 45, 08
        and     eax, 0FH                                ; 1882 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1885 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1888 _ 8B. 45, 08
        shr     eax, 4                                  ; 188B _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 188E _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1891 _ 83. 7D, FC, 09
        jle     ?_058                                   ; 1895 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1897 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 189A _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 189D _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 18A0 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 18A3 _ 89. 55, F8
        mov     edx, ecx                                ; 18A6 _ 89. CA
        mov     byte [str.2444+eax], dl                 ; 18A8 _ 88. 90, 00000250(d)
        jmp     ?_059                                   ; 18AE _ EB, 17

?_058:  mov     eax, dword [ebp-4H]                     ; 18B0 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 18B3 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 18B6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 18B9 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 18BC _ 89. 55, F8
        mov     edx, ecx                                ; 18BF _ 89. CA
        mov     byte [str.2444+eax], dl                 ; 18C1 _ 88. 90, 00000250(d)
?_059:  cmp     dword [ebp-8H], 1                       ; 18C7 _ 83. 7D, F8, 01
        jle     ?_060                                   ; 18CB _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 18CD _ 83. 7D, 08, 00
        jnz     ?_057                                   ; 18D1 _ 75, AC
?_060:  mov     eax, str.2444                           ; 18D3 _ B8, 00000250(d)
        leave                                           ; 18D8 _ C9
        ret                                             ; 18D9 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 18DA _ 55
        mov     ebp, esp                                ; 18DB _ 89. E5
        sub     esp, 8                                  ; 18DD _ 83. EC, 08
?_061:  sub     esp, 12                                 ; 18E0 _ 83. EC, 0C
        push    100                                     ; 18E3 _ 6A, 64
        call    io_in8                                  ; 18E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18EA _ 83. C4, 10
        movsx   eax, al                                 ; 18ED _ 0F BE. C0
        and     eax, 02H                                ; 18F0 _ 83. E0, 02
        test    eax, eax                                ; 18F3 _ 85. C0
        jz      ?_062                                   ; 18F5 _ 74, 02
        jmp     ?_061                                   ; 18F7 _ EB, E7

?_062:  nop                                             ; 18F9 _ 90
        nop                                             ; 18FA _ 90
        leave                                           ; 18FB _ C9
        ret                                             ; 18FC _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 18FD _ 55
        mov     ebp, esp                                ; 18FE _ 89. E5
        sub     esp, 8                                  ; 1900 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1903 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1908 _ 83. EC, 08
        push    96                                      ; 190B _ 6A, 60
        push    100                                     ; 190D _ 6A, 64
        call    io_out8                                 ; 190F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1914 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1917 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 191C _ 83. EC, 08
        push    71                                      ; 191F _ 6A, 47
        push    96                                      ; 1921 _ 6A, 60
        call    io_out8                                 ; 1923 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1928 _ 83. C4, 10
        nop                                             ; 192B _ 90
        leave                                           ; 192C _ C9
        ret                                             ; 192D _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 192E _ 55
        mov     ebp, esp                                ; 192F _ 89. E5
        sub     esp, 8                                  ; 1931 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1934 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1939 _ 83. EC, 08
        push    212                                     ; 193C _ 68, 000000D4
        push    100                                     ; 1941 _ 6A, 64
        call    io_out8                                 ; 1943 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1948 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 194B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1950 _ 83. EC, 08
        push    244                                     ; 1953 _ 68, 000000F4
        push    96                                      ; 1958 _ 6A, 60
        call    io_out8                                 ; 195A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 195F _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1962 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1965 _ C6. 40, 03, 00
        nop                                             ; 1969 _ 90
        leave                                           ; 196A _ C9
        ret                                             ; 196B _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 196C _ 55
        mov     ebp, esp                                ; 196D _ 89. E5
        sub     esp, 24                                 ; 196F _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1972 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1976 _ 83. EC, 08
        push    32                                      ; 1979 _ 6A, 20
        push    160                                     ; 197B _ 68, 000000A0
        call    io_out8                                 ; 1980 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1985 _ 83. C4, 10
        sub     esp, 8                                  ; 1988 _ 83. EC, 08
        push    32                                      ; 198B _ 6A, 20
        push    32                                      ; 198D _ 6A, 20
        call    io_out8                                 ; 198F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1994 _ 83. C4, 10
        sub     esp, 12                                 ; 1997 _ 83. EC, 0C
        push    96                                      ; 199A _ 6A, 60
        call    io_in8                                  ; 199C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19A1 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 19A4 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 19A7 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 19AB _ 83. EC, 08
        push    eax                                     ; 19AE _ 50
        push    mouseInfo                               ; 19AF _ 68, 00000024(d)
        call    fifo8_put                               ; 19B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19B9 _ 83. C4, 10
        nop                                             ; 19BC _ 90
        leave                                           ; 19BD _ C9
        ret                                             ; 19BE _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 19BF _ 55
        mov     ebp, esp                                ; 19C0 _ 89. E5
        sub     esp, 40                                 ; 19C2 _ 83. EC, 28
        call    io_sti                                  ; 19C5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 19CA _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 19CF _ 89. 45, E8
        movzx   eax, word [?_223]                       ; 19D2 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 19D9 _ 98
        mov     dword [ebp-14H], eax                    ; 19DA _ 89. 45, EC
        movzx   eax, word [?_224]                       ; 19DD _ 0F B7. 05, 00000006(d)
        cwde                                            ; 19E4 _ 98
        mov     dword [ebp-10H], eax                    ; 19E5 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 19E8 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 19EC _ 83. EC, 0C
        push    keyInfo                                 ; 19EF _ 68, 00000008(d)
        call    fifo8_get                               ; 19F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19F9 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 19FC _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 19FF _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1A03 _ 83. EC, 0C
        push    eax                                     ; 1A06 _ 50
        call    charToHex                               ; 1A07 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A0C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1A0F _ 89. 45, F4
        mov     edx, dword [line.2477]                  ; 1A12 _ 8B. 15, 0000025C(d)
        mov     eax, dword [pos.2476]                   ; 1A18 _ A1, 00000260(d)
        sub     esp, 8                                  ; 1A1D _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1A20 _ FF. 75, F4
        push    7                                       ; 1A23 _ 6A, 07
        push    edx                                     ; 1A25 _ 52
        push    eax                                     ; 1A26 _ 50
        push    dword [ebp+0CH]                         ; 1A27 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A2A _ FF. 75, 08
        call    showString                              ; 1A2D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A32 _ 83. C4, 20
        mov     eax, dword [pos.2476]                   ; 1A35 _ A1, 00000260(d)
        add     eax, 32                                 ; 1A3A _ 83. C0, 20
        mov     dword [pos.2476], eax                   ; 1A3D _ A3, 00000260(d)
        mov     eax, dword [pos.2476]                   ; 1A42 _ A1, 00000260(d)
        cmp     dword [ebp-14H], eax                    ; 1A47 _ 39. 45, EC
        jnz     ?_065                                   ; 1A4A _ 75, 28
        mov     eax, dword [line.2477]                  ; 1A4C _ A1, 0000025C(d)
        cmp     dword [ebp-10H], eax                    ; 1A51 _ 39. 45, F0
        jz      ?_063                                   ; 1A54 _ 74, 0A
        mov     eax, dword [line.2477]                  ; 1A56 _ A1, 0000025C(d)
        add     eax, 16                                 ; 1A5B _ 83. C0, 10
        jmp     ?_064                                   ; 1A5E _ EB, 05

?_063:  mov     eax, 0                                  ; 1A60 _ B8, 00000000
?_064:  mov     dword [line.2477], eax                  ; 1A65 _ A3, 0000025C(d)
        mov     dword [pos.2476], 0                     ; 1A6A _ C7. 05, 00000260(d), 00000000
?_065:  nop                                             ; 1A74 _ 90
        leave                                           ; 1A75 _ C9
        ret                                             ; 1A76 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1A77 _ 55
        mov     ebp, esp                                ; 1A78 _ 89. E5
        sub     esp, 24                                 ; 1A7A _ 83. EC, 18
        call    io_sti                                  ; 1A7D _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1A82 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1A86 _ 83. EC, 0C
        push    mouseInfo                               ; 1A89 _ 68, 00000024(d)
        call    fifo8_get                               ; 1A8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A93 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1A96 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1A99 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1A9D _ 83. EC, 08
        push    eax                                     ; 1AA0 _ 50
        push    mouse_move                              ; 1AA1 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1AA6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AAB _ 83. C4, 10
        test    eax, eax                                ; 1AAE _ 85. C0
        jz      ?_066                                   ; 1AB0 _ 74, 60
        sub     esp, 4                                  ; 1AB2 _ 83. EC, 04
        push    mouse_move                              ; 1AB5 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1ABA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1ABD _ FF. 75, 08
        call    computeMousePos                         ; 1AC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AC5 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1AC8 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1ACE _ A1, 000000F0(d)
        push    edx                                     ; 1AD3 _ 52
        push    eax                                     ; 1AD4 _ 50
        push    dword [ebp+10H]                         ; 1AD5 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1AD8 _ FF. 75, 08
        call    sheet_slide                             ; 1ADB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AE0 _ 83. C4, 10
        mov     eax, dword [?_226]                      ; 1AE3 _ A1, 000000EC(d)
        and     eax, 01H                                ; 1AE8 _ 83. E0, 01
        test    eax, eax                                ; 1AEB _ 85. C0
        jz      ?_066                                   ; 1AED _ 74, 23
        mov     eax, dword [my]                         ; 1AEF _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1AF4 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1AF7 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1AFC _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1AFF _ A1, 00000228(d)
        push    ecx                                     ; 1B04 _ 51
        push    edx                                     ; 1B05 _ 52
        push    eax                                     ; 1B06 _ 50
        push    dword [ebp+8H]                          ; 1B07 _ FF. 75, 08
        call    sheet_slide                             ; 1B0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B0F _ 83. C4, 10
?_066:  nop                                             ; 1B12 _ 90
        leave                                           ; 1B13 _ C9
        ret                                             ; 1B14 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1B15 _ 55
        mov     ebp, esp                                ; 1B16 _ 89. E5
        sub     esp, 4                                  ; 1B18 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1B1B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1B1E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1B21 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B24 _ 0F B6. 40, 03
        test    al, al                                  ; 1B28 _ 84. C0
        jnz     ?_068                                   ; 1B2A _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1B2C _ 80. 7D, FC, FA
        jnz     ?_067                                   ; 1B30 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1B32 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1B35 _ C6. 40, 03, 01
?_067:  mov     eax, 0                                  ; 1B39 _ B8, 00000000
        jmp     ?_075                                   ; 1B3E _ E9, 0000010C

?_068:  mov     eax, dword [ebp+8H]                     ; 1B43 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B46 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1B4A _ 3C, 01
        jnz     ?_070                                   ; 1B4C _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1B4E _ 0F B6. 45, FC
        or      eax, 37H                                ; 1B52 _ 83. C8, 37
        cmp     al, 63                                  ; 1B55 _ 3C, 3F
        jnz     ?_069                                   ; 1B57 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1B59 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B5C _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1B60 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1B62 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1B65 _ C6. 40, 03, 02
?_069:  mov     eax, 0                                  ; 1B69 _ B8, 00000000
        jmp     ?_075                                   ; 1B6E _ E9, 000000DC

?_070:  mov     eax, dword [ebp+8H]                     ; 1B73 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B76 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1B7A _ 3C, 02
        jnz     ?_071                                   ; 1B7C _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1B7E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B81 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1B85 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B88 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1B8B _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1B8F _ B8, 00000000
        jmp     ?_075                                   ; 1B94 _ E9, 000000B6

?_071:  mov     eax, dword [ebp+8H]                     ; 1B99 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B9C _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1BA0 _ 3C, 03
        jne     ?_074                                   ; 1BA2 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1BA8 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1BAB _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1BAF _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1BB2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1BB5 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1BB9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BBC _ 0F B6. 00
        movzx   eax, al                                 ; 1BBF _ 0F B6. C0
        and     eax, 07H                                ; 1BC2 _ 83. E0, 07
        mov     edx, eax                                ; 1BC5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BC7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1BCA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1BCD _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1BD0 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1BD4 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1BD7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1BDA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BDD _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1BE0 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1BE4 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1BE7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1BEA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1BED _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BF0 _ 0F B6. 00
        movzx   eax, al                                 ; 1BF3 _ 0F B6. C0
        and     eax, 10H                                ; 1BF6 _ 83. E0, 10
        test    eax, eax                                ; 1BF9 _ 85. C0
        jz      ?_072                                   ; 1BFB _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1BFD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1C00 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1C03 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C08 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C0A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1C0D _ 89. 50, 04
?_072:  mov     eax, dword [ebp+8H]                     ; 1C10 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C13 _ 0F B6. 00
        movzx   eax, al                                 ; 1C16 _ 0F B6. C0
        and     eax, 20H                                ; 1C19 _ 83. E0, 20
        test    eax, eax                                ; 1C1C _ 85. C0
        jz      ?_073                                   ; 1C1E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1C20 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C23 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1C26 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C2B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C2D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C30 _ 89. 50, 08
?_073:  mov     eax, dword [ebp+8H]                     ; 1C33 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C36 _ 8B. 40, 08
        neg     eax                                     ; 1C39 _ F7. D8
        mov     edx, eax                                ; 1C3B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C3D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C40 _ 89. 50, 08
        mov     eax, 1                                  ; 1C43 _ B8, 00000001
        jmp     ?_075                                   ; 1C48 _ EB, 05

?_074:  mov     eax, 4294967295                         ; 1C4A _ B8, FFFFFFFF
?_075:  leave                                           ; 1C4F _ C9
        ret                                             ; 1C50 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1C51 _ 55
        mov     ebp, esp                                ; 1C52 _ 89. E5
        sub     esp, 16                                 ; 1C54 _ 83. EC, 10
        movzx   eax, word [?_223]                       ; 1C57 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1C5E _ 98
        mov     dword [ebp-8H], eax                     ; 1C5F _ 89. 45, F8
        movzx   eax, word [?_224]                       ; 1C62 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1C69 _ 98
        mov     dword [ebp-4H], eax                     ; 1C6A _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1C6D _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1C70 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1C73 _ A1, 000000F0(d)
        add     eax, edx                                ; 1C78 _ 01. D0
        mov     dword [mx], eax                         ; 1C7A _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1C7F _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1C82 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1C85 _ A1, 000000F4(d)
        add     eax, edx                                ; 1C8A _ 01. D0
        mov     dword [my], eax                         ; 1C8C _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1C91 _ A1, 000000F0(d)
        test    eax, eax                                ; 1C96 _ 85. C0
        jns     ?_076                                   ; 1C98 _ 79, 0A
        mov     dword [mx], 0                           ; 1C9A _ C7. 05, 000000F0(d), 00000000
?_076:  mov     eax, dword [my]                         ; 1CA4 _ A1, 000000F4(d)
        test    eax, eax                                ; 1CA9 _ 85. C0
        jns     ?_077                                   ; 1CAB _ 79, 0A
        mov     dword [my], 0                           ; 1CAD _ C7. 05, 000000F4(d), 00000000
?_077:  mov     eax, dword [ebp-8H]                     ; 1CB7 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1CBA _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1CBD _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1CC2 _ 39. C2
        jge     ?_078                                   ; 1CC4 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1CC6 _ 8B. 45, F8
        sub     eax, 9                                  ; 1CC9 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1CCC _ A3, 000000F0(d)
?_078:  mov     eax, dword [ebp-4H]                     ; 1CD1 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1CD4 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1CD7 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1CDC _ 39. C2
        jge     ?_079                                   ; 1CDE _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1CE0 _ 8B. 45, FC
        sub     eax, 1                                  ; 1CE3 _ 83. E8, 01
        mov     dword [my], eax                         ; 1CE6 _ A3, 000000F4(d)
?_079:  nop                                             ; 1CEB _ 90
        leave                                           ; 1CEC _ C9
        ret                                             ; 1CED _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1CEE _ 55
        mov     ebp, esp                                ; 1CEF _ 89. E5
        sub     esp, 56                                 ; 1CF1 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1CF4 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1CFB _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1D02 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1D09 _ C7. 45, DC, 00000050
        push    100                                     ; 1D10 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1D12 _ FF. 75, 1C
        push    0                                       ; 1D15 _ 6A, 00
        push    0                                       ; 1D17 _ 6A, 00
        push    14                                      ; 1D19 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1D1B _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1D1E _ FF. 75, 14
        call    boxfill8                                ; 1D21 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D26 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1D29 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D2C _ 0F BE. C0
        sub     esp, 8                                  ; 1D2F _ 83. EC, 08
        push    ?_215                                   ; 1D32 _ 68, 0000003F(d)
        push    eax                                     ; 1D37 _ 50
        push    dword [ebp-2CH]                         ; 1D38 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D3B _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D3E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D41 _ FF. 75, 08
        call    showString                              ; 1D44 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D49 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1D4C _ 8B. 45, 18
        sub     esp, 12                                 ; 1D4F _ 83. EC, 0C
        push    eax                                     ; 1D52 _ 50
        call    intToHexStr                             ; 1D53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D58 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1D5B _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1D5E _ 8B. 45, 20
        movsx   eax, al                                 ; 1D61 _ 0F BE. C0
        sub     esp, 8                                  ; 1D64 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1D67 _ FF. 75, E0
        push    eax                                     ; 1D6A _ 50
        push    dword [ebp-2CH]                         ; 1D6B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D6E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D71 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D74 _ FF. 75, 08
        call    showString                              ; 1D77 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D7C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D7F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D83 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D86 _ 0F BE. C0
        sub     esp, 8                                  ; 1D89 _ 83. EC, 08
        push    ?_216                                   ; 1D8C _ 68, 00000049(d)
        push    eax                                     ; 1D91 _ 50
        push    dword [ebp-2CH]                         ; 1D92 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D95 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D98 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D9B _ FF. 75, 08
        call    showString                              ; 1D9E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DA3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DA6 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1DA9 _ 8B. 00
        sub     esp, 12                                 ; 1DAB _ 83. EC, 0C
        push    eax                                     ; 1DAE _ 50
        call    intToHexStr                             ; 1DAF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB4 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1DB7 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1DBA _ 8B. 45, 20
        movsx   eax, al                                 ; 1DBD _ 0F BE. C0
        sub     esp, 8                                  ; 1DC0 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1DC3 _ FF. 75, E4
        push    eax                                     ; 1DC6 _ 50
        push    dword [ebp-2CH]                         ; 1DC7 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DCA _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DCD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DD0 _ FF. 75, 08
        call    showString                              ; 1DD3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DD8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DDB _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1DDF _ 8B. 45, 20
        movsx   eax, al                                 ; 1DE2 _ 0F BE. C0
        sub     esp, 8                                  ; 1DE5 _ 83. EC, 08
        push    ?_217                                   ; 1DE8 _ 68, 00000057(d)
        push    eax                                     ; 1DED _ 50
        push    dword [ebp-2CH]                         ; 1DEE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1DF1 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1DF4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DF7 _ FF. 75, 08
        call    showString                              ; 1DFA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DFF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E02 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1E05 _ 8B. 40, 04
        sub     esp, 12                                 ; 1E08 _ 83. EC, 0C
        push    eax                                     ; 1E0B _ 50
        call    intToHexStr                             ; 1E0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E11 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1E14 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1E17 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E1A _ 0F BE. C0
        sub     esp, 8                                  ; 1E1D _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1E20 _ FF. 75, E8
        push    eax                                     ; 1E23 _ 50
        push    dword [ebp-2CH]                         ; 1E24 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E27 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E2A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E2D _ FF. 75, 08
        call    showString                              ; 1E30 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E35 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E38 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E3C _ 8B. 45, 20
        movsx   eax, al                                 ; 1E3F _ 0F BE. C0
        sub     esp, 8                                  ; 1E42 _ 83. EC, 08
        push    ?_218                                   ; 1E45 _ 68, 00000066(d)
        push    eax                                     ; 1E4A _ 50
        push    dword [ebp-2CH]                         ; 1E4B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E4E _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E51 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E54 _ FF. 75, 08
        call    showString                              ; 1E57 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E5C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E5F _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1E62 _ 8B. 40, 08
        sub     esp, 12                                 ; 1E65 _ 83. EC, 0C
        push    eax                                     ; 1E68 _ 50
        call    intToHexStr                             ; 1E69 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E6E _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1E71 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1E74 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E77 _ 0F BE. C0
        sub     esp, 8                                  ; 1E7A _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1E7D _ FF. 75, EC
        push    eax                                     ; 1E80 _ 50
        push    dword [ebp-2CH]                         ; 1E81 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E84 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E87 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E8A _ FF. 75, 08
        call    showString                              ; 1E8D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E92 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E95 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E99 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E9C _ 0F BE. C0
        sub     esp, 8                                  ; 1E9F _ 83. EC, 08
        push    ?_219                                   ; 1EA2 _ 68, 00000072(d)
        push    eax                                     ; 1EA7 _ 50
        push    dword [ebp-2CH]                         ; 1EA8 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1EAB _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1EAE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EB1 _ FF. 75, 08
        call    showString                              ; 1EB4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EB9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1EBC _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1EBF _ 8B. 40, 0C
        sub     esp, 12                                 ; 1EC2 _ 83. EC, 0C
        push    eax                                     ; 1EC5 _ 50
        call    intToHexStr                             ; 1EC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ECB _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1ECE _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1ED1 _ 8B. 45, 20
        movsx   eax, al                                 ; 1ED4 _ 0F BE. C0
        sub     esp, 8                                  ; 1ED7 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1EDA _ FF. 75, F0
        push    eax                                     ; 1EDD _ 50
        push    dword [ebp-2CH]                         ; 1EDE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1EE1 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1EE4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EE7 _ FF. 75, 08
        call    showString                              ; 1EEA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EEF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1EF2 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1EF6 _ 8B. 45, 20
        movsx   eax, al                                 ; 1EF9 _ 0F BE. C0
        sub     esp, 8                                  ; 1EFC _ 83. EC, 08
        push    ?_220                                   ; 1EFF _ 68, 0000007F(d)
        push    eax                                     ; 1F04 _ 50
        push    dword [ebp-2CH]                         ; 1F05 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1F08 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1F0B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F0E _ FF. 75, 08
        call    showString                              ; 1F11 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F16 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1F19 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1F1C _ 8B. 40, 10
        sub     esp, 12                                 ; 1F1F _ 83. EC, 0C
        push    eax                                     ; 1F22 _ 50
        call    intToHexStr                             ; 1F23 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F28 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F2B _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1F2E _ 8B. 45, 20
        movsx   eax, al                                 ; 1F31 _ 0F BE. C0
        sub     esp, 8                                  ; 1F34 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1F37 _ FF. 75, F4
        push    eax                                     ; 1F3A _ 50
        push    dword [ebp-2CH]                         ; 1F3B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1F3E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1F41 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F44 _ FF. 75, 08
        call    showString                              ; 1F47 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F4C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1F4F _ 83. 45, D4, 10
        nop                                             ; 1F53 _ 90
        leave                                           ; 1F54 _ C9
        ret                                             ; 1F55 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1F56 _ 55
        mov     ebp, esp                                ; 1F57 _ 89. E5
        sub     esp, 24                                 ; 1F59 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 1F5C _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1F5F _ 0F AF. 45, 14
        mov     edx, eax                                ; 1F63 _ 89. C2
        mov     eax, dword [memman]                     ; 1F65 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1F6A _ 83. EC, 08
        push    edx                                     ; 1F6D _ 52
        push    eax                                     ; 1F6E _ 50
        call    memman_alloc_4K                         ; 1F6F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F74 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1F77 _ 89. 45, F0
        sub     esp, 12                                 ; 1F7A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1F7D _ FF. 75, 08
        call    sheet_alloc                             ; 1F80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F85 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F88 _ 89. 45, F4
        sub     esp, 12                                 ; 1F8B _ 83. EC, 0C
        push    99                                      ; 1F8E _ 6A, 63
        push    dword [ebp+14H]                         ; 1F90 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1F93 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 1F96 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1F99 _ FF. 75, F4
        call    sheet_setbuf                            ; 1F9C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FA1 _ 83. C4, 20
        push    1                                       ; 1FA4 _ 6A, 01
        push    dword [ebp+0CH]                         ; 1FA6 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1FA9 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FAC _ FF. 75, 08
        call    make_window8                            ; 1FAF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FB4 _ 83. C4, 10
        sub     esp, 8                                  ; 1FB7 _ 83. EC, 08
        push    7                                       ; 1FBA _ 6A, 07
        push    16                                      ; 1FBC _ 6A, 10
        push    150                                     ; 1FBE _ 68, 00000096
        push    42                                      ; 1FC3 _ 6A, 2A
        push    10                                      ; 1FC5 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 1FC7 _ FF. 75, F4
        call    make_textbox8                           ; 1FCA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FCF _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 1FD2 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1FD5 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1FD8 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FDB _ FF. 75, 08
        call    sheet_slide                             ; 1FDE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FE3 _ 83. C4, 10
        sub     esp, 4                                  ; 1FE6 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 1FE9 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1FEC _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FEF _ FF. 75, 08
        call    sheet_level_updown                      ; 1FF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FF7 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1FFA _ 8B. 45, F4
        leave                                           ; 1FFD _ C9
        ret                                             ; 1FFE _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 1FFF _ 55
        mov     ebp, esp                                ; 2000 _ 89. E5
        sub     esp, 24                                 ; 2002 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2005 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2008 _ 0F AF. 45, 20
        mov     edx, eax                                ; 200C _ 89. C2
        mov     eax, dword [memman]                     ; 200E _ A1, 00000008(d)
        sub     esp, 8                                  ; 2013 _ 83. EC, 08
        push    edx                                     ; 2016 _ 52
        push    eax                                     ; 2017 _ 50
        call    memman_alloc_4K                         ; 2018 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 201D _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2020 _ 89. 45, F0
        sub     esp, 12                                 ; 2023 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2026 _ FF. 75, 08
        call    sheet_alloc                             ; 2029 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 202E _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2031 _ 89. 45, F4
        sub     esp, 12                                 ; 2034 _ 83. EC, 0C
        push    99                                      ; 2037 _ 6A, 63
        push    dword [ebp+20H]                         ; 2039 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 203C _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 203F _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2042 _ FF. 75, F4
        call    sheet_setbuf                            ; 2045 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 204A _ 83. C4, 20
        push    0                                       ; 204D _ 6A, 00
        push    dword [ebp+18H]                         ; 204F _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2052 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2055 _ FF. 75, 08
        call    make_window8                            ; 2058 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 205D _ 83. C4, 10
        call    task_alloc                              ; 2060 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 2065 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2068 _ 8B. 45, 0C
        mov     dword [eax+70H], 0                      ; 206B _ C7. 40, 70, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2072 _ 8B. 45, 0C
        mov     dword [eax+74H], 1073741824             ; 2075 _ C7. 40, 74, 40000000
        call    get_code32_addr                         ; 207C _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 2081 _ F7. D8
        add     eax, task_b_main                        ; 2083 _ 05, 00000000(d)
        mov     edx, eax                                ; 2088 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 208A _ 8B. 45, 0C
        mov     dword [eax+30H], edx                    ; 208D _ 89. 50, 30
        mov     eax, dword [ebp+0CH]                    ; 2090 _ 8B. 45, 0C
        mov     dword [eax+58H], 0                      ; 2093 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp+0CH]                    ; 209A _ 8B. 45, 0C
        mov     dword [eax+5CH], 8                      ; 209D _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp+0CH]                    ; 20A4 _ 8B. 45, 0C
        mov     dword [eax+60H], 32                     ; 20A7 _ C7. 40, 60, 00000020
        mov     eax, dword [ebp+0CH]                    ; 20AE _ 8B. 45, 0C
        mov     dword [eax+64H], 24                     ; 20B1 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp+0CH]                    ; 20B8 _ 8B. 45, 0C
        mov     dword [eax+68H], 0                      ; 20BB _ C7. 40, 68, 00000000
        mov     eax, dword [ebp+0CH]                    ; 20C2 _ 8B. 45, 0C
        mov     dword [eax+6CH], 16                     ; 20C5 _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp+0CH]                    ; 20CC _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 20CF _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 20D2 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 20D5 _ 8B. 45, 0C
        mov     dword [eax+48H], edx                    ; 20D8 _ 89. 50, 48
        mov     eax, dword [ebp+0CH]                    ; 20DB _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 20DE _ 8B. 40, 48
        add     eax, 4                                  ; 20E1 _ 83. C0, 04
        mov     edx, eax                                ; 20E4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 20E6 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 20E9 _ 89. 02
        sub     esp, 4                                  ; 20EB _ 83. EC, 04
        push    dword [ebp+14H]                         ; 20EE _ FF. 75, 14
        push    dword [ebp+10H]                         ; 20F1 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 20F4 _ FF. 75, 0C
        call    task_run                                ; 20F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20FC _ 83. C4, 10
        push    dword [ebp+28H]                         ; 20FF _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2102 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2105 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2108 _ FF. 75, 08
        call    sheet_slide                             ; 210B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2110 _ 83. C4, 10
        sub     esp, 4                                  ; 2113 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2116 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2119 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 211C _ FF. 75, 08
        call    sheet_level_updown                      ; 211F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2124 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2127 _ 8B. 45, F4
        leave                                           ; 212A _ C9
        ret                                             ; 212B _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 212C _ 55
        mov     ebp, esp                                ; 212D _ 89. E5
        push    ebx                                     ; 212F _ 53
        sub     esp, 36                                 ; 2130 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2133 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2136 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2139 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 213C _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 213F _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2142 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2145 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2148 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 214B _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 214E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2151 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2154 _ 8B. 00
        push    0                                       ; 2156 _ 6A, 00
        push    edx                                     ; 2158 _ 52
        push    0                                       ; 2159 _ 6A, 00
        push    0                                       ; 215B _ 6A, 00
        push    8                                       ; 215D _ 6A, 08
        push    dword [ebp-10H]                         ; 215F _ FF. 75, F0
        push    eax                                     ; 2162 _ 50
        call    boxfill8                                ; 2163 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2168 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 216B _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 216E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2171 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2174 _ 8B. 00
        push    1                                       ; 2176 _ 6A, 01
        push    edx                                     ; 2178 _ 52
        push    1                                       ; 2179 _ 6A, 01
        push    1                                       ; 217B _ 6A, 01
        push    7                                       ; 217D _ 6A, 07
        push    dword [ebp-10H]                         ; 217F _ FF. 75, F0
        push    eax                                     ; 2182 _ 50
        call    boxfill8                                ; 2183 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2188 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 218B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 218E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2191 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2194 _ 8B. 00
        push    edx                                     ; 2196 _ 52
        push    0                                       ; 2197 _ 6A, 00
        push    0                                       ; 2199 _ 6A, 00
        push    0                                       ; 219B _ 6A, 00
        push    8                                       ; 219D _ 6A, 08
        push    dword [ebp-10H]                         ; 219F _ FF. 75, F0
        push    eax                                     ; 21A2 _ 50
        call    boxfill8                                ; 21A3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21A8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 21AB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21AE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 21B1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 21B4 _ 8B. 00
        push    edx                                     ; 21B6 _ 52
        push    1                                       ; 21B7 _ 6A, 01
        push    1                                       ; 21B9 _ 6A, 01
        push    1                                       ; 21BB _ 6A, 01
        push    7                                       ; 21BD _ 6A, 07
        push    dword [ebp-10H]                         ; 21BF _ FF. 75, F0
        push    eax                                     ; 21C2 _ 50
        call    boxfill8                                ; 21C3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21C8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 21CB _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 21CE _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 21D1 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 21D4 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 21D7 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 21DA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 21DD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 21E0 _ 8B. 00
        push    ebx                                     ; 21E2 _ 53
        push    ecx                                     ; 21E3 _ 51
        push    1                                       ; 21E4 _ 6A, 01
        push    edx                                     ; 21E6 _ 52
        push    15                                      ; 21E7 _ 6A, 0F
        push    dword [ebp-10H]                         ; 21E9 _ FF. 75, F0
        push    eax                                     ; 21EC _ 50
        call    boxfill8                                ; 21ED _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21F2 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 21F5 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 21F8 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 21FB _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 21FE _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2201 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2204 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2207 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 220A _ 8B. 00
        push    ebx                                     ; 220C _ 53
        push    ecx                                     ; 220D _ 51
        push    0                                       ; 220E _ 6A, 00
        push    edx                                     ; 2210 _ 52
        push    0                                       ; 2211 _ 6A, 00
        push    dword [ebp-10H]                         ; 2213 _ FF. 75, F0
        push    eax                                     ; 2216 _ 50
        call    boxfill8                                ; 2217 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 221C _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 221F _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2222 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2225 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2228 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 222B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 222E _ 8B. 00
        push    ecx                                     ; 2230 _ 51
        push    edx                                     ; 2231 _ 52
        push    2                                       ; 2232 _ 6A, 02
        push    2                                       ; 2234 _ 6A, 02
        push    8                                       ; 2236 _ 6A, 08
        push    dword [ebp-10H]                         ; 2238 _ FF. 75, F0
        push    eax                                     ; 223B _ 50
        call    boxfill8                                ; 223C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2241 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2244 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2247 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 224A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 224D _ 8B. 00
        push    20                                      ; 224F _ 6A, 14
        push    edx                                     ; 2251 _ 52
        push    3                                       ; 2252 _ 6A, 03
        push    3                                       ; 2254 _ 6A, 03
        push    12                                      ; 2256 _ 6A, 0C
        push    dword [ebp-10H]                         ; 2258 _ FF. 75, F0
        push    eax                                     ; 225B _ 50
        call    boxfill8                                ; 225C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2261 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2264 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2267 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 226A _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 226D _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2270 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2273 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2276 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2279 _ 8B. 00
        push    ebx                                     ; 227B _ 53
        push    ecx                                     ; 227C _ 51
        push    edx                                     ; 227D _ 52
        push    1                                       ; 227E _ 6A, 01
        push    15                                      ; 2280 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2282 _ FF. 75, F0
        push    eax                                     ; 2285 _ 50
        call    boxfill8                                ; 2286 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 228B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 228E _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2291 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2294 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2297 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 229A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 229D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 22A0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 22A3 _ 8B. 00
        push    ebx                                     ; 22A5 _ 53
        push    ecx                                     ; 22A6 _ 51
        push    edx                                     ; 22A7 _ 52
        push    0                                       ; 22A8 _ 6A, 00
        push    0                                       ; 22AA _ 6A, 00
        push    dword [ebp-10H]                         ; 22AC _ FF. 75, F0
        push    eax                                     ; 22AF _ 50
        call    boxfill8                                ; 22B0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 22B5 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 22B8 _ 0F BE. 45, E4
        push    eax                                     ; 22BC _ 50
        push    dword [ebp+10H]                         ; 22BD _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 22C0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 22C3 _ FF. 75, 08
        call    make_wtitle8                            ; 22C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22CB _ 83. C4, 10
        nop                                             ; 22CE _ 90
        mov     ebx, dword [ebp-4H]                     ; 22CF _ 8B. 5D, FC
        leave                                           ; 22D2 _ C9
        ret                                             ; 22D3 _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 22D4 _ 55
        mov     ebp, esp                                ; 22D5 _ 89. E5
        push    ebx                                     ; 22D7 _ 53
        sub     esp, 36                                 ; 22D8 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 22DB _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 22DE _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 22E1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 22E4 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 22E7 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 22EA _ 80. 7D, E4, 00
        jz      ?_080                                   ; 22EE _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 22F0 _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 22F4 _ C6. 45, EB, 0C
        jmp     ?_081                                   ; 22F8 _ EB, 0E

?_080:  cmp     byte [ebp-1CH], 0                       ; 22FA _ 80. 7D, E4, 00
        jnz     ?_081                                   ; 22FE _ 75, 08
        mov     byte [ebp-16H], 8                       ; 2300 _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2304 _ C6. 45, EB, 0F
?_081:  mov     eax, dword [ebp-0CH]                    ; 2308 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 230B _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 230E _ 0F B6. 45, EB
        movzx   edx, al                                 ; 2312 _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2315 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2318 _ 8B. 00
        push    20                                      ; 231A _ 6A, 14
        push    ecx                                     ; 231C _ 51
        push    3                                       ; 231D _ 6A, 03
        push    3                                       ; 231F _ 6A, 03
        push    edx                                     ; 2321 _ 52
        push    dword [ebp-0CH]                         ; 2322 _ FF. 75, F4
        push    eax                                     ; 2325 _ 50
        call    boxfill8                                ; 2326 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 232B _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 232E _ 0F BE. 45, EA
        sub     esp, 8                                  ; 2332 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2335 _ FF. 75, 10
        push    eax                                     ; 2338 _ 50
        push    4                                       ; 2339 _ 6A, 04
        push    8                                       ; 233B _ 6A, 08
        push    dword [ebp+0CH]                         ; 233D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2340 _ FF. 75, 08
        call    showString                              ; 2343 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2348 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 234B _ C7. 45, EC, 00000000
        jmp     ?_088                                   ; 2352 _ EB, 75

?_082:  mov     dword [ebp-10H], 0                      ; 2354 _ C7. 45, F0, 00000000
        jmp     ?_087                                   ; 235B _ EB, 62

?_083:  mov     eax, dword [ebp-14H]                    ; 235D _ 8B. 45, EC
        shl     eax, 4                                  ; 2360 _ C1. E0, 04
        mov     edx, eax                                ; 2363 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2365 _ 8B. 45, F0
        add     eax, edx                                ; 2368 _ 01. D0
        add     eax, closebtn.2554                      ; 236A _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 236F _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 2372 _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 2375 _ 80. 7D, E9, 40
        jnz     ?_084                                   ; 2379 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 237B _ C6. 45, E9, 00
        jmp     ?_086                                   ; 237F _ EB, 16

?_084:  cmp     byte [ebp-17H], 36                      ; 2381 _ 80. 7D, E9, 24
        jnz     ?_085                                   ; 2385 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 2387 _ C6. 45, E9, 0F
        jmp     ?_086                                   ; 238B _ EB, 0A

?_085:  cmp     byte [ebp-17H], 81                      ; 238D _ 80. 7D, E9, 51
        jnz     ?_086                                   ; 2391 _ 75, 04
        mov     byte [ebp-17H], 8                       ; 2393 _ C6. 45, E9, 08
?_086:  mov     eax, dword [ebp+0CH]                    ; 2397 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 239A _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 239C _ 8B. 55, EC
        add     edx, 5                                  ; 239F _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 23A2 _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 23A6 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 23A9 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 23AC _ 8B. 4D, F0
        add     ecx, ebx                                ; 23AF _ 01. D9
        add     edx, ecx                                ; 23B1 _ 01. CA
        add     edx, eax                                ; 23B3 _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 23B5 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 23B9 _ 88. 02
        add     dword [ebp-10H], 1                      ; 23BB _ 83. 45, F0, 01
?_087:  cmp     dword [ebp-10H], 15                     ; 23BF _ 83. 7D, F0, 0F
        jle     ?_083                                   ; 23C3 _ 7E, 98
        add     dword [ebp-14H], 1                      ; 23C5 _ 83. 45, EC, 01
?_088:  cmp     dword [ebp-14H], 13                     ; 23C9 _ 83. 7D, EC, 0D
        jle     ?_082                                   ; 23CD _ 7E, 85
        nop                                             ; 23CF _ 90
        mov     ebx, dword [ebp-4H]                     ; 23D0 _ 8B. 5D, FC
        leave                                           ; 23D3 _ C9
        ret                                             ; 23D4 _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 23D5 _ 55
        mov     ebp, esp                                ; 23D6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 23D8 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 23DB _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 23E1 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 23E4 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 23EB _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 23EE _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 23F5 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 23F8 _ C7. 40, 0C, 00000000
        nop                                             ; 23FF _ 90
        pop     ebp                                     ; 2400 _ 5D
        ret                                             ; 2401 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2402 _ 55
        mov     ebp, esp                                ; 2403 _ 89. E5
        sub     esp, 16                                 ; 2405 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2408 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 240F _ C7. 45, FC, 00000000
        jmp     ?_090                                   ; 2416 _ EB, 14

?_089:  mov     eax, dword [ebp+8H]                     ; 2418 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 241B _ 8B. 55, FC
        add     edx, 2                                  ; 241E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2421 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2425 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2428 _ 83. 45, FC, 01
?_090:  mov     eax, dword [ebp+8H]                     ; 242C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 242F _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2431 _ 39. 45, FC
        jl      ?_089                                   ; 2434 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2436 _ 8B. 45, F8
        leave                                           ; 2439 _ C9
        ret                                             ; 243A _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 243B _ 55
        mov     ebp, esp                                ; 243C _ 89. E5
        sub     esp, 16                                 ; 243E _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2441 _ C7. 45, F8, 00000000
        jmp     ?_094                                   ; 2448 _ E9, 00000085

?_091:  mov     eax, dword [ebp+8H]                     ; 244D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2450 _ 8B. 55, F8
        add     edx, 2                                  ; 2453 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2456 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 245A _ 39. 45, 0C
        ja      ?_093                                   ; 245D _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 245F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2462 _ 8B. 55, F8
        add     edx, 2                                  ; 2465 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2468 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 246B _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 246E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2471 _ 8B. 55, F8
        add     edx, 2                                  ; 2474 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2477 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 247A _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 247D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2480 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2483 _ 8B. 55, F8
        add     edx, 2                                  ; 2486 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2489 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 248C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 248F _ 8B. 55, F8
        add     edx, 2                                  ; 2492 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2495 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2499 _ 2B. 45, 0C
        mov     edx, eax                                ; 249C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 249E _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 24A1 _ 8B. 4D, F8
        add     ecx, 2                                  ; 24A4 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 24A7 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 24AB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 24AE _ 8B. 55, F8
        add     edx, 2                                  ; 24B1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 24B4 _ 8B. 44 D0, 04
        test    eax, eax                                ; 24B8 _ 85. C0
        jnz     ?_092                                   ; 24BA _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 24BC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24BF _ 8B. 00
        lea     edx, [eax-1H]                           ; 24C1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24C4 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 24C7 _ 89. 10
?_092:  mov     eax, dword [ebp-4H]                     ; 24C9 _ 8B. 45, FC
        jmp     ?_095                                   ; 24CC _ EB, 17

?_093:  add     dword [ebp-8H], 1                       ; 24CE _ 83. 45, F8, 01
?_094:  mov     eax, dword [ebp+8H]                     ; 24D2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24D5 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 24D7 _ 39. 45, F8
        jl      ?_091                                   ; 24DA _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 24E0 _ B8, 00000000
?_095:  leave                                           ; 24E5 _ C9
        ret                                             ; 24E6 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 24E7 _ 55
        mov     ebp, esp                                ; 24E8 _ 89. E5
        sub     esp, 16                                 ; 24EA _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 24ED _ 8B. 45, 0C
        add     eax, 4095                               ; 24F0 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 24F5 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 24FA _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 24FD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2500 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2503 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2508 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 250B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 250E _ 8B. 45, FC
        leave                                           ; 2511 _ C9
        ret                                             ; 2512 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2513 _ 55
        mov     ebp, esp                                ; 2514 _ 89. E5
        push    ebx                                     ; 2516 _ 53
        sub     esp, 16                                 ; 2517 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 251A _ C7. 45, F4, 00000000
        jmp     ?_097                                   ; 2521 _ EB, 15

?_096:  mov     eax, dword [ebp+8H]                     ; 2523 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2526 _ 8B. 55, F4
        add     edx, 2                                  ; 2529 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 252C _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 252F _ 39. 45, 0C
        jc      ?_098                                   ; 2532 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2534 _ 83. 45, F4, 01
?_097:  mov     eax, dword [ebp+8H]                     ; 2538 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 253B _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 253D _ 39. 45, F4
        jl      ?_096                                   ; 2540 _ 7C, E1
        jmp     ?_099                                   ; 2542 _ EB, 01

?_098:  nop                                             ; 2544 _ 90
?_099:  cmp     dword [ebp-0CH], 0                      ; 2545 _ 83. 7D, F4, 00
        jle     ?_101                                   ; 2549 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 254F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2552 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2555 _ 8B. 45, 08
        add     edx, 2                                  ; 2558 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 255B _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 255E _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2561 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2564 _ 8B. 45, 08
        add     ecx, 2                                  ; 2567 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 256A _ 8B. 44 C8, 04
        add     eax, edx                                ; 256E _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2570 _ 39. 45, 0C
        jne     ?_101                                   ; 2573 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2579 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 257C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 257F _ 8B. 45, 08
        add     edx, 2                                  ; 2582 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2585 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2589 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 258C _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 258F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2592 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2595 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2598 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 259B _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 259F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25A2 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 25A4 _ 39. 45, F4
        jge     ?_100                                   ; 25A7 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 25A9 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 25AC _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 25AF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 25B2 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 25B5 _ 8B. 55, F4
        add     edx, 2                                  ; 25B8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 25BB _ 8B. 04 D0
        cmp     ecx, eax                                ; 25BE _ 39. C1
        jnz     ?_100                                   ; 25C0 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 25C2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 25C5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 25C8 _ 8B. 45, 08
        add     edx, 2                                  ; 25CB _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 25CE _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 25D2 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 25D5 _ 8B. 4D, F4
        add     ecx, 2                                  ; 25D8 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 25DB _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 25DF _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 25E2 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 25E5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 25E8 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 25EB _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 25EE _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 25F2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25F5 _ 8B. 00
        lea     edx, [eax-1H]                           ; 25F7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 25FA _ 8B. 45, 08
        mov     dword [eax], edx                        ; 25FD _ 89. 10
?_100:  mov     eax, 0                                  ; 25FF _ B8, 00000000
        jmp     ?_107                                   ; 2604 _ E9, 0000011C

?_101:  mov     eax, dword [ebp+8H]                     ; 2609 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 260C _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 260E _ 39. 45, F4
        jge     ?_102                                   ; 2611 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2613 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2616 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2619 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 261C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 261F _ 8B. 55, F4
        add     edx, 2                                  ; 2622 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2625 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2628 _ 39. C1
        jnz     ?_102                                   ; 262A _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 262C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 262F _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2632 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2635 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2638 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 263B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 263E _ 8B. 55, F4
        add     edx, 2                                  ; 2641 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2644 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2648 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 264B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 264E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2651 _ 8B. 55, F4
        add     edx, 2                                  ; 2654 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2657 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 265B _ B8, 00000000
        jmp     ?_107                                   ; 2660 _ E9, 000000C0

?_102:  mov     eax, dword [ebp+8H]                     ; 2665 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2668 _ 8B. 00
        cmp     eax, 4095                               ; 266A _ 3D, 00000FFF
        jg      ?_106                                   ; 266F _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2675 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2678 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 267A _ 89. 45, F8
        jmp     ?_104                                   ; 267D _ EB, 28

?_103:  mov     eax, dword [ebp-8H]                     ; 267F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2682 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2685 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2688 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 268B _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 268E _ 8B. 45, 08
        add     edx, 2                                  ; 2691 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2694 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2697 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2699 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 269C _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 269F _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 26A3 _ 83. 6D, F8, 01
?_104:  mov     eax, dword [ebp-8H]                     ; 26A7 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 26AA _ 3B. 45, F4
        jg      ?_103                                   ; 26AD _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 26AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 26B2 _ 8B. 00
        lea     edx, [eax+1H]                           ; 26B4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 26B7 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 26BA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 26BC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 26BF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 26C2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 26C5 _ 8B. 00
        cmp     edx, eax                                ; 26C7 _ 39. C2
        jge     ?_105                                   ; 26C9 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 26CB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 26CE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 26D0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 26D3 _ 89. 50, 04
?_105:  mov     eax, dword [ebp+8H]                     ; 26D6 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 26D9 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 26DC _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 26DF _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 26E2 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 26E5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 26E8 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 26EB _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 26EE _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 26F1 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 26F5 _ B8, 00000000
        jmp     ?_107                                   ; 26FA _ EB, 29

?_106:  mov     eax, dword [ebp+8H]                     ; 26FC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 26FF _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2702 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2705 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2708 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 270B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 270E _ 8B. 40, 08
        mov     edx, eax                                ; 2711 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2713 _ 8B. 45, 10
        add     eax, edx                                ; 2716 _ 01. D0
        mov     edx, eax                                ; 2718 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 271A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 271D _ 89. 50, 08
        mov     eax, 4294967295                         ; 2720 _ B8, FFFFFFFF
?_107:  add     esp, 16                                 ; 2725 _ 83. C4, 10
        pop     ebx                                     ; 2728 _ 5B
        pop     ebp                                     ; 2729 _ 5D
        ret                                             ; 272A _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 272B _ 55
        mov     ebp, esp                                ; 272C _ 89. E5
        sub     esp, 16                                 ; 272E _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2731 _ 8B. 45, 10
        add     eax, 4095                               ; 2734 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2739 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 273E _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2741 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2744 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2747 _ FF. 75, 08
        call    memman_free                             ; 274A _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 274F _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2752 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2755 _ 8B. 45, FC
        leave                                           ; 2758 _ C9
        ret                                             ; 2759 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 275A _ 55
        mov     ebp, esp                                ; 275B _ 89. E5
        sub     esp, 24                                 ; 275D _ 83. EC, 18
        sub     esp, 8                                  ; 2760 _ 83. EC, 08
        push    9232                                    ; 2763 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2768 _ FF. 75, 08
        call    memman_alloc_4K                         ; 276B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2770 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2773 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2776 _ 83. 7D, F4, 00
        jnz     ?_108                                   ; 277A _ 75, 0A
        mov     eax, 0                                  ; 277C _ B8, 00000000
        jmp     ?_112                                   ; 2781 _ E9, 0000009A

?_108:  mov     eax, dword [ebp+10H]                    ; 2786 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2789 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 278D _ 83. EC, 08
        push    eax                                     ; 2790 _ 50
        push    dword [ebp+8H]                          ; 2791 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2794 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2799 _ 83. C4, 10
        mov     edx, eax                                ; 279C _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 279E _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 27A1 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 27A4 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 27A7 _ 8B. 40, 04
        test    eax, eax                                ; 27AA _ 85. C0
        jnz     ?_109                                   ; 27AC _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 27AE _ 8B. 45, F4
        sub     esp, 4                                  ; 27B1 _ 83. EC, 04
        push    9232                                    ; 27B4 _ 68, 00002410
        push    eax                                     ; 27B9 _ 50
        push    dword [ebp+8H]                          ; 27BA _ FF. 75, 08
        call    memman_free_4K                          ; 27BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 27C2 _ 83. C4, 10
        mov     eax, 0                                  ; 27C5 _ B8, 00000000
        jmp     ?_112                                   ; 27CA _ EB, 54

?_109:  mov     eax, dword [ebp-0CH]                    ; 27CC _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 27CF _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 27D2 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 27D4 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 27D7 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 27DA _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 27DD _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 27E0 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 27E3 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 27E6 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 27E9 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 27F0 _ C7. 45, F0, 00000000
        jmp     ?_111                                   ; 27F7 _ EB, 1B

?_110:  mov     eax, dword [ebp-0CH]                    ; 27F9 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 27FC _ 8B. 55, F0
        add     edx, 33                                 ; 27FF _ 83. C2, 21
        shl     edx, 5                                  ; 2802 _ C1. E2, 05
        add     eax, edx                                ; 2805 _ 01. D0
        add     eax, 16                                 ; 2807 _ 83. C0, 10
        mov     dword [eax], 0                          ; 280A _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2810 _ 83. 45, F0, 01
?_111:  cmp     dword [ebp-10H], 255                    ; 2814 _ 81. 7D, F0, 000000FF
        jle     ?_110                                   ; 281B _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 281D _ 8B. 45, F4
?_112:  leave                                           ; 2820 _ C9
        ret                                             ; 2821 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2822 _ 55
        mov     ebp, esp                                ; 2823 _ 89. E5
        sub     esp, 16                                 ; 2825 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2828 _ C7. 45, F8, 00000000
        jmp     ?_115                                   ; 282F _ EB, 4B

?_113:  mov     eax, dword [ebp+8H]                     ; 2831 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2834 _ 8B. 55, F8
        add     edx, 33                                 ; 2837 _ 83. C2, 21
        shl     edx, 5                                  ; 283A _ C1. E2, 05
        add     eax, edx                                ; 283D _ 01. D0
        add     eax, 16                                 ; 283F _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2842 _ 8B. 00
        test    eax, eax                                ; 2844 _ 85. C0
        jnz     ?_114                                   ; 2846 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2848 _ 8B. 45, F8
        shl     eax, 5                                  ; 284B _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 284E _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2854 _ 8B. 45, 08
        add     eax, edx                                ; 2857 _ 01. D0
        add     eax, 4                                  ; 2859 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 285C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 285F _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2862 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2869 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 286C _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2873 _ 8B. 45, FC
        jmp     ?_116                                   ; 2876 _ EB, 12

?_114:  add     dword [ebp-8H], 1                       ; 2878 _ 83. 45, F8, 01
?_115:  cmp     dword [ebp-8H], 255                     ; 287C _ 81. 7D, F8, 000000FF
        jle     ?_113                                   ; 2883 _ 7E, AC
        mov     eax, 0                                  ; 2885 _ B8, 00000000
?_116:  leave                                           ; 288A _ C9
        ret                                             ; 288B _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 288C _ 55
        mov     ebp, esp                                ; 288D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 288F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2892 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2895 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2897 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 289A _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 289D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 28A0 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 28A3 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 28A6 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 28A9 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 28AC _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 28AF _ 89. 50, 14
        nop                                             ; 28B2 _ 90
        pop     ebp                                     ; 28B3 _ 5D
        ret                                             ; 28B4 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 28B5 _ 55
        mov     ebp, esp                                ; 28B6 _ 89. E5
        push    esi                                     ; 28B8 _ 56
        push    ebx                                     ; 28B9 _ 53
        sub     esp, 32                                 ; 28BA _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 28BD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 28C0 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 28C3 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 28C6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28C9 _ 8B. 40, 10
        add     eax, 1                                  ; 28CC _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 28CF _ 39. 45, 10
        jle     ?_117                                   ; 28D2 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 28D4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28D7 _ 8B. 40, 10
        add     eax, 1                                  ; 28DA _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 28DD _ 89. 45, 10
?_117:  cmp     dword [ebp+10H], -1                     ; 28E0 _ 83. 7D, 10, FF
        jge     ?_118                                   ; 28E4 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 28E6 _ C7. 45, 10, FFFFFFFF
?_118:  mov     eax, dword [ebp+0CH]                    ; 28ED _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 28F0 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 28F3 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 28F6 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 28F9 _ 3B. 45, 10
        jle     ?_125                                   ; 28FC _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2902 _ 83. 7D, 10, 00
        js      ?_121                                   ; 2906 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 290C _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 290F _ 89. 45, E4
        jmp     ?_120                                   ; 2912 _ EB, 34

?_119:  mov     eax, dword [ebp-1CH]                    ; 2914 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2917 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 291A _ 8B. 45, 08
        add     edx, 4                                  ; 291D _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2920 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2924 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2927 _ 8B. 4D, E4
        add     ecx, 4                                  ; 292A _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 292D _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2931 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2934 _ 8B. 55, E4
        add     edx, 4                                  ; 2937 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 293A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 293E _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2941 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2944 _ 83. 6D, E4, 01
?_120:  mov     eax, dword [ebp-1CH]                    ; 2948 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 294B _ 3B. 45, 10
        jg      ?_119                                   ; 294E _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2950 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2953 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2956 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2959 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 295C _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2960 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2963 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2966 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2969 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 296C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 296F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2972 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2975 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2978 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 297B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 297E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2981 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2984 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2987 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 298A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 298D _ 8B. 40, 0C
        sub     esp, 8                                  ; 2990 _ 83. EC, 08
        push    esi                                     ; 2993 _ 56
        push    ebx                                     ; 2994 _ 53
        push    ecx                                     ; 2995 _ 51
        push    edx                                     ; 2996 _ 52
        push    eax                                     ; 2997 _ 50
        push    dword [ebp+8H]                          ; 2998 _ FF. 75, 08
        call    sheet_refreshmap                        ; 299B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29A0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 29A3 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 29A6 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 29A9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29AC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29AF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 29B2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 29B5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 29B8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 29BB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 29BE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 29C1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 29C4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 29C7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29CA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29CD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 29D0 _ 8B. 40, 0C
        sub     esp, 4                                  ; 29D3 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 29D6 _ FF. 75, F4
        push    esi                                     ; 29D9 _ 56
        push    ebx                                     ; 29DA _ 53
        push    ecx                                     ; 29DB _ 51
        push    edx                                     ; 29DC _ 52
        push    eax                                     ; 29DD _ 50
        push    dword [ebp+8H]                          ; 29DE _ FF. 75, 08
        call    sheet_refresh_new                       ; 29E1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29E6 _ 83. C4, 20
        jmp     ?_132                                   ; 29E9 _ E9, 00000244

?_121:  mov     eax, dword [ebp+8H]                     ; 29EE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 29F1 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 29F4 _ 39. 45, F4
        jge     ?_124                                   ; 29F7 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 29F9 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 29FC _ 89. 45, E8
        jmp     ?_123                                   ; 29FF _ EB, 34

?_122:  mov     eax, dword [ebp-18H]                    ; 2A01 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2A04 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A07 _ 8B. 45, 08
        add     edx, 4                                  ; 2A0A _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2A0D _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2A11 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2A14 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2A17 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2A1A _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2A1E _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2A21 _ 8B. 55, E8
        add     edx, 4                                  ; 2A24 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A27 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2A2B _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2A2E _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2A31 _ 83. 45, E8, 01
?_123:  mov     eax, dword [ebp+8H]                     ; 2A35 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A38 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2A3B _ 39. 45, E8
        jl      ?_122                                   ; 2A3E _ 7C, C1
?_124:  mov     eax, dword [ebp+8H]                     ; 2A40 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A43 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2A46 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2A49 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2A4C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A4F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A52 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A55 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A58 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A5B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A5E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A61 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A64 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A67 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A6A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A6D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A70 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A73 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A76 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2A79 _ 83. EC, 08
        push    0                                       ; 2A7C _ 6A, 00
        push    ebx                                     ; 2A7E _ 53
        push    ecx                                     ; 2A7F _ 51
        push    edx                                     ; 2A80 _ 52
        push    eax                                     ; 2A81 _ 50
        push    dword [ebp+8H]                          ; 2A82 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2A85 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A8A _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2A8D _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2A90 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2A93 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A96 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A99 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A9C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A9F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2AA2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2AA5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2AA8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2AAB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2AAE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2AB1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AB4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2AB7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2ABA _ 8B. 40, 0C
        sub     esp, 4                                  ; 2ABD _ 83. EC, 04
        push    esi                                     ; 2AC0 _ 56
        push    0                                       ; 2AC1 _ 6A, 00
        push    ebx                                     ; 2AC3 _ 53
        push    ecx                                     ; 2AC4 _ 51
        push    edx                                     ; 2AC5 _ 52
        push    eax                                     ; 2AC6 _ 50
        push    dword [ebp+8H]                          ; 2AC7 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2ACA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2ACF _ 83. C4, 20
        jmp     ?_132                                   ; 2AD2 _ E9, 0000015B

?_125:  mov     eax, dword [ebp-0CH]                    ; 2AD7 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2ADA _ 3B. 45, 10
        jge     ?_132                                   ; 2ADD _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2AE3 _ 83. 7D, F4, 00
        js      ?_128                                   ; 2AE7 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2AE9 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2AEC _ 89. 45, EC
        jmp     ?_127                                   ; 2AEF _ EB, 34

?_126:  mov     eax, dword [ebp-14H]                    ; 2AF1 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2AF4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2AF7 _ 8B. 45, 08
        add     edx, 4                                  ; 2AFA _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2AFD _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2B01 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2B04 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2B07 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2B0A _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2B0E _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2B11 _ 8B. 55, EC
        add     edx, 4                                  ; 2B14 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2B17 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2B1B _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2B1E _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2B21 _ 83. 45, EC, 01
?_127:  mov     eax, dword [ebp-14H]                    ; 2B25 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2B28 _ 3B. 45, 10
        jl      ?_126                                   ; 2B2B _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2B2D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2B30 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2B33 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2B36 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2B39 _ 89. 54 88, 04
        jmp     ?_131                                   ; 2B3D _ EB, 72

?_128:  cmp     dword [ebp-0CH], 0                      ; 2B3F _ 83. 7D, F4, 00
        jns     ?_131                                   ; 2B43 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2B45 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B48 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2B4B _ 89. 45, F0
        jmp     ?_130                                   ; 2B4E _ EB, 3A

?_129:  mov     eax, dword [ebp-10H]                    ; 2B50 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2B53 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2B56 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2B59 _ 8B. 55, F0
        add     edx, 4                                  ; 2B5C _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2B5F _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2B63 _ 8B. 45, 08
        add     ecx, 4                                  ; 2B66 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2B69 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2B6D _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2B70 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B73 _ 8B. 45, 08
        add     edx, 4                                  ; 2B76 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2B79 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2B7D _ 8B. 55, F0
        add     edx, 1                                  ; 2B80 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2B83 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2B86 _ 83. 6D, F0, 01
?_130:  mov     eax, dword [ebp-10H]                    ; 2B8A _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2B8D _ 3B. 45, 10
        jge     ?_129                                   ; 2B90 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2B92 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2B95 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2B98 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2B9B _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2B9E _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2BA2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BA5 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2BA8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2BAB _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2BAE _ 89. 50, 10
?_131:  mov     eax, dword [ebp+0CH]                    ; 2BB1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2BB4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2BB7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2BBA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2BBD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2BC0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2BC3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2BC6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2BC9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2BCC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2BCF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2BD2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2BD5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2BD8 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2BDB _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2BDE _ FF. 75, 10
        push    ebx                                     ; 2BE1 _ 53
        push    ecx                                     ; 2BE2 _ 51
        push    edx                                     ; 2BE3 _ 52
        push    eax                                     ; 2BE4 _ 50
        push    dword [ebp+8H]                          ; 2BE5 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2BE8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BED _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BF0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2BF3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2BF6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2BF9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2BFC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2BFF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C02 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C05 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C08 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2C0B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2C0E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C11 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C14 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C17 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2C1A _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2C1D _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2C20 _ FF. 75, 10
        push    ebx                                     ; 2C23 _ 53
        push    ecx                                     ; 2C24 _ 51
        push    edx                                     ; 2C25 _ 52
        push    eax                                     ; 2C26 _ 50
        push    dword [ebp+8H]                          ; 2C27 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C2A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C2F _ 83. C4, 20
?_132:  nop                                             ; 2C32 _ 90
        lea     esp, [ebp-8H]                           ; 2C33 _ 8D. 65, F8
        pop     ebx                                     ; 2C36 _ 5B
        pop     esi                                     ; 2C37 _ 5E
        pop     ebp                                     ; 2C38 _ 5D
        ret                                             ; 2C39 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2C3A _ 55
        mov     ebp, esp                                ; 2C3B _ 89. E5
        push    edi                                     ; 2C3D _ 57
        push    esi                                     ; 2C3E _ 56
        push    ebx                                     ; 2C3F _ 53
        sub     esp, 28                                 ; 2C40 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2C43 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C46 _ 8B. 40, 18
        test    eax, eax                                ; 2C49 _ 85. C0
        js      ?_133                                   ; 2C4B _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2C4D _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2C50 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2C53 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2C56 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2C59 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C5C _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2C5F _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2C62 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2C65 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C68 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2C6B _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2C6E _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2C71 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C74 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2C77 _ 8B. 45, 14
        add     edx, eax                                ; 2C7A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2C7C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C7F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2C82 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2C85 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2C88 _ 03. 45, E4
        sub     esp, 4                                  ; 2C8B _ 83. EC, 04
        push    ebx                                     ; 2C8E _ 53
        push    ecx                                     ; 2C8F _ 51
        push    edi                                     ; 2C90 _ 57
        push    esi                                     ; 2C91 _ 56
        push    edx                                     ; 2C92 _ 52
        push    eax                                     ; 2C93 _ 50
        push    dword [ebp+8H]                          ; 2C94 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C97 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C9C _ 83. C4, 20
?_133:  mov     eax, 0                                  ; 2C9F _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2CA4 _ 8D. 65, F4
        pop     ebx                                     ; 2CA7 _ 5B
        pop     esi                                     ; 2CA8 _ 5E
        pop     edi                                     ; 2CA9 _ 5F
        pop     ebp                                     ; 2CAA _ 5D
        ret                                             ; 2CAB _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2CAC _ 55
        mov     ebp, esp                                ; 2CAD _ 89. E5
        push    esi                                     ; 2CAF _ 56
        push    ebx                                     ; 2CB0 _ 53
        sub     esp, 16                                 ; 2CB1 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2CB4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2CB7 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2CBA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2CBD _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2CC0 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2CC3 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2CC6 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2CC9 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2CCC _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CCF _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2CD2 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2CD5 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CD8 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2CDB _ 8B. 40, 18
        test    eax, eax                                ; 2CDE _ 85. C0
        js      ?_134                                   ; 2CE0 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2CE6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2CE9 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2CEC _ 8B. 45, F4
        add     edx, eax                                ; 2CEF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2CF1 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2CF4 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2CF7 _ 8B. 45, F0
        add     eax, ecx                                ; 2CFA _ 01. C8
        sub     esp, 8                                  ; 2CFC _ 83. EC, 08
        push    0                                       ; 2CFF _ 6A, 00
        push    edx                                     ; 2D01 _ 52
        push    eax                                     ; 2D02 _ 50
        push    dword [ebp-0CH]                         ; 2D03 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2D06 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2D09 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2D0C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D11 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2D14 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2D17 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2D1A _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2D1D _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2D20 _ 8B. 55, 14
        add     ecx, edx                                ; 2D23 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2D25 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2D28 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2D2B _ 8B. 55, 10
        add     edx, ebx                                ; 2D2E _ 01. DA
        sub     esp, 8                                  ; 2D30 _ 83. EC, 08
        push    eax                                     ; 2D33 _ 50
        push    ecx                                     ; 2D34 _ 51
        push    edx                                     ; 2D35 _ 52
        push    dword [ebp+14H]                         ; 2D36 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2D39 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2D3C _ FF. 75, 08
        call    sheet_refreshmap                        ; 2D3F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D44 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2D47 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2D4A _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2D4D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2D50 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2D53 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2D56 _ 8B. 45, F4
        add     edx, eax                                ; 2D59 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2D5B _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2D5E _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2D61 _ 8B. 45, F0
        add     eax, ebx                                ; 2D64 _ 01. D8
        sub     esp, 4                                  ; 2D66 _ 83. EC, 04
        push    ecx                                     ; 2D69 _ 51
        push    0                                       ; 2D6A _ 6A, 00
        push    edx                                     ; 2D6C _ 52
        push    eax                                     ; 2D6D _ 50
        push    dword [ebp-0CH]                         ; 2D6E _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2D71 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2D74 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2D77 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D7C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2D7F _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2D82 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2D85 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2D88 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2D8B _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2D8E _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2D91 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2D94 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2D96 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2D99 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2D9C _ 8B. 4D, 10
        add     ecx, esi                                ; 2D9F _ 01. F1
        sub     esp, 4                                  ; 2DA1 _ 83. EC, 04
        push    edx                                     ; 2DA4 _ 52
        push    eax                                     ; 2DA5 _ 50
        push    ebx                                     ; 2DA6 _ 53
        push    ecx                                     ; 2DA7 _ 51
        push    dword [ebp+14H]                         ; 2DA8 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2DAB _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2DAE _ FF. 75, 08
        call    sheet_refresh_new                       ; 2DB1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2DB6 _ 83. C4, 20
?_134:  nop                                             ; 2DB9 _ 90
        lea     esp, [ebp-8H]                           ; 2DBA _ 8D. 65, F8
        pop     ebx                                     ; 2DBD _ 5B
        pop     esi                                     ; 2DBE _ 5E
        pop     ebp                                     ; 2DBF _ 5D
        ret                                             ; 2DC0 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2DC1 _ 55
        mov     ebp, esp                                ; 2DC2 _ 89. E5
        sub     esp, 48                                 ; 2DC4 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2DC7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DCA _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2DCC _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2DCF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2DD2 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2DD5 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2DD8 _ 83. 7D, 0C, 00
        jns     ?_135                                   ; 2DDC _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2DDE _ C7. 45, 0C, 00000000
?_135:  cmp     dword [ebp+10H], 8                      ; 2DE5 _ 83. 7D, 10, 08
        jg      ?_136                                   ; 2DE9 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2DEB _ C7. 45, 10, 00000000
?_136:  mov     eax, dword [ebp+8H]                     ; 2DF2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DF5 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2DF8 _ 39. 45, 14
        jle     ?_137                                   ; 2DFB _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2DFD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E00 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2E03 _ 89. 45, 14
?_137:  mov     eax, dword [ebp+8H]                     ; 2E06 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E09 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2E0C _ 39. 45, 18
        jle     ?_138                                   ; 2E0F _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2E11 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E14 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2E17 _ 89. 45, 18
?_138:  mov     eax, dword [ebp+1CH]                    ; 2E1A _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2E1D _ 89. 45, DC
        jmp     ?_145                                   ; 2E20 _ E9, 00000118

?_139:  mov     eax, dword [ebp+8H]                     ; 2E25 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2E28 _ 8B. 55, DC
        add     edx, 4                                  ; 2E2B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E2E _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2E32 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2E35 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2E38 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2E3A _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2E3D _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2E40 _ 8B. 55, 08
        add     edx, 1044                               ; 2E43 _ 81. C2, 00000414
        sub     eax, edx                                ; 2E49 _ 29. D0
        sar     eax, 5                                  ; 2E4B _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2E4E _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2E51 _ C7. 45, E0, 00000000
        jmp     ?_144                                   ; 2E58 _ E9, 000000CD

?_140:  mov     eax, dword [ebp-10H]                    ; 2E5D _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2E60 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2E63 _ 8B. 45, E0
        add     eax, edx                                ; 2E66 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2E68 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2E6B _ C7. 45, E4, 00000000
        jmp     ?_143                                   ; 2E72 _ E9, 000000A0

?_141:  mov     eax, dword [ebp-10H]                    ; 2E77 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2E7A _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2E7D _ 8B. 45, E4
        add     eax, edx                                ; 2E80 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2E82 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2E85 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2E88 _ 3B. 45, FC
        jg      ?_142                                   ; 2E8B _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2E91 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2E94 _ 3B. 45, 14
        jge     ?_142                                   ; 2E97 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2E99 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2E9C _ 3B. 45, F8
        jg      ?_142                                   ; 2E9F _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2EA1 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2EA4 _ 3B. 45, 18
        jge     ?_142                                   ; 2EA7 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2EA9 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2EAC _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2EAF _ 0F AF. 45, E0
        mov     edx, eax                                ; 2EB3 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2EB5 _ 8B. 45, E4
        add     eax, edx                                ; 2EB8 _ 01. D0
        mov     edx, eax                                ; 2EBA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2EBC _ 8B. 45, F4
        add     eax, edx                                ; 2EBF _ 01. D0
        movzx   eax, byte [eax]                         ; 2EC1 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2EC4 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2EC7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2ECA _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2ECD _ 0F AF. 45, F8
        mov     edx, eax                                ; 2ED1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2ED3 _ 8B. 45, FC
        add     eax, edx                                ; 2ED6 _ 01. D0
        mov     edx, eax                                ; 2ED8 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2EDA _ 8B. 45, EC
        add     eax, edx                                ; 2EDD _ 01. D0
        movzx   eax, byte [eax]                         ; 2EDF _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2EE2 _ 38. 45, DA
        jnz     ?_142                                   ; 2EE5 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2EE7 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2EEB _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2EEE _ 8B. 40, 14
        cmp     edx, eax                                ; 2EF1 _ 39. C2
        jz      ?_142                                   ; 2EF3 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2EF5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2EF8 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2EFB _ 0F AF. 45, F8
        mov     edx, eax                                ; 2EFF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2F01 _ 8B. 45, FC
        add     eax, edx                                ; 2F04 _ 01. D0
        mov     edx, eax                                ; 2F06 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2F08 _ 8B. 45, E8
        add     edx, eax                                ; 2F0B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2F0D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2F11 _ 88. 02
?_142:  add     dword [ebp-1CH], 1                      ; 2F13 _ 83. 45, E4, 01
?_143:  mov     eax, dword [ebp-10H]                    ; 2F17 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2F1A _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2F1D _ 39. 45, E4
        jl      ?_141                                   ; 2F20 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2F26 _ 83. 45, E0, 01
?_144:  mov     eax, dword [ebp-10H]                    ; 2F2A _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2F2D _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2F30 _ 39. 45, E0
        jl      ?_140                                   ; 2F33 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2F39 _ 83. 45, DC, 01
?_145:  mov     eax, dword [ebp-24H]                    ; 2F3D _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2F40 _ 3B. 45, 20
        jle     ?_139                                   ; 2F43 _ 0F 8E, FFFFFEDC
        nop                                             ; 2F49 _ 90
        leave                                           ; 2F4A _ C9
        ret                                             ; 2F4B _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2F4C _ 55
        mov     ebp, esp                                ; 2F4D _ 89. E5
        sub     esp, 64                                 ; 2F4F _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2F52 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2F55 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2F58 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2F5B _ 83. 7D, 0C, 00
        jns     ?_146                                   ; 2F5F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2F61 _ C7. 45, 0C, 00000000
?_146:  mov     eax, dword [ebp+8H]                     ; 2F68 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F6B _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2F6E _ 39. 45, 0C
        jle     ?_147                                   ; 2F71 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2F73 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F76 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2F79 _ 89. 45, 0C
?_147:  cmp     dword [ebp+10H], 0                      ; 2F7C _ 83. 7D, 10, 00
        jns     ?_148                                   ; 2F80 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2F82 _ C7. 45, 10, 00000000
?_148:  mov     eax, dword [ebp+8H]                     ; 2F89 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F8C _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2F8F _ 39. 45, 10
        jle     ?_149                                   ; 2F92 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2F94 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F97 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2F9A _ 89. 45, 10
?_149:  mov     eax, dword [ebp+1CH]                    ; 2F9D _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2FA0 _ 89. 45, E0
        jmp     ?_160                                   ; 2FA3 _ E9, 00000140

?_150:  mov     eax, dword [ebp+8H]                     ; 2FA8 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2FAB _ 8B. 55, E0
        add     edx, 4                                  ; 2FAE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2FB1 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2FB5 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2FB8 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2FBB _ 8B. 55, 08
        add     edx, 1044                               ; 2FBE _ 81. C2, 00000414
        sub     eax, edx                                ; 2FC4 _ 29. D0
        sar     eax, 5                                  ; 2FC6 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2FC9 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2FCC _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2FCF _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2FD1 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2FD4 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2FD7 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2FDA _ 8B. 55, 0C
        sub     edx, eax                                ; 2FDD _ 29. C2
        mov     eax, edx                                ; 2FDF _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2FE1 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2FE4 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2FE7 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2FEA _ 8B. 55, 10
        sub     edx, eax                                ; 2FED _ 29. C2
        mov     eax, edx                                ; 2FEF _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2FF1 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2FF4 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2FF7 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2FFA _ 8B. 55, 14
        sub     edx, eax                                ; 2FFD _ 29. C2
        mov     eax, edx                                ; 2FFF _ 89. D0
        mov     dword [ebp-28H], eax                    ; 3001 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 3004 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3007 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 300A _ 8B. 55, 18
        sub     edx, eax                                ; 300D _ 29. C2
        mov     eax, edx                                ; 300F _ 89. D0
        mov     dword [ebp-24H], eax                    ; 3011 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 3014 _ 83. 7D, D0, 00
        jns     ?_151                                   ; 3018 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 301A _ C7. 45, D0, 00000000
?_151:  cmp     dword [ebp-2CH], 0                      ; 3021 _ 83. 7D, D4, 00
        jns     ?_152                                   ; 3025 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 3027 _ C7. 45, D4, 00000000
?_152:  mov     eax, dword [ebp-10H]                    ; 302E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3031 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 3034 _ 39. 45, D8
        jle     ?_153                                   ; 3037 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3039 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 303C _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 303F _ 89. 45, D8
?_153:  mov     eax, dword [ebp-10H]                    ; 3042 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3045 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 3048 _ 39. 45, DC
        jle     ?_154                                   ; 304B _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 304D _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3050 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 3053 _ 89. 45, DC
?_154:  mov     eax, dword [ebp-2CH]                    ; 3056 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 3059 _ 89. 45, E4
        jmp     ?_159                                   ; 305C _ EB, 7A

?_155:  mov     eax, dword [ebp-10H]                    ; 305E _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 3061 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 3064 _ 8B. 45, E4
        add     eax, edx                                ; 3067 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 3069 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 306C _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 306F _ 89. 45, E8
        jmp     ?_158                                   ; 3072 _ EB, 58

?_156:  mov     eax, dword [ebp-10H]                    ; 3074 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3077 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 307A _ 8B. 45, E8
        add     eax, edx                                ; 307D _ 01. D0
        mov     dword [ebp-4H], eax                     ; 307F _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 3082 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3085 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 3088 _ 0F AF. 45, E4
        mov     edx, eax                                ; 308C _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 308E _ 8B. 45, E8
        add     eax, edx                                ; 3091 _ 01. D0
        mov     edx, eax                                ; 3093 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3095 _ 8B. 45, F4
        add     eax, edx                                ; 3098 _ 01. D0
        movzx   eax, byte [eax]                         ; 309A _ 0F B6. 00
        movzx   edx, al                                 ; 309D _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 30A0 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 30A3 _ 8B. 40, 14
        cmp     edx, eax                                ; 30A6 _ 39. C2
        jz      ?_157                                   ; 30A8 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 30AA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 30AD _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 30B0 _ 0F AF. 45, F8
        mov     edx, eax                                ; 30B4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 30B6 _ 8B. 45, FC
        add     eax, edx                                ; 30B9 _ 01. D0
        mov     edx, eax                                ; 30BB _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 30BD _ 8B. 45, EC
        add     edx, eax                                ; 30C0 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 30C2 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 30C6 _ 88. 02
?_157:  add     dword [ebp-18H], 1                      ; 30C8 _ 83. 45, E8, 01
?_158:  mov     eax, dword [ebp-18H]                    ; 30CC _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 30CF _ 3B. 45, D8
        jl      ?_156                                   ; 30D2 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 30D4 _ 83. 45, E4, 01
?_159:  mov     eax, dword [ebp-1CH]                    ; 30D8 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 30DB _ 3B. 45, DC
        jl      ?_155                                   ; 30DE _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 30E4 _ 83. 45, E0, 01
?_160:  mov     eax, dword [ebp+8H]                     ; 30E8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30EB _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 30EE _ 39. 45, E0
        jle     ?_150                                   ; 30F1 _ 0F 8E, FFFFFEB1
        nop                                             ; 30F7 _ 90
        leave                                           ; 30F8 _ C9
        ret                                             ; 30F9 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 30FA _ 55
        mov     ebp, esp                                ; 30FB _ 89. E5
        sub     esp, 24                                 ; 30FD _ 83. EC, 18
        sub     esp, 8                                  ; 3100 _ 83. EC, 08
        push    52                                      ; 3103 _ 6A, 34
        push    67                                      ; 3105 _ 6A, 43
        call    io_out8                                 ; 3107 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 310C _ 83. C4, 10
        sub     esp, 8                                  ; 310F _ 83. EC, 08
        push    156                                     ; 3112 _ 68, 0000009C
        push    64                                      ; 3117 _ 6A, 40
        call    io_out8                                 ; 3119 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 311E _ 83. C4, 10
        sub     esp, 8                                  ; 3121 _ 83. EC, 08
        push    46                                      ; 3124 _ 6A, 2E
        push    64                                      ; 3126 _ 6A, 40
        call    io_out8                                 ; 3128 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 312D _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3130 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 313A _ C7. 45, F4, 00000000
        jmp     ?_162                                   ; 3141 _ EB, 26

?_161:  mov     eax, dword [ebp-0CH]                    ; 3143 _ 8B. 45, F4
        shl     eax, 4                                  ; 3146 _ C1. E0, 04
        add     eax, ?_230                              ; 3149 _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 314E _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3154 _ 8B. 45, F4
        shl     eax, 4                                  ; 3157 _ C1. E0, 04
        add     eax, ?_231                              ; 315A _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 315F _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3165 _ 83. 45, F4, 01
?_162:  cmp     dword [ebp-0CH], 499                    ; 3169 _ 81. 7D, F4, 000001F3
        jle     ?_161                                   ; 3170 _ 7E, D1
        nop                                             ; 3172 _ 90
        leave                                           ; 3173 _ C9
        ret                                             ; 3174 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3175 _ 55
        mov     ebp, esp                                ; 3176 _ 89. E5
        sub     esp, 16                                 ; 3178 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 317B _ C7. 45, FC, 00000000
        jmp     ?_165                                   ; 3182 _ EB, 36

?_163:  mov     eax, dword [ebp-4H]                     ; 3184 _ 8B. 45, FC
        shl     eax, 4                                  ; 3187 _ C1. E0, 04
        add     eax, ?_230                              ; 318A _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 318F _ 8B. 00
        test    eax, eax                                ; 3191 _ 85. C0
        jnz     ?_164                                   ; 3193 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3195 _ 8B. 45, FC
        shl     eax, 4                                  ; 3198 _ C1. E0, 04
        add     eax, ?_230                              ; 319B _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 31A0 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 31A6 _ 8B. 45, FC
        shl     eax, 4                                  ; 31A9 _ C1. E0, 04
        add     eax, timerctl                           ; 31AC _ 05, 00000280(d)
        add     eax, 4                                  ; 31B1 _ 83. C0, 04
        jmp     ?_166                                   ; 31B4 _ EB, 12

?_164:  add     dword [ebp-4H], 1                       ; 31B6 _ 83. 45, FC, 01
?_165:  cmp     dword [ebp-4H], 499                     ; 31BA _ 81. 7D, FC, 000001F3
        jle     ?_163                                   ; 31C1 _ 7E, C1
        mov     eax, 0                                  ; 31C3 _ B8, 00000000
?_166:  leave                                           ; 31C8 _ C9
        ret                                             ; 31C9 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 31CA _ 55
        mov     ebp, esp                                ; 31CB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31CD _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 31D0 _ C7. 40, 04, 00000000
        nop                                             ; 31D7 _ 90
        pop     ebp                                     ; 31D8 _ 5D
        ret                                             ; 31D9 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 31DA _ 55
        mov     ebp, esp                                ; 31DB _ 89. E5
        sub     esp, 4                                  ; 31DD _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 31E0 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 31E3 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 31E6 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 31E9 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 31EC _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31EF _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 31F2 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 31F6 _ 88. 50, 0C
        nop                                             ; 31F9 _ 90
        leave                                           ; 31FA _ C9
        ret                                             ; 31FB _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 31FC _ 55
        mov     ebp, esp                                ; 31FD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31FF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3202 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3205 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3207 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 320A _ C7. 40, 04, 00000002
        nop                                             ; 3211 _ 90
        pop     ebp                                     ; 3212 _ 5D
        ret                                             ; 3213 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3214 _ 55
        mov     ebp, esp                                ; 3215 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3217 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 321A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 321D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 321F _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3222 _ C7. 40, 04, 00000002
        nop                                             ; 3229 _ 90
        pop     ebp                                     ; 322A _ 5D
        ret                                             ; 322B _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 322C _ 55
        mov     ebp, esp                                ; 322D _ 89. E5
        mov     eax, timerctl                           ; 322F _ B8, 00000280(d)
        pop     ebp                                     ; 3234 _ 5D
        ret                                             ; 3235 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3236 _ 55
        mov     ebp, esp                                ; 3237 _ 89. E5
        push    ebx                                     ; 3239 _ 53
        sub     esp, 20                                 ; 323A _ 83. EC, 14
        sub     esp, 8                                  ; 323D _ 83. EC, 08
        push    32                                      ; 3240 _ 6A, 20
        push    32                                      ; 3242 _ 6A, 20
        call    io_out8                                 ; 3244 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3249 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 324C _ A1, 00000280(d)
        add     eax, 1                                  ; 3251 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3254 _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 3259 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3260 _ C7. 45, F4, 00000000
        jmp     ?_170                                   ; 3267 _ E9, 000000AD

?_167:  mov     eax, dword [ebp-0CH]                    ; 326C _ 8B. 45, F4
        shl     eax, 4                                  ; 326F _ C1. E0, 04
        add     eax, ?_230                              ; 3272 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 3277 _ 8B. 00
        cmp     eax, 2                                  ; 3279 _ 83. F8, 02
        jne     ?_168                                   ; 327C _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 3282 _ 8B. 45, F4
        shl     eax, 4                                  ; 3285 _ C1. E0, 04
        add     eax, ?_229                              ; 3288 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 328D _ 8B. 00
        lea     edx, [eax-1H]                           ; 328F _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3292 _ 8B. 45, F4
        shl     eax, 4                                  ; 3295 _ C1. E0, 04
        add     eax, ?_229                              ; 3298 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 329D _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 329F _ 8B. 45, F4
        shl     eax, 4                                  ; 32A2 _ C1. E0, 04
        add     eax, ?_229                              ; 32A5 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 32AA _ 8B. 00
        test    eax, eax                                ; 32AC _ 85. C0
        jnz     ?_168                                   ; 32AE _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 32B0 _ 8B. 45, F4
        shl     eax, 4                                  ; 32B3 _ C1. E0, 04
        add     eax, ?_230                              ; 32B6 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 32BB _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 32C1 _ 8B. 45, F4
        shl     eax, 4                                  ; 32C4 _ C1. E0, 04
        add     eax, ?_232                              ; 32C7 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 32CC _ 0F B6. 00
        movzx   edx, al                                 ; 32CF _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 32D2 _ 8B. 45, F4
        shl     eax, 4                                  ; 32D5 _ C1. E0, 04
        add     eax, ?_231                              ; 32D8 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 32DD _ 8B. 00
        sub     esp, 8                                  ; 32DF _ 83. EC, 08
        push    edx                                     ; 32E2 _ 52
        push    eax                                     ; 32E3 _ 50
        call    fifo8_put                               ; 32E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 32E9 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 32EC _ 8B. 45, F4
        shl     eax, 4                                  ; 32EF _ C1. E0, 04
        add     eax, timerctl                           ; 32F2 _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 32F7 _ 8D. 58, 04
        call    getTaskTimer                            ; 32FA _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 32FF _ 39. C3
        jnz     ?_168                                   ; 3301 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3303 _ C7. 45, F0, 00000001
?_168:  cmp     dword [ebp-10H], 1                      ; 330A _ 83. 7D, F0, 01
        jnz     ?_169                                   ; 330E _ 75, 05
        call    task_switch                             ; 3310 _ E8, FFFFFFFC(rel)
?_169:  add     dword [ebp-0CH], 1                      ; 3315 _ 83. 45, F4, 01
?_170:  cmp     dword [ebp-0CH], 499                    ; 3319 _ 81. 7D, F4, 000001F3
        jle     ?_167                                   ; 3320 _ 0F 8E, FFFFFF46
        nop                                             ; 3326 _ 90
        mov     ebx, dword [ebp-4H]                     ; 3327 _ 8B. 5D, FC
        leave                                           ; 332A _ C9
        ret                                             ; 332B _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 332C _ 55
        mov     ebp, esp                                ; 332D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 332F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3332 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3335 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3338 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 333B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 333E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3340 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3343 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3346 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3349 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 334C _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3353 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3356 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 335D _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3360 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3367 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 336A _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 336D _ 89. 50, 18
        nop                                             ; 3370 _ 90
        pop     ebp                                     ; 3371 _ 5D
        ret                                             ; 3372 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3373 _ 55
        mov     ebp, esp                                ; 3374 _ 89. E5
        sub     esp, 24                                 ; 3376 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3379 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 337C _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 337F _ 83. 7D, 08, 00
        jnz     ?_171                                   ; 3383 _ 75, 0A
        mov     eax, 4294967295                         ; 3385 _ B8, FFFFFFFF
        jmp     ?_175                                   ; 338A _ E9, 000000A0

?_171:  mov     eax, dword [ebp+8H]                     ; 338F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3392 _ 8B. 40, 10
        test    eax, eax                                ; 3395 _ 85. C0
        jnz     ?_172                                   ; 3397 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3399 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 339C _ 8B. 40, 14
        or      eax, 01H                                ; 339F _ 83. C8, 01
        mov     edx, eax                                ; 33A2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 33A4 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 33A7 _ 89. 50, 14
        mov     eax, 4294967295                         ; 33AA _ B8, FFFFFFFF
        jmp     ?_175                                   ; 33AF _ EB, 7E

?_172:  mov     eax, dword [ebp+8H]                     ; 33B1 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 33B4 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 33B6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33B9 _ 8B. 40, 08
        add     edx, eax                                ; 33BC _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 33BE _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 33C2 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 33C4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33C7 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 33CA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 33CD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 33D0 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 33D3 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 33D6 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 33D9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 33DC _ 8B. 40, 0C
        cmp     edx, eax                                ; 33DF _ 39. C2
        jl      ?_173                                   ; 33E1 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 33E3 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 33E6 _ C7. 40, 08, 00000000
?_173:  mov     eax, dword [ebp+8H]                     ; 33ED _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 33F0 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 33F3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 33F6 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 33F9 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 33FC _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 33FF _ 8B. 40, 18
        test    eax, eax                                ; 3402 _ 85. C0
        jz      ?_174                                   ; 3404 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3406 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3409 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 340C _ 8B. 40, 04
        cmp     eax, 2                                  ; 340F _ 83. F8, 02
        jz      ?_174                                   ; 3412 _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3414 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3417 _ 8B. 40, 18
        sub     esp, 4                                  ; 341A _ 83. EC, 04
        push    0                                       ; 341D _ 6A, 00
        push    0                                       ; 341F _ 6A, 00
        push    eax                                     ; 3421 _ 50
        call    task_run                                ; 3422 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3427 _ 83. C4, 10
?_174:  mov     eax, 1                                  ; 342A _ B8, 00000001
?_175:  leave                                           ; 342F _ C9
        ret                                             ; 3430 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3431 _ 55
        mov     ebp, esp                                ; 3432 _ 89. E5
        sub     esp, 16                                 ; 3434 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3437 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 343A _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 343D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3440 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3443 _ 39. C2
        jnz     ?_176                                   ; 3445 _ 75, 07
        mov     eax, 4294967295                         ; 3447 _ B8, FFFFFFFF
        jmp     ?_178                                   ; 344C _ EB, 51

?_176:  mov     eax, dword [ebp+8H]                     ; 344E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3451 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3453 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3456 _ 8B. 40, 04
        add     eax, edx                                ; 3459 _ 01. D0
        movzx   eax, byte [eax]                         ; 345B _ 0F B6. 00
        movzx   eax, al                                 ; 345E _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3461 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3464 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3467 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 346A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 346D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3470 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3473 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3476 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3479 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 347C _ 8B. 40, 0C
        cmp     edx, eax                                ; 347F _ 39. C2
        jl      ?_177                                   ; 3481 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3483 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3486 _ C7. 40, 04, 00000000
?_177:  mov     eax, dword [ebp+8H]                     ; 348D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3490 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3493 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3496 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3499 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 349C _ 8B. 45, FC
?_178:  leave                                           ; 349F _ C9
        ret                                             ; 34A0 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 34A1 _ 55
        mov     ebp, esp                                ; 34A2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 34A4 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 34A7 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 34AA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34AD _ 8B. 40, 10
        sub     edx, eax                                ; 34B0 _ 29. C2
        mov     eax, edx                                ; 34B2 _ 89. D0
        pop     ebp                                     ; 34B4 _ 5D
        ret                                             ; 34B5 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 34B6 _ 55
        mov     ebp, esp                                ; 34B7 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 34B9 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_179                                   ; 34C0 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 34C2 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 34C9 _ 8B. 45, 0C
        shr     eax, 12                                 ; 34CC _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 34CF _ 89. 45, 0C
?_179:  mov     eax, dword [ebp+0CH]                    ; 34D2 _ 8B. 45, 0C
        mov     edx, eax                                ; 34D5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34D7 _ 8B. 45, 08
        mov     word [eax], dx                          ; 34DA _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 34DD _ 8B. 45, 10
        mov     edx, eax                                ; 34E0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34E2 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 34E5 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 34E9 _ 8B. 45, 10
        sar     eax, 16                                 ; 34EC _ C1. F8, 10
        mov     edx, eax                                ; 34EF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34F1 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 34F4 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 34F7 _ 8B. 45, 14
        mov     edx, eax                                ; 34FA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34FC _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 34FF _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3502 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3505 _ C1. E8, 10
        and     eax, 0FH                                ; 3508 _ 83. E0, 0F
        mov     edx, eax                                ; 350B _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 350D _ 8B. 45, 14
        sar     eax, 8                                  ; 3510 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3513 _ 83. E0, F0
        or      eax, edx                                ; 3516 _ 09. D0
        mov     edx, eax                                ; 3518 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 351A _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 351D _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3520 _ 8B. 45, 10
        shr     eax, 24                                 ; 3523 _ C1. E8, 18
        mov     edx, eax                                ; 3526 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3528 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 352B _ 88. 50, 07
        nop                                             ; 352E _ 90
        pop     ebp                                     ; 352F _ 5D
        ret                                             ; 3530 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3531 _ 55
        mov     ebp, esp                                ; 3532 _ 89. E5
        mov     eax, dword [task_timer]                 ; 3534 _ A1, 000021C4(d)
        pop     ebp                                     ; 3539 _ 5D
        ret                                             ; 353A _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 353B _ 55
        mov     ebp, esp                                ; 353C _ 89. E5
        sub     esp, 16                                 ; 353E _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3541 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 3547 _ 8B. 55, 08
        mov     eax, edx                                ; 354A _ 89. D0
        shl     eax, 2                                  ; 354C _ C1. E0, 02
        add     eax, edx                                ; 354F _ 01. D0
        shl     eax, 2                                  ; 3551 _ C1. E0, 02
        add     eax, ecx                                ; 3554 _ 01. C8
        add     eax, 8                                  ; 3556 _ 83. C0, 08
        mov     dword [eax], 0                          ; 3559 _ C7. 00, 00000000
        mov     ecx, dword [taskctl]                    ; 355F _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 3565 _ 8B. 55, 08
        mov     eax, edx                                ; 3568 _ 89. D0
        shl     eax, 2                                  ; 356A _ C1. E0, 02
        add     eax, edx                                ; 356D _ 01. D0
        shl     eax, 2                                  ; 356F _ C1. E0, 02
        add     eax, ecx                                ; 3572 _ 01. C8
        add     eax, 12                                 ; 3574 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3577 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 357D _ C7. 45, FC, 00000000
        jmp     ?_181                                   ; 3584 _ EB, 21

?_180:  mov     ecx, dword [taskctl]                    ; 3586 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 358C _ 8B. 55, FC
        mov     eax, edx                                ; 358F _ 89. D0
        add     eax, eax                                ; 3591 _ 01. C0
        add     eax, edx                                ; 3593 _ 01. D0
        shl     eax, 3                                  ; 3595 _ C1. E0, 03
        add     eax, ecx                                ; 3598 _ 01. C8
        add     eax, 16                                 ; 359A _ 83. C0, 10
        mov     dword [eax], 0                          ; 359D _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 35A3 _ 83. 45, FC, 01
?_181:  cmp     dword [ebp-4H], 2                       ; 35A7 _ 83. 7D, FC, 02
        jle     ?_180                                   ; 35AB _ 7E, D9
        nop                                             ; 35AD _ 90
        leave                                           ; 35AE _ C9
        ret                                             ; 35AF _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 35B0 _ 55
        mov     ebp, esp                                ; 35B1 _ 89. E5
        sub     esp, 24                                 ; 35B3 _ 83. EC, 18
        call    get_addr_gdt                            ; 35B6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 35BB _ 89. 45, F0
        sub     esp, 8                                  ; 35BE _ 83. EC, 08
        push    668                                     ; 35C1 _ 68, 0000029C
        push    dword [ebp+8H]                          ; 35C6 _ FF. 75, 08
        call    memman_alloc_4K                         ; 35C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 35CE _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 35D1 _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 35D6 _ C7. 45, EC, 00000000
        jmp     ?_183                                   ; 35DD _ EB, 73

?_182:  mov     edx, dword [taskctl]                    ; 35DF _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 35E5 _ 8B. 45, EC
        imul    eax, eax, 120                           ; 35E8 _ 6B. C0, 78
        add     eax, edx                                ; 35EB _ 01. D0
        add     eax, 72                                 ; 35ED _ 83. C0, 48
        mov     dword [eax], 0                          ; 35F0 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 35F6 _ 8B. 45, EC
        add     eax, 7                                  ; 35F9 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 35FC _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 3602 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3609 _ 8B. 45, EC
        imul    eax, eax, 120                           ; 360C _ 6B. C0, 78
        add     eax, ecx                                ; 360F _ 01. C8
        add     eax, 68                                 ; 3611 _ 83. C0, 44
        mov     dword [eax], edx                        ; 3614 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3616 _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 361B _ 8B. 55, EC
        imul    edx, edx, 120                           ; 361E _ 6B. D2, 78
        add     edx, 80                                 ; 3621 _ 83. C2, 50
        add     eax, edx                                ; 3624 _ 01. D0
        add     eax, 4                                  ; 3626 _ 83. C0, 04
        mov     ecx, eax                                ; 3629 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 362B _ 8B. 45, EC
        add     eax, 7                                  ; 362E _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3631 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3638 _ 8B. 45, F0
        add     eax, edx                                ; 363B _ 01. D0
        push    137                                     ; 363D _ 68, 00000089
        push    ecx                                     ; 3642 _ 51
        push    103                                     ; 3643 _ 6A, 67
        push    eax                                     ; 3645 _ 50
        call    set_segmdesc                            ; 3646 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 364B _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 364E _ 83. 45, EC, 01
?_183:  cmp     dword [ebp-14H], 4                      ; 3652 _ 83. 7D, EC, 04
        jle     ?_182                                   ; 3656 _ 7E, 87
        call    task_alloc                              ; 3658 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 365D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3660 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3663 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 366A _ 8B. 45, F4
        mov     dword [eax+8H], 100                     ; 366D _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-0CH]                    ; 3674 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3677 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 367E _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3681 _ FF. 75, F4
        call    task_add                                ; 3684 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3689 _ 83. C4, 10
        call    task_switchsub                          ; 368C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3691 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3694 _ 8B. 00
        sub     esp, 12                                 ; 3696 _ 83. EC, 0C
        push    eax                                     ; 3699 _ 50
        call    load_tr                                 ; 369A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 369F _ 83. C4, 10
        call    timer_alloc                             ; 36A2 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 36A7 _ A3, 000021C4(d)
        mov     eax, dword [ebp-0CH]                    ; 36AC _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 36AF _ 8B. 40, 08
        mov     edx, eax                                ; 36B2 _ 89. C2
        mov     eax, dword [task_timer]                 ; 36B4 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 36B9 _ 83. EC, 08
        push    edx                                     ; 36BC _ 52
        push    eax                                     ; 36BD _ 50
        call    timer_setTime                           ; 36BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36C3 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 36C6 _ 8B. 45, F4
        leave                                           ; 36C9 _ C9
        ret                                             ; 36CA _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 36CB _ 55
        mov     ebp, esp                                ; 36CC _ 89. E5
        sub     esp, 16                                 ; 36CE _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 36D1 _ C7. 45, F8, 00000000
        jmp     ?_186                                   ; 36D8 _ E9, 000000E1

?_184:  mov     edx, dword [taskctl]                    ; 36DD _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 36E3 _ 8B. 45, F8
        imul    eax, eax, 120                           ; 36E6 _ 6B. C0, 78
        add     eax, edx                                ; 36E9 _ 01. D0
        add     eax, 72                                 ; 36EB _ 83. C0, 48
        mov     eax, dword [eax]                        ; 36EE _ 8B. 00
        test    eax, eax                                ; 36F0 _ 85. C0
        jne     ?_185                                   ; 36F2 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 36F8 _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 36FD _ 8B. 55, F8
        imul    edx, edx, 120                           ; 3700 _ 6B. D2, 78
        add     edx, 64                                 ; 3703 _ 83. C2, 40
        add     eax, edx                                ; 3706 _ 01. D0
        add     eax, 4                                  ; 3708 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 370B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 370E _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3711 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3718 _ 8B. 45, FC
        mov     dword [eax+34H], 514                    ; 371B _ C7. 40, 34, 00000202
        mov     eax, dword [ebp-4H]                     ; 3722 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 3725 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 372C _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 372F _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3736 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3739 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3740 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3743 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 374A _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 374D _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3754 _ 8B. 45, F8
        add     eax, 1                                  ; 3757 _ 83. C0, 01
        shl     eax, 9                                  ; 375A _ C1. E0, 09
        mov     edx, eax                                ; 375D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 375F _ 8B. 45, FC
        mov     dword [eax+48H], edx                    ; 3762 _ 89. 50, 48
        mov     eax, dword [ebp-4H]                     ; 3765 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3768 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 376F _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3772 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3779 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 377C _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3783 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 3786 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 378D _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3790 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3797 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 379A _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 37A1 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 37A4 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 37AB _ 8B. 45, FC
        mov     dword [eax+74H], 1073741824             ; 37AE _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-4H]                     ; 37B5 _ 8B. 45, FC
        jmp     ?_187                                   ; 37B8 _ EB, 13

?_185:  add     dword [ebp-8H], 1                       ; 37BA _ 83. 45, F8, 01
?_186:  cmp     dword [ebp-8H], 4                       ; 37BE _ 83. 7D, F8, 04
        jle     ?_184                                   ; 37C2 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 37C8 _ B8, 00000000
?_187:  leave                                           ; 37CD _ C9
        ret                                             ; 37CE _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 37CF _ 55
        mov     ebp, esp                                ; 37D0 _ 89. E5
        sub     esp, 8                                  ; 37D2 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 37D5 _ 83. 7D, 0C, 00
        jns     ?_188                                   ; 37D9 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 37DB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37DE _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 37E1 _ 89. 45, 0C
?_188:  cmp     dword [ebp+10H], 0                      ; 37E4 _ 83. 7D, 10, 00
        jle     ?_189                                   ; 37E8 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 37EA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 37ED _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 37F0 _ 89. 50, 08
?_189:  mov     eax, dword [ebp+8H]                     ; 37F3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 37F6 _ 8B. 40, 04
        cmp     eax, 2                                  ; 37F9 _ 83. F8, 02
        jnz     ?_190                                   ; 37FC _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 37FE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3801 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3804 _ 39. 45, 0C
        jz      ?_190                                   ; 3807 _ 74, 0E
        sub     esp, 12                                 ; 3809 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 380C _ FF. 75, 08
        call    task_remove                             ; 380F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3814 _ 83. C4, 10
?_190:  mov     eax, dword [ebp+8H]                     ; 3817 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 381A _ 8B. 40, 04
        cmp     eax, 2                                  ; 381D _ 83. F8, 02
        jz      ?_191                                   ; 3820 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3822 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3825 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3828 _ 89. 50, 0C
        sub     esp, 12                                 ; 382B _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 382E _ FF. 75, 08
        call    task_add                                ; 3831 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3836 _ 83. C4, 10
?_191:  mov     eax, dword [taskctl]                    ; 3839 _ A1, 000021C8(d)
        mov     dword [eax+4H], 1                       ; 383E _ C7. 40, 04, 00000001
        nop                                             ; 3845 _ 90
        leave                                           ; 3846 _ C9
        ret                                             ; 3847 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3848 _ 55
        mov     ebp, esp                                ; 3849 _ 89. E5
        sub     esp, 24                                 ; 384B _ 83. EC, 18
        mov     ecx, dword [taskctl]                    ; 384E _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3854 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 3859 _ 8B. 10
        mov     eax, edx                                ; 385B _ 89. D0
        shl     eax, 2                                  ; 385D _ C1. E0, 02
        add     eax, edx                                ; 3860 _ 01. D0
        shl     eax, 2                                  ; 3862 _ C1. E0, 02
        add     eax, ecx                                ; 3865 _ 01. C8
        add     eax, 8                                  ; 3867 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 386A _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 386D _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3870 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3873 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3876 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 387A _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 387D _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3880 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3883 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3886 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3889 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 388C _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 388F _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3892 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3895 _ 8B. 00
        cmp     edx, eax                                ; 3897 _ 39. C2
        jnz     ?_192                                   ; 3899 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 389B _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 389E _ C7. 40, 04, 00000000
?_192:  mov     eax, dword [taskctl]                    ; 38A5 _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 38AA _ 8B. 40, 04
        test    eax, eax                                ; 38AD _ 85. C0
        jz      ?_193                                   ; 38AF _ 74, 24
        call    task_switchsub                          ; 38B1 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [taskctl]                    ; 38B6 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 38BC _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 38C1 _ 8B. 10
        mov     eax, edx                                ; 38C3 _ 89. D0
        shl     eax, 2                                  ; 38C5 _ C1. E0, 02
        add     eax, edx                                ; 38C8 _ 01. D0
        shl     eax, 2                                  ; 38CA _ C1. E0, 02
        add     eax, ecx                                ; 38CD _ 01. C8
        add     eax, 8                                  ; 38CF _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 38D2 _ 89. 45, EC
?_193:  mov     eax, dword [ebp-14H]                    ; 38D5 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 38D8 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 38DB _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 38DE _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 38E2 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 38E5 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 38E8 _ 8B. 40, 08
        mov     edx, eax                                ; 38EB _ 89. C2
        mov     eax, dword [task_timer]                 ; 38ED _ A1, 000021C4(d)
        sub     esp, 8                                  ; 38F2 _ 83. EC, 08
        push    edx                                     ; 38F5 _ 52
        push    eax                                     ; 38F6 _ 50
        call    timer_setTime                           ; 38F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38FC _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 38FF _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3902 _ 3B. 45, F0
        jz      ?_194                                   ; 3905 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3907 _ 83. 7D, F4, 00
        jz      ?_194                                   ; 390B _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 390D _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3910 _ 8B. 00
        sub     esp, 8                                  ; 3912 _ 83. EC, 08
        push    eax                                     ; 3915 _ 50
        push    0                                       ; 3916 _ 6A, 00
        call    farjmp                                  ; 3918 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 391D _ 83. C4, 10
        nop                                             ; 3920 _ 90
?_194:  nop                                             ; 3921 _ 90
        leave                                           ; 3922 _ C9
        ret                                             ; 3923 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3924 _ 55
        mov     ebp, esp                                ; 3925 _ 89. E5
        sub     esp, 24                                 ; 3927 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 392A _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3931 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3935 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3938 _ 8B. 40, 04
        cmp     eax, 2                                  ; 393B _ 83. F8, 02
        jnz     ?_195                                   ; 393E _ 75, 4C
        call    task_now                                ; 3940 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3945 _ 89. 45, F4
        sub     esp, 12                                 ; 3948 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 394B _ FF. 75, 08
        call    task_remove                             ; 394E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3953 _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3956 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 395A _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 395D _ 3B. 45, F4
        jnz     ?_195                                   ; 3960 _ 75, 2A
        call    task_switchsub                          ; 3962 _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3967 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 396C _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 396F _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3973 _ 83. 7D, F4, 00
        jz      ?_195                                   ; 3977 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3979 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 397C _ 8B. 00
        sub     esp, 8                                  ; 397E _ 83. EC, 08
        push    eax                                     ; 3981 _ 50
        push    0                                       ; 3982 _ 6A, 00
        call    farjmp                                  ; 3984 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3989 _ 83. C4, 10
?_195:  movsx   eax, byte [ebp-0DH]                     ; 398C _ 0F BE. 45, F3
        leave                                           ; 3990 _ C9
        ret                                             ; 3991 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3992 _ 55
        mov     ebp, esp                                ; 3993 _ 89. E5
        sub     esp, 16                                 ; 3995 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3998 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 399E _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 39A3 _ 8B. 10
        mov     eax, edx                                ; 39A5 _ 89. D0
        shl     eax, 2                                  ; 39A7 _ C1. E0, 02
        add     eax, edx                                ; 39AA _ 01. D0
        shl     eax, 2                                  ; 39AC _ C1. E0, 02
        add     eax, ecx                                ; 39AF _ 01. C8
        add     eax, 8                                  ; 39B1 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 39B4 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 39B7 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 39BA _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 39BD _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 39C0 _ 8B. 44 90, 08
        leave                                           ; 39C4 _ C9
        ret                                             ; 39C5 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 39C6 _ 55
        mov     ebp, esp                                ; 39C7 _ 89. E5
        sub     esp, 16                                 ; 39C9 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 39CC _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 39D2 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 39D5 _ 8B. 50, 0C
        mov     eax, edx                                ; 39D8 _ 89. D0
        shl     eax, 2                                  ; 39DA _ C1. E0, 02
        add     eax, edx                                ; 39DD _ 01. D0
        shl     eax, 2                                  ; 39DF _ C1. E0, 02
        add     eax, ecx                                ; 39E2 _ 01. C8
        add     eax, 8                                  ; 39E4 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 39E7 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 39EA _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 39ED _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 39EF _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 39F2 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 39F5 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 39F9 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 39FC _ 8B. 00
        lea     edx, [eax+1H]                           ; 39FE _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3A01 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3A04 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3A06 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3A09 _ C7. 40, 04, 00000002
        nop                                             ; 3A10 _ 90
        leave                                           ; 3A11 _ C9
        ret                                             ; 3A12 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3A13 _ 55
        mov     ebp, esp                                ; 3A14 _ 89. E5
        sub     esp, 16                                 ; 3A16 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3A19 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3A1F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3A22 _ 8B. 50, 0C
        mov     eax, edx                                ; 3A25 _ 89. D0
        shl     eax, 2                                  ; 3A27 _ C1. E0, 02
        add     eax, edx                                ; 3A2A _ 01. D0
        shl     eax, 2                                  ; 3A2C _ C1. E0, 02
        add     eax, ecx                                ; 3A2F _ 01. C8
        add     eax, 8                                  ; 3A31 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3A34 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3A37 _ C7. 45, F8, 00000000
        jmp     ?_198                                   ; 3A3E _ EB, 23

?_196:  mov     eax, dword [ebp-4H]                     ; 3A40 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3A43 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3A46 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3A4A _ 39. 45, 08
        jnz     ?_197                                   ; 3A4D _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3A4F _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3A52 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3A55 _ C7. 44 90, 08, 00000000
        jmp     ?_199                                   ; 3A5D _ EB, 0E

?_197:  add     dword [ebp-8H], 1                       ; 3A5F _ 83. 45, F8, 01
?_198:  mov     eax, dword [ebp-4H]                     ; 3A63 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3A66 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3A68 _ 39. 45, F8
        jl      ?_196                                   ; 3A6B _ 7C, D3
?_199:  mov     eax, dword [ebp-4H]                     ; 3A6D _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3A70 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3A72 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3A75 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3A78 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3A7A _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3A7D _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3A80 _ 39. 45, F8
        jge     ?_200                                   ; 3A83 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3A85 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3A88 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3A8B _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3A8E _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3A91 _ 89. 50, 04
?_200:  mov     eax, dword [ebp-4H]                     ; 3A94 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3A97 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3A9A _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3A9D _ 8B. 00
        cmp     edx, eax                                ; 3A9F _ 39. C2
        jl      ?_201                                   ; 3AA1 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3AA3 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3AA6 _ C7. 40, 04, 00000000
?_201:  mov     eax, dword [ebp+8H]                     ; 3AAD _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3AB0 _ C7. 40, 04, 00000001
        jmp     ?_203                                   ; 3AB7 _ EB, 1B

?_202:  mov     eax, dword [ebp-8H]                     ; 3AB9 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3ABC _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3ABF _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3AC2 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3AC6 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3AC9 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3ACC _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3AD0 _ 83. 45, F8, 01
?_203:  mov     eax, dword [ebp-4H]                     ; 3AD4 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3AD7 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3AD9 _ 39. 45, F8
        jl      ?_202                                   ; 3ADC _ 7C, DB
        nop                                             ; 3ADE _ 90
        leave                                           ; 3ADF _ C9
        ret                                             ; 3AE0 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3AE1 _ 55
        mov     ebp, esp                                ; 3AE2 _ 89. E5
        sub     esp, 16                                 ; 3AE4 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3AE7 _ C7. 45, FC, 00000000
        jmp     ?_205                                   ; 3AEE _ EB, 22

?_204:  mov     ecx, dword [taskctl]                    ; 3AF0 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3AF6 _ 8B. 55, FC
        mov     eax, edx                                ; 3AF9 _ 89. D0
        shl     eax, 2                                  ; 3AFB _ C1. E0, 02
        add     eax, edx                                ; 3AFE _ 01. D0
        shl     eax, 2                                  ; 3B00 _ C1. E0, 02
        add     eax, ecx                                ; 3B03 _ 01. C8
        add     eax, 8                                  ; 3B05 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3B08 _ 8B. 00
        test    eax, eax                                ; 3B0A _ 85. C0
        jg      ?_206                                   ; 3B0C _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3B0E _ 83. 45, FC, 01
?_205:  cmp     dword [ebp-4H], 2                       ; 3B12 _ 83. 7D, FC, 02
        jle     ?_204                                   ; 3B16 _ 7E, D8
        jmp     ?_207                                   ; 3B18 _ EB, 01

?_206:  nop                                             ; 3B1A _ 90
?_207:  mov     eax, dword [taskctl]                    ; 3B1B _ A1, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3B20 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3B23 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3B25 _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3B2A _ C7. 40, 04, 00000000
        nop                                             ; 3B31 _ 90
        leave                                           ; 3B32 _ C9
        ret                                             ; 3B33 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3B34 _ 55
        mov     ebp, esp                                ; 3B35 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3B37 _ A1, 000021C8(d)
        pop     ebp                                     ; 3B3C _ 5D
        ret                                             ; 3B3D _ C3
; getTaskctl End of function



?_208:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_209:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_210:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_211:                                                  ; byte
        db 41H, 00H                                     ; 0027 _ A.

?_212:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0029 _ 3[sec].

?_213:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0030 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0038 _ sk B.

?_214:                                                  ; byte
        db 42H, 00H                                     ; 003D _ B.

?_215:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 003F _ Page is:
        db 20H, 00H                                     ; 0047 _  .

?_216:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0049 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0051 _ Low: .

?_217:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0057 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 005F _ High: .

?_218:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0066 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 006E _ w: .

?_219:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0072 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 007A _ gh: .

?_220:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 007F _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_221:  db 00H                                          ; 0002 _ .

?_222:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2284: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2346:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2401:                                            ; byte
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

closebtn.2554:                                          ; byte
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

?_223:  resw    1                                       ; 0004

?_224:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

?_225:  resd    1                                       ; 0020

mouseInfo:                                              ; byte
        resb    28                                      ; 0024

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_226:  resd    1                                       ; 00EC

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

task_a.2279:                                            ; dword
        resd    1                                       ; 0234

cnt.2280: resd  1                                       ; 0238

line.2283:                                              ; dword
        resd    1                                       ; 023C

task_b.2269:                                            ; oword
        resb    16                                      ; 0240

str.2444:                                               ; byte
        resb    1                                       ; 0250

?_227:  resb    9                                       ; 0251

?_228:  resb    2                                       ; 025A

line.2477:                                              ; dword
        resd    1                                       ; 025C

pos.2476: resd  8                                       ; 0260

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_229:                                                  ; byte
        resb    4                                       ; 0284

?_230:                                                  ; byte
        resb    4                                       ; 0288

?_231:                                                  ; byte
        resb    4                                       ; 028C

?_232:                                                  ; byte
        resb    7988                                    ; 0290

task_timer:                                             ; dword
        resd    1                                       ; 21C4

taskctl: resd   1                                       ; 21C8


