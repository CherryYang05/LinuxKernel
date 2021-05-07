; Disassembly of file: ckernel.o
; Wed May  5 18:17:39 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    edi                                     ; 0003 _ 57
        push    esi                                     ; 0004 _ 56
        push    ebx                                     ; 0005 _ 53
        sub     esp, 124                                ; 0006 _ 83. EC, 7C
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0009 _ 65: A1, 00000014
        mov     dword [ebp-1CH], eax                    ; 000F _ 89. 45, E4
        xor     eax, eax                                ; 0012 _ 31. C0
        sub     esp, 12                                 ; 0014 _ 83. EC, 0C
        push    bootInfo                                ; 0017 _ 68, 00000000(d)
        call    initBootInfo                            ; 001C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0021 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0024 _ A1, 00000000(d)
        mov     dword [ebp-6CH], eax                    ; 0029 _ 89. 45, 94
        movzx   eax, word [?_183]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-68H], eax                    ; 0034 _ 89. 45, 98
        movzx   eax, word [?_184]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-64H], eax                    ; 003F _ 89. 45, 9C
        call    init_pit                                ; 0042 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0047 _ 83. EC, 04
        push    timerbuf                                ; 004A _ 68, 00000218(d)
        push    8                                       ; 004F _ 6A, 08
        push    timerInfo                               ; 0051 _ 68, 00000200(d)
        call    fifo8_init                              ; 0056 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 005B _ 83. C4, 10
        call    timer_alloc                             ; 005E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-60H], eax                    ; 0063 _ 89. 45, A0
        sub     esp, 4                                  ; 0066 _ 83. EC, 04
        push    10                                      ; 0069 _ 6A, 0A
        push    timerInfo                               ; 006B _ 68, 00000200(d)
        push    dword [ebp-60H]                         ; 0070 _ FF. 75, A0
        call    timer_init                              ; 0073 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0078 _ 83. C4, 10
        sub     esp, 8                                  ; 007B _ 83. EC, 08
        push    500                                     ; 007E _ 68, 000001F4
        push    dword [ebp-60H]                         ; 0083 _ FF. 75, A0
        call    timer_setTime                           ; 0086 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008B _ 83. C4, 10
        call    timer_alloc                             ; 008E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-5CH], eax                    ; 0093 _ 89. 45, A4
        sub     esp, 4                                  ; 0096 _ 83. EC, 04
        push    2                                       ; 0099 _ 6A, 02
        push    timerInfo                               ; 009B _ 68, 00000200(d)
        push    dword [ebp-5CH]                         ; 00A0 _ FF. 75, A4
        call    timer_init                              ; 00A3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A8 _ 83. C4, 10
        sub     esp, 8                                  ; 00AB _ 83. EC, 08
        push    300                                     ; 00AE _ 68, 0000012C
        push    dword [ebp-5CH]                         ; 00B3 _ FF. 75, A4
        call    timer_setTime                           ; 00B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BB _ 83. C4, 10
        call    timer_alloc                             ; 00BE _ E8, FFFFFFFC(rel)
        mov     dword [ebp-58H], eax                    ; 00C3 _ 89. 45, A8
        sub     esp, 4                                  ; 00C6 _ 83. EC, 04
        push    1                                       ; 00C9 _ 6A, 01
        push    timerInfo                               ; 00CB _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 00D0 _ FF. 75, A8
        call    timer_init                              ; 00D3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D8 _ 83. C4, 10
        sub     esp, 8                                  ; 00DB _ 83. EC, 08
        push    50                                      ; 00DE _ 6A, 32
        push    dword [ebp-58H]                         ; 00E0 _ FF. 75, A8
        call    timer_setTime                           ; 00E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E8 _ 83. C4, 10
        sub     esp, 4                                  ; 00EB _ 83. EC, 04
        push    keybuf                                  ; 00EE _ 68, 00000040(d)
        push    32                                      ; 00F3 _ 6A, 20
        push    keyInfo                                 ; 00F5 _ 68, 00000008(d)
        call    fifo8_init                              ; 00FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00FF _ 83. C4, 10
        sub     esp, 4                                  ; 0102 _ 83. EC, 04
        push    mousebuf                                ; 0105 _ 68, 00000060(d)
        push    128                                     ; 010A _ 68, 00000080
        push    mouseInfo                               ; 010F _ 68, 00000020(d)
        call    fifo8_init                              ; 0114 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0119 _ 83. C4, 10
        call    init_palette                            ; 011C _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0121 _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 0126 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], eax                    ; 012B _ 89. 45, AC
        call    get_memory_block_count                  ; 012E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-50H], eax                    ; 0133 _ 89. 45, B0
        mov     eax, dword [memman]                     ; 0136 _ A1, 00000008(d)
        sub     esp, 12                                 ; 013B _ 83. EC, 0C
        push    eax                                     ; 013E _ 50
        call    memman_init                             ; 013F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0144 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0147 _ A1, 00000008(d)
        sub     esp, 4                                  ; 014C _ 83. EC, 04
        push    1072594944                              ; 014F _ 68, 3FEE8000
        push    1081344                                 ; 0154 _ 68, 00108000
        push    eax                                     ; 0159 _ 50
        call    memman_free                             ; 015A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 015F _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0162 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0167 _ 83. EC, 0C
        push    eax                                     ; 016A _ 50
        call    memman_total                            ; 016B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0170 _ 83. C4, 10
        shr     eax, 20                                 ; 0173 _ C1. E8, 14
        mov     dword [ebp-4CH], eax                    ; 0176 _ 89. 45, B4
        mov     eax, dword [ebp-4CH]                    ; 0179 _ 8B. 45, B4
        sub     esp, 12                                 ; 017C _ 83. EC, 0C
        push    eax                                     ; 017F _ 50
        call    intToHexStr                             ; 0180 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0185 _ 83. C4, 10
        mov     dword [ebp-48H], eax                    ; 0188 _ 89. 45, B8
        mov     eax, dword [memman]                     ; 018B _ A1, 00000008(d)
        push    dword [ebp-64H]                         ; 0190 _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 0193 _ FF. 75, 98
        push    dword [ebp-6CH]                         ; 0196 _ FF. 75, 94
        push    eax                                     ; 0199 _ 50
        call    shtctl_init                             ; 019A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019F _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 01A2 _ A3, 00000220(d)
        mov     eax, dword [shtctl]                     ; 01A7 _ A1, 00000220(d)
        sub     esp, 12                                 ; 01AC _ 83. EC, 0C
        push    eax                                     ; 01AF _ 50
        call    sheet_alloc                             ; 01B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B5 _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01B8 _ A3, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 01BD _ A1, 00000220(d)
        sub     esp, 12                                 ; 01C2 _ 83. EC, 0C
        push    eax                                     ; 01C5 _ 50
        call    sheet_alloc                             ; 01C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CB _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01CE _ A3, 00000230(d)
        mov     eax, dword [ebp-68H]                    ; 01D3 _ 8B. 45, 98
        imul    eax, dword [ebp-64H]                    ; 01D6 _ 0F AF. 45, 9C
        mov     edx, eax                                ; 01DA _ 89. C2
        mov     eax, dword [memman]                     ; 01DC _ A1, 00000008(d)
        sub     esp, 8                                  ; 01E1 _ 83. EC, 08
        push    edx                                     ; 01E4 _ 52
        push    eax                                     ; 01E5 _ 50
        call    memman_alloc_4K                         ; 01E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01EB _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 01EE _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 01F3 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 01F8 _ 83. EC, 04
        push    dword [ebp-64H]                         ; 01FB _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 01FE _ FF. 75, 98
        push    eax                                     ; 0201 _ 50
        call    init_screen8                            ; 0202 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0207 _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 020A _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 0210 _ A1, 0000022C(d)
        sub     esp, 12                                 ; 0215 _ 83. EC, 0C
        push    99                                      ; 0218 _ 6A, 63
        push    dword [ebp-64H]                         ; 021A _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 021D _ FF. 75, 98
        push    edx                                     ; 0220 _ 52
        push    eax                                     ; 0221 _ 50
        call    sheet_setbuf                            ; 0222 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0227 _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 022A _ A1, 00000230(d)
        sub     esp, 12                                 ; 022F _ 83. EC, 0C
        push    99                                      ; 0232 _ 6A, 63
        push    16                                      ; 0234 _ 6A, 10
        push    16                                      ; 0236 _ 6A, 10
        push    buf_mouse                               ; 0238 _ 68, 00000100(d)
        push    eax                                     ; 023D _ 50
        call    sheet_setbuf                            ; 023E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0243 _ 83. C4, 20
        sub     esp, 8                                  ; 0246 _ 83. EC, 08
        push    99                                      ; 0249 _ 6A, 63
        push    buf_mouse                               ; 024B _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 0250 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0255 _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 0258 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 025E _ A1, 00000220(d)
        push    0                                       ; 0263 _ 6A, 00
        push    0                                       ; 0265 _ 6A, 00
        push    edx                                     ; 0267 _ 52
        push    eax                                     ; 0268 _ 50
        call    sheet_slide                             ; 0269 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026E _ 83. C4, 10
        mov     eax, dword [ebp-68H]                    ; 0271 _ 8B. 45, 98
        sub     eax, 16                                 ; 0274 _ 83. E8, 10
        mov     edx, eax                                ; 0277 _ 89. C2
        shr     edx, 31                                 ; 0279 _ C1. EA, 1F
        add     eax, edx                                ; 027C _ 01. D0
        sar     eax, 1                                  ; 027E _ D1. F8
        mov     dword [mx], eax                         ; 0280 _ A3, 000000F0(d)
        mov     eax, dword [ebp-64H]                    ; 0285 _ 8B. 45, 9C
        sub     eax, 44                                 ; 0288 _ 83. E8, 2C
        mov     edx, eax                                ; 028B _ 89. C2
        shr     edx, 31                                 ; 028D _ C1. EA, 1F
        add     eax, edx                                ; 0290 _ 01. D0
        sar     eax, 1                                  ; 0292 _ D1. F8
        mov     dword [my], eax                         ; 0294 _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 0299 _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 029F _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 02A5 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02AB _ A1, 00000220(d)
        push    ebx                                     ; 02B0 _ 53
        push    ecx                                     ; 02B1 _ 51
        push    edx                                     ; 02B2 _ 52
        push    eax                                     ; 02B3 _ 50
        call    sheet_slide                             ; 02B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B9 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02BC _ A1, 00000220(d)
        sub     esp, 12                                 ; 02C1 _ 83. EC, 0C
        push    2                                       ; 02C4 _ 6A, 02
        push    100                                     ; 02C6 _ 6A, 64
        push    200                                     ; 02C8 _ 68, 000000C8
        push    ?_167                                   ; 02CD _ 68, 00000000(d)
        push    eax                                     ; 02D2 _ 50
        call    messageBox                              ; 02D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02D8 _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02DB _ A3, 00000224(d)
        mov     eax, dword [shtctl]                     ; 02E0 _ A1, 00000220(d)
        sub     esp, 12                                 ; 02E5 _ 83. EC, 0C
        push    1                                       ; 02E8 _ 6A, 01
        push    120                                     ; 02EA _ 6A, 78
        push    230                                     ; 02EC _ 68, 000000E6
        push    ?_168                                   ; 02F1 _ 68, 00000008(d)
        push    eax                                     ; 02F6 _ 50
        call    messageBox                              ; 02F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02FC _ 83. C4, 20
        mov     dword [sheet_win2], eax                 ; 02FF _ A3, 00000228(d)
        mov     edx, dword [sheet_back]                 ; 0304 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 030A _ A1, 00000220(d)
        sub     esp, 4                                  ; 030F _ 83. EC, 04
        push    0                                       ; 0312 _ 6A, 00
        push    edx                                     ; 0314 _ 52
        push    eax                                     ; 0315 _ 50
        call    sheet_level_updown                      ; 0316 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031B _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 031E _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0324 _ A1, 00000220(d)
        sub     esp, 4                                  ; 0329 _ 83. EC, 04
        push    50                                      ; 032C _ 6A, 32
        push    edx                                     ; 032E _ 52
        push    eax                                     ; 032F _ 50
        call    sheet_level_updown                      ; 0330 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0335 _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 0338 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 033E _ A1, 00000220(d)
        sub     esp, 8                                  ; 0343 _ 83. EC, 08
        push    ?_169                                   ; 0346 _ 68, 00000012(d)
        push    3                                       ; 034B _ 6A, 03
        push    0                                       ; 034D _ 6A, 00
        push    0                                       ; 034F _ 6A, 00
        push    edx                                     ; 0351 _ 52
        push    eax                                     ; 0352 _ 50
        call    showString                              ; 0353 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0358 _ 83. C4, 20
        mov     edx, dword [sheet_back]                 ; 035B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0361 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0366 _ 83. EC, 08
        push    dword [ebp-48H]                         ; 0369 _ FF. 75, B8
        push    3                                       ; 036C _ 6A, 03
        push    0                                       ; 036E _ 6A, 00
        push    152                                     ; 0370 _ 68, 00000098
        push    edx                                     ; 0375 _ 52
        push    eax                                     ; 0376 _ 50
        call    showString                              ; 0377 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 037C _ 83. C4, 20
        mov     edx, dword [sheet_back]                 ; 037F _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0385 _ A1, 00000220(d)
        sub     esp, 8                                  ; 038A _ 83. EC, 08
        push    ?_170                                   ; 038D _ 68, 00000026(d)
        push    3                                       ; 0392 _ 6A, 03
        push    0                                       ; 0394 _ 6A, 00
        push    240                                     ; 0396 _ 68, 000000F0
        push    edx                                     ; 039B _ 52
        push    eax                                     ; 039C _ 50
        call    showString                              ; 039D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03A2 _ 83. C4, 20
        call    get_code32_addr                         ; 03A5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 03AA _ 89. 45, BC
        call    get_addr_gdt                            ; 03AD _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 03B2 _ 89. 45, C0
        mov     dword [?_195], 0                        ; 03B5 _ C7. 05, 000002A0(d), 00000000
        mov     dword [?_196], 1073741824               ; 03BF _ C7. 05, 000002A4(d), 40000000
        mov     dword [?_213], 0                        ; 03C9 _ C7. 05, 00000320(d), 00000000
        mov     dword [?_214], 1073741824               ; 03D3 _ C7. 05, 00000324(d), 40000000
        mov     edx, tss_a.1757                         ; 03DD _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 03E2 _ 8B. 45, C0
        add     eax, 56                                 ; 03E5 _ 83. C0, 38
        push    137                                     ; 03E8 _ 68, 00000089
        push    edx                                     ; 03ED _ 52
        push    103                                     ; 03EE _ 6A, 67
        push    eax                                     ; 03F0 _ 50
        call    set_segmdesc                            ; 03F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03F6 _ 83. C4, 10
        mov     edx, tss_a.1757                         ; 03F9 _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 03FE _ 8B. 45, C0
        add     eax, 64                                 ; 0401 _ 83. C0, 40
        push    137                                     ; 0404 _ 68, 00000089
        push    edx                                     ; 0409 _ 52
        push    103                                     ; 040A _ 6A, 67
        push    eax                                     ; 040C _ 50
        call    set_segmdesc                            ; 040D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0412 _ 83. C4, 10
        mov     edx, tss_b.1758                         ; 0415 _ BA, 000002C0(d)
        mov     eax, dword [ebp-40H]                    ; 041A _ 8B. 45, C0
        add     eax, 72                                 ; 041D _ 83. C0, 48
        push    137                                     ; 0420 _ 68, 00000089
        push    edx                                     ; 0425 _ 52
        push    103                                     ; 0426 _ 6A, 67
        push    eax                                     ; 0428 _ 50
        call    set_segmdesc                            ; 0429 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 042E _ 83. C4, 10
        mov     edx, task_b_main                        ; 0431 _ BA, 00000000(d)
        mov     eax, dword [ebp-40H]                    ; 0436 _ 8B. 45, C0
        add     eax, 48                                 ; 0439 _ 83. C0, 30
        push    16538                                   ; 043C _ 68, 0000409A
        push    edx                                     ; 0441 _ 52
        push    1048575                                 ; 0442 _ 68, 000FFFFF
        push    eax                                     ; 0447 _ 50
        call    set_segmdesc                            ; 0448 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 044D _ 83. C4, 10
        sub     esp, 12                                 ; 0450 _ 83. EC, 0C
        push    56                                      ; 0453 _ 6A, 38
        call    load_tr                                 ; 0455 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 045A _ 83. C4, 10
        call    taskswitch8                             ; 045D _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_187]                      ; 0462 _ A1, 00000264(d)
        sub     esp, 12                                 ; 0467 _ 83. EC, 0C
        push    eax                                     ; 046A _ 50
        call    intToHexStr                             ; 046B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0470 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0473 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0476 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 047C _ A1, 00000220(d)
        sub     esp, 8                                  ; 0481 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0484 _ FF. 75, C4
        push    7                                       ; 0487 _ 6A, 07
        push    0                                       ; 0489 _ 6A, 00
        push    0                                       ; 048B _ 6A, 00
        push    edx                                     ; 048D _ 52
        push    eax                                     ; 048E _ 50
        call    showString                              ; 048F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0494 _ 83. C4, 20
        mov     eax, dword [?_188]                      ; 0497 _ A1, 00000278(d)
        sub     esp, 12                                 ; 049C _ 83. EC, 0C
        push    eax                                     ; 049F _ 50
        call    intToHexStr                             ; 04A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04A5 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 04A8 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 04AB _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04B1 _ A1, 00000220(d)
        sub     esp, 8                                  ; 04B6 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 04B9 _ FF. 75, C4
        push    7                                       ; 04BC _ 6A, 07
        push    16                                      ; 04BE _ 6A, 10
        push    0                                       ; 04C0 _ 6A, 00
        push    edx                                     ; 04C2 _ 52
        push    eax                                     ; 04C3 _ 50
        call    showString                              ; 04C4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04C9 _ 83. C4, 20
        mov     eax, dword [?_189]                      ; 04CC _ A1, 00000288(d)
        lea     edx, [eax+7H]                           ; 04D1 _ 8D. 50, 07
        test    eax, eax                                ; 04D4 _ 85. C0
        cmovs   eax, edx                                ; 04D6 _ 0F 48. C2
        sar     eax, 3                                  ; 04D9 _ C1. F8, 03
        sub     esp, 12                                 ; 04DC _ 83. EC, 0C
        push    eax                                     ; 04DF _ 50
        call    intToHexStr                             ; 04E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04E5 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 04E8 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 04EB _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04F1 _ A1, 00000220(d)
        sub     esp, 8                                  ; 04F6 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 04F9 _ FF. 75, C4
        push    7                                       ; 04FC _ 6A, 07
        push    32                                      ; 04FE _ 6A, 20
        push    0                                       ; 0500 _ 6A, 00
        push    edx                                     ; 0502 _ 52
        push    eax                                     ; 0503 _ 50
        call    showString                              ; 0504 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0509 _ 83. C4, 20
        mov     eax, dword [?_190]                      ; 050C _ A1, 0000028C(d)
        lea     edx, [eax+7H]                           ; 0511 _ 8D. 50, 07
        test    eax, eax                                ; 0514 _ 85. C0
        cmovs   eax, edx                                ; 0516 _ 0F 48. C2
        sar     eax, 3                                  ; 0519 _ C1. F8, 03
        sub     esp, 12                                 ; 051C _ 83. EC, 0C
        push    eax                                     ; 051F _ 50
        call    intToHexStr                             ; 0520 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0525 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0528 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 052B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0531 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0536 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0539 _ FF. 75, C4
        push    7                                       ; 053C _ 6A, 07
        push    48                                      ; 053E _ 6A, 30
        push    0                                       ; 0540 _ 6A, 00
        push    edx                                     ; 0542 _ 52
        push    eax                                     ; 0543 _ 50
        call    showString                              ; 0544 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0549 _ 83. C4, 20
        mov     eax, dword [?_191]                      ; 054C _ A1, 00000290(d)
        lea     edx, [eax+7H]                           ; 0551 _ 8D. 50, 07
        test    eax, eax                                ; 0554 _ 85. C0
        cmovs   eax, edx                                ; 0556 _ 0F 48. C2
        sar     eax, 3                                  ; 0559 _ C1. F8, 03
        sub     esp, 12                                 ; 055C _ 83. EC, 0C
        push    eax                                     ; 055F _ 50
        call    intToHexStr                             ; 0560 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0565 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0568 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 056B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0571 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0576 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0579 _ FF. 75, C4
        push    7                                       ; 057C _ 6A, 07
        push    64                                      ; 057E _ 6A, 40
        push    0                                       ; 0580 _ 6A, 00
        push    edx                                     ; 0582 _ 52
        push    eax                                     ; 0583 _ 50
        call    showString                              ; 0584 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0589 _ 83. C4, 20
        mov     eax, dword [?_192]                      ; 058C _ A1, 00000294(d)
        lea     edx, [eax+7H]                           ; 0591 _ 8D. 50, 07
        test    eax, eax                                ; 0594 _ 85. C0
        cmovs   eax, edx                                ; 0596 _ 0F 48. C2
        sar     eax, 3                                  ; 0599 _ C1. F8, 03
        sub     esp, 12                                 ; 059C _ 83. EC, 0C
        push    eax                                     ; 059F _ 50
        call    intToHexStr                             ; 05A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05A5 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 05A8 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 05AB _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 05B1 _ A1, 00000220(d)
        sub     esp, 8                                  ; 05B6 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 05B9 _ FF. 75, C4
        push    7                                       ; 05BC _ 6A, 07
        push    80                                      ; 05BE _ 6A, 50
        push    0                                       ; 05C0 _ 6A, 00
        push    edx                                     ; 05C2 _ 52
        push    eax                                     ; 05C3 _ 50
        call    showString                              ; 05C4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05C9 _ 83. C4, 20
        mov     eax, dword [?_194]                      ; 05CC _ A1, 0000029C(d)
        lea     edx, [eax+7H]                           ; 05D1 _ 8D. 50, 07
        test    eax, eax                                ; 05D4 _ 85. C0
        cmovs   eax, edx                                ; 05D6 _ 0F 48. C2
        sar     eax, 3                                  ; 05D9 _ C1. F8, 03
        sub     esp, 12                                 ; 05DC _ 83. EC, 0C
        push    eax                                     ; 05DF _ 50
        call    intToHexStr                             ; 05E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05E5 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 05E8 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 05EB _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 05F1 _ A1, 00000220(d)
        sub     esp, 8                                  ; 05F6 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 05F9 _ FF. 75, C4
        push    7                                       ; 05FC _ 6A, 07
        push    96                                      ; 05FE _ 6A, 60
        push    0                                       ; 0600 _ 6A, 00
        push    edx                                     ; 0602 _ 52
        push    eax                                     ; 0603 _ 50
        call    showString                              ; 0604 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0609 _ 83. C4, 20
        mov     eax, dword [?_193]                      ; 060C _ A1, 00000298(d)
        lea     edx, [eax+7H]                           ; 0611 _ 8D. 50, 07
        test    eax, eax                                ; 0614 _ 85. C0
        cmovs   eax, edx                                ; 0616 _ 0F 48. C2
        sar     eax, 3                                  ; 0619 _ C1. F8, 03
        sub     esp, 12                                 ; 061C _ 83. EC, 0C
        push    eax                                     ; 061F _ 50
        call    intToHexStr                             ; 0620 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0625 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0628 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 062B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0631 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0636 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0639 _ FF. 75, C4
        push    7                                       ; 063C _ 6A, 07
        push    112                                     ; 063E _ 6A, 70
        push    0                                       ; 0640 _ 6A, 00
        push    edx                                     ; 0642 _ 52
        push    eax                                     ; 0643 _ 50
        call    showString                              ; 0644 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0649 _ 83. C4, 20
        mov     eax, dword [?_186]                      ; 064C _ A1, 0000025C(d)
        sub     esp, 12                                 ; 0651 _ 83. EC, 0C
        push    eax                                     ; 0654 _ 50
        call    intToHexStr                             ; 0655 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 065A _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 065D _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0660 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0666 _ A1, 00000220(d)
        sub     esp, 8                                  ; 066B _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 066E _ FF. 75, C4
        push    7                                       ; 0671 _ 6A, 07
        push    128                                     ; 0673 _ 68, 00000080
        push    0                                       ; 0678 _ 6A, 00
        push    edx                                     ; 067A _ 52
        push    eax                                     ; 067B _ 50
        call    showString                              ; 067C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0681 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 0684 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0689 _ 83. EC, 08
        push    65536                                   ; 068C _ 68, 00010000
        push    eax                                     ; 0691 _ 50
        call    memman_alloc_4K                         ; 0692 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0697 _ 83. C4, 10
        add     eax, 65536                              ; 069A _ 05, 00010000
        mov     dword [ebp-38H], eax                    ; 069F _ 89. 45, C8
        mov     eax, dword [ebp-44H]                    ; 06A2 _ 8B. 45, BC
        neg     eax                                     ; 06A5 _ F7. D8
        add     eax, task_b_main                        ; 06A7 _ 05, 00000000(d)
        mov     dword [?_197], eax                      ; 06AC _ A3, 000002E0(d)
        mov     dword [?_198], 514                      ; 06B1 _ C7. 05, 000002E4(d), 00000202
        mov     dword [?_199], 0                        ; 06BB _ C7. 05, 000002E8(d), 00000000
        mov     dword [?_200], 0                        ; 06C5 _ C7. 05, 000002EC(d), 00000000
        mov     dword [?_201], 0                        ; 06CF _ C7. 05, 000002F0(d), 00000000
        mov     dword [?_202], 0                        ; 06D9 _ C7. 05, 000002F4(d), 00000000
        mov     dword [?_203], 1024                     ; 06E3 _ C7. 05, 000002F8(d), 00000400
        mov     dword [?_204], 0                        ; 06ED _ C7. 05, 000002FC(d), 00000000
        mov     dword [?_205], 0                        ; 06F7 _ C7. 05, 00000300(d), 00000000
        mov     dword [?_206], 0                        ; 0701 _ C7. 05, 00000304(d), 00000000
        mov     eax, dword [?_189]                      ; 070B _ A1, 00000288(d)
        mov     dword [?_207], eax                      ; 0710 _ A3, 00000308(d)
        mov     eax, dword [?_190]                      ; 0715 _ A1, 0000028C(d)
        mov     dword [?_208], eax                      ; 071A _ A3, 0000030C(d)
        mov     eax, dword [?_191]                      ; 071F _ A1, 00000290(d)
        mov     dword [?_209], eax                      ; 0724 _ A3, 00000310(d)
        mov     eax, dword [?_192]                      ; 0729 _ A1, 00000294(d)
        mov     dword [?_210], eax                      ; 072E _ A3, 00000314(d)
        mov     eax, dword [?_193]                      ; 0733 _ A1, 00000298(d)
        mov     dword [?_211], eax                      ; 0738 _ A3, 00000318(d)
        mov     eax, dword [?_194]                      ; 073D _ A1, 0000029C(d)
        mov     dword [?_212], eax                      ; 0742 _ A3, 0000031C(d)
        call    io_sti                                  ; 0747 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 074C _ 83. EC, 0C
        push    mouse_move                              ; 074F _ 68, 000000E0(d)
        call    enable_mouse                            ; 0754 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0759 _ 83. C4, 10
        mov     byte [ebp-71H], 0                       ; 075C _ C6. 45, 8F, 00
        call    getTimerController                      ; 0760 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0765 _ 89. 45, CC
        mov     dword [ebp-70H], 7                      ; 0768 _ C7. 45, 90, 00000007
?_001:  mov     eax, dword [ebp-60H]                    ; 076F _ 8B. 45, A0
        mov     eax, dword [eax]                        ; 0772 _ 8B. 00
        sub     esp, 12                                 ; 0774 _ 83. EC, 0C
        push    eax                                     ; 0777 _ 50
        call    intToHexStr                             ; 0778 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 077D _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0780 _ 89. 45, D0
        mov     eax, dword [sheet_win]                  ; 0783 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0788 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 078B _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0790 _ 8B. 00
        sub     esp, 4                                  ; 0792 _ 83. EC, 04
        push    38                                      ; 0795 _ 6A, 26
        push    150                                     ; 0797 _ 68, 00000096
        push    23                                      ; 079C _ 6A, 17
        push    8                                       ; 079E _ 6A, 08
        push    8                                       ; 07A0 _ 6A, 08
        push    edx                                     ; 07A2 _ 52
        push    eax                                     ; 07A3 _ 50
        call    boxfill8                                ; 07A4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07A9 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 07AC _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 07B2 _ A1, 00000220(d)
        sub     esp, 8                                  ; 07B7 _ 83. EC, 08
        push    dword [ebp-30H]                         ; 07BA _ FF. 75, D0
        push    10                                      ; 07BD _ 6A, 0A
        push    23                                      ; 07BF _ 6A, 17
        push    8                                       ; 07C1 _ 6A, 08
        push    edx                                     ; 07C3 _ 52
        push    eax                                     ; 07C4 _ 50
        call    showString                              ; 07C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07CA _ 83. C4, 20
        sub     esp, 12                                 ; 07CD _ 83. EC, 0C
        push    keyInfo                                 ; 07D0 _ 68, 00000008(d)
        call    fifo8_status                            ; 07D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07DA _ 83. C4, 10
        sub     esp, 12                                 ; 07DD _ 83. EC, 0C
        push    eax                                     ; 07E0 _ 50
        call    intToHexStr                             ; 07E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07E6 _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 07E9 _ 89. 45, D4
        mov     eax, dword [sheet_win]                  ; 07EC _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 07F1 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 07F4 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 07F9 _ 8B. 00
        sub     esp, 4                                  ; 07FB _ 83. EC, 04
        push    76                                      ; 07FE _ 6A, 4C
        push    100                                     ; 0800 _ 6A, 64
        push    61                                      ; 0802 _ 6A, 3D
        push    8                                       ; 0804 _ 6A, 08
        push    8                                       ; 0806 _ 6A, 08
        push    edx                                     ; 0808 _ 52
        push    eax                                     ; 0809 _ 50
        call    boxfill8                                ; 080A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 080F _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 0812 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0818 _ A1, 00000220(d)
        sub     esp, 8                                  ; 081D _ 83. EC, 08
        push    dword [ebp-2CH]                         ; 0820 _ FF. 75, D4
        push    10                                      ; 0823 _ 6A, 0A
        push    61                                      ; 0825 _ 6A, 3D
        push    8                                       ; 0827 _ 6A, 08
        push    edx                                     ; 0829 _ 52
        push    eax                                     ; 082A _ 50
        call    showString                              ; 082B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0830 _ 83. C4, 20
        sub     esp, 12                                 ; 0833 _ 83. EC, 0C
        push    mouseInfo                               ; 0836 _ 68, 00000020(d)
        call    fifo8_status                            ; 083B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0840 _ 83. C4, 10
        sub     esp, 12                                 ; 0843 _ 83. EC, 0C
        push    eax                                     ; 0846 _ 50
        call    intToHexStr                             ; 0847 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 084C _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 084F _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 0852 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0857 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 085A _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 085F _ 8B. 00
        sub     esp, 4                                  ; 0861 _ 83. EC, 04
        push    92                                      ; 0864 _ 6A, 5C
        push    100                                     ; 0866 _ 6A, 64
        push    77                                      ; 0868 _ 6A, 4D
        push    8                                       ; 086A _ 6A, 08
        push    8                                       ; 086C _ 6A, 08
        push    edx                                     ; 086E _ 52
        push    eax                                     ; 086F _ 50
        call    boxfill8                                ; 0870 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0875 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 0878 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 087E _ A1, 00000220(d)
        sub     esp, 8                                  ; 0883 _ 83. EC, 08
        push    dword [ebp-28H]                         ; 0886 _ FF. 75, D8
        push    10                                      ; 0889 _ 6A, 0A
        push    77                                      ; 088B _ 6A, 4D
        push    8                                       ; 088D _ 6A, 08
        push    edx                                     ; 088F _ 52
        push    eax                                     ; 0890 _ 50
        call    showString                              ; 0891 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0896 _ 83. C4, 20
        call    io_cli                                  ; 0899 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 089E _ 83. EC, 0C
        push    keyInfo                                 ; 08A1 _ 68, 00000008(d)
        call    fifo8_status                            ; 08A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08AB _ 83. C4, 10
        mov     ebx, eax                                ; 08AE _ 89. C3
        sub     esp, 12                                 ; 08B0 _ 83. EC, 0C
        push    mouseInfo                               ; 08B3 _ 68, 00000020(d)
        call    fifo8_status                            ; 08B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08BD _ 83. C4, 10
        add     ebx, eax                                ; 08C0 _ 01. C3
        sub     esp, 12                                 ; 08C2 _ 83. EC, 0C
        push    timerInfo                               ; 08C5 _ 68, 00000200(d)
        call    fifo8_status                            ; 08CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08CF _ 83. C4, 10
        add     eax, ebx                                ; 08D2 _ 01. D8
        test    eax, eax                                ; 08D4 _ 85. C0
        jnz     ?_002                                   ; 08D6 _ 75, 0A
        call    io_sti                                  ; 08D8 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08DD _ E9, FFFFFE8D

?_002:  sub     esp, 12                                 ; 08E2 _ 83. EC, 0C
        push    keyInfo                                 ; 08E5 _ 68, 00000008(d)
        call    fifo8_status                            ; 08EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08EF _ 83. C4, 10
        test    eax, eax                                ; 08F2 _ 85. C0
        je      ?_007                                   ; 08F4 _ 0F 84, 00000314
        call    io_sti                                  ; 08FA _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 08FF _ 83. EC, 0C
        push    keyInfo                                 ; 0902 _ 68, 00000008(d)
        call    fifo8_get                               ; 0907 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 090C _ 83. C4, 10
        mov     byte [ebp-71H], al                      ; 090F _ 88. 45, 8F
        cmp     byte [ebp-71H], 28                      ; 0912 _ 80. 7D, 8F, 1C
        jnz     ?_003                                   ; 0916 _ 75, 59
        mov     ebx, dword [cnt.1763]                   ; 0918 _ 8B. 1D, 00000328(d)
        mov     eax, dword [sheet_back]                 ; 091E _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 0923 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 0925 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 092B _ A1, 00000220(d)
        sub     esp, 4                                  ; 0930 _ 83. EC, 04
        push    7                                       ; 0933 _ 6A, 07
        push    dword [ebp-68H]                         ; 0935 _ FF. 75, 98
        push    ebx                                     ; 0938 _ 53
        push    ecx                                     ; 0939 _ 51
        push    dword [ebp-54H]                         ; 093A _ FF. 75, AC
        push    edx                                     ; 093D _ 52
        push    eax                                     ; 093E _ 50
        call    showMemInfo                             ; 093F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0944 _ 83. C4, 20
        mov     eax, dword [cnt.1763]                   ; 0947 _ A1, 00000328(d)
        add     eax, 1                                  ; 094C _ 83. C0, 01
        mov     dword [cnt.1763], eax                   ; 094F _ A3, 00000328(d)
        mov     eax, dword [cnt.1763]                   ; 0954 _ A1, 00000328(d)
        cmp     dword [ebp-50H], eax                    ; 0959 _ 39. 45, B0
        jg      ?_001                                   ; 095C _ 0F 8F, FFFFFE0D
        mov     dword [cnt.1763], 0                     ; 0962 _ C7. 05, 00000328(d), 00000000
        jmp     ?_001                                   ; 096C _ E9, FFFFFDFE

?_003:  movzx   eax, byte [ebp-71H]                     ; 0971 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0975 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 097C _ 84. C0
        jz      ?_004                                   ; 097E _ 74, 18
        cmp     byte [ebp-71H], 15                      ; 0980 _ 80. 7D, 8F, 0F
        jbe     ?_004                                   ; 0984 _ 76, 12
        cmp     byte [ebp-71H], 83                      ; 0986 _ 80. 7D, 8F, 53
        ja      ?_004                                   ; 098A _ 77, 0C
        mov     eax, dword [line.1767]                  ; 098C _ A1, 0000032C(d)
        cmp     eax, 142                                ; 0991 _ 3D, 0000008E
        jle     ?_005                                   ; 0996 _ 7E, 18
?_004:  cmp     byte [ebp-71H], 14                      ; 0998 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 099C _ 0F 85, FFFFFDCD
        mov     eax, dword [line.1767]                  ; 09A2 _ A1, 0000032C(d)
        cmp     eax, 7                                  ; 09A7 _ 83. F8, 07
        jle     ?_001                                   ; 09AA _ 0F 8E, FFFFFDBF
?_005:  movzx   eax, byte [ebp-71H]                     ; 09B0 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 09B4 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 09BB _ 84. C0
        je      ?_006                                   ; 09BD _ 0F 84, 00000125
        cmp     byte [ebp-71H], 15                      ; 09C3 _ 80. 7D, 8F, 0F
        jbe     ?_006                                   ; 09C7 _ 0F 86, 0000011B
        cmp     byte [ebp-71H], 83                      ; 09CD _ 80. 7D, 8F, 53
        ja      ?_006                                   ; 09D1 _ 0F 87, 00000111
        mov     eax, dword [line.1767]                  ; 09D7 _ A1, 0000032C(d)
        cmp     eax, 142                                ; 09DC _ 3D, 0000008E
        jg      ?_006                                   ; 09E1 _ 0F 8F, 00000101
        mov     eax, dword [pos.1768]                   ; 09E7 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 09EC _ 8D. 78, 28
        mov     eax, dword [line.1767]                  ; 09EF _ A1, 0000032C(d)
        lea     esi, [eax+0EH]                          ; 09F4 _ 8D. 70, 0E
        mov     eax, dword [pos.1768]                   ; 09F7 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09FC _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 09FF _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0A04 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0A07 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0A0C _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0A0F _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0A14 _ 8B. 00
        sub     esp, 4                                  ; 0A16 _ 83. EC, 04
        push    edi                                     ; 0A19 _ 57
        push    esi                                     ; 0A1A _ 56
        push    ebx                                     ; 0A1B _ 53
        push    ecx                                     ; 0A1C _ 51
        push    7                                       ; 0A1D _ 6A, 07
        push    edx                                     ; 0A1F _ 52
        push    eax                                     ; 0A20 _ 50
        call    boxfill8                                ; 0A21 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A26 _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0A29 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0A2E _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0A31 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0A36 _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0A39 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0A3E _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0A41 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0A46 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0A49 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0A4F _ A1, 00000220(d)
        sub     esp, 8                                  ; 0A54 _ 83. EC, 08
        push    edi                                     ; 0A57 _ 57
        push    esi                                     ; 0A58 _ 56
        push    ebx                                     ; 0A59 _ 53
        push    ecx                                     ; 0A5A _ 51
        push    edx                                     ; 0A5B _ 52
        push    eax                                     ; 0A5C _ 50
        call    sheet_refresh                           ; 0A5D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A62 _ 83. C4, 20
        movzx   eax, byte [ebp-71H]                     ; 0A65 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0A69 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0A70 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0A73 _ C6. 45, E3, 00
        mov     eax, dword [pos.1768]                   ; 0A77 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0A7C _ 8D. 70, 1A
        mov     eax, dword [line.1767]                  ; 0A7F _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 0A84 _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 0A87 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0A8D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0A92 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0A95 _ 8D. 4D, E2
        push    ecx                                     ; 0A98 _ 51
        push    0                                       ; 0A99 _ 6A, 00
        push    esi                                     ; 0A9B _ 56
        push    ebx                                     ; 0A9C _ 53
        push    edx                                     ; 0A9D _ 52
        push    eax                                     ; 0A9E _ 50
        call    showString                              ; 0A9F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AA4 _ 83. C4, 20
        mov     eax, dword [line.1767]                  ; 0AA7 _ A1, 0000032C(d)
        add     eax, 8                                  ; 0AAC _ 83. C0, 08
        mov     dword [line.1767], eax                  ; 0AAF _ A3, 0000032C(d)
        mov     eax, dword [sheet_win]                  ; 0AB4 _ A1, 00000224(d)
        mov     eax, dword [eax+4H]                     ; 0AB9 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0ABC _ 8D. 50, F0
        mov     eax, dword [line.1767]                  ; 0ABF _ A1, 0000032C(d)
        cmp     edx, eax                                ; 0AC4 _ 39. C2
        jg      ?_013                                   ; 0AC6 _ 0F 8F, 000002EB
        mov     eax, dword [pos.1768]                   ; 0ACC _ A1, 00000074(d)
        add     eax, 16                                 ; 0AD1 _ 83. C0, 10
        mov     dword [pos.1768], eax                   ; 0AD4 _ A3, 00000074(d)
        mov     dword [line.1767], 0                    ; 0AD9 _ C7. 05, 0000032C(d), 00000000
        jmp     ?_013                                   ; 0AE3 _ E9, 000002CF

?_006:  cmp     byte [ebp-71H], 14                      ; 0AE8 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 0AEC _ 0F 85, FFFFFC7D
        mov     eax, dword [line.1767]                  ; 0AF2 _ A1, 0000032C(d)
        cmp     eax, 7                                  ; 0AF7 _ 83. F8, 07
        jle     ?_001                                   ; 0AFA _ 0F 8E, FFFFFC6F
        mov     eax, dword [pos.1768]                   ; 0B00 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0B05 _ 8D. 78, 28
        mov     eax, dword [line.1767]                  ; 0B08 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0B0D _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0B10 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0B15 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0B18 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0B1D _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0B20 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0B25 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0B28 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0B2D _ 8B. 00
        sub     esp, 4                                  ; 0B2F _ 83. EC, 04
        push    edi                                     ; 0B32 _ 57
        push    esi                                     ; 0B33 _ 56
        push    ebx                                     ; 0B34 _ 53
        push    ecx                                     ; 0B35 _ 51
        push    7                                       ; 0B36 _ 6A, 07
        push    edx                                     ; 0B38 _ 52
        push    eax                                     ; 0B39 _ 50
        call    boxfill8                                ; 0B3A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B3F _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0B42 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0B47 _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0B4A _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0B4F _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0B52 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0B57 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0B5A _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0B5F _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0B62 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0B68 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0B6D _ 83. EC, 08
        push    edi                                     ; 0B70 _ 57
        push    esi                                     ; 0B71 _ 56
        push    ebx                                     ; 0B72 _ 53
        push    ecx                                     ; 0B73 _ 51
        push    edx                                     ; 0B74 _ 52
        push    eax                                     ; 0B75 _ 50
        call    sheet_refresh                           ; 0B76 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B7B _ 83. C4, 20
        mov     eax, dword [line.1767]                  ; 0B7E _ A1, 0000032C(d)
        sub     eax, 8                                  ; 0B83 _ 83. E8, 08
        mov     dword [line.1767], eax                  ; 0B86 _ A3, 0000032C(d)
        mov     eax, dword [pos.1768]                   ; 0B8B _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0B90 _ 8D. 78, 28
        mov     eax, dword [line.1767]                  ; 0B93 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0B98 _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0B9B _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0BA0 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0BA3 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0BA8 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0BAB _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0BB0 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0BB3 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0BB8 _ 8B. 00
        sub     esp, 4                                  ; 0BBA _ 83. EC, 04
        push    edi                                     ; 0BBD _ 57
        push    esi                                     ; 0BBE _ 56
        push    ebx                                     ; 0BBF _ 53
        push    ecx                                     ; 0BC0 _ 51
        push    7                                       ; 0BC1 _ 6A, 07
        push    edx                                     ; 0BC3 _ 52
        push    eax                                     ; 0BC4 _ 50
        call    boxfill8                                ; 0BC5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BCA _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0BCD _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0BD2 _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0BD5 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0BDA _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0BDD _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0BE2 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0BE5 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0BEA _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0BED _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0BF3 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0BF8 _ 83. EC, 08
        push    edi                                     ; 0BFB _ 57
        push    esi                                     ; 0BFC _ 56
        push    ebx                                     ; 0BFD _ 53
        push    ecx                                     ; 0BFE _ 51
        push    edx                                     ; 0BFF _ 52
        push    eax                                     ; 0C00 _ 50
        call    sheet_refresh                           ; 0C01 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C06 _ 83. C4, 20
        jmp     ?_001                                   ; 0C09 _ E9, FFFFFB61

?_007:  sub     esp, 12                                 ; 0C0E _ 83. EC, 0C
        push    mouseInfo                               ; 0C11 _ 68, 00000020(d)
        call    fifo8_status                            ; 0C16 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C1B _ 83. C4, 10
        test    eax, eax                                ; 0C1E _ 85. C0
        jz      ?_008                                   ; 0C20 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0C22 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 0C28 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C2E _ A1, 00000220(d)
        sub     esp, 4                                  ; 0C33 _ 83. EC, 04
        push    ecx                                     ; 0C36 _ 51
        push    edx                                     ; 0C37 _ 52
        push    eax                                     ; 0C38 _ 50
        call    showMouseInfo                           ; 0C39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C3E _ 83. C4, 10
        jmp     ?_001                                   ; 0C41 _ E9, FFFFFB29

?_008:  sub     esp, 12                                 ; 0C46 _ 83. EC, 0C
        push    timerInfo                               ; 0C49 _ 68, 00000200(d)
        call    fifo8_status                            ; 0C4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C53 _ 83. C4, 10
        test    eax, eax                                ; 0C56 _ 85. C0
        je      ?_001                                   ; 0C58 _ 0F 84, FFFFFB11
        call    io_sti                                  ; 0C5E _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0C63 _ 83. EC, 0C
        push    timerInfo                               ; 0C66 _ 68, 00000200(d)
        call    fifo8_get                               ; 0C6B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C70 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0C73 _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 0C76 _ 83. 7D, DC, 0A
        jnz     ?_009                                   ; 0C7A _ 75, 30
        mov     edx, dword [sheet_back]                 ; 0C7C _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C82 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0C87 _ 83. EC, 08
        push    ?_171                                   ; 0C8A _ 68, 00000029(d)
        push    5                                       ; 0C8F _ 6A, 05
        push    176                                     ; 0C91 _ 68, 000000B0
        push    0                                       ; 0C96 _ 6A, 00
        push    edx                                     ; 0C98 _ 52
        push    eax                                     ; 0C99 _ 50
        call    showString                              ; 0C9A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C9F _ 83. C4, 20
        call    taskswitch9                             ; 0CA2 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0CA7 _ E9, FFFFFAC3

?_009:  cmp     dword [ebp-24H], 2                      ; 0CAC _ 83. 7D, DC, 02
        jnz     ?_010                                   ; 0CB0 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0CB2 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0CB8 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0CBD _ 83. EC, 08
        push    ?_172                                   ; 0CC0 _ 68, 0000003A(d)
        push    7                                       ; 0CC5 _ 6A, 07
        push    32                                      ; 0CC7 _ 6A, 20
        push    80                                      ; 0CC9 _ 6A, 50
        push    edx                                     ; 0CCB _ 52
        push    eax                                     ; 0CCC _ 50
        call    showString                              ; 0CCD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CD2 _ 83. C4, 20
        jmp     ?_001                                   ; 0CD5 _ E9, FFFFFA95

?_010:  cmp     dword [ebp-24H], 0                      ; 0CDA _ 83. 7D, DC, 00
        jz      ?_011                                   ; 0CDE _ 74, 1E
        sub     esp, 4                                  ; 0CE0 _ 83. EC, 04
        push    0                                       ; 0CE3 _ 6A, 00
        push    timerInfo                               ; 0CE5 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0CEA _ FF. 75, A8
        call    timer_init                              ; 0CED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CF2 _ 83. C4, 10
        mov     dword [ebp-70H], 0                      ; 0CF5 _ C7. 45, 90, 00000000
        jmp     ?_012                                   ; 0CFC _ EB, 1C

?_011:  sub     esp, 4                                  ; 0CFE _ 83. EC, 04
        push    1                                       ; 0D01 _ 6A, 01
        push    timerInfo                               ; 0D03 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0D08 _ FF. 75, A8
        call    timer_init                              ; 0D0B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D10 _ 83. C4, 10
        mov     dword [ebp-70H], 7                      ; 0D13 _ C7. 45, 90, 00000007
?_012:  sub     esp, 8                                  ; 0D1A _ 83. EC, 08
        push    50                                      ; 0D1D _ 6A, 32
        push    dword [ebp-58H]                         ; 0D1F _ FF. 75, A8
        call    timer_setTime                           ; 0D22 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D27 _ 83. C4, 10
        mov     eax, dword [pos.1768]                   ; 0D2A _ A1, 00000074(d)
        add     eax, 40                                 ; 0D2F _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0D32 _ 89. 45, 84
        mov     eax, dword [line.1767]                  ; 0D35 _ A1, 0000032C(d)
        lea     edi, [eax+0EH]                          ; 0D3A _ 8D. 78, 0E
        mov     eax, dword [pos.1768]                   ; 0D3D _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0D42 _ 8D. 70, 1A
        mov     eax, dword [line.1767]                  ; 0D45 _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 0D4A _ 8D. 58, 08
        mov     eax, dword [ebp-70H]                    ; 0D4D _ 8B. 45, 90
        movzx   ecx, al                                 ; 0D50 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0D53 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0D58 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0D5B _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0D60 _ 8B. 00
        sub     esp, 4                                  ; 0D62 _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 0D65 _ FF. 75, 84
        push    edi                                     ; 0D68 _ 57
        push    esi                                     ; 0D69 _ 56
        push    ebx                                     ; 0D6A _ 53
        push    ecx                                     ; 0D6B _ 51
        push    edx                                     ; 0D6C _ 52
        push    eax                                     ; 0D6D _ 50
        call    boxfill8                                ; 0D6E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D73 _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0D76 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0D7B _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0D7E _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0D83 _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0D86 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0D8B _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0D8E _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0D93 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0D96 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0D9C _ A1, 00000220(d)
        sub     esp, 8                                  ; 0DA1 _ 83. EC, 08
        push    edi                                     ; 0DA4 _ 57
        push    esi                                     ; 0DA5 _ 56
        push    ebx                                     ; 0DA6 _ 53
        push    ecx                                     ; 0DA7 _ 51
        push    edx                                     ; 0DA8 _ 52
        push    eax                                     ; 0DA9 _ 50
        call    sheet_refresh                           ; 0DAA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DAF _ 83. C4, 20
        jmp     ?_001                                   ; 0DB2 _ E9, FFFFF9B8

?_013:  nop                                             ; 0DB7 _ 90
        jmp     ?_001                                   ; 0DB8 _ E9, FFFFF9B2
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 0DBD _ 55
        mov     ebp, esp                                ; 0DBE _ 89. E5
        sub     esp, 56                                 ; 0DC0 _ 83. EC, 38
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0DC3 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0DC9 _ 89. 45, F4
        xor     eax, eax                                ; 0DCC _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0DCE _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0DD4 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0DD9 _ 83. EC, 08
        push    ?_173                                   ; 0DDC _ 68, 00000041(d)
        push    7                                       ; 0DE1 _ 6A, 07
        push    144                                     ; 0DE3 _ 68, 00000090
        push    0                                       ; 0DE8 _ 6A, 00
        push    edx                                     ; 0DEA _ 52
        push    eax                                     ; 0DEB _ 50
        call    showString                              ; 0DEC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DF1 _ 83. C4, 20
        mov     dword [ebp-34H], 0                      ; 0DF4 _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 0                      ; 0DFB _ C7. 45, D0, 00000000
        sub     esp, 4                                  ; 0E02 _ 83. EC, 04
        lea     eax, [ebp-14H]                          ; 0E05 _ 8D. 45, EC
        push    eax                                     ; 0E08 _ 50
        push    8                                       ; 0E09 _ 6A, 08
        lea     eax, [ebp-2CH]                          ; 0E0B _ 8D. 45, D4
        push    eax                                     ; 0E0E _ 50
        call    fifo8_init                              ; 0E0F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E14 _ 83. C4, 10
        call    timer_alloc                             ; 0E17 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0E1C _ 89. 45, CC
        sub     esp, 4                                  ; 0E1F _ 83. EC, 04
        push    123                                     ; 0E22 _ 6A, 7B
        lea     eax, [ebp-2CH]                          ; 0E24 _ 8D. 45, D4
        push    eax                                     ; 0E27 _ 50
        push    dword [ebp-34H]                         ; 0E28 _ FF. 75, CC
        call    timer_init                              ; 0E2B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E30 _ 83. C4, 10
        sub     esp, 8                                  ; 0E33 _ 83. EC, 08
        push    200                                     ; 0E36 _ 68, 000000C8
        push    dword [ebp-34H]                         ; 0E3B _ FF. 75, CC
        call    timer_setTime                           ; 0E3E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E43 _ 83. C4, 10
?_014:  call    io_cli                                  ; 0E46 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0E4B _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0E4E _ 8D. 45, D4
        push    eax                                     ; 0E51 _ 50
        call    fifo8_status                            ; 0E52 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E57 _ 83. C4, 10
        test    eax, eax                                ; 0E5A _ 85. C0
        jnz     ?_015                                   ; 0E5C _ 75, 07
        call    io_sti                                  ; 0E5E _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 0E63 _ EB, E1

?_015:  sub     esp, 12                                 ; 0E65 _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0E68 _ 8D. 45, D4
        push    eax                                     ; 0E6B _ 50
        call    fifo8_get                               ; 0E6C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E71 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0E74 _ 89. 45, D0
        call    io_sti                                  ; 0E77 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-30H], 123                    ; 0E7C _ 83. 7D, D0, 7B
        jnz     ?_014                                   ; 0E80 _ 75, C4
        mov     edx, dword [sheet_back]                 ; 0E82 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0E88 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0E8D _ 83. EC, 08
        push    ?_174                                   ; 0E90 _ 68, 0000004E(d)
        push    7                                       ; 0E95 _ 6A, 07
        push    160                                     ; 0E97 _ 68, 000000A0
        push    0                                       ; 0E9C _ 6A, 00
        push    edx                                     ; 0E9E _ 52
        push    eax                                     ; 0E9F _ 50
        call    showString                              ; 0EA0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EA5 _ 83. C4, 20
        call    taskswitch7                             ; 0EA8 _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 0EAD _ EB, 97
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0EAF _ 55
        mov     ebp, esp                                ; 0EB0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0EB2 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0EB5 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0EBB _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0EBE _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0EC4 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0EC7 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0ECD _ 90
        pop     ebp                                     ; 0ECE _ 5D
        ret                                             ; 0ECF _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0ED0 _ 55
        mov     ebp, esp                                ; 0ED1 _ 89. E5
        push    ebx                                     ; 0ED3 _ 53
        sub     esp, 36                                 ; 0ED4 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0ED7 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0EDA _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0EDD _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0EE0 _ 89. 45, F4
        jmp     ?_017                                   ; 0EE3 _ EB, 3E

?_016:  mov     eax, dword [ebp+1CH]                    ; 0EE5 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0EE8 _ 0F B6. 00
        movzx   eax, al                                 ; 0EEB _ 0F B6. C0
        shl     eax, 4                                  ; 0EEE _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0EF1 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0EF7 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0EFB _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0EFE _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0F01 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0F04 _ 8B. 00
        sub     esp, 8                                  ; 0F06 _ 83. EC, 08
        push    ebx                                     ; 0F09 _ 53
        push    ecx                                     ; 0F0A _ 51
        push    dword [ebp+14H]                         ; 0F0B _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0F0E _ FF. 75, 10
        push    edx                                     ; 0F11 _ 52
        push    eax                                     ; 0F12 _ 50
        call    showFont8                               ; 0F13 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F18 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0F1B _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0F1F _ 83. 45, 1C, 01
?_017:  mov     eax, dword [ebp+1CH]                    ; 0F23 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F26 _ 0F B6. 00
        test    al, al                                  ; 0F29 _ 84. C0
        jnz     ?_016                                   ; 0F2B _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0F2D _ 8B. 45, 14
        add     eax, 16                                 ; 0F30 _ 83. C0, 10
        sub     esp, 8                                  ; 0F33 _ 83. EC, 08
        push    eax                                     ; 0F36 _ 50
        push    dword [ebp+10H]                         ; 0F37 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0F3A _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0F3D _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0F40 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F43 _ FF. 75, 08
        call    sheet_refresh                           ; 0F46 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F4B _ 83. C4, 20
        nop                                             ; 0F4E _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F4F _ 8B. 5D, FC
        leave                                           ; 0F52 _ C9
        ret                                             ; 0F53 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0F54 _ 55
        mov     ebp, esp                                ; 0F55 _ 89. E5
        push    ebx                                     ; 0F57 _ 53
        sub     esp, 4                                  ; 0F58 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0F5B _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0F5E _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0F61 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0F64 _ 83. E8, 01
        sub     esp, 4                                  ; 0F67 _ 83. EC, 04
        push    edx                                     ; 0F6A _ 52
        push    eax                                     ; 0F6B _ 50
        push    0                                       ; 0F6C _ 6A, 00
        push    0                                       ; 0F6E _ 6A, 00
        push    14                                      ; 0F70 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0F72 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F75 _ FF. 75, 08
        call    boxfill8                                ; 0F78 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F7D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F80 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0F83 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0F86 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F89 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F8C _ 8B. 45, 10
        sub     eax, 24                                 ; 0F8F _ 83. E8, 18
        sub     esp, 4                                  ; 0F92 _ 83. EC, 04
        push    ecx                                     ; 0F95 _ 51
        push    edx                                     ; 0F96 _ 52
        push    eax                                     ; 0F97 _ 50
        push    0                                       ; 0F98 _ 6A, 00
        push    8                                       ; 0F9A _ 6A, 08
        push    dword [ebp+0CH]                         ; 0F9C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F9F _ FF. 75, 08
        call    boxfill8                                ; 0FA2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FA7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FAA _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0FAD _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0FB0 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0FB3 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0FB6 _ 8B. 45, 10
        sub     eax, 23                                 ; 0FB9 _ 83. E8, 17
        sub     esp, 4                                  ; 0FBC _ 83. EC, 04
        push    ecx                                     ; 0FBF _ 51
        push    edx                                     ; 0FC0 _ 52
        push    eax                                     ; 0FC1 _ 50
        push    0                                       ; 0FC2 _ 6A, 00
        push    7                                       ; 0FC4 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FC6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FC9 _ FF. 75, 08
        call    boxfill8                                ; 0FCC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FD1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FD4 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0FD7 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0FDA _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0FDD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0FE0 _ 8B. 45, 10
        sub     eax, 22                                 ; 0FE3 _ 83. E8, 16
        sub     esp, 4                                  ; 0FE6 _ 83. EC, 04
        push    ecx                                     ; 0FE9 _ 51
        push    edx                                     ; 0FEA _ 52
        push    eax                                     ; 0FEB _ 50
        push    0                                       ; 0FEC _ 6A, 00
        push    8                                       ; 0FEE _ 6A, 08
        push    dword [ebp+0CH]                         ; 0FF0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FF3 _ FF. 75, 08
        call    boxfill8                                ; 0FF6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FFB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FFE _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1001 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 1004 _ 8B. 45, 10
        sub     eax, 20                                 ; 1007 _ 83. E8, 14
        sub     esp, 4                                  ; 100A _ 83. EC, 04
        push    edx                                     ; 100D _ 52
        push    51                                      ; 100E _ 6A, 33
        push    eax                                     ; 1010 _ 50
        push    10                                      ; 1011 _ 6A, 0A
        push    7                                       ; 1013 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1015 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1018 _ FF. 75, 08
        call    boxfill8                                ; 101B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1020 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1023 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1026 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1029 _ 8B. 45, 10
        sub     eax, 20                                 ; 102C _ 83. E8, 14
        sub     esp, 4                                  ; 102F _ 83. EC, 04
        push    edx                                     ; 1032 _ 52
        push    9                                       ; 1033 _ 6A, 09
        push    eax                                     ; 1035 _ 50
        push    9                                       ; 1036 _ 6A, 09
        push    7                                       ; 1038 _ 6A, 07
        push    dword [ebp+0CH]                         ; 103A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 103D _ FF. 75, 08
        call    boxfill8                                ; 1040 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1045 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1048 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 104B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 104E _ 8B. 45, 10
        sub     eax, 4                                  ; 1051 _ 83. E8, 04
        sub     esp, 4                                  ; 1054 _ 83. EC, 04
        push    edx                                     ; 1057 _ 52
        push    50                                      ; 1058 _ 6A, 32
        push    eax                                     ; 105A _ 50
        push    10                                      ; 105B _ 6A, 0A
        push    15                                      ; 105D _ 6A, 0F
        push    dword [ebp+0CH]                         ; 105F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1062 _ FF. 75, 08
        call    boxfill8                                ; 1065 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 106A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 106D _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1070 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1073 _ 8B. 45, 10
        sub     eax, 19                                 ; 1076 _ 83. E8, 13
        sub     esp, 4                                  ; 1079 _ 83. EC, 04
        push    edx                                     ; 107C _ 52
        push    50                                      ; 107D _ 6A, 32
        push    eax                                     ; 107F _ 50
        push    50                                      ; 1080 _ 6A, 32
        push    15                                      ; 1082 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1084 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1087 _ FF. 75, 08
        call    boxfill8                                ; 108A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 108F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1092 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1095 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1098 _ 8B. 45, 10
        sub     eax, 3                                  ; 109B _ 83. E8, 03
        sub     esp, 4                                  ; 109E _ 83. EC, 04
        push    edx                                     ; 10A1 _ 52
        push    50                                      ; 10A2 _ 6A, 32
        push    eax                                     ; 10A4 _ 50
        push    10                                      ; 10A5 _ 6A, 0A
        push    0                                       ; 10A7 _ 6A, 00
        push    dword [ebp+0CH]                         ; 10A9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10AC _ FF. 75, 08
        call    boxfill8                                ; 10AF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10B4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10B7 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 10BA _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 10BD _ 8B. 45, 10
        sub     eax, 20                                 ; 10C0 _ 83. E8, 14
        sub     esp, 4                                  ; 10C3 _ 83. EC, 04
        push    edx                                     ; 10C6 _ 52
        push    51                                      ; 10C7 _ 6A, 33
        push    eax                                     ; 10C9 _ 50
        push    51                                      ; 10CA _ 6A, 33
        push    0                                       ; 10CC _ 6A, 00
        push    dword [ebp+0CH]                         ; 10CE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10D1 _ FF. 75, 08
        call    boxfill8                                ; 10D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10D9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10DC _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 10DF _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 10E2 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 10E5 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 10E8 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 10EB _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 10EE _ 8B. 45, 0C
        sub     eax, 47                                 ; 10F1 _ 83. E8, 2F
        sub     esp, 4                                  ; 10F4 _ 83. EC, 04
        push    ebx                                     ; 10F7 _ 53
        push    ecx                                     ; 10F8 _ 51
        push    edx                                     ; 10F9 _ 52
        push    eax                                     ; 10FA _ 50
        push    15                                      ; 10FB _ 6A, 0F
        push    dword [ebp+0CH]                         ; 10FD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1100 _ FF. 75, 08
        call    boxfill8                                ; 1103 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1108 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 110B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 110E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1111 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1114 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1117 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 111A _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 111D _ 8B. 45, 0C
        sub     eax, 47                                 ; 1120 _ 83. E8, 2F
        sub     esp, 4                                  ; 1123 _ 83. EC, 04
        push    ebx                                     ; 1126 _ 53
        push    ecx                                     ; 1127 _ 51
        push    edx                                     ; 1128 _ 52
        push    eax                                     ; 1129 _ 50
        push    15                                      ; 112A _ 6A, 0F
        push    dword [ebp+0CH]                         ; 112C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 112F _ FF. 75, 08
        call    boxfill8                                ; 1132 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1137 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 113A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 113D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1140 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1143 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1146 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1149 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 114C _ 8B. 45, 0C
        sub     eax, 47                                 ; 114F _ 83. E8, 2F
        sub     esp, 4                                  ; 1152 _ 83. EC, 04
        push    ebx                                     ; 1155 _ 53
        push    ecx                                     ; 1156 _ 51
        push    edx                                     ; 1157 _ 52
        push    eax                                     ; 1158 _ 50
        push    7                                       ; 1159 _ 6A, 07
        push    dword [ebp+0CH]                         ; 115B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 115E _ FF. 75, 08
        call    boxfill8                                ; 1161 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1166 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1169 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 116C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 116F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1172 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1175 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1178 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 117B _ 8B. 45, 0C
        sub     eax, 3                                  ; 117E _ 83. E8, 03
        sub     esp, 4                                  ; 1181 _ 83. EC, 04
        push    ebx                                     ; 1184 _ 53
        push    ecx                                     ; 1185 _ 51
        push    edx                                     ; 1186 _ 52
        push    eax                                     ; 1187 _ 50
        push    7                                       ; 1188 _ 6A, 07
        push    dword [ebp+0CH]                         ; 118A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 118D _ FF. 75, 08
        call    boxfill8                                ; 1190 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1195 _ 83. C4, 20
        nop                                             ; 1198 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1199 _ 8B. 5D, FC
        leave                                           ; 119C _ C9
        ret                                             ; 119D _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 119E _ 55
        mov     ebp, esp                                ; 119F _ 89. E5
        sub     esp, 24                                 ; 11A1 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 11A4 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 11A9 _ 89. 45, EC
        movzx   eax, word [?_183]                       ; 11AC _ 0F B7. 05, 00000004(d)
        cwde                                            ; 11B3 _ 98
        mov     dword [ebp-10H], eax                    ; 11B4 _ 89. 45, F0
        movzx   eax, word [?_184]                       ; 11B7 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 11BE _ 98
        mov     dword [ebp-0CH], eax                    ; 11BF _ 89. 45, F4
        sub     esp, 4                                  ; 11C2 _ 83. EC, 04
        push    table_rgb.1809                          ; 11C5 _ 68, 00000080(d)
        push    15                                      ; 11CA _ 6A, 0F
        push    0                                       ; 11CC _ 6A, 00
        call    set_palette                             ; 11CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11D3 _ 83. C4, 10
        nop                                             ; 11D6 _ 90
        leave                                           ; 11D7 _ C9
        ret                                             ; 11D8 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 11D9 _ 55
        mov     ebp, esp                                ; 11DA _ 89. E5
        sub     esp, 24                                 ; 11DC _ 83. EC, 18
        call    io_load_eflags                          ; 11DF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 11E4 _ 89. 45, F4
        call    io_cli                                  ; 11E7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 11EC _ 83. EC, 08
        push    dword [ebp+8H]                          ; 11EF _ FF. 75, 08
        push    968                                     ; 11F2 _ 68, 000003C8
        call    io_out8                                 ; 11F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11FC _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 11FF _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1202 _ 89. 45, F0
        jmp     ?_019                                   ; 1205 _ EB, 65

?_018:  mov     eax, dword [ebp+10H]                    ; 1207 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 120A _ 0F B6. 00
        shr     al, 2                                   ; 120D _ C0. E8, 02
        movzx   eax, al                                 ; 1210 _ 0F B6. C0
        sub     esp, 8                                  ; 1213 _ 83. EC, 08
        push    eax                                     ; 1216 _ 50
        push    969                                     ; 1217 _ 68, 000003C9
        call    io_out8                                 ; 121C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1221 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1224 _ 8B. 45, 10
        add     eax, 1                                  ; 1227 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 122A _ 0F B6. 00
        shr     al, 2                                   ; 122D _ C0. E8, 02
        movzx   eax, al                                 ; 1230 _ 0F B6. C0
        sub     esp, 8                                  ; 1233 _ 83. EC, 08
        push    eax                                     ; 1236 _ 50
        push    969                                     ; 1237 _ 68, 000003C9
        call    io_out8                                 ; 123C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1241 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1244 _ 8B. 45, 10
        add     eax, 2                                  ; 1247 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 124A _ 0F B6. 00
        shr     al, 2                                   ; 124D _ C0. E8, 02
        movzx   eax, al                                 ; 1250 _ 0F B6. C0
        sub     esp, 8                                  ; 1253 _ 83. EC, 08
        push    eax                                     ; 1256 _ 50
        push    969                                     ; 1257 _ 68, 000003C9
        call    io_out8                                 ; 125C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1261 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1264 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 1268 _ 83. 45, F0, 01
?_019:  mov     eax, dword [ebp-10H]                    ; 126C _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 126F _ 3B. 45, 0C
        jle     ?_018                                   ; 1272 _ 7E, 93
        sub     esp, 12                                 ; 1274 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 1277 _ FF. 75, F4
        call    io_store_eflags                         ; 127A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 127F _ 83. C4, 10
        nop                                             ; 1282 _ 90
        leave                                           ; 1283 _ C9
        ret                                             ; 1284 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1285 _ 55
        mov     ebp, esp                                ; 1286 _ 89. E5
        sub     esp, 20                                 ; 1288 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 128B _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 128E _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1291 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1294 _ 89. 45, FC
        jmp     ?_023                                   ; 1297 _ EB, 33

?_020:  mov     eax, dword [ebp+14H]                    ; 1299 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 129C _ 89. 45, F8
        jmp     ?_022                                   ; 129F _ EB, 1F

?_021:  mov     eax, dword [ebp-4H]                     ; 12A1 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 12A4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 12A8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12AA _ 8B. 45, F8
        add     eax, edx                                ; 12AD _ 01. D0
        mov     edx, eax                                ; 12AF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12B1 _ 8B. 45, 08
        add     edx, eax                                ; 12B4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12B6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12BA _ 88. 02
        add     dword [ebp-8H], 1                       ; 12BC _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 12C0 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 12C3 _ 3B. 45, 1C
        jle     ?_021                                   ; 12C6 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 12C8 _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 12CC _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 12CF _ 3B. 45, 20
        jle     ?_020                                   ; 12D2 _ 7E, C5
        nop                                             ; 12D4 _ 90
        leave                                           ; 12D5 _ C9
        ret                                             ; 12D6 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 12D7 _ 55
        mov     ebp, esp                                ; 12D8 _ 89. E5
        push    edi                                     ; 12DA _ 57
        push    esi                                     ; 12DB _ 56
        push    ebx                                     ; 12DC _ 53
        sub     esp, 16                                 ; 12DD _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 12E0 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 12E3 _ 8B. 45, 14
        add     eax, edx                                ; 12E6 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 12E8 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 12EB _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 12EE _ 8B. 45, 18
        add     eax, edx                                ; 12F1 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 12F3 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 12F6 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 12F9 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 12FC _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 12FF _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1302 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1305 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1308 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 130B _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 130E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1311 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1314 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1317 _ 8B. 00
        push    edi                                     ; 1319 _ 57
        push    esi                                     ; 131A _ 56
        push    ebx                                     ; 131B _ 53
        push    ecx                                     ; 131C _ 51
        push    15                                      ; 131D _ 6A, 0F
        push    edx                                     ; 131F _ 52
        push    eax                                     ; 1320 _ 50
        call    boxfill8                                ; 1321 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1326 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1329 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 132C _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 132F _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1332 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1335 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1338 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 133B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 133E _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1341 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1344 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1347 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 134A _ 8B. 00
        push    edi                                     ; 134C _ 57
        push    esi                                     ; 134D _ 56
        push    ebx                                     ; 134E _ 53
        push    ecx                                     ; 134F _ 51
        push    15                                      ; 1350 _ 6A, 0F
        push    edx                                     ; 1352 _ 52
        push    eax                                     ; 1353 _ 50
        call    boxfill8                                ; 1354 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1359 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 135C _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 135F _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1362 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1365 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1368 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 136B _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 136E _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1371 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1374 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1377 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 137A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 137D _ 8B. 00
        push    edi                                     ; 137F _ 57
        push    esi                                     ; 1380 _ 56
        push    ebx                                     ; 1381 _ 53
        push    ecx                                     ; 1382 _ 51
        push    7                                       ; 1383 _ 6A, 07
        push    edx                                     ; 1385 _ 52
        push    eax                                     ; 1386 _ 50
        call    boxfill8                                ; 1387 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 138C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 138F _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1392 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1395 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1398 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 139B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 139E _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 13A1 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 13A4 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 13A7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13AA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13AD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13B0 _ 8B. 00
        push    edi                                     ; 13B2 _ 57
        push    esi                                     ; 13B3 _ 56
        push    ebx                                     ; 13B4 _ 53
        push    ecx                                     ; 13B5 _ 51
        push    7                                       ; 13B6 _ 6A, 07
        push    edx                                     ; 13B8 _ 52
        push    eax                                     ; 13B9 _ 50
        call    boxfill8                                ; 13BA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13BF _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 13C2 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 13C5 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 13C8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13CB _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 13CE _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 13D1 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 13D4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13D7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13DA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13DD _ 8B. 00
        push    esi                                     ; 13DF _ 56
        push    dword [ebp-14H]                         ; 13E0 _ FF. 75, EC
        push    ebx                                     ; 13E3 _ 53
        push    ecx                                     ; 13E4 _ 51
        push    0                                       ; 13E5 _ 6A, 00
        push    edx                                     ; 13E7 _ 52
        push    eax                                     ; 13E8 _ 50
        call    boxfill8                                ; 13E9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13EE _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 13F1 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 13F4 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 13F7 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13FA _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 13FD _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1400 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1403 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1406 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1409 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 140C _ 8B. 00
        push    dword [ebp-10H]                         ; 140E _ FF. 75, F0
        push    esi                                     ; 1411 _ 56
        push    ebx                                     ; 1412 _ 53
        push    ecx                                     ; 1413 _ 51
        push    0                                       ; 1414 _ 6A, 00
        push    edx                                     ; 1416 _ 52
        push    eax                                     ; 1417 _ 50
        call    boxfill8                                ; 1418 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 141D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1420 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1423 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1426 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1429 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 142C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 142F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1432 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1435 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1438 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 143B _ 8B. 00
        push    esi                                     ; 143D _ 56
        push    dword [ebp-14H]                         ; 143E _ FF. 75, EC
        push    ebx                                     ; 1441 _ 53
        push    ecx                                     ; 1442 _ 51
        push    8                                       ; 1443 _ 6A, 08
        push    edx                                     ; 1445 _ 52
        push    eax                                     ; 1446 _ 50
        call    boxfill8                                ; 1447 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 144C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 144F _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1452 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1455 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1458 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 145B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 145E _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1461 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1464 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1467 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 146A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 146D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1470 _ 8B. 00
        push    edi                                     ; 1472 _ 57
        push    esi                                     ; 1473 _ 56
        push    ebx                                     ; 1474 _ 53
        push    ecx                                     ; 1475 _ 51
        push    8                                       ; 1476 _ 6A, 08
        push    edx                                     ; 1478 _ 52
        push    eax                                     ; 1479 _ 50
        call    boxfill8                                ; 147A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 147F _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1482 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1485 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1488 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 148B _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 148E _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1491 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1494 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1497 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 149A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 149D _ 8B. 00
        push    dword [ebp-10H]                         ; 149F _ FF. 75, F0
        push    dword [ebp-14H]                         ; 14A2 _ FF. 75, EC
        push    esi                                     ; 14A5 _ 56
        push    ebx                                     ; 14A6 _ 53
        push    ecx                                     ; 14A7 _ 51
        push    edx                                     ; 14A8 _ 52
        push    eax                                     ; 14A9 _ 50
        call    boxfill8                                ; 14AA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 14AF _ 83. C4, 1C
        nop                                             ; 14B2 _ 90
        lea     esp, [ebp-0CH]                          ; 14B3 _ 8D. 65, F4
        pop     ebx                                     ; 14B6 _ 5B
        pop     esi                                     ; 14B7 _ 5E
        pop     edi                                     ; 14B8 _ 5F
        pop     ebp                                     ; 14B9 _ 5D
        ret                                             ; 14BA _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 14BB _ 55
        mov     ebp, esp                                ; 14BC _ 89. E5
        sub     esp, 20                                 ; 14BE _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 14C1 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 14C4 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 14C7 _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 14CE _ E9, 0000016C

?_024:  mov     edx, dword [ebp-4H]                     ; 14D3 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 14D6 _ 8B. 45, 1C
        add     eax, edx                                ; 14D9 _ 01. D0
        movzx   eax, byte [eax]                         ; 14DB _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 14DE _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 14E1 _ 80. 7D, FB, 00
        jns     ?_025                                   ; 14E5 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 14E7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14EA _ 8B. 45, FC
        add     eax, edx                                ; 14ED _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14EF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14F3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14F5 _ 8B. 45, 10
        add     eax, edx                                ; 14F8 _ 01. D0
        mov     edx, eax                                ; 14FA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14FC _ 8B. 45, 08
        add     edx, eax                                ; 14FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1501 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1505 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 1507 _ 0F BE. 45, FB
        and     eax, 40H                                ; 150B _ 83. E0, 40
        test    eax, eax                                ; 150E _ 85. C0
        jz      ?_026                                   ; 1510 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1512 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1515 _ 8B. 45, FC
        add     eax, edx                                ; 1518 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 151A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 151E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1520 _ 8B. 45, 10
        add     eax, edx                                ; 1523 _ 01. D0
        lea     edx, [eax+1H]                           ; 1525 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1528 _ 8B. 45, 08
        add     edx, eax                                ; 152B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 152D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1531 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1533 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1537 _ 83. E0, 20
        test    eax, eax                                ; 153A _ 85. C0
        jz      ?_027                                   ; 153C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 153E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1541 _ 8B. 45, FC
        add     eax, edx                                ; 1544 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1546 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 154A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 154C _ 8B. 45, 10
        add     eax, edx                                ; 154F _ 01. D0
        lea     edx, [eax+2H]                           ; 1551 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1554 _ 8B. 45, 08
        add     edx, eax                                ; 1557 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1559 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 155D _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 155F _ 0F BE. 45, FB
        and     eax, 10H                                ; 1563 _ 83. E0, 10
        test    eax, eax                                ; 1566 _ 85. C0
        jz      ?_028                                   ; 1568 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 156A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 156D _ 8B. 45, FC
        add     eax, edx                                ; 1570 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1572 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1576 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1578 _ 8B. 45, 10
        add     eax, edx                                ; 157B _ 01. D0
        lea     edx, [eax+3H]                           ; 157D _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1580 _ 8B. 45, 08
        add     edx, eax                                ; 1583 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1585 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1589 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 158B _ 0F BE. 45, FB
        and     eax, 08H                                ; 158F _ 83. E0, 08
        test    eax, eax                                ; 1592 _ 85. C0
        jz      ?_029                                   ; 1594 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1596 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1599 _ 8B. 45, FC
        add     eax, edx                                ; 159C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 159E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15A2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15A4 _ 8B. 45, 10
        add     eax, edx                                ; 15A7 _ 01. D0
        lea     edx, [eax+4H]                           ; 15A9 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15AC _ 8B. 45, 08
        add     edx, eax                                ; 15AF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15B1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15B5 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 15B7 _ 0F BE. 45, FB
        and     eax, 04H                                ; 15BB _ 83. E0, 04
        test    eax, eax                                ; 15BE _ 85. C0
        jz      ?_030                                   ; 15C0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 15C2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15C5 _ 8B. 45, FC
        add     eax, edx                                ; 15C8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15CA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15CE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15D0 _ 8B. 45, 10
        add     eax, edx                                ; 15D3 _ 01. D0
        lea     edx, [eax+5H]                           ; 15D5 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 15D8 _ 8B. 45, 08
        add     edx, eax                                ; 15DB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15DD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15E1 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 15E3 _ 0F BE. 45, FB
        and     eax, 02H                                ; 15E7 _ 83. E0, 02
        test    eax, eax                                ; 15EA _ 85. C0
        jz      ?_031                                   ; 15EC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 15EE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15F1 _ 8B. 45, FC
        add     eax, edx                                ; 15F4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15F6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15FA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15FC _ 8B. 45, 10
        add     eax, edx                                ; 15FF _ 01. D0
        lea     edx, [eax+6H]                           ; 1601 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1604 _ 8B. 45, 08
        add     edx, eax                                ; 1607 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1609 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 160D _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 160F _ 0F BE. 45, FB
        and     eax, 01H                                ; 1613 _ 83. E0, 01
        test    eax, eax                                ; 1616 _ 85. C0
        jz      ?_032                                   ; 1618 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 161A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 161D _ 8B. 45, FC
        add     eax, edx                                ; 1620 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1622 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1626 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1628 _ 8B. 45, 10
        add     eax, edx                                ; 162B _ 01. D0
        lea     edx, [eax+7H]                           ; 162D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1630 _ 8B. 45, 08
        add     edx, eax                                ; 1633 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1635 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1639 _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 163B _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 163F _ 83. 7D, FC, 0F
        jle     ?_024                                   ; 1643 _ 0F 8E, FFFFFE8A
        nop                                             ; 1649 _ 90
        leave                                           ; 164A _ C9
        ret                                             ; 164B _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 164C _ 55
        mov     ebp, esp                                ; 164D _ 89. E5
        sub     esp, 20                                 ; 164F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1652 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1655 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1658 _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 165F _ E9, 000000B1

?_034:  mov     dword [ebp-8H], 0                       ; 1664 _ C7. 45, F8, 00000000
        jmp     ?_039                                   ; 166B _ E9, 00000097

?_035:  mov     eax, dword [ebp-4H]                     ; 1670 _ 8B. 45, FC
        shl     eax, 4                                  ; 1673 _ C1. E0, 04
        mov     edx, eax                                ; 1676 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1678 _ 8B. 45, F8
        add     eax, edx                                ; 167B _ 01. D0
        add     eax, cursor.1864                        ; 167D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1682 _ 0F B6. 00
        cmp     al, 42                                  ; 1685 _ 3C, 2A
        jnz     ?_036                                   ; 1687 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1689 _ 8B. 45, FC
        shl     eax, 4                                  ; 168C _ C1. E0, 04
        mov     edx, eax                                ; 168F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1691 _ 8B. 45, F8
        add     eax, edx                                ; 1694 _ 01. D0
        mov     edx, eax                                ; 1696 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1698 _ 8B. 45, 08
        add     eax, edx                                ; 169B _ 01. D0
        mov     byte [eax], 0                           ; 169D _ C6. 00, 00
?_036:  mov     eax, dword [ebp-4H]                     ; 16A0 _ 8B. 45, FC
        shl     eax, 4                                  ; 16A3 _ C1. E0, 04
        mov     edx, eax                                ; 16A6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16A8 _ 8B. 45, F8
        add     eax, edx                                ; 16AB _ 01. D0
        add     eax, cursor.1864                        ; 16AD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 16B2 _ 0F B6. 00
        cmp     al, 79                                  ; 16B5 _ 3C, 4F
        jnz     ?_037                                   ; 16B7 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 16B9 _ 8B. 45, FC
        shl     eax, 4                                  ; 16BC _ C1. E0, 04
        mov     edx, eax                                ; 16BF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16C1 _ 8B. 45, F8
        add     eax, edx                                ; 16C4 _ 01. D0
        mov     edx, eax                                ; 16C6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16C8 _ 8B. 45, 08
        add     eax, edx                                ; 16CB _ 01. D0
        mov     byte [eax], 7                           ; 16CD _ C6. 00, 07
?_037:  mov     eax, dword [ebp-4H]                     ; 16D0 _ 8B. 45, FC
        shl     eax, 4                                  ; 16D3 _ C1. E0, 04
        mov     edx, eax                                ; 16D6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16D8 _ 8B. 45, F8
        add     eax, edx                                ; 16DB _ 01. D0
        add     eax, cursor.1864                        ; 16DD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 16E2 _ 0F B6. 00
        cmp     al, 46                                  ; 16E5 _ 3C, 2E
        jnz     ?_038                                   ; 16E7 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 16E9 _ 8B. 45, FC
        shl     eax, 4                                  ; 16EC _ C1. E0, 04
        mov     edx, eax                                ; 16EF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16F1 _ 8B. 45, F8
        add     eax, edx                                ; 16F4 _ 01. D0
        mov     edx, eax                                ; 16F6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16F8 _ 8B. 45, 08
        add     edx, eax                                ; 16FB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 16FD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1701 _ 88. 02
?_038:  add     dword [ebp-8H], 1                       ; 1703 _ 83. 45, F8, 01
?_039:  cmp     dword [ebp-8H], 15                      ; 1707 _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 170B _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1711 _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 1715 _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 1719 _ 0F 8E, FFFFFF45
        nop                                             ; 171F _ 90
        leave                                           ; 1720 _ C9
        ret                                             ; 1721 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1722 _ 55
        mov     ebp, esp                                ; 1723 _ 89. E5
        push    ebx                                     ; 1725 _ 53
        sub     esp, 16                                 ; 1726 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1729 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 1730 _ EB, 50

?_041:  mov     dword [ebp-0CH], 0                      ; 1732 _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 1739 _ EB, 3B

?_042:  mov     eax, dword [ebp-8H]                     ; 173B _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 173E _ 0F AF. 45, 24
        mov     edx, eax                                ; 1742 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1744 _ 8B. 45, F4
        add     eax, edx                                ; 1747 _ 01. D0
        mov     edx, eax                                ; 1749 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 174B _ 8B. 45, 20
        add     eax, edx                                ; 174E _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1750 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1753 _ 8B. 55, F8
        add     edx, ecx                                ; 1756 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1758 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 175C _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 175F _ 8B. 4D, F4
        add     ecx, ebx                                ; 1762 _ 01. D9
        add     edx, ecx                                ; 1764 _ 01. CA
        mov     ecx, edx                                ; 1766 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1768 _ 8B. 55, 08
        add     edx, ecx                                ; 176B _ 01. CA
        movzx   eax, byte [eax]                         ; 176D _ 0F B6. 00
        mov     byte [edx], al                          ; 1770 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1772 _ 83. 45, F4, 01
?_043:  mov     eax, dword [ebp-0CH]                    ; 1776 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1779 _ 3B. 45, 10
        jl      ?_042                                   ; 177C _ 7C, BD
        add     dword [ebp-8H], 1                       ; 177E _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 1782 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1785 _ 3B. 45, 14
        jl      ?_041                                   ; 1788 _ 7C, A8
        nop                                             ; 178A _ 90
        add     esp, 16                                 ; 178B _ 83. C4, 10
        pop     ebx                                     ; 178E _ 5B
        pop     ebp                                     ; 178F _ 5D
        ret                                             ; 1790 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1791 _ 55
        mov     ebp, esp                                ; 1792 _ 89. E5
        sub     esp, 24                                 ; 1794 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1797 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 179C _ 89. 45, EC
        movzx   eax, word [?_183]                       ; 179F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 17A6 _ 98
        mov     dword [ebp-10H], eax                    ; 17A7 _ 89. 45, F0
        movzx   eax, word [?_184]                       ; 17AA _ 0F B7. 05, 00000006(d)
        cwde                                            ; 17B1 _ 98
        mov     dword [ebp-0CH], eax                    ; 17B2 _ 89. 45, F4
        sub     esp, 8                                  ; 17B5 _ 83. EC, 08
        push    32                                      ; 17B8 _ 6A, 20
        push    32                                      ; 17BA _ 6A, 20
        call    io_out8                                 ; 17BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17C1 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 17C4 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 17C8 _ 83. EC, 0C
        push    96                                      ; 17CB _ 6A, 60
        call    io_in8                                  ; 17CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17D2 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 17D5 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 17D8 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 17DC _ 83. EC, 08
        push    eax                                     ; 17DF _ 50
        push    keyInfo                                 ; 17E0 _ 68, 00000008(d)
        call    fifo8_put                               ; 17E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17EA _ 83. C4, 10
        nop                                             ; 17ED _ 90
        leave                                           ; 17EE _ C9
        ret                                             ; 17EF _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 17F0 _ 55
        mov     ebp, esp                                ; 17F1 _ 89. E5
        sub     esp, 40                                 ; 17F3 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 17F6 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 17F9 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 17FC _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1800 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1803 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1806 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 180A _ 83. EC, 0C
        push    eax                                     ; 180D _ 50
        call    charToVal                               ; 180E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1813 _ 83. C4, 10
        mov     byte [?_182], al                        ; 1816 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 181B _ 0F B6. 45, E4
        shr     al, 4                                   ; 181F _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1822 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1825 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1829 _ 0F BE. C0
        sub     esp, 12                                 ; 182C _ 83. EC, 0C
        push    eax                                     ; 182F _ 50
        call    charToVal                               ; 1830 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1835 _ 83. C4, 10
        mov     byte [?_181], al                        ; 1838 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 183D _ B8, 00000000(d)
        leave                                           ; 1842 _ C9
        ret                                             ; 1843 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1844 _ 55
        mov     ebp, esp                                ; 1845 _ 89. E5
        sub     esp, 4                                  ; 1847 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 184A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 184D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1850 _ 80. 7D, FC, 09
        jle     ?_045                                   ; 1854 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1856 _ 0F B6. 45, FC
        add     eax, 55                                 ; 185A _ 83. C0, 37
        jmp     ?_046                                   ; 185D _ EB, 07

?_045:  movzx   eax, byte [ebp-4H]                      ; 185F _ 0F B6. 45, FC
        add     eax, 48                                 ; 1863 _ 83. C0, 30
?_046:  leave                                           ; 1866 _ C9
        ret                                             ; 1867 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1868 _ 55
        mov     ebp, esp                                ; 1869 _ 89. E5
        sub     esp, 16                                 ; 186B _ 83. EC, 10
        mov     byte [str.1907], 48                     ; 186E _ C6. 05, 00000330(d), 30
        mov     byte [?_215], 120                       ; 1875 _ C6. 05, 00000331(d), 78
        mov     byte [?_216], 0                         ; 187C _ C6. 05, 0000033A(d), 00
        mov     dword [ebp-0CH], 2                      ; 1883 _ C7. 45, F4, 00000002
        jmp     ?_048                                   ; 188A _ EB, 0F

?_047:  mov     eax, dword [ebp-0CH]                    ; 188C _ 8B. 45, F4
        add     eax, str.1907                           ; 188F _ 05, 00000330(d)
        mov     byte [eax], 48                          ; 1894 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1897 _ 83. 45, F4, 01
?_048:  cmp     dword [ebp-0CH], 9                      ; 189B _ 83. 7D, F4, 09
        jle     ?_047                                   ; 189F _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 18A1 _ C7. 45, F8, 00000009
        jmp     ?_051                                   ; 18A8 _ EB, 48

?_049:  mov     eax, dword [ebp+8H]                     ; 18AA _ 8B. 45, 08
        and     eax, 0FH                                ; 18AD _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 18B0 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 18B3 _ 8B. 45, 08
        shr     eax, 4                                  ; 18B6 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 18B9 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 18BC _ 83. 7D, FC, 09
        jle     ?_050                                   ; 18C0 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 18C2 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 18C5 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 18C8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 18CB _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 18CE _ 89. 55, F8
        mov     edx, ecx                                ; 18D1 _ 89. CA
        mov     byte [str.1907+eax], dl                 ; 18D3 _ 88. 90, 00000330(d)
        jmp     ?_051                                   ; 18D9 _ EB, 17

?_050:  mov     eax, dword [ebp-4H]                     ; 18DB _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 18DE _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 18E1 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 18E4 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 18E7 _ 89. 55, F8
        mov     edx, ecx                                ; 18EA _ 89. CA
        mov     byte [str.1907+eax], dl                 ; 18EC _ 88. 90, 00000330(d)
?_051:  cmp     dword [ebp-8H], 1                       ; 18F2 _ 83. 7D, F8, 01
        jle     ?_052                                   ; 18F6 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 18F8 _ 83. 7D, 08, 00
        jnz     ?_049                                   ; 18FC _ 75, AC
?_052:  mov     eax, str.1907                           ; 18FE _ B8, 00000330(d)
        leave                                           ; 1903 _ C9
        ret                                             ; 1904 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1905 _ 55
        mov     ebp, esp                                ; 1906 _ 89. E5
        sub     esp, 8                                  ; 1908 _ 83. EC, 08
?_053:  sub     esp, 12                                 ; 190B _ 83. EC, 0C
        push    100                                     ; 190E _ 6A, 64
        call    io_in8                                  ; 1910 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1915 _ 83. C4, 10
        movsx   eax, al                                 ; 1918 _ 0F BE. C0
        and     eax, 02H                                ; 191B _ 83. E0, 02
        test    eax, eax                                ; 191E _ 85. C0
        jz      ?_054                                   ; 1920 _ 74, 02
        jmp     ?_053                                   ; 1922 _ EB, E7

?_054:  nop                                             ; 1924 _ 90
        nop                                             ; 1925 _ 90
        leave                                           ; 1926 _ C9
        ret                                             ; 1927 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1928 _ 55
        mov     ebp, esp                                ; 1929 _ 89. E5
        sub     esp, 8                                  ; 192B _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 192E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1933 _ 83. EC, 08
        push    96                                      ; 1936 _ 6A, 60
        push    100                                     ; 1938 _ 6A, 64
        call    io_out8                                 ; 193A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 193F _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1942 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1947 _ 83. EC, 08
        push    71                                      ; 194A _ 6A, 47
        push    96                                      ; 194C _ 6A, 60
        call    io_out8                                 ; 194E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1953 _ 83. C4, 10
        nop                                             ; 1956 _ 90
        leave                                           ; 1957 _ C9
        ret                                             ; 1958 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1959 _ 55
        mov     ebp, esp                                ; 195A _ 89. E5
        sub     esp, 8                                  ; 195C _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 195F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1964 _ 83. EC, 08
        push    212                                     ; 1967 _ 68, 000000D4
        push    100                                     ; 196C _ 6A, 64
        call    io_out8                                 ; 196E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1973 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1976 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 197B _ 83. EC, 08
        push    244                                     ; 197E _ 68, 000000F4
        push    96                                      ; 1983 _ 6A, 60
        call    io_out8                                 ; 1985 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 198A _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 198D _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1990 _ C6. 40, 03, 00
        nop                                             ; 1994 _ 90
        leave                                           ; 1995 _ C9
        ret                                             ; 1996 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1997 _ 55
        mov     ebp, esp                                ; 1998 _ 89. E5
        sub     esp, 24                                 ; 199A _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 199D _ C6. 45, F7, 00
        sub     esp, 8                                  ; 19A1 _ 83. EC, 08
        push    32                                      ; 19A4 _ 6A, 20
        push    160                                     ; 19A6 _ 68, 000000A0
        call    io_out8                                 ; 19AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19B0 _ 83. C4, 10
        sub     esp, 8                                  ; 19B3 _ 83. EC, 08
        push    32                                      ; 19B6 _ 6A, 20
        push    32                                      ; 19B8 _ 6A, 20
        call    io_out8                                 ; 19BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19BF _ 83. C4, 10
        sub     esp, 12                                 ; 19C2 _ 83. EC, 0C
        push    96                                      ; 19C5 _ 6A, 60
        call    io_in8                                  ; 19C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19CC _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 19CF _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 19D2 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 19D6 _ 83. EC, 08
        push    eax                                     ; 19D9 _ 50
        push    mouseInfo                               ; 19DA _ 68, 00000020(d)
        call    fifo8_put                               ; 19DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19E4 _ 83. C4, 10
        nop                                             ; 19E7 _ 90
        leave                                           ; 19E8 _ C9
        ret                                             ; 19E9 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 19EA _ 55
        mov     ebp, esp                                ; 19EB _ 89. E5
        sub     esp, 40                                 ; 19ED _ 83. EC, 28
        call    io_sti                                  ; 19F0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 19F5 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 19FA _ 89. 45, E8
        movzx   eax, word [?_183]                       ; 19FD _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1A04 _ 98
        mov     dword [ebp-14H], eax                    ; 1A05 _ 89. 45, EC
        movzx   eax, word [?_184]                       ; 1A08 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1A0F _ 98
        mov     dword [ebp-10H], eax                    ; 1A10 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1A13 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1A17 _ 83. EC, 0C
        push    keyInfo                                 ; 1A1A _ 68, 00000008(d)
        call    fifo8_get                               ; 1A1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A24 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1A27 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1A2A _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1A2E _ 83. EC, 0C
        push    eax                                     ; 1A31 _ 50
        call    charToHex                               ; 1A32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A37 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1A3A _ 89. 45, F4
        mov     edx, dword [line.1940]                  ; 1A3D _ 8B. 15, 0000033C(d)
        mov     eax, dword [pos.1939]                   ; 1A43 _ A1, 00000340(d)
        sub     esp, 8                                  ; 1A48 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1A4B _ FF. 75, F4
        push    7                                       ; 1A4E _ 6A, 07
        push    edx                                     ; 1A50 _ 52
        push    eax                                     ; 1A51 _ 50
        push    dword [ebp+0CH]                         ; 1A52 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A55 _ FF. 75, 08
        call    showString                              ; 1A58 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A5D _ 83. C4, 20
        mov     eax, dword [pos.1939]                   ; 1A60 _ A1, 00000340(d)
        add     eax, 32                                 ; 1A65 _ 83. C0, 20
        mov     dword [pos.1939], eax                   ; 1A68 _ A3, 00000340(d)
        mov     eax, dword [pos.1939]                   ; 1A6D _ A1, 00000340(d)
        cmp     dword [ebp-14H], eax                    ; 1A72 _ 39. 45, EC
        jnz     ?_057                                   ; 1A75 _ 75, 28
        mov     eax, dword [line.1940]                  ; 1A77 _ A1, 0000033C(d)
        cmp     dword [ebp-10H], eax                    ; 1A7C _ 39. 45, F0
        jz      ?_055                                   ; 1A7F _ 74, 0A
        mov     eax, dword [line.1940]                  ; 1A81 _ A1, 0000033C(d)
        add     eax, 16                                 ; 1A86 _ 83. C0, 10
        jmp     ?_056                                   ; 1A89 _ EB, 05

?_055:  mov     eax, 0                                  ; 1A8B _ B8, 00000000
?_056:  mov     dword [line.1940], eax                  ; 1A90 _ A3, 0000033C(d)
        mov     dword [pos.1939], 0                     ; 1A95 _ C7. 05, 00000340(d), 00000000
?_057:  nop                                             ; 1A9F _ 90
        leave                                           ; 1AA0 _ C9
        ret                                             ; 1AA1 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1AA2 _ 55
        mov     ebp, esp                                ; 1AA3 _ 89. E5
        sub     esp, 24                                 ; 1AA5 _ 83. EC, 18
        call    io_sti                                  ; 1AA8 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1AAD _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1AB1 _ 83. EC, 0C
        push    mouseInfo                               ; 1AB4 _ 68, 00000020(d)
        call    fifo8_get                               ; 1AB9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ABE _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1AC1 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1AC4 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1AC8 _ 83. EC, 08
        push    eax                                     ; 1ACB _ 50
        push    mouse_move                              ; 1ACC _ 68, 000000E0(d)
        call    mouse_decode                            ; 1AD1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AD6 _ 83. C4, 10
        test    eax, eax                                ; 1AD9 _ 85. C0
        jz      ?_058                                   ; 1ADB _ 74, 60
        sub     esp, 4                                  ; 1ADD _ 83. EC, 04
        push    mouse_move                              ; 1AE0 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1AE5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AE8 _ FF. 75, 08
        call    computeMousePos                         ; 1AEB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AF0 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1AF3 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1AF9 _ A1, 000000F0(d)
        push    edx                                     ; 1AFE _ 52
        push    eax                                     ; 1AFF _ 50
        push    dword [ebp+10H]                         ; 1B00 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1B03 _ FF. 75, 08
        call    sheet_slide                             ; 1B06 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B0B _ 83. C4, 10
        mov     eax, dword [?_185]                      ; 1B0E _ A1, 000000EC(d)
        and     eax, 01H                                ; 1B13 _ 83. E0, 01
        test    eax, eax                                ; 1B16 _ 85. C0
        jz      ?_058                                   ; 1B18 _ 74, 23
        mov     eax, dword [my]                         ; 1B1A _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1B1F _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1B22 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1B27 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1B2A _ A1, 00000224(d)
        push    ecx                                     ; 1B2F _ 51
        push    edx                                     ; 1B30 _ 52
        push    eax                                     ; 1B31 _ 50
        push    dword [ebp+8H]                          ; 1B32 _ FF. 75, 08
        call    sheet_slide                             ; 1B35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B3A _ 83. C4, 10
?_058:  nop                                             ; 1B3D _ 90
        leave                                           ; 1B3E _ C9
        ret                                             ; 1B3F _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1B40 _ 55
        mov     ebp, esp                                ; 1B41 _ 89. E5
        sub     esp, 4                                  ; 1B43 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1B46 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1B49 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1B4C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B4F _ 0F B6. 40, 03
        test    al, al                                  ; 1B53 _ 84. C0
        jnz     ?_060                                   ; 1B55 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1B57 _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 1B5B _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1B5D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1B60 _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 1B64 _ B8, 00000000
        jmp     ?_067                                   ; 1B69 _ E9, 0000010C

?_060:  mov     eax, dword [ebp+8H]                     ; 1B6E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B71 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1B75 _ 3C, 01
        jnz     ?_062                                   ; 1B77 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1B79 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1B7D _ 83. C8, 37
        cmp     al, 63                                  ; 1B80 _ 3C, 3F
        jnz     ?_061                                   ; 1B82 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1B84 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B87 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1B8B _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1B8D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1B90 _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 1B94 _ B8, 00000000
        jmp     ?_067                                   ; 1B99 _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 1B9E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1BA1 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1BA5 _ 3C, 02
        jnz     ?_063                                   ; 1BA7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1BA9 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1BAC _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1BB0 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1BB3 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1BB6 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1BBA _ B8, 00000000
        jmp     ?_067                                   ; 1BBF _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 1BC4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1BC7 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1BCB _ 3C, 03
        jne     ?_066                                   ; 1BCD _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1BD3 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1BD6 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1BDA _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1BDD _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1BE0 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1BE4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BE7 _ 0F B6. 00
        movzx   eax, al                                 ; 1BEA _ 0F B6. C0
        and     eax, 07H                                ; 1BED _ 83. E0, 07
        mov     edx, eax                                ; 1BF0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BF2 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1BF5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1BF8 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1BFB _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1BFF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1C02 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1C05 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C08 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1C0B _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1C0F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1C12 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C15 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1C18 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C1B _ 0F B6. 00
        movzx   eax, al                                 ; 1C1E _ 0F B6. C0
        and     eax, 10H                                ; 1C21 _ 83. E0, 10
        test    eax, eax                                ; 1C24 _ 85. C0
        jz      ?_064                                   ; 1C26 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1C28 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1C2B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1C2E _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C33 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C35 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1C38 _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 1C3B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C3E _ 0F B6. 00
        movzx   eax, al                                 ; 1C41 _ 0F B6. C0
        and     eax, 20H                                ; 1C44 _ 83. E0, 20
        test    eax, eax                                ; 1C47 _ 85. C0
        jz      ?_065                                   ; 1C49 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1C4B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C4E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1C51 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C56 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C58 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C5B _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 1C5E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C61 _ 8B. 40, 08
        neg     eax                                     ; 1C64 _ F7. D8
        mov     edx, eax                                ; 1C66 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C68 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C6B _ 89. 50, 08
        mov     eax, 1                                  ; 1C6E _ B8, 00000001
        jmp     ?_067                                   ; 1C73 _ EB, 05

?_066:  mov     eax, 4294967295                         ; 1C75 _ B8, FFFFFFFF
?_067:  leave                                           ; 1C7A _ C9
        ret                                             ; 1C7B _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1C7C _ 55
        mov     ebp, esp                                ; 1C7D _ 89. E5
        sub     esp, 16                                 ; 1C7F _ 83. EC, 10
        movzx   eax, word [?_183]                       ; 1C82 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1C89 _ 98
        mov     dword [ebp-8H], eax                     ; 1C8A _ 89. 45, F8
        movzx   eax, word [?_184]                       ; 1C8D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1C94 _ 98
        mov     dword [ebp-4H], eax                     ; 1C95 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1C98 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1C9B _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1C9E _ A1, 000000F0(d)
        add     eax, edx                                ; 1CA3 _ 01. D0
        mov     dword [mx], eax                         ; 1CA5 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1CAA _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1CAD _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1CB0 _ A1, 000000F4(d)
        add     eax, edx                                ; 1CB5 _ 01. D0
        mov     dword [my], eax                         ; 1CB7 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1CBC _ A1, 000000F0(d)
        test    eax, eax                                ; 1CC1 _ 85. C0
        jns     ?_068                                   ; 1CC3 _ 79, 0A
        mov     dword [mx], 0                           ; 1CC5 _ C7. 05, 000000F0(d), 00000000
?_068:  mov     eax, dword [my]                         ; 1CCF _ A1, 000000F4(d)
        test    eax, eax                                ; 1CD4 _ 85. C0
        jns     ?_069                                   ; 1CD6 _ 79, 0A
        mov     dword [my], 0                           ; 1CD8 _ C7. 05, 000000F4(d), 00000000
?_069:  mov     eax, dword [ebp-8H]                     ; 1CE2 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1CE5 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1CE8 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1CED _ 39. C2
        jge     ?_070                                   ; 1CEF _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1CF1 _ 8B. 45, F8
        sub     eax, 9                                  ; 1CF4 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1CF7 _ A3, 000000F0(d)
?_070:  mov     eax, dword [ebp-4H]                     ; 1CFC _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1CFF _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1D02 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1D07 _ 39. C2
        jge     ?_071                                   ; 1D09 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1D0B _ 8B. 45, FC
        sub     eax, 1                                  ; 1D0E _ 83. E8, 01
        mov     dword [my], eax                         ; 1D11 _ A3, 000000F4(d)
?_071:  nop                                             ; 1D16 _ 90
        leave                                           ; 1D17 _ C9
        ret                                             ; 1D18 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1D19 _ 55
        mov     ebp, esp                                ; 1D1A _ 89. E5
        sub     esp, 56                                 ; 1D1C _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1D1F _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1D26 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1D2D _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1D34 _ C7. 45, DC, 00000050
        push    100                                     ; 1D3B _ 6A, 64
        push    dword [ebp+1CH]                         ; 1D3D _ FF. 75, 1C
        push    0                                       ; 1D40 _ 6A, 00
        push    0                                       ; 1D42 _ 6A, 00
        push    14                                      ; 1D44 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1D46 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1D49 _ FF. 75, 14
        call    boxfill8                                ; 1D4C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D51 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1D54 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D57 _ 0F BE. C0
        sub     esp, 8                                  ; 1D5A _ 83. EC, 08
        push    ?_175                                   ; 1D5D _ 68, 0000005A(d)
        push    eax                                     ; 1D62 _ 50
        push    dword [ebp-2CH]                         ; 1D63 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D66 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D69 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D6C _ FF. 75, 08
        call    showString                              ; 1D6F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D74 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1D77 _ 8B. 45, 18
        sub     esp, 12                                 ; 1D7A _ 83. EC, 0C
        push    eax                                     ; 1D7D _ 50
        call    intToHexStr                             ; 1D7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D83 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1D86 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1D89 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D8C _ 0F BE. C0
        sub     esp, 8                                  ; 1D8F _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1D92 _ FF. 75, E0
        push    eax                                     ; 1D95 _ 50
        push    dword [ebp-2CH]                         ; 1D96 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D99 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D9C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D9F _ FF. 75, 08
        call    showString                              ; 1DA2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DA7 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DAA _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1DAE _ 8B. 45, 20
        movsx   eax, al                                 ; 1DB1 _ 0F BE. C0
        sub     esp, 8                                  ; 1DB4 _ 83. EC, 08
        push    ?_176                                   ; 1DB7 _ 68, 00000064(d)
        push    eax                                     ; 1DBC _ 50
        push    dword [ebp-2CH]                         ; 1DBD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1DC0 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1DC3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DC6 _ FF. 75, 08
        call    showString                              ; 1DC9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DCE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DD1 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1DD4 _ 8B. 00
        sub     esp, 12                                 ; 1DD6 _ 83. EC, 0C
        push    eax                                     ; 1DD9 _ 50
        call    intToHexStr                             ; 1DDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DDF _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1DE2 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1DE5 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DE8 _ 0F BE. C0
        sub     esp, 8                                  ; 1DEB _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1DEE _ FF. 75, E4
        push    eax                                     ; 1DF1 _ 50
        push    dword [ebp-2CH]                         ; 1DF2 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DF5 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DF8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DFB _ FF. 75, 08
        call    showString                              ; 1DFE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E03 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E06 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E0A _ 8B. 45, 20
        movsx   eax, al                                 ; 1E0D _ 0F BE. C0
        sub     esp, 8                                  ; 1E10 _ 83. EC, 08
        push    ?_177                                   ; 1E13 _ 68, 00000072(d)
        push    eax                                     ; 1E18 _ 50
        push    dword [ebp-2CH]                         ; 1E19 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E1C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E1F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E22 _ FF. 75, 08
        call    showString                              ; 1E25 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E2A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E2D _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1E30 _ 8B. 40, 04
        sub     esp, 12                                 ; 1E33 _ 83. EC, 0C
        push    eax                                     ; 1E36 _ 50
        call    intToHexStr                             ; 1E37 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E3C _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1E3F _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1E42 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E45 _ 0F BE. C0
        sub     esp, 8                                  ; 1E48 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1E4B _ FF. 75, E8
        push    eax                                     ; 1E4E _ 50
        push    dword [ebp-2CH]                         ; 1E4F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E52 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E55 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E58 _ FF. 75, 08
        call    showString                              ; 1E5B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E60 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E63 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E67 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E6A _ 0F BE. C0
        sub     esp, 8                                  ; 1E6D _ 83. EC, 08
        push    ?_178                                   ; 1E70 _ 68, 00000081(d)
        push    eax                                     ; 1E75 _ 50
        push    dword [ebp-2CH]                         ; 1E76 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E79 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E7C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E7F _ FF. 75, 08
        call    showString                              ; 1E82 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E87 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E8A _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1E8D _ 8B. 40, 08
        sub     esp, 12                                 ; 1E90 _ 83. EC, 0C
        push    eax                                     ; 1E93 _ 50
        call    intToHexStr                             ; 1E94 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E99 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1E9C _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1E9F _ 8B. 45, 20
        movsx   eax, al                                 ; 1EA2 _ 0F BE. C0
        sub     esp, 8                                  ; 1EA5 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1EA8 _ FF. 75, EC
        push    eax                                     ; 1EAB _ 50
        push    dword [ebp-2CH]                         ; 1EAC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1EAF _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1EB2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EB5 _ FF. 75, 08
        call    showString                              ; 1EB8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EBD _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1EC0 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1EC4 _ 8B. 45, 20
        movsx   eax, al                                 ; 1EC7 _ 0F BE. C0
        sub     esp, 8                                  ; 1ECA _ 83. EC, 08
        push    ?_179                                   ; 1ECD _ 68, 0000008D(d)
        push    eax                                     ; 1ED2 _ 50
        push    dword [ebp-2CH]                         ; 1ED3 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1ED6 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1ED9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EDC _ FF. 75, 08
        call    showString                              ; 1EDF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EE4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1EE7 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1EEA _ 8B. 40, 0C
        sub     esp, 12                                 ; 1EED _ 83. EC, 0C
        push    eax                                     ; 1EF0 _ 50
        call    intToHexStr                             ; 1EF1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EF6 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1EF9 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1EFC _ 8B. 45, 20
        movsx   eax, al                                 ; 1EFF _ 0F BE. C0
        sub     esp, 8                                  ; 1F02 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1F05 _ FF. 75, F0
        push    eax                                     ; 1F08 _ 50
        push    dword [ebp-2CH]                         ; 1F09 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1F0C _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1F0F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F12 _ FF. 75, 08
        call    showString                              ; 1F15 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F1A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1F1D _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1F21 _ 8B. 45, 20
        movsx   eax, al                                 ; 1F24 _ 0F BE. C0
        sub     esp, 8                                  ; 1F27 _ 83. EC, 08
        push    ?_180                                   ; 1F2A _ 68, 0000009A(d)
        push    eax                                     ; 1F2F _ 50
        push    dword [ebp-2CH]                         ; 1F30 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1F33 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1F36 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F39 _ FF. 75, 08
        call    showString                              ; 1F3C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F41 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1F44 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1F47 _ 8B. 40, 10
        sub     esp, 12                                 ; 1F4A _ 83. EC, 0C
        push    eax                                     ; 1F4D _ 50
        call    intToHexStr                             ; 1F4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F53 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F56 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1F59 _ 8B. 45, 20
        movsx   eax, al                                 ; 1F5C _ 0F BE. C0
        sub     esp, 8                                  ; 1F5F _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1F62 _ FF. 75, F4
        push    eax                                     ; 1F65 _ 50
        push    dword [ebp-2CH]                         ; 1F66 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1F69 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1F6C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F6F _ FF. 75, 08
        call    showString                              ; 1F72 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F77 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1F7A _ 83. 45, D4, 10
        nop                                             ; 1F7E _ 90
        leave                                           ; 1F7F _ C9
        ret                                             ; 1F80 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1F81 _ 55
        mov     ebp, esp                                ; 1F82 _ 89. E5
        sub     esp, 24                                 ; 1F84 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1F87 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1F8C _ 83. EC, 08
        push    37500                                   ; 1F8F _ 68, 0000927C
        push    eax                                     ; 1F94 _ 50
        call    memman_alloc_4K                         ; 1F95 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F9A _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1F9D _ 89. 45, F0
        sub     esp, 12                                 ; 1FA0 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1FA3 _ FF. 75, 08
        call    sheet_alloc                             ; 1FA6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FAB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1FAE _ 89. 45, F4
        sub     esp, 12                                 ; 1FB1 _ 83. EC, 0C
        push    99                                      ; 1FB4 _ 6A, 63
        push    125                                     ; 1FB6 _ 6A, 7D
        push    300                                     ; 1FB8 _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1FBD _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1FC0 _ FF. 75, F4
        call    sheet_setbuf                            ; 1FC3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FC8 _ 83. C4, 20
        sub     esp, 4                                  ; 1FCB _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1FCE _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1FD1 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FD4 _ FF. 75, 08
        call    make_window8                            ; 1FD7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FDC _ 83. C4, 10
        sub     esp, 8                                  ; 1FDF _ 83. EC, 08
        push    7                                       ; 1FE2 _ 6A, 07
        push    16                                      ; 1FE4 _ 6A, 10
        push    150                                     ; 1FE6 _ 68, 00000096
        push    42                                      ; 1FEB _ 6A, 2A
        push    8                                       ; 1FED _ 6A, 08
        push    dword [ebp-0CH]                         ; 1FEF _ FF. 75, F4
        call    make_textbox8                           ; 1FF2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FF7 _ 83. C4, 20
        push    dword [ebp+14H]                         ; 1FFA _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1FFD _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 2000 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2003 _ FF. 75, 08
        call    sheet_slide                             ; 2006 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 200B _ 83. C4, 10
        sub     esp, 4                                  ; 200E _ 83. EC, 04
        push    dword [ebp+18H]                         ; 2011 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2014 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2017 _ FF. 75, 08
        call    sheet_level_updown                      ; 201A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 201F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2022 _ 8B. 45, F4
        leave                                           ; 2025 _ C9
        ret                                             ; 2026 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 2027 _ 55
        mov     ebp, esp                                ; 2028 _ 89. E5
        push    ebx                                     ; 202A _ 53
        sub     esp, 36                                 ; 202B _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 202E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2031 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2034 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2037 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 203A _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 203D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2040 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2043 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2046 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2049 _ 8B. 00
        push    0                                       ; 204B _ 6A, 00
        push    edx                                     ; 204D _ 52
        push    0                                       ; 204E _ 6A, 00
        push    0                                       ; 2050 _ 6A, 00
        push    8                                       ; 2052 _ 6A, 08
        push    dword [ebp-10H]                         ; 2054 _ FF. 75, F0
        push    eax                                     ; 2057 _ 50
        call    boxfill8                                ; 2058 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 205D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2060 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2063 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2066 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2069 _ 8B. 00
        push    1                                       ; 206B _ 6A, 01
        push    edx                                     ; 206D _ 52
        push    1                                       ; 206E _ 6A, 01
        push    1                                       ; 2070 _ 6A, 01
        push    7                                       ; 2072 _ 6A, 07
        push    dword [ebp-10H]                         ; 2074 _ FF. 75, F0
        push    eax                                     ; 2077 _ 50
        call    boxfill8                                ; 2078 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 207D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2080 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2083 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2086 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2089 _ 8B. 00
        push    edx                                     ; 208B _ 52
        push    0                                       ; 208C _ 6A, 00
        push    0                                       ; 208E _ 6A, 00
        push    0                                       ; 2090 _ 6A, 00
        push    8                                       ; 2092 _ 6A, 08
        push    dword [ebp-10H]                         ; 2094 _ FF. 75, F0
        push    eax                                     ; 2097 _ 50
        call    boxfill8                                ; 2098 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 209D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20A0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 20A3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20A6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20A9 _ 8B. 00
        push    edx                                     ; 20AB _ 52
        push    1                                       ; 20AC _ 6A, 01
        push    1                                       ; 20AE _ 6A, 01
        push    1                                       ; 20B0 _ 6A, 01
        push    7                                       ; 20B2 _ 6A, 07
        push    dword [ebp-10H]                         ; 20B4 _ FF. 75, F0
        push    eax                                     ; 20B7 _ 50
        call    boxfill8                                ; 20B8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20BD _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20C0 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 20C3 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 20C6 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 20C9 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 20CC _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 20CF _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 20D2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20D5 _ 8B. 00
        push    ebx                                     ; 20D7 _ 53
        push    ecx                                     ; 20D8 _ 51
        push    1                                       ; 20D9 _ 6A, 01
        push    edx                                     ; 20DB _ 52
        push    15                                      ; 20DC _ 6A, 0F
        push    dword [ebp-10H]                         ; 20DE _ FF. 75, F0
        push    eax                                     ; 20E1 _ 50
        call    boxfill8                                ; 20E2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20E7 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20EA _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 20ED _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 20F0 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 20F3 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 20F6 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 20F9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20FC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20FF _ 8B. 00
        push    ebx                                     ; 2101 _ 53
        push    ecx                                     ; 2102 _ 51
        push    0                                       ; 2103 _ 6A, 00
        push    edx                                     ; 2105 _ 52
        push    0                                       ; 2106 _ 6A, 00
        push    dword [ebp-10H]                         ; 2108 _ FF. 75, F0
        push    eax                                     ; 210B _ 50
        call    boxfill8                                ; 210C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2111 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2114 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2117 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 211A _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 211D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2120 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2123 _ 8B. 00
        push    ecx                                     ; 2125 _ 51
        push    edx                                     ; 2126 _ 52
        push    2                                       ; 2127 _ 6A, 02
        push    2                                       ; 2129 _ 6A, 02
        push    8                                       ; 212B _ 6A, 08
        push    dword [ebp-10H]                         ; 212D _ FF. 75, F0
        push    eax                                     ; 2130 _ 50
        call    boxfill8                                ; 2131 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2136 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2139 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 213C _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 213F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2142 _ 8B. 00
        push    20                                      ; 2144 _ 6A, 14
        push    edx                                     ; 2146 _ 52
        push    3                                       ; 2147 _ 6A, 03
        push    3                                       ; 2149 _ 6A, 03
        push    12                                      ; 214B _ 6A, 0C
        push    dword [ebp-10H]                         ; 214D _ FF. 75, F0
        push    eax                                     ; 2150 _ 50
        call    boxfill8                                ; 2151 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2156 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2159 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 215C _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 215F _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2162 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2165 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2168 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 216B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 216E _ 8B. 00
        push    ebx                                     ; 2170 _ 53
        push    ecx                                     ; 2171 _ 51
        push    edx                                     ; 2172 _ 52
        push    1                                       ; 2173 _ 6A, 01
        push    15                                      ; 2175 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2177 _ FF. 75, F0
        push    eax                                     ; 217A _ 50
        call    boxfill8                                ; 217B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2180 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2183 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2186 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2189 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 218C _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 218F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2192 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2195 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2198 _ 8B. 00
        push    ebx                                     ; 219A _ 53
        push    ecx                                     ; 219B _ 51
        push    edx                                     ; 219C _ 52
        push    0                                       ; 219D _ 6A, 00
        push    0                                       ; 219F _ 6A, 00
        push    dword [ebp-10H]                         ; 21A1 _ FF. 75, F0
        push    eax                                     ; 21A4 _ 50
        call    boxfill8                                ; 21A5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21AA _ 83. C4, 1C
        sub     esp, 8                                  ; 21AD _ 83. EC, 08
        push    dword [ebp+10H]                         ; 21B0 _ FF. 75, 10
        push    7                                       ; 21B3 _ 6A, 07
        push    4                                       ; 21B5 _ 6A, 04
        push    8                                       ; 21B7 _ 6A, 08
        push    dword [ebp+0CH]                         ; 21B9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21BC _ FF. 75, 08
        call    showString                              ; 21BF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21C4 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 21C7 _ C7. 45, E8, 00000000
        jmp     ?_078                                   ; 21CE _ EB, 7D

?_072:  mov     dword [ebp-14H], 0                      ; 21D0 _ C7. 45, EC, 00000000
        jmp     ?_077                                   ; 21D7 _ EB, 6A

?_073:  mov     eax, dword [ebp-18H]                    ; 21D9 _ 8B. 45, E8
        shl     eax, 4                                  ; 21DC _ C1. E0, 04
        mov     edx, eax                                ; 21DF _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 21E1 _ 8B. 45, EC
        add     eax, edx                                ; 21E4 _ 01. D0
        add     eax, closebtn.1991                      ; 21E6 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 21EB _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 21EE _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 21F1 _ 80. 7D, E7, 40
        jnz     ?_074                                   ; 21F5 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 21F7 _ C6. 45, E7, 00
        jmp     ?_076                                   ; 21FB _ EB, 16

?_074:  cmp     byte [ebp-19H], 36                      ; 21FD _ 80. 7D, E7, 24
        jnz     ?_075                                   ; 2201 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 2203 _ C6. 45, E7, 0F
        jmp     ?_076                                   ; 2207 _ EB, 0A

?_075:  cmp     byte [ebp-19H], 81                      ; 2209 _ 80. 7D, E7, 51
        jnz     ?_076                                   ; 220D _ 75, 04
        mov     byte [ebp-19H], 8                       ; 220F _ C6. 45, E7, 08
?_076:  mov     eax, dword [ebp+0CH]                    ; 2213 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2216 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2218 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 221B _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 221E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2221 _ 8B. 40, 04
        imul    ecx, eax                                ; 2224 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 2227 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 222A _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 222D _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 2230 _ 8B. 45, EC
        add     eax, ebx                                ; 2233 _ 01. D8
        add     eax, ecx                                ; 2235 _ 01. C8
        add     edx, eax                                ; 2237 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 2239 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 223D _ 88. 02
        add     dword [ebp-14H], 1                      ; 223F _ 83. 45, EC, 01
?_077:  cmp     dword [ebp-14H], 15                     ; 2243 _ 83. 7D, EC, 0F
        jle     ?_073                                   ; 2247 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 2249 _ 83. 45, E8, 01
?_078:  cmp     dword [ebp-18H], 13                     ; 224D _ 83. 7D, E8, 0D
        jle     ?_072                                   ; 2251 _ 0F 8E, FFFFFF79
        nop                                             ; 2257 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2258 _ 8B. 5D, FC
        leave                                           ; 225B _ C9
        ret                                             ; 225C _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 225D _ 55
        mov     ebp, esp                                ; 225E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2260 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2263 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2269 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 226C _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2273 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2276 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 227D _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2280 _ C7. 40, 0C, 00000000
        nop                                             ; 2287 _ 90
        pop     ebp                                     ; 2288 _ 5D
        ret                                             ; 2289 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 228A _ 55
        mov     ebp, esp                                ; 228B _ 89. E5
        sub     esp, 16                                 ; 228D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2290 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2297 _ C7. 45, FC, 00000000
        jmp     ?_080                                   ; 229E _ EB, 14

?_079:  mov     eax, dword [ebp+8H]                     ; 22A0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 22A3 _ 8B. 55, FC
        add     edx, 2                                  ; 22A6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22A9 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 22AD _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 22B0 _ 83. 45, FC, 01
?_080:  mov     eax, dword [ebp+8H]                     ; 22B4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22B7 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 22B9 _ 39. 45, FC
        jl      ?_079                                   ; 22BC _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 22BE _ 8B. 45, F8
        leave                                           ; 22C1 _ C9
        ret                                             ; 22C2 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 22C3 _ 55
        mov     ebp, esp                                ; 22C4 _ 89. E5
        sub     esp, 16                                 ; 22C6 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22C9 _ C7. 45, F8, 00000000
        jmp     ?_084                                   ; 22D0 _ E9, 00000085

?_081:  mov     eax, dword [ebp+8H]                     ; 22D5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22D8 _ 8B. 55, F8
        add     edx, 2                                  ; 22DB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22DE _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 22E2 _ 39. 45, 0C
        ja      ?_083                                   ; 22E5 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 22E7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22EA _ 8B. 55, F8
        add     edx, 2                                  ; 22ED _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 22F0 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 22F3 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 22F6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22F9 _ 8B. 55, F8
        add     edx, 2                                  ; 22FC _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 22FF _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2302 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2305 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2308 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 230B _ 8B. 55, F8
        add     edx, 2                                  ; 230E _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2311 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2314 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2317 _ 8B. 55, F8
        add     edx, 2                                  ; 231A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 231D _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2321 _ 2B. 45, 0C
        mov     edx, eax                                ; 2324 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2326 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2329 _ 8B. 4D, F8
        add     ecx, 2                                  ; 232C _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 232F _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2333 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2336 _ 8B. 55, F8
        add     edx, 2                                  ; 2339 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 233C _ 8B. 44 D0, 04
        test    eax, eax                                ; 2340 _ 85. C0
        jnz     ?_082                                   ; 2342 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2344 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2347 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2349 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 234C _ 8B. 45, 08
        mov     dword [eax], edx                        ; 234F _ 89. 10
?_082:  mov     eax, dword [ebp-4H]                     ; 2351 _ 8B. 45, FC
        jmp     ?_085                                   ; 2354 _ EB, 17

?_083:  add     dword [ebp-8H], 1                       ; 2356 _ 83. 45, F8, 01
?_084:  mov     eax, dword [ebp+8H]                     ; 235A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 235D _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 235F _ 39. 45, F8
        jl      ?_081                                   ; 2362 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2368 _ B8, 00000000
?_085:  leave                                           ; 236D _ C9
        ret                                             ; 236E _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 236F _ 55
        mov     ebp, esp                                ; 2370 _ 89. E5
        sub     esp, 16                                 ; 2372 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2375 _ 8B. 45, 0C
        add     eax, 4095                               ; 2378 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 237D _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2382 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2385 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2388 _ FF. 75, 08
        call    memman_alloc_FF                         ; 238B _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2390 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2393 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2396 _ 8B. 45, FC
        leave                                           ; 2399 _ C9
        ret                                             ; 239A _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 239B _ 55
        mov     ebp, esp                                ; 239C _ 89. E5
        push    ebx                                     ; 239E _ 53
        sub     esp, 16                                 ; 239F _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 23A2 _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 23A9 _ EB, 15

?_086:  mov     eax, dword [ebp+8H]                     ; 23AB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 23AE _ 8B. 55, F4
        add     edx, 2                                  ; 23B1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 23B4 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 23B7 _ 39. 45, 0C
        jc      ?_088                                   ; 23BA _ 72, 10
        add     dword [ebp-0CH], 1                      ; 23BC _ 83. 45, F4, 01
?_087:  mov     eax, dword [ebp+8H]                     ; 23C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23C3 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 23C5 _ 39. 45, F4
        jl      ?_086                                   ; 23C8 _ 7C, E1
        jmp     ?_089                                   ; 23CA _ EB, 01

?_088:  nop                                             ; 23CC _ 90
?_089:  cmp     dword [ebp-0CH], 0                      ; 23CD _ 83. 7D, F4, 00
        jle     ?_091                                   ; 23D1 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 23D7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23DA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23DD _ 8B. 45, 08
        add     edx, 2                                  ; 23E0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 23E3 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 23E6 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 23E9 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 23EC _ 8B. 45, 08
        add     ecx, 2                                  ; 23EF _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 23F2 _ 8B. 44 C8, 04
        add     eax, edx                                ; 23F6 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 23F8 _ 39. 45, 0C
        jne     ?_091                                   ; 23FB _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2401 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2404 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2407 _ 8B. 45, 08
        add     edx, 2                                  ; 240A _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 240D _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2411 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2414 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2417 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 241A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 241D _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2420 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2423 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2427 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 242A _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 242C _ 39. 45, F4
        jge     ?_090                                   ; 242F _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2431 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2434 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2437 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 243A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 243D _ 8B. 55, F4
        add     edx, 2                                  ; 2440 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2443 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2446 _ 39. C1
        jnz     ?_090                                   ; 2448 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 244A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 244D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2450 _ 8B. 45, 08
        add     edx, 2                                  ; 2453 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2456 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 245A _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 245D _ 8B. 4D, F4
        add     ecx, 2                                  ; 2460 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2463 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2467 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 246A _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 246D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2470 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2473 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2476 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 247A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 247D _ 8B. 00
        lea     edx, [eax-1H]                           ; 247F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2482 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2485 _ 89. 10
?_090:  mov     eax, 0                                  ; 2487 _ B8, 00000000
        jmp     ?_097                                   ; 248C _ E9, 0000011C

?_091:  mov     eax, dword [ebp+8H]                     ; 2491 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2494 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2496 _ 39. 45, F4
        jge     ?_092                                   ; 2499 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 249B _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 249E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24A1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24A4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24A7 _ 8B. 55, F4
        add     edx, 2                                  ; 24AA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 24AD _ 8B. 04 D0
        cmp     ecx, eax                                ; 24B0 _ 39. C1
        jnz     ?_092                                   ; 24B2 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 24B4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24B7 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 24BA _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 24BD _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 24C0 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 24C3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24C6 _ 8B. 55, F4
        add     edx, 2                                  ; 24C9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 24CC _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 24D0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24D3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24D6 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24D9 _ 8B. 55, F4
        add     edx, 2                                  ; 24DC _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 24DF _ 89. 4C D0, 04
        mov     eax, 0                                  ; 24E3 _ B8, 00000000
        jmp     ?_097                                   ; 24E8 _ E9, 000000C0

?_092:  mov     eax, dword [ebp+8H]                     ; 24ED _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24F0 _ 8B. 00
        cmp     eax, 4095                               ; 24F2 _ 3D, 00000FFF
        jg      ?_096                                   ; 24F7 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 24FD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2500 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2502 _ 89. 45, F8
        jmp     ?_094                                   ; 2505 _ EB, 28

?_093:  mov     eax, dword [ebp-8H]                     ; 2507 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 250A _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 250D _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2510 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2513 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2516 _ 8B. 45, 08
        add     edx, 2                                  ; 2519 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 251C _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 251F _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2521 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2524 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2527 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 252B _ 83. 6D, F8, 01
?_094:  mov     eax, dword [ebp-8H]                     ; 252F _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2532 _ 3B. 45, F4
        jg      ?_093                                   ; 2535 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2537 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 253A _ 8B. 00
        lea     edx, [eax+1H]                           ; 253C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 253F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2542 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2544 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2547 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 254A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 254D _ 8B. 00
        cmp     edx, eax                                ; 254F _ 39. C2
        jge     ?_095                                   ; 2551 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2553 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2556 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2558 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 255B _ 89. 50, 04
?_095:  mov     eax, dword [ebp+8H]                     ; 255E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2561 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2564 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2567 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 256A _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 256D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2570 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2573 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2576 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2579 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 257D _ B8, 00000000
        jmp     ?_097                                   ; 2582 _ EB, 29

?_096:  mov     eax, dword [ebp+8H]                     ; 2584 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2587 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 258A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 258D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2590 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2593 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2596 _ 8B. 40, 08
        mov     edx, eax                                ; 2599 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 259B _ 8B. 45, 10
        add     eax, edx                                ; 259E _ 01. D0
        mov     edx, eax                                ; 25A0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 25A2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 25A5 _ 89. 50, 08
        mov     eax, 4294967295                         ; 25A8 _ B8, FFFFFFFF
?_097:  add     esp, 16                                 ; 25AD _ 83. C4, 10
        pop     ebx                                     ; 25B0 _ 5B
        pop     ebp                                     ; 25B1 _ 5D
        ret                                             ; 25B2 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 25B3 _ 55
        mov     ebp, esp                                ; 25B4 _ 89. E5
        sub     esp, 16                                 ; 25B6 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 25B9 _ 8B. 45, 10
        add     eax, 4095                               ; 25BC _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 25C1 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 25C6 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 25C9 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 25CC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25CF _ FF. 75, 08
        call    memman_free                             ; 25D2 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 25D7 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 25DA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 25DD _ 8B. 45, FC
        leave                                           ; 25E0 _ C9
        ret                                             ; 25E1 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 25E2 _ 55
        mov     ebp, esp                                ; 25E3 _ 89. E5
        sub     esp, 24                                 ; 25E5 _ 83. EC, 18
        sub     esp, 8                                  ; 25E8 _ 83. EC, 08
        push    9232                                    ; 25EB _ 68, 00002410
        push    dword [ebp+8H]                          ; 25F0 _ FF. 75, 08
        call    memman_alloc_4K                         ; 25F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25F8 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 25FB _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 25FE _ 83. 7D, F4, 00
        jnz     ?_098                                   ; 2602 _ 75, 0A
        mov     eax, 0                                  ; 2604 _ B8, 00000000
        jmp     ?_102                                   ; 2609 _ E9, 0000009A

?_098:  mov     eax, dword [ebp+10H]                    ; 260E _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2611 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2615 _ 83. EC, 08
        push    eax                                     ; 2618 _ 50
        push    dword [ebp+8H]                          ; 2619 _ FF. 75, 08
        call    memman_alloc_4K                         ; 261C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2621 _ 83. C4, 10
        mov     edx, eax                                ; 2624 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2626 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2629 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 262C _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 262F _ 8B. 40, 04
        test    eax, eax                                ; 2632 _ 85. C0
        jnz     ?_099                                   ; 2634 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2636 _ 8B. 45, F4
        sub     esp, 4                                  ; 2639 _ 83. EC, 04
        push    9232                                    ; 263C _ 68, 00002410
        push    eax                                     ; 2641 _ 50
        push    dword [ebp+8H]                          ; 2642 _ FF. 75, 08
        call    memman_free_4K                          ; 2645 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 264A _ 83. C4, 10
        mov     eax, 0                                  ; 264D _ B8, 00000000
        jmp     ?_102                                   ; 2652 _ EB, 54

?_099:  mov     eax, dword [ebp-0CH]                    ; 2654 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2657 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 265A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 265C _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 265F _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2662 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2665 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2668 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 266B _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 266E _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2671 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2678 _ C7. 45, F0, 00000000
        jmp     ?_101                                   ; 267F _ EB, 1B

?_100:  mov     eax, dword [ebp-0CH]                    ; 2681 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2684 _ 8B. 55, F0
        add     edx, 33                                 ; 2687 _ 83. C2, 21
        shl     edx, 5                                  ; 268A _ C1. E2, 05
        add     eax, edx                                ; 268D _ 01. D0
        add     eax, 16                                 ; 268F _ 83. C0, 10
        mov     dword [eax], 0                          ; 2692 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2698 _ 83. 45, F0, 01
?_101:  cmp     dword [ebp-10H], 255                    ; 269C _ 81. 7D, F0, 000000FF
        jle     ?_100                                   ; 26A3 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 26A5 _ 8B. 45, F4
?_102:  leave                                           ; 26A8 _ C9
        ret                                             ; 26A9 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 26AA _ 55
        mov     ebp, esp                                ; 26AB _ 89. E5
        sub     esp, 16                                 ; 26AD _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 26B0 _ C7. 45, F8, 00000000
        jmp     ?_105                                   ; 26B7 _ EB, 4B

?_103:  mov     eax, dword [ebp+8H]                     ; 26B9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26BC _ 8B. 55, F8
        add     edx, 33                                 ; 26BF _ 83. C2, 21
        shl     edx, 5                                  ; 26C2 _ C1. E2, 05
        add     eax, edx                                ; 26C5 _ 01. D0
        add     eax, 16                                 ; 26C7 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 26CA _ 8B. 00
        test    eax, eax                                ; 26CC _ 85. C0
        jnz     ?_104                                   ; 26CE _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 26D0 _ 8B. 45, F8
        shl     eax, 5                                  ; 26D3 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 26D6 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 26DC _ 8B. 45, 08
        add     eax, edx                                ; 26DF _ 01. D0
        add     eax, 4                                  ; 26E1 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 26E4 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 26E7 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 26EA _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 26F1 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 26F4 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 26FB _ 8B. 45, FC
        jmp     ?_106                                   ; 26FE _ EB, 12

?_104:  add     dword [ebp-8H], 1                       ; 2700 _ 83. 45, F8, 01
?_105:  cmp     dword [ebp-8H], 255                     ; 2704 _ 81. 7D, F8, 000000FF
        jle     ?_103                                   ; 270B _ 7E, AC
        mov     eax, 0                                  ; 270D _ B8, 00000000
?_106:  leave                                           ; 2712 _ C9
        ret                                             ; 2713 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2714 _ 55
        mov     ebp, esp                                ; 2715 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2717 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 271A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 271D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 271F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2722 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2725 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2728 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 272B _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 272E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2731 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2734 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2737 _ 89. 50, 14
        nop                                             ; 273A _ 90
        pop     ebp                                     ; 273B _ 5D
        ret                                             ; 273C _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 273D _ 55
        mov     ebp, esp                                ; 273E _ 89. E5
        push    esi                                     ; 2740 _ 56
        push    ebx                                     ; 2741 _ 53
        sub     esp, 32                                 ; 2742 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2745 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2748 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 274B _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 274E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2751 _ 8B. 40, 10
        add     eax, 1                                  ; 2754 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2757 _ 39. 45, 10
        jle     ?_107                                   ; 275A _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 275C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 275F _ 8B. 40, 10
        add     eax, 1                                  ; 2762 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2765 _ 89. 45, 10
?_107:  cmp     dword [ebp+10H], -1                     ; 2768 _ 83. 7D, 10, FF
        jge     ?_108                                   ; 276C _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 276E _ C7. 45, 10, FFFFFFFF
?_108:  mov     eax, dword [ebp+0CH]                    ; 2775 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2778 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 277B _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 277E _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2781 _ 3B. 45, 10
        jle     ?_115                                   ; 2784 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 278A _ 83. 7D, 10, 00
        js      ?_111                                   ; 278E _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2794 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2797 _ 89. 45, E4
        jmp     ?_110                                   ; 279A _ EB, 34

?_109:  mov     eax, dword [ebp-1CH]                    ; 279C _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 279F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27A2 _ 8B. 45, 08
        add     edx, 4                                  ; 27A5 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 27A8 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 27AC _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 27AF _ 8B. 4D, E4
        add     ecx, 4                                  ; 27B2 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 27B5 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 27B9 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 27BC _ 8B. 55, E4
        add     edx, 4                                  ; 27BF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 27C2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 27C6 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 27C9 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 27CC _ 83. 6D, E4, 01
?_110:  mov     eax, dword [ebp-1CH]                    ; 27D0 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 27D3 _ 3B. 45, 10
        jg      ?_109                                   ; 27D6 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 27D8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27DB _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 27DE _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 27E1 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 27E4 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 27E8 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 27EB _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 27EE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27F1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27F4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27F7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27FA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27FD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2800 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2803 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2806 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2809 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 280C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 280F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2812 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2815 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2818 _ 83. EC, 08
        push    esi                                     ; 281B _ 56
        push    ebx                                     ; 281C _ 53
        push    ecx                                     ; 281D _ 51
        push    edx                                     ; 281E _ 52
        push    eax                                     ; 281F _ 50
        push    dword [ebp+8H]                          ; 2820 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2823 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2828 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 282B _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 282E _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2831 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2834 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2837 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 283A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 283D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2840 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2843 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2846 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2849 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 284C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 284F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2852 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2855 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2858 _ 8B. 40, 0C
        sub     esp, 4                                  ; 285B _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 285E _ FF. 75, F4
        push    esi                                     ; 2861 _ 56
        push    ebx                                     ; 2862 _ 53
        push    ecx                                     ; 2863 _ 51
        push    edx                                     ; 2864 _ 52
        push    eax                                     ; 2865 _ 50
        push    dword [ebp+8H]                          ; 2866 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2869 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 286E _ 83. C4, 20
        jmp     ?_122                                   ; 2871 _ E9, 00000244

?_111:  mov     eax, dword [ebp+8H]                     ; 2876 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2879 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 287C _ 39. 45, F4
        jge     ?_114                                   ; 287F _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2881 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2884 _ 89. 45, E8
        jmp     ?_113                                   ; 2887 _ EB, 34

?_112:  mov     eax, dword [ebp-18H]                    ; 2889 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 288C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 288F _ 8B. 45, 08
        add     edx, 4                                  ; 2892 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2895 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2899 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 289C _ 8B. 4D, E8
        add     ecx, 4                                  ; 289F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 28A2 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 28A6 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 28A9 _ 8B. 55, E8
        add     edx, 4                                  ; 28AC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 28AF _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 28B3 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 28B6 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 28B9 _ 83. 45, E8, 01
?_113:  mov     eax, dword [ebp+8H]                     ; 28BD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28C0 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 28C3 _ 39. 45, E8
        jl      ?_112                                   ; 28C6 _ 7C, C1
?_114:  mov     eax, dword [ebp+8H]                     ; 28C8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28CB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 28CE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28D1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 28D4 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28D7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28DA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28DD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28E0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28E3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28E6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28E9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28EC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28EF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28F2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 28F5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28F8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28FB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28FE _ 8B. 40, 0C
        sub     esp, 8                                  ; 2901 _ 83. EC, 08
        push    0                                       ; 2904 _ 6A, 00
        push    ebx                                     ; 2906 _ 53
        push    ecx                                     ; 2907 _ 51
        push    edx                                     ; 2908 _ 52
        push    eax                                     ; 2909 _ 50
        push    dword [ebp+8H]                          ; 290A _ FF. 75, 08
        call    sheet_refreshmap                        ; 290D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2912 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2915 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2918 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 291B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 291E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2921 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2924 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2927 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 292A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 292D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2930 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2933 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2936 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2939 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 293C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 293F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2942 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2945 _ 83. EC, 04
        push    esi                                     ; 2948 _ 56
        push    0                                       ; 2949 _ 6A, 00
        push    ebx                                     ; 294B _ 53
        push    ecx                                     ; 294C _ 51
        push    edx                                     ; 294D _ 52
        push    eax                                     ; 294E _ 50
        push    dword [ebp+8H]                          ; 294F _ FF. 75, 08
        call    sheet_refresh_new                       ; 2952 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2957 _ 83. C4, 20
        jmp     ?_122                                   ; 295A _ E9, 0000015B

?_115:  mov     eax, dword [ebp-0CH]                    ; 295F _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2962 _ 3B. 45, 10
        jge     ?_122                                   ; 2965 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 296B _ 83. 7D, F4, 00
        js      ?_118                                   ; 296F _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2971 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2974 _ 89. 45, EC
        jmp     ?_117                                   ; 2977 _ EB, 34

?_116:  mov     eax, dword [ebp-14H]                    ; 2979 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 297C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 297F _ 8B. 45, 08
        add     edx, 4                                  ; 2982 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2985 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2989 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 298C _ 8B. 4D, EC
        add     ecx, 4                                  ; 298F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2992 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2996 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2999 _ 8B. 55, EC
        add     edx, 4                                  ; 299C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 299F _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 29A3 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 29A6 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 29A9 _ 83. 45, EC, 01
?_117:  mov     eax, dword [ebp-14H]                    ; 29AD _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 29B0 _ 3B. 45, 10
        jl      ?_116                                   ; 29B3 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 29B5 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 29B8 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 29BB _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 29BE _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 29C1 _ 89. 54 88, 04
        jmp     ?_121                                   ; 29C5 _ EB, 72

?_118:  cmp     dword [ebp-0CH], 0                      ; 29C7 _ 83. 7D, F4, 00
        jns     ?_121                                   ; 29CB _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 29CD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 29D0 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 29D3 _ 89. 45, F0
        jmp     ?_120                                   ; 29D6 _ EB, 3A

?_119:  mov     eax, dword [ebp-10H]                    ; 29D8 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 29DB _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 29DE _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 29E1 _ 8B. 55, F0
        add     edx, 4                                  ; 29E4 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 29E7 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 29EB _ 8B. 45, 08
        add     ecx, 4                                  ; 29EE _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 29F1 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 29F5 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 29F8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 29FB _ 8B. 45, 08
        add     edx, 4                                  ; 29FE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A01 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2A05 _ 8B. 55, F0
        add     edx, 1                                  ; 2A08 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2A0B _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2A0E _ 83. 6D, F0, 01
?_120:  mov     eax, dword [ebp-10H]                    ; 2A12 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2A15 _ 3B. 45, 10
        jge     ?_119                                   ; 2A18 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2A1A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2A1D _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2A20 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2A23 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2A26 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2A2A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A2D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2A30 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A33 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2A36 _ 89. 50, 10
?_121:  mov     eax, dword [ebp+0CH]                    ; 2A39 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A3C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A3F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A42 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A45 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A48 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A4B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A4E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A51 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A54 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A57 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A5A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A5D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A60 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2A63 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2A66 _ FF. 75, 10
        push    ebx                                     ; 2A69 _ 53
        push    ecx                                     ; 2A6A _ 51
        push    edx                                     ; 2A6B _ 52
        push    eax                                     ; 2A6C _ 50
        push    dword [ebp+8H]                          ; 2A6D _ FF. 75, 08
        call    sheet_refreshmap                        ; 2A70 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A75 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A78 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A7B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A7E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A81 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A84 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A87 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A8A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A8D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A90 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A93 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A96 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A99 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A9C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A9F _ 8B. 40, 0C
        sub     esp, 4                                  ; 2AA2 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2AA5 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2AA8 _ FF. 75, 10
        push    ebx                                     ; 2AAB _ 53
        push    ecx                                     ; 2AAC _ 51
        push    edx                                     ; 2AAD _ 52
        push    eax                                     ; 2AAE _ 50
        push    dword [ebp+8H]                          ; 2AAF _ FF. 75, 08
        call    sheet_refresh_new                       ; 2AB2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2AB7 _ 83. C4, 20
?_122:  nop                                             ; 2ABA _ 90
        lea     esp, [ebp-8H]                           ; 2ABB _ 8D. 65, F8
        pop     ebx                                     ; 2ABE _ 5B
        pop     esi                                     ; 2ABF _ 5E
        pop     ebp                                     ; 2AC0 _ 5D
        ret                                             ; 2AC1 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2AC2 _ 55
        mov     ebp, esp                                ; 2AC3 _ 89. E5
        push    edi                                     ; 2AC5 _ 57
        push    esi                                     ; 2AC6 _ 56
        push    ebx                                     ; 2AC7 _ 53
        sub     esp, 28                                 ; 2AC8 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2ACB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2ACE _ 8B. 40, 18
        test    eax, eax                                ; 2AD1 _ 85. C0
        js      ?_123                                   ; 2AD3 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2AD5 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2AD8 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2ADB _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2ADE _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2AE1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AE4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2AE7 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2AEA _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2AED _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2AF0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2AF3 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2AF6 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2AF9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AFC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2AFF _ 8B. 45, 14
        add     edx, eax                                ; 2B02 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B04 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B07 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2B0A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2B0D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2B10 _ 03. 45, E4
        sub     esp, 4                                  ; 2B13 _ 83. EC, 04
        push    ebx                                     ; 2B16 _ 53
        push    ecx                                     ; 2B17 _ 51
        push    edi                                     ; 2B18 _ 57
        push    esi                                     ; 2B19 _ 56
        push    edx                                     ; 2B1A _ 52
        push    eax                                     ; 2B1B _ 50
        push    dword [ebp+8H]                          ; 2B1C _ FF. 75, 08
        call    sheet_refresh_new                       ; 2B1F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B24 _ 83. C4, 20
?_123:  mov     eax, 0                                  ; 2B27 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2B2C _ 8D. 65, F4
        pop     ebx                                     ; 2B2F _ 5B
        pop     esi                                     ; 2B30 _ 5E
        pop     edi                                     ; 2B31 _ 5F
        pop     ebp                                     ; 2B32 _ 5D
        ret                                             ; 2B33 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2B34 _ 55
        mov     ebp, esp                                ; 2B35 _ 89. E5
        push    esi                                     ; 2B37 _ 56
        push    ebx                                     ; 2B38 _ 53
        sub     esp, 16                                 ; 2B39 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2B3C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B3F _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2B42 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2B45 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2B48 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2B4B _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2B4E _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2B51 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2B54 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2B57 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2B5A _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2B5D _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B60 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B63 _ 8B. 40, 18
        test    eax, eax                                ; 2B66 _ 85. C0
        js      ?_124                                   ; 2B68 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2B6E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2B71 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B74 _ 8B. 45, F4
        add     edx, eax                                ; 2B77 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B79 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2B7C _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2B7F _ 8B. 45, F0
        add     eax, ecx                                ; 2B82 _ 01. C8
        sub     esp, 8                                  ; 2B84 _ 83. EC, 08
        push    0                                       ; 2B87 _ 6A, 00
        push    edx                                     ; 2B89 _ 52
        push    eax                                     ; 2B8A _ 50
        push    dword [ebp-0CH]                         ; 2B8B _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2B8E _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2B91 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2B94 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B99 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2B9C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B9F _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2BA2 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2BA5 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2BA8 _ 8B. 55, 14
        add     ecx, edx                                ; 2BAB _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2BAD _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2BB0 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2BB3 _ 8B. 55, 10
        add     edx, ebx                                ; 2BB6 _ 01. DA
        sub     esp, 8                                  ; 2BB8 _ 83. EC, 08
        push    eax                                     ; 2BBB _ 50
        push    ecx                                     ; 2BBC _ 51
        push    edx                                     ; 2BBD _ 52
        push    dword [ebp+14H]                         ; 2BBE _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2BC1 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2BC4 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2BC7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BCC _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BCF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BD2 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2BD5 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2BD8 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2BDB _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2BDE _ 8B. 45, F4
        add     edx, eax                                ; 2BE1 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2BE3 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2BE6 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2BE9 _ 8B. 45, F0
        add     eax, ebx                                ; 2BEC _ 01. D8
        sub     esp, 4                                  ; 2BEE _ 83. EC, 04
        push    ecx                                     ; 2BF1 _ 51
        push    0                                       ; 2BF2 _ 6A, 00
        push    edx                                     ; 2BF4 _ 52
        push    eax                                     ; 2BF5 _ 50
        push    dword [ebp-0CH]                         ; 2BF6 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2BF9 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2BFC _ FF. 75, 08
        call    sheet_refresh_new                       ; 2BFF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C04 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2C07 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2C0A _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2C0D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C10 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2C13 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2C16 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2C19 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2C1C _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2C1E _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2C21 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2C24 _ 8B. 4D, 10
        add     ecx, esi                                ; 2C27 _ 01. F1
        sub     esp, 4                                  ; 2C29 _ 83. EC, 04
        push    edx                                     ; 2C2C _ 52
        push    eax                                     ; 2C2D _ 50
        push    ebx                                     ; 2C2E _ 53
        push    ecx                                     ; 2C2F _ 51
        push    dword [ebp+14H]                         ; 2C30 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2C33 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2C36 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C39 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C3E _ 83. C4, 20
?_124:  nop                                             ; 2C41 _ 90
        lea     esp, [ebp-8H]                           ; 2C42 _ 8D. 65, F8
        pop     ebx                                     ; 2C45 _ 5B
        pop     esi                                     ; 2C46 _ 5E
        pop     ebp                                     ; 2C47 _ 5D
        ret                                             ; 2C48 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2C49 _ 55
        mov     ebp, esp                                ; 2C4A _ 89. E5
        sub     esp, 48                                 ; 2C4C _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2C4F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C52 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2C54 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2C57 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C5A _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2C5D _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2C60 _ 83. 7D, 0C, 00
        jns     ?_125                                   ; 2C64 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2C66 _ C7. 45, 0C, 00000000
?_125:  cmp     dword [ebp+10H], 8                      ; 2C6D _ 83. 7D, 10, 08
        jg      ?_126                                   ; 2C71 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2C73 _ C7. 45, 10, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 2C7A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C7D _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2C80 _ 39. 45, 14
        jle     ?_127                                   ; 2C83 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C85 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C88 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2C8B _ 89. 45, 14
?_127:  mov     eax, dword [ebp+8H]                     ; 2C8E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C91 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2C94 _ 39. 45, 18
        jle     ?_128                                   ; 2C97 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C99 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C9C _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2C9F _ 89. 45, 18
?_128:  mov     eax, dword [ebp+1CH]                    ; 2CA2 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2CA5 _ 89. 45, DC
        jmp     ?_135                                   ; 2CA8 _ E9, 00000118

?_129:  mov     eax, dword [ebp+8H]                     ; 2CAD _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2CB0 _ 8B. 55, DC
        add     edx, 4                                  ; 2CB3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CB6 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2CBA _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2CBD _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2CC0 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2CC2 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2CC5 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2CC8 _ 8B. 55, 08
        add     edx, 1044                               ; 2CCB _ 81. C2, 00000414
        sub     eax, edx                                ; 2CD1 _ 29. D0
        sar     eax, 5                                  ; 2CD3 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2CD6 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2CD9 _ C7. 45, E0, 00000000
        jmp     ?_134                                   ; 2CE0 _ E9, 000000CD

?_130:  mov     eax, dword [ebp-10H]                    ; 2CE5 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2CE8 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2CEB _ 8B. 45, E0
        add     eax, edx                                ; 2CEE _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2CF0 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2CF3 _ C7. 45, E4, 00000000
        jmp     ?_133                                   ; 2CFA _ E9, 000000A0

?_131:  mov     eax, dword [ebp-10H]                    ; 2CFF _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2D02 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2D05 _ 8B. 45, E4
        add     eax, edx                                ; 2D08 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2D0A _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2D0D _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2D10 _ 3B. 45, FC
        jg      ?_132                                   ; 2D13 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2D19 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2D1C _ 3B. 45, 14
        jge     ?_132                                   ; 2D1F _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2D21 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2D24 _ 3B. 45, F8
        jg      ?_132                                   ; 2D27 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2D29 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2D2C _ 3B. 45, 18
        jge     ?_132                                   ; 2D2F _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2D31 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D34 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2D37 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2D3B _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2D3D _ 8B. 45, E4
        add     eax, edx                                ; 2D40 _ 01. D0
        mov     edx, eax                                ; 2D42 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2D44 _ 8B. 45, F4
        add     eax, edx                                ; 2D47 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D49 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2D4C _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2D4F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D52 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D55 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D59 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D5B _ 8B. 45, FC
        add     eax, edx                                ; 2D5E _ 01. D0
        mov     edx, eax                                ; 2D60 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2D62 _ 8B. 45, EC
        add     eax, edx                                ; 2D65 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D67 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2D6A _ 38. 45, DA
        jnz     ?_132                                   ; 2D6D _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2D6F _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2D73 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2D76 _ 8B. 40, 14
        cmp     edx, eax                                ; 2D79 _ 39. C2
        jz      ?_132                                   ; 2D7B _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2D7D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D80 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D83 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D87 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D89 _ 8B. 45, FC
        add     eax, edx                                ; 2D8C _ 01. D0
        mov     edx, eax                                ; 2D8E _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2D90 _ 8B. 45, E8
        add     edx, eax                                ; 2D93 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2D95 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2D99 _ 88. 02
?_132:  add     dword [ebp-1CH], 1                      ; 2D9B _ 83. 45, E4, 01
?_133:  mov     eax, dword [ebp-10H]                    ; 2D9F _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2DA2 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2DA5 _ 39. 45, E4
        jl      ?_131                                   ; 2DA8 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2DAE _ 83. 45, E0, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 2DB2 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2DB5 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2DB8 _ 39. 45, E0
        jl      ?_130                                   ; 2DBB _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2DC1 _ 83. 45, DC, 01
?_135:  mov     eax, dword [ebp-24H]                    ; 2DC5 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2DC8 _ 3B. 45, 20
        jle     ?_129                                   ; 2DCB _ 0F 8E, FFFFFEDC
        nop                                             ; 2DD1 _ 90
        leave                                           ; 2DD2 _ C9
        ret                                             ; 2DD3 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2DD4 _ 55
        mov     ebp, esp                                ; 2DD5 _ 89. E5
        sub     esp, 64                                 ; 2DD7 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2DDA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2DDD _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2DE0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2DE3 _ 83. 7D, 0C, 00
        jns     ?_136                                   ; 2DE7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2DE9 _ C7. 45, 0C, 00000000
?_136:  mov     eax, dword [ebp+8H]                     ; 2DF0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DF3 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2DF6 _ 39. 45, 0C
        jle     ?_137                                   ; 2DF9 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2DFB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DFE _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2E01 _ 89. 45, 0C
?_137:  cmp     dword [ebp+10H], 0                      ; 2E04 _ 83. 7D, 10, 00
        jns     ?_138                                   ; 2E08 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2E0A _ C7. 45, 10, 00000000
?_138:  mov     eax, dword [ebp+8H]                     ; 2E11 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E14 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2E17 _ 39. 45, 10
        jle     ?_139                                   ; 2E1A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2E1C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E1F _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2E22 _ 89. 45, 10
?_139:  mov     eax, dword [ebp+1CH]                    ; 2E25 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2E28 _ 89. 45, E0
        jmp     ?_150                                   ; 2E2B _ E9, 00000140

?_140:  mov     eax, dword [ebp+8H]                     ; 2E30 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2E33 _ 8B. 55, E0
        add     edx, 4                                  ; 2E36 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E39 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2E3D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2E40 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2E43 _ 8B. 55, 08
        add     edx, 1044                               ; 2E46 _ 81. C2, 00000414
        sub     eax, edx                                ; 2E4C _ 29. D0
        sar     eax, 5                                  ; 2E4E _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2E51 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2E54 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2E57 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2E59 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2E5C _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E5F _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2E62 _ 8B. 55, 0C
        sub     edx, eax                                ; 2E65 _ 29. C2
        mov     eax, edx                                ; 2E67 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2E69 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2E6C _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E6F _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2E72 _ 8B. 55, 10
        sub     edx, eax                                ; 2E75 _ 29. C2
        mov     eax, edx                                ; 2E77 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2E79 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2E7C _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E7F _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2E82 _ 8B. 55, 14
        sub     edx, eax                                ; 2E85 _ 29. C2
        mov     eax, edx                                ; 2E87 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2E89 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2E8C _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E8F _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2E92 _ 8B. 55, 18
        sub     edx, eax                                ; 2E95 _ 29. C2
        mov     eax, edx                                ; 2E97 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2E99 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2E9C _ 83. 7D, D0, 00
        jns     ?_141                                   ; 2EA0 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2EA2 _ C7. 45, D0, 00000000
?_141:  cmp     dword [ebp-2CH], 0                      ; 2EA9 _ 83. 7D, D4, 00
        jns     ?_142                                   ; 2EAD _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2EAF _ C7. 45, D4, 00000000
?_142:  mov     eax, dword [ebp-10H]                    ; 2EB6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2EB9 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2EBC _ 39. 45, D8
        jle     ?_143                                   ; 2EBF _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2EC1 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2EC4 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2EC7 _ 89. 45, D8
?_143:  mov     eax, dword [ebp-10H]                    ; 2ECA _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2ECD _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2ED0 _ 39. 45, DC
        jle     ?_144                                   ; 2ED3 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2ED5 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2ED8 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2EDB _ 89. 45, DC
?_144:  mov     eax, dword [ebp-2CH]                    ; 2EDE _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2EE1 _ 89. 45, E4
        jmp     ?_149                                   ; 2EE4 _ EB, 7A

?_145:  mov     eax, dword [ebp-10H]                    ; 2EE6 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2EE9 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2EEC _ 8B. 45, E4
        add     eax, edx                                ; 2EEF _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2EF1 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2EF4 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2EF7 _ 89. 45, E8
        jmp     ?_148                                   ; 2EFA _ EB, 58

?_146:  mov     eax, dword [ebp-10H]                    ; 2EFC _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2EFF _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2F02 _ 8B. 45, E8
        add     eax, edx                                ; 2F05 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2F07 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2F0A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2F0D _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2F10 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2F14 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2F16 _ 8B. 45, E8
        add     eax, edx                                ; 2F19 _ 01. D0
        mov     edx, eax                                ; 2F1B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2F1D _ 8B. 45, F4
        add     eax, edx                                ; 2F20 _ 01. D0
        movzx   eax, byte [eax]                         ; 2F22 _ 0F B6. 00
        movzx   edx, al                                 ; 2F25 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2F28 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2F2B _ 8B. 40, 14
        cmp     edx, eax                                ; 2F2E _ 39. C2
        jz      ?_147                                   ; 2F30 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2F32 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F35 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2F38 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2F3C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2F3E _ 8B. 45, FC
        add     eax, edx                                ; 2F41 _ 01. D0
        mov     edx, eax                                ; 2F43 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2F45 _ 8B. 45, EC
        add     edx, eax                                ; 2F48 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2F4A _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2F4E _ 88. 02
?_147:  add     dword [ebp-18H], 1                      ; 2F50 _ 83. 45, E8, 01
?_148:  mov     eax, dword [ebp-18H]                    ; 2F54 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2F57 _ 3B. 45, D8
        jl      ?_146                                   ; 2F5A _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2F5C _ 83. 45, E4, 01
?_149:  mov     eax, dword [ebp-1CH]                    ; 2F60 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2F63 _ 3B. 45, DC
        jl      ?_145                                   ; 2F66 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2F6C _ 83. 45, E0, 01
?_150:  mov     eax, dword [ebp+8H]                     ; 2F70 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F73 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2F76 _ 39. 45, E0
        jle     ?_140                                   ; 2F79 _ 0F 8E, FFFFFEB1
        nop                                             ; 2F7F _ 90
        leave                                           ; 2F80 _ C9
        ret                                             ; 2F81 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2F82 _ 55
        mov     ebp, esp                                ; 2F83 _ 89. E5
        sub     esp, 24                                 ; 2F85 _ 83. EC, 18
        sub     esp, 8                                  ; 2F88 _ 83. EC, 08
        push    52                                      ; 2F8B _ 6A, 34
        push    67                                      ; 2F8D _ 6A, 43
        call    io_out8                                 ; 2F8F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F94 _ 83. C4, 10
        sub     esp, 8                                  ; 2F97 _ 83. EC, 08
        push    156                                     ; 2F9A _ 68, 0000009C
        push    64                                      ; 2F9F _ 6A, 40
        call    io_out8                                 ; 2FA1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FA6 _ 83. C4, 10
        sub     esp, 8                                  ; 2FA9 _ 83. EC, 08
        push    46                                      ; 2FAC _ 6A, 2E
        push    64                                      ; 2FAE _ 6A, 40
        call    io_out8                                 ; 2FB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FB5 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2FB8 _ C7. 05, 00000360(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2FC2 _ C7. 45, F4, 00000000
        jmp     ?_152                                   ; 2FC9 _ EB, 15

?_151:  mov     eax, dword [ebp-0CH]                    ; 2FCB _ 8B. 45, F4
        shl     eax, 4                                  ; 2FCE _ C1. E0, 04
        add     eax, ?_218                              ; 2FD1 _ 05, 00000368(d)
        mov     dword [eax], 0                          ; 2FD6 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2FDC _ 83. 45, F4, 01
?_152:  cmp     dword [ebp-0CH], 499                    ; 2FE0 _ 81. 7D, F4, 000001F3
        jle     ?_151                                   ; 2FE7 _ 7E, E2
        nop                                             ; 2FE9 _ 90
        leave                                           ; 2FEA _ C9
        ret                                             ; 2FEB _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2FEC _ 55
        mov     ebp, esp                                ; 2FED _ 89. E5
        sub     esp, 16                                 ; 2FEF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2FF2 _ C7. 45, FC, 00000000
        jmp     ?_155                                   ; 2FF9 _ EB, 36

?_153:  mov     eax, dword [ebp-4H]                     ; 2FFB _ 8B. 45, FC
        shl     eax, 4                                  ; 2FFE _ C1. E0, 04
        add     eax, ?_218                              ; 3001 _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 3006 _ 8B. 00
        test    eax, eax                                ; 3008 _ 85. C0
        jnz     ?_154                                   ; 300A _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 300C _ 8B. 45, FC
        shl     eax, 4                                  ; 300F _ C1. E0, 04
        add     eax, ?_218                              ; 3012 _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 3017 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 301D _ 8B. 45, FC
        shl     eax, 4                                  ; 3020 _ C1. E0, 04
        add     eax, timerctl                           ; 3023 _ 05, 00000360(d)
        add     eax, 4                                  ; 3028 _ 83. C0, 04
        jmp     ?_156                                   ; 302B _ EB, 12

?_154:  add     dword [ebp-4H], 1                       ; 302D _ 83. 45, FC, 01
?_155:  cmp     dword [ebp-4H], 499                     ; 3031 _ 81. 7D, FC, 000001F3
        jle     ?_153                                   ; 3038 _ 7E, C1
        mov     eax, 0                                  ; 303A _ B8, 00000000
?_156:  leave                                           ; 303F _ C9
        ret                                             ; 3040 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3041 _ 55
        mov     ebp, esp                                ; 3042 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3044 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3047 _ C7. 40, 04, 00000000
        nop                                             ; 304E _ 90
        pop     ebp                                     ; 304F _ 5D
        ret                                             ; 3050 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3051 _ 55
        mov     ebp, esp                                ; 3052 _ 89. E5
        sub     esp, 4                                  ; 3054 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3057 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 305A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 305D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3060 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3063 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3066 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3069 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 306D _ 88. 50, 0C
        nop                                             ; 3070 _ 90
        leave                                           ; 3071 _ C9
        ret                                             ; 3072 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3073 _ 55
        mov     ebp, esp                                ; 3074 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3076 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3079 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 307C _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 307E _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3081 _ C7. 40, 04, 00000002
        nop                                             ; 3088 _ 90
        pop     ebp                                     ; 3089 _ 5D
        ret                                             ; 308A _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 308B _ 55
        mov     ebp, esp                                ; 308C _ 89. E5
        mov     eax, timerctl                           ; 308E _ B8, 00000360(d)
        pop     ebp                                     ; 3093 _ 5D
        ret                                             ; 3094 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3095 _ 55
        mov     ebp, esp                                ; 3096 _ 89. E5
        sub     esp, 24                                 ; 3098 _ 83. EC, 18
        sub     esp, 8                                  ; 309B _ 83. EC, 08
        push    96                                      ; 309E _ 6A, 60
        push    32                                      ; 30A0 _ 6A, 20
        call    io_out8                                 ; 30A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30A7 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 30AA _ A1, 00000360(d)
        add     eax, 1                                  ; 30AF _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 30B2 _ A3, 00000360(d)
        mov     dword [ebp-0CH], 0                      ; 30B7 _ C7. 45, F4, 00000000
        jmp     ?_159                                   ; 30BE _ E9, 00000080

?_157:  mov     eax, dword [ebp-0CH]                    ; 30C3 _ 8B. 45, F4
        shl     eax, 4                                  ; 30C6 _ C1. E0, 04
        add     eax, ?_218                              ; 30C9 _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 30CE _ 8B. 00
        cmp     eax, 2                                  ; 30D0 _ 83. F8, 02
        jnz     ?_158                                   ; 30D3 _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 30D5 _ 8B. 45, F4
        shl     eax, 4                                  ; 30D8 _ C1. E0, 04
        add     eax, ?_217                              ; 30DB _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 30E0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 30E2 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 30E5 _ 8B. 45, F4
        shl     eax, 4                                  ; 30E8 _ C1. E0, 04
        add     eax, ?_217                              ; 30EB _ 05, 00000364(d)
        mov     dword [eax], edx                        ; 30F0 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 30F2 _ 8B. 45, F4
        shl     eax, 4                                  ; 30F5 _ C1. E0, 04
        add     eax, ?_217                              ; 30F8 _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 30FD _ 8B. 00
        test    eax, eax                                ; 30FF _ 85. C0
        jnz     ?_158                                   ; 3101 _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 3103 _ 8B. 45, F4
        shl     eax, 4                                  ; 3106 _ C1. E0, 04
        add     eax, ?_218                              ; 3109 _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 310E _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3114 _ 8B. 45, F4
        shl     eax, 4                                  ; 3117 _ C1. E0, 04
        add     eax, ?_220                              ; 311A _ 05, 00000370(d)
        movzx   eax, byte [eax]                         ; 311F _ 0F B6. 00
        movzx   edx, al                                 ; 3122 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3125 _ 8B. 45, F4
        shl     eax, 4                                  ; 3128 _ C1. E0, 04
        add     eax, ?_219                              ; 312B _ 05, 0000036C(d)
        mov     eax, dword [eax]                        ; 3130 _ 8B. 00
        sub     esp, 8                                  ; 3132 _ 83. EC, 08
        push    edx                                     ; 3135 _ 52
        push    eax                                     ; 3136 _ 50
        call    fifo8_put                               ; 3137 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 313C _ 83. C4, 10
?_158:  add     dword [ebp-0CH], 1                      ; 313F _ 83. 45, F4, 01
?_159:  cmp     dword [ebp-0CH], 499                    ; 3143 _ 81. 7D, F4, 000001F3
        jle     ?_157                                   ; 314A _ 0F 8E, FFFFFF73
        nop                                             ; 3150 _ 90
        leave                                           ; 3151 _ C9
        ret                                             ; 3152 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 3153 _ 55
        mov     ebp, esp                                ; 3154 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3156 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3159 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 315C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 315F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3162 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3165 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3167 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 316A _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 316D _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3170 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3173 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 317A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 317D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3184 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3187 _ C7. 40, 14, 00000000
        nop                                             ; 318E _ 90
        pop     ebp                                     ; 318F _ 5D
        ret                                             ; 3190 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3191 _ 55
        mov     ebp, esp                                ; 3192 _ 89. E5
        sub     esp, 4                                  ; 3194 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 3197 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 319A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 319D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31A0 _ 8B. 40, 10
        test    eax, eax                                ; 31A3 _ 85. C0
        jnz     ?_160                                   ; 31A5 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 31A7 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 31AA _ 8B. 40, 14
        or      eax, 01H                                ; 31AD _ 83. C8, 01
        mov     edx, eax                                ; 31B0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 31B2 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 31B5 _ 89. 50, 14
        mov     eax, 4294967295                         ; 31B8 _ B8, FFFFFFFF
        jmp     ?_162                                   ; 31BD _ EB, 50

?_160:  mov     eax, dword [ebp+8H]                     ; 31BF _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 31C2 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 31C4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31C7 _ 8B. 40, 08
        add     edx, eax                                ; 31CA _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 31CC _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 31D0 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 31D2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31D5 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 31D8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31DB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31DE _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31E1 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 31E4 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31E7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31EA _ 8B. 40, 0C
        cmp     edx, eax                                ; 31ED _ 39. C2
        jl      ?_161                                   ; 31EF _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 31F1 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31F4 _ C7. 40, 08, 00000000
?_161:  mov     eax, dword [ebp+8H]                     ; 31FB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31FE _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3201 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3204 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3207 _ 89. 50, 10
        mov     eax, 1                                  ; 320A _ B8, 00000001
?_162:  leave                                           ; 320F _ C9
        ret                                             ; 3210 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3211 _ 55
        mov     ebp, esp                                ; 3212 _ 89. E5
        sub     esp, 16                                 ; 3214 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3217 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 321A _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 321D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3220 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3223 _ 39. C2
        jnz     ?_163                                   ; 3225 _ 75, 07
        mov     eax, 4294967295                         ; 3227 _ B8, FFFFFFFF
        jmp     ?_165                                   ; 322C _ EB, 51

?_163:  mov     eax, dword [ebp+8H]                     ; 322E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3231 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3233 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3236 _ 8B. 40, 04
        add     eax, edx                                ; 3239 _ 01. D0
        movzx   eax, byte [eax]                         ; 323B _ 0F B6. 00
        movzx   eax, al                                 ; 323E _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3241 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3244 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3247 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 324A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 324D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3250 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3253 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3256 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3259 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 325C _ 8B. 40, 0C
        cmp     edx, eax                                ; 325F _ 39. C2
        jl      ?_164                                   ; 3261 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3263 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3266 _ C7. 40, 04, 00000000
?_164:  mov     eax, dword [ebp+8H]                     ; 326D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3270 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3273 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3276 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3279 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 327C _ 8B. 45, FC
?_165:  leave                                           ; 327F _ C9
        ret                                             ; 3280 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3281 _ 55
        mov     ebp, esp                                ; 3282 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3284 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3287 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 328A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 328D _ 8B. 40, 10
        sub     edx, eax                                ; 3290 _ 29. C2
        mov     eax, edx                                ; 3292 _ 89. D0
        pop     ebp                                     ; 3294 _ 5D
        ret                                             ; 3295 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3296 _ 55
        mov     ebp, esp                                ; 3297 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3299 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_166                                   ; 32A0 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 32A2 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 32A9 _ 8B. 45, 0C
        shr     eax, 12                                 ; 32AC _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 32AF _ 89. 45, 0C
?_166:  mov     eax, dword [ebp+0CH]                    ; 32B2 _ 8B. 45, 0C
        mov     edx, eax                                ; 32B5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32B7 _ 8B. 45, 08
        mov     word [eax], dx                          ; 32BA _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 32BD _ 8B. 45, 10
        mov     edx, eax                                ; 32C0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32C2 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 32C5 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 32C9 _ 8B. 45, 10
        sar     eax, 16                                 ; 32CC _ C1. F8, 10
        mov     edx, eax                                ; 32CF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32D1 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 32D4 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 32D7 _ 8B. 45, 14
        mov     edx, eax                                ; 32DA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32DC _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 32DF _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 32E2 _ 8B. 45, 0C
        shr     eax, 16                                 ; 32E5 _ C1. E8, 10
        and     eax, 0FH                                ; 32E8 _ 83. E0, 0F
        mov     edx, eax                                ; 32EB _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 32ED _ 8B. 45, 14
        sar     eax, 8                                  ; 32F0 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 32F3 _ 83. E0, F0
        or      eax, edx                                ; 32F6 _ 09. D0
        mov     edx, eax                                ; 32F8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32FA _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 32FD _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3300 _ 8B. 45, 10
        shr     eax, 24                                 ; 3303 _ C1. E8, 18
        mov     edx, eax                                ; 3306 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3308 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 330B _ 88. 50, 07
        nop                                             ; 330E _ 90
        pop     ebp                                     ; 330F _ 5D
        ret                                             ; 3310 _ C3
; set_segmdesc End of function



?_167:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_168:                                                  ; byte
        db 57H, 49H, 4EH, 5FH, 53H, 48H, 45H, 45H       ; 0008 _ WIN_SHEE
        db 54H, 00H                                     ; 0010 _ T.

?_169:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0012 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 001A _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0022 _ s: .

?_170:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0026 _ MB.

?_171:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 74H       ; 0029 _ switch t
        db 6FH, 20H, 74H, 61H, 73H, 6BH, 20H, 62H       ; 0031 _ o task b
        db 00H                                          ; 0039 _ .

?_172:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 003A _ 3[sec].

?_173:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0041 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0049 _ sk b.

?_174:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 62H       ; 004E _ switch b
        db 61H, 63H, 6BH, 00H                           ; 0056 _ ack.

?_175:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 005A _ Page is:
        db 20H, 00H                                     ; 0062 _  .

?_176:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0064 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 006C _ Low: .

?_177:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0072 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 007A _ High: .

?_178:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0081 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0089 _ w: .

?_179:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 008D _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0095 _ gh: .

?_180:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 009A _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_181:  db 00H                                          ; 0002 _ .

?_182:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.1768: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.1809:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.1864:                                            ; byte
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

closebtn.1991:                                          ; byte
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

?_183:  resw    1                                       ; 0004

?_184:  resw    1                                       ; 0006

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

?_185:  resd    1                                       ; 00EC

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
        resd    4                                       ; 0230

tss_a.1757:                                             ; byte
        resb    28                                      ; 0240

?_186:  resd    2                                       ; 025C

?_187:  resd    5                                       ; 0264

?_188:  resd    4                                       ; 0278

?_189:  resd    1                                       ; 0288

?_190:  resd    1                                       ; 028C

?_191:  resd    1                                       ; 0290

?_192:  resd    1                                       ; 0294

?_193:  resd    1                                       ; 0298

?_194:  resd    1                                       ; 029C

?_195:  resd    1                                       ; 02A0

?_196:  resd    7                                       ; 02A4

tss_b.1758:                                             ; byte
        resb    32                                      ; 02C0

?_197:  resd    1                                       ; 02E0

?_198:  resd    1                                       ; 02E4

?_199:  resd    1                                       ; 02E8

?_200:  resd    1                                       ; 02EC

?_201:  resd    1                                       ; 02F0

?_202:  resd    1                                       ; 02F4

?_203:  resd    1                                       ; 02F8

?_204:  resd    1                                       ; 02FC

?_205:  resd    1                                       ; 0300

?_206:  resd    1                                       ; 0304

?_207:  resd    1                                       ; 0308

?_208:  resd    1                                       ; 030C

?_209:  resd    1                                       ; 0310

?_210:  resd    1                                       ; 0314

?_211:  resd    1                                       ; 0318

?_212:  resd    1                                       ; 031C

?_213:  resd    1                                       ; 0320

?_214:  resd    1                                       ; 0324

cnt.1763: resd  1                                       ; 0328

line.1767:                                              ; dword
        resd    1                                       ; 032C

str.1907:                                               ; byte
        resb    1                                       ; 0330

?_215:  resb    9                                       ; 0331

?_216:  resb    2                                       ; 033A

line.1940:                                              ; dword
        resd    1                                       ; 033C

pos.1939: resd  8                                       ; 0340

timerctl:                                               ; byte
        resd    1                                       ; 0360

?_217:                                                  ; byte
        resb    4                                       ; 0364

?_218:                                                  ; byte
        resb    4                                       ; 0368

?_219:                                                  ; byte
        resb    4                                       ; 036C

?_220:                                                  ; byte
        resb    7988                                    ; 0370


