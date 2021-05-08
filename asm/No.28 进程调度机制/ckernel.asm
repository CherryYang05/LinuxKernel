; Disassembly of file: ckernel.o
; Fri May  7 23:21:36 2021
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
        mov     dword [ebp-58H], eax                    ; 0029 _ 89. 45, A8
        movzx   eax, word [?_190]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-54H], eax                    ; 0034 _ 89. 45, AC
        movzx   eax, word [?_191]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-50H], eax                    ; 003F _ 89. 45, B0
        call    getTimerController                      ; 0042 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 0047 _ 89. 45, B4
        call    init_pit                                ; 004A _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 004F _ 83. EC, 04
        push    timerbuf                                ; 0052 _ 68, 00000218(d)
        push    8                                       ; 0057 _ 6A, 08
        push    timerInfo                               ; 0059 _ 68, 00000200(d)
        call    fifo8_init                              ; 005E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0063 _ 83. C4, 10
        call    timer_alloc                             ; 0066 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 006B _ 89. 45, B8
        sub     esp, 4                                  ; 006E _ 83. EC, 04
        push    10                                      ; 0071 _ 6A, 0A
        push    timerInfo                               ; 0073 _ 68, 00000200(d)
        push    dword [ebp-48H]                         ; 0078 _ FF. 75, B8
        call    timer_init                              ; 007B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0080 _ 83. C4, 10
        sub     esp, 8                                  ; 0083 _ 83. EC, 08
        push    100                                     ; 0086 _ 6A, 64
        push    dword [ebp-48H]                         ; 0088 _ FF. 75, B8
        call    timer_setTime                           ; 008B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0090 _ 83. C4, 10
        call    timer_alloc                             ; 0093 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 0098 _ 89. 45, BC
        sub     esp, 4                                  ; 009B _ 83. EC, 04
        push    2                                       ; 009E _ 6A, 02
        push    timerInfo                               ; 00A0 _ 68, 00000200(d)
        push    dword [ebp-44H]                         ; 00A5 _ FF. 75, BC
        call    timer_init                              ; 00A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AD _ 83. C4, 10
        sub     esp, 8                                  ; 00B0 _ 83. EC, 08
        push    300                                     ; 00B3 _ 68, 0000012C
        push    dword [ebp-44H]                         ; 00B8 _ FF. 75, BC
        call    timer_setTime                           ; 00BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C0 _ 83. C4, 10
        call    timer_alloc                             ; 00C3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 00C8 _ 89. 45, C0
        sub     esp, 4                                  ; 00CB _ 83. EC, 04
        push    1                                       ; 00CE _ 6A, 01
        push    timerInfo                               ; 00D0 _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 00D5 _ FF. 75, C0
        call    timer_init                              ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        sub     esp, 8                                  ; 00E0 _ 83. EC, 08
        push    50                                      ; 00E3 _ 6A, 32
        push    dword [ebp-40H]                         ; 00E5 _ FF. 75, C0
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
        call    io_sti                                  ; 012B _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0130 _ 83. EC, 0C
        push    mouse_move                              ; 0133 _ 68, 000000E0(d)
        call    enable_mouse                            ; 0138 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 013D _ 83. C4, 10
        call    get_addr_buffer                         ; 0140 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0145 _ 89. 45, C4
        call    get_memory_block_count                  ; 0148 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 014D _ 89. 45, C8
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
        mov     dword [ebp-34H], eax                    ; 0190 _ 89. 45, CC
        mov     eax, dword [ebp-34H]                    ; 0193 _ 8B. 45, CC
        sub     esp, 12                                 ; 0196 _ 83. EC, 0C
        push    eax                                     ; 0199 _ 50
        call    intToHexStr                             ; 019A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019F _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 01A2 _ 89. 45, D0
        mov     eax, dword [memman]                     ; 01A5 _ A1, 00000008(d)
        push    dword [ebp-50H]                         ; 01AA _ FF. 75, B0
        push    dword [ebp-54H]                         ; 01AD _ FF. 75, AC
        push    dword [ebp-58H]                         ; 01B0 _ FF. 75, A8
        push    eax                                     ; 01B3 _ 50
        call    shtctl_init                             ; 01B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B9 _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 01BC _ A3, 00000220(d)
        mov     eax, dword [shtctl]                     ; 01C1 _ A1, 00000220(d)
        sub     esp, 12                                 ; 01C6 _ 83. EC, 0C
        push    eax                                     ; 01C9 _ 50
        call    sheet_alloc                             ; 01CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CF _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01D2 _ A3, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 01D7 _ A1, 00000220(d)
        sub     esp, 12                                 ; 01DC _ 83. EC, 0C
        push    eax                                     ; 01DF _ 50
        call    sheet_alloc                             ; 01E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E5 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01E8 _ A3, 00000230(d)
        mov     eax, dword [ebp-54H]                    ; 01ED _ 8B. 45, AC
        imul    eax, dword [ebp-50H]                    ; 01F0 _ 0F AF. 45, B0
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
        push    dword [ebp-50H]                         ; 0215 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0218 _ FF. 75, AC
        push    eax                                     ; 021B _ 50
        call    init_screen8                            ; 021C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0221 _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0224 _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 022A _ A1, 0000022C(d)
        sub     esp, 12                                 ; 022F _ 83. EC, 0C
        push    99                                      ; 0232 _ 6A, 63
        push    dword [ebp-50H]                         ; 0234 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0237 _ FF. 75, AC
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
        mov     eax, dword [shtctl]                     ; 0278 _ A1, 00000220(d)
        push    0                                       ; 027D _ 6A, 00
        push    0                                       ; 027F _ 6A, 00
        push    edx                                     ; 0281 _ 52
        push    eax                                     ; 0282 _ 50
        call    sheet_slide                             ; 0283 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0288 _ 83. C4, 10
        mov     eax, dword [ebp-54H]                    ; 028B _ 8B. 45, AC
        sub     eax, 16                                 ; 028E _ 83. E8, 10
        mov     edx, eax                                ; 0291 _ 89. C2
        shr     edx, 31                                 ; 0293 _ C1. EA, 1F
        add     eax, edx                                ; 0296 _ 01. D0
        sar     eax, 1                                  ; 0298 _ D1. F8
        mov     dword [mx], eax                         ; 029A _ A3, 000000F0(d)
        mov     eax, dword [ebp-50H]                    ; 029F _ 8B. 45, B0
        sub     eax, 44                                 ; 02A2 _ 83. E8, 2C
        mov     edx, eax                                ; 02A5 _ 89. C2
        shr     edx, 31                                 ; 02A7 _ C1. EA, 1F
        add     eax, edx                                ; 02AA _ 01. D0
        sar     eax, 1                                  ; 02AC _ D1. F8
        mov     dword [my], eax                         ; 02AE _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 02B3 _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 02B9 _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 02BF _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02C5 _ A1, 00000220(d)
        push    ebx                                     ; 02CA _ 53
        push    ecx                                     ; 02CB _ 51
        push    edx                                     ; 02CC _ 52
        push    eax                                     ; 02CD _ 50
        call    sheet_slide                             ; 02CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D3 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02D6 _ A1, 00000220(d)
        sub     esp, 12                                 ; 02DB _ 83. EC, 0C
        push    2                                       ; 02DE _ 6A, 02
        push    100                                     ; 02E0 _ 6A, 64
        push    170                                     ; 02E2 _ 68, 000000AA
        push    ?_176                                   ; 02E7 _ 68, 00000000(d)
        push    eax                                     ; 02EC _ 50
        call    messageBox                              ; 02ED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02F2 _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02F5 _ A3, 00000224(d)
        mov     edx, dword [sheet_back]                 ; 02FA _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0300 _ A1, 00000220(d)
        sub     esp, 4                                  ; 0305 _ 83. EC, 04
        push    0                                       ; 0308 _ 6A, 00
        push    edx                                     ; 030A _ 52
        push    eax                                     ; 030B _ 50
        call    sheet_level_updown                      ; 030C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0311 _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 0314 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 031A _ A1, 00000220(d)
        sub     esp, 4                                  ; 031F _ 83. EC, 04
        push    50                                      ; 0322 _ 6A, 32
        push    edx                                     ; 0324 _ 52
        push    eax                                     ; 0325 _ 50
        call    sheet_level_updown                      ; 0326 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 032B _ 83. C4, 10
        call    io_sti                                  ; 032E _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 0333 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 0338 _ 89. 45, D4
        mov     eax, dword [memman]                     ; 033B _ A1, 00000008(d)
        sub     esp, 12                                 ; 0340 _ 83. EC, 0C
        push    eax                                     ; 0343 _ 50
        call    task_init                               ; 0344 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0349 _ 83. C4, 10
        mov     dword [task_a.2237], eax                ; 034C _ A3, 00000234(d)
        call    task_alloc                              ; 0351 _ E8, FFFFFFFC(rel)
        mov     dword [task_b.2238], eax                ; 0356 _ A3, 00000238(d)
        mov     eax, dword [task_b.2238]                ; 035B _ A1, 00000238(d)
        mov     dword [eax+68H], 0                      ; 0360 _ C7. 40, 68, 00000000
        mov     eax, dword [task_b.2238]                ; 0367 _ A1, 00000238(d)
        mov     dword [eax+6CH], 1073741824             ; 036C _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-2CH]                    ; 0373 _ 8B. 45, D4
        neg     eax                                     ; 0376 _ F7. D8
        lea     edx, [task_b_main+eax]                  ; 0378 _ 8D. 90, 00000000(d)
        mov     eax, dword [task_b.2238]                ; 037E _ A1, 00000238(d)
        mov     dword [eax+28H], edx                    ; 0383 _ 89. 50, 28
        mov     eax, dword [task_b.2238]                ; 0386 _ A1, 00000238(d)
        mov     dword [eax+50H], 0                      ; 038B _ C7. 40, 50, 00000000
        mov     eax, dword [task_b.2238]                ; 0392 _ A1, 00000238(d)
        mov     dword [eax+54H], 8                      ; 0397 _ C7. 40, 54, 00000008
        mov     eax, dword [task_b.2238]                ; 039E _ A1, 00000238(d)
        mov     dword [eax+58H], 32                     ; 03A3 _ C7. 40, 58, 00000020
        mov     eax, dword [task_b.2238]                ; 03AA _ A1, 00000238(d)
        mov     dword [eax+5CH], 24                     ; 03AF _ C7. 40, 5C, 00000018
        mov     eax, dword [task_b.2238]                ; 03B6 _ A1, 00000238(d)
        mov     dword [eax+60H], 0                      ; 03BB _ C7. 40, 60, 00000000
        mov     eax, dword [task_b.2238]                ; 03C2 _ A1, 00000238(d)
        mov     dword [eax+64H], 16                     ; 03C7 _ C7. 40, 64, 00000010
        mov     eax, dword [task_b.2238]                ; 03CE _ A1, 00000238(d)
        sub     esp, 12                                 ; 03D3 _ 83. EC, 0C
        push    eax                                     ; 03D6 _ 50
        call    task_run                                ; 03D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03DC _ 83. C4, 10
        mov     byte [ebp-61H], 0                       ; 03DF _ C6. 45, 9F, 00
        mov     dword [ebp-60H], 7                      ; 03E3 _ C7. 45, A0, 00000007
        mov     dword [ebp-5CH], 0                      ; 03EA _ C7. 45, A4, 00000000
        mov     edx, dword [sheet_win]                  ; 03F1 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 03F7 _ A1, 00000220(d)
        sub     esp, 8                                  ; 03FC _ 83. EC, 08
        push    ?_177                                   ; 03FF _ 68, 00000008(d)
        push    10                                      ; 0404 _ 6A, 0A
        push    63                                      ; 0406 _ 6A, 3F
        push    8                                       ; 0408 _ 6A, 08
        push    edx                                     ; 040A _ 52
        push    eax                                     ; 040B _ 50
        call    showString                              ; 040C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0411 _ 83. C4, 20
?_001:  call    io_sti                                  ; 0414 _ E8, FFFFFFFC(rel)
        call    getTaskTimer                            ; 0419 _ E8, FFFFFFFC(rel)
        mov     eax, dword [eax]                        ; 041E _ 8B. 00
        sub     esp, 12                                 ; 0420 _ 83. EC, 0C
        push    eax                                     ; 0423 _ 50
        call    intToHexStr                             ; 0424 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0429 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 042C _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 042F _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0434 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0437 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 043C _ 8B. 00
        sub     esp, 4                                  ; 043E _ 83. EC, 04
        push    38                                      ; 0441 _ 6A, 26
        push    150                                     ; 0443 _ 68, 00000096
        push    23                                      ; 0448 _ 6A, 17
        push    8                                       ; 044A _ 6A, 08
        push    8                                       ; 044C _ 6A, 08
        push    edx                                     ; 044E _ 52
        push    eax                                     ; 044F _ 50
        call    boxfill8                                ; 0450 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0455 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 0458 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 045E _ A1, 00000220(d)
        sub     esp, 8                                  ; 0463 _ 83. EC, 08
        push    dword [ebp-28H]                         ; 0466 _ FF. 75, D8
        push    10                                      ; 0469 _ 6A, 0A
        push    23                                      ; 046B _ 6A, 17
        push    8                                       ; 046D _ 6A, 08
        push    edx                                     ; 046F _ 52
        push    eax                                     ; 0470 _ 50
        call    showString                              ; 0471 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0476 _ 83. C4, 20
        call    io_cli                                  ; 0479 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 047E _ 83. EC, 0C
        push    keyInfo                                 ; 0481 _ 68, 00000008(d)
        call    fifo8_status                            ; 0486 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 048B _ 83. C4, 10
        mov     ebx, eax                                ; 048E _ 89. C3
        sub     esp, 12                                 ; 0490 _ 83. EC, 0C
        push    mouseInfo                               ; 0493 _ 68, 00000020(d)
        call    fifo8_status                            ; 0498 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 049D _ 83. C4, 10
        add     ebx, eax                                ; 04A0 _ 01. C3
        sub     esp, 12                                 ; 04A2 _ 83. EC, 0C
        push    timerInfo                               ; 04A5 _ 68, 00000200(d)
        call    fifo8_status                            ; 04AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04AF _ 83. C4, 10
        add     eax, ebx                                ; 04B2 _ 01. D8
        test    eax, eax                                ; 04B4 _ 85. C0
        jnz     ?_002                                   ; 04B6 _ 75, 0A
        call    io_sti                                  ; 04B8 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04BD _ E9, FFFFFF52

?_002:  sub     esp, 12                                 ; 04C2 _ 83. EC, 0C
        push    keyInfo                                 ; 04C5 _ 68, 00000008(d)
        call    fifo8_status                            ; 04CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04CF _ 83. C4, 10
        test    eax, eax                                ; 04D2 _ 85. C0
        je      ?_007                                   ; 04D4 _ 0F 84, 00000314
        call    io_sti                                  ; 04DA _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 04DF _ 83. EC, 0C
        push    keyInfo                                 ; 04E2 _ 68, 00000008(d)
        call    fifo8_get                               ; 04E7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04EC _ 83. C4, 10
        mov     byte [ebp-61H], al                      ; 04EF _ 88. 45, 9F
        cmp     byte [ebp-61H], 28                      ; 04F2 _ 80. 7D, 9F, 1C
        jnz     ?_003                                   ; 04F6 _ 75, 59
        mov     ebx, dword [cnt.2239]                   ; 04F8 _ 8B. 1D, 0000023C(d)
        mov     eax, dword [sheet_back]                 ; 04FE _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 0503 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 0505 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 050B _ A1, 00000220(d)
        sub     esp, 4                                  ; 0510 _ 83. EC, 04
        push    7                                       ; 0513 _ 6A, 07
        push    dword [ebp-54H]                         ; 0515 _ FF. 75, AC
        push    ebx                                     ; 0518 _ 53
        push    ecx                                     ; 0519 _ 51
        push    dword [ebp-3CH]                         ; 051A _ FF. 75, C4
        push    edx                                     ; 051D _ 52
        push    eax                                     ; 051E _ 50
        call    showMemInfo                             ; 051F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0524 _ 83. C4, 20
        mov     eax, dword [cnt.2239]                   ; 0527 _ A1, 0000023C(d)
        add     eax, 1                                  ; 052C _ 83. C0, 01
        mov     dword [cnt.2239], eax                   ; 052F _ A3, 0000023C(d)
        mov     eax, dword [cnt.2239]                   ; 0534 _ A1, 0000023C(d)
        cmp     dword [ebp-38H], eax                    ; 0539 _ 39. 45, C8
        jg      ?_001                                   ; 053C _ 0F 8F, FFFFFED2
        mov     dword [cnt.2239], 0                     ; 0542 _ C7. 05, 0000023C(d), 00000000
        jmp     ?_001                                   ; 054C _ E9, FFFFFEC3

?_003:  movzx   eax, byte [ebp-61H]                     ; 0551 _ 0F B6. 45, 9F
        movzx   eax, byte [keytable+eax]                ; 0555 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 055C _ 84. C0
        jz      ?_004                                   ; 055E _ 74, 18
        cmp     byte [ebp-61H], 15                      ; 0560 _ 80. 7D, 9F, 0F
        jbe     ?_004                                   ; 0564 _ 76, 12
        cmp     byte [ebp-61H], 83                      ; 0566 _ 80. 7D, 9F, 53
        ja      ?_004                                   ; 056A _ 77, 0C
        mov     eax, dword [line.2242]                  ; 056C _ A1, 00000240(d)
        cmp     eax, 142                                ; 0571 _ 3D, 0000008E
        jle     ?_005                                   ; 0576 _ 7E, 18
?_004:  cmp     byte [ebp-61H], 14                      ; 0578 _ 80. 7D, 9F, 0E
        jne     ?_001                                   ; 057C _ 0F 85, FFFFFE92
        mov     eax, dword [line.2242]                  ; 0582 _ A1, 00000240(d)
        cmp     eax, 7                                  ; 0587 _ 83. F8, 07
        jle     ?_001                                   ; 058A _ 0F 8E, FFFFFE84
?_005:  movzx   eax, byte [ebp-61H]                     ; 0590 _ 0F B6. 45, 9F
        movzx   eax, byte [keytable+eax]                ; 0594 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 059B _ 84. C0
        je      ?_006                                   ; 059D _ 0F 84, 00000125
        cmp     byte [ebp-61H], 15                      ; 05A3 _ 80. 7D, 9F, 0F
        jbe     ?_006                                   ; 05A7 _ 0F 86, 0000011B
        cmp     byte [ebp-61H], 83                      ; 05AD _ 80. 7D, 9F, 53
        ja      ?_006                                   ; 05B1 _ 0F 87, 00000111
        mov     eax, dword [line.2242]                  ; 05B7 _ A1, 00000240(d)
        cmp     eax, 142                                ; 05BC _ 3D, 0000008E
        jg      ?_006                                   ; 05C1 _ 0F 8F, 00000101
        mov     eax, dword [pos.2243]                   ; 05C7 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 05CC _ 8D. 78, 28
        mov     eax, dword [line.2242]                  ; 05CF _ A1, 00000240(d)
        lea     esi, [eax+0EH]                          ; 05D4 _ 8D. 70, 0E
        mov     eax, dword [pos.2243]                   ; 05D7 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05DC _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 05DF _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 05E4 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 05E7 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 05EC _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 05EF _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 05F4 _ 8B. 00
        sub     esp, 4                                  ; 05F6 _ 83. EC, 04
        push    edi                                     ; 05F9 _ 57
        push    esi                                     ; 05FA _ 56
        push    ebx                                     ; 05FB _ 53
        push    ecx                                     ; 05FC _ 51
        push    7                                       ; 05FD _ 6A, 07
        push    edx                                     ; 05FF _ 52
        push    eax                                     ; 0600 _ 50
        call    boxfill8                                ; 0601 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0606 _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 0609 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 060E _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 0611 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 0616 _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 0619 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 061E _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 0621 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 0626 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0629 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 062F _ A1, 00000220(d)
        sub     esp, 8                                  ; 0634 _ 83. EC, 08
        push    edi                                     ; 0637 _ 57
        push    esi                                     ; 0638 _ 56
        push    ebx                                     ; 0639 _ 53
        push    ecx                                     ; 063A _ 51
        push    edx                                     ; 063B _ 52
        push    eax                                     ; 063C _ 50
        call    sheet_refresh                           ; 063D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0642 _ 83. C4, 20
        movzx   eax, byte [ebp-61H]                     ; 0645 _ 0F B6. 45, 9F
        movzx   eax, byte [keytable+eax]                ; 0649 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0650 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0653 _ C6. 45, E3, 00
        mov     eax, dword [pos.2243]                   ; 0657 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 065C _ 8D. 70, 1A
        mov     eax, dword [line.2242]                  ; 065F _ A1, 00000240(d)
        lea     ebx, [eax+8H]                           ; 0664 _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 0667 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 066D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0672 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0675 _ 8D. 4D, E2
        push    ecx                                     ; 0678 _ 51
        push    0                                       ; 0679 _ 6A, 00
        push    esi                                     ; 067B _ 56
        push    ebx                                     ; 067C _ 53
        push    edx                                     ; 067D _ 52
        push    eax                                     ; 067E _ 50
        call    showString                              ; 067F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0684 _ 83. C4, 20
        mov     eax, dword [line.2242]                  ; 0687 _ A1, 00000240(d)
        add     eax, 8                                  ; 068C _ 83. C0, 08
        mov     dword [line.2242], eax                  ; 068F _ A3, 00000240(d)
        mov     eax, dword [sheet_win]                  ; 0694 _ A1, 00000224(d)
        mov     eax, dword [eax+4H]                     ; 0699 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 069C _ 8D. 50, F0
        mov     eax, dword [line.2242]                  ; 069F _ A1, 00000240(d)
        cmp     edx, eax                                ; 06A4 _ 39. C2
        jg      ?_013                                   ; 06A6 _ 0F 8F, 000002FB
        mov     eax, dword [pos.2243]                   ; 06AC _ A1, 00000074(d)
        add     eax, 16                                 ; 06B1 _ 83. C0, 10
        mov     dword [pos.2243], eax                   ; 06B4 _ A3, 00000074(d)
        mov     dword [line.2242], 0                    ; 06B9 _ C7. 05, 00000240(d), 00000000
        jmp     ?_013                                   ; 06C3 _ E9, 000002DF

?_006:  cmp     byte [ebp-61H], 14                      ; 06C8 _ 80. 7D, 9F, 0E
        jne     ?_001                                   ; 06CC _ 0F 85, FFFFFD42
        mov     eax, dword [line.2242]                  ; 06D2 _ A1, 00000240(d)
        cmp     eax, 7                                  ; 06D7 _ 83. F8, 07
        jle     ?_001                                   ; 06DA _ 0F 8E, FFFFFD34
        mov     eax, dword [pos.2243]                   ; 06E0 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06E5 _ 8D. 78, 28
        mov     eax, dword [line.2242]                  ; 06E8 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 06ED _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 06F0 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06F5 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 06F8 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 06FD _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0700 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0705 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0708 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 070D _ 8B. 00
        sub     esp, 4                                  ; 070F _ 83. EC, 04
        push    edi                                     ; 0712 _ 57
        push    esi                                     ; 0713 _ 56
        push    ebx                                     ; 0714 _ 53
        push    ecx                                     ; 0715 _ 51
        push    7                                       ; 0716 _ 6A, 07
        push    edx                                     ; 0718 _ 52
        push    eax                                     ; 0719 _ 50
        call    boxfill8                                ; 071A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 071F _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 0722 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0727 _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 072A _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 072F _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 0732 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0737 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 073A _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 073F _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0742 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0748 _ A1, 00000220(d)
        sub     esp, 8                                  ; 074D _ 83. EC, 08
        push    edi                                     ; 0750 _ 57
        push    esi                                     ; 0751 _ 56
        push    ebx                                     ; 0752 _ 53
        push    ecx                                     ; 0753 _ 51
        push    edx                                     ; 0754 _ 52
        push    eax                                     ; 0755 _ 50
        call    sheet_refresh                           ; 0756 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 075B _ 83. C4, 20
        mov     eax, dword [line.2242]                  ; 075E _ A1, 00000240(d)
        sub     eax, 8                                  ; 0763 _ 83. E8, 08
        mov     dword [line.2242], eax                  ; 0766 _ A3, 00000240(d)
        mov     eax, dword [pos.2243]                   ; 076B _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0770 _ 8D. 78, 28
        mov     eax, dword [line.2242]                  ; 0773 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 0778 _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 077B _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0780 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 0783 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 0788 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 078B _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0790 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0793 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0798 _ 8B. 00
        sub     esp, 4                                  ; 079A _ 83. EC, 04
        push    edi                                     ; 079D _ 57
        push    esi                                     ; 079E _ 56
        push    ebx                                     ; 079F _ 53
        push    ecx                                     ; 07A0 _ 51
        push    7                                       ; 07A1 _ 6A, 07
        push    edx                                     ; 07A3 _ 52
        push    eax                                     ; 07A4 _ 50
        call    boxfill8                                ; 07A5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07AA _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 07AD _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 07B2 _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 07B5 _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 07BA _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 07BD _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 07C2 _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 07C5 _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 07CA _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 07CD _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 07D3 _ A1, 00000220(d)
        sub     esp, 8                                  ; 07D8 _ 83. EC, 08
        push    edi                                     ; 07DB _ 57
        push    esi                                     ; 07DC _ 56
        push    ebx                                     ; 07DD _ 53
        push    ecx                                     ; 07DE _ 51
        push    edx                                     ; 07DF _ 52
        push    eax                                     ; 07E0 _ 50
        call    sheet_refresh                           ; 07E1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07E6 _ 83. C4, 20
        jmp     ?_001                                   ; 07E9 _ E9, FFFFFC26

?_007:  sub     esp, 12                                 ; 07EE _ 83. EC, 0C
        push    mouseInfo                               ; 07F1 _ 68, 00000020(d)
        call    fifo8_status                            ; 07F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07FB _ 83. C4, 10
        test    eax, eax                                ; 07FE _ 85. C0
        jz      ?_008                                   ; 0800 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0802 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 0808 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 080E _ A1, 00000220(d)
        sub     esp, 4                                  ; 0813 _ 83. EC, 04
        push    ecx                                     ; 0816 _ 51
        push    edx                                     ; 0817 _ 52
        push    eax                                     ; 0818 _ 50
        call    showMouseInfo                           ; 0819 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 081E _ 83. C4, 10
        jmp     ?_001                                   ; 0821 _ E9, FFFFFBEE

?_008:  sub     esp, 12                                 ; 0826 _ 83. EC, 0C
        push    timerInfo                               ; 0829 _ 68, 00000200(d)
        call    fifo8_status                            ; 082E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0833 _ 83. C4, 10
        test    eax, eax                                ; 0836 _ 85. C0
        je      ?_001                                   ; 0838 _ 0F 84, FFFFFBD6
        call    io_sti                                  ; 083E _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0843 _ 83. EC, 0C
        push    timerInfo                               ; 0846 _ 68, 00000200(d)
        call    fifo8_get                               ; 084B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0850 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0853 _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 0856 _ 83. 7D, DC, 0A
        jnz     ?_009                                   ; 085A _ 75, 40
        mov     edx, dword [sheet_back]                 ; 085C _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0862 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0867 _ 83. EC, 08
        push    ?_178                                   ; 086A _ 68, 0000001E(d)
        push    7                                       ; 086F _ 6A, 07
        push    160                                     ; 0871 _ 68, 000000A0
        push    dword [ebp-5CH]                         ; 0876 _ FF. 75, A4
        push    edx                                     ; 0879 _ 52
        push    eax                                     ; 087A _ 50
        call    showString                              ; 087B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0880 _ 83. C4, 20
        sub     esp, 8                                  ; 0883 _ 83. EC, 08
        push    100                                     ; 0886 _ 6A, 64
        push    dword [ebp-48H]                         ; 0888 _ FF. 75, B8
        call    timer_setTime                           ; 088B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0890 _ 83. C4, 10
        add     dword [ebp-5CH], 8                      ; 0893 _ 83. 45, A4, 08
        jmp     ?_001                                   ; 0897 _ E9, FFFFFB78

?_009:  cmp     dword [ebp-24H], 2                      ; 089C _ 83. 7D, DC, 02
        jnz     ?_010                                   ; 08A0 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 08A2 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 08A8 _ A1, 00000220(d)
        sub     esp, 8                                  ; 08AD _ 83. EC, 08
        push    ?_179                                   ; 08B0 _ 68, 00000020(d)
        push    7                                       ; 08B5 _ 6A, 07
        push    32                                      ; 08B7 _ 6A, 20
        push    80                                      ; 08B9 _ 6A, 50
        push    edx                                     ; 08BB _ 52
        push    eax                                     ; 08BC _ 50
        call    showString                              ; 08BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08C2 _ 83. C4, 20
        jmp     ?_001                                   ; 08C5 _ E9, FFFFFB4A

?_010:  cmp     dword [ebp-24H], 0                      ; 08CA _ 83. 7D, DC, 00
        jz      ?_011                                   ; 08CE _ 74, 1E
        sub     esp, 4                                  ; 08D0 _ 83. EC, 04
        push    0                                       ; 08D3 _ 6A, 00
        push    timerInfo                               ; 08D5 _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 08DA _ FF. 75, C0
        call    timer_init                              ; 08DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08E2 _ 83. C4, 10
        mov     dword [ebp-60H], 0                      ; 08E5 _ C7. 45, A0, 00000000
        jmp     ?_012                                   ; 08EC _ EB, 1C

?_011:  sub     esp, 4                                  ; 08EE _ 83. EC, 04
        push    1                                       ; 08F1 _ 6A, 01
        push    timerInfo                               ; 08F3 _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 08F8 _ FF. 75, C0
        call    timer_init                              ; 08FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0900 _ 83. C4, 10
        mov     dword [ebp-60H], 7                      ; 0903 _ C7. 45, A0, 00000007
?_012:  sub     esp, 8                                  ; 090A _ 83. EC, 08
        push    50                                      ; 090D _ 6A, 32
        push    dword [ebp-40H]                         ; 090F _ FF. 75, C0
        call    timer_setTime                           ; 0912 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0917 _ 83. C4, 10
        mov     eax, dword [pos.2243]                   ; 091A _ A1, 00000074(d)
        add     eax, 40                                 ; 091F _ 83. C0, 28
        mov     dword [ebp-6CH], eax                    ; 0922 _ 89. 45, 94
        mov     eax, dword [line.2242]                  ; 0925 _ A1, 00000240(d)
        lea     edi, [eax+0EH]                          ; 092A _ 8D. 78, 0E
        mov     eax, dword [pos.2243]                   ; 092D _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0932 _ 8D. 70, 1A
        mov     eax, dword [line.2242]                  ; 0935 _ A1, 00000240(d)
        lea     ebx, [eax+8H]                           ; 093A _ 8D. 58, 08
        mov     eax, dword [ebp-60H]                    ; 093D _ 8B. 45, A0
        movzx   ecx, al                                 ; 0940 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0943 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0948 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 094B _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0950 _ 8B. 00
        sub     esp, 4                                  ; 0952 _ 83. EC, 04
        push    dword [ebp-6CH]                         ; 0955 _ FF. 75, 94
        push    edi                                     ; 0958 _ 57
        push    esi                                     ; 0959 _ 56
        push    ebx                                     ; 095A _ 53
        push    ecx                                     ; 095B _ 51
        push    edx                                     ; 095C _ 52
        push    eax                                     ; 095D _ 50
        call    boxfill8                                ; 095E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0963 _ 83. C4, 20
        mov     eax, dword [pos.2243]                   ; 0966 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 096B _ 8D. 78, 2A
        mov     eax, dword [line.2242]                  ; 096E _ A1, 00000240(d)
        lea     esi, [eax+10H]                          ; 0973 _ 8D. 70, 10
        mov     eax, dword [pos.2243]                   ; 0976 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 097B _ 8D. 58, 1A
        mov     eax, dword [line.2242]                  ; 097E _ A1, 00000240(d)
        lea     ecx, [eax+8H]                           ; 0983 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0986 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 098C _ A1, 00000220(d)
        sub     esp, 8                                  ; 0991 _ 83. EC, 08
        push    edi                                     ; 0994 _ 57
        push    esi                                     ; 0995 _ 56
        push    ebx                                     ; 0996 _ 53
        push    ecx                                     ; 0997 _ 51
        push    edx                                     ; 0998 _ 52
        push    eax                                     ; 0999 _ 50
        call    sheet_refresh                           ; 099A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 099F _ 83. C4, 20
        jmp     ?_001                                   ; 09A2 _ E9, FFFFFA6D

?_013:  nop                                             ; 09A7 _ 90
        jmp     ?_001                                   ; 09A8 _ E9, FFFFFA67
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 09AD _ 55
        mov     ebp, esp                                ; 09AE _ 89. E5
        sub     esp, 56                                 ; 09B0 _ 83. EC, 38
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 09B3 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 09B9 _ 89. 45, F4
        xor     eax, eax                                ; 09BC _ 31. C0
        mov     edx, dword [sheet_back]                 ; 09BE _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 09C4 _ A1, 00000220(d)
        sub     esp, 8                                  ; 09C9 _ 83. EC, 08
        push    ?_180                                   ; 09CC _ 68, 00000027(d)
        push    7                                       ; 09D1 _ 6A, 07
        push    144                                     ; 09D3 _ 68, 00000090
        push    0                                       ; 09D8 _ 6A, 00
        push    edx                                     ; 09DA _ 52
        push    eax                                     ; 09DB _ 50
        call    showString                              ; 09DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09E1 _ 83. C4, 20
        mov     dword [ebp-34H], 0                      ; 09E4 _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 0                      ; 09EB _ C7. 45, D0, 00000000
        sub     esp, 4                                  ; 09F2 _ 83. EC, 04
        lea     eax, [ebp-14H]                          ; 09F5 _ 8D. 45, EC
        push    eax                                     ; 09F8 _ 50
        push    8                                       ; 09F9 _ 6A, 08
        lea     eax, [ebp-2CH]                          ; 09FB _ 8D. 45, D4
        push    eax                                     ; 09FE _ 50
        call    fifo8_init                              ; 09FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A04 _ 83. C4, 10
        call    timer_alloc                             ; 0A07 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0A0C _ 89. 45, CC
        sub     esp, 4                                  ; 0A0F _ 83. EC, 04
        push    123                                     ; 0A12 _ 6A, 7B
        lea     eax, [ebp-2CH]                          ; 0A14 _ 8D. 45, D4
        push    eax                                     ; 0A17 _ 50
        push    dword [ebp-34H]                         ; 0A18 _ FF. 75, CC
        call    timer_init                              ; 0A1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A20 _ 83. C4, 10
        sub     esp, 8                                  ; 0A23 _ 83. EC, 08
        push    100                                     ; 0A26 _ 6A, 64
        push    dword [ebp-34H]                         ; 0A28 _ FF. 75, CC
        call    timer_setTime                           ; 0A2B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A30 _ 83. C4, 10
        mov     dword [ebp-38H], 0                      ; 0A33 _ C7. 45, C8, 00000000
?_014:  call    io_cli                                  ; 0A3A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0A3F _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0A42 _ 8D. 45, D4
        push    eax                                     ; 0A45 _ 50
        call    fifo8_status                            ; 0A46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A4B _ 83. C4, 10
        test    eax, eax                                ; 0A4E _ 85. C0
        jnz     ?_015                                   ; 0A50 _ 75, 07
        call    io_sti                                  ; 0A52 _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 0A57 _ EB, E1

?_015:  sub     esp, 12                                 ; 0A59 _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0A5C _ 8D. 45, D4
        push    eax                                     ; 0A5F _ 50
        call    fifo8_get                               ; 0A60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A65 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0A68 _ 89. 45, D0
        call    io_sti                                  ; 0A6B _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-30H], 123                    ; 0A70 _ 83. 7D, D0, 7B
        jnz     ?_014                                   ; 0A74 _ 75, C4
        mov     edx, dword [sheet_back]                 ; 0A76 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0A7C _ A1, 00000220(d)
        sub     esp, 8                                  ; 0A81 _ 83. EC, 08
        push    ?_181                                   ; 0A84 _ 68, 00000034(d)
        push    7                                       ; 0A89 _ 6A, 07
        push    176                                     ; 0A8B _ 68, 000000B0
        push    dword [ebp-38H]                         ; 0A90 _ FF. 75, C8
        push    edx                                     ; 0A93 _ 52
        push    eax                                     ; 0A94 _ 50
        call    showString                              ; 0A95 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A9A _ 83. C4, 20
        sub     esp, 8                                  ; 0A9D _ 83. EC, 08
        push    100                                     ; 0AA0 _ 6A, 64
        push    dword [ebp-34H]                         ; 0AA2 _ FF. 75, CC
        call    timer_setTime                           ; 0AA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AAA _ 83. C4, 10
        add     dword [ebp-38H], 8                      ; 0AAD _ 83. 45, C8, 08
        jmp     ?_014                                   ; 0AB1 _ EB, 87
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0AB3 _ 55
        mov     ebp, esp                                ; 0AB4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0AB6 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0AB9 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0ABF _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0AC2 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0AC8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0ACB _ 66: C7. 40, 06, 01E0
        nop                                             ; 0AD1 _ 90
        pop     ebp                                     ; 0AD2 _ 5D
        ret                                             ; 0AD3 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0AD4 _ 55
        mov     ebp, esp                                ; 0AD5 _ 89. E5
        push    ebx                                     ; 0AD7 _ 53
        sub     esp, 36                                 ; 0AD8 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0ADB _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0ADE _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0AE1 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0AE4 _ 89. 45, F4
        jmp     ?_017                                   ; 0AE7 _ EB, 3E

?_016:  mov     eax, dword [ebp+1CH]                    ; 0AE9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0AEC _ 0F B6. 00
        movzx   eax, al                                 ; 0AEF _ 0F B6. C0
        shl     eax, 4                                  ; 0AF2 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0AF5 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0AFB _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0AFF _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0B02 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0B05 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0B08 _ 8B. 00
        sub     esp, 8                                  ; 0B0A _ 83. EC, 08
        push    ebx                                     ; 0B0D _ 53
        push    ecx                                     ; 0B0E _ 51
        push    dword [ebp+14H]                         ; 0B0F _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B12 _ FF. 75, 10
        push    edx                                     ; 0B15 _ 52
        push    eax                                     ; 0B16 _ 50
        call    showFont8                               ; 0B17 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B1C _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0B1F _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0B23 _ 83. 45, 1C, 01
?_017:  mov     eax, dword [ebp+1CH]                    ; 0B27 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B2A _ 0F B6. 00
        test    al, al                                  ; 0B2D _ 84. C0
        jnz     ?_016                                   ; 0B2F _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0B31 _ 8B. 45, 14
        add     eax, 16                                 ; 0B34 _ 83. C0, 10
        sub     esp, 8                                  ; 0B37 _ 83. EC, 08
        push    eax                                     ; 0B3A _ 50
        push    dword [ebp+10H]                         ; 0B3B _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0B3E _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0B41 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0B44 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B47 _ FF. 75, 08
        call    sheet_refresh                           ; 0B4A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B4F _ 83. C4, 20
        nop                                             ; 0B52 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0B53 _ 8B. 5D, FC
        leave                                           ; 0B56 _ C9
        ret                                             ; 0B57 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0B58 _ 55
        mov     ebp, esp                                ; 0B59 _ 89. E5
        push    ebx                                     ; 0B5B _ 53
        sub     esp, 4                                  ; 0B5C _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0B5F _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0B62 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0B65 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0B68 _ 83. E8, 01
        sub     esp, 4                                  ; 0B6B _ 83. EC, 04
        push    edx                                     ; 0B6E _ 52
        push    eax                                     ; 0B6F _ 50
        push    0                                       ; 0B70 _ 6A, 00
        push    0                                       ; 0B72 _ 6A, 00
        push    14                                      ; 0B74 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0B76 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B79 _ FF. 75, 08
        call    boxfill8                                ; 0B7C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B81 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0B84 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0B87 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0B8A _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B8D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B90 _ 8B. 45, 10
        sub     eax, 24                                 ; 0B93 _ 83. E8, 18
        sub     esp, 4                                  ; 0B96 _ 83. EC, 04
        push    ecx                                     ; 0B99 _ 51
        push    edx                                     ; 0B9A _ 52
        push    eax                                     ; 0B9B _ 50
        push    0                                       ; 0B9C _ 6A, 00
        push    8                                       ; 0B9E _ 6A, 08
        push    dword [ebp+0CH]                         ; 0BA0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BA3 _ FF. 75, 08
        call    boxfill8                                ; 0BA6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BAB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0BAE _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0BB1 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0BB4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0BB7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0BBA _ 8B. 45, 10
        sub     eax, 23                                 ; 0BBD _ 83. E8, 17
        sub     esp, 4                                  ; 0BC0 _ 83. EC, 04
        push    ecx                                     ; 0BC3 _ 51
        push    edx                                     ; 0BC4 _ 52
        push    eax                                     ; 0BC5 _ 50
        push    0                                       ; 0BC6 _ 6A, 00
        push    7                                       ; 0BC8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0BCA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BCD _ FF. 75, 08
        call    boxfill8                                ; 0BD0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BD5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0BD8 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0BDB _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0BDE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0BE1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0BE4 _ 8B. 45, 10
        sub     eax, 22                                 ; 0BE7 _ 83. E8, 16
        sub     esp, 4                                  ; 0BEA _ 83. EC, 04
        push    ecx                                     ; 0BED _ 51
        push    edx                                     ; 0BEE _ 52
        push    eax                                     ; 0BEF _ 50
        push    0                                       ; 0BF0 _ 6A, 00
        push    8                                       ; 0BF2 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0BF4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BF7 _ FF. 75, 08
        call    boxfill8                                ; 0BFA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BFF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C02 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0C05 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0C08 _ 8B. 45, 10
        sub     eax, 20                                 ; 0C0B _ 83. E8, 14
        sub     esp, 4                                  ; 0C0E _ 83. EC, 04
        push    edx                                     ; 0C11 _ 52
        push    51                                      ; 0C12 _ 6A, 33
        push    eax                                     ; 0C14 _ 50
        push    10                                      ; 0C15 _ 6A, 0A
        push    7                                       ; 0C17 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C19 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C1C _ FF. 75, 08
        call    boxfill8                                ; 0C1F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C24 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C27 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0C2A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0C2D _ 8B. 45, 10
        sub     eax, 20                                 ; 0C30 _ 83. E8, 14
        sub     esp, 4                                  ; 0C33 _ 83. EC, 04
        push    edx                                     ; 0C36 _ 52
        push    9                                       ; 0C37 _ 6A, 09
        push    eax                                     ; 0C39 _ 50
        push    9                                       ; 0C3A _ 6A, 09
        push    7                                       ; 0C3C _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C3E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C41 _ FF. 75, 08
        call    boxfill8                                ; 0C44 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C49 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C4C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0C4F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0C52 _ 8B. 45, 10
        sub     eax, 4                                  ; 0C55 _ 83. E8, 04
        sub     esp, 4                                  ; 0C58 _ 83. EC, 04
        push    edx                                     ; 0C5B _ 52
        push    50                                      ; 0C5C _ 6A, 32
        push    eax                                     ; 0C5E _ 50
        push    10                                      ; 0C5F _ 6A, 0A
        push    15                                      ; 0C61 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0C63 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C66 _ FF. 75, 08
        call    boxfill8                                ; 0C69 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C6E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C71 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0C74 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0C77 _ 8B. 45, 10
        sub     eax, 19                                 ; 0C7A _ 83. E8, 13
        sub     esp, 4                                  ; 0C7D _ 83. EC, 04
        push    edx                                     ; 0C80 _ 52
        push    50                                      ; 0C81 _ 6A, 32
        push    eax                                     ; 0C83 _ 50
        push    50                                      ; 0C84 _ 6A, 32
        push    15                                      ; 0C86 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0C88 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C8B _ FF. 75, 08
        call    boxfill8                                ; 0C8E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C93 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C96 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C99 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C9C _ 8B. 45, 10
        sub     eax, 3                                  ; 0C9F _ 83. E8, 03
        sub     esp, 4                                  ; 0CA2 _ 83. EC, 04
        push    edx                                     ; 0CA5 _ 52
        push    50                                      ; 0CA6 _ 6A, 32
        push    eax                                     ; 0CA8 _ 50
        push    10                                      ; 0CA9 _ 6A, 0A
        push    0                                       ; 0CAB _ 6A, 00
        push    dword [ebp+0CH]                         ; 0CAD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CB0 _ FF. 75, 08
        call    boxfill8                                ; 0CB3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CB8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CBB _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CBE _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0CC1 _ 8B. 45, 10
        sub     eax, 20                                 ; 0CC4 _ 83. E8, 14
        sub     esp, 4                                  ; 0CC7 _ 83. EC, 04
        push    edx                                     ; 0CCA _ 52
        push    51                                      ; 0CCB _ 6A, 33
        push    eax                                     ; 0CCD _ 50
        push    51                                      ; 0CCE _ 6A, 33
        push    0                                       ; 0CD0 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0CD2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CD5 _ FF. 75, 08
        call    boxfill8                                ; 0CD8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CDD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CE0 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0CE3 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0CE6 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0CE9 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0CEC _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0CEF _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0CF2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0CF5 _ 83. E8, 2F
        sub     esp, 4                                  ; 0CF8 _ 83. EC, 04
        push    ebx                                     ; 0CFB _ 53
        push    ecx                                     ; 0CFC _ 51
        push    edx                                     ; 0CFD _ 52
        push    eax                                     ; 0CFE _ 50
        push    15                                      ; 0CFF _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D01 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D04 _ FF. 75, 08
        call    boxfill8                                ; 0D07 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D0C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D0F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D12 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D15 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0D18 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0D1B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D1E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D21 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D24 _ 83. E8, 2F
        sub     esp, 4                                  ; 0D27 _ 83. EC, 04
        push    ebx                                     ; 0D2A _ 53
        push    ecx                                     ; 0D2B _ 51
        push    edx                                     ; 0D2C _ 52
        push    eax                                     ; 0D2D _ 50
        push    15                                      ; 0D2E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D30 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D33 _ FF. 75, 08
        call    boxfill8                                ; 0D36 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D3B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D3E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D41 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D44 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D47 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D4A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D4D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0D50 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D53 _ 83. E8, 2F
        sub     esp, 4                                  ; 0D56 _ 83. EC, 04
        push    ebx                                     ; 0D59 _ 53
        push    ecx                                     ; 0D5A _ 51
        push    edx                                     ; 0D5B _ 52
        push    eax                                     ; 0D5C _ 50
        push    7                                       ; 0D5D _ 6A, 07
        push    dword [ebp+0CH]                         ; 0D5F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D62 _ FF. 75, 08
        call    boxfill8                                ; 0D65 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D6A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D6D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D70 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D73 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0D76 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0D79 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D7C _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D7F _ 8B. 45, 0C
        sub     eax, 3                                  ; 0D82 _ 83. E8, 03
        sub     esp, 4                                  ; 0D85 _ 83. EC, 04
        push    ebx                                     ; 0D88 _ 53
        push    ecx                                     ; 0D89 _ 51
        push    edx                                     ; 0D8A _ 52
        push    eax                                     ; 0D8B _ 50
        push    7                                       ; 0D8C _ 6A, 07
        push    dword [ebp+0CH]                         ; 0D8E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D91 _ FF. 75, 08
        call    boxfill8                                ; 0D94 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D99 _ 83. C4, 20
        nop                                             ; 0D9C _ 90
        mov     ebx, dword [ebp-4H]                     ; 0D9D _ 8B. 5D, FC
        leave                                           ; 0DA0 _ C9
        ret                                             ; 0DA1 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0DA2 _ 55
        mov     ebp, esp                                ; 0DA3 _ 89. E5
        sub     esp, 24                                 ; 0DA5 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0DA8 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0DAD _ 89. 45, EC
        movzx   eax, word [?_190]                       ; 0DB0 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0DB7 _ 98
        mov     dword [ebp-10H], eax                    ; 0DB8 _ 89. 45, F0
        movzx   eax, word [?_191]                       ; 0DBB _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0DC2 _ 98
        mov     dword [ebp-0CH], eax                    ; 0DC3 _ 89. 45, F4
        sub     esp, 4                                  ; 0DC6 _ 83. EC, 04
        push    table_rgb.2283                          ; 0DC9 _ 68, 00000080(d)
        push    15                                      ; 0DCE _ 6A, 0F
        push    0                                       ; 0DD0 _ 6A, 00
        call    set_palette                             ; 0DD2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DD7 _ 83. C4, 10
        nop                                             ; 0DDA _ 90
        leave                                           ; 0DDB _ C9
        ret                                             ; 0DDC _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0DDD _ 55
        mov     ebp, esp                                ; 0DDE _ 89. E5
        sub     esp, 24                                 ; 0DE0 _ 83. EC, 18
        call    io_load_eflags                          ; 0DE3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0DE8 _ 89. 45, F4
        call    io_cli                                  ; 0DEB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0DF0 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0DF3 _ FF. 75, 08
        push    968                                     ; 0DF6 _ 68, 000003C8
        call    io_out8                                 ; 0DFB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E00 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0E03 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0E06 _ 89. 45, F0
        jmp     ?_019                                   ; 0E09 _ EB, 65

?_018:  mov     eax, dword [ebp+10H]                    ; 0E0B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0E0E _ 0F B6. 00
        shr     al, 2                                   ; 0E11 _ C0. E8, 02
        movzx   eax, al                                 ; 0E14 _ 0F B6. C0
        sub     esp, 8                                  ; 0E17 _ 83. EC, 08
        push    eax                                     ; 0E1A _ 50
        push    969                                     ; 0E1B _ 68, 000003C9
        call    io_out8                                 ; 0E20 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E25 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0E28 _ 8B. 45, 10
        add     eax, 1                                  ; 0E2B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0E2E _ 0F B6. 00
        shr     al, 2                                   ; 0E31 _ C0. E8, 02
        movzx   eax, al                                 ; 0E34 _ 0F B6. C0
        sub     esp, 8                                  ; 0E37 _ 83. EC, 08
        push    eax                                     ; 0E3A _ 50
        push    969                                     ; 0E3B _ 68, 000003C9
        call    io_out8                                 ; 0E40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E45 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0E48 _ 8B. 45, 10
        add     eax, 2                                  ; 0E4B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0E4E _ 0F B6. 00
        shr     al, 2                                   ; 0E51 _ C0. E8, 02
        movzx   eax, al                                 ; 0E54 _ 0F B6. C0
        sub     esp, 8                                  ; 0E57 _ 83. EC, 08
        push    eax                                     ; 0E5A _ 50
        push    969                                     ; 0E5B _ 68, 000003C9
        call    io_out8                                 ; 0E60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E65 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0E68 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0E6C _ 83. 45, F0, 01
?_019:  mov     eax, dword [ebp-10H]                    ; 0E70 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0E73 _ 3B. 45, 0C
        jle     ?_018                                   ; 0E76 _ 7E, 93
        sub     esp, 12                                 ; 0E78 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0E7B _ FF. 75, F4
        call    io_store_eflags                         ; 0E7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E83 _ 83. C4, 10
        nop                                             ; 0E86 _ 90
        leave                                           ; 0E87 _ C9
        ret                                             ; 0E88 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0E89 _ 55
        mov     ebp, esp                                ; 0E8A _ 89. E5
        sub     esp, 20                                 ; 0E8C _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0E8F _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0E92 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0E95 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0E98 _ 89. 45, FC
        jmp     ?_023                                   ; 0E9B _ EB, 33

?_020:  mov     eax, dword [ebp+14H]                    ; 0E9D _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0EA0 _ 89. 45, F8
        jmp     ?_022                                   ; 0EA3 _ EB, 1F

?_021:  mov     eax, dword [ebp-4H]                     ; 0EA5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0EA8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0EAC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0EAE _ 8B. 45, F8
        add     eax, edx                                ; 0EB1 _ 01. D0
        mov     edx, eax                                ; 0EB3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EB5 _ 8B. 45, 08
        add     edx, eax                                ; 0EB8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EBA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EBE _ 88. 02
        add     dword [ebp-8H], 1                       ; 0EC0 _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 0EC4 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0EC7 _ 3B. 45, 1C
        jle     ?_021                                   ; 0ECA _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0ECC _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 0ED0 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0ED3 _ 3B. 45, 20
        jle     ?_020                                   ; 0ED6 _ 7E, C5
        nop                                             ; 0ED8 _ 90
        leave                                           ; 0ED9 _ C9
        ret                                             ; 0EDA _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0EDB _ 55
        mov     ebp, esp                                ; 0EDC _ 89. E5
        push    edi                                     ; 0EDE _ 57
        push    esi                                     ; 0EDF _ 56
        push    ebx                                     ; 0EE0 _ 53
        sub     esp, 16                                 ; 0EE1 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0EE4 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0EE7 _ 8B. 45, 14
        add     eax, edx                                ; 0EEA _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0EEC _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0EEF _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0EF2 _ 8B. 45, 18
        add     eax, edx                                ; 0EF5 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0EF7 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0EFA _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0EFD _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0F00 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0F03 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0F06 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F09 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F0C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0F0F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0F12 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F15 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F18 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F1B _ 8B. 00
        push    edi                                     ; 0F1D _ 57
        push    esi                                     ; 0F1E _ 56
        push    ebx                                     ; 0F1F _ 53
        push    ecx                                     ; 0F20 _ 51
        push    15                                      ; 0F21 _ 6A, 0F
        push    edx                                     ; 0F23 _ 52
        push    eax                                     ; 0F24 _ 50
        call    boxfill8                                ; 0F25 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F2A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0F2D _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0F30 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0F33 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0F36 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0F39 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F3C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F3F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0F42 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0F45 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F48 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F4B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F4E _ 8B. 00
        push    edi                                     ; 0F50 _ 57
        push    esi                                     ; 0F51 _ 56
        push    ebx                                     ; 0F52 _ 53
        push    ecx                                     ; 0F53 _ 51
        push    15                                      ; 0F54 _ 6A, 0F
        push    edx                                     ; 0F56 _ 52
        push    eax                                     ; 0F57 _ 50
        call    boxfill8                                ; 0F58 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F5D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0F60 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0F63 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0F66 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0F69 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0F6C _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 0F6F _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 0F72 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0F75 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0F78 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F7B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F7E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F81 _ 8B. 00
        push    edi                                     ; 0F83 _ 57
        push    esi                                     ; 0F84 _ 56
        push    ebx                                     ; 0F85 _ 53
        push    ecx                                     ; 0F86 _ 51
        push    7                                       ; 0F87 _ 6A, 07
        push    edx                                     ; 0F89 _ 52
        push    eax                                     ; 0F8A _ 50
        call    boxfill8                                ; 0F8B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F90 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0F93 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0F96 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0F99 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 0F9C _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 0F9F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FA2 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 0FA5 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 0FA8 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 0FAB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FAE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FB1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FB4 _ 8B. 00
        push    edi                                     ; 0FB6 _ 57
        push    esi                                     ; 0FB7 _ 56
        push    ebx                                     ; 0FB8 _ 53
        push    ecx                                     ; 0FB9 _ 51
        push    7                                       ; 0FBA _ 6A, 07
        push    edx                                     ; 0FBC _ 52
        push    eax                                     ; 0FBD _ 50
        call    boxfill8                                ; 0FBE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FC3 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 0FC6 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 0FC9 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0FCC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0FCF _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 0FD2 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 0FD5 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 0FD8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FDB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FDE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FE1 _ 8B. 00
        push    esi                                     ; 0FE3 _ 56
        push    dword [ebp-14H]                         ; 0FE4 _ FF. 75, EC
        push    ebx                                     ; 0FE7 _ 53
        push    ecx                                     ; 0FE8 _ 51
        push    0                                       ; 0FE9 _ 6A, 00
        push    edx                                     ; 0FEB _ 52
        push    eax                                     ; 0FEC _ 50
        call    boxfill8                                ; 0FED _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FF2 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 0FF5 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 0FF8 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0FFB _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0FFE _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1001 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1004 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1007 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 100A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 100D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1010 _ 8B. 00
        push    dword [ebp-10H]                         ; 1012 _ FF. 75, F0
        push    esi                                     ; 1015 _ 56
        push    ebx                                     ; 1016 _ 53
        push    ecx                                     ; 1017 _ 51
        push    0                                       ; 1018 _ 6A, 00
        push    edx                                     ; 101A _ 52
        push    eax                                     ; 101B _ 50
        call    boxfill8                                ; 101C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1021 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1024 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1027 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 102A _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 102D _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1030 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1033 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1036 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1039 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 103C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 103F _ 8B. 00
        push    esi                                     ; 1041 _ 56
        push    dword [ebp-14H]                         ; 1042 _ FF. 75, EC
        push    ebx                                     ; 1045 _ 53
        push    ecx                                     ; 1046 _ 51
        push    8                                       ; 1047 _ 6A, 08
        push    edx                                     ; 1049 _ 52
        push    eax                                     ; 104A _ 50
        call    boxfill8                                ; 104B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1050 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1053 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1056 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1059 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 105C _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 105F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1062 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1065 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1068 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 106B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 106E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1071 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1074 _ 8B. 00
        push    edi                                     ; 1076 _ 57
        push    esi                                     ; 1077 _ 56
        push    ebx                                     ; 1078 _ 53
        push    ecx                                     ; 1079 _ 51
        push    8                                       ; 107A _ 6A, 08
        push    edx                                     ; 107C _ 52
        push    eax                                     ; 107D _ 50
        call    boxfill8                                ; 107E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1083 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1086 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1089 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 108C _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 108F _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1092 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1095 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1098 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 109B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 109E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10A1 _ 8B. 00
        push    dword [ebp-10H]                         ; 10A3 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 10A6 _ FF. 75, EC
        push    esi                                     ; 10A9 _ 56
        push    ebx                                     ; 10AA _ 53
        push    ecx                                     ; 10AB _ 51
        push    edx                                     ; 10AC _ 52
        push    eax                                     ; 10AD _ 50
        call    boxfill8                                ; 10AE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10B3 _ 83. C4, 1C
        nop                                             ; 10B6 _ 90
        lea     esp, [ebp-0CH]                          ; 10B7 _ 8D. 65, F4
        pop     ebx                                     ; 10BA _ 5B
        pop     esi                                     ; 10BB _ 5E
        pop     edi                                     ; 10BC _ 5F
        pop     ebp                                     ; 10BD _ 5D
        ret                                             ; 10BE _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 10BF _ 55
        mov     ebp, esp                                ; 10C0 _ 89. E5
        sub     esp, 20                                 ; 10C2 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 10C5 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 10C8 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 10CB _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 10D2 _ E9, 0000016C

?_024:  mov     edx, dword [ebp-4H]                     ; 10D7 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 10DA _ 8B. 45, 1C
        add     eax, edx                                ; 10DD _ 01. D0
        movzx   eax, byte [eax]                         ; 10DF _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 10E2 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 10E5 _ 80. 7D, FB, 00
        jns     ?_025                                   ; 10E9 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 10EB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 10EE _ 8B. 45, FC
        add     eax, edx                                ; 10F1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10F3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 10F7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 10F9 _ 8B. 45, 10
        add     eax, edx                                ; 10FC _ 01. D0
        mov     edx, eax                                ; 10FE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1100 _ 8B. 45, 08
        add     edx, eax                                ; 1103 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1105 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1109 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 110B _ 0F BE. 45, FB
        and     eax, 40H                                ; 110F _ 83. E0, 40
        test    eax, eax                                ; 1112 _ 85. C0
        jz      ?_026                                   ; 1114 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1116 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1119 _ 8B. 45, FC
        add     eax, edx                                ; 111C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 111E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1122 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1124 _ 8B. 45, 10
        add     eax, edx                                ; 1127 _ 01. D0
        lea     edx, [eax+1H]                           ; 1129 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 112C _ 8B. 45, 08
        add     edx, eax                                ; 112F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1131 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1135 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1137 _ 0F BE. 45, FB
        and     eax, 20H                                ; 113B _ 83. E0, 20
        test    eax, eax                                ; 113E _ 85. C0
        jz      ?_027                                   ; 1140 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1142 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1145 _ 8B. 45, FC
        add     eax, edx                                ; 1148 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 114A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 114E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1150 _ 8B. 45, 10
        add     eax, edx                                ; 1153 _ 01. D0
        lea     edx, [eax+2H]                           ; 1155 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1158 _ 8B. 45, 08
        add     edx, eax                                ; 115B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 115D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1161 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 1163 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1167 _ 83. E0, 10
        test    eax, eax                                ; 116A _ 85. C0
        jz      ?_028                                   ; 116C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 116E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1171 _ 8B. 45, FC
        add     eax, edx                                ; 1174 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1176 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 117A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 117C _ 8B. 45, 10
        add     eax, edx                                ; 117F _ 01. D0
        lea     edx, [eax+3H]                           ; 1181 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1184 _ 8B. 45, 08
        add     edx, eax                                ; 1187 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1189 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 118D _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 118F _ 0F BE. 45, FB
        and     eax, 08H                                ; 1193 _ 83. E0, 08
        test    eax, eax                                ; 1196 _ 85. C0
        jz      ?_029                                   ; 1198 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 119A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 119D _ 8B. 45, FC
        add     eax, edx                                ; 11A0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11A2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11A6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11A8 _ 8B. 45, 10
        add     eax, edx                                ; 11AB _ 01. D0
        lea     edx, [eax+4H]                           ; 11AD _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11B0 _ 8B. 45, 08
        add     edx, eax                                ; 11B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11B9 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 11BB _ 0F BE. 45, FB
        and     eax, 04H                                ; 11BF _ 83. E0, 04
        test    eax, eax                                ; 11C2 _ 85. C0
        jz      ?_030                                   ; 11C4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11C6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11C9 _ 8B. 45, FC
        add     eax, edx                                ; 11CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11CE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11D2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11D4 _ 8B. 45, 10
        add     eax, edx                                ; 11D7 _ 01. D0
        lea     edx, [eax+5H]                           ; 11D9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 11DC _ 8B. 45, 08
        add     edx, eax                                ; 11DF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11E1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11E5 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 11E7 _ 0F BE. 45, FB
        and     eax, 02H                                ; 11EB _ 83. E0, 02
        test    eax, eax                                ; 11EE _ 85. C0
        jz      ?_031                                   ; 11F0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11F2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11F5 _ 8B. 45, FC
        add     eax, edx                                ; 11F8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11FA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11FE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1200 _ 8B. 45, 10
        add     eax, edx                                ; 1203 _ 01. D0
        lea     edx, [eax+6H]                           ; 1205 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1208 _ 8B. 45, 08
        add     edx, eax                                ; 120B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 120D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1211 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1213 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1217 _ 83. E0, 01
        test    eax, eax                                ; 121A _ 85. C0
        jz      ?_032                                   ; 121C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 121E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1221 _ 8B. 45, FC
        add     eax, edx                                ; 1224 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1226 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 122A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 122C _ 8B. 45, 10
        add     eax, edx                                ; 122F _ 01. D0
        lea     edx, [eax+7H]                           ; 1231 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1234 _ 8B. 45, 08
        add     edx, eax                                ; 1237 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1239 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 123D _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 123F _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 1243 _ 83. 7D, FC, 0F
        jle     ?_024                                   ; 1247 _ 0F 8E, FFFFFE8A
        nop                                             ; 124D _ 90
        leave                                           ; 124E _ C9
        ret                                             ; 124F _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1250 _ 55
        mov     ebp, esp                                ; 1251 _ 89. E5
        sub     esp, 20                                 ; 1253 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1256 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1259 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 125C _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 1263 _ E9, 000000B1

?_034:  mov     dword [ebp-8H], 0                       ; 1268 _ C7. 45, F8, 00000000
        jmp     ?_039                                   ; 126F _ E9, 00000097

?_035:  mov     eax, dword [ebp-4H]                     ; 1274 _ 8B. 45, FC
        shl     eax, 4                                  ; 1277 _ C1. E0, 04
        mov     edx, eax                                ; 127A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 127C _ 8B. 45, F8
        add     eax, edx                                ; 127F _ 01. D0
        add     eax, cursor.2338                        ; 1281 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1286 _ 0F B6. 00
        cmp     al, 42                                  ; 1289 _ 3C, 2A
        jnz     ?_036                                   ; 128B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 128D _ 8B. 45, FC
        shl     eax, 4                                  ; 1290 _ C1. E0, 04
        mov     edx, eax                                ; 1293 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1295 _ 8B. 45, F8
        add     eax, edx                                ; 1298 _ 01. D0
        mov     edx, eax                                ; 129A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 129C _ 8B. 45, 08
        add     eax, edx                                ; 129F _ 01. D0
        mov     byte [eax], 0                           ; 12A1 _ C6. 00, 00
?_036:  mov     eax, dword [ebp-4H]                     ; 12A4 _ 8B. 45, FC
        shl     eax, 4                                  ; 12A7 _ C1. E0, 04
        mov     edx, eax                                ; 12AA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12AC _ 8B. 45, F8
        add     eax, edx                                ; 12AF _ 01. D0
        add     eax, cursor.2338                        ; 12B1 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12B6 _ 0F B6. 00
        cmp     al, 79                                  ; 12B9 _ 3C, 4F
        jnz     ?_037                                   ; 12BB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 12BD _ 8B. 45, FC
        shl     eax, 4                                  ; 12C0 _ C1. E0, 04
        mov     edx, eax                                ; 12C3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12C5 _ 8B. 45, F8
        add     eax, edx                                ; 12C8 _ 01. D0
        mov     edx, eax                                ; 12CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12CC _ 8B. 45, 08
        add     eax, edx                                ; 12CF _ 01. D0
        mov     byte [eax], 7                           ; 12D1 _ C6. 00, 07
?_037:  mov     eax, dword [ebp-4H]                     ; 12D4 _ 8B. 45, FC
        shl     eax, 4                                  ; 12D7 _ C1. E0, 04
        mov     edx, eax                                ; 12DA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12DC _ 8B. 45, F8
        add     eax, edx                                ; 12DF _ 01. D0
        add     eax, cursor.2338                        ; 12E1 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12E6 _ 0F B6. 00
        cmp     al, 46                                  ; 12E9 _ 3C, 2E
        jnz     ?_038                                   ; 12EB _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 12ED _ 8B. 45, FC
        shl     eax, 4                                  ; 12F0 _ C1. E0, 04
        mov     edx, eax                                ; 12F3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12F5 _ 8B. 45, F8
        add     eax, edx                                ; 12F8 _ 01. D0
        mov     edx, eax                                ; 12FA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12FC _ 8B. 45, 08
        add     edx, eax                                ; 12FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1301 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1305 _ 88. 02
?_038:  add     dword [ebp-8H], 1                       ; 1307 _ 83. 45, F8, 01
?_039:  cmp     dword [ebp-8H], 15                      ; 130B _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 130F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1315 _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 1319 _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 131D _ 0F 8E, FFFFFF45
        nop                                             ; 1323 _ 90
        leave                                           ; 1324 _ C9
        ret                                             ; 1325 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1326 _ 55
        mov     ebp, esp                                ; 1327 _ 89. E5
        push    ebx                                     ; 1329 _ 53
        sub     esp, 16                                 ; 132A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 132D _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 1334 _ EB, 50

?_041:  mov     dword [ebp-0CH], 0                      ; 1336 _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 133D _ EB, 3B

?_042:  mov     eax, dword [ebp-8H]                     ; 133F _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1342 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1346 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1348 _ 8B. 45, F4
        add     eax, edx                                ; 134B _ 01. D0
        mov     edx, eax                                ; 134D _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 134F _ 8B. 45, 20
        add     eax, edx                                ; 1352 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1354 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1357 _ 8B. 55, F8
        add     edx, ecx                                ; 135A _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 135C _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1360 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1363 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1366 _ 01. D9
        add     edx, ecx                                ; 1368 _ 01. CA
        mov     ecx, edx                                ; 136A _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 136C _ 8B. 55, 08
        add     edx, ecx                                ; 136F _ 01. CA
        movzx   eax, byte [eax]                         ; 1371 _ 0F B6. 00
        mov     byte [edx], al                          ; 1374 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1376 _ 83. 45, F4, 01
?_043:  mov     eax, dword [ebp-0CH]                    ; 137A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 137D _ 3B. 45, 10
        jl      ?_042                                   ; 1380 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1382 _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 1386 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1389 _ 3B. 45, 14
        jl      ?_041                                   ; 138C _ 7C, A8
        nop                                             ; 138E _ 90
        add     esp, 16                                 ; 138F _ 83. C4, 10
        pop     ebx                                     ; 1392 _ 5B
        pop     ebp                                     ; 1393 _ 5D
        ret                                             ; 1394 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1395 _ 55
        mov     ebp, esp                                ; 1396 _ 89. E5
        sub     esp, 24                                 ; 1398 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 139B _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 13A0 _ 89. 45, EC
        movzx   eax, word [?_190]                       ; 13A3 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 13AA _ 98
        mov     dword [ebp-10H], eax                    ; 13AB _ 89. 45, F0
        movzx   eax, word [?_191]                       ; 13AE _ 0F B7. 05, 00000006(d)
        cwde                                            ; 13B5 _ 98
        mov     dword [ebp-0CH], eax                    ; 13B6 _ 89. 45, F4
        sub     esp, 8                                  ; 13B9 _ 83. EC, 08
        push    32                                      ; 13BC _ 6A, 20
        push    32                                      ; 13BE _ 6A, 20
        call    io_out8                                 ; 13C0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13C5 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 13C8 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 13CC _ 83. EC, 0C
        push    96                                      ; 13CF _ 6A, 60
        call    io_in8                                  ; 13D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13D6 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 13D9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 13DC _ 0F B6. 45, EB
        sub     esp, 8                                  ; 13E0 _ 83. EC, 08
        push    eax                                     ; 13E3 _ 50
        push    keyInfo                                 ; 13E4 _ 68, 00000008(d)
        call    fifo8_put                               ; 13E9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13EE _ 83. C4, 10
        nop                                             ; 13F1 _ 90
        leave                                           ; 13F2 _ C9
        ret                                             ; 13F3 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 13F4 _ 55
        mov     ebp, esp                                ; 13F5 _ 89. E5
        sub     esp, 40                                 ; 13F7 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 13FA _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 13FD _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1400 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1404 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1407 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 140A _ 0F BE. 45, F7
        sub     esp, 12                                 ; 140E _ 83. EC, 0C
        push    eax                                     ; 1411 _ 50
        call    charToVal                               ; 1412 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1417 _ 83. C4, 10
        mov     byte [?_189], al                        ; 141A _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 141F _ 0F B6. 45, E4
        shr     al, 4                                   ; 1423 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1426 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1429 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 142D _ 0F BE. C0
        sub     esp, 12                                 ; 1430 _ 83. EC, 0C
        push    eax                                     ; 1433 _ 50
        call    charToVal                               ; 1434 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1439 _ 83. C4, 10
        mov     byte [?_188], al                        ; 143C _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1441 _ B8, 00000000(d)
        leave                                           ; 1446 _ C9
        ret                                             ; 1447 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1448 _ 55
        mov     ebp, esp                                ; 1449 _ 89. E5
        sub     esp, 4                                  ; 144B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 144E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1451 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1454 _ 80. 7D, FC, 09
        jle     ?_045                                   ; 1458 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 145A _ 0F B6. 45, FC
        add     eax, 55                                 ; 145E _ 83. C0, 37
        jmp     ?_046                                   ; 1461 _ EB, 07

?_045:  movzx   eax, byte [ebp-4H]                      ; 1463 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1467 _ 83. C0, 30
?_046:  leave                                           ; 146A _ C9
        ret                                             ; 146B _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 146C _ 55
        mov     ebp, esp                                ; 146D _ 89. E5
        sub     esp, 16                                 ; 146F _ 83. EC, 10
        mov     byte [str.2381], 48                     ; 1472 _ C6. 05, 00000244(d), 30
        mov     byte [?_193], 120                       ; 1479 _ C6. 05, 00000245(d), 78
        mov     byte [?_194], 0                         ; 1480 _ C6. 05, 0000024E(d), 00
        mov     dword [ebp-0CH], 2                      ; 1487 _ C7. 45, F4, 00000002
        jmp     ?_048                                   ; 148E _ EB, 0F

?_047:  mov     eax, dword [ebp-0CH]                    ; 1490 _ 8B. 45, F4
        add     eax, str.2381                           ; 1493 _ 05, 00000244(d)
        mov     byte [eax], 48                          ; 1498 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 149B _ 83. 45, F4, 01
?_048:  cmp     dword [ebp-0CH], 9                      ; 149F _ 83. 7D, F4, 09
        jle     ?_047                                   ; 14A3 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 14A5 _ C7. 45, F8, 00000009
        jmp     ?_051                                   ; 14AC _ EB, 48

?_049:  mov     eax, dword [ebp+8H]                     ; 14AE _ 8B. 45, 08
        and     eax, 0FH                                ; 14B1 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 14B4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 14B7 _ 8B. 45, 08
        shr     eax, 4                                  ; 14BA _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 14BD _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 14C0 _ 83. 7D, FC, 09
        jle     ?_050                                   ; 14C4 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 14C6 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 14C9 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 14CC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 14CF _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 14D2 _ 89. 55, F8
        mov     edx, ecx                                ; 14D5 _ 89. CA
        mov     byte [str.2381+eax], dl                 ; 14D7 _ 88. 90, 00000244(d)
        jmp     ?_051                                   ; 14DD _ EB, 17

?_050:  mov     eax, dword [ebp-4H]                     ; 14DF _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 14E2 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 14E5 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 14E8 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 14EB _ 89. 55, F8
        mov     edx, ecx                                ; 14EE _ 89. CA
        mov     byte [str.2381+eax], dl                 ; 14F0 _ 88. 90, 00000244(d)
?_051:  cmp     dword [ebp-8H], 1                       ; 14F6 _ 83. 7D, F8, 01
        jle     ?_052                                   ; 14FA _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 14FC _ 83. 7D, 08, 00
        jnz     ?_049                                   ; 1500 _ 75, AC
?_052:  mov     eax, str.2381                           ; 1502 _ B8, 00000244(d)
        leave                                           ; 1507 _ C9
        ret                                             ; 1508 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1509 _ 55
        mov     ebp, esp                                ; 150A _ 89. E5
        sub     esp, 8                                  ; 150C _ 83. EC, 08
?_053:  sub     esp, 12                                 ; 150F _ 83. EC, 0C
        push    100                                     ; 1512 _ 6A, 64
        call    io_in8                                  ; 1514 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1519 _ 83. C4, 10
        movsx   eax, al                                 ; 151C _ 0F BE. C0
        and     eax, 02H                                ; 151F _ 83. E0, 02
        test    eax, eax                                ; 1522 _ 85. C0
        jz      ?_054                                   ; 1524 _ 74, 02
        jmp     ?_053                                   ; 1526 _ EB, E7

?_054:  nop                                             ; 1528 _ 90
        nop                                             ; 1529 _ 90
        leave                                           ; 152A _ C9
        ret                                             ; 152B _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 152C _ 55
        mov     ebp, esp                                ; 152D _ 89. E5
        sub     esp, 8                                  ; 152F _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1532 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1537 _ 83. EC, 08
        push    96                                      ; 153A _ 6A, 60
        push    100                                     ; 153C _ 6A, 64
        call    io_out8                                 ; 153E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1543 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1546 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 154B _ 83. EC, 08
        push    71                                      ; 154E _ 6A, 47
        push    96                                      ; 1550 _ 6A, 60
        call    io_out8                                 ; 1552 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1557 _ 83. C4, 10
        nop                                             ; 155A _ 90
        leave                                           ; 155B _ C9
        ret                                             ; 155C _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 155D _ 55
        mov     ebp, esp                                ; 155E _ 89. E5
        sub     esp, 8                                  ; 1560 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1563 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1568 _ 83. EC, 08
        push    212                                     ; 156B _ 68, 000000D4
        push    100                                     ; 1570 _ 6A, 64
        call    io_out8                                 ; 1572 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1577 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 157A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 157F _ 83. EC, 08
        push    244                                     ; 1582 _ 68, 000000F4
        push    96                                      ; 1587 _ 6A, 60
        call    io_out8                                 ; 1589 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 158E _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1591 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1594 _ C6. 40, 03, 00
        nop                                             ; 1598 _ 90
        leave                                           ; 1599 _ C9
        ret                                             ; 159A _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 159B _ 55
        mov     ebp, esp                                ; 159C _ 89. E5
        sub     esp, 24                                 ; 159E _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 15A1 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 15A5 _ 83. EC, 08
        push    32                                      ; 15A8 _ 6A, 20
        push    160                                     ; 15AA _ 68, 000000A0
        call    io_out8                                 ; 15AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15B4 _ 83. C4, 10
        sub     esp, 8                                  ; 15B7 _ 83. EC, 08
        push    32                                      ; 15BA _ 6A, 20
        push    32                                      ; 15BC _ 6A, 20
        call    io_out8                                 ; 15BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15C3 _ 83. C4, 10
        sub     esp, 12                                 ; 15C6 _ 83. EC, 0C
        push    96                                      ; 15C9 _ 6A, 60
        call    io_in8                                  ; 15CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15D0 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 15D3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 15D6 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 15DA _ 83. EC, 08
        push    eax                                     ; 15DD _ 50
        push    mouseInfo                               ; 15DE _ 68, 00000020(d)
        call    fifo8_put                               ; 15E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15E8 _ 83. C4, 10
        nop                                             ; 15EB _ 90
        leave                                           ; 15EC _ C9
        ret                                             ; 15ED _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 15EE _ 55
        mov     ebp, esp                                ; 15EF _ 89. E5
        sub     esp, 40                                 ; 15F1 _ 83. EC, 28
        call    io_sti                                  ; 15F4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 15F9 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 15FE _ 89. 45, E8
        movzx   eax, word [?_190]                       ; 1601 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1608 _ 98
        mov     dword [ebp-14H], eax                    ; 1609 _ 89. 45, EC
        movzx   eax, word [?_191]                       ; 160C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1613 _ 98
        mov     dword [ebp-10H], eax                    ; 1614 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1617 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 161B _ 83. EC, 0C
        push    keyInfo                                 ; 161E _ 68, 00000008(d)
        call    fifo8_get                               ; 1623 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1628 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 162B _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 162E _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1632 _ 83. EC, 0C
        push    eax                                     ; 1635 _ 50
        call    charToHex                               ; 1636 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 163B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 163E _ 89. 45, F4
        mov     edx, dword [line.2414]                  ; 1641 _ 8B. 15, 00000250(d)
        mov     eax, dword [pos.2413]                   ; 1647 _ A1, 00000254(d)
        sub     esp, 8                                  ; 164C _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 164F _ FF. 75, F4
        push    7                                       ; 1652 _ 6A, 07
        push    edx                                     ; 1654 _ 52
        push    eax                                     ; 1655 _ 50
        push    dword [ebp+0CH]                         ; 1656 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1659 _ FF. 75, 08
        call    showString                              ; 165C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1661 _ 83. C4, 20
        mov     eax, dword [pos.2413]                   ; 1664 _ A1, 00000254(d)
        add     eax, 32                                 ; 1669 _ 83. C0, 20
        mov     dword [pos.2413], eax                   ; 166C _ A3, 00000254(d)
        mov     eax, dword [pos.2413]                   ; 1671 _ A1, 00000254(d)
        cmp     dword [ebp-14H], eax                    ; 1676 _ 39. 45, EC
        jnz     ?_057                                   ; 1679 _ 75, 28
        mov     eax, dword [line.2414]                  ; 167B _ A1, 00000250(d)
        cmp     dword [ebp-10H], eax                    ; 1680 _ 39. 45, F0
        jz      ?_055                                   ; 1683 _ 74, 0A
        mov     eax, dword [line.2414]                  ; 1685 _ A1, 00000250(d)
        add     eax, 16                                 ; 168A _ 83. C0, 10
        jmp     ?_056                                   ; 168D _ EB, 05

?_055:  mov     eax, 0                                  ; 168F _ B8, 00000000
?_056:  mov     dword [line.2414], eax                  ; 1694 _ A3, 00000250(d)
        mov     dword [pos.2413], 0                     ; 1699 _ C7. 05, 00000254(d), 00000000
?_057:  nop                                             ; 16A3 _ 90
        leave                                           ; 16A4 _ C9
        ret                                             ; 16A5 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 16A6 _ 55
        mov     ebp, esp                                ; 16A7 _ 89. E5
        sub     esp, 24                                 ; 16A9 _ 83. EC, 18
        call    io_sti                                  ; 16AC _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 16B1 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 16B5 _ 83. EC, 0C
        push    mouseInfo                               ; 16B8 _ 68, 00000020(d)
        call    fifo8_get                               ; 16BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16C2 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 16C5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 16C8 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 16CC _ 83. EC, 08
        push    eax                                     ; 16CF _ 50
        push    mouse_move                              ; 16D0 _ 68, 000000E0(d)
        call    mouse_decode                            ; 16D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16DA _ 83. C4, 10
        test    eax, eax                                ; 16DD _ 85. C0
        jz      ?_058                                   ; 16DF _ 74, 60
        sub     esp, 4                                  ; 16E1 _ 83. EC, 04
        push    mouse_move                              ; 16E4 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 16E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16EC _ FF. 75, 08
        call    computeMousePos                         ; 16EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16F4 _ 83. C4, 10
        mov     edx, dword [my]                         ; 16F7 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 16FD _ A1, 000000F0(d)
        push    edx                                     ; 1702 _ 52
        push    eax                                     ; 1703 _ 50
        push    dword [ebp+10H]                         ; 1704 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1707 _ FF. 75, 08
        call    sheet_slide                             ; 170A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 170F _ 83. C4, 10
        mov     eax, dword [?_192]                      ; 1712 _ A1, 000000EC(d)
        and     eax, 01H                                ; 1717 _ 83. E0, 01
        test    eax, eax                                ; 171A _ 85. C0
        jz      ?_058                                   ; 171C _ 74, 23
        mov     eax, dword [my]                         ; 171E _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1723 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1726 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 172B _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 172E _ A1, 00000224(d)
        push    ecx                                     ; 1733 _ 51
        push    edx                                     ; 1734 _ 52
        push    eax                                     ; 1735 _ 50
        push    dword [ebp+8H]                          ; 1736 _ FF. 75, 08
        call    sheet_slide                             ; 1739 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 173E _ 83. C4, 10
?_058:  nop                                             ; 1741 _ 90
        leave                                           ; 1742 _ C9
        ret                                             ; 1743 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1744 _ 55
        mov     ebp, esp                                ; 1745 _ 89. E5
        sub     esp, 4                                  ; 1747 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 174A _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 174D _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1750 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1753 _ 0F B6. 40, 03
        test    al, al                                  ; 1757 _ 84. C0
        jnz     ?_060                                   ; 1759 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 175B _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 175F _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1761 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1764 _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 1768 _ B8, 00000000
        jmp     ?_067                                   ; 176D _ E9, 0000010C

?_060:  mov     eax, dword [ebp+8H]                     ; 1772 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1775 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1779 _ 3C, 01
        jnz     ?_062                                   ; 177B _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 177D _ 0F B6. 45, FC
        or      eax, 37H                                ; 1781 _ 83. C8, 37
        cmp     al, 63                                  ; 1784 _ 3C, 3F
        jnz     ?_061                                   ; 1786 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1788 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 178B _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 178F _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1791 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1794 _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 1798 _ B8, 00000000
        jmp     ?_067                                   ; 179D _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 17A2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17A5 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 17A9 _ 3C, 02
        jnz     ?_063                                   ; 17AB _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 17AD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 17B0 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 17B4 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17B7 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 17BA _ C6. 40, 03, 03
        mov     eax, 0                                  ; 17BE _ B8, 00000000
        jmp     ?_067                                   ; 17C3 _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 17C8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17CB _ 0F B6. 40, 03
        cmp     al, 3                                   ; 17CF _ 3C, 03
        jne     ?_066                                   ; 17D1 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 17D7 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 17DA _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 17DE _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 17E1 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 17E4 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 17E8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 17EB _ 0F B6. 00
        movzx   eax, al                                 ; 17EE _ 0F B6. C0
        and     eax, 07H                                ; 17F1 _ 83. E0, 07
        mov     edx, eax                                ; 17F4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17F6 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 17F9 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 17FC _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 17FF _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1803 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1806 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1809 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 180C _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 180F _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1813 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1816 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1819 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 181C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 181F _ 0F B6. 00
        movzx   eax, al                                 ; 1822 _ 0F B6. C0
        and     eax, 10H                                ; 1825 _ 83. E0, 10
        test    eax, eax                                ; 1828 _ 85. C0
        jz      ?_064                                   ; 182A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 182C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 182F _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1832 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1837 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1839 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 183C _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 183F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1842 _ 0F B6. 00
        movzx   eax, al                                 ; 1845 _ 0F B6. C0
        and     eax, 20H                                ; 1848 _ 83. E0, 20
        test    eax, eax                                ; 184B _ 85. C0
        jz      ?_065                                   ; 184D _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 184F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1852 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1855 _ 0D, FFFFFF00
        mov     edx, eax                                ; 185A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 185C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 185F _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 1862 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1865 _ 8B. 40, 08
        neg     eax                                     ; 1868 _ F7. D8
        mov     edx, eax                                ; 186A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 186C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 186F _ 89. 50, 08
        mov     eax, 1                                  ; 1872 _ B8, 00000001
        jmp     ?_067                                   ; 1877 _ EB, 05

?_066:  mov     eax, 4294967295                         ; 1879 _ B8, FFFFFFFF
?_067:  leave                                           ; 187E _ C9
        ret                                             ; 187F _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1880 _ 55
        mov     ebp, esp                                ; 1881 _ 89. E5
        sub     esp, 16                                 ; 1883 _ 83. EC, 10
        movzx   eax, word [?_190]                       ; 1886 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 188D _ 98
        mov     dword [ebp-8H], eax                     ; 188E _ 89. 45, F8
        movzx   eax, word [?_191]                       ; 1891 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1898 _ 98
        mov     dword [ebp-4H], eax                     ; 1899 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 189C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 189F _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 18A2 _ A1, 000000F0(d)
        add     eax, edx                                ; 18A7 _ 01. D0
        mov     dword [mx], eax                         ; 18A9 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 18AE _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 18B1 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 18B4 _ A1, 000000F4(d)
        add     eax, edx                                ; 18B9 _ 01. D0
        mov     dword [my], eax                         ; 18BB _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 18C0 _ A1, 000000F0(d)
        test    eax, eax                                ; 18C5 _ 85. C0
        jns     ?_068                                   ; 18C7 _ 79, 0A
        mov     dword [mx], 0                           ; 18C9 _ C7. 05, 000000F0(d), 00000000
?_068:  mov     eax, dword [my]                         ; 18D3 _ A1, 000000F4(d)
        test    eax, eax                                ; 18D8 _ 85. C0
        jns     ?_069                                   ; 18DA _ 79, 0A
        mov     dword [my], 0                           ; 18DC _ C7. 05, 000000F4(d), 00000000
?_069:  mov     eax, dword [ebp-8H]                     ; 18E6 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 18E9 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 18EC _ A1, 000000F0(d)
        cmp     edx, eax                                ; 18F1 _ 39. C2
        jge     ?_070                                   ; 18F3 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 18F5 _ 8B. 45, F8
        sub     eax, 9                                  ; 18F8 _ 83. E8, 09
        mov     dword [mx], eax                         ; 18FB _ A3, 000000F0(d)
?_070:  mov     eax, dword [ebp-4H]                     ; 1900 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1903 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1906 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 190B _ 39. C2
        jge     ?_071                                   ; 190D _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 190F _ 8B. 45, FC
        sub     eax, 1                                  ; 1912 _ 83. E8, 01
        mov     dword [my], eax                         ; 1915 _ A3, 000000F4(d)
?_071:  nop                                             ; 191A _ 90
        leave                                           ; 191B _ C9
        ret                                             ; 191C _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 191D _ 55
        mov     ebp, esp                                ; 191E _ 89. E5
        sub     esp, 56                                 ; 1920 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1923 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 192A _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1931 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1938 _ C7. 45, DC, 00000050
        push    100                                     ; 193F _ 6A, 64
        push    dword [ebp+1CH]                         ; 1941 _ FF. 75, 1C
        push    0                                       ; 1944 _ 6A, 00
        push    0                                       ; 1946 _ 6A, 00
        push    14                                      ; 1948 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 194A _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 194D _ FF. 75, 14
        call    boxfill8                                ; 1950 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1955 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1958 _ 8B. 45, 20
        movsx   eax, al                                 ; 195B _ 0F BE. C0
        sub     esp, 8                                  ; 195E _ 83. EC, 08
        push    ?_182                                   ; 1961 _ 68, 00000036(d)
        push    eax                                     ; 1966 _ 50
        push    dword [ebp-2CH]                         ; 1967 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 196A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 196D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1970 _ FF. 75, 08
        call    showString                              ; 1973 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1978 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 197B _ 8B. 45, 18
        sub     esp, 12                                 ; 197E _ 83. EC, 0C
        push    eax                                     ; 1981 _ 50
        call    intToHexStr                             ; 1982 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1987 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 198A _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 198D _ 8B. 45, 20
        movsx   eax, al                                 ; 1990 _ 0F BE. C0
        sub     esp, 8                                  ; 1993 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1996 _ FF. 75, E0
        push    eax                                     ; 1999 _ 50
        push    dword [ebp-2CH]                         ; 199A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 199D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 19A0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19A3 _ FF. 75, 08
        call    showString                              ; 19A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19AB _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 19AE _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 19B2 _ 8B. 45, 20
        movsx   eax, al                                 ; 19B5 _ 0F BE. C0
        sub     esp, 8                                  ; 19B8 _ 83. EC, 08
        push    ?_183                                   ; 19BB _ 68, 00000040(d)
        push    eax                                     ; 19C0 _ 50
        push    dword [ebp-2CH]                         ; 19C1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 19C4 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 19C7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19CA _ FF. 75, 08
        call    showString                              ; 19CD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19D2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 19D5 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 19D8 _ 8B. 00
        sub     esp, 12                                 ; 19DA _ 83. EC, 0C
        push    eax                                     ; 19DD _ 50
        call    intToHexStr                             ; 19DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19E3 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 19E6 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 19E9 _ 8B. 45, 20
        movsx   eax, al                                 ; 19EC _ 0F BE. C0
        sub     esp, 8                                  ; 19EF _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 19F2 _ FF. 75, E4
        push    eax                                     ; 19F5 _ 50
        push    dword [ebp-2CH]                         ; 19F6 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 19F9 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 19FC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19FF _ FF. 75, 08
        call    showString                              ; 1A02 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A07 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A0A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A0E _ 8B. 45, 20
        movsx   eax, al                                 ; 1A11 _ 0F BE. C0
        sub     esp, 8                                  ; 1A14 _ 83. EC, 08
        push    ?_184                                   ; 1A17 _ 68, 0000004E(d)
        push    eax                                     ; 1A1C _ 50
        push    dword [ebp-2CH]                         ; 1A1D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A20 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A23 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A26 _ FF. 75, 08
        call    showString                              ; 1A29 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A2E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A31 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1A34 _ 8B. 40, 04
        sub     esp, 12                                 ; 1A37 _ 83. EC, 0C
        push    eax                                     ; 1A3A _ 50
        call    intToHexStr                             ; 1A3B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A40 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1A43 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1A46 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A49 _ 0F BE. C0
        sub     esp, 8                                  ; 1A4C _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1A4F _ FF. 75, E8
        push    eax                                     ; 1A52 _ 50
        push    dword [ebp-2CH]                         ; 1A53 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A56 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A59 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A5C _ FF. 75, 08
        call    showString                              ; 1A5F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A64 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A67 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A6B _ 8B. 45, 20
        movsx   eax, al                                 ; 1A6E _ 0F BE. C0
        sub     esp, 8                                  ; 1A71 _ 83. EC, 08
        push    ?_185                                   ; 1A74 _ 68, 0000005D(d)
        push    eax                                     ; 1A79 _ 50
        push    dword [ebp-2CH]                         ; 1A7A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A7D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A80 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A83 _ FF. 75, 08
        call    showString                              ; 1A86 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A8B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A8E _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1A91 _ 8B. 40, 08
        sub     esp, 12                                 ; 1A94 _ 83. EC, 0C
        push    eax                                     ; 1A97 _ 50
        call    intToHexStr                             ; 1A98 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A9D _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1AA0 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1AA3 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AA6 _ 0F BE. C0
        sub     esp, 8                                  ; 1AA9 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1AAC _ FF. 75, EC
        push    eax                                     ; 1AAF _ 50
        push    dword [ebp-2CH]                         ; 1AB0 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1AB3 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1AB6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AB9 _ FF. 75, 08
        call    showString                              ; 1ABC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AC1 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1AC4 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1AC8 _ 8B. 45, 20
        movsx   eax, al                                 ; 1ACB _ 0F BE. C0
        sub     esp, 8                                  ; 1ACE _ 83. EC, 08
        push    ?_186                                   ; 1AD1 _ 68, 00000069(d)
        push    eax                                     ; 1AD6 _ 50
        push    dword [ebp-2CH]                         ; 1AD7 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1ADA _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1ADD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AE0 _ FF. 75, 08
        call    showString                              ; 1AE3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AE8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1AEB _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1AEE _ 8B. 40, 0C
        sub     esp, 12                                 ; 1AF1 _ 83. EC, 0C
        push    eax                                     ; 1AF4 _ 50
        call    intToHexStr                             ; 1AF5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AFA _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1AFD _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1B00 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B03 _ 0F BE. C0
        sub     esp, 8                                  ; 1B06 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1B09 _ FF. 75, F0
        push    eax                                     ; 1B0C _ 50
        push    dword [ebp-2CH]                         ; 1B0D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B10 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B13 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B16 _ FF. 75, 08
        call    showString                              ; 1B19 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B1E _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B21 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1B25 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B28 _ 0F BE. C0
        sub     esp, 8                                  ; 1B2B _ 83. EC, 08
        push    ?_187                                   ; 1B2E _ 68, 00000076(d)
        push    eax                                     ; 1B33 _ 50
        push    dword [ebp-2CH]                         ; 1B34 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B37 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B3A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B3D _ FF. 75, 08
        call    showString                              ; 1B40 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B45 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B48 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1B4B _ 8B. 40, 10
        sub     esp, 12                                 ; 1B4E _ 83. EC, 0C
        push    eax                                     ; 1B51 _ 50
        call    intToHexStr                             ; 1B52 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B57 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1B5A _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1B5D _ 8B. 45, 20
        movsx   eax, al                                 ; 1B60 _ 0F BE. C0
        sub     esp, 8                                  ; 1B63 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1B66 _ FF. 75, F4
        push    eax                                     ; 1B69 _ 50
        push    dword [ebp-2CH]                         ; 1B6A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B6D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B70 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B73 _ FF. 75, 08
        call    showString                              ; 1B76 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B7B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B7E _ 83. 45, D4, 10
        nop                                             ; 1B82 _ 90
        leave                                           ; 1B83 _ C9
        ret                                             ; 1B84 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1B85 _ 55
        mov     ebp, esp                                ; 1B86 _ 89. E5
        sub     esp, 24                                 ; 1B88 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1B8B _ A1, 00000008(d)
        sub     esp, 8                                  ; 1B90 _ 83. EC, 08
        push    37500                                   ; 1B93 _ 68, 0000927C
        push    eax                                     ; 1B98 _ 50
        call    memman_alloc_4K                         ; 1B99 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B9E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1BA1 _ 89. 45, F0
        sub     esp, 12                                 ; 1BA4 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1BA7 _ FF. 75, 08
        call    sheet_alloc                             ; 1BAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BAF _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1BB2 _ 89. 45, F4
        sub     esp, 12                                 ; 1BB5 _ 83. EC, 0C
        push    99                                      ; 1BB8 _ 6A, 63
        push    125                                     ; 1BBA _ 6A, 7D
        push    300                                     ; 1BBC _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1BC1 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1BC4 _ FF. 75, F4
        call    sheet_setbuf                            ; 1BC7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BCC _ 83. C4, 20
        sub     esp, 4                                  ; 1BCF _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1BD2 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1BD5 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1BD8 _ FF. 75, 08
        call    make_window8                            ; 1BDB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BE0 _ 83. C4, 10
        sub     esp, 8                                  ; 1BE3 _ 83. EC, 08
        push    7                                       ; 1BE6 _ 6A, 07
        push    16                                      ; 1BE8 _ 6A, 10
        push    150                                     ; 1BEA _ 68, 00000096
        push    42                                      ; 1BEF _ 6A, 2A
        push    8                                       ; 1BF1 _ 6A, 08
        push    dword [ebp-0CH]                         ; 1BF3 _ FF. 75, F4
        call    make_textbox8                           ; 1BF6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BFB _ 83. C4, 20
        push    dword [ebp+14H]                         ; 1BFE _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1C01 _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 1C04 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C07 _ FF. 75, 08
        call    sheet_slide                             ; 1C0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C0F _ 83. C4, 10
        sub     esp, 4                                  ; 1C12 _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1C15 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1C18 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C1B _ FF. 75, 08
        call    sheet_level_updown                      ; 1C1E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C23 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1C26 _ 8B. 45, F4
        leave                                           ; 1C29 _ C9
        ret                                             ; 1C2A _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1C2B _ 55
        mov     ebp, esp                                ; 1C2C _ 89. E5
        push    ebx                                     ; 1C2E _ 53
        sub     esp, 36                                 ; 1C2F _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1C32 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C35 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1C38 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1C3B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C3E _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1C41 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1C44 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C47 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C4A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C4D _ 8B. 00
        push    0                                       ; 1C4F _ 6A, 00
        push    edx                                     ; 1C51 _ 52
        push    0                                       ; 1C52 _ 6A, 00
        push    0                                       ; 1C54 _ 6A, 00
        push    8                                       ; 1C56 _ 6A, 08
        push    dword [ebp-10H]                         ; 1C58 _ FF. 75, F0
        push    eax                                     ; 1C5B _ 50
        call    boxfill8                                ; 1C5C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C61 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1C64 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1C67 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C6A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C6D _ 8B. 00
        push    1                                       ; 1C6F _ 6A, 01
        push    edx                                     ; 1C71 _ 52
        push    1                                       ; 1C72 _ 6A, 01
        push    1                                       ; 1C74 _ 6A, 01
        push    7                                       ; 1C76 _ 6A, 07
        push    dword [ebp-10H]                         ; 1C78 _ FF. 75, F0
        push    eax                                     ; 1C7B _ 50
        call    boxfill8                                ; 1C7C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C81 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1C84 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1C87 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C8A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C8D _ 8B. 00
        push    edx                                     ; 1C8F _ 52
        push    0                                       ; 1C90 _ 6A, 00
        push    0                                       ; 1C92 _ 6A, 00
        push    0                                       ; 1C94 _ 6A, 00
        push    8                                       ; 1C96 _ 6A, 08
        push    dword [ebp-10H]                         ; 1C98 _ FF. 75, F0
        push    eax                                     ; 1C9B _ 50
        call    boxfill8                                ; 1C9C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CA1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1CA4 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1CA7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CAA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CAD _ 8B. 00
        push    edx                                     ; 1CAF _ 52
        push    1                                       ; 1CB0 _ 6A, 01
        push    1                                       ; 1CB2 _ 6A, 01
        push    1                                       ; 1CB4 _ 6A, 01
        push    7                                       ; 1CB6 _ 6A, 07
        push    dword [ebp-10H]                         ; 1CB8 _ FF. 75, F0
        push    eax                                     ; 1CBB _ 50
        call    boxfill8                                ; 1CBC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CC1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1CC4 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1CC7 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1CCA _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1CCD _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1CD0 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1CD3 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CD6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CD9 _ 8B. 00
        push    ebx                                     ; 1CDB _ 53
        push    ecx                                     ; 1CDC _ 51
        push    1                                       ; 1CDD _ 6A, 01
        push    edx                                     ; 1CDF _ 52
        push    15                                      ; 1CE0 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1CE2 _ FF. 75, F0
        push    eax                                     ; 1CE5 _ 50
        call    boxfill8                                ; 1CE6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CEB _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1CEE _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1CF1 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1CF4 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1CF7 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1CFA _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1CFD _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D00 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D03 _ 8B. 00
        push    ebx                                     ; 1D05 _ 53
        push    ecx                                     ; 1D06 _ 51
        push    0                                       ; 1D07 _ 6A, 00
        push    edx                                     ; 1D09 _ 52
        push    0                                       ; 1D0A _ 6A, 00
        push    dword [ebp-10H]                         ; 1D0C _ FF. 75, F0
        push    eax                                     ; 1D0F _ 50
        call    boxfill8                                ; 1D10 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D15 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1D18 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1D1B _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1D1E _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1D21 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1D24 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D27 _ 8B. 00
        push    ecx                                     ; 1D29 _ 51
        push    edx                                     ; 1D2A _ 52
        push    2                                       ; 1D2B _ 6A, 02
        push    2                                       ; 1D2D _ 6A, 02
        push    8                                       ; 1D2F _ 6A, 08
        push    dword [ebp-10H]                         ; 1D31 _ FF. 75, F0
        push    eax                                     ; 1D34 _ 50
        call    boxfill8                                ; 1D35 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D3A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1D3D _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1D40 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1D43 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D46 _ 8B. 00
        push    20                                      ; 1D48 _ 6A, 14
        push    edx                                     ; 1D4A _ 52
        push    3                                       ; 1D4B _ 6A, 03
        push    3                                       ; 1D4D _ 6A, 03
        push    12                                      ; 1D4F _ 6A, 0C
        push    dword [ebp-10H]                         ; 1D51 _ FF. 75, F0
        push    eax                                     ; 1D54 _ 50
        call    boxfill8                                ; 1D55 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D5A _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1D5D _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1D60 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1D63 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1D66 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1D69 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1D6C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1D6F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D72 _ 8B. 00
        push    ebx                                     ; 1D74 _ 53
        push    ecx                                     ; 1D75 _ 51
        push    edx                                     ; 1D76 _ 52
        push    1                                       ; 1D77 _ 6A, 01
        push    15                                      ; 1D79 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1D7B _ FF. 75, F0
        push    eax                                     ; 1D7E _ 50
        call    boxfill8                                ; 1D7F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D84 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1D87 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1D8A _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1D8D _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1D90 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1D93 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D96 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D99 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D9C _ 8B. 00
        push    ebx                                     ; 1D9E _ 53
        push    ecx                                     ; 1D9F _ 51
        push    edx                                     ; 1DA0 _ 52
        push    0                                       ; 1DA1 _ 6A, 00
        push    0                                       ; 1DA3 _ 6A, 00
        push    dword [ebp-10H]                         ; 1DA5 _ FF. 75, F0
        push    eax                                     ; 1DA8 _ 50
        call    boxfill8                                ; 1DA9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1DAE _ 83. C4, 1C
        sub     esp, 8                                  ; 1DB1 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1DB4 _ FF. 75, 10
        push    7                                       ; 1DB7 _ 6A, 07
        push    4                                       ; 1DB9 _ 6A, 04
        push    8                                       ; 1DBB _ 6A, 08
        push    dword [ebp+0CH]                         ; 1DBD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DC0 _ FF. 75, 08
        call    showString                              ; 1DC3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DC8 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1DCB _ C7. 45, E8, 00000000
        jmp     ?_078                                   ; 1DD2 _ EB, 7D

?_072:  mov     dword [ebp-14H], 0                      ; 1DD4 _ C7. 45, EC, 00000000
        jmp     ?_077                                   ; 1DDB _ EB, 6A

?_073:  mov     eax, dword [ebp-18H]                    ; 1DDD _ 8B. 45, E8
        shl     eax, 4                                  ; 1DE0 _ C1. E0, 04
        mov     edx, eax                                ; 1DE3 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1DE5 _ 8B. 45, EC
        add     eax, edx                                ; 1DE8 _ 01. D0
        add     eax, closebtn.2465                      ; 1DEA _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1DEF _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1DF2 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1DF5 _ 80. 7D, E7, 40
        jnz     ?_074                                   ; 1DF9 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1DFB _ C6. 45, E7, 00
        jmp     ?_076                                   ; 1DFF _ EB, 16

?_074:  cmp     byte [ebp-19H], 36                      ; 1E01 _ 80. 7D, E7, 24
        jnz     ?_075                                   ; 1E05 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1E07 _ C6. 45, E7, 0F
        jmp     ?_076                                   ; 1E0B _ EB, 0A

?_075:  cmp     byte [ebp-19H], 81                      ; 1E0D _ 80. 7D, E7, 51
        jnz     ?_076                                   ; 1E11 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1E13 _ C6. 45, E7, 08
?_076:  mov     eax, dword [ebp+0CH]                    ; 1E17 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1E1A _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1E1C _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1E1F _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1E22 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E25 _ 8B. 40, 04
        imul    ecx, eax                                ; 1E28 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1E2B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E2E _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1E31 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1E34 _ 8B. 45, EC
        add     eax, ebx                                ; 1E37 _ 01. D8
        add     eax, ecx                                ; 1E39 _ 01. C8
        add     edx, eax                                ; 1E3B _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1E3D _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1E41 _ 88. 02
        add     dword [ebp-14H], 1                      ; 1E43 _ 83. 45, EC, 01
?_077:  cmp     dword [ebp-14H], 15                     ; 1E47 _ 83. 7D, EC, 0F
        jle     ?_073                                   ; 1E4B _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1E4D _ 83. 45, E8, 01
?_078:  cmp     dword [ebp-18H], 13                     ; 1E51 _ 83. 7D, E8, 0D
        jle     ?_072                                   ; 1E55 _ 0F 8E, FFFFFF79
        nop                                             ; 1E5B _ 90
        mov     ebx, dword [ebp-4H]                     ; 1E5C _ 8B. 5D, FC
        leave                                           ; 1E5F _ C9
        ret                                             ; 1E60 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 1E61 _ 55
        mov     ebp, esp                                ; 1E62 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1E64 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1E67 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1E6D _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1E70 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1E77 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1E7A _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1E81 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1E84 _ C7. 40, 0C, 00000000
        nop                                             ; 1E8B _ 90
        pop     ebp                                     ; 1E8C _ 5D
        ret                                             ; 1E8D _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1E8E _ 55
        mov     ebp, esp                                ; 1E8F _ 89. E5
        sub     esp, 16                                 ; 1E91 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1E94 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1E9B _ C7. 45, FC, 00000000
        jmp     ?_080                                   ; 1EA2 _ EB, 14

?_079:  mov     eax, dword [ebp+8H]                     ; 1EA4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1EA7 _ 8B. 55, FC
        add     edx, 2                                  ; 1EAA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1EAD _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1EB1 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1EB4 _ 83. 45, FC, 01
?_080:  mov     eax, dword [ebp+8H]                     ; 1EB8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EBB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1EBD _ 39. 45, FC
        jl      ?_079                                   ; 1EC0 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1EC2 _ 8B. 45, F8
        leave                                           ; 1EC5 _ C9
        ret                                             ; 1EC6 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1EC7 _ 55
        mov     ebp, esp                                ; 1EC8 _ 89. E5
        sub     esp, 16                                 ; 1ECA _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1ECD _ C7. 45, F8, 00000000
        jmp     ?_084                                   ; 1ED4 _ E9, 00000085

?_081:  mov     eax, dword [ebp+8H]                     ; 1ED9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1EDC _ 8B. 55, F8
        add     edx, 2                                  ; 1EDF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1EE2 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1EE6 _ 39. 45, 0C
        ja      ?_083                                   ; 1EE9 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1EEB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1EEE _ 8B. 55, F8
        add     edx, 2                                  ; 1EF1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1EF4 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1EF7 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1EFA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1EFD _ 8B. 55, F8
        add     edx, 2                                  ; 1F00 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1F03 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1F06 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1F09 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1F0C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F0F _ 8B. 55, F8
        add     edx, 2                                  ; 1F12 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1F15 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1F18 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F1B _ 8B. 55, F8
        add     edx, 2                                  ; 1F1E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1F21 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1F25 _ 2B. 45, 0C
        mov     edx, eax                                ; 1F28 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F2A _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1F2D _ 8B. 4D, F8
        add     ecx, 2                                  ; 1F30 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 1F33 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1F37 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F3A _ 8B. 55, F8
        add     edx, 2                                  ; 1F3D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1F40 _ 8B. 44 D0, 04
        test    eax, eax                                ; 1F44 _ 85. C0
        jnz     ?_082                                   ; 1F46 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1F48 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F4B _ 8B. 00
        lea     edx, [eax-1H]                           ; 1F4D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1F50 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1F53 _ 89. 10
?_082:  mov     eax, dword [ebp-4H]                     ; 1F55 _ 8B. 45, FC
        jmp     ?_085                                   ; 1F58 _ EB, 17

?_083:  add     dword [ebp-8H], 1                       ; 1F5A _ 83. 45, F8, 01
?_084:  mov     eax, dword [ebp+8H]                     ; 1F5E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F61 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1F63 _ 39. 45, F8
        jl      ?_081                                   ; 1F66 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1F6C _ B8, 00000000
?_085:  leave                                           ; 1F71 _ C9
        ret                                             ; 1F72 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1F73 _ 55
        mov     ebp, esp                                ; 1F74 _ 89. E5
        sub     esp, 16                                 ; 1F76 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1F79 _ 8B. 45, 0C
        add     eax, 4095                               ; 1F7C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1F81 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1F86 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1F89 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F8C _ FF. 75, 08
        call    memman_alloc_FF                         ; 1F8F _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1F94 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1F97 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1F9A _ 8B. 45, FC
        leave                                           ; 1F9D _ C9
        ret                                             ; 1F9E _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1F9F _ 55
        mov     ebp, esp                                ; 1FA0 _ 89. E5
        push    ebx                                     ; 1FA2 _ 53
        sub     esp, 16                                 ; 1FA3 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1FA6 _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 1FAD _ EB, 15

?_086:  mov     eax, dword [ebp+8H]                     ; 1FAF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1FB2 _ 8B. 55, F4
        add     edx, 2                                  ; 1FB5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1FB8 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1FBB _ 39. 45, 0C
        jc      ?_088                                   ; 1FBE _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1FC0 _ 83. 45, F4, 01
?_087:  mov     eax, dword [ebp+8H]                     ; 1FC4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FC7 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1FC9 _ 39. 45, F4
        jl      ?_086                                   ; 1FCC _ 7C, E1
        jmp     ?_089                                   ; 1FCE _ EB, 01

?_088:  nop                                             ; 1FD0 _ 90
?_089:  cmp     dword [ebp-0CH], 0                      ; 1FD1 _ 83. 7D, F4, 00
        jle     ?_091                                   ; 1FD5 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 1FDB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1FDE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1FE1 _ 8B. 45, 08
        add     edx, 2                                  ; 1FE4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1FE7 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1FEA _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1FED _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1FF0 _ 8B. 45, 08
        add     ecx, 2                                  ; 1FF3 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1FF6 _ 8B. 44 C8, 04
        add     eax, edx                                ; 1FFA _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 1FFC _ 39. 45, 0C
        jne     ?_091                                   ; 1FFF _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2005 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2008 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 200B _ 8B. 45, 08
        add     edx, 2                                  ; 200E _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2011 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2015 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2018 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 201B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 201E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2021 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2024 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2027 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 202B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 202E _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2030 _ 39. 45, F4
        jge     ?_090                                   ; 2033 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2035 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2038 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 203B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 203E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2041 _ 8B. 55, F4
        add     edx, 2                                  ; 2044 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2047 _ 8B. 04 D0
        cmp     ecx, eax                                ; 204A _ 39. C1
        jnz     ?_090                                   ; 204C _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 204E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2051 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2054 _ 8B. 45, 08
        add     edx, 2                                  ; 2057 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 205A _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 205E _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2061 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2064 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2067 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 206B _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 206E _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2071 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2074 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2077 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 207A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 207E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2081 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2083 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2086 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2089 _ 89. 10
?_090:  mov     eax, 0                                  ; 208B _ B8, 00000000
        jmp     ?_097                                   ; 2090 _ E9, 0000011C

?_091:  mov     eax, dword [ebp+8H]                     ; 2095 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2098 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 209A _ 39. 45, F4
        jge     ?_092                                   ; 209D _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 209F _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 20A2 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 20A5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20A8 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20AB _ 8B. 55, F4
        add     edx, 2                                  ; 20AE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 20B1 _ 8B. 04 D0
        cmp     ecx, eax                                ; 20B4 _ 39. C1
        jnz     ?_092                                   ; 20B6 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 20B8 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20BB _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 20BE _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 20C1 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 20C4 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 20C7 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20CA _ 8B. 55, F4
        add     edx, 2                                  ; 20CD _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 20D0 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 20D4 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 20D7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20DA _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20DD _ 8B. 55, F4
        add     edx, 2                                  ; 20E0 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 20E3 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 20E7 _ B8, 00000000
        jmp     ?_097                                   ; 20EC _ E9, 000000C0

?_092:  mov     eax, dword [ebp+8H]                     ; 20F1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20F4 _ 8B. 00
        cmp     eax, 4095                               ; 20F6 _ 3D, 00000FFF
        jg      ?_096                                   ; 20FB _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2101 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2104 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2106 _ 89. 45, F8
        jmp     ?_094                                   ; 2109 _ EB, 28

?_093:  mov     eax, dword [ebp-8H]                     ; 210B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 210E _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2111 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2114 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2117 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 211A _ 8B. 45, 08
        add     edx, 2                                  ; 211D _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2120 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2123 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2125 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2128 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 212B _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 212F _ 83. 6D, F8, 01
?_094:  mov     eax, dword [ebp-8H]                     ; 2133 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2136 _ 3B. 45, F4
        jg      ?_093                                   ; 2139 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 213B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 213E _ 8B. 00
        lea     edx, [eax+1H]                           ; 2140 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2143 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2146 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2148 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 214B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 214E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2151 _ 8B. 00
        cmp     edx, eax                                ; 2153 _ 39. C2
        jge     ?_095                                   ; 2155 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2157 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 215A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 215C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 215F _ 89. 50, 04
?_095:  mov     eax, dword [ebp+8H]                     ; 2162 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2165 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2168 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 216B _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 216E _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2171 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2174 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2177 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 217A _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 217D _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2181 _ B8, 00000000
        jmp     ?_097                                   ; 2186 _ EB, 29

?_096:  mov     eax, dword [ebp+8H]                     ; 2188 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 218B _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 218E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2191 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2194 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2197 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 219A _ 8B. 40, 08
        mov     edx, eax                                ; 219D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 219F _ 8B. 45, 10
        add     eax, edx                                ; 21A2 _ 01. D0
        mov     edx, eax                                ; 21A4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 21A6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 21A9 _ 89. 50, 08
        mov     eax, 4294967295                         ; 21AC _ B8, FFFFFFFF
?_097:  add     esp, 16                                 ; 21B1 _ 83. C4, 10
        pop     ebx                                     ; 21B4 _ 5B
        pop     ebp                                     ; 21B5 _ 5D
        ret                                             ; 21B6 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 21B7 _ 55
        mov     ebp, esp                                ; 21B8 _ 89. E5
        sub     esp, 16                                 ; 21BA _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 21BD _ 8B. 45, 10
        add     eax, 4095                               ; 21C0 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 21C5 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 21CA _ 89. 45, 10
        push    dword [ebp+10H]                         ; 21CD _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 21D0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21D3 _ FF. 75, 08
        call    memman_free                             ; 21D6 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 21DB _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 21DE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 21E1 _ 8B. 45, FC
        leave                                           ; 21E4 _ C9
        ret                                             ; 21E5 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 21E6 _ 55
        mov     ebp, esp                                ; 21E7 _ 89. E5
        sub     esp, 24                                 ; 21E9 _ 83. EC, 18
        sub     esp, 8                                  ; 21EC _ 83. EC, 08
        push    9232                                    ; 21EF _ 68, 00002410
        push    dword [ebp+8H]                          ; 21F4 _ FF. 75, 08
        call    memman_alloc_4K                         ; 21F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21FC _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 21FF _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2202 _ 83. 7D, F4, 00
        jnz     ?_098                                   ; 2206 _ 75, 0A
        mov     eax, 0                                  ; 2208 _ B8, 00000000
        jmp     ?_102                                   ; 220D _ E9, 0000009A

?_098:  mov     eax, dword [ebp+10H]                    ; 2212 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2215 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2219 _ 83. EC, 08
        push    eax                                     ; 221C _ 50
        push    dword [ebp+8H]                          ; 221D _ FF. 75, 08
        call    memman_alloc_4K                         ; 2220 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2225 _ 83. C4, 10
        mov     edx, eax                                ; 2228 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 222A _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 222D _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2230 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2233 _ 8B. 40, 04
        test    eax, eax                                ; 2236 _ 85. C0
        jnz     ?_099                                   ; 2238 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 223A _ 8B. 45, F4
        sub     esp, 4                                  ; 223D _ 83. EC, 04
        push    9232                                    ; 2240 _ 68, 00002410
        push    eax                                     ; 2245 _ 50
        push    dword [ebp+8H]                          ; 2246 _ FF. 75, 08
        call    memman_free_4K                          ; 2249 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 224E _ 83. C4, 10
        mov     eax, 0                                  ; 2251 _ B8, 00000000
        jmp     ?_102                                   ; 2256 _ EB, 54

?_099:  mov     eax, dword [ebp-0CH]                    ; 2258 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 225B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 225E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2260 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2263 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2266 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2269 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 226C _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 226F _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2272 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2275 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 227C _ C7. 45, F0, 00000000
        jmp     ?_101                                   ; 2283 _ EB, 1B

?_100:  mov     eax, dword [ebp-0CH]                    ; 2285 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2288 _ 8B. 55, F0
        add     edx, 33                                 ; 228B _ 83. C2, 21
        shl     edx, 5                                  ; 228E _ C1. E2, 05
        add     eax, edx                                ; 2291 _ 01. D0
        add     eax, 16                                 ; 2293 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2296 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 229C _ 83. 45, F0, 01
?_101:  cmp     dword [ebp-10H], 255                    ; 22A0 _ 81. 7D, F0, 000000FF
        jle     ?_100                                   ; 22A7 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 22A9 _ 8B. 45, F4
?_102:  leave                                           ; 22AC _ C9
        ret                                             ; 22AD _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 22AE _ 55
        mov     ebp, esp                                ; 22AF _ 89. E5
        sub     esp, 16                                 ; 22B1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22B4 _ C7. 45, F8, 00000000
        jmp     ?_105                                   ; 22BB _ EB, 4B

?_103:  mov     eax, dword [ebp+8H]                     ; 22BD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22C0 _ 8B. 55, F8
        add     edx, 33                                 ; 22C3 _ 83. C2, 21
        shl     edx, 5                                  ; 22C6 _ C1. E2, 05
        add     eax, edx                                ; 22C9 _ 01. D0
        add     eax, 16                                 ; 22CB _ 83. C0, 10
        mov     eax, dword [eax]                        ; 22CE _ 8B. 00
        test    eax, eax                                ; 22D0 _ 85. C0
        jnz     ?_104                                   ; 22D2 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 22D4 _ 8B. 45, F8
        shl     eax, 5                                  ; 22D7 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 22DA _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 22E0 _ 8B. 45, 08
        add     eax, edx                                ; 22E3 _ 01. D0
        add     eax, 4                                  ; 22E5 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 22E8 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 22EB _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 22EE _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 22F5 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 22F8 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 22FF _ 8B. 45, FC
        jmp     ?_106                                   ; 2302 _ EB, 12

?_104:  add     dword [ebp-8H], 1                       ; 2304 _ 83. 45, F8, 01
?_105:  cmp     dword [ebp-8H], 255                     ; 2308 _ 81. 7D, F8, 000000FF
        jle     ?_103                                   ; 230F _ 7E, AC
        mov     eax, 0                                  ; 2311 _ B8, 00000000
?_106:  leave                                           ; 2316 _ C9
        ret                                             ; 2317 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2318 _ 55
        mov     ebp, esp                                ; 2319 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 231B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 231E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2321 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2323 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2326 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2329 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 232C _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 232F _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2332 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2335 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2338 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 233B _ 89. 50, 14
        nop                                             ; 233E _ 90
        pop     ebp                                     ; 233F _ 5D
        ret                                             ; 2340 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2341 _ 55
        mov     ebp, esp                                ; 2342 _ 89. E5
        push    esi                                     ; 2344 _ 56
        push    ebx                                     ; 2345 _ 53
        sub     esp, 32                                 ; 2346 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2349 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 234C _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 234F _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2352 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2355 _ 8B. 40, 10
        add     eax, 1                                  ; 2358 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 235B _ 39. 45, 10
        jle     ?_107                                   ; 235E _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2360 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2363 _ 8B. 40, 10
        add     eax, 1                                  ; 2366 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2369 _ 89. 45, 10
?_107:  cmp     dword [ebp+10H], -1                     ; 236C _ 83. 7D, 10, FF
        jge     ?_108                                   ; 2370 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2372 _ C7. 45, 10, FFFFFFFF
?_108:  mov     eax, dword [ebp+0CH]                    ; 2379 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 237C _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 237F _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2382 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2385 _ 3B. 45, 10
        jle     ?_115                                   ; 2388 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 238E _ 83. 7D, 10, 00
        js      ?_111                                   ; 2392 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2398 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 239B _ 89. 45, E4
        jmp     ?_110                                   ; 239E _ EB, 34

?_109:  mov     eax, dword [ebp-1CH]                    ; 23A0 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 23A3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23A6 _ 8B. 45, 08
        add     edx, 4                                  ; 23A9 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 23AC _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 23B0 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 23B3 _ 8B. 4D, E4
        add     ecx, 4                                  ; 23B6 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 23B9 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 23BD _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 23C0 _ 8B. 55, E4
        add     edx, 4                                  ; 23C3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 23C6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 23CA _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 23CD _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 23D0 _ 83. 6D, E4, 01
?_110:  mov     eax, dword [ebp-1CH]                    ; 23D4 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 23D7 _ 3B. 45, 10
        jg      ?_109                                   ; 23DA _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 23DC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 23DF _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 23E2 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 23E5 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 23E8 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 23EC _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 23EF _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 23F2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23F5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23F8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 23FB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 23FE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2401 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2404 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2407 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 240A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 240D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2410 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2413 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2416 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2419 _ 8B. 40, 0C
        sub     esp, 8                                  ; 241C _ 83. EC, 08
        push    esi                                     ; 241F _ 56
        push    ebx                                     ; 2420 _ 53
        push    ecx                                     ; 2421 _ 51
        push    edx                                     ; 2422 _ 52
        push    eax                                     ; 2423 _ 50
        push    dword [ebp+8H]                          ; 2424 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2427 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 242C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 242F _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2432 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2435 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2438 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 243B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 243E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2441 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2444 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2447 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 244A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 244D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2450 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2453 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2456 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2459 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 245C _ 8B. 40, 0C
        sub     esp, 4                                  ; 245F _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2462 _ FF. 75, F4
        push    esi                                     ; 2465 _ 56
        push    ebx                                     ; 2466 _ 53
        push    ecx                                     ; 2467 _ 51
        push    edx                                     ; 2468 _ 52
        push    eax                                     ; 2469 _ 50
        push    dword [ebp+8H]                          ; 246A _ FF. 75, 08
        call    sheet_refresh_new                       ; 246D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2472 _ 83. C4, 20
        jmp     ?_122                                   ; 2475 _ E9, 00000244

?_111:  mov     eax, dword [ebp+8H]                     ; 247A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 247D _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2480 _ 39. 45, F4
        jge     ?_114                                   ; 2483 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2485 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2488 _ 89. 45, E8
        jmp     ?_113                                   ; 248B _ EB, 34

?_112:  mov     eax, dword [ebp-18H]                    ; 248D _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2490 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2493 _ 8B. 45, 08
        add     edx, 4                                  ; 2496 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2499 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 249D _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 24A0 _ 8B. 4D, E8
        add     ecx, 4                                  ; 24A3 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 24A6 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 24AA _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 24AD _ 8B. 55, E8
        add     edx, 4                                  ; 24B0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 24B3 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 24B7 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 24BA _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 24BD _ 83. 45, E8, 01
?_113:  mov     eax, dword [ebp+8H]                     ; 24C1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 24C4 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 24C7 _ 39. 45, E8
        jl      ?_112                                   ; 24CA _ 7C, C1
?_114:  mov     eax, dword [ebp+8H]                     ; 24CC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 24CF _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 24D2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24D5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 24D8 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24DB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24DE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24E1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 24E4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 24E7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 24EA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 24ED _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 24F0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 24F3 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 24F6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 24F9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24FC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24FF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2502 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2505 _ 83. EC, 08
        push    0                                       ; 2508 _ 6A, 00
        push    ebx                                     ; 250A _ 53
        push    ecx                                     ; 250B _ 51
        push    edx                                     ; 250C _ 52
        push    eax                                     ; 250D _ 50
        push    dword [ebp+8H]                          ; 250E _ FF. 75, 08
        call    sheet_refreshmap                        ; 2511 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2516 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2519 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 251C _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 251F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2522 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2525 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2528 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 252B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 252E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2531 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2534 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2537 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 253A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 253D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2540 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2543 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2546 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2549 _ 83. EC, 04
        push    esi                                     ; 254C _ 56
        push    0                                       ; 254D _ 6A, 00
        push    ebx                                     ; 254F _ 53
        push    ecx                                     ; 2550 _ 51
        push    edx                                     ; 2551 _ 52
        push    eax                                     ; 2552 _ 50
        push    dword [ebp+8H]                          ; 2553 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2556 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 255B _ 83. C4, 20
        jmp     ?_122                                   ; 255E _ E9, 0000015B

?_115:  mov     eax, dword [ebp-0CH]                    ; 2563 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2566 _ 3B. 45, 10
        jge     ?_122                                   ; 2569 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 256F _ 83. 7D, F4, 00
        js      ?_118                                   ; 2573 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2575 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2578 _ 89. 45, EC
        jmp     ?_117                                   ; 257B _ EB, 34

?_116:  mov     eax, dword [ebp-14H]                    ; 257D _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2580 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2583 _ 8B. 45, 08
        add     edx, 4                                  ; 2586 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2589 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 258D _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2590 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2593 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2596 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 259A _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 259D _ 8B. 55, EC
        add     edx, 4                                  ; 25A0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 25A3 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 25A7 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 25AA _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 25AD _ 83. 45, EC, 01
?_117:  mov     eax, dword [ebp-14H]                    ; 25B1 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 25B4 _ 3B. 45, 10
        jl      ?_116                                   ; 25B7 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 25B9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 25BC _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 25BF _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 25C2 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 25C5 _ 89. 54 88, 04
        jmp     ?_121                                   ; 25C9 _ EB, 72

?_118:  cmp     dword [ebp-0CH], 0                      ; 25CB _ 83. 7D, F4, 00
        jns     ?_121                                   ; 25CF _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 25D1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25D4 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 25D7 _ 89. 45, F0
        jmp     ?_120                                   ; 25DA _ EB, 3A

?_119:  mov     eax, dword [ebp-10H]                    ; 25DC _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 25DF _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 25E2 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 25E5 _ 8B. 55, F0
        add     edx, 4                                  ; 25E8 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 25EB _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 25EF _ 8B. 45, 08
        add     ecx, 4                                  ; 25F2 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 25F5 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 25F9 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 25FC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25FF _ 8B. 45, 08
        add     edx, 4                                  ; 2602 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2605 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2609 _ 8B. 55, F0
        add     edx, 1                                  ; 260C _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 260F _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2612 _ 83. 6D, F0, 01
?_120:  mov     eax, dword [ebp-10H]                    ; 2616 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2619 _ 3B. 45, 10
        jge     ?_119                                   ; 261C _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 261E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2621 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2624 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2627 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 262A _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 262E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2631 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2634 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2637 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 263A _ 89. 50, 10
?_121:  mov     eax, dword [ebp+0CH]                    ; 263D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2640 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2643 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2646 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2649 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 264C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 264F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2652 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2655 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2658 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 265B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 265E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2661 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2664 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2667 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 266A _ FF. 75, 10
        push    ebx                                     ; 266D _ 53
        push    ecx                                     ; 266E _ 51
        push    edx                                     ; 266F _ 52
        push    eax                                     ; 2670 _ 50
        push    dword [ebp+8H]                          ; 2671 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2674 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2679 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 267C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 267F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2682 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2685 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2688 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 268B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 268E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2691 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2694 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2697 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 269A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 269D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26A0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26A3 _ 8B. 40, 0C
        sub     esp, 4                                  ; 26A6 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 26A9 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 26AC _ FF. 75, 10
        push    ebx                                     ; 26AF _ 53
        push    ecx                                     ; 26B0 _ 51
        push    edx                                     ; 26B1 _ 52
        push    eax                                     ; 26B2 _ 50
        push    dword [ebp+8H]                          ; 26B3 _ FF. 75, 08
        call    sheet_refresh_new                       ; 26B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26BB _ 83. C4, 20
?_122:  nop                                             ; 26BE _ 90
        lea     esp, [ebp-8H]                           ; 26BF _ 8D. 65, F8
        pop     ebx                                     ; 26C2 _ 5B
        pop     esi                                     ; 26C3 _ 5E
        pop     ebp                                     ; 26C4 _ 5D
        ret                                             ; 26C5 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 26C6 _ 55
        mov     ebp, esp                                ; 26C7 _ 89. E5
        push    edi                                     ; 26C9 _ 57
        push    esi                                     ; 26CA _ 56
        push    ebx                                     ; 26CB _ 53
        sub     esp, 28                                 ; 26CC _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 26CF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 26D2 _ 8B. 40, 18
        test    eax, eax                                ; 26D5 _ 85. C0
        js      ?_123                                   ; 26D7 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 26D9 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 26DC _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 26DF _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 26E2 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 26E5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26E8 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 26EB _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 26EE _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 26F1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26F4 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 26F7 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 26FA _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 26FD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2700 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2703 _ 8B. 45, 14
        add     edx, eax                                ; 2706 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2708 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 270B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 270E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2711 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2714 _ 03. 45, E4
        sub     esp, 4                                  ; 2717 _ 83. EC, 04
        push    ebx                                     ; 271A _ 53
        push    ecx                                     ; 271B _ 51
        push    edi                                     ; 271C _ 57
        push    esi                                     ; 271D _ 56
        push    edx                                     ; 271E _ 52
        push    eax                                     ; 271F _ 50
        push    dword [ebp+8H]                          ; 2720 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2723 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2728 _ 83. C4, 20
?_123:  mov     eax, 0                                  ; 272B _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2730 _ 8D. 65, F4
        pop     ebx                                     ; 2733 _ 5B
        pop     esi                                     ; 2734 _ 5E
        pop     edi                                     ; 2735 _ 5F
        pop     ebp                                     ; 2736 _ 5D
        ret                                             ; 2737 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2738 _ 55
        mov     ebp, esp                                ; 2739 _ 89. E5
        push    esi                                     ; 273B _ 56
        push    ebx                                     ; 273C _ 53
        sub     esp, 16                                 ; 273D _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2740 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2743 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2746 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2749 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 274C _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 274F _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2752 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2755 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2758 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 275B _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 275E _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2761 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2764 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2767 _ 8B. 40, 18
        test    eax, eax                                ; 276A _ 85. C0
        js      ?_124                                   ; 276C _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2772 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2775 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2778 _ 8B. 45, F4
        add     edx, eax                                ; 277B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 277D _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2780 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2783 _ 8B. 45, F0
        add     eax, ecx                                ; 2786 _ 01. C8
        sub     esp, 8                                  ; 2788 _ 83. EC, 08
        push    0                                       ; 278B _ 6A, 00
        push    edx                                     ; 278D _ 52
        push    eax                                     ; 278E _ 50
        push    dword [ebp-0CH]                         ; 278F _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2792 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2795 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2798 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 279D _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 27A0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27A3 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 27A6 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 27A9 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 27AC _ 8B. 55, 14
        add     ecx, edx                                ; 27AF _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 27B1 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 27B4 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 27B7 _ 8B. 55, 10
        add     edx, ebx                                ; 27BA _ 01. DA
        sub     esp, 8                                  ; 27BC _ 83. EC, 08
        push    eax                                     ; 27BF _ 50
        push    ecx                                     ; 27C0 _ 51
        push    edx                                     ; 27C1 _ 52
        push    dword [ebp+14H]                         ; 27C2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 27C5 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 27C8 _ FF. 75, 08
        call    sheet_refreshmap                        ; 27CB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27D0 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 27D3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27D6 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 27D9 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 27DC _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 27DF _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 27E2 _ 8B. 45, F4
        add     edx, eax                                ; 27E5 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 27E7 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 27EA _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 27ED _ 8B. 45, F0
        add     eax, ebx                                ; 27F0 _ 01. D8
        sub     esp, 4                                  ; 27F2 _ 83. EC, 04
        push    ecx                                     ; 27F5 _ 51
        push    0                                       ; 27F6 _ 6A, 00
        push    edx                                     ; 27F8 _ 52
        push    eax                                     ; 27F9 _ 50
        push    dword [ebp-0CH]                         ; 27FA _ FF. 75, F4
        push    dword [ebp-10H]                         ; 27FD _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2800 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2803 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2808 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 280B _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 280E _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2811 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2814 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2817 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 281A _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 281D _ 8B. 4D, 14
        add     ebx, ecx                                ; 2820 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2822 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2825 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2828 _ 8B. 4D, 10
        add     ecx, esi                                ; 282B _ 01. F1
        sub     esp, 4                                  ; 282D _ 83. EC, 04
        push    edx                                     ; 2830 _ 52
        push    eax                                     ; 2831 _ 50
        push    ebx                                     ; 2832 _ 53
        push    ecx                                     ; 2833 _ 51
        push    dword [ebp+14H]                         ; 2834 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2837 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 283A _ FF. 75, 08
        call    sheet_refresh_new                       ; 283D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2842 _ 83. C4, 20
?_124:  nop                                             ; 2845 _ 90
        lea     esp, [ebp-8H]                           ; 2846 _ 8D. 65, F8
        pop     ebx                                     ; 2849 _ 5B
        pop     esi                                     ; 284A _ 5E
        pop     ebp                                     ; 284B _ 5D
        ret                                             ; 284C _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 284D _ 55
        mov     ebp, esp                                ; 284E _ 89. E5
        sub     esp, 48                                 ; 2850 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2853 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2856 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2858 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 285B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 285E _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2861 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2864 _ 83. 7D, 0C, 00
        jns     ?_125                                   ; 2868 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 286A _ C7. 45, 0C, 00000000
?_125:  cmp     dword [ebp+10H], 8                      ; 2871 _ 83. 7D, 10, 08
        jg      ?_126                                   ; 2875 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2877 _ C7. 45, 10, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 287E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2881 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2884 _ 39. 45, 14
        jle     ?_127                                   ; 2887 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2889 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 288C _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 288F _ 89. 45, 14
?_127:  mov     eax, dword [ebp+8H]                     ; 2892 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2895 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2898 _ 39. 45, 18
        jle     ?_128                                   ; 289B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 289D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 28A0 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 28A3 _ 89. 45, 18
?_128:  mov     eax, dword [ebp+1CH]                    ; 28A6 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 28A9 _ 89. 45, DC
        jmp     ?_135                                   ; 28AC _ E9, 00000118

?_129:  mov     eax, dword [ebp+8H]                     ; 28B1 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 28B4 _ 8B. 55, DC
        add     edx, 4                                  ; 28B7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 28BA _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 28BE _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 28C1 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 28C4 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 28C6 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 28C9 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 28CC _ 8B. 55, 08
        add     edx, 1044                               ; 28CF _ 81. C2, 00000414
        sub     eax, edx                                ; 28D5 _ 29. D0
        sar     eax, 5                                  ; 28D7 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 28DA _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 28DD _ C7. 45, E0, 00000000
        jmp     ?_134                                   ; 28E4 _ E9, 000000CD

?_130:  mov     eax, dword [ebp-10H]                    ; 28E9 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 28EC _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 28EF _ 8B. 45, E0
        add     eax, edx                                ; 28F2 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 28F4 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 28F7 _ C7. 45, E4, 00000000
        jmp     ?_133                                   ; 28FE _ E9, 000000A0

?_131:  mov     eax, dword [ebp-10H]                    ; 2903 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2906 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2909 _ 8B. 45, E4
        add     eax, edx                                ; 290C _ 01. D0
        mov     dword [ebp-4H], eax                     ; 290E _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2911 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2914 _ 3B. 45, FC
        jg      ?_132                                   ; 2917 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 291D _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2920 _ 3B. 45, 14
        jge     ?_132                                   ; 2923 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2925 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2928 _ 3B. 45, F8
        jg      ?_132                                   ; 292B _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 292D _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2930 _ 3B. 45, 18
        jge     ?_132                                   ; 2933 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2935 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2938 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 293B _ 0F AF. 45, E0
        mov     edx, eax                                ; 293F _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2941 _ 8B. 45, E4
        add     eax, edx                                ; 2944 _ 01. D0
        mov     edx, eax                                ; 2946 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2948 _ 8B. 45, F4
        add     eax, edx                                ; 294B _ 01. D0
        movzx   eax, byte [eax]                         ; 294D _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2950 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2953 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2956 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2959 _ 0F AF. 45, F8
        mov     edx, eax                                ; 295D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 295F _ 8B. 45, FC
        add     eax, edx                                ; 2962 _ 01. D0
        mov     edx, eax                                ; 2964 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2966 _ 8B. 45, EC
        add     eax, edx                                ; 2969 _ 01. D0
        movzx   eax, byte [eax]                         ; 296B _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 296E _ 38. 45, DA
        jnz     ?_132                                   ; 2971 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2973 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2977 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 297A _ 8B. 40, 14
        cmp     edx, eax                                ; 297D _ 39. C2
        jz      ?_132                                   ; 297F _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2981 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2984 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2987 _ 0F AF. 45, F8
        mov     edx, eax                                ; 298B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 298D _ 8B. 45, FC
        add     eax, edx                                ; 2990 _ 01. D0
        mov     edx, eax                                ; 2992 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2994 _ 8B. 45, E8
        add     edx, eax                                ; 2997 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2999 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 299D _ 88. 02
?_132:  add     dword [ebp-1CH], 1                      ; 299F _ 83. 45, E4, 01
?_133:  mov     eax, dword [ebp-10H]                    ; 29A3 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 29A6 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 29A9 _ 39. 45, E4
        jl      ?_131                                   ; 29AC _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 29B2 _ 83. 45, E0, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 29B6 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 29B9 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 29BC _ 39. 45, E0
        jl      ?_130                                   ; 29BF _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 29C5 _ 83. 45, DC, 01
?_135:  mov     eax, dword [ebp-24H]                    ; 29C9 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 29CC _ 3B. 45, 20
        jle     ?_129                                   ; 29CF _ 0F 8E, FFFFFEDC
        nop                                             ; 29D5 _ 90
        leave                                           ; 29D6 _ C9
        ret                                             ; 29D7 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 29D8 _ 55
        mov     ebp, esp                                ; 29D9 _ 89. E5
        sub     esp, 64                                 ; 29DB _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 29DE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 29E1 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 29E4 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 29E7 _ 83. 7D, 0C, 00
        jns     ?_136                                   ; 29EB _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 29ED _ C7. 45, 0C, 00000000
?_136:  mov     eax, dword [ebp+8H]                     ; 29F4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29F7 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 29FA _ 39. 45, 0C
        jle     ?_137                                   ; 29FD _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 29FF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A02 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2A05 _ 89. 45, 0C
?_137:  cmp     dword [ebp+10H], 0                      ; 2A08 _ 83. 7D, 10, 00
        jns     ?_138                                   ; 2A0C _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2A0E _ C7. 45, 10, 00000000
?_138:  mov     eax, dword [ebp+8H]                     ; 2A15 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A18 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2A1B _ 39. 45, 10
        jle     ?_139                                   ; 2A1E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A20 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A23 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2A26 _ 89. 45, 10
?_139:  mov     eax, dword [ebp+1CH]                    ; 2A29 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2A2C _ 89. 45, E0
        jmp     ?_150                                   ; 2A2F _ E9, 00000140

?_140:  mov     eax, dword [ebp+8H]                     ; 2A34 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2A37 _ 8B. 55, E0
        add     edx, 4                                  ; 2A3A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A3D _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2A41 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2A44 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2A47 _ 8B. 55, 08
        add     edx, 1044                               ; 2A4A _ 81. C2, 00000414
        sub     eax, edx                                ; 2A50 _ 29. D0
        sar     eax, 5                                  ; 2A52 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2A55 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2A58 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2A5B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2A5D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2A60 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2A63 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2A66 _ 8B. 55, 0C
        sub     edx, eax                                ; 2A69 _ 29. C2
        mov     eax, edx                                ; 2A6B _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2A6D _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2A70 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2A73 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2A76 _ 8B. 55, 10
        sub     edx, eax                                ; 2A79 _ 29. C2
        mov     eax, edx                                ; 2A7B _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2A7D _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2A80 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2A83 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2A86 _ 8B. 55, 14
        sub     edx, eax                                ; 2A89 _ 29. C2
        mov     eax, edx                                ; 2A8B _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2A8D _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2A90 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2A93 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2A96 _ 8B. 55, 18
        sub     edx, eax                                ; 2A99 _ 29. C2
        mov     eax, edx                                ; 2A9B _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2A9D _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2AA0 _ 83. 7D, D0, 00
        jns     ?_141                                   ; 2AA4 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2AA6 _ C7. 45, D0, 00000000
?_141:  cmp     dword [ebp-2CH], 0                      ; 2AAD _ 83. 7D, D4, 00
        jns     ?_142                                   ; 2AB1 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2AB3 _ C7. 45, D4, 00000000
?_142:  mov     eax, dword [ebp-10H]                    ; 2ABA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2ABD _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2AC0 _ 39. 45, D8
        jle     ?_143                                   ; 2AC3 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2AC5 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2AC8 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2ACB _ 89. 45, D8
?_143:  mov     eax, dword [ebp-10H]                    ; 2ACE _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2AD1 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2AD4 _ 39. 45, DC
        jle     ?_144                                   ; 2AD7 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2AD9 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2ADC _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2ADF _ 89. 45, DC
?_144:  mov     eax, dword [ebp-2CH]                    ; 2AE2 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2AE5 _ 89. 45, E4
        jmp     ?_149                                   ; 2AE8 _ EB, 7A

?_145:  mov     eax, dword [ebp-10H]                    ; 2AEA _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2AED _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2AF0 _ 8B. 45, E4
        add     eax, edx                                ; 2AF3 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2AF5 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2AF8 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2AFB _ 89. 45, E8
        jmp     ?_148                                   ; 2AFE _ EB, 58

?_146:  mov     eax, dword [ebp-10H]                    ; 2B00 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2B03 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2B06 _ 8B. 45, E8
        add     eax, edx                                ; 2B09 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2B0B _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2B0E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B11 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2B14 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2B18 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2B1A _ 8B. 45, E8
        add     eax, edx                                ; 2B1D _ 01. D0
        mov     edx, eax                                ; 2B1F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2B21 _ 8B. 45, F4
        add     eax, edx                                ; 2B24 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B26 _ 0F B6. 00
        movzx   edx, al                                 ; 2B29 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2B2C _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2B2F _ 8B. 40, 14
        cmp     edx, eax                                ; 2B32 _ 39. C2
        jz      ?_147                                   ; 2B34 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2B36 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B39 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2B3C _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B40 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B42 _ 8B. 45, FC
        add     eax, edx                                ; 2B45 _ 01. D0
        mov     edx, eax                                ; 2B47 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2B49 _ 8B. 45, EC
        add     edx, eax                                ; 2B4C _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2B4E _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2B52 _ 88. 02
?_147:  add     dword [ebp-18H], 1                      ; 2B54 _ 83. 45, E8, 01
?_148:  mov     eax, dword [ebp-18H]                    ; 2B58 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2B5B _ 3B. 45, D8
        jl      ?_146                                   ; 2B5E _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2B60 _ 83. 45, E4, 01
?_149:  mov     eax, dword [ebp-1CH]                    ; 2B64 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2B67 _ 3B. 45, DC
        jl      ?_145                                   ; 2B6A _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2B70 _ 83. 45, E0, 01
?_150:  mov     eax, dword [ebp+8H]                     ; 2B74 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B77 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2B7A _ 39. 45, E0
        jle     ?_140                                   ; 2B7D _ 0F 8E, FFFFFEB1
        nop                                             ; 2B83 _ 90
        leave                                           ; 2B84 _ C9
        ret                                             ; 2B85 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2B86 _ 55
        mov     ebp, esp                                ; 2B87 _ 89. E5
        sub     esp, 24                                 ; 2B89 _ 83. EC, 18
        sub     esp, 8                                  ; 2B8C _ 83. EC, 08
        push    52                                      ; 2B8F _ 6A, 34
        push    67                                      ; 2B91 _ 6A, 43
        call    io_out8                                 ; 2B93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B98 _ 83. C4, 10
        sub     esp, 8                                  ; 2B9B _ 83. EC, 08
        push    156                                     ; 2B9E _ 68, 0000009C
        push    64                                      ; 2BA3 _ 6A, 40
        call    io_out8                                 ; 2BA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2BAA _ 83. C4, 10
        sub     esp, 8                                  ; 2BAD _ 83. EC, 08
        push    46                                      ; 2BB0 _ 6A, 2E
        push    64                                      ; 2BB2 _ 6A, 40
        call    io_out8                                 ; 2BB4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2BB9 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2BBC _ C7. 05, 00000260(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2BC6 _ C7. 45, F4, 00000000
        jmp     ?_152                                   ; 2BCD _ EB, 15

?_151:  mov     eax, dword [ebp-0CH]                    ; 2BCF _ 8B. 45, F4
        shl     eax, 4                                  ; 2BD2 _ C1. E0, 04
        add     eax, ?_196                              ; 2BD5 _ 05, 00000268(d)
        mov     dword [eax], 0                          ; 2BDA _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2BE0 _ 83. 45, F4, 01
?_152:  cmp     dword [ebp-0CH], 499                    ; 2BE4 _ 81. 7D, F4, 000001F3
        jle     ?_151                                   ; 2BEB _ 7E, E2
        nop                                             ; 2BED _ 90
        leave                                           ; 2BEE _ C9
        ret                                             ; 2BEF _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2BF0 _ 55
        mov     ebp, esp                                ; 2BF1 _ 89. E5
        sub     esp, 16                                 ; 2BF3 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2BF6 _ C7. 45, FC, 00000000
        jmp     ?_155                                   ; 2BFD _ EB, 36

?_153:  mov     eax, dword [ebp-4H]                     ; 2BFF _ 8B. 45, FC
        shl     eax, 4                                  ; 2C02 _ C1. E0, 04
        add     eax, ?_196                              ; 2C05 _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2C0A _ 8B. 00
        test    eax, eax                                ; 2C0C _ 85. C0
        jnz     ?_154                                   ; 2C0E _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2C10 _ 8B. 45, FC
        shl     eax, 4                                  ; 2C13 _ C1. E0, 04
        add     eax, ?_196                              ; 2C16 _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2C1B _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2C21 _ 8B. 45, FC
        shl     eax, 4                                  ; 2C24 _ C1. E0, 04
        add     eax, timerctl                           ; 2C27 _ 05, 00000260(d)
        add     eax, 4                                  ; 2C2C _ 83. C0, 04
        jmp     ?_156                                   ; 2C2F _ EB, 12

?_154:  add     dword [ebp-4H], 1                       ; 2C31 _ 83. 45, FC, 01
?_155:  cmp     dword [ebp-4H], 499                     ; 2C35 _ 81. 7D, FC, 000001F3
        jle     ?_153                                   ; 2C3C _ 7E, C1
        mov     eax, 0                                  ; 2C3E _ B8, 00000000
?_156:  leave                                           ; 2C43 _ C9
        ret                                             ; 2C44 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2C45 _ 55
        mov     ebp, esp                                ; 2C46 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C48 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2C4B _ C7. 40, 04, 00000000
        nop                                             ; 2C52 _ 90
        pop     ebp                                     ; 2C53 _ 5D
        ret                                             ; 2C54 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2C55 _ 55
        mov     ebp, esp                                ; 2C56 _ 89. E5
        sub     esp, 4                                  ; 2C58 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2C5B _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2C5E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2C61 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C64 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2C67 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2C6A _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2C6D _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2C71 _ 88. 50, 0C
        nop                                             ; 2C74 _ 90
        leave                                           ; 2C75 _ C9
        ret                                             ; 2C76 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2C77 _ 55
        mov     ebp, esp                                ; 2C78 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C7A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C7D _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2C80 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2C82 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2C85 _ C7. 40, 04, 00000002
        nop                                             ; 2C8C _ 90
        pop     ebp                                     ; 2C8D _ 5D
        ret                                             ; 2C8E _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 2C8F _ 55
        mov     ebp, esp                                ; 2C90 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C92 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C95 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2C98 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2C9A _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2C9D _ C7. 40, 04, 00000002
        nop                                             ; 2CA4 _ 90
        pop     ebp                                     ; 2CA5 _ 5D
        ret                                             ; 2CA6 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2CA7 _ 55
        mov     ebp, esp                                ; 2CA8 _ 89. E5
        mov     eax, timerctl                           ; 2CAA _ B8, 00000260(d)
        pop     ebp                                     ; 2CAF _ 5D
        ret                                             ; 2CB0 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2CB1 _ 55
        mov     ebp, esp                                ; 2CB2 _ 89. E5
        push    ebx                                     ; 2CB4 _ 53
        sub     esp, 20                                 ; 2CB5 _ 83. EC, 14
        sub     esp, 8                                  ; 2CB8 _ 83. EC, 08
        push    32                                      ; 2CBB _ 6A, 20
        push    32                                      ; 2CBD _ 6A, 20
        call    io_out8                                 ; 2CBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2CC4 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2CC7 _ A1, 00000260(d)
        add     eax, 1                                  ; 2CCC _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2CCF _ A3, 00000260(d)
        mov     dword [ebp-10H], 0                      ; 2CD4 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 2CDB _ C7. 45, F4, 00000000
        jmp     ?_160                                   ; 2CE2 _ E9, 000000AD

?_157:  mov     eax, dword [ebp-0CH]                    ; 2CE7 _ 8B. 45, F4
        shl     eax, 4                                  ; 2CEA _ C1. E0, 04
        add     eax, ?_196                              ; 2CED _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2CF2 _ 8B. 00
        cmp     eax, 2                                  ; 2CF4 _ 83. F8, 02
        jne     ?_158                                   ; 2CF7 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 2CFD _ 8B. 45, F4
        shl     eax, 4                                  ; 2D00 _ C1. E0, 04
        add     eax, ?_195                              ; 2D03 _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2D08 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2D0A _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2D0D _ 8B. 45, F4
        shl     eax, 4                                  ; 2D10 _ C1. E0, 04
        add     eax, ?_195                              ; 2D13 _ 05, 00000264(d)
        mov     dword [eax], edx                        ; 2D18 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2D1A _ 8B. 45, F4
        shl     eax, 4                                  ; 2D1D _ C1. E0, 04
        add     eax, ?_195                              ; 2D20 _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2D25 _ 8B. 00
        test    eax, eax                                ; 2D27 _ 85. C0
        jnz     ?_158                                   ; 2D29 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 2D2B _ 8B. 45, F4
        shl     eax, 4                                  ; 2D2E _ C1. E0, 04
        add     eax, ?_196                              ; 2D31 _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2D36 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2D3C _ 8B. 45, F4
        shl     eax, 4                                  ; 2D3F _ C1. E0, 04
        add     eax, ?_198                              ; 2D42 _ 05, 00000270(d)
        movzx   eax, byte [eax]                         ; 2D47 _ 0F B6. 00
        movzx   edx, al                                 ; 2D4A _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2D4D _ 8B. 45, F4
        shl     eax, 4                                  ; 2D50 _ C1. E0, 04
        add     eax, ?_197                              ; 2D53 _ 05, 0000026C(d)
        mov     eax, dword [eax]                        ; 2D58 _ 8B. 00
        sub     esp, 8                                  ; 2D5A _ 83. EC, 08
        push    edx                                     ; 2D5D _ 52
        push    eax                                     ; 2D5E _ 50
        call    fifo8_put                               ; 2D5F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D64 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2D67 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D6A _ C1. E0, 04
        add     eax, timerctl                           ; 2D6D _ 05, 00000260(d)
        lea     ebx, [eax+4H]                           ; 2D72 _ 8D. 58, 04
        call    getTaskTimer                            ; 2D75 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 2D7A _ 39. C3
        jnz     ?_158                                   ; 2D7C _ 75, 07
        mov     dword [ebp-10H], 1                      ; 2D7E _ C7. 45, F0, 00000001
?_158:  cmp     dword [ebp-10H], 1                      ; 2D85 _ 83. 7D, F0, 01
        jnz     ?_159                                   ; 2D89 _ 75, 05
        call    task_switch                             ; 2D8B _ E8, FFFFFFFC(rel)
?_159:  add     dword [ebp-0CH], 1                      ; 2D90 _ 83. 45, F4, 01
?_160:  cmp     dword [ebp-0CH], 499                    ; 2D94 _ 81. 7D, F4, 000001F3
        jle     ?_157                                   ; 2D9B _ 0F 8E, FFFFFF46
        nop                                             ; 2DA1 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2DA2 _ 8B. 5D, FC
        leave                                           ; 2DA5 _ C9
        ret                                             ; 2DA6 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2DA7 _ 55
        mov     ebp, esp                                ; 2DA8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2DAA _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2DAD _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2DB0 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2DB3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2DB6 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2DB9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2DBB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2DBE _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2DC1 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2DC4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2DC7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2DCE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2DD1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2DD8 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2DDB _ C7. 40, 14, 00000000
        nop                                             ; 2DE2 _ 90
        pop     ebp                                     ; 2DE3 _ 5D
        ret                                             ; 2DE4 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2DE5 _ 55
        mov     ebp, esp                                ; 2DE6 _ 89. E5
        sub     esp, 4                                  ; 2DE8 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2DEB _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2DEE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2DF1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DF4 _ 8B. 40, 10
        test    eax, eax                                ; 2DF7 _ 85. C0
        jnz     ?_161                                   ; 2DF9 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2DFB _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2DFE _ 8B. 40, 14
        or      eax, 01H                                ; 2E01 _ 83. C8, 01
        mov     edx, eax                                ; 2E04 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2E06 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2E09 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2E0C _ B8, FFFFFFFF
        jmp     ?_163                                   ; 2E11 _ EB, 50

?_161:  mov     eax, dword [ebp+8H]                     ; 2E13 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2E16 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2E18 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E1B _ 8B. 40, 08
        add     edx, eax                                ; 2E1E _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2E20 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2E24 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2E26 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E29 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2E2C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E2F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2E32 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2E35 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2E38 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2E3B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E3E _ 8B. 40, 0C
        cmp     edx, eax                                ; 2E41 _ 39. C2
        jl      ?_162                                   ; 2E43 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2E45 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2E48 _ C7. 40, 08, 00000000
?_162:  mov     eax, dword [ebp+8H]                     ; 2E4F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E52 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2E55 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E58 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E5B _ 89. 50, 10
        mov     eax, 1                                  ; 2E5E _ B8, 00000001
?_163:  leave                                           ; 2E63 _ C9
        ret                                             ; 2E64 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 2E65 _ 55
        mov     ebp, esp                                ; 2E66 _ 89. E5
        sub     esp, 16                                 ; 2E68 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2E6B _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2E6E _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2E71 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E74 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2E77 _ 39. C2
        jnz     ?_164                                   ; 2E79 _ 75, 07
        mov     eax, 4294967295                         ; 2E7B _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2E80 _ EB, 51

?_164:  mov     eax, dword [ebp+8H]                     ; 2E82 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2E85 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2E87 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2E8A _ 8B. 40, 04
        add     eax, edx                                ; 2E8D _ 01. D0
        movzx   eax, byte [eax]                         ; 2E8F _ 0F B6. 00
        movzx   eax, al                                 ; 2E92 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2E95 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E98 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2E9B _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2E9E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EA1 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2EA4 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2EA7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2EAA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2EAD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2EB0 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2EB3 _ 39. C2
        jl      ?_165                                   ; 2EB5 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2EB7 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2EBA _ C7. 40, 04, 00000000
?_165:  mov     eax, dword [ebp+8H]                     ; 2EC1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2EC4 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2EC7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2ECA _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2ECD _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2ED0 _ 8B. 45, FC
?_166:  leave                                           ; 2ED3 _ C9
        ret                                             ; 2ED4 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 2ED5 _ 55
        mov     ebp, esp                                ; 2ED6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2ED8 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2EDB _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2EDE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2EE1 _ 8B. 40, 10
        sub     edx, eax                                ; 2EE4 _ 29. C2
        mov     eax, edx                                ; 2EE6 _ 89. D0
        pop     ebp                                     ; 2EE8 _ 5D
        ret                                             ; 2EE9 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 2EEA _ 55
        mov     ebp, esp                                ; 2EEB _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 2EED _ 81. 7D, 0C, 000FFFFF
        jbe     ?_167                                   ; 2EF4 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 2EF6 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 2EFD _ 8B. 45, 0C
        shr     eax, 12                                 ; 2F00 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 2F03 _ 89. 45, 0C
?_167:  mov     eax, dword [ebp+0CH]                    ; 2F06 _ 8B. 45, 0C
        mov     edx, eax                                ; 2F09 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F0B _ 8B. 45, 08
        mov     word [eax], dx                          ; 2F0E _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 2F11 _ 8B. 45, 10
        mov     edx, eax                                ; 2F14 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F16 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 2F19 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 2F1D _ 8B. 45, 10
        sar     eax, 16                                 ; 2F20 _ C1. F8, 10
        mov     edx, eax                                ; 2F23 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F25 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 2F28 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 2F2B _ 8B. 45, 14
        mov     edx, eax                                ; 2F2E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F30 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 2F33 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2F36 _ 8B. 45, 0C
        shr     eax, 16                                 ; 2F39 _ C1. E8, 10
        and     eax, 0FH                                ; 2F3C _ 83. E0, 0F
        mov     edx, eax                                ; 2F3F _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 2F41 _ 8B. 45, 14
        sar     eax, 8                                  ; 2F44 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 2F47 _ 83. E0, F0
        or      eax, edx                                ; 2F4A _ 09. D0
        mov     edx, eax                                ; 2F4C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F4E _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 2F51 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 2F54 _ 8B. 45, 10
        shr     eax, 24                                 ; 2F57 _ C1. E8, 18
        mov     edx, eax                                ; 2F5A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F5C _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 2F5F _ 88. 50, 07
        nop                                             ; 2F62 _ 90
        pop     ebp                                     ; 2F63 _ 5D
        ret                                             ; 2F64 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 2F65 _ 55
        mov     ebp, esp                                ; 2F66 _ 89. E5
        mov     eax, dword [task_timer]                 ; 2F68 _ A1, 000021A4(d)
        pop     ebp                                     ; 2F6D _ 5D
        ret                                             ; 2F6E _ C3
; getTaskTimer End of function

task_init:; Function begin
        push    ebp                                     ; 2F6F _ 55
        mov     ebp, esp                                ; 2F70 _ 89. E5
        sub     esp, 24                                 ; 2F72 _ 83. EC, 18
        call    get_addr_gdt                            ; 2F75 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 2F7A _ 89. 45, F0
        sub     esp, 8                                  ; 2F7D _ 83. EC, 08
        push    240                                     ; 2F80 _ 68, 000000F0
        push    dword [ebp+8H]                          ; 2F85 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2F88 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F8D _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 2F90 _ A3, 000021A8(d)
        mov     dword [ebp-14H], 0                      ; 2F95 _ C7. 45, EC, 00000000
        jmp     ?_169                                   ; 2F9C _ EB, 73

?_168:  mov     edx, dword [taskctl]                    ; 2F9E _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-14H]                    ; 2FA4 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 2FA7 _ 6B. C0, 70
        add     eax, edx                                ; 2FAA _ 01. D0
        add     eax, 20                                 ; 2FAC _ 83. C0, 14
        mov     dword [eax], 0                          ; 2FAF _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 2FB5 _ 8B. 45, EC
        add     eax, 7                                  ; 2FB8 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 2FBB _ 8B. 0D, 000021A8(d)
        lea     edx, [eax*8]                            ; 2FC1 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 2FC8 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 2FCB _ 6B. C0, 70
        add     eax, ecx                                ; 2FCE _ 01. C8
        add     eax, 16                                 ; 2FD0 _ 83. C0, 10
        mov     dword [eax], edx                        ; 2FD3 _ 89. 10
        mov     eax, dword [taskctl]                    ; 2FD5 _ A1, 000021A8(d)
        mov     edx, dword [ebp-14H]                    ; 2FDA _ 8B. 55, EC
        imul    edx, edx, 112                           ; 2FDD _ 6B. D2, 70
        add     edx, 16                                 ; 2FE0 _ 83. C2, 10
        add     eax, edx                                ; 2FE3 _ 01. D0
        add     eax, 8                                  ; 2FE5 _ 83. C0, 08
        mov     ecx, eax                                ; 2FE8 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 2FEA _ 8B. 45, EC
        add     eax, 7                                  ; 2FED _ 83. C0, 07
        lea     edx, [eax*8]                            ; 2FF0 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 2FF7 _ 8B. 45, F0
        add     eax, edx                                ; 2FFA _ 01. D0
        push    137                                     ; 2FFC _ 68, 00000089
        push    ecx                                     ; 3001 _ 51
        push    103                                     ; 3002 _ 6A, 67
        push    eax                                     ; 3004 _ 50
        call    set_segmdesc                            ; 3005 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 300A _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 300D _ 83. 45, EC, 01
?_169:  cmp     dword [ebp-14H], 1                      ; 3011 _ 83. 7D, EC, 01
        jle     ?_168                                   ; 3015 _ 7E, 87
        call    task_alloc                              ; 3017 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 301C _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 301F _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3022 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 3029 _ A1, 000021A8(d)
        mov     dword [eax], 1                          ; 302E _ C7. 00, 00000001
        mov     eax, dword [taskctl]                    ; 3034 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 3039 _ C7. 40, 04, 00000000
        mov     eax, dword [taskctl]                    ; 3040 _ A1, 000021A8(d)
        mov     edx, dword [ebp-0CH]                    ; 3045 _ 8B. 55, F4
        mov     dword [eax+8H], edx                     ; 3048 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 304B _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 304E _ 8B. 00
        sub     esp, 12                                 ; 3050 _ 83. EC, 0C
        push    eax                                     ; 3053 _ 50
        call    load_tr                                 ; 3054 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3059 _ 83. C4, 10
        call    timer_alloc                             ; 305C _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3061 _ A3, 000021A4(d)
        mov     eax, dword [task_timer]                 ; 3066 _ A1, 000021A4(d)
        sub     esp, 8                                  ; 306B _ 83. EC, 08
        push    100                                     ; 306E _ 6A, 64
        push    eax                                     ; 3070 _ 50
        call    timer_setTime                           ; 3071 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3076 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3079 _ 8B. 45, F4
        leave                                           ; 307C _ C9
        ret                                             ; 307D _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 307E _ 55
        mov     ebp, esp                                ; 307F _ 89. E5
        sub     esp, 16                                 ; 3081 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3084 _ C7. 45, F8, 00000000
        jmp     ?_172                                   ; 308B _ E9, 000000DE

?_170:  mov     edx, dword [taskctl]                    ; 3090 _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-8H]                     ; 3096 _ 8B. 45, F8
        imul    eax, eax, 112                           ; 3099 _ 6B. C0, 70
        add     eax, edx                                ; 309C _ 01. D0
        add     eax, 20                                 ; 309E _ 83. C0, 14
        mov     eax, dword [eax]                        ; 30A1 _ 8B. 00
        test    eax, eax                                ; 30A3 _ 85. C0
        jne     ?_171                                   ; 30A5 _ 0F 85, 000000BF
        mov     eax, dword [taskctl]                    ; 30AB _ A1, 000021A8(d)
        mov     edx, dword [ebp-8H]                     ; 30B0 _ 8B. 55, F8
        imul    edx, edx, 112                           ; 30B3 _ 6B. D2, 70
        add     edx, 16                                 ; 30B6 _ 83. C2, 10
        add     eax, edx                                ; 30B9 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 30BB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 30BE _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 30C1 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 30C8 _ 8B. 45, FC
        mov     dword [eax+2CH], 514                    ; 30CB _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-4H]                     ; 30D2 _ 8B. 45, FC
        mov     dword [eax+30H], 0                      ; 30D5 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-4H]                     ; 30DC _ 8B. 45, FC
        mov     dword [eax+34H], 0                      ; 30DF _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-4H]                     ; 30E6 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 30E9 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 30F0 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 30F3 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 30FA _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 30FD _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-8H]                     ; 3104 _ 8B. 45, F8
        add     eax, 1                                  ; 3107 _ 83. C0, 01
        shl     eax, 9                                  ; 310A _ C1. E0, 09
        mov     edx, eax                                ; 310D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 310F _ 8B. 45, FC
        mov     dword [eax+40H], edx                    ; 3112 _ 89. 50, 40
        mov     eax, dword [ebp-4H]                     ; 3115 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3118 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 311F _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 3122 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3129 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 312C _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 3133 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3136 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 313D _ 8B. 45, FC
        mov     dword [eax+60H], 0                      ; 3140 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-4H]                     ; 3147 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 314A _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 3151 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3154 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 315B _ 8B. 45, FC
        mov     dword [eax+6CH], 1073741824             ; 315E _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-4H]                     ; 3165 _ 8B. 45, FC
        jmp     ?_173                                   ; 3168 _ EB, 13

?_171:  add     dword [ebp-8H], 1                       ; 316A _ 83. 45, F8, 01
?_172:  cmp     dword [ebp-8H], 1                       ; 316E _ 83. 7D, F8, 01
        jle     ?_170                                   ; 3172 _ 0F 8E, FFFFFF18
        mov     eax, 0                                  ; 3178 _ B8, 00000000
?_173:  leave                                           ; 317D _ C9
        ret                                             ; 317E _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 317F _ 55
        mov     ebp, esp                                ; 3180 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3182 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3185 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 318C _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3191 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx]                        ; 3197 _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 3199 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 319C _ 89. 4C 90, 08
        mov     eax, dword [taskctl]                    ; 31A0 _ A1, 000021A8(d)
        mov     edx, dword [eax]                        ; 31A5 _ 8B. 10
        add     edx, 1                                  ; 31A7 _ 83. C2, 01
        mov     dword [eax], edx                        ; 31AA _ 89. 10
        nop                                             ; 31AC _ 90
        pop     ebp                                     ; 31AD _ 5D
        ret                                             ; 31AE _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 31AF _ 55
        mov     ebp, esp                                ; 31B0 _ 89. E5
        sub     esp, 8                                  ; 31B2 _ 83. EC, 08
        mov     eax, dword [task_timer]                 ; 31B5 _ A1, 000021A4(d)
        sub     esp, 8                                  ; 31BA _ 83. EC, 08
        push    100                                     ; 31BD _ 6A, 64
        push    eax                                     ; 31BF _ 50
        call    timer_setTime                           ; 31C0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 31C5 _ 83. C4, 10
        mov     eax, dword [taskctl]                    ; 31C8 _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 31CD _ 8B. 00
        cmp     eax, 1                                  ; 31CF _ 83. F8, 01
        jle     ?_175                                   ; 31D2 _ 7E, 50
        mov     eax, dword [taskctl]                    ; 31D4 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 31D9 _ 8B. 50, 04
        add     edx, 1                                  ; 31DC _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 31DF _ 89. 50, 04
        mov     eax, dword [taskctl]                    ; 31E2 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 31E7 _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 31EA _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 31EF _ 8B. 00
        cmp     edx, eax                                ; 31F1 _ 39. C2
        jnz     ?_174                                   ; 31F3 _ 75, 0C
        mov     eax, dword [taskctl]                    ; 31F5 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 31FA _ C7. 40, 04, 00000000
?_174:  mov     eax, dword [taskctl]                    ; 3201 _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3206 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 320C _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 320F _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3213 _ 8B. 00
        sub     esp, 8                                  ; 3215 _ 83. EC, 08
        push    eax                                     ; 3218 _ 50
        push    0                                       ; 3219 _ 6A, 00
        call    farjmp                                  ; 321B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3220 _ 83. C4, 10
        nop                                             ; 3223 _ 90
?_175:  nop                                             ; 3224 _ 90
        leave                                           ; 3225 _ C9
        ret                                             ; 3226 _ C3
; task_switch End of function



?_176:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_177:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_178:                                                  ; byte
        db 41H, 00H                                     ; 001E _ A.

?_179:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0020 _ 3[sec].

?_180:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0027 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 002F _ sk B.

?_181:                                                  ; byte
        db 42H, 00H                                     ; 0034 _ B.

?_182:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0036 _ Page is:
        db 20H, 00H                                     ; 003E _  .

?_183:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0040 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0048 _ Low: .

?_184:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 004E _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0056 _ High: .

?_185:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005D _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0065 _ w: .

?_186:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0069 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0071 _ gh: .

?_187:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0076 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_188:  db 00H                                          ; 0002 _ .

?_189:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

table_rgb.2283:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2338:                                            ; byte
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

closebtn.2465:                                          ; byte
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

?_190:  resw    1                                       ; 0004

?_191:  resw    1                                       ; 0006

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

?_192:  resd    1                                       ; 00EC

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

str.2381:                                               ; byte
        resb    1                                       ; 0244

?_193:  resb    9                                       ; 0245

?_194:  resb    2                                       ; 024E

line.2414:                                              ; dword
        resd    1                                       ; 0250

pos.2413: resd  3                                       ; 0254

timerctl:                                               ; byte
        resd    1                                       ; 0260

?_195:                                                  ; byte
        resb    4                                       ; 0264

?_196:                                                  ; byte
        resb    4                                       ; 0268

?_197:                                                  ; byte
        resb    4                                       ; 026C

?_198:                                                  ; byte
        resb    7988                                    ; 0270

task_timer:                                             ; dword
        resd    1                                       ; 21A4

taskctl: resd   1                                       ; 21A8


