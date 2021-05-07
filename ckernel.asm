; Disassembly of file: ckernel.o
; Fri May  7 22:37:43 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    edi                                     ; 0003 _ 57
        push    esi                                     ; 0004 _ 56
        push    ebx                                     ; 0005 _ 53
        sub     esp, 108                                ; 0006 _ 83. EC, 6C
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0009 _ 65: A1, 00000014
        mov     dword [ebp-1CH], eax                    ; 000F _ 89. 45, E4
        xor     eax, eax                                ; 0012 _ 31. C0
        sub     esp, 12                                 ; 0014 _ 83. EC, 0C
        push    bootInfo                                ; 0017 _ 68, 00000000(d)
        call    initBootInfo                            ; 001C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0021 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0024 _ A1, 00000000(d)
        mov     dword [ebp-54H], eax                    ; 0029 _ 89. 45, AC
        movzx   eax, word [?_189]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-50H], eax                    ; 0034 _ 89. 45, B0
        movzx   eax, word [?_190]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-4CH], eax                    ; 003F _ 89. 45, B4
        call    getTimerController                      ; 0042 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 0047 _ 89. 45, B8
        call    init_pit                                ; 004A _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 004F _ 83. EC, 04
        push    timerbuf                                ; 0052 _ 68, 00000218(d)
        push    8                                       ; 0057 _ 6A, 08
        push    timerInfo                               ; 0059 _ 68, 00000200(d)
        call    fifo8_init                              ; 005E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0063 _ 83. C4, 10
        call    timer_alloc                             ; 0066 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 006B _ 89. 45, BC
        sub     esp, 4                                  ; 006E _ 83. EC, 04
        push    10                                      ; 0071 _ 6A, 0A
        push    timerInfo                               ; 0073 _ 68, 00000200(d)
        push    dword [ebp-44H]                         ; 0078 _ FF. 75, BC
        call    timer_init                              ; 007B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0080 _ 83. C4, 10
        sub     esp, 8                                  ; 0083 _ 83. EC, 08
        push    100                                     ; 0086 _ 6A, 64
        push    dword [ebp-44H]                         ; 0088 _ FF. 75, BC
        call    timer_setTime                           ; 008B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0090 _ 83. C4, 10
        call    timer_alloc                             ; 0093 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 0098 _ 89. 45, C0
        sub     esp, 4                                  ; 009B _ 83. EC, 04
        push    2                                       ; 009E _ 6A, 02
        push    timerInfo                               ; 00A0 _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 00A5 _ FF. 75, C0
        call    timer_init                              ; 00A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AD _ 83. C4, 10
        sub     esp, 8                                  ; 00B0 _ 83. EC, 08
        push    300                                     ; 00B3 _ 68, 0000012C
        push    dword [ebp-40H]                         ; 00B8 _ FF. 75, C0
        call    timer_setTime                           ; 00BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C0 _ 83. C4, 10
        call    timer_alloc                             ; 00C3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 00C8 _ 89. 45, C4
        sub     esp, 4                                  ; 00CB _ 83. EC, 04
        push    1                                       ; 00CE _ 6A, 01
        push    timerInfo                               ; 00D0 _ 68, 00000200(d)
        push    dword [ebp-3CH]                         ; 00D5 _ FF. 75, C4
        call    timer_init                              ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        sub     esp, 8                                  ; 00E0 _ 83. EC, 08
        push    50                                      ; 00E3 _ 6A, 32
        push    dword [ebp-3CH]                         ; 00E5 _ FF. 75, C4
        call    timer_setTime                           ; 00E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00ED _ 83. C4, 10
        sub     esp, 4                                  ; 00F0 _ 83. EC, 04
        push    keybuf                                  ; 00F3 _ 68, 00000040(d)
        push    32                                      ; 00F8 _ 6A, 20
        push    keyInfo                                 ; 00FA _ 68, 00000008(d)
        call    fifo8_init                              ; 00FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0104 _ 83. C4, 10
        sub     esp, 4                                  ; 0107 _ 83. EC, 04
        push    mousebuf                                ; 010A _ 68, 00000060(d)
        push    128                                     ; 010F _ 68, 00000080
        push    mouseInfo                               ; 0114 _ 68, 00000020(d)
        call    fifo8_init                              ; 0119 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 011E _ 83. C4, 10
        call    init_palette                            ; 0121 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0126 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 012B _ 83. EC, 0C
        push    mouse_move                              ; 012E _ 68, 000000E0(d)
        call    enable_mouse                            ; 0133 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0138 _ 83. C4, 10
        call    get_addr_buffer                         ; 013B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 0140 _ 89. 45, C8
        call    get_memory_block_count                  ; 0143 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0148 _ 89. 45, CC
        mov     eax, dword [memman]                     ; 014B _ A1, 00000008(d)
        sub     esp, 12                                 ; 0150 _ 83. EC, 0C
        push    eax                                     ; 0153 _ 50
        call    memman_init                             ; 0154 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0159 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 015C _ A1, 00000008(d)
        sub     esp, 4                                  ; 0161 _ 83. EC, 04
        push    1072594944                              ; 0164 _ 68, 3FEE8000
        push    16809984                                ; 0169 _ 68, 01008000
        push    eax                                     ; 016E _ 50
        call    memman_free                             ; 016F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0174 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0177 _ A1, 00000008(d)
        sub     esp, 12                                 ; 017C _ 83. EC, 0C
        push    eax                                     ; 017F _ 50
        call    memman_total                            ; 0180 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0185 _ 83. C4, 10
        shr     eax, 20                                 ; 0188 _ C1. E8, 14
        mov     dword [ebp-30H], eax                    ; 018B _ 89. 45, D0
        mov     eax, dword [ebp-30H]                    ; 018E _ 8B. 45, D0
        sub     esp, 12                                 ; 0191 _ 83. EC, 0C
        push    eax                                     ; 0194 _ 50
        call    intToHexStr                             ; 0195 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019A _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 019D _ 89. 45, D4
        mov     eax, dword [memman]                     ; 01A0 _ A1, 00000008(d)
        push    dword [ebp-4CH]                         ; 01A5 _ FF. 75, B4
        push    dword [ebp-50H]                         ; 01A8 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 01AB _ FF. 75, AC
        push    eax                                     ; 01AE _ 50
        call    shtctl_init                             ; 01AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B4 _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 01B7 _ A3, 00000220(d)
        mov     eax, dword [shtctl]                     ; 01BC _ A1, 00000220(d)
        sub     esp, 12                                 ; 01C1 _ 83. EC, 0C
        push    eax                                     ; 01C4 _ 50
        call    sheet_alloc                             ; 01C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CA _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01CD _ A3, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 01D2 _ A1, 00000220(d)
        sub     esp, 12                                 ; 01D7 _ 83. EC, 0C
        push    eax                                     ; 01DA _ 50
        call    sheet_alloc                             ; 01DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E0 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01E3 _ A3, 00000230(d)
        mov     eax, dword [ebp-50H]                    ; 01E8 _ 8B. 45, B0
        imul    eax, dword [ebp-4CH]                    ; 01EB _ 0F AF. 45, B4
        mov     edx, eax                                ; 01EF _ 89. C2
        mov     eax, dword [memman]                     ; 01F1 _ A1, 00000008(d)
        sub     esp, 8                                  ; 01F6 _ 83. EC, 08
        push    edx                                     ; 01F9 _ 52
        push    eax                                     ; 01FA _ 50
        call    memman_alloc_4K                         ; 01FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0200 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0203 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0208 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 020D _ 83. EC, 04
        push    dword [ebp-4CH]                         ; 0210 _ FF. 75, B4
        push    dword [ebp-50H]                         ; 0213 _ FF. 75, B0
        push    eax                                     ; 0216 _ 50
        call    init_screen8                            ; 0217 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 021C _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 021F _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 0225 _ A1, 0000022C(d)
        sub     esp, 12                                 ; 022A _ 83. EC, 0C
        push    99                                      ; 022D _ 6A, 63
        push    dword [ebp-4CH]                         ; 022F _ FF. 75, B4
        push    dword [ebp-50H]                         ; 0232 _ FF. 75, B0
        push    edx                                     ; 0235 _ 52
        push    eax                                     ; 0236 _ 50
        call    sheet_setbuf                            ; 0237 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 023C _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 023F _ A1, 00000230(d)
        sub     esp, 12                                 ; 0244 _ 83. EC, 0C
        push    99                                      ; 0247 _ 6A, 63
        push    16                                      ; 0249 _ 6A, 10
        push    16                                      ; 024B _ 6A, 10
        push    buf_mouse                               ; 024D _ 68, 00000100(d)
        push    eax                                     ; 0252 _ 50
        call    sheet_setbuf                            ; 0253 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0258 _ 83. C4, 20
        sub     esp, 8                                  ; 025B _ 83. EC, 08
        push    99                                      ; 025E _ 6A, 63
        push    buf_mouse                               ; 0260 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 0265 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026A _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 026D _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0273 _ A1, 00000220(d)
        push    0                                       ; 0278 _ 6A, 00
        push    0                                       ; 027A _ 6A, 00
        push    edx                                     ; 027C _ 52
        push    eax                                     ; 027D _ 50
        call    sheet_slide                             ; 027E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0283 _ 83. C4, 10
        mov     eax, dword [ebp-50H]                    ; 0286 _ 8B. 45, B0
        sub     eax, 16                                 ; 0289 _ 83. E8, 10
        mov     edx, eax                                ; 028C _ 89. C2
        shr     edx, 31                                 ; 028E _ C1. EA, 1F
        add     eax, edx                                ; 0291 _ 01. D0
        sar     eax, 1                                  ; 0293 _ D1. F8
        mov     dword [mx], eax                         ; 0295 _ A3, 000000F0(d)
        mov     eax, dword [ebp-4CH]                    ; 029A _ 8B. 45, B4
        sub     eax, 44                                 ; 029D _ 83. E8, 2C
        mov     edx, eax                                ; 02A0 _ 89. C2
        shr     edx, 31                                 ; 02A2 _ C1. EA, 1F
        add     eax, edx                                ; 02A5 _ 01. D0
        sar     eax, 1                                  ; 02A7 _ D1. F8
        mov     dword [my], eax                         ; 02A9 _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 02AE _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 02B4 _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 02BA _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02C0 _ A1, 00000220(d)
        push    ebx                                     ; 02C5 _ 53
        push    ecx                                     ; 02C6 _ 51
        push    edx                                     ; 02C7 _ 52
        push    eax                                     ; 02C8 _ 50
        call    sheet_slide                             ; 02C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02CE _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02D1 _ A1, 00000220(d)
        sub     esp, 12                                 ; 02D6 _ 83. EC, 0C
        push    2                                       ; 02D9 _ 6A, 02
        push    100                                     ; 02DB _ 6A, 64
        push    170                                     ; 02DD _ 68, 000000AA
        push    ?_176                                   ; 02E2 _ 68, 00000000(d)
        push    eax                                     ; 02E7 _ 50
        call    messageBox                              ; 02E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02ED _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02F0 _ A3, 00000224(d)
        mov     edx, dword [sheet_back]                 ; 02F5 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 02FB _ A1, 00000220(d)
        sub     esp, 4                                  ; 0300 _ 83. EC, 04
        push    0                                       ; 0303 _ 6A, 00
        push    edx                                     ; 0305 _ 52
        push    eax                                     ; 0306 _ 50
        call    sheet_level_updown                      ; 0307 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 030C _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 030F _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0315 _ A1, 00000220(d)
        sub     esp, 4                                  ; 031A _ 83. EC, 04
        push    50                                      ; 031D _ 6A, 32
        push    edx                                     ; 031F _ 52
        push    eax                                     ; 0320 _ 50
        call    sheet_level_updown                      ; 0321 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0326 _ 83. C4, 10
        call    io_sti                                  ; 0329 _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 032E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-28H], eax                    ; 0333 _ 89. 45, D8
        mov     eax, dword [memman]                     ; 0336 _ A1, 00000008(d)
        sub     esp, 12                                 ; 033B _ 83. EC, 0C
        push    eax                                     ; 033E _ 50
        call    task_init                               ; 033F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0344 _ 83. C4, 10
        mov     dword [task_a.2237], eax                ; 0347 _ A3, 00000234(d)
        call    task_alloc                              ; 034C _ E8, FFFFFFFC(rel)
        mov     dword [task_b.2238], eax                ; 0351 _ A3, 00000238(d)
        mov     eax, dword [task_b.2238]                ; 0356 _ A1, 00000238(d)
        mov     dword [eax+68H], 0                      ; 035B _ C7. 40, 68, 00000000
        mov     eax, dword [task_b.2238]                ; 0362 _ A1, 00000238(d)
        mov     dword [eax+6CH], 1073741824             ; 0367 _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-28H]                    ; 036E _ 8B. 45, D8
        neg     eax                                     ; 0371 _ F7. D8
        lea     edx, [task_b_main+eax]                  ; 0373 _ 8D. 90, 00000000(d)
        mov     eax, dword [task_b.2238]                ; 0379 _ A1, 00000238(d)
        mov     dword [eax+28H], edx                    ; 037E _ 89. 50, 28
        mov     eax, dword [task_b.2238]                ; 0381 _ A1, 00000238(d)
        mov     dword [eax+50H], 0                      ; 0386 _ C7. 40, 50, 00000000
        mov     eax, dword [task_b.2238]                ; 038D _ A1, 00000238(d)
        mov     dword [eax+54H], 8                      ; 0392 _ C7. 40, 54, 00000008
        mov     eax, dword [task_b.2238]                ; 0399 _ A1, 00000238(d)
        mov     dword [eax+58H], 32                     ; 039E _ C7. 40, 58, 00000020
        mov     eax, dword [task_b.2238]                ; 03A5 _ A1, 00000238(d)
        mov     dword [eax+5CH], 24                     ; 03AA _ C7. 40, 5C, 00000018
        mov     eax, dword [task_b.2238]                ; 03B1 _ A1, 00000238(d)
        mov     dword [eax+60H], 0                      ; 03B6 _ C7. 40, 60, 00000000
        mov     eax, dword [task_b.2238]                ; 03BD _ A1, 00000238(d)
        mov     dword [eax+64H], 16                     ; 03C2 _ C7. 40, 64, 00000010
        mov     eax, dword [task_b.2238]                ; 03C9 _ A1, 00000238(d)
        sub     esp, 12                                 ; 03CE _ 83. EC, 0C
        push    eax                                     ; 03D1 _ 50
        call    task_run                                ; 03D2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D7 _ 83. C4, 10
        mov     byte [ebp-5DH], 0                       ; 03DA _ C6. 45, A3, 00
        mov     dword [ebp-5CH], 7                      ; 03DE _ C7. 45, A4, 00000007
        mov     dword [ebp-58H], 0                      ; 03E5 _ C7. 45, A8, 00000000
?_001:  call    io_cli                                  ; 03EC _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03F1 _ 83. EC, 0C
        push    keyInfo                                 ; 03F4 _ 68, 00000008(d)
        call    fifo8_status                            ; 03F9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FE _ 83. C4, 10
        mov     ebx, eax                                ; 0401 _ 89. C3
        sub     esp, 12                                 ; 0403 _ 83. EC, 0C
        push    mouseInfo                               ; 0406 _ 68, 00000020(d)
        call    fifo8_status                            ; 040B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0410 _ 83. C4, 10
        add     ebx, eax                                ; 0413 _ 01. C3
        sub     esp, 12                                 ; 0415 _ 83. EC, 0C
        push    timerInfo                               ; 0418 _ 68, 00000200(d)
        call    fifo8_status                            ; 041D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0422 _ 83. C4, 10
        add     eax, ebx                                ; 0425 _ 01. D8
        test    eax, eax                                ; 0427 _ 85. C0
        jnz     ?_002                                   ; 0429 _ 75, 07
        call    io_sti                                  ; 042B _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0430 _ EB, BA

?_002:  sub     esp, 12                                 ; 0432 _ 83. EC, 0C
        push    keyInfo                                 ; 0435 _ 68, 00000008(d)
        call    fifo8_status                            ; 043A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 043F _ 83. C4, 10
        test    eax, eax                                ; 0442 _ 85. C0
        je      ?_007                                   ; 0444 _ 0F 84, 00000314
        call    io_sti                                  ; 044A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 044F _ 83. EC, 0C
        push    keyInfo                                 ; 0452 _ 68, 00000008(d)
        call    fifo8_get                               ; 0457 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 045C _ 83. C4, 10
        mov     byte [ebp-5DH], al                      ; 045F _ 88. 45, A3
        cmp     byte [ebp-5DH], 28                      ; 0462 _ 80. 7D, A3, 1C
        jnz     ?_003                                   ; 0466 _ 75, 59
        mov     ebx, dword [cnt.2239]                   ; 0468 _ 8B. 1D, 0000023C(d)
        mov     eax, dword [sheet_back]                 ; 046E _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 0473 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 0475 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 047B _ A1, 00000220(d)
        sub     esp, 4                                  ; 0480 _ 83. EC, 04
        push    7                                       ; 0483 _ 6A, 07
        push    dword [ebp-50H]                         ; 0485 _ FF. 75, B0
        push    ebx                                     ; 0488 _ 53
        push    ecx                                     ; 0489 _ 51
        push    dword [ebp-38H]                         ; 048A _ FF. 75, C8
        push    edx                                     ; 048D _ 52
        push    eax                                     ; 048E _ 50
        call    showMemInfo                             ; 048F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0494 _ 83. C4, 20
        mov     eax, dword [cnt.2239]                   ; 0497 _ A1, 0000023C(d)
        add     eax, 1                                  ; 049C _ 83. C0, 01
        mov     dword [cnt.2239], eax                   ; 049F _ A3, 0000023C(d)
        mov     eax, dword [cnt.2239]                   ; 04A4 _ A1, 0000023C(d)
        cmp     dword [ebp-34H], eax                    ; 04A9 _ 39. 45, CC
        jg      ?_001                                   ; 04AC _ 0F 8F, FFFFFF3A
        mov     dword [cnt.2239], 0                     ; 04B2 _ C7. 05, 0000023C(d), 00000000
        jmp     ?_001                                   ; 04BC _ E9, FFFFFF2B

?_003:  movzx   eax, byte [ebp-5DH]                     ; 04C1 _ 0F B6. 45, A3
        movzx   eax, byte [keytable+eax]                ; 04C5 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 04CC _ 84. C0
        jz      ?_004                                   ; 04CE _ 74, 18
        cmp     byte [ebp-5DH], 15                      ; 04D0 _ 80. 7D, A3, 0F
        jbe     ?_004                                   ; 04D4 _ 76, 12
        cmp     byte [ebp-5DH], 83                      ; 04D6 _ 80. 7D, A3, 53
        ja      ?_004                                   ; 04DA _ 77, 0C
        mov     eax, dword [line.2242]                  ; 04DC _ A1, 00000240(d)
        cmp     eax, 142                                ; 04E1 _ 3D, 0000008E
        jle     ?_005                                   ; 04E6 _ 7E, 18
?_004:  cmp     byte [ebp-5DH], 14                      ; 04E8 _ 80. 7D, A3, 0E
        jne     ?_001                                   ; 04EC _ 0F 85, FFFFFEFA
        mov     eax, dword [line.2242]                  ; 04F2 _ A1, 00000240(d)
        cmp     eax, 7                                  ; 04F7 _ 83. F8, 07
        jle     ?_001                                   ; 04FA _ 0F 8E, FFFFFEEC
?_005:  movzx   eax, byte [ebp-5DH]                     ; 0500 _ 0F B6. 45, A3
        movzx   eax, byte [keytable+eax]                ; 0504 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 050B _ 84. C0
        je      ?_006                                   ; 050D _ 0F 84, 00000125
        cmp     byte [ebp-5DH], 15                      ; 0513 _ 80. 7D, A3, 0F
        jbe     ?_006                                   ; 0517 _ 0F 86, 0000011B
        cmp     byte [ebp-5DH], 83                      ; 051D _ 80. 7D, A3, 53
        ja      ?_006                                   ; 0521 _ 0F 87, 00000111
        mov     eax, dword [line.2242]                  ; 0527 _ A1, 00000240(d)
        cmp     eax, 142                                ; 052C _ 3D, 0000008E
        jg      ?_006                                   ; 0531 _ 0F 8F, 00000101
        mov     eax, dword [pos.2243]                   ; 0537 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 053C _ 8D. 78, 28
        mov     eax, dword [line.2242]                  ; 053F _ A1, 00000240(d)
        lea     esi, [eax+0EH]                          ; 0544 _ 8D. 70, 0E
        mov     eax, dword [pos.2243]                   ; 0547 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 054C _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 054F _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 0554 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0557 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 055C _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 055F _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0564 _ 8B. 00
        sub     esp, 4                                  ; 0566 _ 83. EC, 04
        push    edi                                     ; 0569 _ 57
        push    esi                                     ; 056A _ 56
        push    ebx                                     ; 056B _ 53
        push    ecx                                     ; 056C _ 51
        push    7                                       ; 056D _ 6A, 07
        push    edx                                     ; 056F _ 52
        push    eax                                     ; 0570 _ 50
        call    boxfill8                                ; 0571 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0576 _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 0579 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 057E _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 0581 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 0586 _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 0589 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 058E _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 0591 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 0596 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0599 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 059F _ A1, 00000220(d)
        sub     esp, 8                                  ; 05A4 _ 83. EC, 08
        push    edi                                     ; 05A7 _ 57
        push    esi                                     ; 05A8 _ 56
        push    ebx                                     ; 05A9 _ 53
        push    ecx                                     ; 05AA _ 51
        push    edx                                     ; 05AB _ 52
        push    eax                                     ; 05AC _ 50
        call    sheet_refresh                           ; 05AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05B2 _ 83. C4, 20
        movzx   eax, byte [ebp-5DH]                     ; 05B5 _ 0F B6. 45, A3
        movzx   eax, byte [keytable+eax]                ; 05B9 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 05C0 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 05C3 _ C6. 45, E3, 00
        mov     eax, dword [pos.2243]                   ; 05C7 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 05CC _ 8D. 70, 1A
        mov     eax, dword [line.2242]                  ; 05CF _ A1, 00000240(d)
        lea     ebx, [eax+8H]                           ; 05D4 _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 05D7 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 05DD _ A1, 00000220(d)
        sub     esp, 8                                  ; 05E2 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 05E5 _ 8D. 4D, E2
        push    ecx                                     ; 05E8 _ 51
        push    0                                       ; 05E9 _ 6A, 00
        push    esi                                     ; 05EB _ 56
        push    ebx                                     ; 05EC _ 53
        push    edx                                     ; 05ED _ 52
        push    eax                                     ; 05EE _ 50
        call    showString                              ; 05EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F4 _ 83. C4, 20
        mov     eax, dword [line.2242]                  ; 05F7 _ A1, 00000240(d)
        add     eax, 8                                  ; 05FC _ 83. C0, 08
        mov     dword [line.2242], eax                  ; 05FF _ A3, 00000240(d)
        mov     eax, dword [sheet_win]                  ; 0604 _ A1, 00000224(d)
        mov     eax, dword [eax+4H]                     ; 0609 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 060C _ 8D. 50, F0
        mov     eax, dword [line.2242]                  ; 060F _ A1, 00000240(d)
        cmp     edx, eax                                ; 0614 _ 39. C2
        jg      ?_013                                   ; 0616 _ 0F 8F, 000002FB
        mov     eax, dword [pos.2243]                   ; 061C _ A1, 00000074(d)
        add     eax, 16                                 ; 0621 _ 83. C0, 10
        mov     dword [pos.2243], eax                   ; 0624 _ A3, 00000074(d)
        mov     dword [line.2242], 0                    ; 0629 _ C7. 05, 00000240(d), 00000000
        jmp     ?_013                                   ; 0633 _ E9, 000002DF

?_006:  cmp     byte [ebp-5DH], 14                      ; 0638 _ 80. 7D, A3, 0E
        jne     ?_001                                   ; 063C _ 0F 85, FFFFFDAA
        mov     eax, dword [line.2242]                  ; 0642 _ A1, 00000240(d)
        cmp     eax, 7                                  ; 0647 _ 83. F8, 07
        jle     ?_001                                   ; 064A _ 0F 8E, FFFFFD9C
        mov     eax, dword [pos.2243]                   ; 0650 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0655 _ 8D. 78, 28
        mov     eax, dword [line.2242]                  ; 0658 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 065D _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 0660 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0665 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 0668 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 066D _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0670 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0675 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0678 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 067D _ 8B. 00
        sub     esp, 4                                  ; 067F _ 83. EC, 04
        push    edi                                     ; 0682 _ 57
        push    esi                                     ; 0683 _ 56
        push    ebx                                     ; 0684 _ 53
        push    ecx                                     ; 0685 _ 51
        push    7                                       ; 0686 _ 6A, 07
        push    edx                                     ; 0688 _ 52
        push    eax                                     ; 0689 _ 50
        call    boxfill8                                ; 068A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 068F _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 0692 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0697 _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 069A _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 069F _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 06A2 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06A7 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 06AA _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 06AF _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 06B2 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 06B8 _ A1, 00000220(d)
        sub     esp, 8                                  ; 06BD _ 83. EC, 08
        push    edi                                     ; 06C0 _ 57
        push    esi                                     ; 06C1 _ 56
        push    ebx                                     ; 06C2 _ 53
        push    ecx                                     ; 06C3 _ 51
        push    edx                                     ; 06C4 _ 52
        push    eax                                     ; 06C5 _ 50
        call    sheet_refresh                           ; 06C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06CB _ 83. C4, 20
        mov     eax, dword [line.2242]                  ; 06CE _ A1, 00000240(d)
        sub     eax, 8                                  ; 06D3 _ 83. E8, 08
        mov     dword [line.2242], eax                  ; 06D6 _ A3, 00000240(d)
        mov     eax, dword [pos.2243]                   ; 06DB _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06E0 _ 8D. 78, 28
        mov     eax, dword [line.2242]                  ; 06E3 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 06E8 _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 06EB _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06F0 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 06F3 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 06F8 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 06FB _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0700 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0703 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0708 _ 8B. 00
        sub     esp, 4                                  ; 070A _ 83. EC, 04
        push    edi                                     ; 070D _ 57
        push    esi                                     ; 070E _ 56
        push    ebx                                     ; 070F _ 53
        push    ecx                                     ; 0710 _ 51
        push    7                                       ; 0711 _ 6A, 07
        push    edx                                     ; 0713 _ 52
        push    eax                                     ; 0714 _ 50
        call    boxfill8                                ; 0715 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 071A _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 071D _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0722 _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 0725 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 072A _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 072D _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0732 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 0735 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 073A _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 073D _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0743 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0748 _ 83. EC, 08
        push    edi                                     ; 074B _ 57
        push    esi                                     ; 074C _ 56
        push    ebx                                     ; 074D _ 53
        push    ecx                                     ; 074E _ 51
        push    edx                                     ; 074F _ 52
        push    eax                                     ; 0750 _ 50
        call    sheet_refresh                           ; 0751 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0756 _ 83. C4, 20
        jmp     ?_001                                   ; 0759 _ E9, FFFFFC8E

?_007:  sub     esp, 12                                 ; 075E _ 83. EC, 0C
        push    mouseInfo                               ; 0761 _ 68, 00000020(d)
        call    fifo8_status                            ; 0766 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 076B _ 83. C4, 10
        test    eax, eax                                ; 076E _ 85. C0
        jz      ?_008                                   ; 0770 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0772 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 0778 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 077E _ A1, 00000220(d)
        sub     esp, 4                                  ; 0783 _ 83. EC, 04
        push    ecx                                     ; 0786 _ 51
        push    edx                                     ; 0787 _ 52
        push    eax                                     ; 0788 _ 50
        call    showMouseInfo                           ; 0789 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 078E _ 83. C4, 10
        jmp     ?_001                                   ; 0791 _ E9, FFFFFC56

?_008:  sub     esp, 12                                 ; 0796 _ 83. EC, 0C
        push    timerInfo                               ; 0799 _ 68, 00000200(d)
        call    fifo8_status                            ; 079E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07A3 _ 83. C4, 10
        test    eax, eax                                ; 07A6 _ 85. C0
        je      ?_001                                   ; 07A8 _ 0F 84, FFFFFC3E
        call    io_sti                                  ; 07AE _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 07B3 _ 83. EC, 0C
        push    timerInfo                               ; 07B6 _ 68, 00000200(d)
        call    fifo8_get                               ; 07BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C0 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 07C3 _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 07C6 _ 83. 7D, DC, 0A
        jnz     ?_009                                   ; 07CA _ 75, 40
        mov     edx, dword [sheet_back]                 ; 07CC _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 07D2 _ A1, 00000220(d)
        sub     esp, 8                                  ; 07D7 _ 83. EC, 08
        push    ?_177                                   ; 07DA _ 68, 00000008(d)
        push    7                                       ; 07DF _ 6A, 07
        push    160                                     ; 07E1 _ 68, 000000A0
        push    dword [ebp-58H]                         ; 07E6 _ FF. 75, A8
        push    edx                                     ; 07E9 _ 52
        push    eax                                     ; 07EA _ 50
        call    showString                              ; 07EB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07F0 _ 83. C4, 20
        sub     esp, 8                                  ; 07F3 _ 83. EC, 08
        push    100                                     ; 07F6 _ 6A, 64
        push    dword [ebp-44H]                         ; 07F8 _ FF. 75, BC
        call    timer_setTime                           ; 07FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0800 _ 83. C4, 10
        add     dword [ebp-58H], 8                      ; 0803 _ 83. 45, A8, 08
        jmp     ?_001                                   ; 0807 _ E9, FFFFFBE0

?_009:  cmp     dword [ebp-24H], 2                      ; 080C _ 83. 7D, DC, 02
        jnz     ?_010                                   ; 0810 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0812 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0818 _ A1, 00000220(d)
        sub     esp, 8                                  ; 081D _ 83. EC, 08
        push    ?_178                                   ; 0820 _ 68, 0000000A(d)
        push    7                                       ; 0825 _ 6A, 07
        push    32                                      ; 0827 _ 6A, 20
        push    80                                      ; 0829 _ 6A, 50
        push    edx                                     ; 082B _ 52
        push    eax                                     ; 082C _ 50
        call    showString                              ; 082D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0832 _ 83. C4, 20
        jmp     ?_001                                   ; 0835 _ E9, FFFFFBB2

?_010:  cmp     dword [ebp-24H], 0                      ; 083A _ 83. 7D, DC, 00
        jz      ?_011                                   ; 083E _ 74, 1E
        sub     esp, 4                                  ; 0840 _ 83. EC, 04
        push    0                                       ; 0843 _ 6A, 00
        push    timerInfo                               ; 0845 _ 68, 00000200(d)
        push    dword [ebp-3CH]                         ; 084A _ FF. 75, C4
        call    timer_init                              ; 084D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0852 _ 83. C4, 10
        mov     dword [ebp-5CH], 0                      ; 0855 _ C7. 45, A4, 00000000
        jmp     ?_012                                   ; 085C _ EB, 1C

?_011:  sub     esp, 4                                  ; 085E _ 83. EC, 04
        push    1                                       ; 0861 _ 6A, 01
        push    timerInfo                               ; 0863 _ 68, 00000200(d)
        push    dword [ebp-3CH]                         ; 0868 _ FF. 75, C4
        call    timer_init                              ; 086B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0870 _ 83. C4, 10
        mov     dword [ebp-5CH], 7                      ; 0873 _ C7. 45, A4, 00000007
?_012:  sub     esp, 8                                  ; 087A _ 83. EC, 08
        push    50                                      ; 087D _ 6A, 32
        push    dword [ebp-3CH]                         ; 087F _ FF. 75, C4
        call    timer_setTime                           ; 0882 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0887 _ 83. C4, 10
        mov     eax, dword [pos.2243]                   ; 088A _ A1, 00000074(d)
        add     eax, 40                                 ; 088F _ 83. C0, 28
        mov     dword [ebp-6CH], eax                    ; 0892 _ 89. 45, 94
        mov     eax, dword [line.2242]                  ; 0895 _ A1, 00000240(d)
        lea     edi, [eax+0EH]                          ; 089A _ 8D. 78, 0E
        mov     eax, dword [pos.2243]                   ; 089D _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 08A2 _ 8D. 70, 1A
        mov     eax, dword [line.2242]                  ; 08A5 _ A1, 00000240(d)
        lea     ebx, [eax+8H]                           ; 08AA _ 8D. 58, 08
        mov     eax, dword [ebp-5CH]                    ; 08AD _ 8B. 45, A4
        movzx   ecx, al                                 ; 08B0 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 08B3 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 08B8 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 08BB _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 08C0 _ 8B. 00
        sub     esp, 4                                  ; 08C2 _ 83. EC, 04
        push    dword [ebp-6CH]                         ; 08C5 _ FF. 75, 94
        push    edi                                     ; 08C8 _ 57
        push    esi                                     ; 08C9 _ 56
        push    ebx                                     ; 08CA _ 53
        push    ecx                                     ; 08CB _ 51
        push    edx                                     ; 08CC _ 52
        push    eax                                     ; 08CD _ 50
        call    boxfill8                                ; 08CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08D3 _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 08D6 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 08DB _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 08DE _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 08E3 _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 08E6 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 08EB _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 08EE _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 08F3 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 08F6 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 08FC _ A1, 00000220(d)
        sub     esp, 8                                  ; 0901 _ 83. EC, 08
        push    edi                                     ; 0904 _ 57
        push    esi                                     ; 0905 _ 56
        push    ebx                                     ; 0906 _ 53
        push    ecx                                     ; 0907 _ 51
        push    edx                                     ; 0908 _ 52
        push    eax                                     ; 0909 _ 50
        call    sheet_refresh                           ; 090A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 090F _ 83. C4, 20
        jmp     ?_001                                   ; 0912 _ E9, FFFFFAD5

?_013:  nop                                             ; 0917 _ 90
        jmp     ?_001                                   ; 0918 _ E9, FFFFFACF
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 091D _ 55
        mov     ebp, esp                                ; 091E _ 89. E5
        sub     esp, 56                                 ; 0920 _ 83. EC, 38
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0923 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0929 _ 89. 45, F4
        xor     eax, eax                                ; 092C _ 31. C0
        mov     edx, dword [sheet_back]                 ; 092E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0934 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0939 _ 83. EC, 08
        push    ?_179                                   ; 093C _ 68, 00000011(d)
        push    7                                       ; 0941 _ 6A, 07
        push    144                                     ; 0943 _ 68, 00000090
        push    0                                       ; 0948 _ 6A, 00
        push    edx                                     ; 094A _ 52
        push    eax                                     ; 094B _ 50
        call    showString                              ; 094C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0951 _ 83. C4, 20
        mov     dword [ebp-34H], 0                      ; 0954 _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 0                      ; 095B _ C7. 45, D0, 00000000
        sub     esp, 4                                  ; 0962 _ 83. EC, 04
        lea     eax, [ebp-14H]                          ; 0965 _ 8D. 45, EC
        push    eax                                     ; 0968 _ 50
        push    8                                       ; 0969 _ 6A, 08
        lea     eax, [ebp-2CH]                          ; 096B _ 8D. 45, D4
        push    eax                                     ; 096E _ 50
        call    fifo8_init                              ; 096F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0974 _ 83. C4, 10
        call    timer_alloc                             ; 0977 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 097C _ 89. 45, CC
        sub     esp, 4                                  ; 097F _ 83. EC, 04
        push    123                                     ; 0982 _ 6A, 7B
        lea     eax, [ebp-2CH]                          ; 0984 _ 8D. 45, D4
        push    eax                                     ; 0987 _ 50
        push    dword [ebp-34H]                         ; 0988 _ FF. 75, CC
        call    timer_init                              ; 098B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0990 _ 83. C4, 10
        sub     esp, 8                                  ; 0993 _ 83. EC, 08
        push    100                                     ; 0996 _ 6A, 64
        push    dword [ebp-34H]                         ; 0998 _ FF. 75, CC
        call    timer_setTime                           ; 099B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09A0 _ 83. C4, 10
        mov     dword [ebp-38H], 0                      ; 09A3 _ C7. 45, C8, 00000000
?_014:  call    io_cli                                  ; 09AA _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 09AF _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 09B2 _ 8D. 45, D4
        push    eax                                     ; 09B5 _ 50
        call    fifo8_status                            ; 09B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09BB _ 83. C4, 10
        test    eax, eax                                ; 09BE _ 85. C0
        jnz     ?_015                                   ; 09C0 _ 75, 07
        call    io_sti                                  ; 09C2 _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 09C7 _ EB, E1

?_015:  sub     esp, 12                                 ; 09C9 _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 09CC _ 8D. 45, D4
        push    eax                                     ; 09CF _ 50
        call    fifo8_get                               ; 09D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09D5 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 09D8 _ 89. 45, D0
        call    io_sti                                  ; 09DB _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-30H], 123                    ; 09E0 _ 83. 7D, D0, 7B
        jnz     ?_014                                   ; 09E4 _ 75, C4
        mov     edx, dword [sheet_back]                 ; 09E6 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 09EC _ A1, 00000220(d)
        sub     esp, 8                                  ; 09F1 _ 83. EC, 08
        push    ?_180                                   ; 09F4 _ 68, 0000001E(d)
        push    7                                       ; 09F9 _ 6A, 07
        push    176                                     ; 09FB _ 68, 000000B0
        push    dword [ebp-38H]                         ; 0A00 _ FF. 75, C8
        push    edx                                     ; 0A03 _ 52
        push    eax                                     ; 0A04 _ 50
        call    showString                              ; 0A05 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A0A _ 83. C4, 20
        sub     esp, 8                                  ; 0A0D _ 83. EC, 08
        push    100                                     ; 0A10 _ 6A, 64
        push    dword [ebp-34H]                         ; 0A12 _ FF. 75, CC
        call    timer_setTime                           ; 0A15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A1A _ 83. C4, 10
        add     dword [ebp-38H], 8                      ; 0A1D _ 83. 45, C8, 08
        jmp     ?_014                                   ; 0A21 _ EB, 87
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0A23 _ 55
        mov     ebp, esp                                ; 0A24 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0A26 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0A29 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0A2F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0A32 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0A38 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0A3B _ 66: C7. 40, 06, 01E0
        nop                                             ; 0A41 _ 90
        pop     ebp                                     ; 0A42 _ 5D
        ret                                             ; 0A43 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0A44 _ 55
        mov     ebp, esp                                ; 0A45 _ 89. E5
        push    ebx                                     ; 0A47 _ 53
        sub     esp, 36                                 ; 0A48 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0A4B _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0A4E _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0A51 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0A54 _ 89. 45, F4
        jmp     ?_017                                   ; 0A57 _ EB, 3E

?_016:  mov     eax, dword [ebp+1CH]                    ; 0A59 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0A5C _ 0F B6. 00
        movzx   eax, al                                 ; 0A5F _ 0F B6. C0
        shl     eax, 4                                  ; 0A62 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0A65 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0A6B _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0A6F _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0A72 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0A75 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0A78 _ 8B. 00
        sub     esp, 8                                  ; 0A7A _ 83. EC, 08
        push    ebx                                     ; 0A7D _ 53
        push    ecx                                     ; 0A7E _ 51
        push    dword [ebp+14H]                         ; 0A7F _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A82 _ FF. 75, 10
        push    edx                                     ; 0A85 _ 52
        push    eax                                     ; 0A86 _ 50
        call    showFont8                               ; 0A87 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A8C _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0A8F _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0A93 _ 83. 45, 1C, 01
?_017:  mov     eax, dword [ebp+1CH]                    ; 0A97 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0A9A _ 0F B6. 00
        test    al, al                                  ; 0A9D _ 84. C0
        jnz     ?_016                                   ; 0A9F _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0AA1 _ 8B. 45, 14
        add     eax, 16                                 ; 0AA4 _ 83. C0, 10
        sub     esp, 8                                  ; 0AA7 _ 83. EC, 08
        push    eax                                     ; 0AAA _ 50
        push    dword [ebp+10H]                         ; 0AAB _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0AAE _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0AB1 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0AB4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AB7 _ FF. 75, 08
        call    sheet_refresh                           ; 0ABA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0ABF _ 83. C4, 20
        nop                                             ; 0AC2 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0AC3 _ 8B. 5D, FC
        leave                                           ; 0AC6 _ C9
        ret                                             ; 0AC7 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0AC8 _ 55
        mov     ebp, esp                                ; 0AC9 _ 89. E5
        push    ebx                                     ; 0ACB _ 53
        sub     esp, 4                                  ; 0ACC _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0ACF _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0AD2 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0AD5 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0AD8 _ 83. E8, 01
        sub     esp, 4                                  ; 0ADB _ 83. EC, 04
        push    edx                                     ; 0ADE _ 52
        push    eax                                     ; 0ADF _ 50
        push    0                                       ; 0AE0 _ 6A, 00
        push    0                                       ; 0AE2 _ 6A, 00
        push    14                                      ; 0AE4 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0AE6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AE9 _ FF. 75, 08
        call    boxfill8                                ; 0AEC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AF1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0AF4 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0AF7 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0AFA _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0AFD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B00 _ 8B. 45, 10
        sub     eax, 24                                 ; 0B03 _ 83. E8, 18
        sub     esp, 4                                  ; 0B06 _ 83. EC, 04
        push    ecx                                     ; 0B09 _ 51
        push    edx                                     ; 0B0A _ 52
        push    eax                                     ; 0B0B _ 50
        push    0                                       ; 0B0C _ 6A, 00
        push    8                                       ; 0B0E _ 6A, 08
        push    dword [ebp+0CH]                         ; 0B10 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B13 _ FF. 75, 08
        call    boxfill8                                ; 0B16 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B1B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0B1E _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0B21 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0B24 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B27 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B2A _ 8B. 45, 10
        sub     eax, 23                                 ; 0B2D _ 83. E8, 17
        sub     esp, 4                                  ; 0B30 _ 83. EC, 04
        push    ecx                                     ; 0B33 _ 51
        push    edx                                     ; 0B34 _ 52
        push    eax                                     ; 0B35 _ 50
        push    0                                       ; 0B36 _ 6A, 00
        push    7                                       ; 0B38 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0B3A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B3D _ FF. 75, 08
        call    boxfill8                                ; 0B40 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B45 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0B48 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0B4B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0B4E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B51 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B54 _ 8B. 45, 10
        sub     eax, 22                                 ; 0B57 _ 83. E8, 16
        sub     esp, 4                                  ; 0B5A _ 83. EC, 04
        push    ecx                                     ; 0B5D _ 51
        push    edx                                     ; 0B5E _ 52
        push    eax                                     ; 0B5F _ 50
        push    0                                       ; 0B60 _ 6A, 00
        push    8                                       ; 0B62 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0B64 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B67 _ FF. 75, 08
        call    boxfill8                                ; 0B6A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B6F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0B72 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0B75 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0B78 _ 8B. 45, 10
        sub     eax, 20                                 ; 0B7B _ 83. E8, 14
        sub     esp, 4                                  ; 0B7E _ 83. EC, 04
        push    edx                                     ; 0B81 _ 52
        push    51                                      ; 0B82 _ 6A, 33
        push    eax                                     ; 0B84 _ 50
        push    10                                      ; 0B85 _ 6A, 0A
        push    7                                       ; 0B87 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0B89 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B8C _ FF. 75, 08
        call    boxfill8                                ; 0B8F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B94 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0B97 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0B9A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0B9D _ 8B. 45, 10
        sub     eax, 20                                 ; 0BA0 _ 83. E8, 14
        sub     esp, 4                                  ; 0BA3 _ 83. EC, 04
        push    edx                                     ; 0BA6 _ 52
        push    9                                       ; 0BA7 _ 6A, 09
        push    eax                                     ; 0BA9 _ 50
        push    9                                       ; 0BAA _ 6A, 09
        push    7                                       ; 0BAC _ 6A, 07
        push    dword [ebp+0CH]                         ; 0BAE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BB1 _ FF. 75, 08
        call    boxfill8                                ; 0BB4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BB9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0BBC _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0BBF _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0BC2 _ 8B. 45, 10
        sub     eax, 4                                  ; 0BC5 _ 83. E8, 04
        sub     esp, 4                                  ; 0BC8 _ 83. EC, 04
        push    edx                                     ; 0BCB _ 52
        push    50                                      ; 0BCC _ 6A, 32
        push    eax                                     ; 0BCE _ 50
        push    10                                      ; 0BCF _ 6A, 0A
        push    15                                      ; 0BD1 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0BD3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BD6 _ FF. 75, 08
        call    boxfill8                                ; 0BD9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BDE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0BE1 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0BE4 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0BE7 _ 8B. 45, 10
        sub     eax, 19                                 ; 0BEA _ 83. E8, 13
        sub     esp, 4                                  ; 0BED _ 83. EC, 04
        push    edx                                     ; 0BF0 _ 52
        push    50                                      ; 0BF1 _ 6A, 32
        push    eax                                     ; 0BF3 _ 50
        push    50                                      ; 0BF4 _ 6A, 32
        push    15                                      ; 0BF6 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0BF8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BFB _ FF. 75, 08
        call    boxfill8                                ; 0BFE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C03 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C06 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C09 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C0C _ 8B. 45, 10
        sub     eax, 3                                  ; 0C0F _ 83. E8, 03
        sub     esp, 4                                  ; 0C12 _ 83. EC, 04
        push    edx                                     ; 0C15 _ 52
        push    50                                      ; 0C16 _ 6A, 32
        push    eax                                     ; 0C18 _ 50
        push    10                                      ; 0C19 _ 6A, 0A
        push    0                                       ; 0C1B _ 6A, 00
        push    dword [ebp+0CH]                         ; 0C1D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C20 _ FF. 75, 08
        call    boxfill8                                ; 0C23 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C28 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C2B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C2E _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C31 _ 8B. 45, 10
        sub     eax, 20                                 ; 0C34 _ 83. E8, 14
        sub     esp, 4                                  ; 0C37 _ 83. EC, 04
        push    edx                                     ; 0C3A _ 52
        push    51                                      ; 0C3B _ 6A, 33
        push    eax                                     ; 0C3D _ 50
        push    51                                      ; 0C3E _ 6A, 33
        push    0                                       ; 0C40 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0C42 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C45 _ FF. 75, 08
        call    boxfill8                                ; 0C48 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C4D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C50 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0C53 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0C56 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0C59 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0C5C _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0C5F _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0C62 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0C65 _ 83. E8, 2F
        sub     esp, 4                                  ; 0C68 _ 83. EC, 04
        push    ebx                                     ; 0C6B _ 53
        push    ecx                                     ; 0C6C _ 51
        push    edx                                     ; 0C6D _ 52
        push    eax                                     ; 0C6E _ 50
        push    15                                      ; 0C6F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0C71 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C74 _ FF. 75, 08
        call    boxfill8                                ; 0C77 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C7C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C7F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0C82 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0C85 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0C88 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0C8B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0C8E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0C91 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0C94 _ 83. E8, 2F
        sub     esp, 4                                  ; 0C97 _ 83. EC, 04
        push    ebx                                     ; 0C9A _ 53
        push    ecx                                     ; 0C9B _ 51
        push    edx                                     ; 0C9C _ 52
        push    eax                                     ; 0C9D _ 50
        push    15                                      ; 0C9E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0CA0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CA3 _ FF. 75, 08
        call    boxfill8                                ; 0CA6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CAB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CAE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0CB1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0CB4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0CB7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0CBA _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CBD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0CC0 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0CC3 _ 83. E8, 2F
        sub     esp, 4                                  ; 0CC6 _ 83. EC, 04
        push    ebx                                     ; 0CC9 _ 53
        push    ecx                                     ; 0CCA _ 51
        push    edx                                     ; 0CCB _ 52
        push    eax                                     ; 0CCC _ 50
        push    7                                       ; 0CCD _ 6A, 07
        push    dword [ebp+0CH]                         ; 0CCF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CD2 _ FF. 75, 08
        call    boxfill8                                ; 0CD5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CDA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CDD _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0CE0 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0CE3 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0CE6 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0CE9 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0CEC _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0CEF _ 8B. 45, 0C
        sub     eax, 3                                  ; 0CF2 _ 83. E8, 03
        sub     esp, 4                                  ; 0CF5 _ 83. EC, 04
        push    ebx                                     ; 0CF8 _ 53
        push    ecx                                     ; 0CF9 _ 51
        push    edx                                     ; 0CFA _ 52
        push    eax                                     ; 0CFB _ 50
        push    7                                       ; 0CFC _ 6A, 07
        push    dword [ebp+0CH]                         ; 0CFE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D01 _ FF. 75, 08
        call    boxfill8                                ; 0D04 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D09 _ 83. C4, 20
        nop                                             ; 0D0C _ 90
        mov     ebx, dword [ebp-4H]                     ; 0D0D _ 8B. 5D, FC
        leave                                           ; 0D10 _ C9
        ret                                             ; 0D11 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0D12 _ 55
        mov     ebp, esp                                ; 0D13 _ 89. E5
        sub     esp, 24                                 ; 0D15 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0D18 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0D1D _ 89. 45, EC
        movzx   eax, word [?_189]                       ; 0D20 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D27 _ 98
        mov     dword [ebp-10H], eax                    ; 0D28 _ 89. 45, F0
        movzx   eax, word [?_190]                       ; 0D2B _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0D32 _ 98
        mov     dword [ebp-0CH], eax                    ; 0D33 _ 89. 45, F4
        sub     esp, 4                                  ; 0D36 _ 83. EC, 04
        push    table_rgb.2282                          ; 0D39 _ 68, 00000080(d)
        push    15                                      ; 0D3E _ 6A, 0F
        push    0                                       ; 0D40 _ 6A, 00
        call    set_palette                             ; 0D42 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D47 _ 83. C4, 10
        nop                                             ; 0D4A _ 90
        leave                                           ; 0D4B _ C9
        ret                                             ; 0D4C _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0D4D _ 55
        mov     ebp, esp                                ; 0D4E _ 89. E5
        sub     esp, 24                                 ; 0D50 _ 83. EC, 18
        call    io_load_eflags                          ; 0D53 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0D58 _ 89. 45, F4
        call    io_cli                                  ; 0D5B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0D60 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0D63 _ FF. 75, 08
        push    968                                     ; 0D66 _ 68, 000003C8
        call    io_out8                                 ; 0D6B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D70 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0D73 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0D76 _ 89. 45, F0
        jmp     ?_019                                   ; 0D79 _ EB, 65

?_018:  mov     eax, dword [ebp+10H]                    ; 0D7B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0D7E _ 0F B6. 00
        shr     al, 2                                   ; 0D81 _ C0. E8, 02
        movzx   eax, al                                 ; 0D84 _ 0F B6. C0
        sub     esp, 8                                  ; 0D87 _ 83. EC, 08
        push    eax                                     ; 0D8A _ 50
        push    969                                     ; 0D8B _ 68, 000003C9
        call    io_out8                                 ; 0D90 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D95 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0D98 _ 8B. 45, 10
        add     eax, 1                                  ; 0D9B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0D9E _ 0F B6. 00
        shr     al, 2                                   ; 0DA1 _ C0. E8, 02
        movzx   eax, al                                 ; 0DA4 _ 0F B6. C0
        sub     esp, 8                                  ; 0DA7 _ 83. EC, 08
        push    eax                                     ; 0DAA _ 50
        push    969                                     ; 0DAB _ 68, 000003C9
        call    io_out8                                 ; 0DB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB5 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0DB8 _ 8B. 45, 10
        add     eax, 2                                  ; 0DBB _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0DBE _ 0F B6. 00
        shr     al, 2                                   ; 0DC1 _ C0. E8, 02
        movzx   eax, al                                 ; 0DC4 _ 0F B6. C0
        sub     esp, 8                                  ; 0DC7 _ 83. EC, 08
        push    eax                                     ; 0DCA _ 50
        push    969                                     ; 0DCB _ 68, 000003C9
        call    io_out8                                 ; 0DD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DD5 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0DD8 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0DDC _ 83. 45, F0, 01
?_019:  mov     eax, dword [ebp-10H]                    ; 0DE0 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0DE3 _ 3B. 45, 0C
        jle     ?_018                                   ; 0DE6 _ 7E, 93
        sub     esp, 12                                 ; 0DE8 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0DEB _ FF. 75, F4
        call    io_store_eflags                         ; 0DEE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DF3 _ 83. C4, 10
        nop                                             ; 0DF6 _ 90
        leave                                           ; 0DF7 _ C9
        ret                                             ; 0DF8 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0DF9 _ 55
        mov     ebp, esp                                ; 0DFA _ 89. E5
        sub     esp, 20                                 ; 0DFC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0DFF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0E02 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0E05 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0E08 _ 89. 45, FC
        jmp     ?_023                                   ; 0E0B _ EB, 33

?_020:  mov     eax, dword [ebp+14H]                    ; 0E0D _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0E10 _ 89. 45, F8
        jmp     ?_022                                   ; 0E13 _ EB, 1F

?_021:  mov     eax, dword [ebp-4H]                     ; 0E15 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0E18 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0E1C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E1E _ 8B. 45, F8
        add     eax, edx                                ; 0E21 _ 01. D0
        mov     edx, eax                                ; 0E23 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E25 _ 8B. 45, 08
        add     edx, eax                                ; 0E28 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E2A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E2E _ 88. 02
        add     dword [ebp-8H], 1                       ; 0E30 _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 0E34 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0E37 _ 3B. 45, 1C
        jle     ?_021                                   ; 0E3A _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0E3C _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 0E40 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0E43 _ 3B. 45, 20
        jle     ?_020                                   ; 0E46 _ 7E, C5
        nop                                             ; 0E48 _ 90
        leave                                           ; 0E49 _ C9
        ret                                             ; 0E4A _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0E4B _ 55
        mov     ebp, esp                                ; 0E4C _ 89. E5
        push    edi                                     ; 0E4E _ 57
        push    esi                                     ; 0E4F _ 56
        push    ebx                                     ; 0E50 _ 53
        sub     esp, 16                                 ; 0E51 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0E54 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0E57 _ 8B. 45, 14
        add     eax, edx                                ; 0E5A _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0E5C _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0E5F _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0E62 _ 8B. 45, 18
        add     eax, edx                                ; 0E65 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0E67 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0E6A _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0E6D _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0E70 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0E73 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0E76 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0E79 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0E7C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0E7F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0E82 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E85 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E88 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0E8B _ 8B. 00
        push    edi                                     ; 0E8D _ 57
        push    esi                                     ; 0E8E _ 56
        push    ebx                                     ; 0E8F _ 53
        push    ecx                                     ; 0E90 _ 51
        push    15                                      ; 0E91 _ 6A, 0F
        push    edx                                     ; 0E93 _ 52
        push    eax                                     ; 0E94 _ 50
        call    boxfill8                                ; 0E95 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0E9A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0E9D _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0EA0 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0EA3 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0EA6 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0EA9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0EAC _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0EAF _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0EB2 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0EB5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0EB8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0EBB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0EBE _ 8B. 00
        push    edi                                     ; 0EC0 _ 57
        push    esi                                     ; 0EC1 _ 56
        push    ebx                                     ; 0EC2 _ 53
        push    ecx                                     ; 0EC3 _ 51
        push    15                                      ; 0EC4 _ 6A, 0F
        push    edx                                     ; 0EC6 _ 52
        push    eax                                     ; 0EC7 _ 50
        call    boxfill8                                ; 0EC8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0ECD _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0ED0 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0ED3 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0ED6 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0ED9 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0EDC _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 0EDF _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 0EE2 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0EE5 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0EE8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0EEB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0EEE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0EF1 _ 8B. 00
        push    edi                                     ; 0EF3 _ 57
        push    esi                                     ; 0EF4 _ 56
        push    ebx                                     ; 0EF5 _ 53
        push    ecx                                     ; 0EF6 _ 51
        push    7                                       ; 0EF7 _ 6A, 07
        push    edx                                     ; 0EF9 _ 52
        push    eax                                     ; 0EFA _ 50
        call    boxfill8                                ; 0EFB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F00 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0F03 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0F06 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0F09 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 0F0C _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 0F0F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F12 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 0F15 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 0F18 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 0F1B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F1E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F21 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F24 _ 8B. 00
        push    edi                                     ; 0F26 _ 57
        push    esi                                     ; 0F27 _ 56
        push    ebx                                     ; 0F28 _ 53
        push    ecx                                     ; 0F29 _ 51
        push    7                                       ; 0F2A _ 6A, 07
        push    edx                                     ; 0F2C _ 52
        push    eax                                     ; 0F2D _ 50
        call    boxfill8                                ; 0F2E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F33 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 0F36 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 0F39 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0F3C _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0F3F _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 0F42 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 0F45 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 0F48 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F4B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F4E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F51 _ 8B. 00
        push    esi                                     ; 0F53 _ 56
        push    dword [ebp-14H]                         ; 0F54 _ FF. 75, EC
        push    ebx                                     ; 0F57 _ 53
        push    ecx                                     ; 0F58 _ 51
        push    0                                       ; 0F59 _ 6A, 00
        push    edx                                     ; 0F5B _ 52
        push    eax                                     ; 0F5C _ 50
        call    boxfill8                                ; 0F5D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F62 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 0F65 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 0F68 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0F6B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0F6E _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 0F71 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0F74 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0F77 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F7A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F7D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F80 _ 8B. 00
        push    dword [ebp-10H]                         ; 0F82 _ FF. 75, F0
        push    esi                                     ; 0F85 _ 56
        push    ebx                                     ; 0F86 _ 53
        push    ecx                                     ; 0F87 _ 51
        push    0                                       ; 0F88 _ 6A, 00
        push    edx                                     ; 0F8A _ 52
        push    eax                                     ; 0F8B _ 50
        call    boxfill8                                ; 0F8C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F91 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0F94 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 0F97 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0F9A _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 0F9D _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 0FA0 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0FA3 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0FA6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FA9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FAC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FAF _ 8B. 00
        push    esi                                     ; 0FB1 _ 56
        push    dword [ebp-14H]                         ; 0FB2 _ FF. 75, EC
        push    ebx                                     ; 0FB5 _ 53
        push    ecx                                     ; 0FB6 _ 51
        push    8                                       ; 0FB7 _ 6A, 08
        push    edx                                     ; 0FB9 _ 52
        push    eax                                     ; 0FBA _ 50
        call    boxfill8                                ; 0FBB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FC0 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FC3 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0FC6 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 0FC9 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0FCC _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0FCF _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0FD2 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 0FD5 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 0FD8 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 0FDB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FDE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FE1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FE4 _ 8B. 00
        push    edi                                     ; 0FE6 _ 57
        push    esi                                     ; 0FE7 _ 56
        push    ebx                                     ; 0FE8 _ 53
        push    ecx                                     ; 0FE9 _ 51
        push    8                                       ; 0FEA _ 6A, 08
        push    edx                                     ; 0FEC _ 52
        push    eax                                     ; 0FED _ 50
        call    boxfill8                                ; 0FEE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FF3 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 0FF6 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 0FF9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 0FFC _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 0FFF _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1002 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1005 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1008 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 100B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 100E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1011 _ 8B. 00
        push    dword [ebp-10H]                         ; 1013 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1016 _ FF. 75, EC
        push    esi                                     ; 1019 _ 56
        push    ebx                                     ; 101A _ 53
        push    ecx                                     ; 101B _ 51
        push    edx                                     ; 101C _ 52
        push    eax                                     ; 101D _ 50
        call    boxfill8                                ; 101E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1023 _ 83. C4, 1C
        nop                                             ; 1026 _ 90
        lea     esp, [ebp-0CH]                          ; 1027 _ 8D. 65, F4
        pop     ebx                                     ; 102A _ 5B
        pop     esi                                     ; 102B _ 5E
        pop     edi                                     ; 102C _ 5F
        pop     ebp                                     ; 102D _ 5D
        ret                                             ; 102E _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 102F _ 55
        mov     ebp, esp                                ; 1030 _ 89. E5
        sub     esp, 20                                 ; 1032 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1035 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1038 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 103B _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 1042 _ E9, 0000016C

?_024:  mov     edx, dword [ebp-4H]                     ; 1047 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 104A _ 8B. 45, 1C
        add     eax, edx                                ; 104D _ 01. D0
        movzx   eax, byte [eax]                         ; 104F _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1052 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1055 _ 80. 7D, FB, 00
        jns     ?_025                                   ; 1059 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 105B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 105E _ 8B. 45, FC
        add     eax, edx                                ; 1061 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1063 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1067 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1069 _ 8B. 45, 10
        add     eax, edx                                ; 106C _ 01. D0
        mov     edx, eax                                ; 106E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1070 _ 8B. 45, 08
        add     edx, eax                                ; 1073 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1075 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1079 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 107B _ 0F BE. 45, FB
        and     eax, 40H                                ; 107F _ 83. E0, 40
        test    eax, eax                                ; 1082 _ 85. C0
        jz      ?_026                                   ; 1084 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1086 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1089 _ 8B. 45, FC
        add     eax, edx                                ; 108C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 108E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1092 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1094 _ 8B. 45, 10
        add     eax, edx                                ; 1097 _ 01. D0
        lea     edx, [eax+1H]                           ; 1099 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 109C _ 8B. 45, 08
        add     edx, eax                                ; 109F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10A1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10A5 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 10A7 _ 0F BE. 45, FB
        and     eax, 20H                                ; 10AB _ 83. E0, 20
        test    eax, eax                                ; 10AE _ 85. C0
        jz      ?_027                                   ; 10B0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 10B2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 10B5 _ 8B. 45, FC
        add     eax, edx                                ; 10B8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10BA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 10BE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 10C0 _ 8B. 45, 10
        add     eax, edx                                ; 10C3 _ 01. D0
        lea     edx, [eax+2H]                           ; 10C5 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 10C8 _ 8B. 45, 08
        add     edx, eax                                ; 10CB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10CD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10D1 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 10D3 _ 0F BE. 45, FB
        and     eax, 10H                                ; 10D7 _ 83. E0, 10
        test    eax, eax                                ; 10DA _ 85. C0
        jz      ?_028                                   ; 10DC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 10DE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 10E1 _ 8B. 45, FC
        add     eax, edx                                ; 10E4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10E6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 10EA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 10EC _ 8B. 45, 10
        add     eax, edx                                ; 10EF _ 01. D0
        lea     edx, [eax+3H]                           ; 10F1 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 10F4 _ 8B. 45, 08
        add     edx, eax                                ; 10F7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10F9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10FD _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 10FF _ 0F BE. 45, FB
        and     eax, 08H                                ; 1103 _ 83. E0, 08
        test    eax, eax                                ; 1106 _ 85. C0
        jz      ?_029                                   ; 1108 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 110A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 110D _ 8B. 45, FC
        add     eax, edx                                ; 1110 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1112 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1116 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1118 _ 8B. 45, 10
        add     eax, edx                                ; 111B _ 01. D0
        lea     edx, [eax+4H]                           ; 111D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1120 _ 8B. 45, 08
        add     edx, eax                                ; 1123 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1125 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1129 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 112B _ 0F BE. 45, FB
        and     eax, 04H                                ; 112F _ 83. E0, 04
        test    eax, eax                                ; 1132 _ 85. C0
        jz      ?_030                                   ; 1134 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1136 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1139 _ 8B. 45, FC
        add     eax, edx                                ; 113C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 113E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1142 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1144 _ 8B. 45, 10
        add     eax, edx                                ; 1147 _ 01. D0
        lea     edx, [eax+5H]                           ; 1149 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 114C _ 8B. 45, 08
        add     edx, eax                                ; 114F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1151 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1155 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 1157 _ 0F BE. 45, FB
        and     eax, 02H                                ; 115B _ 83. E0, 02
        test    eax, eax                                ; 115E _ 85. C0
        jz      ?_031                                   ; 1160 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1162 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1165 _ 8B. 45, FC
        add     eax, edx                                ; 1168 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 116A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 116E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1170 _ 8B. 45, 10
        add     eax, edx                                ; 1173 _ 01. D0
        lea     edx, [eax+6H]                           ; 1175 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1178 _ 8B. 45, 08
        add     edx, eax                                ; 117B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 117D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1181 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1183 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1187 _ 83. E0, 01
        test    eax, eax                                ; 118A _ 85. C0
        jz      ?_032                                   ; 118C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 118E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1191 _ 8B. 45, FC
        add     eax, edx                                ; 1194 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1196 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 119A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 119C _ 8B. 45, 10
        add     eax, edx                                ; 119F _ 01. D0
        lea     edx, [eax+7H]                           ; 11A1 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 11A4 _ 8B. 45, 08
        add     edx, eax                                ; 11A7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11A9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11AD _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 11AF _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 11B3 _ 83. 7D, FC, 0F
        jle     ?_024                                   ; 11B7 _ 0F 8E, FFFFFE8A
        nop                                             ; 11BD _ 90
        leave                                           ; 11BE _ C9
        ret                                             ; 11BF _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 11C0 _ 55
        mov     ebp, esp                                ; 11C1 _ 89. E5
        sub     esp, 20                                 ; 11C3 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 11C6 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 11C9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 11CC _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 11D3 _ E9, 000000B1

?_034:  mov     dword [ebp-8H], 0                       ; 11D8 _ C7. 45, F8, 00000000
        jmp     ?_039                                   ; 11DF _ E9, 00000097

?_035:  mov     eax, dword [ebp-4H]                     ; 11E4 _ 8B. 45, FC
        shl     eax, 4                                  ; 11E7 _ C1. E0, 04
        mov     edx, eax                                ; 11EA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 11EC _ 8B. 45, F8
        add     eax, edx                                ; 11EF _ 01. D0
        add     eax, cursor.2337                        ; 11F1 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 11F6 _ 0F B6. 00
        cmp     al, 42                                  ; 11F9 _ 3C, 2A
        jnz     ?_036                                   ; 11FB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 11FD _ 8B. 45, FC
        shl     eax, 4                                  ; 1200 _ C1. E0, 04
        mov     edx, eax                                ; 1203 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1205 _ 8B. 45, F8
        add     eax, edx                                ; 1208 _ 01. D0
        mov     edx, eax                                ; 120A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 120C _ 8B. 45, 08
        add     eax, edx                                ; 120F _ 01. D0
        mov     byte [eax], 0                           ; 1211 _ C6. 00, 00
?_036:  mov     eax, dword [ebp-4H]                     ; 1214 _ 8B. 45, FC
        shl     eax, 4                                  ; 1217 _ C1. E0, 04
        mov     edx, eax                                ; 121A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 121C _ 8B. 45, F8
        add     eax, edx                                ; 121F _ 01. D0
        add     eax, cursor.2337                        ; 1221 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1226 _ 0F B6. 00
        cmp     al, 79                                  ; 1229 _ 3C, 4F
        jnz     ?_037                                   ; 122B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 122D _ 8B. 45, FC
        shl     eax, 4                                  ; 1230 _ C1. E0, 04
        mov     edx, eax                                ; 1233 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1235 _ 8B. 45, F8
        add     eax, edx                                ; 1238 _ 01. D0
        mov     edx, eax                                ; 123A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 123C _ 8B. 45, 08
        add     eax, edx                                ; 123F _ 01. D0
        mov     byte [eax], 7                           ; 1241 _ C6. 00, 07
?_037:  mov     eax, dword [ebp-4H]                     ; 1244 _ 8B. 45, FC
        shl     eax, 4                                  ; 1247 _ C1. E0, 04
        mov     edx, eax                                ; 124A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 124C _ 8B. 45, F8
        add     eax, edx                                ; 124F _ 01. D0
        add     eax, cursor.2337                        ; 1251 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1256 _ 0F B6. 00
        cmp     al, 46                                  ; 1259 _ 3C, 2E
        jnz     ?_038                                   ; 125B _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 125D _ 8B. 45, FC
        shl     eax, 4                                  ; 1260 _ C1. E0, 04
        mov     edx, eax                                ; 1263 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1265 _ 8B. 45, F8
        add     eax, edx                                ; 1268 _ 01. D0
        mov     edx, eax                                ; 126A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 126C _ 8B. 45, 08
        add     edx, eax                                ; 126F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1271 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1275 _ 88. 02
?_038:  add     dword [ebp-8H], 1                       ; 1277 _ 83. 45, F8, 01
?_039:  cmp     dword [ebp-8H], 15                      ; 127B _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 127F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1285 _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 1289 _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 128D _ 0F 8E, FFFFFF45
        nop                                             ; 1293 _ 90
        leave                                           ; 1294 _ C9
        ret                                             ; 1295 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1296 _ 55
        mov     ebp, esp                                ; 1297 _ 89. E5
        push    ebx                                     ; 1299 _ 53
        sub     esp, 16                                 ; 129A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 129D _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 12A4 _ EB, 50

?_041:  mov     dword [ebp-0CH], 0                      ; 12A6 _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 12AD _ EB, 3B

?_042:  mov     eax, dword [ebp-8H]                     ; 12AF _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 12B2 _ 0F AF. 45, 24
        mov     edx, eax                                ; 12B6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 12B8 _ 8B. 45, F4
        add     eax, edx                                ; 12BB _ 01. D0
        mov     edx, eax                                ; 12BD _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 12BF _ 8B. 45, 20
        add     eax, edx                                ; 12C2 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 12C4 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 12C7 _ 8B. 55, F8
        add     edx, ecx                                ; 12CA _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 12CC _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 12D0 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 12D3 _ 8B. 4D, F4
        add     ecx, ebx                                ; 12D6 _ 01. D9
        add     edx, ecx                                ; 12D8 _ 01. CA
        mov     ecx, edx                                ; 12DA _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 12DC _ 8B. 55, 08
        add     edx, ecx                                ; 12DF _ 01. CA
        movzx   eax, byte [eax]                         ; 12E1 _ 0F B6. 00
        mov     byte [edx], al                          ; 12E4 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 12E6 _ 83. 45, F4, 01
?_043:  mov     eax, dword [ebp-0CH]                    ; 12EA _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 12ED _ 3B. 45, 10
        jl      ?_042                                   ; 12F0 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 12F2 _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 12F6 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 12F9 _ 3B. 45, 14
        jl      ?_041                                   ; 12FC _ 7C, A8
        nop                                             ; 12FE _ 90
        add     esp, 16                                 ; 12FF _ 83. C4, 10
        pop     ebx                                     ; 1302 _ 5B
        pop     ebp                                     ; 1303 _ 5D
        ret                                             ; 1304 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1305 _ 55
        mov     ebp, esp                                ; 1306 _ 89. E5
        sub     esp, 24                                 ; 1308 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 130B _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1310 _ 89. 45, EC
        movzx   eax, word [?_189]                       ; 1313 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 131A _ 98
        mov     dword [ebp-10H], eax                    ; 131B _ 89. 45, F0
        movzx   eax, word [?_190]                       ; 131E _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1325 _ 98
        mov     dword [ebp-0CH], eax                    ; 1326 _ 89. 45, F4
        sub     esp, 8                                  ; 1329 _ 83. EC, 08
        push    32                                      ; 132C _ 6A, 20
        push    32                                      ; 132E _ 6A, 20
        call    io_out8                                 ; 1330 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1335 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1338 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 133C _ 83. EC, 0C
        push    96                                      ; 133F _ 6A, 60
        call    io_in8                                  ; 1341 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1346 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1349 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 134C _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1350 _ 83. EC, 08
        push    eax                                     ; 1353 _ 50
        push    keyInfo                                 ; 1354 _ 68, 00000008(d)
        call    fifo8_put                               ; 1359 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 135E _ 83. C4, 10
        nop                                             ; 1361 _ 90
        leave                                           ; 1362 _ C9
        ret                                             ; 1363 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1364 _ 55
        mov     ebp, esp                                ; 1365 _ 89. E5
        sub     esp, 40                                 ; 1367 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 136A _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 136D _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1370 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1374 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1377 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 137A _ 0F BE. 45, F7
        sub     esp, 12                                 ; 137E _ 83. EC, 0C
        push    eax                                     ; 1381 _ 50
        call    charToVal                               ; 1382 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1387 _ 83. C4, 10
        mov     byte [?_188], al                        ; 138A _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 138F _ 0F B6. 45, E4
        shr     al, 4                                   ; 1393 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1396 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1399 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 139D _ 0F BE. C0
        sub     esp, 12                                 ; 13A0 _ 83. EC, 0C
        push    eax                                     ; 13A3 _ 50
        call    charToVal                               ; 13A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13A9 _ 83. C4, 10
        mov     byte [?_187], al                        ; 13AC _ A2, 00000002(d)
        mov     eax, keyVal                             ; 13B1 _ B8, 00000000(d)
        leave                                           ; 13B6 _ C9
        ret                                             ; 13B7 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 13B8 _ 55
        mov     ebp, esp                                ; 13B9 _ 89. E5
        sub     esp, 4                                  ; 13BB _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 13BE _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 13C1 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 13C4 _ 80. 7D, FC, 09
        jle     ?_045                                   ; 13C8 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 13CA _ 0F B6. 45, FC
        add     eax, 55                                 ; 13CE _ 83. C0, 37
        jmp     ?_046                                   ; 13D1 _ EB, 07

?_045:  movzx   eax, byte [ebp-4H]                      ; 13D3 _ 0F B6. 45, FC
        add     eax, 48                                 ; 13D7 _ 83. C0, 30
?_046:  leave                                           ; 13DA _ C9
        ret                                             ; 13DB _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 13DC _ 55
        mov     ebp, esp                                ; 13DD _ 89. E5
        sub     esp, 16                                 ; 13DF _ 83. EC, 10
        mov     byte [str.2380], 48                     ; 13E2 _ C6. 05, 00000244(d), 30
        mov     byte [?_192], 120                       ; 13E9 _ C6. 05, 00000245(d), 78
        mov     byte [?_193], 0                         ; 13F0 _ C6. 05, 0000024E(d), 00
        mov     dword [ebp-0CH], 2                      ; 13F7 _ C7. 45, F4, 00000002
        jmp     ?_048                                   ; 13FE _ EB, 0F

?_047:  mov     eax, dword [ebp-0CH]                    ; 1400 _ 8B. 45, F4
        add     eax, str.2380                           ; 1403 _ 05, 00000244(d)
        mov     byte [eax], 48                          ; 1408 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 140B _ 83. 45, F4, 01
?_048:  cmp     dword [ebp-0CH], 9                      ; 140F _ 83. 7D, F4, 09
        jle     ?_047                                   ; 1413 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1415 _ C7. 45, F8, 00000009
        jmp     ?_051                                   ; 141C _ EB, 48

?_049:  mov     eax, dword [ebp+8H]                     ; 141E _ 8B. 45, 08
        and     eax, 0FH                                ; 1421 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1424 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1427 _ 8B. 45, 08
        shr     eax, 4                                  ; 142A _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 142D _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1430 _ 83. 7D, FC, 09
        jle     ?_050                                   ; 1434 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1436 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1439 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 143C _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 143F _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1442 _ 89. 55, F8
        mov     edx, ecx                                ; 1445 _ 89. CA
        mov     byte [str.2380+eax], dl                 ; 1447 _ 88. 90, 00000244(d)
        jmp     ?_051                                   ; 144D _ EB, 17

?_050:  mov     eax, dword [ebp-4H]                     ; 144F _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1452 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1455 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1458 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 145B _ 89. 55, F8
        mov     edx, ecx                                ; 145E _ 89. CA
        mov     byte [str.2380+eax], dl                 ; 1460 _ 88. 90, 00000244(d)
?_051:  cmp     dword [ebp-8H], 1                       ; 1466 _ 83. 7D, F8, 01
        jle     ?_052                                   ; 146A _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 146C _ 83. 7D, 08, 00
        jnz     ?_049                                   ; 1470 _ 75, AC
?_052:  mov     eax, str.2380                           ; 1472 _ B8, 00000244(d)
        leave                                           ; 1477 _ C9
        ret                                             ; 1478 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1479 _ 55
        mov     ebp, esp                                ; 147A _ 89. E5
        sub     esp, 8                                  ; 147C _ 83. EC, 08
?_053:  sub     esp, 12                                 ; 147F _ 83. EC, 0C
        push    100                                     ; 1482 _ 6A, 64
        call    io_in8                                  ; 1484 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1489 _ 83. C4, 10
        movsx   eax, al                                 ; 148C _ 0F BE. C0
        and     eax, 02H                                ; 148F _ 83. E0, 02
        test    eax, eax                                ; 1492 _ 85. C0
        jz      ?_054                                   ; 1494 _ 74, 02
        jmp     ?_053                                   ; 1496 _ EB, E7

?_054:  nop                                             ; 1498 _ 90
        nop                                             ; 1499 _ 90
        leave                                           ; 149A _ C9
        ret                                             ; 149B _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 149C _ 55
        mov     ebp, esp                                ; 149D _ 89. E5
        sub     esp, 8                                  ; 149F _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 14A2 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 14A7 _ 83. EC, 08
        push    96                                      ; 14AA _ 6A, 60
        push    100                                     ; 14AC _ 6A, 64
        call    io_out8                                 ; 14AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14B3 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 14B6 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 14BB _ 83. EC, 08
        push    71                                      ; 14BE _ 6A, 47
        push    96                                      ; 14C0 _ 6A, 60
        call    io_out8                                 ; 14C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14C7 _ 83. C4, 10
        nop                                             ; 14CA _ 90
        leave                                           ; 14CB _ C9
        ret                                             ; 14CC _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 14CD _ 55
        mov     ebp, esp                                ; 14CE _ 89. E5
        sub     esp, 8                                  ; 14D0 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 14D3 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 14D8 _ 83. EC, 08
        push    212                                     ; 14DB _ 68, 000000D4
        push    100                                     ; 14E0 _ 6A, 64
        call    io_out8                                 ; 14E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14E7 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 14EA _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 14EF _ 83. EC, 08
        push    244                                     ; 14F2 _ 68, 000000F4
        push    96                                      ; 14F7 _ 6A, 60
        call    io_out8                                 ; 14F9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14FE _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1501 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1504 _ C6. 40, 03, 00
        nop                                             ; 1508 _ 90
        leave                                           ; 1509 _ C9
        ret                                             ; 150A _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 150B _ 55
        mov     ebp, esp                                ; 150C _ 89. E5
        sub     esp, 24                                 ; 150E _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1511 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1515 _ 83. EC, 08
        push    32                                      ; 1518 _ 6A, 20
        push    160                                     ; 151A _ 68, 000000A0
        call    io_out8                                 ; 151F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1524 _ 83. C4, 10
        sub     esp, 8                                  ; 1527 _ 83. EC, 08
        push    32                                      ; 152A _ 6A, 20
        push    32                                      ; 152C _ 6A, 20
        call    io_out8                                 ; 152E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1533 _ 83. C4, 10
        sub     esp, 12                                 ; 1536 _ 83. EC, 0C
        push    96                                      ; 1539 _ 6A, 60
        call    io_in8                                  ; 153B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1540 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1543 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1546 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 154A _ 83. EC, 08
        push    eax                                     ; 154D _ 50
        push    mouseInfo                               ; 154E _ 68, 00000020(d)
        call    fifo8_put                               ; 1553 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1558 _ 83. C4, 10
        nop                                             ; 155B _ 90
        leave                                           ; 155C _ C9
        ret                                             ; 155D _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 155E _ 55
        mov     ebp, esp                                ; 155F _ 89. E5
        sub     esp, 40                                 ; 1561 _ 83. EC, 28
        call    io_sti                                  ; 1564 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1569 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 156E _ 89. 45, E8
        movzx   eax, word [?_189]                       ; 1571 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1578 _ 98
        mov     dword [ebp-14H], eax                    ; 1579 _ 89. 45, EC
        movzx   eax, word [?_190]                       ; 157C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1583 _ 98
        mov     dword [ebp-10H], eax                    ; 1584 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1587 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 158B _ 83. EC, 0C
        push    keyInfo                                 ; 158E _ 68, 00000008(d)
        call    fifo8_get                               ; 1593 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1598 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 159B _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 159E _ 0F B6. 45, E7
        sub     esp, 12                                 ; 15A2 _ 83. EC, 0C
        push    eax                                     ; 15A5 _ 50
        call    charToHex                               ; 15A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15AB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 15AE _ 89. 45, F4
        mov     edx, dword [line.2413]                  ; 15B1 _ 8B. 15, 00000250(d)
        mov     eax, dword [pos.2412]                   ; 15B7 _ A1, 00000254(d)
        sub     esp, 8                                  ; 15BC _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 15BF _ FF. 75, F4
        push    7                                       ; 15C2 _ 6A, 07
        push    edx                                     ; 15C4 _ 52
        push    eax                                     ; 15C5 _ 50
        push    dword [ebp+0CH]                         ; 15C6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 15C9 _ FF. 75, 08
        call    showString                              ; 15CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15D1 _ 83. C4, 20
        mov     eax, dword [pos.2412]                   ; 15D4 _ A1, 00000254(d)
        add     eax, 32                                 ; 15D9 _ 83. C0, 20
        mov     dword [pos.2412], eax                   ; 15DC _ A3, 00000254(d)
        mov     eax, dword [pos.2412]                   ; 15E1 _ A1, 00000254(d)
        cmp     dword [ebp-14H], eax                    ; 15E6 _ 39. 45, EC
        jnz     ?_057                                   ; 15E9 _ 75, 28
        mov     eax, dword [line.2413]                  ; 15EB _ A1, 00000250(d)
        cmp     dword [ebp-10H], eax                    ; 15F0 _ 39. 45, F0
        jz      ?_055                                   ; 15F3 _ 74, 0A
        mov     eax, dword [line.2413]                  ; 15F5 _ A1, 00000250(d)
        add     eax, 16                                 ; 15FA _ 83. C0, 10
        jmp     ?_056                                   ; 15FD _ EB, 05

?_055:  mov     eax, 0                                  ; 15FF _ B8, 00000000
?_056:  mov     dword [line.2413], eax                  ; 1604 _ A3, 00000250(d)
        mov     dword [pos.2412], 0                     ; 1609 _ C7. 05, 00000254(d), 00000000
?_057:  nop                                             ; 1613 _ 90
        leave                                           ; 1614 _ C9
        ret                                             ; 1615 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1616 _ 55
        mov     ebp, esp                                ; 1617 _ 89. E5
        sub     esp, 24                                 ; 1619 _ 83. EC, 18
        call    io_sti                                  ; 161C _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1621 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1625 _ 83. EC, 0C
        push    mouseInfo                               ; 1628 _ 68, 00000020(d)
        call    fifo8_get                               ; 162D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1632 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1635 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1638 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 163C _ 83. EC, 08
        push    eax                                     ; 163F _ 50
        push    mouse_move                              ; 1640 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1645 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 164A _ 83. C4, 10
        test    eax, eax                                ; 164D _ 85. C0
        jz      ?_058                                   ; 164F _ 74, 60
        sub     esp, 4                                  ; 1651 _ 83. EC, 04
        push    mouse_move                              ; 1654 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1659 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 165C _ FF. 75, 08
        call    computeMousePos                         ; 165F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1664 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1667 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 166D _ A1, 000000F0(d)
        push    edx                                     ; 1672 _ 52
        push    eax                                     ; 1673 _ 50
        push    dword [ebp+10H]                         ; 1674 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1677 _ FF. 75, 08
        call    sheet_slide                             ; 167A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 167F _ 83. C4, 10
        mov     eax, dword [?_191]                      ; 1682 _ A1, 000000EC(d)
        and     eax, 01H                                ; 1687 _ 83. E0, 01
        test    eax, eax                                ; 168A _ 85. C0
        jz      ?_058                                   ; 168C _ 74, 23
        mov     eax, dword [my]                         ; 168E _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1693 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1696 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 169B _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 169E _ A1, 00000224(d)
        push    ecx                                     ; 16A3 _ 51
        push    edx                                     ; 16A4 _ 52
        push    eax                                     ; 16A5 _ 50
        push    dword [ebp+8H]                          ; 16A6 _ FF. 75, 08
        call    sheet_slide                             ; 16A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16AE _ 83. C4, 10
?_058:  nop                                             ; 16B1 _ 90
        leave                                           ; 16B2 _ C9
        ret                                             ; 16B3 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 16B4 _ 55
        mov     ebp, esp                                ; 16B5 _ 89. E5
        sub     esp, 4                                  ; 16B7 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 16BA _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 16BD _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 16C0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 16C3 _ 0F B6. 40, 03
        test    al, al                                  ; 16C7 _ 84. C0
        jnz     ?_060                                   ; 16C9 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 16CB _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 16CF _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 16D1 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 16D4 _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 16D8 _ B8, 00000000
        jmp     ?_067                                   ; 16DD _ E9, 0000010C

?_060:  mov     eax, dword [ebp+8H]                     ; 16E2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 16E5 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 16E9 _ 3C, 01
        jnz     ?_062                                   ; 16EB _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 16ED _ 0F B6. 45, FC
        or      eax, 37H                                ; 16F1 _ 83. C8, 37
        cmp     al, 63                                  ; 16F4 _ 3C, 3F
        jnz     ?_061                                   ; 16F6 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 16F8 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 16FB _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 16FF _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1701 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1704 _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 1708 _ B8, 00000000
        jmp     ?_067                                   ; 170D _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 1712 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1715 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1719 _ 3C, 02
        jnz     ?_063                                   ; 171B _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 171D _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1720 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1724 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1727 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 172A _ C6. 40, 03, 03
        mov     eax, 0                                  ; 172E _ B8, 00000000
        jmp     ?_067                                   ; 1733 _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 1738 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 173B _ 0F B6. 40, 03
        cmp     al, 3                                   ; 173F _ 3C, 03
        jne     ?_066                                   ; 1741 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1747 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 174A _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 174E _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1751 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1754 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1758 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 175B _ 0F B6. 00
        movzx   eax, al                                 ; 175E _ 0F B6. C0
        and     eax, 07H                                ; 1761 _ 83. E0, 07
        mov     edx, eax                                ; 1764 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1766 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1769 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 176C _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 176F _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1773 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1776 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1779 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 177C _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 177F _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1783 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1786 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1789 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 178C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 178F _ 0F B6. 00
        movzx   eax, al                                 ; 1792 _ 0F B6. C0
        and     eax, 10H                                ; 1795 _ 83. E0, 10
        test    eax, eax                                ; 1798 _ 85. C0
        jz      ?_064                                   ; 179A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 179C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 179F _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 17A2 _ 0D, FFFFFF00
        mov     edx, eax                                ; 17A7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17A9 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 17AC _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 17AF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 17B2 _ 0F B6. 00
        movzx   eax, al                                 ; 17B5 _ 0F B6. C0
        and     eax, 20H                                ; 17B8 _ 83. E0, 20
        test    eax, eax                                ; 17BB _ 85. C0
        jz      ?_065                                   ; 17BD _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 17BF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 17C2 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 17C5 _ 0D, FFFFFF00
        mov     edx, eax                                ; 17CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17CC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 17CF _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 17D2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 17D5 _ 8B. 40, 08
        neg     eax                                     ; 17D8 _ F7. D8
        mov     edx, eax                                ; 17DA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17DC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 17DF _ 89. 50, 08
        mov     eax, 1                                  ; 17E2 _ B8, 00000001
        jmp     ?_067                                   ; 17E7 _ EB, 05

?_066:  mov     eax, 4294967295                         ; 17E9 _ B8, FFFFFFFF
?_067:  leave                                           ; 17EE _ C9
        ret                                             ; 17EF _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 17F0 _ 55
        mov     ebp, esp                                ; 17F1 _ 89. E5
        sub     esp, 16                                 ; 17F3 _ 83. EC, 10
        movzx   eax, word [?_189]                       ; 17F6 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 17FD _ 98
        mov     dword [ebp-8H], eax                     ; 17FE _ 89. 45, F8
        movzx   eax, word [?_190]                       ; 1801 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1808 _ 98
        mov     dword [ebp-4H], eax                     ; 1809 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 180C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 180F _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1812 _ A1, 000000F0(d)
        add     eax, edx                                ; 1817 _ 01. D0
        mov     dword [mx], eax                         ; 1819 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 181E _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1821 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1824 _ A1, 000000F4(d)
        add     eax, edx                                ; 1829 _ 01. D0
        mov     dword [my], eax                         ; 182B _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1830 _ A1, 000000F0(d)
        test    eax, eax                                ; 1835 _ 85. C0
        jns     ?_068                                   ; 1837 _ 79, 0A
        mov     dword [mx], 0                           ; 1839 _ C7. 05, 000000F0(d), 00000000
?_068:  mov     eax, dword [my]                         ; 1843 _ A1, 000000F4(d)
        test    eax, eax                                ; 1848 _ 85. C0
        jns     ?_069                                   ; 184A _ 79, 0A
        mov     dword [my], 0                           ; 184C _ C7. 05, 000000F4(d), 00000000
?_069:  mov     eax, dword [ebp-8H]                     ; 1856 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1859 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 185C _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1861 _ 39. C2
        jge     ?_070                                   ; 1863 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1865 _ 8B. 45, F8
        sub     eax, 9                                  ; 1868 _ 83. E8, 09
        mov     dword [mx], eax                         ; 186B _ A3, 000000F0(d)
?_070:  mov     eax, dword [ebp-4H]                     ; 1870 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1873 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1876 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 187B _ 39. C2
        jge     ?_071                                   ; 187D _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 187F _ 8B. 45, FC
        sub     eax, 1                                  ; 1882 _ 83. E8, 01
        mov     dword [my], eax                         ; 1885 _ A3, 000000F4(d)
?_071:  nop                                             ; 188A _ 90
        leave                                           ; 188B _ C9
        ret                                             ; 188C _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 188D _ 55
        mov     ebp, esp                                ; 188E _ 89. E5
        sub     esp, 56                                 ; 1890 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1893 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 189A _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 18A1 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 18A8 _ C7. 45, DC, 00000050
        push    100                                     ; 18AF _ 6A, 64
        push    dword [ebp+1CH]                         ; 18B1 _ FF. 75, 1C
        push    0                                       ; 18B4 _ 6A, 00
        push    0                                       ; 18B6 _ 6A, 00
        push    14                                      ; 18B8 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 18BA _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 18BD _ FF. 75, 14
        call    boxfill8                                ; 18C0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 18C5 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 18C8 _ 8B. 45, 20
        movsx   eax, al                                 ; 18CB _ 0F BE. C0
        sub     esp, 8                                  ; 18CE _ 83. EC, 08
        push    ?_181                                   ; 18D1 _ 68, 00000020(d)
        push    eax                                     ; 18D6 _ 50
        push    dword [ebp-2CH]                         ; 18D7 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 18DA _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 18DD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18E0 _ FF. 75, 08
        call    showString                              ; 18E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18E8 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 18EB _ 8B. 45, 18
        sub     esp, 12                                 ; 18EE _ 83. EC, 0C
        push    eax                                     ; 18F1 _ 50
        call    intToHexStr                             ; 18F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18F7 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 18FA _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 18FD _ 8B. 45, 20
        movsx   eax, al                                 ; 1900 _ 0F BE. C0
        sub     esp, 8                                  ; 1903 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1906 _ FF. 75, E0
        push    eax                                     ; 1909 _ 50
        push    dword [ebp-2CH]                         ; 190A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 190D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1910 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1913 _ FF. 75, 08
        call    showString                              ; 1916 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 191B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 191E _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1922 _ 8B. 45, 20
        movsx   eax, al                                 ; 1925 _ 0F BE. C0
        sub     esp, 8                                  ; 1928 _ 83. EC, 08
        push    ?_182                                   ; 192B _ 68, 0000002A(d)
        push    eax                                     ; 1930 _ 50
        push    dword [ebp-2CH]                         ; 1931 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1934 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1937 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 193A _ FF. 75, 08
        call    showString                              ; 193D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1942 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1945 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1948 _ 8B. 00
        sub     esp, 12                                 ; 194A _ 83. EC, 0C
        push    eax                                     ; 194D _ 50
        call    intToHexStr                             ; 194E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1953 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1956 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1959 _ 8B. 45, 20
        movsx   eax, al                                 ; 195C _ 0F BE. C0
        sub     esp, 8                                  ; 195F _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1962 _ FF. 75, E4
        push    eax                                     ; 1965 _ 50
        push    dword [ebp-2CH]                         ; 1966 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1969 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 196C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 196F _ FF. 75, 08
        call    showString                              ; 1972 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1977 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 197A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 197E _ 8B. 45, 20
        movsx   eax, al                                 ; 1981 _ 0F BE. C0
        sub     esp, 8                                  ; 1984 _ 83. EC, 08
        push    ?_183                                   ; 1987 _ 68, 00000038(d)
        push    eax                                     ; 198C _ 50
        push    dword [ebp-2CH]                         ; 198D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1990 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1993 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1996 _ FF. 75, 08
        call    showString                              ; 1999 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 199E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 19A1 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 19A4 _ 8B. 40, 04
        sub     esp, 12                                 ; 19A7 _ 83. EC, 0C
        push    eax                                     ; 19AA _ 50
        call    intToHexStr                             ; 19AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19B0 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 19B3 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 19B6 _ 8B. 45, 20
        movsx   eax, al                                 ; 19B9 _ 0F BE. C0
        sub     esp, 8                                  ; 19BC _ 83. EC, 08
        push    dword [ebp-18H]                         ; 19BF _ FF. 75, E8
        push    eax                                     ; 19C2 _ 50
        push    dword [ebp-2CH]                         ; 19C3 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 19C6 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 19C9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19CC _ FF. 75, 08
        call    showString                              ; 19CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19D4 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 19D7 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 19DB _ 8B. 45, 20
        movsx   eax, al                                 ; 19DE _ 0F BE. C0
        sub     esp, 8                                  ; 19E1 _ 83. EC, 08
        push    ?_184                                   ; 19E4 _ 68, 00000047(d)
        push    eax                                     ; 19E9 _ 50
        push    dword [ebp-2CH]                         ; 19EA _ FF. 75, D4
        push    dword [ebp-30H]                         ; 19ED _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 19F0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19F3 _ FF. 75, 08
        call    showString                              ; 19F6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19FB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 19FE _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1A01 _ 8B. 40, 08
        sub     esp, 12                                 ; 1A04 _ 83. EC, 0C
        push    eax                                     ; 1A07 _ 50
        call    intToHexStr                             ; 1A08 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A0D _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1A10 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1A13 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A16 _ 0F BE. C0
        sub     esp, 8                                  ; 1A19 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1A1C _ FF. 75, EC
        push    eax                                     ; 1A1F _ 50
        push    dword [ebp-2CH]                         ; 1A20 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A23 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A26 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A29 _ FF. 75, 08
        call    showString                              ; 1A2C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A31 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A34 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A38 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A3B _ 0F BE. C0
        sub     esp, 8                                  ; 1A3E _ 83. EC, 08
        push    ?_185                                   ; 1A41 _ 68, 00000053(d)
        push    eax                                     ; 1A46 _ 50
        push    dword [ebp-2CH]                         ; 1A47 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A4A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A4D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A50 _ FF. 75, 08
        call    showString                              ; 1A53 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A58 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A5B _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1A5E _ 8B. 40, 0C
        sub     esp, 12                                 ; 1A61 _ 83. EC, 0C
        push    eax                                     ; 1A64 _ 50
        call    intToHexStr                             ; 1A65 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A6A _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1A6D _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1A70 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A73 _ 0F BE. C0
        sub     esp, 8                                  ; 1A76 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1A79 _ FF. 75, F0
        push    eax                                     ; 1A7C _ 50
        push    dword [ebp-2CH]                         ; 1A7D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A80 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A83 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A86 _ FF. 75, 08
        call    showString                              ; 1A89 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A8E _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A91 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A95 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A98 _ 0F BE. C0
        sub     esp, 8                                  ; 1A9B _ 83. EC, 08
        push    ?_186                                   ; 1A9E _ 68, 00000060(d)
        push    eax                                     ; 1AA3 _ 50
        push    dword [ebp-2CH]                         ; 1AA4 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1AA7 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1AAA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AAD _ FF. 75, 08
        call    showString                              ; 1AB0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AB5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1AB8 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1ABB _ 8B. 40, 10
        sub     esp, 12                                 ; 1ABE _ 83. EC, 0C
        push    eax                                     ; 1AC1 _ 50
        call    intToHexStr                             ; 1AC2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AC7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1ACA _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1ACD _ 8B. 45, 20
        movsx   eax, al                                 ; 1AD0 _ 0F BE. C0
        sub     esp, 8                                  ; 1AD3 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1AD6 _ FF. 75, F4
        push    eax                                     ; 1AD9 _ 50
        push    dword [ebp-2CH]                         ; 1ADA _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1ADD _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1AE0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AE3 _ FF. 75, 08
        call    showString                              ; 1AE6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AEB _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1AEE _ 83. 45, D4, 10
        nop                                             ; 1AF2 _ 90
        leave                                           ; 1AF3 _ C9
        ret                                             ; 1AF4 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1AF5 _ 55
        mov     ebp, esp                                ; 1AF6 _ 89. E5
        sub     esp, 24                                 ; 1AF8 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1AFB _ A1, 00000008(d)
        sub     esp, 8                                  ; 1B00 _ 83. EC, 08
        push    37500                                   ; 1B03 _ 68, 0000927C
        push    eax                                     ; 1B08 _ 50
        call    memman_alloc_4K                         ; 1B09 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B0E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1B11 _ 89. 45, F0
        sub     esp, 12                                 ; 1B14 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1B17 _ FF. 75, 08
        call    sheet_alloc                             ; 1B1A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B1F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1B22 _ 89. 45, F4
        sub     esp, 12                                 ; 1B25 _ 83. EC, 0C
        push    99                                      ; 1B28 _ 6A, 63
        push    125                                     ; 1B2A _ 6A, 7D
        push    300                                     ; 1B2C _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1B31 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1B34 _ FF. 75, F4
        call    sheet_setbuf                            ; 1B37 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B3C _ 83. C4, 20
        sub     esp, 4                                  ; 1B3F _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1B42 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1B45 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1B48 _ FF. 75, 08
        call    make_window8                            ; 1B4B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B50 _ 83. C4, 10
        sub     esp, 8                                  ; 1B53 _ 83. EC, 08
        push    7                                       ; 1B56 _ 6A, 07
        push    16                                      ; 1B58 _ 6A, 10
        push    150                                     ; 1B5A _ 68, 00000096
        push    42                                      ; 1B5F _ 6A, 2A
        push    8                                       ; 1B61 _ 6A, 08
        push    dword [ebp-0CH]                         ; 1B63 _ FF. 75, F4
        call    make_textbox8                           ; 1B66 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B6B _ 83. C4, 20
        push    dword [ebp+14H]                         ; 1B6E _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1B71 _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 1B74 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1B77 _ FF. 75, 08
        call    sheet_slide                             ; 1B7A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B7F _ 83. C4, 10
        sub     esp, 4                                  ; 1B82 _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1B85 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1B88 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1B8B _ FF. 75, 08
        call    sheet_level_updown                      ; 1B8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B93 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1B96 _ 8B. 45, F4
        leave                                           ; 1B99 _ C9
        ret                                             ; 1B9A _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1B9B _ 55
        mov     ebp, esp                                ; 1B9C _ 89. E5
        push    ebx                                     ; 1B9E _ 53
        sub     esp, 36                                 ; 1B9F _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1BA2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BA5 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1BA8 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1BAB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1BAE _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1BB1 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1BB4 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1BB7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BBA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BBD _ 8B. 00
        push    0                                       ; 1BBF _ 6A, 00
        push    edx                                     ; 1BC1 _ 52
        push    0                                       ; 1BC2 _ 6A, 00
        push    0                                       ; 1BC4 _ 6A, 00
        push    8                                       ; 1BC6 _ 6A, 08
        push    dword [ebp-10H]                         ; 1BC8 _ FF. 75, F0
        push    eax                                     ; 1BCB _ 50
        call    boxfill8                                ; 1BCC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1BD1 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1BD4 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1BD7 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1BDA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BDD _ 8B. 00
        push    1                                       ; 1BDF _ 6A, 01
        push    edx                                     ; 1BE1 _ 52
        push    1                                       ; 1BE2 _ 6A, 01
        push    1                                       ; 1BE4 _ 6A, 01
        push    7                                       ; 1BE6 _ 6A, 07
        push    dword [ebp-10H]                         ; 1BE8 _ FF. 75, F0
        push    eax                                     ; 1BEB _ 50
        call    boxfill8                                ; 1BEC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1BF1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1BF4 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1BF7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BFA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BFD _ 8B. 00
        push    edx                                     ; 1BFF _ 52
        push    0                                       ; 1C00 _ 6A, 00
        push    0                                       ; 1C02 _ 6A, 00
        push    0                                       ; 1C04 _ 6A, 00
        push    8                                       ; 1C06 _ 6A, 08
        push    dword [ebp-10H]                         ; 1C08 _ FF. 75, F0
        push    eax                                     ; 1C0B _ 50
        call    boxfill8                                ; 1C0C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C11 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1C14 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1C17 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C1A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C1D _ 8B. 00
        push    edx                                     ; 1C1F _ 52
        push    1                                       ; 1C20 _ 6A, 01
        push    1                                       ; 1C22 _ 6A, 01
        push    1                                       ; 1C24 _ 6A, 01
        push    7                                       ; 1C26 _ 6A, 07
        push    dword [ebp-10H]                         ; 1C28 _ FF. 75, F0
        push    eax                                     ; 1C2B _ 50
        call    boxfill8                                ; 1C2C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C31 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1C34 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1C37 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1C3A _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1C3D _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1C40 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1C43 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C46 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C49 _ 8B. 00
        push    ebx                                     ; 1C4B _ 53
        push    ecx                                     ; 1C4C _ 51
        push    1                                       ; 1C4D _ 6A, 01
        push    edx                                     ; 1C4F _ 52
        push    15                                      ; 1C50 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1C52 _ FF. 75, F0
        push    eax                                     ; 1C55 _ 50
        call    boxfill8                                ; 1C56 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C5B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1C5E _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1C61 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1C64 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1C67 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1C6A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C6D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C70 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C73 _ 8B. 00
        push    ebx                                     ; 1C75 _ 53
        push    ecx                                     ; 1C76 _ 51
        push    0                                       ; 1C77 _ 6A, 00
        push    edx                                     ; 1C79 _ 52
        push    0                                       ; 1C7A _ 6A, 00
        push    dword [ebp-10H]                         ; 1C7C _ FF. 75, F0
        push    eax                                     ; 1C7F _ 50
        call    boxfill8                                ; 1C80 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C85 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1C88 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1C8B _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1C8E _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1C91 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1C94 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C97 _ 8B. 00
        push    ecx                                     ; 1C99 _ 51
        push    edx                                     ; 1C9A _ 52
        push    2                                       ; 1C9B _ 6A, 02
        push    2                                       ; 1C9D _ 6A, 02
        push    8                                       ; 1C9F _ 6A, 08
        push    dword [ebp-10H]                         ; 1CA1 _ FF. 75, F0
        push    eax                                     ; 1CA4 _ 50
        call    boxfill8                                ; 1CA5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CAA _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1CAD _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1CB0 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1CB3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CB6 _ 8B. 00
        push    20                                      ; 1CB8 _ 6A, 14
        push    edx                                     ; 1CBA _ 52
        push    3                                       ; 1CBB _ 6A, 03
        push    3                                       ; 1CBD _ 6A, 03
        push    12                                      ; 1CBF _ 6A, 0C
        push    dword [ebp-10H]                         ; 1CC1 _ FF. 75, F0
        push    eax                                     ; 1CC4 _ 50
        call    boxfill8                                ; 1CC5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CCA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1CCD _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1CD0 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1CD3 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1CD6 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1CD9 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1CDC _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CDF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CE2 _ 8B. 00
        push    ebx                                     ; 1CE4 _ 53
        push    ecx                                     ; 1CE5 _ 51
        push    edx                                     ; 1CE6 _ 52
        push    1                                       ; 1CE7 _ 6A, 01
        push    15                                      ; 1CE9 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1CEB _ FF. 75, F0
        push    eax                                     ; 1CEE _ 50
        call    boxfill8                                ; 1CEF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CF4 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1CF7 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1CFA _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1CFD _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1D00 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1D03 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D06 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D09 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D0C _ 8B. 00
        push    ebx                                     ; 1D0E _ 53
        push    ecx                                     ; 1D0F _ 51
        push    edx                                     ; 1D10 _ 52
        push    0                                       ; 1D11 _ 6A, 00
        push    0                                       ; 1D13 _ 6A, 00
        push    dword [ebp-10H]                         ; 1D15 _ FF. 75, F0
        push    eax                                     ; 1D18 _ 50
        call    boxfill8                                ; 1D19 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D1E _ 83. C4, 1C
        sub     esp, 8                                  ; 1D21 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1D24 _ FF. 75, 10
        push    7                                       ; 1D27 _ 6A, 07
        push    4                                       ; 1D29 _ 6A, 04
        push    8                                       ; 1D2B _ 6A, 08
        push    dword [ebp+0CH]                         ; 1D2D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D30 _ FF. 75, 08
        call    showString                              ; 1D33 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D38 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1D3B _ C7. 45, E8, 00000000
        jmp     ?_078                                   ; 1D42 _ EB, 7D

?_072:  mov     dword [ebp-14H], 0                      ; 1D44 _ C7. 45, EC, 00000000
        jmp     ?_077                                   ; 1D4B _ EB, 6A

?_073:  mov     eax, dword [ebp-18H]                    ; 1D4D _ 8B. 45, E8
        shl     eax, 4                                  ; 1D50 _ C1. E0, 04
        mov     edx, eax                                ; 1D53 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1D55 _ 8B. 45, EC
        add     eax, edx                                ; 1D58 _ 01. D0
        add     eax, closebtn.2464                      ; 1D5A _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1D5F _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1D62 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1D65 _ 80. 7D, E7, 40
        jnz     ?_074                                   ; 1D69 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1D6B _ C6. 45, E7, 00
        jmp     ?_076                                   ; 1D6F _ EB, 16

?_074:  cmp     byte [ebp-19H], 36                      ; 1D71 _ 80. 7D, E7, 24
        jnz     ?_075                                   ; 1D75 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1D77 _ C6. 45, E7, 0F
        jmp     ?_076                                   ; 1D7B _ EB, 0A

?_075:  cmp     byte [ebp-19H], 81                      ; 1D7D _ 80. 7D, E7, 51
        jnz     ?_076                                   ; 1D81 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1D83 _ C6. 45, E7, 08
?_076:  mov     eax, dword [ebp+0CH]                    ; 1D87 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1D8A _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1D8C _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1D8F _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1D92 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D95 _ 8B. 40, 04
        imul    ecx, eax                                ; 1D98 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1D9B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D9E _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1DA1 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1DA4 _ 8B. 45, EC
        add     eax, ebx                                ; 1DA7 _ 01. D8
        add     eax, ecx                                ; 1DA9 _ 01. C8
        add     edx, eax                                ; 1DAB _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1DAD _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1DB1 _ 88. 02
        add     dword [ebp-14H], 1                      ; 1DB3 _ 83. 45, EC, 01
?_077:  cmp     dword [ebp-14H], 15                     ; 1DB7 _ 83. 7D, EC, 0F
        jle     ?_073                                   ; 1DBB _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1DBD _ 83. 45, E8, 01
?_078:  cmp     dword [ebp-18H], 13                     ; 1DC1 _ 83. 7D, E8, 0D
        jle     ?_072                                   ; 1DC5 _ 0F 8E, FFFFFF79
        nop                                             ; 1DCB _ 90
        mov     ebx, dword [ebp-4H]                     ; 1DCC _ 8B. 5D, FC
        leave                                           ; 1DCF _ C9
        ret                                             ; 1DD0 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 1DD1 _ 55
        mov     ebp, esp                                ; 1DD2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1DD4 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1DD7 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1DDD _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1DE0 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1DE7 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1DEA _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1DF1 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1DF4 _ C7. 40, 0C, 00000000
        nop                                             ; 1DFB _ 90
        pop     ebp                                     ; 1DFC _ 5D
        ret                                             ; 1DFD _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1DFE _ 55
        mov     ebp, esp                                ; 1DFF _ 89. E5
        sub     esp, 16                                 ; 1E01 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1E04 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1E0B _ C7. 45, FC, 00000000
        jmp     ?_080                                   ; 1E12 _ EB, 14

?_079:  mov     eax, dword [ebp+8H]                     ; 1E14 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1E17 _ 8B. 55, FC
        add     edx, 2                                  ; 1E1A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1E1D _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1E21 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1E24 _ 83. 45, FC, 01
?_080:  mov     eax, dword [ebp+8H]                     ; 1E28 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E2B _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1E2D _ 39. 45, FC
        jl      ?_079                                   ; 1E30 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1E32 _ 8B. 45, F8
        leave                                           ; 1E35 _ C9
        ret                                             ; 1E36 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1E37 _ 55
        mov     ebp, esp                                ; 1E38 _ 89. E5
        sub     esp, 16                                 ; 1E3A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1E3D _ C7. 45, F8, 00000000
        jmp     ?_084                                   ; 1E44 _ E9, 00000085

?_081:  mov     eax, dword [ebp+8H]                     ; 1E49 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1E4C _ 8B. 55, F8
        add     edx, 2                                  ; 1E4F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1E52 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1E56 _ 39. 45, 0C
        ja      ?_083                                   ; 1E59 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1E5B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1E5E _ 8B. 55, F8
        add     edx, 2                                  ; 1E61 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1E64 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1E67 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1E6A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1E6D _ 8B. 55, F8
        add     edx, 2                                  ; 1E70 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1E73 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1E76 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1E79 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1E7C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1E7F _ 8B. 55, F8
        add     edx, 2                                  ; 1E82 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1E85 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1E88 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1E8B _ 8B. 55, F8
        add     edx, 2                                  ; 1E8E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1E91 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1E95 _ 2B. 45, 0C
        mov     edx, eax                                ; 1E98 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E9A _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1E9D _ 8B. 4D, F8
        add     ecx, 2                                  ; 1EA0 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 1EA3 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1EA7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1EAA _ 8B. 55, F8
        add     edx, 2                                  ; 1EAD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1EB0 _ 8B. 44 D0, 04
        test    eax, eax                                ; 1EB4 _ 85. C0
        jnz     ?_082                                   ; 1EB6 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1EB8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EBB _ 8B. 00
        lea     edx, [eax-1H]                           ; 1EBD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1EC0 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1EC3 _ 89. 10
?_082:  mov     eax, dword [ebp-4H]                     ; 1EC5 _ 8B. 45, FC
        jmp     ?_085                                   ; 1EC8 _ EB, 17

?_083:  add     dword [ebp-8H], 1                       ; 1ECA _ 83. 45, F8, 01
?_084:  mov     eax, dword [ebp+8H]                     ; 1ECE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1ED1 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1ED3 _ 39. 45, F8
        jl      ?_081                                   ; 1ED6 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1EDC _ B8, 00000000
?_085:  leave                                           ; 1EE1 _ C9
        ret                                             ; 1EE2 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1EE3 _ 55
        mov     ebp, esp                                ; 1EE4 _ 89. E5
        sub     esp, 16                                 ; 1EE6 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1EE9 _ 8B. 45, 0C
        add     eax, 4095                               ; 1EEC _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1EF1 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1EF6 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1EF9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EFC _ FF. 75, 08
        call    memman_alloc_FF                         ; 1EFF _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1F04 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1F07 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1F0A _ 8B. 45, FC
        leave                                           ; 1F0D _ C9
        ret                                             ; 1F0E _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1F0F _ 55
        mov     ebp, esp                                ; 1F10 _ 89. E5
        push    ebx                                     ; 1F12 _ 53
        sub     esp, 16                                 ; 1F13 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1F16 _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 1F1D _ EB, 15

?_086:  mov     eax, dword [ebp+8H]                     ; 1F1F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1F22 _ 8B. 55, F4
        add     edx, 2                                  ; 1F25 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1F28 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1F2B _ 39. 45, 0C
        jc      ?_088                                   ; 1F2E _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1F30 _ 83. 45, F4, 01
?_087:  mov     eax, dword [ebp+8H]                     ; 1F34 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F37 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1F39 _ 39. 45, F4
        jl      ?_086                                   ; 1F3C _ 7C, E1
        jmp     ?_089                                   ; 1F3E _ EB, 01

?_088:  nop                                             ; 1F40 _ 90
?_089:  cmp     dword [ebp-0CH], 0                      ; 1F41 _ 83. 7D, F4, 00
        jle     ?_091                                   ; 1F45 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 1F4B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1F4E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1F51 _ 8B. 45, 08
        add     edx, 2                                  ; 1F54 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1F57 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1F5A _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1F5D _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1F60 _ 8B. 45, 08
        add     ecx, 2                                  ; 1F63 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1F66 _ 8B. 44 C8, 04
        add     eax, edx                                ; 1F6A _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 1F6C _ 39. 45, 0C
        jne     ?_091                                   ; 1F6F _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1F75 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1F78 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1F7B _ 8B. 45, 08
        add     edx, 2                                  ; 1F7E _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1F81 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 1F85 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1F88 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 1F8B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1F8E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1F91 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1F94 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1F97 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1F9B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F9E _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1FA0 _ 39. 45, F4
        jge     ?_090                                   ; 1FA3 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1FA5 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1FA8 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1FAB _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1FAE _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1FB1 _ 8B. 55, F4
        add     edx, 2                                  ; 1FB4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1FB7 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1FBA _ 39. C1
        jnz     ?_090                                   ; 1FBC _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 1FBE _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1FC1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1FC4 _ 8B. 45, 08
        add     edx, 2                                  ; 1FC7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1FCA _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1FCE _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1FD1 _ 8B. 4D, F4
        add     ecx, 2                                  ; 1FD4 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1FD7 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1FDB _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1FDE _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1FE1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1FE4 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1FE7 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1FEA _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1FEE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FF1 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1FF3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1FF6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1FF9 _ 89. 10
?_090:  mov     eax, 0                                  ; 1FFB _ B8, 00000000
        jmp     ?_097                                   ; 2000 _ E9, 0000011C

?_091:  mov     eax, dword [ebp+8H]                     ; 2005 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2008 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 200A _ 39. 45, F4
        jge     ?_092                                   ; 200D _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 200F _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2012 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2015 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2018 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 201B _ 8B. 55, F4
        add     edx, 2                                  ; 201E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2021 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2024 _ 39. C1
        jnz     ?_092                                   ; 2026 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2028 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 202B _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 202E _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2031 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2034 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2037 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 203A _ 8B. 55, F4
        add     edx, 2                                  ; 203D _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2040 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2044 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2047 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 204A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 204D _ 8B. 55, F4
        add     edx, 2                                  ; 2050 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2053 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2057 _ B8, 00000000
        jmp     ?_097                                   ; 205C _ E9, 000000C0

?_092:  mov     eax, dword [ebp+8H]                     ; 2061 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2064 _ 8B. 00
        cmp     eax, 4095                               ; 2066 _ 3D, 00000FFF
        jg      ?_096                                   ; 206B _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2071 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2074 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2076 _ 89. 45, F8
        jmp     ?_094                                   ; 2079 _ EB, 28

?_093:  mov     eax, dword [ebp-8H]                     ; 207B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 207E _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2081 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2084 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2087 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 208A _ 8B. 45, 08
        add     edx, 2                                  ; 208D _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2090 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2093 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2095 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2098 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 209B _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 209F _ 83. 6D, F8, 01
?_094:  mov     eax, dword [ebp-8H]                     ; 20A3 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 20A6 _ 3B. 45, F4
        jg      ?_093                                   ; 20A9 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 20AB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20AE _ 8B. 00
        lea     edx, [eax+1H]                           ; 20B0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 20B3 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 20B6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 20B8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 20BB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 20BE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20C1 _ 8B. 00
        cmp     edx, eax                                ; 20C3 _ 39. C2
        jge     ?_095                                   ; 20C5 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 20C7 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 20CA _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 20CC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 20CF _ 89. 50, 04
?_095:  mov     eax, dword [ebp+8H]                     ; 20D2 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20D5 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 20D8 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 20DB _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 20DE _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 20E1 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20E4 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 20E7 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 20EA _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 20ED _ 89. 54 C8, 04
        mov     eax, 0                                  ; 20F1 _ B8, 00000000
        jmp     ?_097                                   ; 20F6 _ EB, 29

?_096:  mov     eax, dword [ebp+8H]                     ; 20F8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 20FB _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 20FE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2101 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2104 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2107 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 210A _ 8B. 40, 08
        mov     edx, eax                                ; 210D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 210F _ 8B. 45, 10
        add     eax, edx                                ; 2112 _ 01. D0
        mov     edx, eax                                ; 2114 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2116 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2119 _ 89. 50, 08
        mov     eax, 4294967295                         ; 211C _ B8, FFFFFFFF
?_097:  add     esp, 16                                 ; 2121 _ 83. C4, 10
        pop     ebx                                     ; 2124 _ 5B
        pop     ebp                                     ; 2125 _ 5D
        ret                                             ; 2126 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2127 _ 55
        mov     ebp, esp                                ; 2128 _ 89. E5
        sub     esp, 16                                 ; 212A _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 212D _ 8B. 45, 10
        add     eax, 4095                               ; 2130 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2135 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 213A _ 89. 45, 10
        push    dword [ebp+10H]                         ; 213D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2140 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2143 _ FF. 75, 08
        call    memman_free                             ; 2146 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 214B _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 214E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2151 _ 8B. 45, FC
        leave                                           ; 2154 _ C9
        ret                                             ; 2155 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2156 _ 55
        mov     ebp, esp                                ; 2157 _ 89. E5
        sub     esp, 24                                 ; 2159 _ 83. EC, 18
        sub     esp, 8                                  ; 215C _ 83. EC, 08
        push    9232                                    ; 215F _ 68, 00002410
        push    dword [ebp+8H]                          ; 2164 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2167 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 216C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 216F _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2172 _ 83. 7D, F4, 00
        jnz     ?_098                                   ; 2176 _ 75, 0A
        mov     eax, 0                                  ; 2178 _ B8, 00000000
        jmp     ?_102                                   ; 217D _ E9, 0000009A

?_098:  mov     eax, dword [ebp+10H]                    ; 2182 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2185 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2189 _ 83. EC, 08
        push    eax                                     ; 218C _ 50
        push    dword [ebp+8H]                          ; 218D _ FF. 75, 08
        call    memman_alloc_4K                         ; 2190 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2195 _ 83. C4, 10
        mov     edx, eax                                ; 2198 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 219A _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 219D _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 21A0 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 21A3 _ 8B. 40, 04
        test    eax, eax                                ; 21A6 _ 85. C0
        jnz     ?_099                                   ; 21A8 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 21AA _ 8B. 45, F4
        sub     esp, 4                                  ; 21AD _ 83. EC, 04
        push    9232                                    ; 21B0 _ 68, 00002410
        push    eax                                     ; 21B5 _ 50
        push    dword [ebp+8H]                          ; 21B6 _ FF. 75, 08
        call    memman_free_4K                          ; 21B9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21BE _ 83. C4, 10
        mov     eax, 0                                  ; 21C1 _ B8, 00000000
        jmp     ?_102                                   ; 21C6 _ EB, 54

?_099:  mov     eax, dword [ebp-0CH]                    ; 21C8 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 21CB _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 21CE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 21D0 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 21D3 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 21D6 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 21D9 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 21DC _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 21DF _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 21E2 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 21E5 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 21EC _ C7. 45, F0, 00000000
        jmp     ?_101                                   ; 21F3 _ EB, 1B

?_100:  mov     eax, dword [ebp-0CH]                    ; 21F5 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 21F8 _ 8B. 55, F0
        add     edx, 33                                 ; 21FB _ 83. C2, 21
        shl     edx, 5                                  ; 21FE _ C1. E2, 05
        add     eax, edx                                ; 2201 _ 01. D0
        add     eax, 16                                 ; 2203 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2206 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 220C _ 83. 45, F0, 01
?_101:  cmp     dword [ebp-10H], 255                    ; 2210 _ 81. 7D, F0, 000000FF
        jle     ?_100                                   ; 2217 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2219 _ 8B. 45, F4
?_102:  leave                                           ; 221C _ C9
        ret                                             ; 221D _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 221E _ 55
        mov     ebp, esp                                ; 221F _ 89. E5
        sub     esp, 16                                 ; 2221 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2224 _ C7. 45, F8, 00000000
        jmp     ?_105                                   ; 222B _ EB, 4B

?_103:  mov     eax, dword [ebp+8H]                     ; 222D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2230 _ 8B. 55, F8
        add     edx, 33                                 ; 2233 _ 83. C2, 21
        shl     edx, 5                                  ; 2236 _ C1. E2, 05
        add     eax, edx                                ; 2239 _ 01. D0
        add     eax, 16                                 ; 223B _ 83. C0, 10
        mov     eax, dword [eax]                        ; 223E _ 8B. 00
        test    eax, eax                                ; 2240 _ 85. C0
        jnz     ?_104                                   ; 2242 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2244 _ 8B. 45, F8
        shl     eax, 5                                  ; 2247 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 224A _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2250 _ 8B. 45, 08
        add     eax, edx                                ; 2253 _ 01. D0
        add     eax, 4                                  ; 2255 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2258 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 225B _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 225E _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2265 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2268 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 226F _ 8B. 45, FC
        jmp     ?_106                                   ; 2272 _ EB, 12

?_104:  add     dword [ebp-8H], 1                       ; 2274 _ 83. 45, F8, 01
?_105:  cmp     dword [ebp-8H], 255                     ; 2278 _ 81. 7D, F8, 000000FF
        jle     ?_103                                   ; 227F _ 7E, AC
        mov     eax, 0                                  ; 2281 _ B8, 00000000
?_106:  leave                                           ; 2286 _ C9
        ret                                             ; 2287 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2288 _ 55
        mov     ebp, esp                                ; 2289 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 228B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 228E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2291 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2293 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2296 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2299 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 229C _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 229F _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 22A2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 22A5 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 22A8 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 22AB _ 89. 50, 14
        nop                                             ; 22AE _ 90
        pop     ebp                                     ; 22AF _ 5D
        ret                                             ; 22B0 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 22B1 _ 55
        mov     ebp, esp                                ; 22B2 _ 89. E5
        push    esi                                     ; 22B4 _ 56
        push    ebx                                     ; 22B5 _ 53
        sub     esp, 32                                 ; 22B6 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 22B9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 22BC _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 22BF _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 22C2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22C5 _ 8B. 40, 10
        add     eax, 1                                  ; 22C8 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 22CB _ 39. 45, 10
        jle     ?_107                                   ; 22CE _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 22D0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22D3 _ 8B. 40, 10
        add     eax, 1                                  ; 22D6 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 22D9 _ 89. 45, 10
?_107:  cmp     dword [ebp+10H], -1                     ; 22DC _ 83. 7D, 10, FF
        jge     ?_108                                   ; 22E0 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 22E2 _ C7. 45, 10, FFFFFFFF
?_108:  mov     eax, dword [ebp+0CH]                    ; 22E9 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 22EC _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 22EF _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 22F2 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 22F5 _ 3B. 45, 10
        jle     ?_115                                   ; 22F8 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 22FE _ 83. 7D, 10, 00
        js      ?_111                                   ; 2302 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2308 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 230B _ 89. 45, E4
        jmp     ?_110                                   ; 230E _ EB, 34

?_109:  mov     eax, dword [ebp-1CH]                    ; 2310 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2313 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2316 _ 8B. 45, 08
        add     edx, 4                                  ; 2319 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 231C _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2320 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2323 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2326 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2329 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 232D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2330 _ 8B. 55, E4
        add     edx, 4                                  ; 2333 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2336 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 233A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 233D _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2340 _ 83. 6D, E4, 01
?_110:  mov     eax, dword [ebp-1CH]                    ; 2344 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2347 _ 3B. 45, 10
        jg      ?_109                                   ; 234A _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 234C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 234F _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2352 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2355 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2358 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 235C _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 235F _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2362 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2365 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2368 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 236B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 236E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2371 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2374 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2377 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 237A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 237D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2380 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2383 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2386 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2389 _ 8B. 40, 0C
        sub     esp, 8                                  ; 238C _ 83. EC, 08
        push    esi                                     ; 238F _ 56
        push    ebx                                     ; 2390 _ 53
        push    ecx                                     ; 2391 _ 51
        push    edx                                     ; 2392 _ 52
        push    eax                                     ; 2393 _ 50
        push    dword [ebp+8H]                          ; 2394 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2397 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 239C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 239F _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 23A2 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 23A5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23A8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23AB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 23AE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 23B1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 23B4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 23B7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 23BA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 23BD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 23C0 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 23C3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23C6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23C9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 23CC _ 8B. 40, 0C
        sub     esp, 4                                  ; 23CF _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 23D2 _ FF. 75, F4
        push    esi                                     ; 23D5 _ 56
        push    ebx                                     ; 23D6 _ 53
        push    ecx                                     ; 23D7 _ 51
        push    edx                                     ; 23D8 _ 52
        push    eax                                     ; 23D9 _ 50
        push    dword [ebp+8H]                          ; 23DA _ FF. 75, 08
        call    sheet_refresh_new                       ; 23DD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 23E2 _ 83. C4, 20
        jmp     ?_122                                   ; 23E5 _ E9, 00000244

?_111:  mov     eax, dword [ebp+8H]                     ; 23EA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23ED _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 23F0 _ 39. 45, F4
        jge     ?_114                                   ; 23F3 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 23F5 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 23F8 _ 89. 45, E8
        jmp     ?_113                                   ; 23FB _ EB, 34

?_112:  mov     eax, dword [ebp-18H]                    ; 23FD _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2400 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2403 _ 8B. 45, 08
        add     edx, 4                                  ; 2406 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2409 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 240D _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2410 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2413 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2416 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 241A _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 241D _ 8B. 55, E8
        add     edx, 4                                  ; 2420 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2423 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2427 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 242A _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 242D _ 83. 45, E8, 01
?_113:  mov     eax, dword [ebp+8H]                     ; 2431 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2434 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2437 _ 39. 45, E8
        jl      ?_112                                   ; 243A _ 7C, C1
?_114:  mov     eax, dword [ebp+8H]                     ; 243C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 243F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2442 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2445 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2448 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 244B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 244E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2451 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2454 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2457 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 245A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 245D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2460 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2463 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2466 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2469 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 246C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 246F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2472 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2475 _ 83. EC, 08
        push    0                                       ; 2478 _ 6A, 00
        push    ebx                                     ; 247A _ 53
        push    ecx                                     ; 247B _ 51
        push    edx                                     ; 247C _ 52
        push    eax                                     ; 247D _ 50
        push    dword [ebp+8H]                          ; 247E _ FF. 75, 08
        call    sheet_refreshmap                        ; 2481 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2486 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2489 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 248C _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 248F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2492 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2495 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2498 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 249B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 249E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 24A1 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 24A4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 24A7 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 24AA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 24AD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24B0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24B3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 24B6 _ 8B. 40, 0C
        sub     esp, 4                                  ; 24B9 _ 83. EC, 04
        push    esi                                     ; 24BC _ 56
        push    0                                       ; 24BD _ 6A, 00
        push    ebx                                     ; 24BF _ 53
        push    ecx                                     ; 24C0 _ 51
        push    edx                                     ; 24C1 _ 52
        push    eax                                     ; 24C2 _ 50
        push    dword [ebp+8H]                          ; 24C3 _ FF. 75, 08
        call    sheet_refresh_new                       ; 24C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 24CB _ 83. C4, 20
        jmp     ?_122                                   ; 24CE _ E9, 0000015B

?_115:  mov     eax, dword [ebp-0CH]                    ; 24D3 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 24D6 _ 3B. 45, 10
        jge     ?_122                                   ; 24D9 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 24DF _ 83. 7D, F4, 00
        js      ?_118                                   ; 24E3 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 24E5 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 24E8 _ 89. 45, EC
        jmp     ?_117                                   ; 24EB _ EB, 34

?_116:  mov     eax, dword [ebp-14H]                    ; 24ED _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 24F0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 24F3 _ 8B. 45, 08
        add     edx, 4                                  ; 24F6 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 24F9 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 24FD _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2500 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2503 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2506 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 250A _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 250D _ 8B. 55, EC
        add     edx, 4                                  ; 2510 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2513 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2517 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 251A _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 251D _ 83. 45, EC, 01
?_117:  mov     eax, dword [ebp-14H]                    ; 2521 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2524 _ 3B. 45, 10
        jl      ?_116                                   ; 2527 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2529 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 252C _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 252F _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2532 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2535 _ 89. 54 88, 04
        jmp     ?_121                                   ; 2539 _ EB, 72

?_118:  cmp     dword [ebp-0CH], 0                      ; 253B _ 83. 7D, F4, 00
        jns     ?_121                                   ; 253F _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2541 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2544 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2547 _ 89. 45, F0
        jmp     ?_120                                   ; 254A _ EB, 3A

?_119:  mov     eax, dword [ebp-10H]                    ; 254C _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 254F _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2552 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2555 _ 8B. 55, F0
        add     edx, 4                                  ; 2558 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 255B _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 255F _ 8B. 45, 08
        add     ecx, 4                                  ; 2562 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2565 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2569 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 256C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 256F _ 8B. 45, 08
        add     edx, 4                                  ; 2572 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2575 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2579 _ 8B. 55, F0
        add     edx, 1                                  ; 257C _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 257F _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2582 _ 83. 6D, F0, 01
?_120:  mov     eax, dword [ebp-10H]                    ; 2586 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2589 _ 3B. 45, 10
        jge     ?_119                                   ; 258C _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 258E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2591 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2594 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2597 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 259A _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 259E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25A1 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 25A4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25A7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 25AA _ 89. 50, 10
?_121:  mov     eax, dword [ebp+0CH]                    ; 25AD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25B0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25B3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25B6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25B9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25BC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25BF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25C2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25C5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25C8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25CB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25CE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25D1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25D4 _ 8B. 40, 0C
        sub     esp, 8                                  ; 25D7 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 25DA _ FF. 75, 10
        push    ebx                                     ; 25DD _ 53
        push    ecx                                     ; 25DE _ 51
        push    edx                                     ; 25DF _ 52
        push    eax                                     ; 25E0 _ 50
        push    dword [ebp+8H]                          ; 25E1 _ FF. 75, 08
        call    sheet_refreshmap                        ; 25E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25E9 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 25EC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25EF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25F2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25F5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25F8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25FB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25FE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2601 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2604 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2607 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 260A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 260D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2610 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2613 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2616 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2619 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 261C _ FF. 75, 10
        push    ebx                                     ; 261F _ 53
        push    ecx                                     ; 2620 _ 51
        push    edx                                     ; 2621 _ 52
        push    eax                                     ; 2622 _ 50
        push    dword [ebp+8H]                          ; 2623 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2626 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 262B _ 83. C4, 20
?_122:  nop                                             ; 262E _ 90
        lea     esp, [ebp-8H]                           ; 262F _ 8D. 65, F8
        pop     ebx                                     ; 2632 _ 5B
        pop     esi                                     ; 2633 _ 5E
        pop     ebp                                     ; 2634 _ 5D
        ret                                             ; 2635 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2636 _ 55
        mov     ebp, esp                                ; 2637 _ 89. E5
        push    edi                                     ; 2639 _ 57
        push    esi                                     ; 263A _ 56
        push    ebx                                     ; 263B _ 53
        sub     esp, 28                                 ; 263C _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 263F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2642 _ 8B. 40, 18
        test    eax, eax                                ; 2645 _ 85. C0
        js      ?_123                                   ; 2647 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2649 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 264C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 264F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2652 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2655 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2658 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 265B _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 265E _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2661 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2664 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2667 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 266A _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 266D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2670 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2673 _ 8B. 45, 14
        add     edx, eax                                ; 2676 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2678 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 267B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 267E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2681 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2684 _ 03. 45, E4
        sub     esp, 4                                  ; 2687 _ 83. EC, 04
        push    ebx                                     ; 268A _ 53
        push    ecx                                     ; 268B _ 51
        push    edi                                     ; 268C _ 57
        push    esi                                     ; 268D _ 56
        push    edx                                     ; 268E _ 52
        push    eax                                     ; 268F _ 50
        push    dword [ebp+8H]                          ; 2690 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2693 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2698 _ 83. C4, 20
?_123:  mov     eax, 0                                  ; 269B _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 26A0 _ 8D. 65, F4
        pop     ebx                                     ; 26A3 _ 5B
        pop     esi                                     ; 26A4 _ 5E
        pop     edi                                     ; 26A5 _ 5F
        pop     ebp                                     ; 26A6 _ 5D
        ret                                             ; 26A7 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 26A8 _ 55
        mov     ebp, esp                                ; 26A9 _ 89. E5
        push    esi                                     ; 26AB _ 56
        push    ebx                                     ; 26AC _ 53
        sub     esp, 16                                 ; 26AD _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 26B0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26B3 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 26B6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 26B9 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 26BC _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 26BF _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 26C2 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 26C5 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 26C8 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26CB _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 26CE _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 26D1 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26D4 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 26D7 _ 8B. 40, 18
        test    eax, eax                                ; 26DA _ 85. C0
        js      ?_124                                   ; 26DC _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 26E2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 26E5 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 26E8 _ 8B. 45, F4
        add     edx, eax                                ; 26EB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 26ED _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 26F0 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 26F3 _ 8B. 45, F0
        add     eax, ecx                                ; 26F6 _ 01. C8
        sub     esp, 8                                  ; 26F8 _ 83. EC, 08
        push    0                                       ; 26FB _ 6A, 00
        push    edx                                     ; 26FD _ 52
        push    eax                                     ; 26FE _ 50
        push    dword [ebp-0CH]                         ; 26FF _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2702 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2705 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2708 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 270D _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2710 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2713 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2716 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2719 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 271C _ 8B. 55, 14
        add     ecx, edx                                ; 271F _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2721 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2724 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2727 _ 8B. 55, 10
        add     edx, ebx                                ; 272A _ 01. DA
        sub     esp, 8                                  ; 272C _ 83. EC, 08
        push    eax                                     ; 272F _ 50
        push    ecx                                     ; 2730 _ 51
        push    edx                                     ; 2731 _ 52
        push    dword [ebp+14H]                         ; 2732 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2735 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2738 _ FF. 75, 08
        call    sheet_refreshmap                        ; 273B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2740 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2743 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2746 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2749 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 274C _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 274F _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2752 _ 8B. 45, F4
        add     edx, eax                                ; 2755 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2757 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 275A _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 275D _ 8B. 45, F0
        add     eax, ebx                                ; 2760 _ 01. D8
        sub     esp, 4                                  ; 2762 _ 83. EC, 04
        push    ecx                                     ; 2765 _ 51
        push    0                                       ; 2766 _ 6A, 00
        push    edx                                     ; 2768 _ 52
        push    eax                                     ; 2769 _ 50
        push    dword [ebp-0CH]                         ; 276A _ FF. 75, F4
        push    dword [ebp-10H]                         ; 276D _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2770 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2773 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2778 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 277B _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 277E _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2781 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2784 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2787 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 278A _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 278D _ 8B. 4D, 14
        add     ebx, ecx                                ; 2790 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2792 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2795 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2798 _ 8B. 4D, 10
        add     ecx, esi                                ; 279B _ 01. F1
        sub     esp, 4                                  ; 279D _ 83. EC, 04
        push    edx                                     ; 27A0 _ 52
        push    eax                                     ; 27A1 _ 50
        push    ebx                                     ; 27A2 _ 53
        push    ecx                                     ; 27A3 _ 51
        push    dword [ebp+14H]                         ; 27A4 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 27A7 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 27AA _ FF. 75, 08
        call    sheet_refresh_new                       ; 27AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27B2 _ 83. C4, 20
?_124:  nop                                             ; 27B5 _ 90
        lea     esp, [ebp-8H]                           ; 27B6 _ 8D. 65, F8
        pop     ebx                                     ; 27B9 _ 5B
        pop     esi                                     ; 27BA _ 5E
        pop     ebp                                     ; 27BB _ 5D
        ret                                             ; 27BC _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 27BD _ 55
        mov     ebp, esp                                ; 27BE _ 89. E5
        sub     esp, 48                                 ; 27C0 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 27C3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27C6 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 27C8 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 27CB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27CE _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 27D1 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 27D4 _ 83. 7D, 0C, 00
        jns     ?_125                                   ; 27D8 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 27DA _ C7. 45, 0C, 00000000
?_125:  cmp     dword [ebp+10H], 8                      ; 27E1 _ 83. 7D, 10, 08
        jg      ?_126                                   ; 27E5 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 27E7 _ C7. 45, 10, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 27EE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27F1 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 27F4 _ 39. 45, 14
        jle     ?_127                                   ; 27F7 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 27F9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27FC _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 27FF _ 89. 45, 14
?_127:  mov     eax, dword [ebp+8H]                     ; 2802 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2805 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2808 _ 39. 45, 18
        jle     ?_128                                   ; 280B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 280D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2810 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2813 _ 89. 45, 18
?_128:  mov     eax, dword [ebp+1CH]                    ; 2816 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2819 _ 89. 45, DC
        jmp     ?_135                                   ; 281C _ E9, 00000118

?_129:  mov     eax, dword [ebp+8H]                     ; 2821 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2824 _ 8B. 55, DC
        add     edx, 4                                  ; 2827 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 282A _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 282E _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2831 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2834 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2836 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2839 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 283C _ 8B. 55, 08
        add     edx, 1044                               ; 283F _ 81. C2, 00000414
        sub     eax, edx                                ; 2845 _ 29. D0
        sar     eax, 5                                  ; 2847 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 284A _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 284D _ C7. 45, E0, 00000000
        jmp     ?_134                                   ; 2854 _ E9, 000000CD

?_130:  mov     eax, dword [ebp-10H]                    ; 2859 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 285C _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 285F _ 8B. 45, E0
        add     eax, edx                                ; 2862 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2864 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2867 _ C7. 45, E4, 00000000
        jmp     ?_133                                   ; 286E _ E9, 000000A0

?_131:  mov     eax, dword [ebp-10H]                    ; 2873 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2876 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2879 _ 8B. 45, E4
        add     eax, edx                                ; 287C _ 01. D0
        mov     dword [ebp-4H], eax                     ; 287E _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2881 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2884 _ 3B. 45, FC
        jg      ?_132                                   ; 2887 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 288D _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2890 _ 3B. 45, 14
        jge     ?_132                                   ; 2893 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2895 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2898 _ 3B. 45, F8
        jg      ?_132                                   ; 289B _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 289D _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 28A0 _ 3B. 45, 18
        jge     ?_132                                   ; 28A3 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 28A5 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 28A8 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 28AB _ 0F AF. 45, E0
        mov     edx, eax                                ; 28AF _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 28B1 _ 8B. 45, E4
        add     eax, edx                                ; 28B4 _ 01. D0
        mov     edx, eax                                ; 28B6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 28B8 _ 8B. 45, F4
        add     eax, edx                                ; 28BB _ 01. D0
        movzx   eax, byte [eax]                         ; 28BD _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 28C0 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 28C3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 28C6 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 28C9 _ 0F AF. 45, F8
        mov     edx, eax                                ; 28CD _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 28CF _ 8B. 45, FC
        add     eax, edx                                ; 28D2 _ 01. D0
        mov     edx, eax                                ; 28D4 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 28D6 _ 8B. 45, EC
        add     eax, edx                                ; 28D9 _ 01. D0
        movzx   eax, byte [eax]                         ; 28DB _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 28DE _ 38. 45, DA
        jnz     ?_132                                   ; 28E1 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 28E3 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 28E7 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 28EA _ 8B. 40, 14
        cmp     edx, eax                                ; 28ED _ 39. C2
        jz      ?_132                                   ; 28EF _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 28F1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 28F4 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 28F7 _ 0F AF. 45, F8
        mov     edx, eax                                ; 28FB _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 28FD _ 8B. 45, FC
        add     eax, edx                                ; 2900 _ 01. D0
        mov     edx, eax                                ; 2902 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2904 _ 8B. 45, E8
        add     edx, eax                                ; 2907 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2909 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 290D _ 88. 02
?_132:  add     dword [ebp-1CH], 1                      ; 290F _ 83. 45, E4, 01
?_133:  mov     eax, dword [ebp-10H]                    ; 2913 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2916 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2919 _ 39. 45, E4
        jl      ?_131                                   ; 291C _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2922 _ 83. 45, E0, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 2926 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2929 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 292C _ 39. 45, E0
        jl      ?_130                                   ; 292F _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2935 _ 83. 45, DC, 01
?_135:  mov     eax, dword [ebp-24H]                    ; 2939 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 293C _ 3B. 45, 20
        jle     ?_129                                   ; 293F _ 0F 8E, FFFFFEDC
        nop                                             ; 2945 _ 90
        leave                                           ; 2946 _ C9
        ret                                             ; 2947 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2948 _ 55
        mov     ebp, esp                                ; 2949 _ 89. E5
        sub     esp, 64                                 ; 294B _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 294E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2951 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2954 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2957 _ 83. 7D, 0C, 00
        jns     ?_136                                   ; 295B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 295D _ C7. 45, 0C, 00000000
?_136:  mov     eax, dword [ebp+8H]                     ; 2964 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2967 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 296A _ 39. 45, 0C
        jle     ?_137                                   ; 296D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 296F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2972 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2975 _ 89. 45, 0C
?_137:  cmp     dword [ebp+10H], 0                      ; 2978 _ 83. 7D, 10, 00
        jns     ?_138                                   ; 297C _ 79, 07
        mov     dword [ebp+10H], 0                      ; 297E _ C7. 45, 10, 00000000
?_138:  mov     eax, dword [ebp+8H]                     ; 2985 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2988 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 298B _ 39. 45, 10
        jle     ?_139                                   ; 298E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2990 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2993 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2996 _ 89. 45, 10
?_139:  mov     eax, dword [ebp+1CH]                    ; 2999 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 299C _ 89. 45, E0
        jmp     ?_150                                   ; 299F _ E9, 00000140

?_140:  mov     eax, dword [ebp+8H]                     ; 29A4 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 29A7 _ 8B. 55, E0
        add     edx, 4                                  ; 29AA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29AD _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 29B1 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 29B4 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 29B7 _ 8B. 55, 08
        add     edx, 1044                               ; 29BA _ 81. C2, 00000414
        sub     eax, edx                                ; 29C0 _ 29. D0
        sar     eax, 5                                  ; 29C2 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 29C5 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 29C8 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 29CB _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 29CD _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 29D0 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 29D3 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 29D6 _ 8B. 55, 0C
        sub     edx, eax                                ; 29D9 _ 29. C2
        mov     eax, edx                                ; 29DB _ 89. D0
        mov     dword [ebp-30H], eax                    ; 29DD _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 29E0 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 29E3 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 29E6 _ 8B. 55, 10
        sub     edx, eax                                ; 29E9 _ 29. C2
        mov     eax, edx                                ; 29EB _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 29ED _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 29F0 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 29F3 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 29F6 _ 8B. 55, 14
        sub     edx, eax                                ; 29F9 _ 29. C2
        mov     eax, edx                                ; 29FB _ 89. D0
        mov     dword [ebp-28H], eax                    ; 29FD _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2A00 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2A03 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2A06 _ 8B. 55, 18
        sub     edx, eax                                ; 2A09 _ 29. C2
        mov     eax, edx                                ; 2A0B _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2A0D _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2A10 _ 83. 7D, D0, 00
        jns     ?_141                                   ; 2A14 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2A16 _ C7. 45, D0, 00000000
?_141:  cmp     dword [ebp-2CH], 0                      ; 2A1D _ 83. 7D, D4, 00
        jns     ?_142                                   ; 2A21 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2A23 _ C7. 45, D4, 00000000
?_142:  mov     eax, dword [ebp-10H]                    ; 2A2A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2A2D _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2A30 _ 39. 45, D8
        jle     ?_143                                   ; 2A33 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2A35 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2A38 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2A3B _ 89. 45, D8
?_143:  mov     eax, dword [ebp-10H]                    ; 2A3E _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2A41 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2A44 _ 39. 45, DC
        jle     ?_144                                   ; 2A47 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2A49 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2A4C _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2A4F _ 89. 45, DC
?_144:  mov     eax, dword [ebp-2CH]                    ; 2A52 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2A55 _ 89. 45, E4
        jmp     ?_149                                   ; 2A58 _ EB, 7A

?_145:  mov     eax, dword [ebp-10H]                    ; 2A5A _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2A5D _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2A60 _ 8B. 45, E4
        add     eax, edx                                ; 2A63 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2A65 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2A68 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2A6B _ 89. 45, E8
        jmp     ?_148                                   ; 2A6E _ EB, 58

?_146:  mov     eax, dword [ebp-10H]                    ; 2A70 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2A73 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2A76 _ 8B. 45, E8
        add     eax, edx                                ; 2A79 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2A7B _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2A7E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2A81 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2A84 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2A88 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2A8A _ 8B. 45, E8
        add     eax, edx                                ; 2A8D _ 01. D0
        mov     edx, eax                                ; 2A8F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2A91 _ 8B. 45, F4
        add     eax, edx                                ; 2A94 _ 01. D0
        movzx   eax, byte [eax]                         ; 2A96 _ 0F B6. 00
        movzx   edx, al                                 ; 2A99 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2A9C _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2A9F _ 8B. 40, 14
        cmp     edx, eax                                ; 2AA2 _ 39. C2
        jz      ?_147                                   ; 2AA4 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2AA6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AA9 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2AAC _ 0F AF. 45, F8
        mov     edx, eax                                ; 2AB0 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2AB2 _ 8B. 45, FC
        add     eax, edx                                ; 2AB5 _ 01. D0
        mov     edx, eax                                ; 2AB7 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2AB9 _ 8B. 45, EC
        add     edx, eax                                ; 2ABC _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2ABE _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2AC2 _ 88. 02
?_147:  add     dword [ebp-18H], 1                      ; 2AC4 _ 83. 45, E8, 01
?_148:  mov     eax, dword [ebp-18H]                    ; 2AC8 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2ACB _ 3B. 45, D8
        jl      ?_146                                   ; 2ACE _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2AD0 _ 83. 45, E4, 01
?_149:  mov     eax, dword [ebp-1CH]                    ; 2AD4 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2AD7 _ 3B. 45, DC
        jl      ?_145                                   ; 2ADA _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2AE0 _ 83. 45, E0, 01
?_150:  mov     eax, dword [ebp+8H]                     ; 2AE4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2AE7 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2AEA _ 39. 45, E0
        jle     ?_140                                   ; 2AED _ 0F 8E, FFFFFEB1
        nop                                             ; 2AF3 _ 90
        leave                                           ; 2AF4 _ C9
        ret                                             ; 2AF5 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2AF6 _ 55
        mov     ebp, esp                                ; 2AF7 _ 89. E5
        sub     esp, 24                                 ; 2AF9 _ 83. EC, 18
        sub     esp, 8                                  ; 2AFC _ 83. EC, 08
        push    52                                      ; 2AFF _ 6A, 34
        push    67                                      ; 2B01 _ 6A, 43
        call    io_out8                                 ; 2B03 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B08 _ 83. C4, 10
        sub     esp, 8                                  ; 2B0B _ 83. EC, 08
        push    156                                     ; 2B0E _ 68, 0000009C
        push    64                                      ; 2B13 _ 6A, 40
        call    io_out8                                 ; 2B15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B1A _ 83. C4, 10
        sub     esp, 8                                  ; 2B1D _ 83. EC, 08
        push    46                                      ; 2B20 _ 6A, 2E
        push    64                                      ; 2B22 _ 6A, 40
        call    io_out8                                 ; 2B24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B29 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2B2C _ C7. 05, 00000260(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2B36 _ C7. 45, F4, 00000000
        jmp     ?_152                                   ; 2B3D _ EB, 15

?_151:  mov     eax, dword [ebp-0CH]                    ; 2B3F _ 8B. 45, F4
        shl     eax, 4                                  ; 2B42 _ C1. E0, 04
        add     eax, ?_195                              ; 2B45 _ 05, 00000268(d)
        mov     dword [eax], 0                          ; 2B4A _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2B50 _ 83. 45, F4, 01
?_152:  cmp     dword [ebp-0CH], 499                    ; 2B54 _ 81. 7D, F4, 000001F3
        jle     ?_151                                   ; 2B5B _ 7E, E2
        nop                                             ; 2B5D _ 90
        leave                                           ; 2B5E _ C9
        ret                                             ; 2B5F _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2B60 _ 55
        mov     ebp, esp                                ; 2B61 _ 89. E5
        sub     esp, 16                                 ; 2B63 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2B66 _ C7. 45, FC, 00000000
        jmp     ?_155                                   ; 2B6D _ EB, 36

?_153:  mov     eax, dword [ebp-4H]                     ; 2B6F _ 8B. 45, FC
        shl     eax, 4                                  ; 2B72 _ C1. E0, 04
        add     eax, ?_195                              ; 2B75 _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2B7A _ 8B. 00
        test    eax, eax                                ; 2B7C _ 85. C0
        jnz     ?_154                                   ; 2B7E _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2B80 _ 8B. 45, FC
        shl     eax, 4                                  ; 2B83 _ C1. E0, 04
        add     eax, ?_195                              ; 2B86 _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2B8B _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2B91 _ 8B. 45, FC
        shl     eax, 4                                  ; 2B94 _ C1. E0, 04
        add     eax, timerctl                           ; 2B97 _ 05, 00000260(d)
        add     eax, 4                                  ; 2B9C _ 83. C0, 04
        jmp     ?_156                                   ; 2B9F _ EB, 12

?_154:  add     dword [ebp-4H], 1                       ; 2BA1 _ 83. 45, FC, 01
?_155:  cmp     dword [ebp-4H], 499                     ; 2BA5 _ 81. 7D, FC, 000001F3
        jle     ?_153                                   ; 2BAC _ 7E, C1
        mov     eax, 0                                  ; 2BAE _ B8, 00000000
?_156:  leave                                           ; 2BB3 _ C9
        ret                                             ; 2BB4 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2BB5 _ 55
        mov     ebp, esp                                ; 2BB6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2BB8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2BBB _ C7. 40, 04, 00000000
        nop                                             ; 2BC2 _ 90
        pop     ebp                                     ; 2BC3 _ 5D
        ret                                             ; 2BC4 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2BC5 _ 55
        mov     ebp, esp                                ; 2BC6 _ 89. E5
        sub     esp, 4                                  ; 2BC8 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2BCB _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2BCE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2BD1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2BD4 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2BD7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2BDA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2BDD _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2BE1 _ 88. 50, 0C
        nop                                             ; 2BE4 _ 90
        leave                                           ; 2BE5 _ C9
        ret                                             ; 2BE6 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2BE7 _ 55
        mov     ebp, esp                                ; 2BE8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2BEA _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2BED _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2BF0 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2BF2 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2BF5 _ C7. 40, 04, 00000002
        nop                                             ; 2BFC _ 90
        pop     ebp                                     ; 2BFD _ 5D
        ret                                             ; 2BFE _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 2BFF _ 55
        mov     ebp, esp                                ; 2C00 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C02 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C05 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2C08 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2C0A _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2C0D _ C7. 40, 04, 00000002
        nop                                             ; 2C14 _ 90
        pop     ebp                                     ; 2C15 _ 5D
        ret                                             ; 2C16 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2C17 _ 55
        mov     ebp, esp                                ; 2C18 _ 89. E5
        mov     eax, timerctl                           ; 2C1A _ B8, 00000260(d)
        pop     ebp                                     ; 2C1F _ 5D
        ret                                             ; 2C20 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2C21 _ 55
        mov     ebp, esp                                ; 2C22 _ 89. E5
        push    ebx                                     ; 2C24 _ 53
        sub     esp, 20                                 ; 2C25 _ 83. EC, 14
        sub     esp, 8                                  ; 2C28 _ 83. EC, 08
        push    32                                      ; 2C2B _ 6A, 20
        push    32                                      ; 2C2D _ 6A, 20
        call    io_out8                                 ; 2C2F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2C34 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2C37 _ A1, 00000260(d)
        add     eax, 1                                  ; 2C3C _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2C3F _ A3, 00000260(d)
        mov     dword [ebp-10H], 0                      ; 2C44 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 2C4B _ C7. 45, F4, 00000000
        jmp     ?_160                                   ; 2C52 _ E9, 000000AD

?_157:  mov     eax, dword [ebp-0CH]                    ; 2C57 _ 8B. 45, F4
        shl     eax, 4                                  ; 2C5A _ C1. E0, 04
        add     eax, ?_195                              ; 2C5D _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2C62 _ 8B. 00
        cmp     eax, 2                                  ; 2C64 _ 83. F8, 02
        jne     ?_158                                   ; 2C67 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 2C6D _ 8B. 45, F4
        shl     eax, 4                                  ; 2C70 _ C1. E0, 04
        add     eax, ?_194                              ; 2C73 _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2C78 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2C7A _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2C7D _ 8B. 45, F4
        shl     eax, 4                                  ; 2C80 _ C1. E0, 04
        add     eax, ?_194                              ; 2C83 _ 05, 00000264(d)
        mov     dword [eax], edx                        ; 2C88 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2C8A _ 8B. 45, F4
        shl     eax, 4                                  ; 2C8D _ C1. E0, 04
        add     eax, ?_194                              ; 2C90 _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2C95 _ 8B. 00
        test    eax, eax                                ; 2C97 _ 85. C0
        jnz     ?_158                                   ; 2C99 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 2C9B _ 8B. 45, F4
        shl     eax, 4                                  ; 2C9E _ C1. E0, 04
        add     eax, ?_195                              ; 2CA1 _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2CA6 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2CAC _ 8B. 45, F4
        shl     eax, 4                                  ; 2CAF _ C1. E0, 04
        add     eax, ?_197                              ; 2CB2 _ 05, 00000270(d)
        movzx   eax, byte [eax]                         ; 2CB7 _ 0F B6. 00
        movzx   edx, al                                 ; 2CBA _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2CBD _ 8B. 45, F4
        shl     eax, 4                                  ; 2CC0 _ C1. E0, 04
        add     eax, ?_196                              ; 2CC3 _ 05, 0000026C(d)
        mov     eax, dword [eax]                        ; 2CC8 _ 8B. 00
        sub     esp, 8                                  ; 2CCA _ 83. EC, 08
        push    edx                                     ; 2CCD _ 52
        push    eax                                     ; 2CCE _ 50
        call    fifo8_put                               ; 2CCF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2CD4 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2CD7 _ 8B. 45, F4
        shl     eax, 4                                  ; 2CDA _ C1. E0, 04
        add     eax, timerctl                           ; 2CDD _ 05, 00000260(d)
        lea     ebx, [eax+4H]                           ; 2CE2 _ 8D. 58, 04
        call    getTaskTimer                            ; 2CE5 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 2CEA _ 39. C3
        jnz     ?_158                                   ; 2CEC _ 75, 07
        mov     dword [ebp-10H], 1                      ; 2CEE _ C7. 45, F0, 00000001
?_158:  cmp     dword [ebp-10H], 1                      ; 2CF5 _ 83. 7D, F0, 01
        jnz     ?_159                                   ; 2CF9 _ 75, 05
        call    task_switch                             ; 2CFB _ E8, FFFFFFFC(rel)
?_159:  add     dword [ebp-0CH], 1                      ; 2D00 _ 83. 45, F4, 01
?_160:  cmp     dword [ebp-0CH], 499                    ; 2D04 _ 81. 7D, F4, 000001F3
        jle     ?_157                                   ; 2D0B _ 0F 8E, FFFFFF46
        nop                                             ; 2D11 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2D12 _ 8B. 5D, FC
        leave                                           ; 2D15 _ C9
        ret                                             ; 2D16 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2D17 _ 55
        mov     ebp, esp                                ; 2D18 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2D1A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2D1D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2D20 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2D23 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2D26 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2D29 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2D2B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2D2E _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2D31 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2D34 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2D37 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D3E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2D41 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D48 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2D4B _ C7. 40, 14, 00000000
        nop                                             ; 2D52 _ 90
        pop     ebp                                     ; 2D53 _ 5D
        ret                                             ; 2D54 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2D55 _ 55
        mov     ebp, esp                                ; 2D56 _ 89. E5
        sub     esp, 4                                  ; 2D58 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2D5B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2D5E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2D61 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D64 _ 8B. 40, 10
        test    eax, eax                                ; 2D67 _ 85. C0
        jnz     ?_161                                   ; 2D69 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2D6B _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2D6E _ 8B. 40, 14
        or      eax, 01H                                ; 2D71 _ 83. C8, 01
        mov     edx, eax                                ; 2D74 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2D76 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2D79 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2D7C _ B8, FFFFFFFF
        jmp     ?_163                                   ; 2D81 _ EB, 50

?_161:  mov     eax, dword [ebp+8H]                     ; 2D83 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2D86 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2D88 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D8B _ 8B. 40, 08
        add     edx, eax                                ; 2D8E _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2D90 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2D94 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2D96 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D99 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2D9C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D9F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2DA2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2DA5 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2DA8 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2DAB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2DAE _ 8B. 40, 0C
        cmp     edx, eax                                ; 2DB1 _ 39. C2
        jl      ?_162                                   ; 2DB3 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2DB5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2DB8 _ C7. 40, 08, 00000000
?_162:  mov     eax, dword [ebp+8H]                     ; 2DBF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DC2 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2DC5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DC8 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2DCB _ 89. 50, 10
        mov     eax, 1                                  ; 2DCE _ B8, 00000001
?_163:  leave                                           ; 2DD3 _ C9
        ret                                             ; 2DD4 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 2DD5 _ 55
        mov     ebp, esp                                ; 2DD6 _ 89. E5
        sub     esp, 16                                 ; 2DD8 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2DDB _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2DDE _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2DE1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2DE4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2DE7 _ 39. C2
        jnz     ?_164                                   ; 2DE9 _ 75, 07
        mov     eax, 4294967295                         ; 2DEB _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2DF0 _ EB, 51

?_164:  mov     eax, dword [ebp+8H]                     ; 2DF2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2DF5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2DF7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2DFA _ 8B. 40, 04
        add     eax, edx                                ; 2DFD _ 01. D0
        movzx   eax, byte [eax]                         ; 2DFF _ 0F B6. 00
        movzx   eax, al                                 ; 2E02 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2E05 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E08 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2E0B _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2E0E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E11 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2E14 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2E17 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2E1A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2E1D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E20 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2E23 _ 39. C2
        jl      ?_165                                   ; 2E25 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2E27 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2E2A _ C7. 40, 04, 00000000
?_165:  mov     eax, dword [ebp+8H]                     ; 2E31 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E34 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2E37 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E3A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E3D _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2E40 _ 8B. 45, FC
?_166:  leave                                           ; 2E43 _ C9
        ret                                             ; 2E44 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 2E45 _ 55
        mov     ebp, esp                                ; 2E46 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E48 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2E4B _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2E4E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E51 _ 8B. 40, 10
        sub     edx, eax                                ; 2E54 _ 29. C2
        mov     eax, edx                                ; 2E56 _ 89. D0
        pop     ebp                                     ; 2E58 _ 5D
        ret                                             ; 2E59 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 2E5A _ 55
        mov     ebp, esp                                ; 2E5B _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 2E5D _ 81. 7D, 0C, 000FFFFF
        jbe     ?_167                                   ; 2E64 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 2E66 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 2E6D _ 8B. 45, 0C
        shr     eax, 12                                 ; 2E70 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 2E73 _ 89. 45, 0C
?_167:  mov     eax, dword [ebp+0CH]                    ; 2E76 _ 8B. 45, 0C
        mov     edx, eax                                ; 2E79 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2E7B _ 8B. 45, 08
        mov     word [eax], dx                          ; 2E7E _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 2E81 _ 8B. 45, 10
        mov     edx, eax                                ; 2E84 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2E86 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 2E89 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 2E8D _ 8B. 45, 10
        sar     eax, 16                                 ; 2E90 _ C1. F8, 10
        mov     edx, eax                                ; 2E93 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2E95 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 2E98 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 2E9B _ 8B. 45, 14
        mov     edx, eax                                ; 2E9E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2EA0 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 2EA3 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2EA6 _ 8B. 45, 0C
        shr     eax, 16                                 ; 2EA9 _ C1. E8, 10
        and     eax, 0FH                                ; 2EAC _ 83. E0, 0F
        mov     edx, eax                                ; 2EAF _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 2EB1 _ 8B. 45, 14
        sar     eax, 8                                  ; 2EB4 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 2EB7 _ 83. E0, F0
        or      eax, edx                                ; 2EBA _ 09. D0
        mov     edx, eax                                ; 2EBC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2EBE _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 2EC1 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 2EC4 _ 8B. 45, 10
        shr     eax, 24                                 ; 2EC7 _ C1. E8, 18
        mov     edx, eax                                ; 2ECA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2ECC _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 2ECF _ 88. 50, 07
        nop                                             ; 2ED2 _ 90
        pop     ebp                                     ; 2ED3 _ 5D
        ret                                             ; 2ED4 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 2ED5 _ 55
        mov     ebp, esp                                ; 2ED6 _ 89. E5
        mov     eax, dword [task_timer]                 ; 2ED8 _ A1, 000021A4(d)
        pop     ebp                                     ; 2EDD _ 5D
        ret                                             ; 2EDE _ C3
; getTaskTimer End of function

task_init:; Function begin
        push    ebp                                     ; 2EDF _ 55
        mov     ebp, esp                                ; 2EE0 _ 89. E5
        sub     esp, 24                                 ; 2EE2 _ 83. EC, 18
        call    get_addr_gdt                            ; 2EE5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 2EEA _ 89. 45, F0
        sub     esp, 8                                  ; 2EED _ 83. EC, 08
        push    240                                     ; 2EF0 _ 68, 000000F0
        push    dword [ebp+8H]                          ; 2EF5 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2EF8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2EFD _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 2F00 _ A3, 000021A8(d)
        mov     dword [ebp-14H], 0                      ; 2F05 _ C7. 45, EC, 00000000
        jmp     ?_169                                   ; 2F0C _ EB, 73

?_168:  mov     edx, dword [taskctl]                    ; 2F0E _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-14H]                    ; 2F14 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 2F17 _ 6B. C0, 70
        add     eax, edx                                ; 2F1A _ 01. D0
        add     eax, 20                                 ; 2F1C _ 83. C0, 14
        mov     dword [eax], 0                          ; 2F1F _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 2F25 _ 8B. 45, EC
        add     eax, 7                                  ; 2F28 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 2F2B _ 8B. 0D, 000021A8(d)
        lea     edx, [eax*8]                            ; 2F31 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 2F38 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 2F3B _ 6B. C0, 70
        add     eax, ecx                                ; 2F3E _ 01. C8
        add     eax, 16                                 ; 2F40 _ 83. C0, 10
        mov     dword [eax], edx                        ; 2F43 _ 89. 10
        mov     eax, dword [taskctl]                    ; 2F45 _ A1, 000021A8(d)
        mov     edx, dword [ebp-14H]                    ; 2F4A _ 8B. 55, EC
        imul    edx, edx, 112                           ; 2F4D _ 6B. D2, 70
        add     edx, 16                                 ; 2F50 _ 83. C2, 10
        add     eax, edx                                ; 2F53 _ 01. D0
        add     eax, 8                                  ; 2F55 _ 83. C0, 08
        mov     ecx, eax                                ; 2F58 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 2F5A _ 8B. 45, EC
        add     eax, 7                                  ; 2F5D _ 83. C0, 07
        lea     edx, [eax*8]                            ; 2F60 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 2F67 _ 8B. 45, F0
        add     eax, edx                                ; 2F6A _ 01. D0
        push    137                                     ; 2F6C _ 68, 00000089
        push    ecx                                     ; 2F71 _ 51
        push    103                                     ; 2F72 _ 6A, 67
        push    eax                                     ; 2F74 _ 50
        call    set_segmdesc                            ; 2F75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F7A _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 2F7D _ 83. 45, EC, 01
?_169:  cmp     dword [ebp-14H], 1                      ; 2F81 _ 83. 7D, EC, 01
        jle     ?_168                                   ; 2F85 _ 7E, 87
        call    task_alloc                              ; 2F87 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 2F8C _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2F8F _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 2F92 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 2F99 _ A1, 000021A8(d)
        mov     dword [eax], 1                          ; 2F9E _ C7. 00, 00000001
        mov     eax, dword [taskctl]                    ; 2FA4 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 2FA9 _ C7. 40, 04, 00000000
        mov     eax, dword [taskctl]                    ; 2FB0 _ A1, 000021A8(d)
        mov     edx, dword [ebp-0CH]                    ; 2FB5 _ 8B. 55, F4
        mov     dword [eax+8H], edx                     ; 2FB8 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2FBB _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 2FBE _ 8B. 00
        sub     esp, 12                                 ; 2FC0 _ 83. EC, 0C
        push    eax                                     ; 2FC3 _ 50
        call    load_tr                                 ; 2FC4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FC9 _ 83. C4, 10
        call    timer_alloc                             ; 2FCC _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 2FD1 _ A3, 000021A4(d)
        mov     eax, dword [task_timer]                 ; 2FD6 _ A1, 000021A4(d)
        sub     esp, 8                                  ; 2FDB _ 83. EC, 08
        push    100                                     ; 2FDE _ 6A, 64
        push    eax                                     ; 2FE0 _ 50
        call    timer_setTime                           ; 2FE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FE6 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2FE9 _ 8B. 45, F4
        leave                                           ; 2FEC _ C9
        ret                                             ; 2FED _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 2FEE _ 55
        mov     ebp, esp                                ; 2FEF _ 89. E5
        sub     esp, 16                                 ; 2FF1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2FF4 _ C7. 45, F8, 00000000
        jmp     ?_172                                   ; 2FFB _ E9, 000000DE

?_170:  mov     edx, dword [taskctl]                    ; 3000 _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-8H]                     ; 3006 _ 8B. 45, F8
        imul    eax, eax, 112                           ; 3009 _ 6B. C0, 70
        add     eax, edx                                ; 300C _ 01. D0
        add     eax, 20                                 ; 300E _ 83. C0, 14
        mov     eax, dword [eax]                        ; 3011 _ 8B. 00
        test    eax, eax                                ; 3013 _ 85. C0
        jne     ?_171                                   ; 3015 _ 0F 85, 000000BF
        mov     eax, dword [taskctl]                    ; 301B _ A1, 000021A8(d)
        mov     edx, dword [ebp-8H]                     ; 3020 _ 8B. 55, F8
        imul    edx, edx, 112                           ; 3023 _ 6B. D2, 70
        add     edx, 16                                 ; 3026 _ 83. C2, 10
        add     eax, edx                                ; 3029 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 302B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 302E _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3031 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3038 _ 8B. 45, FC
        mov     dword [eax+2CH], 514                    ; 303B _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-4H]                     ; 3042 _ 8B. 45, FC
        mov     dword [eax+30H], 0                      ; 3045 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-4H]                     ; 304C _ 8B. 45, FC
        mov     dword [eax+34H], 0                      ; 304F _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-4H]                     ; 3056 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 3059 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 3060 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3063 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 306A _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 306D _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-8H]                     ; 3074 _ 8B. 45, F8
        add     eax, 1                                  ; 3077 _ 83. C0, 01
        shl     eax, 9                                  ; 307A _ C1. E0, 09
        mov     edx, eax                                ; 307D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 307F _ 8B. 45, FC
        mov     dword [eax+40H], edx                    ; 3082 _ 89. 50, 40
        mov     eax, dword [ebp-4H]                     ; 3085 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3088 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 308F _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 3092 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3099 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 309C _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 30A3 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 30A6 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 30AD _ 8B. 45, FC
        mov     dword [eax+60H], 0                      ; 30B0 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-4H]                     ; 30B7 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 30BA _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 30C1 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 30C4 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 30CB _ 8B. 45, FC
        mov     dword [eax+6CH], 1073741824             ; 30CE _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-4H]                     ; 30D5 _ 8B. 45, FC
        jmp     ?_173                                   ; 30D8 _ EB, 13

?_171:  add     dword [ebp-8H], 1                       ; 30DA _ 83. 45, F8, 01
?_172:  cmp     dword [ebp-8H], 1                       ; 30DE _ 83. 7D, F8, 01
        jle     ?_170                                   ; 30E2 _ 0F 8E, FFFFFF18
        mov     eax, 0                                  ; 30E8 _ B8, 00000000
?_173:  leave                                           ; 30ED _ C9
        ret                                             ; 30EE _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 30EF _ 55
        mov     ebp, esp                                ; 30F0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30F2 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 30F5 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 30FC _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3101 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx]                        ; 3107 _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 3109 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 310C _ 89. 4C 90, 08
        mov     eax, dword [taskctl]                    ; 3110 _ A1, 000021A8(d)
        mov     edx, dword [eax]                        ; 3115 _ 8B. 10
        add     edx, 1                                  ; 3117 _ 83. C2, 01
        mov     dword [eax], edx                        ; 311A _ 89. 10
        nop                                             ; 311C _ 90
        pop     ebp                                     ; 311D _ 5D
        ret                                             ; 311E _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 311F _ 55
        mov     ebp, esp                                ; 3120 _ 89. E5
        sub     esp, 8                                  ; 3122 _ 83. EC, 08
        mov     eax, dword [task_timer]                 ; 3125 _ A1, 000021A4(d)
        sub     esp, 8                                  ; 312A _ 83. EC, 08
        push    100                                     ; 312D _ 6A, 64
        push    eax                                     ; 312F _ 50
        call    timer_setTime                           ; 3130 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3135 _ 83. C4, 10
        mov     eax, dword [taskctl]                    ; 3138 _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 313D _ 8B. 00
        cmp     eax, 1                                  ; 313F _ 83. F8, 01
        jle     ?_175                                   ; 3142 _ 7E, 50
        mov     eax, dword [taskctl]                    ; 3144 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 3149 _ 8B. 50, 04
        add     edx, 1                                  ; 314C _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 314F _ 89. 50, 04
        mov     eax, dword [taskctl]                    ; 3152 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 3157 _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 315A _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 315F _ 8B. 00
        cmp     edx, eax                                ; 3161 _ 39. C2
        jnz     ?_174                                   ; 3163 _ 75, 0C
        mov     eax, dword [taskctl]                    ; 3165 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 316A _ C7. 40, 04, 00000000
?_174:  mov     eax, dword [taskctl]                    ; 3171 _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3176 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 317C _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 317F _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3183 _ 8B. 00
        sub     esp, 8                                  ; 3185 _ 83. EC, 08
        push    eax                                     ; 3188 _ 50
        push    0                                       ; 3189 _ 6A, 00
        call    farjmp                                  ; 318B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3190 _ 83. C4, 10
        nop                                             ; 3193 _ 90
?_175:  nop                                             ; 3194 _ 90
        leave                                           ; 3195 _ C9
        ret                                             ; 3196 _ C3
; task_switch End of function



?_176:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_177:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_178:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_179:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0011 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0019 _ sk B.

?_180:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_181:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ Page is:
        db 20H, 00H                                     ; 0028 _  .

?_182:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0032 _ Low: .

?_183:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0038 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0040 _ High: .

?_184:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0047 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 004F _ w: .

?_185:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0053 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 005B _ gh: .

?_186:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0060 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_187:  db 00H                                          ; 0002 _ .

?_188:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2243: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2282:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2337:                                            ; byte
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

closebtn.2464:                                          ; byte
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

?_189:  resw    1                                       ; 0004

?_190:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

mouseInfo:                                              ; byte
        resb    32                                      ; 0020

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_191:  resd    1                                       ; 00EC

mx:     resd    1                                       ; 00F0

my:     resd    1                                       ; 00F4

buf_back: resd  2                                       ; 00F8

buf_mouse:                                              ; byte
        resb    256                                     ; 0100

timerInfo:                                              ; byte
        resb    24                                      ; 0200

timerbuf: resq  1                                       ; 0218

shtctl: resd    1                                       ; 0220

sheet_win:                                              ; dword
        resd    1                                       ; 0224

sheet_win2:                                             ; dword
        resd    1                                       ; 0228

sheet_back:                                             ; dword
        resd    1                                       ; 022C

sheet_mouse:                                            ; dword
        resd    1                                       ; 0230

task_a.2237:                                            ; dword
        resd    1                                       ; 0234

task_b.2238:                                            ; dword
        resd    1                                       ; 0238

cnt.2239: resd  1                                       ; 023C

line.2242:                                              ; dword
        resd    1                                       ; 0240

str.2380:                                               ; byte
        resb    1                                       ; 0244

?_192:  resb    9                                       ; 0245

?_193:  resb    2                                       ; 024E

line.2413:                                              ; dword
        resd    1                                       ; 0250

pos.2412: resd  3                                       ; 0254

timerctl:                                               ; byte
        resd    1                                       ; 0260

?_194:                                                  ; byte
        resb    4                                       ; 0264

?_195:                                                  ; byte
        resb    4                                       ; 0268

?_196:                                                  ; byte
        resb    4                                       ; 026C

?_197:                                                  ; byte
        resb    7988                                    ; 0270

task_timer:                                             ; dword
        resd    1                                       ; 21A4

taskctl: resd   1                                       ; 21A8


