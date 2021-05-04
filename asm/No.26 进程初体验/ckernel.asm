; Disassembly of file: ckernel.o
; Sat Apr 10 17:06:58 2021
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
        movzx   eax, word [?_178]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-68H], eax                    ; 0034 _ 89. 45, 98
        movzx   eax, word [?_179]                       ; 0037 _ 0F B7. 05, 00000006(d)
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
        mov     edx, dword [sheet_back]                 ; 018B _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0191 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0196 _ 83. EC, 08
        push    ?_163                                   ; 0199 _ 68, 00000000(d)
        push    3                                       ; 019E _ 6A, 03
        push    0                                       ; 01A0 _ 6A, 00
        push    0                                       ; 01A2 _ 6A, 00
        push    edx                                     ; 01A4 _ 52
        push    eax                                     ; 01A5 _ 50
        call    showString                              ; 01A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01AB _ 83. C4, 20
        mov     edx, dword [sheet_back]                 ; 01AE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 01B4 _ A1, 00000220(d)
        sub     esp, 8                                  ; 01B9 _ 83. EC, 08
        push    dword [ebp-48H]                         ; 01BC _ FF. 75, B8
        push    3                                       ; 01BF _ 6A, 03
        push    0                                       ; 01C1 _ 6A, 00
        push    152                                     ; 01C3 _ 68, 00000098
        push    edx                                     ; 01C8 _ 52
        push    eax                                     ; 01C9 _ 50
        call    showString                              ; 01CA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01CF _ 83. C4, 20
        mov     edx, dword [sheet_back]                 ; 01D2 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 01D8 _ A1, 00000220(d)
        sub     esp, 8                                  ; 01DD _ 83. EC, 08
        push    ?_164                                   ; 01E0 _ 68, 00000014(d)
        push    3                                       ; 01E5 _ 6A, 03
        push    0                                       ; 01E7 _ 6A, 00
        push    240                                     ; 01E9 _ 68, 000000F0
        push    edx                                     ; 01EE _ 52
        push    eax                                     ; 01EF _ 50
        call    showString                              ; 01F0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01F5 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 01F8 _ A1, 00000008(d)
        push    dword [ebp-64H]                         ; 01FD _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 0200 _ FF. 75, 98
        push    dword [ebp-6CH]                         ; 0203 _ FF. 75, 94
        push    eax                                     ; 0206 _ 50
        call    shtctl_init                             ; 0207 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 020C _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 020F _ A3, 00000220(d)
        mov     eax, dword [shtctl]                     ; 0214 _ A1, 00000220(d)
        sub     esp, 12                                 ; 0219 _ 83. EC, 0C
        push    eax                                     ; 021C _ 50
        call    sheet_alloc                             ; 021D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0222 _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 0225 _ A3, 00000228(d)
        mov     eax, dword [shtctl]                     ; 022A _ A1, 00000220(d)
        sub     esp, 12                                 ; 022F _ 83. EC, 0C
        push    eax                                     ; 0232 _ 50
        call    sheet_alloc                             ; 0233 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0238 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 023B _ A3, 0000022C(d)
        mov     eax, dword [ebp-68H]                    ; 0240 _ 8B. 45, 98
        imul    eax, dword [ebp-64H]                    ; 0243 _ 0F AF. 45, 9C
        mov     edx, eax                                ; 0247 _ 89. C2
        mov     eax, dword [memman]                     ; 0249 _ A1, 00000008(d)
        sub     esp, 8                                  ; 024E _ 83. EC, 08
        push    edx                                     ; 0251 _ 52
        push    eax                                     ; 0252 _ 50
        call    memman_alloc_4K                         ; 0253 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0258 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 025B _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0260 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 0265 _ 83. EC, 04
        push    dword [ebp-64H]                         ; 0268 _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 026B _ FF. 75, 98
        push    eax                                     ; 026E _ 50
        call    init_screen8                            ; 026F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0274 _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0277 _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 027D _ A1, 00000228(d)
        sub     esp, 12                                 ; 0282 _ 83. EC, 0C
        push    99                                      ; 0285 _ 6A, 63
        push    dword [ebp-64H]                         ; 0287 _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 028A _ FF. 75, 98
        push    edx                                     ; 028D _ 52
        push    eax                                     ; 028E _ 50
        call    sheet_setbuf                            ; 028F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0294 _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 0297 _ A1, 0000022C(d)
        sub     esp, 12                                 ; 029C _ 83. EC, 0C
        push    99                                      ; 029F _ 6A, 63
        push    16                                      ; 02A1 _ 6A, 10
        push    16                                      ; 02A3 _ 6A, 10
        push    buf_mouse                               ; 02A5 _ 68, 00000100(d)
        push    eax                                     ; 02AA _ 50
        call    sheet_setbuf                            ; 02AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02B0 _ 83. C4, 20
        sub     esp, 8                                  ; 02B3 _ 83. EC, 08
        push    99                                      ; 02B6 _ 6A, 63
        push    buf_mouse                               ; 02B8 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 02BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02C2 _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 02C5 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 02CB _ A1, 00000220(d)
        push    0                                       ; 02D0 _ 6A, 00
        push    0                                       ; 02D2 _ 6A, 00
        push    edx                                     ; 02D4 _ 52
        push    eax                                     ; 02D5 _ 50
        call    sheet_slide                             ; 02D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02DB _ 83. C4, 10
        mov     eax, dword [ebp-68H]                    ; 02DE _ 8B. 45, 98
        sub     eax, 16                                 ; 02E1 _ 83. E8, 10
        mov     edx, eax                                ; 02E4 _ 89. C2
        shr     edx, 31                                 ; 02E6 _ C1. EA, 1F
        add     eax, edx                                ; 02E9 _ 01. D0
        sar     eax, 1                                  ; 02EB _ D1. F8
        mov     dword [mx], eax                         ; 02ED _ A3, 000000F0(d)
        mov     eax, dword [ebp-64H]                    ; 02F2 _ 8B. 45, 9C
        sub     eax, 44                                 ; 02F5 _ 83. E8, 2C
        mov     edx, eax                                ; 02F8 _ 89. C2
        shr     edx, 31                                 ; 02FA _ C1. EA, 1F
        add     eax, edx                                ; 02FD _ 01. D0
        sar     eax, 1                                  ; 02FF _ D1. F8
        mov     dword [my], eax                         ; 0301 _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 0306 _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 030C _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 0312 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0318 _ A1, 00000220(d)
        push    ebx                                     ; 031D _ 53
        push    ecx                                     ; 031E _ 51
        push    edx                                     ; 031F _ 52
        push    eax                                     ; 0320 _ 50
        call    sheet_slide                             ; 0321 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0326 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0329 _ A1, 00000220(d)
        sub     esp, 8                                  ; 032E _ 83. EC, 08
        push    ?_165                                   ; 0331 _ 68, 00000017(d)
        push    eax                                     ; 0336 _ 50
        call    messageBox                              ; 0337 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 033C _ 83. C4, 10
        mov     dword [sheet_win], eax                  ; 033F _ A3, 00000224(d)
        mov     edx, dword [sheet_back]                 ; 0344 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 034A _ A1, 00000220(d)
        sub     esp, 4                                  ; 034F _ 83. EC, 04
        push    0                                       ; 0352 _ 6A, 00
        push    edx                                     ; 0354 _ 52
        push    eax                                     ; 0355 _ 50
        call    sheet_level_updown                      ; 0356 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 035B _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 035E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0364 _ A1, 00000220(d)
        sub     esp, 4                                  ; 0369 _ 83. EC, 04
        push    50                                      ; 036C _ 6A, 32
        push    edx                                     ; 036E _ 52
        push    eax                                     ; 036F _ 50
        call    sheet_level_updown                      ; 0370 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0375 _ 83. C4, 10
        call    get_code32_addr                         ; 0378 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 037D _ 89. 45, BC
        call    get_addr_gdt                            ; 0380 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 0385 _ 89. 45, C0
        mov     dword [?_190], 0                        ; 0388 _ C7. 05, 000002A0(d), 00000000
        mov     dword [?_191], 1073741824               ; 0392 _ C7. 05, 000002A4(d), 40000000
        mov     dword [?_208], 0                        ; 039C _ C7. 05, 00000320(d), 00000000
        mov     dword [?_209], 1073741824               ; 03A6 _ C7. 05, 00000324(d), 40000000
        mov     edx, tss_a.1753                         ; 03B0 _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 03B5 _ 8B. 45, C0
        add     eax, 56                                 ; 03B8 _ 83. C0, 38
        push    137                                     ; 03BB _ 68, 00000089
        push    edx                                     ; 03C0 _ 52
        push    103                                     ; 03C1 _ 6A, 67
        push    eax                                     ; 03C3 _ 50
        call    set_segmdesc                            ; 03C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C9 _ 83. C4, 10
        mov     edx, tss_a.1753                         ; 03CC _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 03D1 _ 8B. 45, C0
        add     eax, 64                                 ; 03D4 _ 83. C0, 40
        push    137                                     ; 03D7 _ 68, 00000089
        push    edx                                     ; 03DC _ 52
        push    103                                     ; 03DD _ 6A, 67
        push    eax                                     ; 03DF _ 50
        call    set_segmdesc                            ; 03E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E5 _ 83. C4, 10
        mov     edx, tss_b.1754                         ; 03E8 _ BA, 000002C0(d)
        mov     eax, dword [ebp-40H]                    ; 03ED _ 8B. 45, C0
        add     eax, 72                                 ; 03F0 _ 83. C0, 48
        push    137                                     ; 03F3 _ 68, 00000089
        push    edx                                     ; 03F8 _ 52
        push    103                                     ; 03F9 _ 6A, 67
        push    eax                                     ; 03FB _ 50
        call    set_segmdesc                            ; 03FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0401 _ 83. C4, 10
        mov     edx, task_b_main                        ; 0404 _ BA, 00000000(d)
        mov     eax, dword [ebp-40H]                    ; 0409 _ 8B. 45, C0
        add     eax, 48                                 ; 040C _ 83. C0, 30
        push    16538                                   ; 040F _ 68, 0000409A
        push    edx                                     ; 0414 _ 52
        push    1048575                                 ; 0415 _ 68, 000FFFFF
        push    eax                                     ; 041A _ 50
        call    set_segmdesc                            ; 041B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0420 _ 83. C4, 10
        sub     esp, 12                                 ; 0423 _ 83. EC, 0C
        push    56                                      ; 0426 _ 6A, 38
        call    load_tr                                 ; 0428 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 042D _ 83. C4, 10
        call    taskswitch8                             ; 0430 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_182]                      ; 0435 _ A1, 00000264(d)
        sub     esp, 12                                 ; 043A _ 83. EC, 0C
        push    eax                                     ; 043D _ 50
        call    intToHexStr                             ; 043E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0443 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0446 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0449 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 044F _ A1, 00000220(d)
        sub     esp, 8                                  ; 0454 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0457 _ FF. 75, C4
        push    7                                       ; 045A _ 6A, 07
        push    0                                       ; 045C _ 6A, 00
        push    0                                       ; 045E _ 6A, 00
        push    edx                                     ; 0460 _ 52
        push    eax                                     ; 0461 _ 50
        call    showString                              ; 0462 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0467 _ 83. C4, 20
        mov     eax, dword [?_183]                      ; 046A _ A1, 00000278(d)
        sub     esp, 12                                 ; 046F _ 83. EC, 0C
        push    eax                                     ; 0472 _ 50
        call    intToHexStr                             ; 0473 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0478 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 047B _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 047E _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0484 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0489 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 048C _ FF. 75, C4
        push    7                                       ; 048F _ 6A, 07
        push    16                                      ; 0491 _ 6A, 10
        push    0                                       ; 0493 _ 6A, 00
        push    edx                                     ; 0495 _ 52
        push    eax                                     ; 0496 _ 50
        call    showString                              ; 0497 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 049C _ 83. C4, 20
        mov     eax, dword [?_184]                      ; 049F _ A1, 00000288(d)
        lea     edx, [eax+7H]                           ; 04A4 _ 8D. 50, 07
        test    eax, eax                                ; 04A7 _ 85. C0
        cmovs   eax, edx                                ; 04A9 _ 0F 48. C2
        sar     eax, 3                                  ; 04AC _ C1. F8, 03
        sub     esp, 12                                 ; 04AF _ 83. EC, 0C
        push    eax                                     ; 04B2 _ 50
        call    intToHexStr                             ; 04B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04B8 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 04BB _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 04BE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 04C4 _ A1, 00000220(d)
        sub     esp, 8                                  ; 04C9 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 04CC _ FF. 75, C4
        push    7                                       ; 04CF _ 6A, 07
        push    32                                      ; 04D1 _ 6A, 20
        push    0                                       ; 04D3 _ 6A, 00
        push    edx                                     ; 04D5 _ 52
        push    eax                                     ; 04D6 _ 50
        call    showString                              ; 04D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04DC _ 83. C4, 20
        mov     eax, dword [?_185]                      ; 04DF _ A1, 0000028C(d)
        lea     edx, [eax+7H]                           ; 04E4 _ 8D. 50, 07
        test    eax, eax                                ; 04E7 _ 85. C0
        cmovs   eax, edx                                ; 04E9 _ 0F 48. C2
        sar     eax, 3                                  ; 04EC _ C1. F8, 03
        sub     esp, 12                                 ; 04EF _ 83. EC, 0C
        push    eax                                     ; 04F2 _ 50
        call    intToHexStr                             ; 04F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04F8 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 04FB _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 04FE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0504 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0509 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 050C _ FF. 75, C4
        push    7                                       ; 050F _ 6A, 07
        push    48                                      ; 0511 _ 6A, 30
        push    0                                       ; 0513 _ 6A, 00
        push    edx                                     ; 0515 _ 52
        push    eax                                     ; 0516 _ 50
        call    showString                              ; 0517 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 051C _ 83. C4, 20
        mov     eax, dword [?_186]                      ; 051F _ A1, 00000290(d)
        lea     edx, [eax+7H]                           ; 0524 _ 8D. 50, 07
        test    eax, eax                                ; 0527 _ 85. C0
        cmovs   eax, edx                                ; 0529 _ 0F 48. C2
        sar     eax, 3                                  ; 052C _ C1. F8, 03
        sub     esp, 12                                 ; 052F _ 83. EC, 0C
        push    eax                                     ; 0532 _ 50
        call    intToHexStr                             ; 0533 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0538 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 053B _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 053E _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0544 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0549 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 054C _ FF. 75, C4
        push    7                                       ; 054F _ 6A, 07
        push    64                                      ; 0551 _ 6A, 40
        push    0                                       ; 0553 _ 6A, 00
        push    edx                                     ; 0555 _ 52
        push    eax                                     ; 0556 _ 50
        call    showString                              ; 0557 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 055C _ 83. C4, 20
        mov     eax, dword [?_187]                      ; 055F _ A1, 00000294(d)
        lea     edx, [eax+7H]                           ; 0564 _ 8D. 50, 07
        test    eax, eax                                ; 0567 _ 85. C0
        cmovs   eax, edx                                ; 0569 _ 0F 48. C2
        sar     eax, 3                                  ; 056C _ C1. F8, 03
        sub     esp, 12                                 ; 056F _ 83. EC, 0C
        push    eax                                     ; 0572 _ 50
        call    intToHexStr                             ; 0573 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0578 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 057B _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 057E _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0584 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0589 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 058C _ FF. 75, C4
        push    7                                       ; 058F _ 6A, 07
        push    80                                      ; 0591 _ 6A, 50
        push    0                                       ; 0593 _ 6A, 00
        push    edx                                     ; 0595 _ 52
        push    eax                                     ; 0596 _ 50
        call    showString                              ; 0597 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 059C _ 83. C4, 20
        mov     eax, dword [?_189]                      ; 059F _ A1, 0000029C(d)
        lea     edx, [eax+7H]                           ; 05A4 _ 8D. 50, 07
        test    eax, eax                                ; 05A7 _ 85. C0
        cmovs   eax, edx                                ; 05A9 _ 0F 48. C2
        sar     eax, 3                                  ; 05AC _ C1. F8, 03
        sub     esp, 12                                 ; 05AF _ 83. EC, 0C
        push    eax                                     ; 05B2 _ 50
        call    intToHexStr                             ; 05B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05B8 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 05BB _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 05BE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 05C4 _ A1, 00000220(d)
        sub     esp, 8                                  ; 05C9 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 05CC _ FF. 75, C4
        push    7                                       ; 05CF _ 6A, 07
        push    96                                      ; 05D1 _ 6A, 60
        push    0                                       ; 05D3 _ 6A, 00
        push    edx                                     ; 05D5 _ 52
        push    eax                                     ; 05D6 _ 50
        call    showString                              ; 05D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05DC _ 83. C4, 20
        mov     eax, dword [?_188]                      ; 05DF _ A1, 00000298(d)
        lea     edx, [eax+7H]                           ; 05E4 _ 8D. 50, 07
        test    eax, eax                                ; 05E7 _ 85. C0
        cmovs   eax, edx                                ; 05E9 _ 0F 48. C2
        sar     eax, 3                                  ; 05EC _ C1. F8, 03
        sub     esp, 12                                 ; 05EF _ 83. EC, 0C
        push    eax                                     ; 05F2 _ 50
        call    intToHexStr                             ; 05F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05F8 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 05FB _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 05FE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0604 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0609 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 060C _ FF. 75, C4
        push    7                                       ; 060F _ 6A, 07
        push    112                                     ; 0611 _ 6A, 70
        push    0                                       ; 0613 _ 6A, 00
        push    edx                                     ; 0615 _ 52
        push    eax                                     ; 0616 _ 50
        call    showString                              ; 0617 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 061C _ 83. C4, 20
        mov     eax, dword [?_181]                      ; 061F _ A1, 0000025C(d)
        sub     esp, 12                                 ; 0624 _ 83. EC, 0C
        push    eax                                     ; 0627 _ 50
        call    intToHexStr                             ; 0628 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 062D _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0630 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0633 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0639 _ A1, 00000220(d)
        sub     esp, 8                                  ; 063E _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0641 _ FF. 75, C4
        push    7                                       ; 0644 _ 6A, 07
        push    128                                     ; 0646 _ 68, 00000080
        push    0                                       ; 064B _ 6A, 00
        push    edx                                     ; 064D _ 52
        push    eax                                     ; 064E _ 50
        call    showString                              ; 064F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0654 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 0657 _ A1, 00000008(d)
        sub     esp, 8                                  ; 065C _ 83. EC, 08
        push    65536                                   ; 065F _ 68, 00010000
        push    eax                                     ; 0664 _ 50
        call    memman_alloc_4K                         ; 0665 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 066A _ 83. C4, 10
        add     eax, 65536                              ; 066D _ 05, 00010000
        mov     dword [ebp-38H], eax                    ; 0672 _ 89. 45, C8
        mov     eax, dword [ebp-44H]                    ; 0675 _ 8B. 45, BC
        neg     eax                                     ; 0678 _ F7. D8
        add     eax, task_b_main                        ; 067A _ 05, 00000000(d)
        mov     dword [?_192], eax                      ; 067F _ A3, 000002E0(d)
        mov     dword [?_193], 514                      ; 0684 _ C7. 05, 000002E4(d), 00000202
        mov     dword [?_194], 0                        ; 068E _ C7. 05, 000002E8(d), 00000000
        mov     dword [?_195], 0                        ; 0698 _ C7. 05, 000002EC(d), 00000000
        mov     dword [?_196], 0                        ; 06A2 _ C7. 05, 000002F0(d), 00000000
        mov     dword [?_197], 0                        ; 06AC _ C7. 05, 000002F4(d), 00000000
        mov     dword [?_198], 1024                     ; 06B6 _ C7. 05, 000002F8(d), 00000400
        mov     dword [?_199], 0                        ; 06C0 _ C7. 05, 000002FC(d), 00000000
        mov     dword [?_200], 0                        ; 06CA _ C7. 05, 00000300(d), 00000000
        mov     dword [?_201], 0                        ; 06D4 _ C7. 05, 00000304(d), 00000000
        mov     eax, dword [?_184]                      ; 06DE _ A1, 00000288(d)
        mov     dword [?_202], eax                      ; 06E3 _ A3, 00000308(d)
        mov     eax, dword [?_185]                      ; 06E8 _ A1, 0000028C(d)
        mov     dword [?_203], eax                      ; 06ED _ A3, 0000030C(d)
        mov     eax, dword [?_186]                      ; 06F2 _ A1, 00000290(d)
        mov     dword [?_204], eax                      ; 06F7 _ A3, 00000310(d)
        mov     eax, dword [?_187]                      ; 06FC _ A1, 00000294(d)
        mov     dword [?_205], eax                      ; 0701 _ A3, 00000314(d)
        mov     eax, dword [?_188]                      ; 0706 _ A1, 00000298(d)
        mov     dword [?_206], eax                      ; 070B _ A3, 00000318(d)
        mov     eax, dword [?_189]                      ; 0710 _ A1, 0000029C(d)
        mov     dword [?_207], eax                      ; 0715 _ A3, 0000031C(d)
        call    io_sti                                  ; 071A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 071F _ 83. EC, 0C
        push    mouse_move                              ; 0722 _ 68, 000000E0(d)
        call    enable_mouse                            ; 0727 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 072C _ 83. C4, 10
        mov     byte [ebp-71H], 0                       ; 072F _ C6. 45, 8F, 00
        call    getTimerController                      ; 0733 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0738 _ 89. 45, CC
        mov     dword [ebp-70H], 7                      ; 073B _ C7. 45, 90, 00000007
?_001:  mov     eax, dword [ebp-60H]                    ; 0742 _ 8B. 45, A0
        mov     eax, dword [eax]                        ; 0745 _ 8B. 00
        sub     esp, 12                                 ; 0747 _ 83. EC, 0C
        push    eax                                     ; 074A _ 50
        call    intToHexStr                             ; 074B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0750 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0753 _ 89. 45, D0
        mov     eax, dword [sheet_win]                  ; 0756 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 075B _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 075E _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0763 _ 8B. 00
        sub     esp, 4                                  ; 0765 _ 83. EC, 04
        push    38                                      ; 0768 _ 6A, 26
        push    150                                     ; 076A _ 68, 00000096
        push    23                                      ; 076F _ 6A, 17
        push    8                                       ; 0771 _ 6A, 08
        push    8                                       ; 0773 _ 6A, 08
        push    edx                                     ; 0775 _ 52
        push    eax                                     ; 0776 _ 50
        call    boxfill8                                ; 0777 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 077C _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 077F _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0785 _ A1, 00000220(d)
        sub     esp, 8                                  ; 078A _ 83. EC, 08
        push    dword [ebp-30H]                         ; 078D _ FF. 75, D0
        push    10                                      ; 0790 _ 6A, 0A
        push    23                                      ; 0792 _ 6A, 17
        push    8                                       ; 0794 _ 6A, 08
        push    edx                                     ; 0796 _ 52
        push    eax                                     ; 0797 _ 50
        call    showString                              ; 0798 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 079D _ 83. C4, 20
        sub     esp, 12                                 ; 07A0 _ 83. EC, 0C
        push    keyInfo                                 ; 07A3 _ 68, 00000008(d)
        call    fifo8_status                            ; 07A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07AD _ 83. C4, 10
        sub     esp, 12                                 ; 07B0 _ 83. EC, 0C
        push    eax                                     ; 07B3 _ 50
        call    intToHexStr                             ; 07B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07B9 _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 07BC _ 89. 45, D4
        mov     eax, dword [sheet_win]                  ; 07BF _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 07C4 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 07C7 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 07CC _ 8B. 00
        sub     esp, 4                                  ; 07CE _ 83. EC, 04
        push    76                                      ; 07D1 _ 6A, 4C
        push    100                                     ; 07D3 _ 6A, 64
        push    61                                      ; 07D5 _ 6A, 3D
        push    8                                       ; 07D7 _ 6A, 08
        push    8                                       ; 07D9 _ 6A, 08
        push    edx                                     ; 07DB _ 52
        push    eax                                     ; 07DC _ 50
        call    boxfill8                                ; 07DD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07E2 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 07E5 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 07EB _ A1, 00000220(d)
        sub     esp, 8                                  ; 07F0 _ 83. EC, 08
        push    dword [ebp-2CH]                         ; 07F3 _ FF. 75, D4
        push    10                                      ; 07F6 _ 6A, 0A
        push    61                                      ; 07F8 _ 6A, 3D
        push    8                                       ; 07FA _ 6A, 08
        push    edx                                     ; 07FC _ 52
        push    eax                                     ; 07FD _ 50
        call    showString                              ; 07FE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0803 _ 83. C4, 20
        sub     esp, 12                                 ; 0806 _ 83. EC, 0C
        push    mouseInfo                               ; 0809 _ 68, 00000020(d)
        call    fifo8_status                            ; 080E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0813 _ 83. C4, 10
        sub     esp, 12                                 ; 0816 _ 83. EC, 0C
        push    eax                                     ; 0819 _ 50
        call    intToHexStr                             ; 081A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 081F _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 0822 _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 0825 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 082A _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 082D _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0832 _ 8B. 00
        sub     esp, 4                                  ; 0834 _ 83. EC, 04
        push    92                                      ; 0837 _ 6A, 5C
        push    100                                     ; 0839 _ 6A, 64
        push    77                                      ; 083B _ 6A, 4D
        push    8                                       ; 083D _ 6A, 08
        push    8                                       ; 083F _ 6A, 08
        push    edx                                     ; 0841 _ 52
        push    eax                                     ; 0842 _ 50
        call    boxfill8                                ; 0843 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0848 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 084B _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0851 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0856 _ 83. EC, 08
        push    dword [ebp-28H]                         ; 0859 _ FF. 75, D8
        push    10                                      ; 085C _ 6A, 0A
        push    77                                      ; 085E _ 6A, 4D
        push    8                                       ; 0860 _ 6A, 08
        push    edx                                     ; 0862 _ 52
        push    eax                                     ; 0863 _ 50
        call    showString                              ; 0864 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0869 _ 83. C4, 20
        call    io_cli                                  ; 086C _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0871 _ 83. EC, 0C
        push    keyInfo                                 ; 0874 _ 68, 00000008(d)
        call    fifo8_status                            ; 0879 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 087E _ 83. C4, 10
        mov     ebx, eax                                ; 0881 _ 89. C3
        sub     esp, 12                                 ; 0883 _ 83. EC, 0C
        push    mouseInfo                               ; 0886 _ 68, 00000020(d)
        call    fifo8_status                            ; 088B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0890 _ 83. C4, 10
        add     ebx, eax                                ; 0893 _ 01. C3
        sub     esp, 12                                 ; 0895 _ 83. EC, 0C
        push    timerInfo                               ; 0898 _ 68, 00000200(d)
        call    fifo8_status                            ; 089D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08A2 _ 83. C4, 10
        add     eax, ebx                                ; 08A5 _ 01. D8
        test    eax, eax                                ; 08A7 _ 85. C0
        jnz     ?_002                                   ; 08A9 _ 75, 0A
        call    io_sti                                  ; 08AB _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08B0 _ E9, FFFFFE8D

?_002:  sub     esp, 12                                 ; 08B5 _ 83. EC, 0C
        push    keyInfo                                 ; 08B8 _ 68, 00000008(d)
        call    fifo8_status                            ; 08BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08C2 _ 83. C4, 10
        test    eax, eax                                ; 08C5 _ 85. C0
        je      ?_004                                   ; 08C7 _ 0F 84, 000001AF
        call    io_sti                                  ; 08CD _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 08D2 _ 83. EC, 0C
        push    keyInfo                                 ; 08D5 _ 68, 00000008(d)
        call    fifo8_get                               ; 08DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08DF _ 83. C4, 10
        mov     byte [ebp-71H], al                      ; 08E2 _ 88. 45, 8F
        cmp     byte [ebp-71H], 28                      ; 08E5 _ 80. 7D, 8F, 1C
        jnz     ?_003                                   ; 08E9 _ 75, 59
        mov     ebx, dword [cnt.1759]                   ; 08EB _ 8B. 1D, 00000328(d)
        mov     eax, dword [sheet_back]                 ; 08F1 _ A1, 00000228(d)
        mov     ecx, dword [eax]                        ; 08F6 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 08F8 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 08FE _ A1, 00000220(d)
        sub     esp, 4                                  ; 0903 _ 83. EC, 04
        push    7                                       ; 0906 _ 6A, 07
        push    dword [ebp-68H]                         ; 0908 _ FF. 75, 98
        push    ebx                                     ; 090B _ 53
        push    ecx                                     ; 090C _ 51
        push    dword [ebp-54H]                         ; 090D _ FF. 75, AC
        push    edx                                     ; 0910 _ 52
        push    eax                                     ; 0911 _ 50
        call    showMemInfo                             ; 0912 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0917 _ 83. C4, 20
        mov     eax, dword [cnt.1759]                   ; 091A _ A1, 00000328(d)
        add     eax, 1                                  ; 091F _ 83. C0, 01
        mov     dword [cnt.1759], eax                   ; 0922 _ A3, 00000328(d)
        mov     eax, dword [cnt.1759]                   ; 0927 _ A1, 00000328(d)
        cmp     dword [ebp-50H], eax                    ; 092C _ 39. 45, B0
        jg      ?_001                                   ; 092F _ 0F 8F, FFFFFE0D
        mov     dword [cnt.1759], 0                     ; 0935 _ C7. 05, 00000328(d), 00000000
        jmp     ?_001                                   ; 093F _ E9, FFFFFDFE

?_003:  movzx   eax, byte [ebp-71H]                     ; 0944 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0948 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 094F _ 84. C0
        je      ?_001                                   ; 0951 _ 0F 84, FFFFFDEB
        cmp     byte [ebp-71H], 15                      ; 0957 _ 80. 7D, 8F, 0F
        jbe     ?_001                                   ; 095B _ 0F 86, FFFFFDE1
        cmp     byte [ebp-71H], 83                      ; 0961 _ 80. 7D, 8F, 53
        ja      ?_001                                   ; 0965 _ 0F 87, FFFFFDD7
        mov     eax, dword [line.1763]                  ; 096B _ A1, 0000032C(d)
        cmp     eax, 142                                ; 0970 _ 3D, 0000008E
        jg      ?_001                                   ; 0975 _ 0F 8F, FFFFFDC7
        mov     eax, dword [pos.1764]                   ; 097B _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0980 _ 8D. 78, 28
        mov     eax, dword [line.1763]                  ; 0983 _ A1, 0000032C(d)
        lea     esi, [eax+0EH]                          ; 0988 _ 8D. 70, 0E
        mov     eax, dword [pos.1764]                   ; 098B _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0990 _ 8D. 58, 1A
        mov     eax, dword [line.1763]                  ; 0993 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0998 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 099B _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 09A0 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 09A3 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 09A8 _ 8B. 00
        sub     esp, 4                                  ; 09AA _ 83. EC, 04
        push    edi                                     ; 09AD _ 57
        push    esi                                     ; 09AE _ 56
        push    ebx                                     ; 09AF _ 53
        push    ecx                                     ; 09B0 _ 51
        push    7                                       ; 09B1 _ 6A, 07
        push    edx                                     ; 09B3 _ 52
        push    eax                                     ; 09B4 _ 50
        call    boxfill8                                ; 09B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09BA _ 83. C4, 20
        mov     eax, dword [pos.1764]                   ; 09BD _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 09C2 _ 8D. 78, 2A
        mov     eax, dword [line.1763]                  ; 09C5 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 09CA _ 8D. 70, 10
        mov     eax, dword [pos.1764]                   ; 09CD _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09D2 _ 8D. 58, 1A
        mov     eax, dword [line.1763]                  ; 09D5 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 09DA _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 09DD _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 09E3 _ A1, 00000220(d)
        sub     esp, 8                                  ; 09E8 _ 83. EC, 08
        push    edi                                     ; 09EB _ 57
        push    esi                                     ; 09EC _ 56
        push    ebx                                     ; 09ED _ 53
        push    ecx                                     ; 09EE _ 51
        push    edx                                     ; 09EF _ 52
        push    eax                                     ; 09F0 _ 50
        call    sheet_refresh                           ; 09F1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09F6 _ 83. C4, 20
        movzx   eax, byte [ebp-71H]                     ; 09F9 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 09FD _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0A04 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0A07 _ C6. 45, E3, 00
        mov     eax, dword [pos.1764]                   ; 0A0B _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0A10 _ 8D. 70, 1A
        mov     eax, dword [line.1763]                  ; 0A13 _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 0A18 _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 0A1B _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0A21 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0A26 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0A29 _ 8D. 4D, E2
        push    ecx                                     ; 0A2C _ 51
        push    0                                       ; 0A2D _ 6A, 00
        push    esi                                     ; 0A2F _ 56
        push    ebx                                     ; 0A30 _ 53
        push    edx                                     ; 0A31 _ 52
        push    eax                                     ; 0A32 _ 50
        call    showString                              ; 0A33 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A38 _ 83. C4, 20
        mov     eax, dword [line.1763]                  ; 0A3B _ A1, 0000032C(d)
        add     eax, 8                                  ; 0A40 _ 83. C0, 08
        mov     dword [line.1763], eax                  ; 0A43 _ A3, 0000032C(d)
        mov     eax, dword [sheet_win]                  ; 0A48 _ A1, 00000224(d)
        mov     eax, dword [eax+4H]                     ; 0A4D _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0A50 _ 8D. 50, F0
        mov     eax, dword [line.1763]                  ; 0A53 _ A1, 0000032C(d)
        cmp     edx, eax                                ; 0A58 _ 39. C2
        jg      ?_001                                   ; 0A5A _ 0F 8F, FFFFFCE2
        mov     eax, dword [pos.1764]                   ; 0A60 _ A1, 00000074(d)
        add     eax, 16                                 ; 0A65 _ 83. C0, 10
        mov     dword [pos.1764], eax                   ; 0A68 _ A3, 00000074(d)
        mov     dword [line.1763], 0                    ; 0A6D _ C7. 05, 0000032C(d), 00000000
        jmp     ?_001                                   ; 0A77 _ E9, FFFFFCC6

?_004:  sub     esp, 12                                 ; 0A7C _ 83. EC, 0C
        push    mouseInfo                               ; 0A7F _ 68, 00000020(d)
        call    fifo8_status                            ; 0A84 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A89 _ 83. C4, 10
        test    eax, eax                                ; 0A8C _ 85. C0
        jz      ?_005                                   ; 0A8E _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0A90 _ 8B. 0D, 0000022C(d)
        mov     edx, dword [sheet_back]                 ; 0A96 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0A9C _ A1, 00000220(d)
        sub     esp, 4                                  ; 0AA1 _ 83. EC, 04
        push    ecx                                     ; 0AA4 _ 51
        push    edx                                     ; 0AA5 _ 52
        push    eax                                     ; 0AA6 _ 50
        call    showMouseInfo                           ; 0AA7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AAC _ 83. C4, 10
        jmp     ?_001                                   ; 0AAF _ E9, FFFFFC8E

?_005:  sub     esp, 12                                 ; 0AB4 _ 83. EC, 0C
        push    timerInfo                               ; 0AB7 _ 68, 00000200(d)
        call    fifo8_status                            ; 0ABC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AC1 _ 83. C4, 10
        test    eax, eax                                ; 0AC4 _ 85. C0
        je      ?_001                                   ; 0AC6 _ 0F 84, FFFFFC76
        call    io_sti                                  ; 0ACC _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0AD1 _ 83. EC, 0C
        push    timerInfo                               ; 0AD4 _ 68, 00000200(d)
        call    fifo8_get                               ; 0AD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ADE _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0AE1 _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 0AE4 _ 83. 7D, DC, 0A
        jnz     ?_006                                   ; 0AE8 _ 75, 30
        mov     edx, dword [sheet_back]                 ; 0AEA _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0AF0 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0AF5 _ 83. EC, 08
        push    ?_166                                   ; 0AF8 _ 68, 0000001F(d)
        push    5                                       ; 0AFD _ 6A, 05
        push    176                                     ; 0AFF _ 68, 000000B0
        push    0                                       ; 0B04 _ 6A, 00
        push    edx                                     ; 0B06 _ 52
        push    eax                                     ; 0B07 _ 50
        call    showString                              ; 0B08 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B0D _ 83. C4, 20
        call    taskswitch6                             ; 0B10 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0B15 _ E9, FFFFFC28

?_006:  cmp     dword [ebp-24H], 2                      ; 0B1A _ 83. 7D, DC, 02
        jnz     ?_007                                   ; 0B1E _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0B20 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0B26 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0B2B _ 83. EC, 08
        push    ?_167                                   ; 0B2E _ 68, 00000030(d)
        push    7                                       ; 0B33 _ 6A, 07
        push    32                                      ; 0B35 _ 6A, 20
        push    80                                      ; 0B37 _ 6A, 50
        push    edx                                     ; 0B39 _ 52
        push    eax                                     ; 0B3A _ 50
        call    showString                              ; 0B3B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B40 _ 83. C4, 20
        jmp     ?_001                                   ; 0B43 _ E9, FFFFFBFA

?_007:  cmp     dword [ebp-24H], 0                      ; 0B48 _ 83. 7D, DC, 00
        jz      ?_008                                   ; 0B4C _ 74, 1E
        sub     esp, 4                                  ; 0B4E _ 83. EC, 04
        push    0                                       ; 0B51 _ 6A, 00
        push    timerInfo                               ; 0B53 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0B58 _ FF. 75, A8
        call    timer_init                              ; 0B5B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B60 _ 83. C4, 10
        mov     dword [ebp-70H], 0                      ; 0B63 _ C7. 45, 90, 00000000
        jmp     ?_009                                   ; 0B6A _ EB, 1C

?_008:  sub     esp, 4                                  ; 0B6C _ 83. EC, 04
        push    1                                       ; 0B6F _ 6A, 01
        push    timerInfo                               ; 0B71 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0B76 _ FF. 75, A8
        call    timer_init                              ; 0B79 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B7E _ 83. C4, 10
        mov     dword [ebp-70H], 7                      ; 0B81 _ C7. 45, 90, 00000007
?_009:  sub     esp, 8                                  ; 0B88 _ 83. EC, 08
        push    50                                      ; 0B8B _ 6A, 32
        push    dword [ebp-58H]                         ; 0B8D _ FF. 75, A8
        call    timer_setTime                           ; 0B90 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B95 _ 83. C4, 10
        mov     eax, dword [pos.1764]                   ; 0B98 _ A1, 00000074(d)
        add     eax, 40                                 ; 0B9D _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0BA0 _ 89. 45, 84
        mov     eax, dword [line.1763]                  ; 0BA3 _ A1, 0000032C(d)
        lea     edi, [eax+0EH]                          ; 0BA8 _ 8D. 78, 0E
        mov     eax, dword [pos.1764]                   ; 0BAB _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0BB0 _ 8D. 70, 1A
        mov     eax, dword [line.1763]                  ; 0BB3 _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 0BB8 _ 8D. 58, 08
        mov     eax, dword [ebp-70H]                    ; 0BBB _ 8B. 45, 90
        movzx   ecx, al                                 ; 0BBE _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0BC1 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0BC6 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0BC9 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0BCE _ 8B. 00
        sub     esp, 4                                  ; 0BD0 _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 0BD3 _ FF. 75, 84
        push    edi                                     ; 0BD6 _ 57
        push    esi                                     ; 0BD7 _ 56
        push    ebx                                     ; 0BD8 _ 53
        push    ecx                                     ; 0BD9 _ 51
        push    edx                                     ; 0BDA _ 52
        push    eax                                     ; 0BDB _ 50
        call    boxfill8                                ; 0BDC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BE1 _ 83. C4, 20
        mov     eax, dword [pos.1764]                   ; 0BE4 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0BE9 _ 8D. 78, 2A
        mov     eax, dword [line.1763]                  ; 0BEC _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0BF1 _ 8D. 70, 10
        mov     eax, dword [pos.1764]                   ; 0BF4 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0BF9 _ 8D. 58, 1A
        mov     eax, dword [line.1763]                  ; 0BFC _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0C01 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0C04 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0C0A _ A1, 00000220(d)
        sub     esp, 8                                  ; 0C0F _ 83. EC, 08
        push    edi                                     ; 0C12 _ 57
        push    esi                                     ; 0C13 _ 56
        push    ebx                                     ; 0C14 _ 53
        push    ecx                                     ; 0C15 _ 51
        push    edx                                     ; 0C16 _ 52
        push    eax                                     ; 0C17 _ 50
        call    sheet_refresh                           ; 0C18 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C1D _ 83. C4, 20
        jmp     ?_001                                   ; 0C20 _ E9, FFFFFB1D
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 0C25 _ 55
        mov     ebp, esp                                ; 0C26 _ 89. E5
        sub     esp, 56                                 ; 0C28 _ 83. EC, 38
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0C2B _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0C31 _ 89. 45, F4
        xor     eax, eax                                ; 0C34 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0C36 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0C3C _ A1, 00000220(d)
        sub     esp, 8                                  ; 0C41 _ 83. EC, 08
        push    ?_168                                   ; 0C44 _ 68, 00000037(d)
        push    7                                       ; 0C49 _ 6A, 07
        push    144                                     ; 0C4B _ 68, 00000090
        push    0                                       ; 0C50 _ 6A, 00
        push    edx                                     ; 0C52 _ 52
        push    eax                                     ; 0C53 _ 50
        call    showString                              ; 0C54 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C59 _ 83. C4, 20
        mov     dword [ebp-34H], 0                      ; 0C5C _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 0                      ; 0C63 _ C7. 45, D0, 00000000
        sub     esp, 4                                  ; 0C6A _ 83. EC, 04
        lea     eax, [ebp-14H]                          ; 0C6D _ 8D. 45, EC
        push    eax                                     ; 0C70 _ 50
        push    8                                       ; 0C71 _ 6A, 08
        lea     eax, [ebp-2CH]                          ; 0C73 _ 8D. 45, D4
        push    eax                                     ; 0C76 _ 50
        call    fifo8_init                              ; 0C77 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C7C _ 83. C4, 10
        call    timer_alloc                             ; 0C7F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0C84 _ 89. 45, CC
        sub     esp, 4                                  ; 0C87 _ 83. EC, 04
        push    123                                     ; 0C8A _ 6A, 7B
        lea     eax, [ebp-2CH]                          ; 0C8C _ 8D. 45, D4
        push    eax                                     ; 0C8F _ 50
        push    dword [ebp-34H]                         ; 0C90 _ FF. 75, CC
        call    timer_init                              ; 0C93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C98 _ 83. C4, 10
        sub     esp, 8                                  ; 0C9B _ 83. EC, 08
        push    200                                     ; 0C9E _ 68, 000000C8
        push    dword [ebp-34H]                         ; 0CA3 _ FF. 75, CC
        call    timer_setTime                           ; 0CA6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAB _ 83. C4, 10
?_010:  call    io_cli                                  ; 0CAE _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0CB3 _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0CB6 _ 8D. 45, D4
        push    eax                                     ; 0CB9 _ 50
        call    fifo8_status                            ; 0CBA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CBF _ 83. C4, 10
        test    eax, eax                                ; 0CC2 _ 85. C0
        jnz     ?_011                                   ; 0CC4 _ 75, 07
        call    io_sti                                  ; 0CC6 _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 0CCB _ EB, E1

?_011:  sub     esp, 12                                 ; 0CCD _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0CD0 _ 8D. 45, D4
        push    eax                                     ; 0CD3 _ 50
        call    fifo8_get                               ; 0CD4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD9 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0CDC _ 89. 45, D0
        call    io_sti                                  ; 0CDF _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-30H], 123                    ; 0CE4 _ 83. 7D, D0, 7B
        jnz     ?_010                                   ; 0CE8 _ 75, C4
        mov     edx, dword [sheet_back]                 ; 0CEA _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0CF0 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0CF5 _ 83. EC, 08
        push    ?_169                                   ; 0CF8 _ 68, 00000044(d)
        push    7                                       ; 0CFD _ 6A, 07
        push    160                                     ; 0CFF _ 68, 000000A0
        push    0                                       ; 0D04 _ 6A, 00
        push    edx                                     ; 0D06 _ 52
        push    eax                                     ; 0D07 _ 50
        call    showString                              ; 0D08 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D0D _ 83. C4, 20
        call    taskswitch8                             ; 0D10 _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 0D15 _ EB, 97
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0D17 _ 55
        mov     ebp, esp                                ; 0D18 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D1A _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0D1D _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0D23 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0D26 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0D2C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0D2F _ 66: C7. 40, 06, 01E0
        nop                                             ; 0D35 _ 90
        pop     ebp                                     ; 0D36 _ 5D
        ret                                             ; 0D37 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0D38 _ 55
        mov     ebp, esp                                ; 0D39 _ 89. E5
        push    ebx                                     ; 0D3B _ 53
        sub     esp, 36                                 ; 0D3C _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0D3F _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0D42 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0D45 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0D48 _ 89. 45, F4
        jmp     ?_013                                   ; 0D4B _ EB, 3E

?_012:  mov     eax, dword [ebp+1CH]                    ; 0D4D _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0D50 _ 0F B6. 00
        movzx   eax, al                                 ; 0D53 _ 0F B6. C0
        shl     eax, 4                                  ; 0D56 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0D59 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0D5F _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0D63 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0D66 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0D69 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0D6C _ 8B. 00
        sub     esp, 8                                  ; 0D6E _ 83. EC, 08
        push    ebx                                     ; 0D71 _ 53
        push    ecx                                     ; 0D72 _ 51
        push    dword [ebp+14H]                         ; 0D73 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0D76 _ FF. 75, 10
        push    edx                                     ; 0D79 _ 52
        push    eax                                     ; 0D7A _ 50
        call    showFont8                               ; 0D7B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D80 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0D83 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0D87 _ 83. 45, 1C, 01
?_013:  mov     eax, dword [ebp+1CH]                    ; 0D8B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0D8E _ 0F B6. 00
        test    al, al                                  ; 0D91 _ 84. C0
        jnz     ?_012                                   ; 0D93 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0D95 _ 8B. 45, 14
        add     eax, 16                                 ; 0D98 _ 83. C0, 10
        sub     esp, 8                                  ; 0D9B _ 83. EC, 08
        push    eax                                     ; 0D9E _ 50
        push    dword [ebp+10H]                         ; 0D9F _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0DA2 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0DA5 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0DA8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DAB _ FF. 75, 08
        call    sheet_refresh                           ; 0DAE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DB3 _ 83. C4, 20
        nop                                             ; 0DB6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0DB7 _ 8B. 5D, FC
        leave                                           ; 0DBA _ C9
        ret                                             ; 0DBB _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0DBC _ 55
        mov     ebp, esp                                ; 0DBD _ 89. E5
        push    ebx                                     ; 0DBF _ 53
        sub     esp, 4                                  ; 0DC0 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0DC3 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0DC6 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0DC9 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0DCC _ 83. E8, 01
        sub     esp, 4                                  ; 0DCF _ 83. EC, 04
        push    edx                                     ; 0DD2 _ 52
        push    eax                                     ; 0DD3 _ 50
        push    0                                       ; 0DD4 _ 6A, 00
        push    0                                       ; 0DD6 _ 6A, 00
        push    14                                      ; 0DD8 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0DDA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DDD _ FF. 75, 08
        call    boxfill8                                ; 0DE0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DE5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DE8 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0DEB _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0DEE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0DF1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0DF4 _ 8B. 45, 10
        sub     eax, 24                                 ; 0DF7 _ 83. E8, 18
        sub     esp, 4                                  ; 0DFA _ 83. EC, 04
        push    ecx                                     ; 0DFD _ 51
        push    edx                                     ; 0DFE _ 52
        push    eax                                     ; 0DFF _ 50
        push    0                                       ; 0E00 _ 6A, 00
        push    8                                       ; 0E02 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0E04 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E07 _ FF. 75, 08
        call    boxfill8                                ; 0E0A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E0F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E12 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0E15 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0E18 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0E1B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0E1E _ 8B. 45, 10
        sub     eax, 23                                 ; 0E21 _ 83. E8, 17
        sub     esp, 4                                  ; 0E24 _ 83. EC, 04
        push    ecx                                     ; 0E27 _ 51
        push    edx                                     ; 0E28 _ 52
        push    eax                                     ; 0E29 _ 50
        push    0                                       ; 0E2A _ 6A, 00
        push    7                                       ; 0E2C _ 6A, 07
        push    dword [ebp+0CH]                         ; 0E2E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E31 _ FF. 75, 08
        call    boxfill8                                ; 0E34 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E39 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E3C _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0E3F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0E42 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0E45 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0E48 _ 8B. 45, 10
        sub     eax, 22                                 ; 0E4B _ 83. E8, 16
        sub     esp, 4                                  ; 0E4E _ 83. EC, 04
        push    ecx                                     ; 0E51 _ 51
        push    edx                                     ; 0E52 _ 52
        push    eax                                     ; 0E53 _ 50
        push    0                                       ; 0E54 _ 6A, 00
        push    8                                       ; 0E56 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0E58 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E5B _ FF. 75, 08
        call    boxfill8                                ; 0E5E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E63 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E66 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0E69 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0E6C _ 8B. 45, 10
        sub     eax, 20                                 ; 0E6F _ 83. E8, 14
        sub     esp, 4                                  ; 0E72 _ 83. EC, 04
        push    edx                                     ; 0E75 _ 52
        push    51                                      ; 0E76 _ 6A, 33
        push    eax                                     ; 0E78 _ 50
        push    10                                      ; 0E79 _ 6A, 0A
        push    7                                       ; 0E7B _ 6A, 07
        push    dword [ebp+0CH]                         ; 0E7D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E80 _ FF. 75, 08
        call    boxfill8                                ; 0E83 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E88 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E8B _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0E8E _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0E91 _ 8B. 45, 10
        sub     eax, 20                                 ; 0E94 _ 83. E8, 14
        sub     esp, 4                                  ; 0E97 _ 83. EC, 04
        push    edx                                     ; 0E9A _ 52
        push    9                                       ; 0E9B _ 6A, 09
        push    eax                                     ; 0E9D _ 50
        push    9                                       ; 0E9E _ 6A, 09
        push    7                                       ; 0EA0 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0EA2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EA5 _ FF. 75, 08
        call    boxfill8                                ; 0EA8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EAD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EB0 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0EB3 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0EB6 _ 8B. 45, 10
        sub     eax, 4                                  ; 0EB9 _ 83. E8, 04
        sub     esp, 4                                  ; 0EBC _ 83. EC, 04
        push    edx                                     ; 0EBF _ 52
        push    50                                      ; 0EC0 _ 6A, 32
        push    eax                                     ; 0EC2 _ 50
        push    10                                      ; 0EC3 _ 6A, 0A
        push    15                                      ; 0EC5 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0EC7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0ECA _ FF. 75, 08
        call    boxfill8                                ; 0ECD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0ED2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0ED5 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0ED8 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0EDB _ 8B. 45, 10
        sub     eax, 19                                 ; 0EDE _ 83. E8, 13
        sub     esp, 4                                  ; 0EE1 _ 83. EC, 04
        push    edx                                     ; 0EE4 _ 52
        push    50                                      ; 0EE5 _ 6A, 32
        push    eax                                     ; 0EE7 _ 50
        push    50                                      ; 0EE8 _ 6A, 32
        push    15                                      ; 0EEA _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0EEC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EEF _ FF. 75, 08
        call    boxfill8                                ; 0EF2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EF7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EFA _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0EFD _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0F00 _ 8B. 45, 10
        sub     eax, 3                                  ; 0F03 _ 83. E8, 03
        sub     esp, 4                                  ; 0F06 _ 83. EC, 04
        push    edx                                     ; 0F09 _ 52
        push    50                                      ; 0F0A _ 6A, 32
        push    eax                                     ; 0F0C _ 50
        push    10                                      ; 0F0D _ 6A, 0A
        push    0                                       ; 0F0F _ 6A, 00
        push    dword [ebp+0CH]                         ; 0F11 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F14 _ FF. 75, 08
        call    boxfill8                                ; 0F17 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F1C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F1F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F22 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0F25 _ 8B. 45, 10
        sub     eax, 20                                 ; 0F28 _ 83. E8, 14
        sub     esp, 4                                  ; 0F2B _ 83. EC, 04
        push    edx                                     ; 0F2E _ 52
        push    51                                      ; 0F2F _ 6A, 33
        push    eax                                     ; 0F31 _ 50
        push    51                                      ; 0F32 _ 6A, 33
        push    0                                       ; 0F34 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0F36 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F39 _ FF. 75, 08
        call    boxfill8                                ; 0F3C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F41 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F44 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0F47 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0F4A _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0F4D _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0F50 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0F53 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0F56 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0F59 _ 83. E8, 2F
        sub     esp, 4                                  ; 0F5C _ 83. EC, 04
        push    ebx                                     ; 0F5F _ 53
        push    ecx                                     ; 0F60 _ 51
        push    edx                                     ; 0F61 _ 52
        push    eax                                     ; 0F62 _ 50
        push    15                                      ; 0F63 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0F65 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F68 _ FF. 75, 08
        call    boxfill8                                ; 0F6B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F70 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F73 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F76 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F79 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0F7C _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0F7F _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0F82 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0F85 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0F88 _ 83. E8, 2F
        sub     esp, 4                                  ; 0F8B _ 83. EC, 04
        push    ebx                                     ; 0F8E _ 53
        push    ecx                                     ; 0F8F _ 51
        push    edx                                     ; 0F90 _ 52
        push    eax                                     ; 0F91 _ 50
        push    15                                      ; 0F92 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0F94 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F97 _ FF. 75, 08
        call    boxfill8                                ; 0F9A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F9F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FA2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FA5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FA8 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0FAB _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0FAE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0FB1 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0FB4 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0FB7 _ 83. E8, 2F
        sub     esp, 4                                  ; 0FBA _ 83. EC, 04
        push    ebx                                     ; 0FBD _ 53
        push    ecx                                     ; 0FBE _ 51
        push    edx                                     ; 0FBF _ 52
        push    eax                                     ; 0FC0 _ 50
        push    7                                       ; 0FC1 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FC3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FC6 _ FF. 75, 08
        call    boxfill8                                ; 0FC9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FCE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FD1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FD4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FD7 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FDA _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0FDD _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FE0 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0FE3 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0FE6 _ 83. E8, 03
        sub     esp, 4                                  ; 0FE9 _ 83. EC, 04
        push    ebx                                     ; 0FEC _ 53
        push    ecx                                     ; 0FED _ 51
        push    edx                                     ; 0FEE _ 52
        push    eax                                     ; 0FEF _ 50
        push    7                                       ; 0FF0 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FF2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FF5 _ FF. 75, 08
        call    boxfill8                                ; 0FF8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FFD _ 83. C4, 20
        nop                                             ; 1000 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1001 _ 8B. 5D, FC
        leave                                           ; 1004 _ C9
        ret                                             ; 1005 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1006 _ 55
        mov     ebp, esp                                ; 1007 _ 89. E5
        sub     esp, 24                                 ; 1009 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 100C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1011 _ 89. 45, EC
        movzx   eax, word [?_178]                       ; 1014 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 101B _ 98
        mov     dword [ebp-10H], eax                    ; 101C _ 89. 45, F0
        movzx   eax, word [?_179]                       ; 101F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1026 _ 98
        mov     dword [ebp-0CH], eax                    ; 1027 _ 89. 45, F4
        sub     esp, 4                                  ; 102A _ 83. EC, 04
        push    table_rgb.1805                          ; 102D _ 68, 00000080(d)
        push    15                                      ; 1032 _ 6A, 0F
        push    0                                       ; 1034 _ 6A, 00
        call    set_palette                             ; 1036 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 103B _ 83. C4, 10
        nop                                             ; 103E _ 90
        leave                                           ; 103F _ C9
        ret                                             ; 1040 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1041 _ 55
        mov     ebp, esp                                ; 1042 _ 89. E5
        sub     esp, 24                                 ; 1044 _ 83. EC, 18
        call    io_load_eflags                          ; 1047 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 104C _ 89. 45, F4
        call    io_cli                                  ; 104F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1054 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1057 _ FF. 75, 08
        push    968                                     ; 105A _ 68, 000003C8
        call    io_out8                                 ; 105F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1064 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1067 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 106A _ 89. 45, F0
        jmp     ?_015                                   ; 106D _ EB, 65

?_014:  mov     eax, dword [ebp+10H]                    ; 106F _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1072 _ 0F B6. 00
        shr     al, 2                                   ; 1075 _ C0. E8, 02
        movzx   eax, al                                 ; 1078 _ 0F B6. C0
        sub     esp, 8                                  ; 107B _ 83. EC, 08
        push    eax                                     ; 107E _ 50
        push    969                                     ; 107F _ 68, 000003C9
        call    io_out8                                 ; 1084 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1089 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 108C _ 8B. 45, 10
        add     eax, 1                                  ; 108F _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1092 _ 0F B6. 00
        shr     al, 2                                   ; 1095 _ C0. E8, 02
        movzx   eax, al                                 ; 1098 _ 0F B6. C0
        sub     esp, 8                                  ; 109B _ 83. EC, 08
        push    eax                                     ; 109E _ 50
        push    969                                     ; 109F _ 68, 000003C9
        call    io_out8                                 ; 10A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10A9 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 10AC _ 8B. 45, 10
        add     eax, 2                                  ; 10AF _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 10B2 _ 0F B6. 00
        shr     al, 2                                   ; 10B5 _ C0. E8, 02
        movzx   eax, al                                 ; 10B8 _ 0F B6. C0
        sub     esp, 8                                  ; 10BB _ 83. EC, 08
        push    eax                                     ; 10BE _ 50
        push    969                                     ; 10BF _ 68, 000003C9
        call    io_out8                                 ; 10C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10C9 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 10CC _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 10D0 _ 83. 45, F0, 01
?_015:  mov     eax, dword [ebp-10H]                    ; 10D4 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 10D7 _ 3B. 45, 0C
        jle     ?_014                                   ; 10DA _ 7E, 93
        sub     esp, 12                                 ; 10DC _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 10DF _ FF. 75, F4
        call    io_store_eflags                         ; 10E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10E7 _ 83. C4, 10
        nop                                             ; 10EA _ 90
        leave                                           ; 10EB _ C9
        ret                                             ; 10EC _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 10ED _ 55
        mov     ebp, esp                                ; 10EE _ 89. E5
        sub     esp, 20                                 ; 10F0 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 10F3 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 10F6 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 10F9 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 10FC _ 89. 45, FC
        jmp     ?_019                                   ; 10FF _ EB, 33

?_016:  mov     eax, dword [ebp+14H]                    ; 1101 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1104 _ 89. 45, F8
        jmp     ?_018                                   ; 1107 _ EB, 1F

?_017:  mov     eax, dword [ebp-4H]                     ; 1109 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 110C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1110 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1112 _ 8B. 45, F8
        add     eax, edx                                ; 1115 _ 01. D0
        mov     edx, eax                                ; 1117 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1119 _ 8B. 45, 08
        add     edx, eax                                ; 111C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 111E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1122 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1124 _ 83. 45, F8, 01
?_018:  mov     eax, dword [ebp-8H]                     ; 1128 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 112B _ 3B. 45, 1C
        jle     ?_017                                   ; 112E _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1130 _ 83. 45, FC, 01
?_019:  mov     eax, dword [ebp-4H]                     ; 1134 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1137 _ 3B. 45, 20
        jle     ?_016                                   ; 113A _ 7E, C5
        nop                                             ; 113C _ 90
        leave                                           ; 113D _ C9
        ret                                             ; 113E _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 113F _ 55
        mov     ebp, esp                                ; 1140 _ 89. E5
        push    edi                                     ; 1142 _ 57
        push    esi                                     ; 1143 _ 56
        push    ebx                                     ; 1144 _ 53
        sub     esp, 16                                 ; 1145 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1148 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 114B _ 8B. 45, 14
        add     eax, edx                                ; 114E _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1150 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1153 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1156 _ 8B. 45, 18
        add     eax, edx                                ; 1159 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 115B _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 115E _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1161 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1164 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1167 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 116A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 116D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1170 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1173 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1176 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1179 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 117C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 117F _ 8B. 00
        push    edi                                     ; 1181 _ 57
        push    esi                                     ; 1182 _ 56
        push    ebx                                     ; 1183 _ 53
        push    ecx                                     ; 1184 _ 51
        push    15                                      ; 1185 _ 6A, 0F
        push    edx                                     ; 1187 _ 52
        push    eax                                     ; 1188 _ 50
        call    boxfill8                                ; 1189 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 118E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1191 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1194 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1197 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 119A _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 119D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 11A0 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 11A3 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 11A6 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 11A9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 11AC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 11B2 _ 8B. 00
        push    edi                                     ; 11B4 _ 57
        push    esi                                     ; 11B5 _ 56
        push    ebx                                     ; 11B6 _ 53
        push    ecx                                     ; 11B7 _ 51
        push    15                                      ; 11B8 _ 6A, 0F
        push    edx                                     ; 11BA _ 52
        push    eax                                     ; 11BB _ 50
        call    boxfill8                                ; 11BC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11C1 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 11C4 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 11C7 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 11CA _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 11CD _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 11D0 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 11D3 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 11D6 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 11D9 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 11DC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 11DF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11E2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 11E5 _ 8B. 00
        push    edi                                     ; 11E7 _ 57
        push    esi                                     ; 11E8 _ 56
        push    ebx                                     ; 11E9 _ 53
        push    ecx                                     ; 11EA _ 51
        push    7                                       ; 11EB _ 6A, 07
        push    edx                                     ; 11ED _ 52
        push    eax                                     ; 11EE _ 50
        call    boxfill8                                ; 11EF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11F4 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 11F7 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 11FA _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 11FD _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1200 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1203 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1206 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1209 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 120C _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 120F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1212 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1215 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1218 _ 8B. 00
        push    edi                                     ; 121A _ 57
        push    esi                                     ; 121B _ 56
        push    ebx                                     ; 121C _ 53
        push    ecx                                     ; 121D _ 51
        push    7                                       ; 121E _ 6A, 07
        push    edx                                     ; 1220 _ 52
        push    eax                                     ; 1221 _ 50
        call    boxfill8                                ; 1222 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1227 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 122A _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 122D _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1230 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1233 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1236 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1239 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 123C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 123F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1242 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1245 _ 8B. 00
        push    esi                                     ; 1247 _ 56
        push    dword [ebp-14H]                         ; 1248 _ FF. 75, EC
        push    ebx                                     ; 124B _ 53
        push    ecx                                     ; 124C _ 51
        push    0                                       ; 124D _ 6A, 00
        push    edx                                     ; 124F _ 52
        push    eax                                     ; 1250 _ 50
        call    boxfill8                                ; 1251 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1256 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1259 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 125C _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 125F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1262 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1265 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1268 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 126B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 126E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1271 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1274 _ 8B. 00
        push    dword [ebp-10H]                         ; 1276 _ FF. 75, F0
        push    esi                                     ; 1279 _ 56
        push    ebx                                     ; 127A _ 53
        push    ecx                                     ; 127B _ 51
        push    0                                       ; 127C _ 6A, 00
        push    edx                                     ; 127E _ 52
        push    eax                                     ; 127F _ 50
        call    boxfill8                                ; 1280 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1285 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1288 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 128B _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 128E _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1291 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1294 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1297 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 129A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 129D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12A0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12A3 _ 8B. 00
        push    esi                                     ; 12A5 _ 56
        push    dword [ebp-14H]                         ; 12A6 _ FF. 75, EC
        push    ebx                                     ; 12A9 _ 53
        push    ecx                                     ; 12AA _ 51
        push    8                                       ; 12AB _ 6A, 08
        push    edx                                     ; 12AD _ 52
        push    eax                                     ; 12AE _ 50
        call    boxfill8                                ; 12AF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12B4 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 12B7 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 12BA _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 12BD _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 12C0 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 12C3 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 12C6 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 12C9 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 12CC _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 12CF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12D2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12D5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12D8 _ 8B. 00
        push    edi                                     ; 12DA _ 57
        push    esi                                     ; 12DB _ 56
        push    ebx                                     ; 12DC _ 53
        push    ecx                                     ; 12DD _ 51
        push    8                                       ; 12DE _ 6A, 08
        push    edx                                     ; 12E0 _ 52
        push    eax                                     ; 12E1 _ 50
        call    boxfill8                                ; 12E2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12E7 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 12EA _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 12ED _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 12F0 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 12F3 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 12F6 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 12F9 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 12FC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12FF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1302 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1305 _ 8B. 00
        push    dword [ebp-10H]                         ; 1307 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 130A _ FF. 75, EC
        push    esi                                     ; 130D _ 56
        push    ebx                                     ; 130E _ 53
        push    ecx                                     ; 130F _ 51
        push    edx                                     ; 1310 _ 52
        push    eax                                     ; 1311 _ 50
        call    boxfill8                                ; 1312 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1317 _ 83. C4, 1C
        nop                                             ; 131A _ 90
        lea     esp, [ebp-0CH]                          ; 131B _ 8D. 65, F4
        pop     ebx                                     ; 131E _ 5B
        pop     esi                                     ; 131F _ 5E
        pop     edi                                     ; 1320 _ 5F
        pop     ebp                                     ; 1321 _ 5D
        ret                                             ; 1322 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1323 _ 55
        mov     ebp, esp                                ; 1324 _ 89. E5
        sub     esp, 20                                 ; 1326 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1329 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 132C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 132F _ C7. 45, FC, 00000000
        jmp     ?_029                                   ; 1336 _ E9, 0000016C

?_020:  mov     edx, dword [ebp-4H]                     ; 133B _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 133E _ 8B. 45, 1C
        add     eax, edx                                ; 1341 _ 01. D0
        movzx   eax, byte [eax]                         ; 1343 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1346 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1349 _ 80. 7D, FB, 00
        jns     ?_021                                   ; 134D _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 134F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1352 _ 8B. 45, FC
        add     eax, edx                                ; 1355 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1357 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 135B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 135D _ 8B. 45, 10
        add     eax, edx                                ; 1360 _ 01. D0
        mov     edx, eax                                ; 1362 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1364 _ 8B. 45, 08
        add     edx, eax                                ; 1367 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1369 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 136D _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 136F _ 0F BE. 45, FB
        and     eax, 40H                                ; 1373 _ 83. E0, 40
        test    eax, eax                                ; 1376 _ 85. C0
        jz      ?_022                                   ; 1378 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 137A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 137D _ 8B. 45, FC
        add     eax, edx                                ; 1380 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1382 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1386 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1388 _ 8B. 45, 10
        add     eax, edx                                ; 138B _ 01. D0
        lea     edx, [eax+1H]                           ; 138D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1390 _ 8B. 45, 08
        add     edx, eax                                ; 1393 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1395 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1399 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 139B _ 0F BE. 45, FB
        and     eax, 20H                                ; 139F _ 83. E0, 20
        test    eax, eax                                ; 13A2 _ 85. C0
        jz      ?_023                                   ; 13A4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 13A6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13A9 _ 8B. 45, FC
        add     eax, edx                                ; 13AC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13AE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 13B2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 13B4 _ 8B. 45, 10
        add     eax, edx                                ; 13B7 _ 01. D0
        lea     edx, [eax+2H]                           ; 13B9 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 13BC _ 8B. 45, 08
        add     edx, eax                                ; 13BF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13C1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13C5 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 13C7 _ 0F BE. 45, FB
        and     eax, 10H                                ; 13CB _ 83. E0, 10
        test    eax, eax                                ; 13CE _ 85. C0
        jz      ?_024                                   ; 13D0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 13D2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13D5 _ 8B. 45, FC
        add     eax, edx                                ; 13D8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13DA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 13DE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 13E0 _ 8B. 45, 10
        add     eax, edx                                ; 13E3 _ 01. D0
        lea     edx, [eax+3H]                           ; 13E5 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 13E8 _ 8B. 45, 08
        add     edx, eax                                ; 13EB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13ED _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13F1 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 13F3 _ 0F BE. 45, FB
        and     eax, 08H                                ; 13F7 _ 83. E0, 08
        test    eax, eax                                ; 13FA _ 85. C0
        jz      ?_025                                   ; 13FC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 13FE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1401 _ 8B. 45, FC
        add     eax, edx                                ; 1404 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1406 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 140A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 140C _ 8B. 45, 10
        add     eax, edx                                ; 140F _ 01. D0
        lea     edx, [eax+4H]                           ; 1411 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1414 _ 8B. 45, 08
        add     edx, eax                                ; 1417 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1419 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 141D _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 141F _ 0F BE. 45, FB
        and     eax, 04H                                ; 1423 _ 83. E0, 04
        test    eax, eax                                ; 1426 _ 85. C0
        jz      ?_026                                   ; 1428 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 142A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 142D _ 8B. 45, FC
        add     eax, edx                                ; 1430 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1432 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1436 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1438 _ 8B. 45, 10
        add     eax, edx                                ; 143B _ 01. D0
        lea     edx, [eax+5H]                           ; 143D _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1440 _ 8B. 45, 08
        add     edx, eax                                ; 1443 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1445 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1449 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 144B _ 0F BE. 45, FB
        and     eax, 02H                                ; 144F _ 83. E0, 02
        test    eax, eax                                ; 1452 _ 85. C0
        jz      ?_027                                   ; 1454 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1456 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1459 _ 8B. 45, FC
        add     eax, edx                                ; 145C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 145E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1462 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1464 _ 8B. 45, 10
        add     eax, edx                                ; 1467 _ 01. D0
        lea     edx, [eax+6H]                           ; 1469 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 146C _ 8B. 45, 08
        add     edx, eax                                ; 146F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1471 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1475 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 1477 _ 0F BE. 45, FB
        and     eax, 01H                                ; 147B _ 83. E0, 01
        test    eax, eax                                ; 147E _ 85. C0
        jz      ?_028                                   ; 1480 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1482 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1485 _ 8B. 45, FC
        add     eax, edx                                ; 1488 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 148A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 148E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1490 _ 8B. 45, 10
        add     eax, edx                                ; 1493 _ 01. D0
        lea     edx, [eax+7H]                           ; 1495 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1498 _ 8B. 45, 08
        add     edx, eax                                ; 149B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 149D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14A1 _ 88. 02
?_028:  add     dword [ebp-4H], 1                       ; 14A3 _ 83. 45, FC, 01
?_029:  cmp     dword [ebp-4H], 15                      ; 14A7 _ 83. 7D, FC, 0F
        jle     ?_020                                   ; 14AB _ 0F 8E, FFFFFE8A
        nop                                             ; 14B1 _ 90
        leave                                           ; 14B2 _ C9
        ret                                             ; 14B3 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 14B4 _ 55
        mov     ebp, esp                                ; 14B5 _ 89. E5
        sub     esp, 20                                 ; 14B7 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 14BA _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 14BD _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 14C0 _ C7. 45, FC, 00000000
        jmp     ?_036                                   ; 14C7 _ E9, 000000B1

?_030:  mov     dword [ebp-8H], 0                       ; 14CC _ C7. 45, F8, 00000000
        jmp     ?_035                                   ; 14D3 _ E9, 00000097

?_031:  mov     eax, dword [ebp-4H]                     ; 14D8 _ 8B. 45, FC
        shl     eax, 4                                  ; 14DB _ C1. E0, 04
        mov     edx, eax                                ; 14DE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14E0 _ 8B. 45, F8
        add     eax, edx                                ; 14E3 _ 01. D0
        add     eax, cursor.1860                        ; 14E5 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 14EA _ 0F B6. 00
        cmp     al, 42                                  ; 14ED _ 3C, 2A
        jnz     ?_032                                   ; 14EF _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 14F1 _ 8B. 45, FC
        shl     eax, 4                                  ; 14F4 _ C1. E0, 04
        mov     edx, eax                                ; 14F7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14F9 _ 8B. 45, F8
        add     eax, edx                                ; 14FC _ 01. D0
        mov     edx, eax                                ; 14FE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1500 _ 8B. 45, 08
        add     eax, edx                                ; 1503 _ 01. D0
        mov     byte [eax], 0                           ; 1505 _ C6. 00, 00
?_032:  mov     eax, dword [ebp-4H]                     ; 1508 _ 8B. 45, FC
        shl     eax, 4                                  ; 150B _ C1. E0, 04
        mov     edx, eax                                ; 150E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1510 _ 8B. 45, F8
        add     eax, edx                                ; 1513 _ 01. D0
        add     eax, cursor.1860                        ; 1515 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 151A _ 0F B6. 00
        cmp     al, 79                                  ; 151D _ 3C, 4F
        jnz     ?_033                                   ; 151F _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1521 _ 8B. 45, FC
        shl     eax, 4                                  ; 1524 _ C1. E0, 04
        mov     edx, eax                                ; 1527 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1529 _ 8B. 45, F8
        add     eax, edx                                ; 152C _ 01. D0
        mov     edx, eax                                ; 152E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1530 _ 8B. 45, 08
        add     eax, edx                                ; 1533 _ 01. D0
        mov     byte [eax], 7                           ; 1535 _ C6. 00, 07
?_033:  mov     eax, dword [ebp-4H]                     ; 1538 _ 8B. 45, FC
        shl     eax, 4                                  ; 153B _ C1. E0, 04
        mov     edx, eax                                ; 153E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1540 _ 8B. 45, F8
        add     eax, edx                                ; 1543 _ 01. D0
        add     eax, cursor.1860                        ; 1545 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 154A _ 0F B6. 00
        cmp     al, 46                                  ; 154D _ 3C, 2E
        jnz     ?_034                                   ; 154F _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1551 _ 8B. 45, FC
        shl     eax, 4                                  ; 1554 _ C1. E0, 04
        mov     edx, eax                                ; 1557 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1559 _ 8B. 45, F8
        add     eax, edx                                ; 155C _ 01. D0
        mov     edx, eax                                ; 155E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1560 _ 8B. 45, 08
        add     edx, eax                                ; 1563 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1565 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1569 _ 88. 02
?_034:  add     dword [ebp-8H], 1                       ; 156B _ 83. 45, F8, 01
?_035:  cmp     dword [ebp-8H], 15                      ; 156F _ 83. 7D, F8, 0F
        jle     ?_031                                   ; 1573 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1579 _ 83. 45, FC, 01
?_036:  cmp     dword [ebp-4H], 15                      ; 157D _ 83. 7D, FC, 0F
        jle     ?_030                                   ; 1581 _ 0F 8E, FFFFFF45
        nop                                             ; 1587 _ 90
        leave                                           ; 1588 _ C9
        ret                                             ; 1589 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 158A _ 55
        mov     ebp, esp                                ; 158B _ 89. E5
        push    ebx                                     ; 158D _ 53
        sub     esp, 16                                 ; 158E _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1591 _ C7. 45, F8, 00000000
        jmp     ?_040                                   ; 1598 _ EB, 50

?_037:  mov     dword [ebp-0CH], 0                      ; 159A _ C7. 45, F4, 00000000
        jmp     ?_039                                   ; 15A1 _ EB, 3B

?_038:  mov     eax, dword [ebp-8H]                     ; 15A3 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 15A6 _ 0F AF. 45, 24
        mov     edx, eax                                ; 15AA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 15AC _ 8B. 45, F4
        add     eax, edx                                ; 15AF _ 01. D0
        mov     edx, eax                                ; 15B1 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 15B3 _ 8B. 45, 20
        add     eax, edx                                ; 15B6 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 15B8 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 15BB _ 8B. 55, F8
        add     edx, ecx                                ; 15BE _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 15C0 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 15C4 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 15C7 _ 8B. 4D, F4
        add     ecx, ebx                                ; 15CA _ 01. D9
        add     edx, ecx                                ; 15CC _ 01. CA
        mov     ecx, edx                                ; 15CE _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 15D0 _ 8B. 55, 08
        add     edx, ecx                                ; 15D3 _ 01. CA
        movzx   eax, byte [eax]                         ; 15D5 _ 0F B6. 00
        mov     byte [edx], al                          ; 15D8 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 15DA _ 83. 45, F4, 01
?_039:  mov     eax, dword [ebp-0CH]                    ; 15DE _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 15E1 _ 3B. 45, 10
        jl      ?_038                                   ; 15E4 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 15E6 _ 83. 45, F8, 01
?_040:  mov     eax, dword [ebp-8H]                     ; 15EA _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 15ED _ 3B. 45, 14
        jl      ?_037                                   ; 15F0 _ 7C, A8
        nop                                             ; 15F2 _ 90
        add     esp, 16                                 ; 15F3 _ 83. C4, 10
        pop     ebx                                     ; 15F6 _ 5B
        pop     ebp                                     ; 15F7 _ 5D
        ret                                             ; 15F8 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 15F9 _ 55
        mov     ebp, esp                                ; 15FA _ 89. E5
        sub     esp, 24                                 ; 15FC _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 15FF _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1604 _ 89. 45, EC
        movzx   eax, word [?_178]                       ; 1607 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 160E _ 98
        mov     dword [ebp-10H], eax                    ; 160F _ 89. 45, F0
        movzx   eax, word [?_179]                       ; 1612 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1619 _ 98
        mov     dword [ebp-0CH], eax                    ; 161A _ 89. 45, F4
        sub     esp, 8                                  ; 161D _ 83. EC, 08
        push    32                                      ; 1620 _ 6A, 20
        push    32                                      ; 1622 _ 6A, 20
        call    io_out8                                 ; 1624 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1629 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 162C _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1630 _ 83. EC, 0C
        push    96                                      ; 1633 _ 6A, 60
        call    io_in8                                  ; 1635 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 163A _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 163D _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1640 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1644 _ 83. EC, 08
        push    eax                                     ; 1647 _ 50
        push    keyInfo                                 ; 1648 _ 68, 00000008(d)
        call    fifo8_put                               ; 164D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1652 _ 83. C4, 10
        nop                                             ; 1655 _ 90
        leave                                           ; 1656 _ C9
        ret                                             ; 1657 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1658 _ 55
        mov     ebp, esp                                ; 1659 _ 89. E5
        sub     esp, 40                                 ; 165B _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 165E _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1661 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1664 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1668 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 166B _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 166E _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1672 _ 83. EC, 0C
        push    eax                                     ; 1675 _ 50
        call    charToVal                               ; 1676 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 167B _ 83. C4, 10
        mov     byte [?_177], al                        ; 167E _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1683 _ 0F B6. 45, E4
        shr     al, 4                                   ; 1687 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 168A _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 168D _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1691 _ 0F BE. C0
        sub     esp, 12                                 ; 1694 _ 83. EC, 0C
        push    eax                                     ; 1697 _ 50
        call    charToVal                               ; 1698 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 169D _ 83. C4, 10
        mov     byte [?_176], al                        ; 16A0 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 16A5 _ B8, 00000000(d)
        leave                                           ; 16AA _ C9
        ret                                             ; 16AB _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 16AC _ 55
        mov     ebp, esp                                ; 16AD _ 89. E5
        sub     esp, 4                                  ; 16AF _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 16B2 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 16B5 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 16B8 _ 80. 7D, FC, 09
        jle     ?_041                                   ; 16BC _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 16BE _ 0F B6. 45, FC
        add     eax, 55                                 ; 16C2 _ 83. C0, 37
        jmp     ?_042                                   ; 16C5 _ EB, 07

?_041:  movzx   eax, byte [ebp-4H]                      ; 16C7 _ 0F B6. 45, FC
        add     eax, 48                                 ; 16CB _ 83. C0, 30
?_042:  leave                                           ; 16CE _ C9
        ret                                             ; 16CF _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 16D0 _ 55
        mov     ebp, esp                                ; 16D1 _ 89. E5
        sub     esp, 16                                 ; 16D3 _ 83. EC, 10
        mov     byte [str.1903], 48                     ; 16D6 _ C6. 05, 00000330(d), 30
        mov     byte [?_210], 120                       ; 16DD _ C6. 05, 00000331(d), 78
        mov     byte [?_211], 0                         ; 16E4 _ C6. 05, 0000033A(d), 00
        mov     dword [ebp-0CH], 2                      ; 16EB _ C7. 45, F4, 00000002
        jmp     ?_044                                   ; 16F2 _ EB, 0F

?_043:  mov     eax, dword [ebp-0CH]                    ; 16F4 _ 8B. 45, F4
        add     eax, str.1903                           ; 16F7 _ 05, 00000330(d)
        mov     byte [eax], 48                          ; 16FC _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 16FF _ 83. 45, F4, 01
?_044:  cmp     dword [ebp-0CH], 9                      ; 1703 _ 83. 7D, F4, 09
        jle     ?_043                                   ; 1707 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1709 _ C7. 45, F8, 00000009
        jmp     ?_047                                   ; 1710 _ EB, 48

?_045:  mov     eax, dword [ebp+8H]                     ; 1712 _ 8B. 45, 08
        and     eax, 0FH                                ; 1715 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1718 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 171B _ 8B. 45, 08
        shr     eax, 4                                  ; 171E _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1721 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1724 _ 83. 7D, FC, 09
        jle     ?_046                                   ; 1728 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 172A _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 172D _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1730 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1733 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1736 _ 89. 55, F8
        mov     edx, ecx                                ; 1739 _ 89. CA
        mov     byte [str.1903+eax], dl                 ; 173B _ 88. 90, 00000330(d)
        jmp     ?_047                                   ; 1741 _ EB, 17

?_046:  mov     eax, dword [ebp-4H]                     ; 1743 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1746 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1749 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 174C _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 174F _ 89. 55, F8
        mov     edx, ecx                                ; 1752 _ 89. CA
        mov     byte [str.1903+eax], dl                 ; 1754 _ 88. 90, 00000330(d)
?_047:  cmp     dword [ebp-8H], 1                       ; 175A _ 83. 7D, F8, 01
        jle     ?_048                                   ; 175E _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1760 _ 83. 7D, 08, 00
        jnz     ?_045                                   ; 1764 _ 75, AC
?_048:  mov     eax, str.1903                           ; 1766 _ B8, 00000330(d)
        leave                                           ; 176B _ C9
        ret                                             ; 176C _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 176D _ 55
        mov     ebp, esp                                ; 176E _ 89. E5
        sub     esp, 8                                  ; 1770 _ 83. EC, 08
?_049:  sub     esp, 12                                 ; 1773 _ 83. EC, 0C
        push    100                                     ; 1776 _ 6A, 64
        call    io_in8                                  ; 1778 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 177D _ 83. C4, 10
        movsx   eax, al                                 ; 1780 _ 0F BE. C0
        and     eax, 02H                                ; 1783 _ 83. E0, 02
        test    eax, eax                                ; 1786 _ 85. C0
        jz      ?_050                                   ; 1788 _ 74, 02
        jmp     ?_049                                   ; 178A _ EB, E7

?_050:  nop                                             ; 178C _ 90
        nop                                             ; 178D _ 90
        leave                                           ; 178E _ C9
        ret                                             ; 178F _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1790 _ 55
        mov     ebp, esp                                ; 1791 _ 89. E5
        sub     esp, 8                                  ; 1793 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1796 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 179B _ 83. EC, 08
        push    96                                      ; 179E _ 6A, 60
        push    100                                     ; 17A0 _ 6A, 64
        call    io_out8                                 ; 17A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17A7 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 17AA _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 17AF _ 83. EC, 08
        push    71                                      ; 17B2 _ 6A, 47
        push    96                                      ; 17B4 _ 6A, 60
        call    io_out8                                 ; 17B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17BB _ 83. C4, 10
        nop                                             ; 17BE _ 90
        leave                                           ; 17BF _ C9
        ret                                             ; 17C0 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 17C1 _ 55
        mov     ebp, esp                                ; 17C2 _ 89. E5
        sub     esp, 8                                  ; 17C4 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 17C7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 17CC _ 83. EC, 08
        push    212                                     ; 17CF _ 68, 000000D4
        push    100                                     ; 17D4 _ 6A, 64
        call    io_out8                                 ; 17D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17DB _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 17DE _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 17E3 _ 83. EC, 08
        push    244                                     ; 17E6 _ 68, 000000F4
        push    96                                      ; 17EB _ 6A, 60
        call    io_out8                                 ; 17ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17F2 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 17F5 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 17F8 _ C6. 40, 03, 00
        nop                                             ; 17FC _ 90
        leave                                           ; 17FD _ C9
        ret                                             ; 17FE _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 17FF _ 55
        mov     ebp, esp                                ; 1800 _ 89. E5
        sub     esp, 24                                 ; 1802 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1805 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1809 _ 83. EC, 08
        push    32                                      ; 180C _ 6A, 20
        push    160                                     ; 180E _ 68, 000000A0
        call    io_out8                                 ; 1813 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1818 _ 83. C4, 10
        sub     esp, 8                                  ; 181B _ 83. EC, 08
        push    32                                      ; 181E _ 6A, 20
        push    32                                      ; 1820 _ 6A, 20
        call    io_out8                                 ; 1822 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1827 _ 83. C4, 10
        sub     esp, 12                                 ; 182A _ 83. EC, 0C
        push    96                                      ; 182D _ 6A, 60
        call    io_in8                                  ; 182F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1834 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1837 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 183A _ 0F B6. 45, F7
        sub     esp, 8                                  ; 183E _ 83. EC, 08
        push    eax                                     ; 1841 _ 50
        push    mouseInfo                               ; 1842 _ 68, 00000020(d)
        call    fifo8_put                               ; 1847 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 184C _ 83. C4, 10
        nop                                             ; 184F _ 90
        leave                                           ; 1850 _ C9
        ret                                             ; 1851 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1852 _ 55
        mov     ebp, esp                                ; 1853 _ 89. E5
        sub     esp, 40                                 ; 1855 _ 83. EC, 28
        call    io_sti                                  ; 1858 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 185D _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 1862 _ 89. 45, E8
        movzx   eax, word [?_178]                       ; 1865 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 186C _ 98
        mov     dword [ebp-14H], eax                    ; 186D _ 89. 45, EC
        movzx   eax, word [?_179]                       ; 1870 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1877 _ 98
        mov     dword [ebp-10H], eax                    ; 1878 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 187B _ C6. 45, E7, 00
        sub     esp, 12                                 ; 187F _ 83. EC, 0C
        push    keyInfo                                 ; 1882 _ 68, 00000008(d)
        call    fifo8_get                               ; 1887 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 188C _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 188F _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1892 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1896 _ 83. EC, 0C
        push    eax                                     ; 1899 _ 50
        call    charToHex                               ; 189A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 189F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 18A2 _ 89. 45, F4
        mov     edx, dword [line.1936]                  ; 18A5 _ 8B. 15, 0000033C(d)
        mov     eax, dword [pos.1935]                   ; 18AB _ A1, 00000340(d)
        sub     esp, 8                                  ; 18B0 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 18B3 _ FF. 75, F4
        push    7                                       ; 18B6 _ 6A, 07
        push    edx                                     ; 18B8 _ 52
        push    eax                                     ; 18B9 _ 50
        push    dword [ebp+0CH]                         ; 18BA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18BD _ FF. 75, 08
        call    showString                              ; 18C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18C5 _ 83. C4, 20
        mov     eax, dword [pos.1935]                   ; 18C8 _ A1, 00000340(d)
        add     eax, 32                                 ; 18CD _ 83. C0, 20
        mov     dword [pos.1935], eax                   ; 18D0 _ A3, 00000340(d)
        mov     eax, dword [pos.1935]                   ; 18D5 _ A1, 00000340(d)
        cmp     dword [ebp-14H], eax                    ; 18DA _ 39. 45, EC
        jnz     ?_053                                   ; 18DD _ 75, 28
        mov     eax, dword [line.1936]                  ; 18DF _ A1, 0000033C(d)
        cmp     dword [ebp-10H], eax                    ; 18E4 _ 39. 45, F0
        jz      ?_051                                   ; 18E7 _ 74, 0A
        mov     eax, dword [line.1936]                  ; 18E9 _ A1, 0000033C(d)
        add     eax, 16                                 ; 18EE _ 83. C0, 10
        jmp     ?_052                                   ; 18F1 _ EB, 05

?_051:  mov     eax, 0                                  ; 18F3 _ B8, 00000000
?_052:  mov     dword [line.1936], eax                  ; 18F8 _ A3, 0000033C(d)
        mov     dword [pos.1935], 0                     ; 18FD _ C7. 05, 00000340(d), 00000000
?_053:  nop                                             ; 1907 _ 90
        leave                                           ; 1908 _ C9
        ret                                             ; 1909 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 190A _ 55
        mov     ebp, esp                                ; 190B _ 89. E5
        sub     esp, 24                                 ; 190D _ 83. EC, 18
        call    io_sti                                  ; 1910 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1915 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1919 _ 83. EC, 0C
        push    mouseInfo                               ; 191C _ 68, 00000020(d)
        call    fifo8_get                               ; 1921 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1926 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1929 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 192C _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1930 _ 83. EC, 08
        push    eax                                     ; 1933 _ 50
        push    mouse_move                              ; 1934 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1939 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 193E _ 83. C4, 10
        test    eax, eax                                ; 1941 _ 85. C0
        jz      ?_054                                   ; 1943 _ 74, 60
        sub     esp, 4                                  ; 1945 _ 83. EC, 04
        push    mouse_move                              ; 1948 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 194D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1950 _ FF. 75, 08
        call    computeMousePos                         ; 1953 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1958 _ 83. C4, 10
        mov     edx, dword [my]                         ; 195B _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1961 _ A1, 000000F0(d)
        push    edx                                     ; 1966 _ 52
        push    eax                                     ; 1967 _ 50
        push    dword [ebp+10H]                         ; 1968 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 196B _ FF. 75, 08
        call    sheet_slide                             ; 196E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1973 _ 83. C4, 10
        mov     eax, dword [?_180]                      ; 1976 _ A1, 000000EC(d)
        and     eax, 01H                                ; 197B _ 83. E0, 01
        test    eax, eax                                ; 197E _ 85. C0
        jz      ?_054                                   ; 1980 _ 74, 23
        mov     eax, dword [my]                         ; 1982 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1987 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 198A _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 198F _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1992 _ A1, 00000224(d)
        push    ecx                                     ; 1997 _ 51
        push    edx                                     ; 1998 _ 52
        push    eax                                     ; 1999 _ 50
        push    dword [ebp+8H]                          ; 199A _ FF. 75, 08
        call    sheet_slide                             ; 199D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19A2 _ 83. C4, 10
?_054:  nop                                             ; 19A5 _ 90
        leave                                           ; 19A6 _ C9
        ret                                             ; 19A7 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 19A8 _ 55
        mov     ebp, esp                                ; 19A9 _ 89. E5
        sub     esp, 4                                  ; 19AB _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 19AE _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 19B1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 19B4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 19B7 _ 0F B6. 40, 03
        test    al, al                                  ; 19BB _ 84. C0
        jnz     ?_056                                   ; 19BD _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 19BF _ 80. 7D, FC, FA
        jnz     ?_055                                   ; 19C3 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 19C5 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 19C8 _ C6. 40, 03, 01
?_055:  mov     eax, 0                                  ; 19CC _ B8, 00000000
        jmp     ?_063                                   ; 19D1 _ E9, 0000010C

?_056:  mov     eax, dword [ebp+8H]                     ; 19D6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 19D9 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 19DD _ 3C, 01
        jnz     ?_058                                   ; 19DF _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 19E1 _ 0F B6. 45, FC
        or      eax, 37H                                ; 19E5 _ 83. C8, 37
        cmp     al, 63                                  ; 19E8 _ 3C, 3F
        jnz     ?_057                                   ; 19EA _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 19EC _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 19EF _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 19F3 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 19F5 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 19F8 _ C6. 40, 03, 02
?_057:  mov     eax, 0                                  ; 19FC _ B8, 00000000
        jmp     ?_063                                   ; 1A01 _ E9, 000000DC

?_058:  mov     eax, dword [ebp+8H]                     ; 1A06 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A09 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1A0D _ 3C, 02
        jnz     ?_059                                   ; 1A0F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1A11 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1A14 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1A18 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A1B _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1A1E _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1A22 _ B8, 00000000
        jmp     ?_063                                   ; 1A27 _ E9, 000000B6

?_059:  mov     eax, dword [ebp+8H]                     ; 1A2C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A2F _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1A33 _ 3C, 03
        jne     ?_062                                   ; 1A35 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1A3B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1A3E _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1A42 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1A45 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1A48 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1A4C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1A4F _ 0F B6. 00
        movzx   eax, al                                 ; 1A52 _ 0F B6. C0
        and     eax, 07H                                ; 1A55 _ 83. E0, 07
        mov     edx, eax                                ; 1A58 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A5A _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1A5D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1A60 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1A63 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1A67 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1A6A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1A6D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A70 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1A73 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1A77 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1A7A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1A7D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1A80 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1A83 _ 0F B6. 00
        movzx   eax, al                                 ; 1A86 _ 0F B6. C0
        and     eax, 10H                                ; 1A89 _ 83. E0, 10
        test    eax, eax                                ; 1A8C _ 85. C0
        jz      ?_060                                   ; 1A8E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1A90 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1A93 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1A96 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1A9B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A9D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1AA0 _ 89. 50, 04
?_060:  mov     eax, dword [ebp+8H]                     ; 1AA3 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1AA6 _ 0F B6. 00
        movzx   eax, al                                 ; 1AA9 _ 0F B6. C0
        and     eax, 20H                                ; 1AAC _ 83. E0, 20
        test    eax, eax                                ; 1AAF _ 85. C0
        jz      ?_061                                   ; 1AB1 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1AB3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1AB6 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1AB9 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1ABE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1AC0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1AC3 _ 89. 50, 08
?_061:  mov     eax, dword [ebp+8H]                     ; 1AC6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1AC9 _ 8B. 40, 08
        neg     eax                                     ; 1ACC _ F7. D8
        mov     edx, eax                                ; 1ACE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1AD0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1AD3 _ 89. 50, 08
        mov     eax, 1                                  ; 1AD6 _ B8, 00000001
        jmp     ?_063                                   ; 1ADB _ EB, 05

?_062:  mov     eax, 4294967295                         ; 1ADD _ B8, FFFFFFFF
?_063:  leave                                           ; 1AE2 _ C9
        ret                                             ; 1AE3 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1AE4 _ 55
        mov     ebp, esp                                ; 1AE5 _ 89. E5
        sub     esp, 16                                 ; 1AE7 _ 83. EC, 10
        movzx   eax, word [?_178]                       ; 1AEA _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1AF1 _ 98
        mov     dword [ebp-8H], eax                     ; 1AF2 _ 89. 45, F8
        movzx   eax, word [?_179]                       ; 1AF5 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1AFC _ 98
        mov     dword [ebp-4H], eax                     ; 1AFD _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1B00 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1B03 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1B06 _ A1, 000000F0(d)
        add     eax, edx                                ; 1B0B _ 01. D0
        mov     dword [mx], eax                         ; 1B0D _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1B12 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1B15 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1B18 _ A1, 000000F4(d)
        add     eax, edx                                ; 1B1D _ 01. D0
        mov     dword [my], eax                         ; 1B1F _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1B24 _ A1, 000000F0(d)
        test    eax, eax                                ; 1B29 _ 85. C0
        jns     ?_064                                   ; 1B2B _ 79, 0A
        mov     dword [mx], 0                           ; 1B2D _ C7. 05, 000000F0(d), 00000000
?_064:  mov     eax, dword [my]                         ; 1B37 _ A1, 000000F4(d)
        test    eax, eax                                ; 1B3C _ 85. C0
        jns     ?_065                                   ; 1B3E _ 79, 0A
        mov     dword [my], 0                           ; 1B40 _ C7. 05, 000000F4(d), 00000000
?_065:  mov     eax, dword [ebp-8H]                     ; 1B4A _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1B4D _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1B50 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1B55 _ 39. C2
        jge     ?_066                                   ; 1B57 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1B59 _ 8B. 45, F8
        sub     eax, 9                                  ; 1B5C _ 83. E8, 09
        mov     dword [mx], eax                         ; 1B5F _ A3, 000000F0(d)
?_066:  mov     eax, dword [ebp-4H]                     ; 1B64 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1B67 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1B6A _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1B6F _ 39. C2
        jge     ?_067                                   ; 1B71 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1B73 _ 8B. 45, FC
        sub     eax, 1                                  ; 1B76 _ 83. E8, 01
        mov     dword [my], eax                         ; 1B79 _ A3, 000000F4(d)
?_067:  nop                                             ; 1B7E _ 90
        leave                                           ; 1B7F _ C9
        ret                                             ; 1B80 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1B81 _ 55
        mov     ebp, esp                                ; 1B82 _ 89. E5
        sub     esp, 56                                 ; 1B84 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1B87 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1B8E _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1B95 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1B9C _ C7. 45, DC, 00000050
        push    100                                     ; 1BA3 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1BA5 _ FF. 75, 1C
        push    0                                       ; 1BA8 _ 6A, 00
        push    0                                       ; 1BAA _ 6A, 00
        push    14                                      ; 1BAC _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1BAE _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1BB1 _ FF. 75, 14
        call    boxfill8                                ; 1BB4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1BB9 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1BBC _ 8B. 45, 20
        movsx   eax, al                                 ; 1BBF _ 0F BE. C0
        sub     esp, 8                                  ; 1BC2 _ 83. EC, 08
        push    ?_170                                   ; 1BC5 _ 68, 00000050(d)
        push    eax                                     ; 1BCA _ 50
        push    dword [ebp-2CH]                         ; 1BCB _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1BCE _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1BD1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BD4 _ FF. 75, 08
        call    showString                              ; 1BD7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BDC _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1BDF _ 8B. 45, 18
        sub     esp, 12                                 ; 1BE2 _ 83. EC, 0C
        push    eax                                     ; 1BE5 _ 50
        call    intToHexStr                             ; 1BE6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BEB _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1BEE _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1BF1 _ 8B. 45, 20
        movsx   eax, al                                 ; 1BF4 _ 0F BE. C0
        sub     esp, 8                                  ; 1BF7 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1BFA _ FF. 75, E0
        push    eax                                     ; 1BFD _ 50
        push    dword [ebp-2CH]                         ; 1BFE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1C01 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1C04 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C07 _ FF. 75, 08
        call    showString                              ; 1C0A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C0F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1C12 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1C16 _ 8B. 45, 20
        movsx   eax, al                                 ; 1C19 _ 0F BE. C0
        sub     esp, 8                                  ; 1C1C _ 83. EC, 08
        push    ?_171                                   ; 1C1F _ 68, 0000005A(d)
        push    eax                                     ; 1C24 _ 50
        push    dword [ebp-2CH]                         ; 1C25 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1C28 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1C2B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C2E _ FF. 75, 08
        call    showString                              ; 1C31 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C36 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1C39 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1C3C _ 8B. 00
        sub     esp, 12                                 ; 1C3E _ 83. EC, 0C
        push    eax                                     ; 1C41 _ 50
        call    intToHexStr                             ; 1C42 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C47 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1C4A _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1C4D _ 8B. 45, 20
        movsx   eax, al                                 ; 1C50 _ 0F BE. C0
        sub     esp, 8                                  ; 1C53 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1C56 _ FF. 75, E4
        push    eax                                     ; 1C59 _ 50
        push    dword [ebp-2CH]                         ; 1C5A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1C5D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1C60 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C63 _ FF. 75, 08
        call    showString                              ; 1C66 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C6B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1C6E _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1C72 _ 8B. 45, 20
        movsx   eax, al                                 ; 1C75 _ 0F BE. C0
        sub     esp, 8                                  ; 1C78 _ 83. EC, 08
        push    ?_172                                   ; 1C7B _ 68, 00000068(d)
        push    eax                                     ; 1C80 _ 50
        push    dword [ebp-2CH]                         ; 1C81 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1C84 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1C87 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C8A _ FF. 75, 08
        call    showString                              ; 1C8D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C92 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1C95 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1C98 _ 8B. 40, 04
        sub     esp, 12                                 ; 1C9B _ 83. EC, 0C
        push    eax                                     ; 1C9E _ 50
        call    intToHexStr                             ; 1C9F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CA4 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1CA7 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1CAA _ 8B. 45, 20
        movsx   eax, al                                 ; 1CAD _ 0F BE. C0
        sub     esp, 8                                  ; 1CB0 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1CB3 _ FF. 75, E8
        push    eax                                     ; 1CB6 _ 50
        push    dword [ebp-2CH]                         ; 1CB7 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1CBA _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1CBD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CC0 _ FF. 75, 08
        call    showString                              ; 1CC3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CC8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1CCB _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1CCF _ 8B. 45, 20
        movsx   eax, al                                 ; 1CD2 _ 0F BE. C0
        sub     esp, 8                                  ; 1CD5 _ 83. EC, 08
        push    ?_173                                   ; 1CD8 _ 68, 00000077(d)
        push    eax                                     ; 1CDD _ 50
        push    dword [ebp-2CH]                         ; 1CDE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1CE1 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1CE4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CE7 _ FF. 75, 08
        call    showString                              ; 1CEA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CEF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1CF2 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1CF5 _ 8B. 40, 08
        sub     esp, 12                                 ; 1CF8 _ 83. EC, 0C
        push    eax                                     ; 1CFB _ 50
        call    intToHexStr                             ; 1CFC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D01 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1D04 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1D07 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D0A _ 0F BE. C0
        sub     esp, 8                                  ; 1D0D _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1D10 _ FF. 75, EC
        push    eax                                     ; 1D13 _ 50
        push    dword [ebp-2CH]                         ; 1D14 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D17 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D1A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D1D _ FF. 75, 08
        call    showString                              ; 1D20 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D25 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D28 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D2C _ 8B. 45, 20
        movsx   eax, al                                 ; 1D2F _ 0F BE. C0
        sub     esp, 8                                  ; 1D32 _ 83. EC, 08
        push    ?_174                                   ; 1D35 _ 68, 00000083(d)
        push    eax                                     ; 1D3A _ 50
        push    dword [ebp-2CH]                         ; 1D3B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D3E _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D41 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D44 _ FF. 75, 08
        call    showString                              ; 1D47 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D4C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1D4F _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1D52 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1D55 _ 83. EC, 0C
        push    eax                                     ; 1D58 _ 50
        call    intToHexStr                             ; 1D59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D5E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1D61 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1D64 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D67 _ 0F BE. C0
        sub     esp, 8                                  ; 1D6A _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1D6D _ FF. 75, F0
        push    eax                                     ; 1D70 _ 50
        push    dword [ebp-2CH]                         ; 1D71 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D74 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D77 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D7A _ FF. 75, 08
        call    showString                              ; 1D7D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D82 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D85 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D89 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D8C _ 0F BE. C0
        sub     esp, 8                                  ; 1D8F _ 83. EC, 08
        push    ?_175                                   ; 1D92 _ 68, 00000090(d)
        push    eax                                     ; 1D97 _ 50
        push    dword [ebp-2CH]                         ; 1D98 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D9B _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D9E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DA1 _ FF. 75, 08
        call    showString                              ; 1DA4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DA9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DAC _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1DAF _ 8B. 40, 10
        sub     esp, 12                                 ; 1DB2 _ 83. EC, 0C
        push    eax                                     ; 1DB5 _ 50
        call    intToHexStr                             ; 1DB6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DBB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1DBE _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1DC1 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DC4 _ 0F BE. C0
        sub     esp, 8                                  ; 1DC7 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1DCA _ FF. 75, F4
        push    eax                                     ; 1DCD _ 50
        push    dword [ebp-2CH]                         ; 1DCE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DD1 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DD4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DD7 _ FF. 75, 08
        call    showString                              ; 1DDA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DDF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DE2 _ 83. 45, D4, 10
        nop                                             ; 1DE6 _ 90
        leave                                           ; 1DE7 _ C9
        ret                                             ; 1DE8 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1DE9 _ 55
        mov     ebp, esp                                ; 1DEA _ 89. E5
        sub     esp, 24                                 ; 1DEC _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1DEF _ A1, 00000008(d)
        sub     esp, 8                                  ; 1DF4 _ 83. EC, 08
        push    37500                                   ; 1DF7 _ 68, 0000927C
        push    eax                                     ; 1DFC _ 50
        call    memman_alloc_4K                         ; 1DFD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E02 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1E05 _ 89. 45, F0
        sub     esp, 12                                 ; 1E08 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1E0B _ FF. 75, 08
        call    sheet_alloc                             ; 1E0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E13 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1E16 _ 89. 45, F4
        sub     esp, 12                                 ; 1E19 _ 83. EC, 0C
        push    99                                      ; 1E1C _ 6A, 63
        push    125                                     ; 1E1E _ 6A, 7D
        push    300                                     ; 1E20 _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1E25 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1E28 _ FF. 75, F4
        call    sheet_setbuf                            ; 1E2B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E30 _ 83. C4, 20
        sub     esp, 4                                  ; 1E33 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1E36 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1E39 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1E3C _ FF. 75, 08
        call    make_window8                            ; 1E3F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E44 _ 83. C4, 10
        sub     esp, 8                                  ; 1E47 _ 83. EC, 08
        push    7                                       ; 1E4A _ 6A, 07
        push    16                                      ; 1E4C _ 6A, 10
        push    150                                     ; 1E4E _ 68, 00000096
        push    42                                      ; 1E53 _ 6A, 2A
        push    8                                       ; 1E55 _ 6A, 08
        push    dword [ebp-0CH]                         ; 1E57 _ FF. 75, F4
        call    make_textbox8                           ; 1E5A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E5F _ 83. C4, 20
        push    120                                     ; 1E62 _ 6A, 78
        push    200                                     ; 1E64 _ 68, 000000C8
        push    dword [ebp-0CH]                         ; 1E69 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1E6C _ FF. 75, 08
        call    sheet_slide                             ; 1E6F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E74 _ 83. C4, 10
        sub     esp, 4                                  ; 1E77 _ 83. EC, 04
        push    1                                       ; 1E7A _ 6A, 01
        push    dword [ebp-0CH]                         ; 1E7C _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1E7F _ FF. 75, 08
        call    sheet_level_updown                      ; 1E82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E87 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1E8A _ 8B. 45, F4
        leave                                           ; 1E8D _ C9
        ret                                             ; 1E8E _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1E8F _ 55
        mov     ebp, esp                                ; 1E90 _ 89. E5
        push    ebx                                     ; 1E92 _ 53
        sub     esp, 36                                 ; 1E93 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1E96 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E99 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1E9C _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1E9F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1EA2 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1EA5 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1EA8 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1EAB _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1EAE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EB1 _ 8B. 00
        push    0                                       ; 1EB3 _ 6A, 00
        push    edx                                     ; 1EB5 _ 52
        push    0                                       ; 1EB6 _ 6A, 00
        push    0                                       ; 1EB8 _ 6A, 00
        push    8                                       ; 1EBA _ 6A, 08
        push    dword [ebp-10H]                         ; 1EBC _ FF. 75, F0
        push    eax                                     ; 1EBF _ 50
        call    boxfill8                                ; 1EC0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EC5 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1EC8 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1ECB _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1ECE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1ED1 _ 8B. 00
        push    1                                       ; 1ED3 _ 6A, 01
        push    edx                                     ; 1ED5 _ 52
        push    1                                       ; 1ED6 _ 6A, 01
        push    1                                       ; 1ED8 _ 6A, 01
        push    7                                       ; 1EDA _ 6A, 07
        push    dword [ebp-10H]                         ; 1EDC _ FF. 75, F0
        push    eax                                     ; 1EDF _ 50
        call    boxfill8                                ; 1EE0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EE5 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1EE8 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1EEB _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1EEE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EF1 _ 8B. 00
        push    edx                                     ; 1EF3 _ 52
        push    0                                       ; 1EF4 _ 6A, 00
        push    0                                       ; 1EF6 _ 6A, 00
        push    0                                       ; 1EF8 _ 6A, 00
        push    8                                       ; 1EFA _ 6A, 08
        push    dword [ebp-10H]                         ; 1EFC _ FF. 75, F0
        push    eax                                     ; 1EFF _ 50
        call    boxfill8                                ; 1F00 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F05 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F08 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1F0B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1F0E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F11 _ 8B. 00
        push    edx                                     ; 1F13 _ 52
        push    1                                       ; 1F14 _ 6A, 01
        push    1                                       ; 1F16 _ 6A, 01
        push    1                                       ; 1F18 _ 6A, 01
        push    7                                       ; 1F1A _ 6A, 07
        push    dword [ebp-10H]                         ; 1F1C _ FF. 75, F0
        push    eax                                     ; 1F1F _ 50
        call    boxfill8                                ; 1F20 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F25 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F28 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1F2B _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1F2E _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1F31 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1F34 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1F37 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1F3A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F3D _ 8B. 00
        push    ebx                                     ; 1F3F _ 53
        push    ecx                                     ; 1F40 _ 51
        push    1                                       ; 1F41 _ 6A, 01
        push    edx                                     ; 1F43 _ 52
        push    15                                      ; 1F44 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1F46 _ FF. 75, F0
        push    eax                                     ; 1F49 _ 50
        call    boxfill8                                ; 1F4A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F4F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F52 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1F55 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1F58 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1F5B _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1F5E _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1F61 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1F64 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F67 _ 8B. 00
        push    ebx                                     ; 1F69 _ 53
        push    ecx                                     ; 1F6A _ 51
        push    0                                       ; 1F6B _ 6A, 00
        push    edx                                     ; 1F6D _ 52
        push    0                                       ; 1F6E _ 6A, 00
        push    dword [ebp-10H]                         ; 1F70 _ FF. 75, F0
        push    eax                                     ; 1F73 _ 50
        call    boxfill8                                ; 1F74 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F79 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F7C _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1F7F _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1F82 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1F85 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1F88 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F8B _ 8B. 00
        push    ecx                                     ; 1F8D _ 51
        push    edx                                     ; 1F8E _ 52
        push    2                                       ; 1F8F _ 6A, 02
        push    2                                       ; 1F91 _ 6A, 02
        push    8                                       ; 1F93 _ 6A, 08
        push    dword [ebp-10H]                         ; 1F95 _ FF. 75, F0
        push    eax                                     ; 1F98 _ 50
        call    boxfill8                                ; 1F99 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F9E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1FA1 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1FA4 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1FA7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1FAA _ 8B. 00
        push    20                                      ; 1FAC _ 6A, 14
        push    edx                                     ; 1FAE _ 52
        push    3                                       ; 1FAF _ 6A, 03
        push    3                                       ; 1FB1 _ 6A, 03
        push    12                                      ; 1FB3 _ 6A, 0C
        push    dword [ebp-10H]                         ; 1FB5 _ FF. 75, F0
        push    eax                                     ; 1FB8 _ 50
        call    boxfill8                                ; 1FB9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1FBE _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1FC1 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1FC4 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1FC7 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1FCA _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1FCD _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1FD0 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1FD3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1FD6 _ 8B. 00
        push    ebx                                     ; 1FD8 _ 53
        push    ecx                                     ; 1FD9 _ 51
        push    edx                                     ; 1FDA _ 52
        push    1                                       ; 1FDB _ 6A, 01
        push    15                                      ; 1FDD _ 6A, 0F
        push    dword [ebp-10H]                         ; 1FDF _ FF. 75, F0
        push    eax                                     ; 1FE2 _ 50
        call    boxfill8                                ; 1FE3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1FE8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1FEB _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1FEE _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1FF1 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1FF4 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1FF7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1FFA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1FFD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2000 _ 8B. 00
        push    ebx                                     ; 2002 _ 53
        push    ecx                                     ; 2003 _ 51
        push    edx                                     ; 2004 _ 52
        push    0                                       ; 2005 _ 6A, 00
        push    0                                       ; 2007 _ 6A, 00
        push    dword [ebp-10H]                         ; 2009 _ FF. 75, F0
        push    eax                                     ; 200C _ 50
        call    boxfill8                                ; 200D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2012 _ 83. C4, 1C
        sub     esp, 8                                  ; 2015 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2018 _ FF. 75, 10
        push    7                                       ; 201B _ 6A, 07
        push    4                                       ; 201D _ 6A, 04
        push    8                                       ; 201F _ 6A, 08
        push    dword [ebp+0CH]                         ; 2021 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2024 _ FF. 75, 08
        call    showString                              ; 2027 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 202C _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 202F _ C7. 45, E8, 00000000
        jmp     ?_074                                   ; 2036 _ EB, 7D

?_068:  mov     dword [ebp-14H], 0                      ; 2038 _ C7. 45, EC, 00000000
        jmp     ?_073                                   ; 203F _ EB, 6A

?_069:  mov     eax, dword [ebp-18H]                    ; 2041 _ 8B. 45, E8
        shl     eax, 4                                  ; 2044 _ C1. E0, 04
        mov     edx, eax                                ; 2047 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2049 _ 8B. 45, EC
        add     eax, edx                                ; 204C _ 01. D0
        add     eax, closebtn.1984                      ; 204E _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 2053 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 2056 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 2059 _ 80. 7D, E7, 40
        jnz     ?_070                                   ; 205D _ 75, 06
        mov     byte [ebp-19H], 0                       ; 205F _ C6. 45, E7, 00
        jmp     ?_072                                   ; 2063 _ EB, 16

?_070:  cmp     byte [ebp-19H], 36                      ; 2065 _ 80. 7D, E7, 24
        jnz     ?_071                                   ; 2069 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 206B _ C6. 45, E7, 0F
        jmp     ?_072                                   ; 206F _ EB, 0A

?_071:  cmp     byte [ebp-19H], 81                      ; 2071 _ 80. 7D, E7, 51
        jnz     ?_072                                   ; 2075 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 2077 _ C6. 45, E7, 08
?_072:  mov     eax, dword [ebp+0CH]                    ; 207B _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 207E _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2080 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 2083 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 2086 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2089 _ 8B. 40, 04
        imul    ecx, eax                                ; 208C _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 208F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2092 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 2095 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 2098 _ 8B. 45, EC
        add     eax, ebx                                ; 209B _ 01. D8
        add     eax, ecx                                ; 209D _ 01. C8
        add     edx, eax                                ; 209F _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 20A1 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 20A5 _ 88. 02
        add     dword [ebp-14H], 1                      ; 20A7 _ 83. 45, EC, 01
?_073:  cmp     dword [ebp-14H], 15                     ; 20AB _ 83. 7D, EC, 0F
        jle     ?_069                                   ; 20AF _ 7E, 90
        add     dword [ebp-18H], 1                      ; 20B1 _ 83. 45, E8, 01
?_074:  cmp     dword [ebp-18H], 13                     ; 20B5 _ 83. 7D, E8, 0D
        jle     ?_068                                   ; 20B9 _ 0F 8E, FFFFFF79
        nop                                             ; 20BF _ 90
        mov     ebx, dword [ebp-4H]                     ; 20C0 _ 8B. 5D, FC
        leave                                           ; 20C3 _ C9
        ret                                             ; 20C4 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 20C5 _ 55
        mov     ebp, esp                                ; 20C6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 20C8 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 20CB _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 20D1 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 20D4 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 20DB _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 20DE _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 20E5 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 20E8 _ C7. 40, 0C, 00000000
        nop                                             ; 20EF _ 90
        pop     ebp                                     ; 20F0 _ 5D
        ret                                             ; 20F1 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 20F2 _ 55
        mov     ebp, esp                                ; 20F3 _ 89. E5
        sub     esp, 16                                 ; 20F5 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 20F8 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 20FF _ C7. 45, FC, 00000000
        jmp     ?_076                                   ; 2106 _ EB, 14

?_075:  mov     eax, dword [ebp+8H]                     ; 2108 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 210B _ 8B. 55, FC
        add     edx, 2                                  ; 210E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2111 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2115 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2118 _ 83. 45, FC, 01
?_076:  mov     eax, dword [ebp+8H]                     ; 211C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 211F _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2121 _ 39. 45, FC
        jl      ?_075                                   ; 2124 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2126 _ 8B. 45, F8
        leave                                           ; 2129 _ C9
        ret                                             ; 212A _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 212B _ 55
        mov     ebp, esp                                ; 212C _ 89. E5
        sub     esp, 16                                 ; 212E _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2131 _ C7. 45, F8, 00000000
        jmp     ?_080                                   ; 2138 _ E9, 00000085

?_077:  mov     eax, dword [ebp+8H]                     ; 213D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2140 _ 8B. 55, F8
        add     edx, 2                                  ; 2143 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2146 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 214A _ 39. 45, 0C
        ja      ?_079                                   ; 214D _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 214F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2152 _ 8B. 55, F8
        add     edx, 2                                  ; 2155 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2158 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 215B _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 215E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2161 _ 8B. 55, F8
        add     edx, 2                                  ; 2164 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2167 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 216A _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 216D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2170 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2173 _ 8B. 55, F8
        add     edx, 2                                  ; 2176 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2179 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 217C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 217F _ 8B. 55, F8
        add     edx, 2                                  ; 2182 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2185 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2189 _ 2B. 45, 0C
        mov     edx, eax                                ; 218C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 218E _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2191 _ 8B. 4D, F8
        add     ecx, 2                                  ; 2194 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2197 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 219B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 219E _ 8B. 55, F8
        add     edx, 2                                  ; 21A1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 21A4 _ 8B. 44 D0, 04
        test    eax, eax                                ; 21A8 _ 85. C0
        jnz     ?_078                                   ; 21AA _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 21AC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21AF _ 8B. 00
        lea     edx, [eax-1H]                           ; 21B1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21B4 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 21B7 _ 89. 10
?_078:  mov     eax, dword [ebp-4H]                     ; 21B9 _ 8B. 45, FC
        jmp     ?_081                                   ; 21BC _ EB, 17

?_079:  add     dword [ebp-8H], 1                       ; 21BE _ 83. 45, F8, 01
?_080:  mov     eax, dword [ebp+8H]                     ; 21C2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21C5 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 21C7 _ 39. 45, F8
        jl      ?_077                                   ; 21CA _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 21D0 _ B8, 00000000
?_081:  leave                                           ; 21D5 _ C9
        ret                                             ; 21D6 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 21D7 _ 55
        mov     ebp, esp                                ; 21D8 _ 89. E5
        sub     esp, 16                                 ; 21DA _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 21DD _ 8B. 45, 0C
        add     eax, 4095                               ; 21E0 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 21E5 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 21EA _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 21ED _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21F0 _ FF. 75, 08
        call    memman_alloc_FF                         ; 21F3 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 21F8 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 21FB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 21FE _ 8B. 45, FC
        leave                                           ; 2201 _ C9
        ret                                             ; 2202 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2203 _ 55
        mov     ebp, esp                                ; 2204 _ 89. E5
        push    ebx                                     ; 2206 _ 53
        sub     esp, 16                                 ; 2207 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 220A _ C7. 45, F4, 00000000
        jmp     ?_083                                   ; 2211 _ EB, 15

?_082:  mov     eax, dword [ebp+8H]                     ; 2213 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2216 _ 8B. 55, F4
        add     edx, 2                                  ; 2219 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 221C _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 221F _ 39. 45, 0C
        jc      ?_084                                   ; 2222 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2224 _ 83. 45, F4, 01
?_083:  mov     eax, dword [ebp+8H]                     ; 2228 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 222B _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 222D _ 39. 45, F4
        jl      ?_082                                   ; 2230 _ 7C, E1
        jmp     ?_085                                   ; 2232 _ EB, 01

?_084:  nop                                             ; 2234 _ 90
?_085:  cmp     dword [ebp-0CH], 0                      ; 2235 _ 83. 7D, F4, 00
        jle     ?_087                                   ; 2239 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 223F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2242 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2245 _ 8B. 45, 08
        add     edx, 2                                  ; 2248 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 224B _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 224E _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2251 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2254 _ 8B. 45, 08
        add     ecx, 2                                  ; 2257 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 225A _ 8B. 44 C8, 04
        add     eax, edx                                ; 225E _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2260 _ 39. 45, 0C
        jne     ?_087                                   ; 2263 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2269 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 226C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 226F _ 8B. 45, 08
        add     edx, 2                                  ; 2272 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2275 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2279 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 227C _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 227F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2282 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2285 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2288 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 228B _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 228F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2292 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2294 _ 39. 45, F4
        jge     ?_086                                   ; 2297 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2299 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 229C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 229F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 22A2 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 22A5 _ 8B. 55, F4
        add     edx, 2                                  ; 22A8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 22AB _ 8B. 04 D0
        cmp     ecx, eax                                ; 22AE _ 39. C1
        jnz     ?_086                                   ; 22B0 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 22B2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 22B5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 22B8 _ 8B. 45, 08
        add     edx, 2                                  ; 22BB _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 22BE _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 22C2 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 22C5 _ 8B. 4D, F4
        add     ecx, 2                                  ; 22C8 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 22CB _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 22CF _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 22D2 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 22D5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 22D8 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 22DB _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 22DE _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 22E2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22E5 _ 8B. 00
        lea     edx, [eax-1H]                           ; 22E7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 22EA _ 8B. 45, 08
        mov     dword [eax], edx                        ; 22ED _ 89. 10
?_086:  mov     eax, 0                                  ; 22EF _ B8, 00000000
        jmp     ?_093                                   ; 22F4 _ E9, 0000011C

?_087:  mov     eax, dword [ebp+8H]                     ; 22F9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22FC _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 22FE _ 39. 45, F4
        jge     ?_088                                   ; 2301 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2303 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2306 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2309 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 230C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 230F _ 8B. 55, F4
        add     edx, 2                                  ; 2312 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2315 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2318 _ 39. C1
        jnz     ?_088                                   ; 231A _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 231C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 231F _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2322 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2325 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2328 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 232B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 232E _ 8B. 55, F4
        add     edx, 2                                  ; 2331 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2334 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2338 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 233B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 233E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2341 _ 8B. 55, F4
        add     edx, 2                                  ; 2344 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2347 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 234B _ B8, 00000000
        jmp     ?_093                                   ; 2350 _ E9, 000000C0

?_088:  mov     eax, dword [ebp+8H]                     ; 2355 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2358 _ 8B. 00
        cmp     eax, 4095                               ; 235A _ 3D, 00000FFF
        jg      ?_092                                   ; 235F _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2365 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2368 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 236A _ 89. 45, F8
        jmp     ?_090                                   ; 236D _ EB, 28

?_089:  mov     eax, dword [ebp-8H]                     ; 236F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2372 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2375 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2378 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 237B _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 237E _ 8B. 45, 08
        add     edx, 2                                  ; 2381 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2384 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2387 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2389 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 238C _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 238F _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2393 _ 83. 6D, F8, 01
?_090:  mov     eax, dword [ebp-8H]                     ; 2397 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 239A _ 3B. 45, F4
        jg      ?_089                                   ; 239D _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 239F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23A2 _ 8B. 00
        lea     edx, [eax+1H]                           ; 23A4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 23A7 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 23AA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 23AC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 23AF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 23B2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23B5 _ 8B. 00
        cmp     edx, eax                                ; 23B7 _ 39. C2
        jge     ?_091                                   ; 23B9 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 23BB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 23BE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 23C0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 23C3 _ 89. 50, 04
?_091:  mov     eax, dword [ebp+8H]                     ; 23C6 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 23C9 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 23CC _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 23CF _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 23D2 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 23D5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 23D8 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 23DB _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 23DE _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 23E1 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 23E5 _ B8, 00000000
        jmp     ?_093                                   ; 23EA _ EB, 29

?_092:  mov     eax, dword [ebp+8H]                     ; 23EC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 23EF _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 23F2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 23F5 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 23F8 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 23FB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 23FE _ 8B. 40, 08
        mov     edx, eax                                ; 2401 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2403 _ 8B. 45, 10
        add     eax, edx                                ; 2406 _ 01. D0
        mov     edx, eax                                ; 2408 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 240A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 240D _ 89. 50, 08
        mov     eax, 4294967295                         ; 2410 _ B8, FFFFFFFF
?_093:  add     esp, 16                                 ; 2415 _ 83. C4, 10
        pop     ebx                                     ; 2418 _ 5B
        pop     ebp                                     ; 2419 _ 5D
        ret                                             ; 241A _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 241B _ 55
        mov     ebp, esp                                ; 241C _ 89. E5
        sub     esp, 16                                 ; 241E _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2421 _ 8B. 45, 10
        add     eax, 4095                               ; 2424 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2429 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 242E _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2431 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2434 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2437 _ FF. 75, 08
        call    memman_free                             ; 243A _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 243F _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2442 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2445 _ 8B. 45, FC
        leave                                           ; 2448 _ C9
        ret                                             ; 2449 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 244A _ 55
        mov     ebp, esp                                ; 244B _ 89. E5
        sub     esp, 24                                 ; 244D _ 83. EC, 18
        sub     esp, 8                                  ; 2450 _ 83. EC, 08
        push    9232                                    ; 2453 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2458 _ FF. 75, 08
        call    memman_alloc_4K                         ; 245B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2460 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2463 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2466 _ 83. 7D, F4, 00
        jnz     ?_094                                   ; 246A _ 75, 0A
        mov     eax, 0                                  ; 246C _ B8, 00000000
        jmp     ?_098                                   ; 2471 _ E9, 0000009A

?_094:  mov     eax, dword [ebp+10H]                    ; 2476 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2479 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 247D _ 83. EC, 08
        push    eax                                     ; 2480 _ 50
        push    dword [ebp+8H]                          ; 2481 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2484 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2489 _ 83. C4, 10
        mov     edx, eax                                ; 248C _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 248E _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2491 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2494 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2497 _ 8B. 40, 04
        test    eax, eax                                ; 249A _ 85. C0
        jnz     ?_095                                   ; 249C _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 249E _ 8B. 45, F4
        sub     esp, 4                                  ; 24A1 _ 83. EC, 04
        push    9232                                    ; 24A4 _ 68, 00002410
        push    eax                                     ; 24A9 _ 50
        push    dword [ebp+8H]                          ; 24AA _ FF. 75, 08
        call    memman_free_4K                          ; 24AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24B2 _ 83. C4, 10
        mov     eax, 0                                  ; 24B5 _ B8, 00000000
        jmp     ?_098                                   ; 24BA _ EB, 54

?_095:  mov     eax, dword [ebp-0CH]                    ; 24BC _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 24BF _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 24C2 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 24C4 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 24C7 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 24CA _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 24CD _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 24D0 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 24D3 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 24D6 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 24D9 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 24E0 _ C7. 45, F0, 00000000
        jmp     ?_097                                   ; 24E7 _ EB, 1B

?_096:  mov     eax, dword [ebp-0CH]                    ; 24E9 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 24EC _ 8B. 55, F0
        add     edx, 33                                 ; 24EF _ 83. C2, 21
        shl     edx, 5                                  ; 24F2 _ C1. E2, 05
        add     eax, edx                                ; 24F5 _ 01. D0
        add     eax, 16                                 ; 24F7 _ 83. C0, 10
        mov     dword [eax], 0                          ; 24FA _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2500 _ 83. 45, F0, 01
?_097:  cmp     dword [ebp-10H], 255                    ; 2504 _ 81. 7D, F0, 000000FF
        jle     ?_096                                   ; 250B _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 250D _ 8B. 45, F4
?_098:  leave                                           ; 2510 _ C9
        ret                                             ; 2511 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2512 _ 55
        mov     ebp, esp                                ; 2513 _ 89. E5
        sub     esp, 16                                 ; 2515 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2518 _ C7. 45, F8, 00000000
        jmp     ?_101                                   ; 251F _ EB, 4B

?_099:  mov     eax, dword [ebp+8H]                     ; 2521 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2524 _ 8B. 55, F8
        add     edx, 33                                 ; 2527 _ 83. C2, 21
        shl     edx, 5                                  ; 252A _ C1. E2, 05
        add     eax, edx                                ; 252D _ 01. D0
        add     eax, 16                                 ; 252F _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2532 _ 8B. 00
        test    eax, eax                                ; 2534 _ 85. C0
        jnz     ?_100                                   ; 2536 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2538 _ 8B. 45, F8
        shl     eax, 5                                  ; 253B _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 253E _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2544 _ 8B. 45, 08
        add     eax, edx                                ; 2547 _ 01. D0
        add     eax, 4                                  ; 2549 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 254C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 254F _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2552 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2559 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 255C _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2563 _ 8B. 45, FC
        jmp     ?_102                                   ; 2566 _ EB, 12

?_100:  add     dword [ebp-8H], 1                       ; 2568 _ 83. 45, F8, 01
?_101:  cmp     dword [ebp-8H], 255                     ; 256C _ 81. 7D, F8, 000000FF
        jle     ?_099                                   ; 2573 _ 7E, AC
        mov     eax, 0                                  ; 2575 _ B8, 00000000
?_102:  leave                                           ; 257A _ C9
        ret                                             ; 257B _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 257C _ 55
        mov     ebp, esp                                ; 257D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 257F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2582 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2585 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2587 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 258A _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 258D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2590 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2593 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2596 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2599 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 259C _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 259F _ 89. 50, 14
        nop                                             ; 25A2 _ 90
        pop     ebp                                     ; 25A3 _ 5D
        ret                                             ; 25A4 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 25A5 _ 55
        mov     ebp, esp                                ; 25A6 _ 89. E5
        push    esi                                     ; 25A8 _ 56
        push    ebx                                     ; 25A9 _ 53
        sub     esp, 32                                 ; 25AA _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 25AD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 25B0 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 25B3 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 25B6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25B9 _ 8B. 40, 10
        add     eax, 1                                  ; 25BC _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 25BF _ 39. 45, 10
        jle     ?_103                                   ; 25C2 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 25C4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25C7 _ 8B. 40, 10
        add     eax, 1                                  ; 25CA _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 25CD _ 89. 45, 10
?_103:  cmp     dword [ebp+10H], -1                     ; 25D0 _ 83. 7D, 10, FF
        jge     ?_104                                   ; 25D4 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 25D6 _ C7. 45, 10, FFFFFFFF
?_104:  mov     eax, dword [ebp+0CH]                    ; 25DD _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 25E0 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 25E3 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 25E6 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 25E9 _ 3B. 45, 10
        jle     ?_111                                   ; 25EC _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 25F2 _ 83. 7D, 10, 00
        js      ?_107                                   ; 25F6 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 25FC _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 25FF _ 89. 45, E4
        jmp     ?_106                                   ; 2602 _ EB, 34

?_105:  mov     eax, dword [ebp-1CH]                    ; 2604 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2607 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 260A _ 8B. 45, 08
        add     edx, 4                                  ; 260D _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2610 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2614 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2617 _ 8B. 4D, E4
        add     ecx, 4                                  ; 261A _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 261D _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2621 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2624 _ 8B. 55, E4
        add     edx, 4                                  ; 2627 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 262A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 262E _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2631 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2634 _ 83. 6D, E4, 01
?_106:  mov     eax, dword [ebp-1CH]                    ; 2638 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 263B _ 3B. 45, 10
        jg      ?_105                                   ; 263E _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2640 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2643 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2646 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2649 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 264C _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2650 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2653 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2656 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2659 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 265C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 265F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2662 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2665 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2668 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 266B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 266E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2671 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2674 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2677 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 267A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 267D _ 8B. 40, 0C
        sub     esp, 8                                  ; 2680 _ 83. EC, 08
        push    esi                                     ; 2683 _ 56
        push    ebx                                     ; 2684 _ 53
        push    ecx                                     ; 2685 _ 51
        push    edx                                     ; 2686 _ 52
        push    eax                                     ; 2687 _ 50
        push    dword [ebp+8H]                          ; 2688 _ FF. 75, 08
        call    sheet_refreshmap                        ; 268B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2690 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2693 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2696 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2699 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 269C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 269F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 26A2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 26A5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26A8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26AB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26AE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26B1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 26B4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 26B7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26BA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26BD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26C0 _ 8B. 40, 0C
        sub     esp, 4                                  ; 26C3 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 26C6 _ FF. 75, F4
        push    esi                                     ; 26C9 _ 56
        push    ebx                                     ; 26CA _ 53
        push    ecx                                     ; 26CB _ 51
        push    edx                                     ; 26CC _ 52
        push    eax                                     ; 26CD _ 50
        push    dword [ebp+8H]                          ; 26CE _ FF. 75, 08
        call    sheet_refresh_new                       ; 26D1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26D6 _ 83. C4, 20
        jmp     ?_118                                   ; 26D9 _ E9, 00000244

?_107:  mov     eax, dword [ebp+8H]                     ; 26DE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 26E1 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 26E4 _ 39. 45, F4
        jge     ?_110                                   ; 26E7 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 26E9 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 26EC _ 89. 45, E8
        jmp     ?_109                                   ; 26EF _ EB, 34

?_108:  mov     eax, dword [ebp-18H]                    ; 26F1 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 26F4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 26F7 _ 8B. 45, 08
        add     edx, 4                                  ; 26FA _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 26FD _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2701 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2704 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2707 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 270A _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 270E _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2711 _ 8B. 55, E8
        add     edx, 4                                  ; 2714 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2717 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 271B _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 271E _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2721 _ 83. 45, E8, 01
?_109:  mov     eax, dword [ebp+8H]                     ; 2725 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2728 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 272B _ 39. 45, E8
        jl      ?_108                                   ; 272E _ 7C, C1
?_110:  mov     eax, dword [ebp+8H]                     ; 2730 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2733 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2736 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2739 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 273C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 273F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2742 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2745 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2748 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 274B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 274E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2751 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2754 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2757 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 275A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 275D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2760 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2763 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2766 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2769 _ 83. EC, 08
        push    0                                       ; 276C _ 6A, 00
        push    ebx                                     ; 276E _ 53
        push    ecx                                     ; 276F _ 51
        push    edx                                     ; 2770 _ 52
        push    eax                                     ; 2771 _ 50
        push    dword [ebp+8H]                          ; 2772 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2775 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 277A _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 277D _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2780 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2783 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2786 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2789 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 278C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 278F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2792 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2795 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2798 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 279B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 279E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27A1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27A4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27A7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27AA _ 8B. 40, 0C
        sub     esp, 4                                  ; 27AD _ 83. EC, 04
        push    esi                                     ; 27B0 _ 56
        push    0                                       ; 27B1 _ 6A, 00
        push    ebx                                     ; 27B3 _ 53
        push    ecx                                     ; 27B4 _ 51
        push    edx                                     ; 27B5 _ 52
        push    eax                                     ; 27B6 _ 50
        push    dword [ebp+8H]                          ; 27B7 _ FF. 75, 08
        call    sheet_refresh_new                       ; 27BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27BF _ 83. C4, 20
        jmp     ?_118                                   ; 27C2 _ E9, 0000015B

?_111:  mov     eax, dword [ebp-0CH]                    ; 27C7 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 27CA _ 3B. 45, 10
        jge     ?_118                                   ; 27CD _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 27D3 _ 83. 7D, F4, 00
        js      ?_114                                   ; 27D7 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 27D9 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 27DC _ 89. 45, EC
        jmp     ?_113                                   ; 27DF _ EB, 34

?_112:  mov     eax, dword [ebp-14H]                    ; 27E1 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 27E4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27E7 _ 8B. 45, 08
        add     edx, 4                                  ; 27EA _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 27ED _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 27F1 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 27F4 _ 8B. 4D, EC
        add     ecx, 4                                  ; 27F7 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 27FA _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 27FE _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2801 _ 8B. 55, EC
        add     edx, 4                                  ; 2804 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2807 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 280B _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 280E _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2811 _ 83. 45, EC, 01
?_113:  mov     eax, dword [ebp-14H]                    ; 2815 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2818 _ 3B. 45, 10
        jl      ?_112                                   ; 281B _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 281D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2820 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2823 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2826 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2829 _ 89. 54 88, 04
        jmp     ?_117                                   ; 282D _ EB, 72

?_114:  cmp     dword [ebp-0CH], 0                      ; 282F _ 83. 7D, F4, 00
        jns     ?_117                                   ; 2833 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2835 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2838 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 283B _ 89. 45, F0
        jmp     ?_116                                   ; 283E _ EB, 3A

?_115:  mov     eax, dword [ebp-10H]                    ; 2840 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2843 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2846 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2849 _ 8B. 55, F0
        add     edx, 4                                  ; 284C _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 284F _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2853 _ 8B. 45, 08
        add     ecx, 4                                  ; 2856 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2859 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 285D _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2860 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2863 _ 8B. 45, 08
        add     edx, 4                                  ; 2866 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2869 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 286D _ 8B. 55, F0
        add     edx, 1                                  ; 2870 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2873 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2876 _ 83. 6D, F0, 01
?_116:  mov     eax, dword [ebp-10H]                    ; 287A _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 287D _ 3B. 45, 10
        jge     ?_115                                   ; 2880 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2882 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2885 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2888 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 288B _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 288E _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2892 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2895 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2898 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 289B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 289E _ 89. 50, 10
?_117:  mov     eax, dword [ebp+0CH]                    ; 28A1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28A4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28A7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28AA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28AD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28B0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28B3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28B6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28B9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28BC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 28BF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28C2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28C5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28C8 _ 8B. 40, 0C
        sub     esp, 8                                  ; 28CB _ 83. EC, 08
        push    dword [ebp+10H]                         ; 28CE _ FF. 75, 10
        push    ebx                                     ; 28D1 _ 53
        push    ecx                                     ; 28D2 _ 51
        push    edx                                     ; 28D3 _ 52
        push    eax                                     ; 28D4 _ 50
        push    dword [ebp+8H]                          ; 28D5 _ FF. 75, 08
        call    sheet_refreshmap                        ; 28D8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28DD _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 28E0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28E3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28E6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28E9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28EC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28EF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28F2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28F5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28F8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28FB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 28FE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2901 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2904 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2907 _ 8B. 40, 0C
        sub     esp, 4                                  ; 290A _ 83. EC, 04
        push    dword [ebp+10H]                         ; 290D _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2910 _ FF. 75, 10
        push    ebx                                     ; 2913 _ 53
        push    ecx                                     ; 2914 _ 51
        push    edx                                     ; 2915 _ 52
        push    eax                                     ; 2916 _ 50
        push    dword [ebp+8H]                          ; 2917 _ FF. 75, 08
        call    sheet_refresh_new                       ; 291A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 291F _ 83. C4, 20
?_118:  nop                                             ; 2922 _ 90
        lea     esp, [ebp-8H]                           ; 2923 _ 8D. 65, F8
        pop     ebx                                     ; 2926 _ 5B
        pop     esi                                     ; 2927 _ 5E
        pop     ebp                                     ; 2928 _ 5D
        ret                                             ; 2929 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 292A _ 55
        mov     ebp, esp                                ; 292B _ 89. E5
        push    edi                                     ; 292D _ 57
        push    esi                                     ; 292E _ 56
        push    ebx                                     ; 292F _ 53
        sub     esp, 28                                 ; 2930 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2933 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2936 _ 8B. 40, 18
        test    eax, eax                                ; 2939 _ 85. C0
        js      ?_119                                   ; 293B _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 293D _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2940 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2943 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2946 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2949 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 294C _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 294F _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2952 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2955 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2958 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 295B _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 295E _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2961 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2964 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2967 _ 8B. 45, 14
        add     edx, eax                                ; 296A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 296C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 296F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2972 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2975 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2978 _ 03. 45, E4
        sub     esp, 4                                  ; 297B _ 83. EC, 04
        push    ebx                                     ; 297E _ 53
        push    ecx                                     ; 297F _ 51
        push    edi                                     ; 2980 _ 57
        push    esi                                     ; 2981 _ 56
        push    edx                                     ; 2982 _ 52
        push    eax                                     ; 2983 _ 50
        push    dword [ebp+8H]                          ; 2984 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2987 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 298C _ 83. C4, 20
?_119:  mov     eax, 0                                  ; 298F _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2994 _ 8D. 65, F4
        pop     ebx                                     ; 2997 _ 5B
        pop     esi                                     ; 2998 _ 5E
        pop     edi                                     ; 2999 _ 5F
        pop     ebp                                     ; 299A _ 5D
        ret                                             ; 299B _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 299C _ 55
        mov     ebp, esp                                ; 299D _ 89. E5
        push    esi                                     ; 299F _ 56
        push    ebx                                     ; 29A0 _ 53
        sub     esp, 16                                 ; 29A1 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 29A4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 29A7 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 29AA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 29AD _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 29B0 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 29B3 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 29B6 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 29B9 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 29BC _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 29BF _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 29C2 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 29C5 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29C8 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 29CB _ 8B. 40, 18
        test    eax, eax                                ; 29CE _ 85. C0
        js      ?_120                                   ; 29D0 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 29D6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 29D9 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 29DC _ 8B. 45, F4
        add     edx, eax                                ; 29DF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 29E1 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 29E4 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 29E7 _ 8B. 45, F0
        add     eax, ecx                                ; 29EA _ 01. C8
        sub     esp, 8                                  ; 29EC _ 83. EC, 08
        push    0                                       ; 29EF _ 6A, 00
        push    edx                                     ; 29F1 _ 52
        push    eax                                     ; 29F2 _ 50
        push    dword [ebp-0CH]                         ; 29F3 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 29F6 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 29F9 _ FF. 75, 08
        call    sheet_refreshmap                        ; 29FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A01 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A04 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2A07 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2A0A _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2A0D _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2A10 _ 8B. 55, 14
        add     ecx, edx                                ; 2A13 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2A15 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2A18 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2A1B _ 8B. 55, 10
        add     edx, ebx                                ; 2A1E _ 01. DA
        sub     esp, 8                                  ; 2A20 _ 83. EC, 08
        push    eax                                     ; 2A23 _ 50
        push    ecx                                     ; 2A24 _ 51
        push    edx                                     ; 2A25 _ 52
        push    dword [ebp+14H]                         ; 2A26 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2A29 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2A2C _ FF. 75, 08
        call    sheet_refreshmap                        ; 2A2F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A34 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A37 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2A3A _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2A3D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2A40 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2A43 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2A46 _ 8B. 45, F4
        add     edx, eax                                ; 2A49 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2A4B _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2A4E _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2A51 _ 8B. 45, F0
        add     eax, ebx                                ; 2A54 _ 01. D8
        sub     esp, 4                                  ; 2A56 _ 83. EC, 04
        push    ecx                                     ; 2A59 _ 51
        push    0                                       ; 2A5A _ 6A, 00
        push    edx                                     ; 2A5C _ 52
        push    eax                                     ; 2A5D _ 50
        push    dword [ebp-0CH]                         ; 2A5E _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2A61 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2A64 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2A67 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A6C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A6F _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2A72 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2A75 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2A78 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2A7B _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2A7E _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2A81 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2A84 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2A86 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2A89 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2A8C _ 8B. 4D, 10
        add     ecx, esi                                ; 2A8F _ 01. F1
        sub     esp, 4                                  ; 2A91 _ 83. EC, 04
        push    edx                                     ; 2A94 _ 52
        push    eax                                     ; 2A95 _ 50
        push    ebx                                     ; 2A96 _ 53
        push    ecx                                     ; 2A97 _ 51
        push    dword [ebp+14H]                         ; 2A98 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2A9B _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2A9E _ FF. 75, 08
        call    sheet_refresh_new                       ; 2AA1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2AA6 _ 83. C4, 20
?_120:  nop                                             ; 2AA9 _ 90
        lea     esp, [ebp-8H]                           ; 2AAA _ 8D. 65, F8
        pop     ebx                                     ; 2AAD _ 5B
        pop     esi                                     ; 2AAE _ 5E
        pop     ebp                                     ; 2AAF _ 5D
        ret                                             ; 2AB0 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2AB1 _ 55
        mov     ebp, esp                                ; 2AB2 _ 89. E5
        sub     esp, 48                                 ; 2AB4 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2AB7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2ABA _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2ABC _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2ABF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2AC2 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2AC5 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2AC8 _ 83. 7D, 0C, 00
        jns     ?_121                                   ; 2ACC _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2ACE _ C7. 45, 0C, 00000000
?_121:  cmp     dword [ebp+10H], 8                      ; 2AD5 _ 83. 7D, 10, 08
        jg      ?_122                                   ; 2AD9 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2ADB _ C7. 45, 10, 00000000
?_122:  mov     eax, dword [ebp+8H]                     ; 2AE2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AE5 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2AE8 _ 39. 45, 14
        jle     ?_123                                   ; 2AEB _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2AED _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AF0 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2AF3 _ 89. 45, 14
?_123:  mov     eax, dword [ebp+8H]                     ; 2AF6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2AF9 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2AFC _ 39. 45, 18
        jle     ?_124                                   ; 2AFF _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2B01 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B04 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2B07 _ 89. 45, 18
?_124:  mov     eax, dword [ebp+1CH]                    ; 2B0A _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2B0D _ 89. 45, DC
        jmp     ?_131                                   ; 2B10 _ E9, 00000118

?_125:  mov     eax, dword [ebp+8H]                     ; 2B15 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2B18 _ 8B. 55, DC
        add     edx, 4                                  ; 2B1B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2B1E _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2B22 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2B25 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2B28 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2B2A _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2B2D _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2B30 _ 8B. 55, 08
        add     edx, 1044                               ; 2B33 _ 81. C2, 00000414
        sub     eax, edx                                ; 2B39 _ 29. D0
        sar     eax, 5                                  ; 2B3B _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2B3E _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2B41 _ C7. 45, E0, 00000000
        jmp     ?_130                                   ; 2B48 _ E9, 000000CD

?_126:  mov     eax, dword [ebp-10H]                    ; 2B4D _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2B50 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2B53 _ 8B. 45, E0
        add     eax, edx                                ; 2B56 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2B58 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2B5B _ C7. 45, E4, 00000000
        jmp     ?_129                                   ; 2B62 _ E9, 000000A0

?_127:  mov     eax, dword [ebp-10H]                    ; 2B67 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2B6A _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2B6D _ 8B. 45, E4
        add     eax, edx                                ; 2B70 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2B72 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2B75 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2B78 _ 3B. 45, FC
        jg      ?_128                                   ; 2B7B _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2B81 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2B84 _ 3B. 45, 14
        jge     ?_128                                   ; 2B87 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2B89 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2B8C _ 3B. 45, F8
        jg      ?_128                                   ; 2B8F _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2B91 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2B94 _ 3B. 45, 18
        jge     ?_128                                   ; 2B97 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2B99 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B9C _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2B9F _ 0F AF. 45, E0
        mov     edx, eax                                ; 2BA3 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2BA5 _ 8B. 45, E4
        add     eax, edx                                ; 2BA8 _ 01. D0
        mov     edx, eax                                ; 2BAA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2BAC _ 8B. 45, F4
        add     eax, edx                                ; 2BAF _ 01. D0
        movzx   eax, byte [eax]                         ; 2BB1 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2BB4 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2BB7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BBA _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2BBD _ 0F AF. 45, F8
        mov     edx, eax                                ; 2BC1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2BC3 _ 8B. 45, FC
        add     eax, edx                                ; 2BC6 _ 01. D0
        mov     edx, eax                                ; 2BC8 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2BCA _ 8B. 45, EC
        add     eax, edx                                ; 2BCD _ 01. D0
        movzx   eax, byte [eax]                         ; 2BCF _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2BD2 _ 38. 45, DA
        jnz     ?_128                                   ; 2BD5 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2BD7 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2BDB _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2BDE _ 8B. 40, 14
        cmp     edx, eax                                ; 2BE1 _ 39. C2
        jz      ?_128                                   ; 2BE3 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2BE5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BE8 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2BEB _ 0F AF. 45, F8
        mov     edx, eax                                ; 2BEF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2BF1 _ 8B. 45, FC
        add     eax, edx                                ; 2BF4 _ 01. D0
        mov     edx, eax                                ; 2BF6 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2BF8 _ 8B. 45, E8
        add     edx, eax                                ; 2BFB _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2BFD _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2C01 _ 88. 02
?_128:  add     dword [ebp-1CH], 1                      ; 2C03 _ 83. 45, E4, 01
?_129:  mov     eax, dword [ebp-10H]                    ; 2C07 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C0A _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2C0D _ 39. 45, E4
        jl      ?_127                                   ; 2C10 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2C16 _ 83. 45, E0, 01
?_130:  mov     eax, dword [ebp-10H]                    ; 2C1A _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2C1D _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2C20 _ 39. 45, E0
        jl      ?_126                                   ; 2C23 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2C29 _ 83. 45, DC, 01
?_131:  mov     eax, dword [ebp-24H]                    ; 2C2D _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2C30 _ 3B. 45, 20
        jle     ?_125                                   ; 2C33 _ 0F 8E, FFFFFEDC
        nop                                             ; 2C39 _ 90
        leave                                           ; 2C3A _ C9
        ret                                             ; 2C3B _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2C3C _ 55
        mov     ebp, esp                                ; 2C3D _ 89. E5
        sub     esp, 64                                 ; 2C3F _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2C42 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C45 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2C48 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2C4B _ 83. 7D, 0C, 00
        jns     ?_132                                   ; 2C4F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2C51 _ C7. 45, 0C, 00000000
?_132:  mov     eax, dword [ebp+8H]                     ; 2C58 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C5B _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2C5E _ 39. 45, 0C
        jle     ?_133                                   ; 2C61 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C63 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C66 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2C69 _ 89. 45, 0C
?_133:  cmp     dword [ebp+10H], 0                      ; 2C6C _ 83. 7D, 10, 00
        jns     ?_134                                   ; 2C70 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2C72 _ C7. 45, 10, 00000000
?_134:  mov     eax, dword [ebp+8H]                     ; 2C79 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C7C _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2C7F _ 39. 45, 10
        jle     ?_135                                   ; 2C82 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C84 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C87 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2C8A _ 89. 45, 10
?_135:  mov     eax, dword [ebp+1CH]                    ; 2C8D _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2C90 _ 89. 45, E0
        jmp     ?_146                                   ; 2C93 _ E9, 00000140

?_136:  mov     eax, dword [ebp+8H]                     ; 2C98 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2C9B _ 8B. 55, E0
        add     edx, 4                                  ; 2C9E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CA1 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2CA5 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2CA8 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2CAB _ 8B. 55, 08
        add     edx, 1044                               ; 2CAE _ 81. C2, 00000414
        sub     eax, edx                                ; 2CB4 _ 29. D0
        sar     eax, 5                                  ; 2CB6 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2CB9 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2CBC _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2CBF _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2CC1 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2CC4 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2CC7 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2CCA _ 8B. 55, 0C
        sub     edx, eax                                ; 2CCD _ 29. C2
        mov     eax, edx                                ; 2CCF _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2CD1 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2CD4 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2CD7 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2CDA _ 8B. 55, 10
        sub     edx, eax                                ; 2CDD _ 29. C2
        mov     eax, edx                                ; 2CDF _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2CE1 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2CE4 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2CE7 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2CEA _ 8B. 55, 14
        sub     edx, eax                                ; 2CED _ 29. C2
        mov     eax, edx                                ; 2CEF _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2CF1 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2CF4 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2CF7 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2CFA _ 8B. 55, 18
        sub     edx, eax                                ; 2CFD _ 29. C2
        mov     eax, edx                                ; 2CFF _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2D01 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2D04 _ 83. 7D, D0, 00
        jns     ?_137                                   ; 2D08 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2D0A _ C7. 45, D0, 00000000
?_137:  cmp     dword [ebp-2CH], 0                      ; 2D11 _ 83. 7D, D4, 00
        jns     ?_138                                   ; 2D15 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2D17 _ C7. 45, D4, 00000000
?_138:  mov     eax, dword [ebp-10H]                    ; 2D1E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D21 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2D24 _ 39. 45, D8
        jle     ?_139                                   ; 2D27 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2D29 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D2C _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2D2F _ 89. 45, D8
?_139:  mov     eax, dword [ebp-10H]                    ; 2D32 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2D35 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2D38 _ 39. 45, DC
        jle     ?_140                                   ; 2D3B _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2D3D _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2D40 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2D43 _ 89. 45, DC
?_140:  mov     eax, dword [ebp-2CH]                    ; 2D46 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2D49 _ 89. 45, E4
        jmp     ?_145                                   ; 2D4C _ EB, 7A

?_141:  mov     eax, dword [ebp-10H]                    ; 2D4E _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2D51 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2D54 _ 8B. 45, E4
        add     eax, edx                                ; 2D57 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2D59 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2D5C _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2D5F _ 89. 45, E8
        jmp     ?_144                                   ; 2D62 _ EB, 58

?_142:  mov     eax, dword [ebp-10H]                    ; 2D64 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2D67 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2D6A _ 8B. 45, E8
        add     eax, edx                                ; 2D6D _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2D6F _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2D72 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D75 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2D78 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2D7C _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2D7E _ 8B. 45, E8
        add     eax, edx                                ; 2D81 _ 01. D0
        mov     edx, eax                                ; 2D83 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2D85 _ 8B. 45, F4
        add     eax, edx                                ; 2D88 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D8A _ 0F B6. 00
        movzx   edx, al                                 ; 2D8D _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2D90 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2D93 _ 8B. 40, 14
        cmp     edx, eax                                ; 2D96 _ 39. C2
        jz      ?_143                                   ; 2D98 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2D9A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D9D _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2DA0 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2DA4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2DA6 _ 8B. 45, FC
        add     eax, edx                                ; 2DA9 _ 01. D0
        mov     edx, eax                                ; 2DAB _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2DAD _ 8B. 45, EC
        add     edx, eax                                ; 2DB0 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2DB2 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2DB6 _ 88. 02
?_143:  add     dword [ebp-18H], 1                      ; 2DB8 _ 83. 45, E8, 01
?_144:  mov     eax, dword [ebp-18H]                    ; 2DBC _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2DBF _ 3B. 45, D8
        jl      ?_142                                   ; 2DC2 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2DC4 _ 83. 45, E4, 01
?_145:  mov     eax, dword [ebp-1CH]                    ; 2DC8 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2DCB _ 3B. 45, DC
        jl      ?_141                                   ; 2DCE _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2DD4 _ 83. 45, E0, 01
?_146:  mov     eax, dword [ebp+8H]                     ; 2DD8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DDB _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2DDE _ 39. 45, E0
        jle     ?_136                                   ; 2DE1 _ 0F 8E, FFFFFEB1
        nop                                             ; 2DE7 _ 90
        leave                                           ; 2DE8 _ C9
        ret                                             ; 2DE9 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2DEA _ 55
        mov     ebp, esp                                ; 2DEB _ 89. E5
        sub     esp, 24                                 ; 2DED _ 83. EC, 18
        sub     esp, 8                                  ; 2DF0 _ 83. EC, 08
        push    52                                      ; 2DF3 _ 6A, 34
        push    67                                      ; 2DF5 _ 6A, 43
        call    io_out8                                 ; 2DF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2DFC _ 83. C4, 10
        sub     esp, 8                                  ; 2DFF _ 83. EC, 08
        push    156                                     ; 2E02 _ 68, 0000009C
        push    64                                      ; 2E07 _ 6A, 40
        call    io_out8                                 ; 2E09 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2E0E _ 83. C4, 10
        sub     esp, 8                                  ; 2E11 _ 83. EC, 08
        push    46                                      ; 2E14 _ 6A, 2E
        push    64                                      ; 2E16 _ 6A, 40
        call    io_out8                                 ; 2E18 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2E1D _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2E20 _ C7. 05, 00000360(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2E2A _ C7. 45, F4, 00000000
        jmp     ?_148                                   ; 2E31 _ EB, 15

?_147:  mov     eax, dword [ebp-0CH]                    ; 2E33 _ 8B. 45, F4
        shl     eax, 4                                  ; 2E36 _ C1. E0, 04
        add     eax, ?_213                              ; 2E39 _ 05, 00000368(d)
        mov     dword [eax], 0                          ; 2E3E _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2E44 _ 83. 45, F4, 01
?_148:  cmp     dword [ebp-0CH], 499                    ; 2E48 _ 81. 7D, F4, 000001F3
        jle     ?_147                                   ; 2E4F _ 7E, E2
        nop                                             ; 2E51 _ 90
        leave                                           ; 2E52 _ C9
        ret                                             ; 2E53 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2E54 _ 55
        mov     ebp, esp                                ; 2E55 _ 89. E5
        sub     esp, 16                                 ; 2E57 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2E5A _ C7. 45, FC, 00000000
        jmp     ?_151                                   ; 2E61 _ EB, 36

?_149:  mov     eax, dword [ebp-4H]                     ; 2E63 _ 8B. 45, FC
        shl     eax, 4                                  ; 2E66 _ C1. E0, 04
        add     eax, ?_213                              ; 2E69 _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 2E6E _ 8B. 00
        test    eax, eax                                ; 2E70 _ 85. C0
        jnz     ?_150                                   ; 2E72 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2E74 _ 8B. 45, FC
        shl     eax, 4                                  ; 2E77 _ C1. E0, 04
        add     eax, ?_213                              ; 2E7A _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 2E7F _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2E85 _ 8B. 45, FC
        shl     eax, 4                                  ; 2E88 _ C1. E0, 04
        add     eax, timerctl                           ; 2E8B _ 05, 00000360(d)
        add     eax, 4                                  ; 2E90 _ 83. C0, 04
        jmp     ?_152                                   ; 2E93 _ EB, 12

?_150:  add     dword [ebp-4H], 1                       ; 2E95 _ 83. 45, FC, 01
?_151:  cmp     dword [ebp-4H], 499                     ; 2E99 _ 81. 7D, FC, 000001F3
        jle     ?_149                                   ; 2EA0 _ 7E, C1
        mov     eax, 0                                  ; 2EA2 _ B8, 00000000
?_152:  leave                                           ; 2EA7 _ C9
        ret                                             ; 2EA8 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2EA9 _ 55
        mov     ebp, esp                                ; 2EAA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2EAC _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2EAF _ C7. 40, 04, 00000000
        nop                                             ; 2EB6 _ 90
        pop     ebp                                     ; 2EB7 _ 5D
        ret                                             ; 2EB8 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2EB9 _ 55
        mov     ebp, esp                                ; 2EBA _ 89. E5
        sub     esp, 4                                  ; 2EBC _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2EBF _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2EC2 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2EC5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2EC8 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2ECB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2ECE _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2ED1 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2ED5 _ 88. 50, 0C
        nop                                             ; 2ED8 _ 90
        leave                                           ; 2ED9 _ C9
        ret                                             ; 2EDA _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2EDB _ 55
        mov     ebp, esp                                ; 2EDC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2EDE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2EE1 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2EE4 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2EE6 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2EE9 _ C7. 40, 04, 00000002
        nop                                             ; 2EF0 _ 90
        pop     ebp                                     ; 2EF1 _ 5D
        ret                                             ; 2EF2 _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2EF3 _ 55
        mov     ebp, esp                                ; 2EF4 _ 89. E5
        mov     eax, timerctl                           ; 2EF6 _ B8, 00000360(d)
        pop     ebp                                     ; 2EFB _ 5D
        ret                                             ; 2EFC _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2EFD _ 55
        mov     ebp, esp                                ; 2EFE _ 89. E5
        sub     esp, 24                                 ; 2F00 _ 83. EC, 18
        sub     esp, 8                                  ; 2F03 _ 83. EC, 08
        push    96                                      ; 2F06 _ 6A, 60
        push    32                                      ; 2F08 _ 6A, 20
        call    io_out8                                 ; 2F0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F0F _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2F12 _ A1, 00000360(d)
        add     eax, 1                                  ; 2F17 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2F1A _ A3, 00000360(d)
        mov     dword [ebp-0CH], 0                      ; 2F1F _ C7. 45, F4, 00000000
        jmp     ?_155                                   ; 2F26 _ E9, 00000080

?_153:  mov     eax, dword [ebp-0CH]                    ; 2F2B _ 8B. 45, F4
        shl     eax, 4                                  ; 2F2E _ C1. E0, 04
        add     eax, ?_213                              ; 2F31 _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 2F36 _ 8B. 00
        cmp     eax, 2                                  ; 2F38 _ 83. F8, 02
        jnz     ?_154                                   ; 2F3B _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 2F3D _ 8B. 45, F4
        shl     eax, 4                                  ; 2F40 _ C1. E0, 04
        add     eax, ?_212                              ; 2F43 _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 2F48 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2F4A _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2F4D _ 8B. 45, F4
        shl     eax, 4                                  ; 2F50 _ C1. E0, 04
        add     eax, ?_212                              ; 2F53 _ 05, 00000364(d)
        mov     dword [eax], edx                        ; 2F58 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2F5A _ 8B. 45, F4
        shl     eax, 4                                  ; 2F5D _ C1. E0, 04
        add     eax, ?_212                              ; 2F60 _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 2F65 _ 8B. 00
        test    eax, eax                                ; 2F67 _ 85. C0
        jnz     ?_154                                   ; 2F69 _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2F6B _ 8B. 45, F4
        shl     eax, 4                                  ; 2F6E _ C1. E0, 04
        add     eax, ?_213                              ; 2F71 _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 2F76 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2F7C _ 8B. 45, F4
        shl     eax, 4                                  ; 2F7F _ C1. E0, 04
        add     eax, ?_215                              ; 2F82 _ 05, 00000370(d)
        movzx   eax, byte [eax]                         ; 2F87 _ 0F B6. 00
        movzx   edx, al                                 ; 2F8A _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2F8D _ 8B. 45, F4
        shl     eax, 4                                  ; 2F90 _ C1. E0, 04
        add     eax, ?_214                              ; 2F93 _ 05, 0000036C(d)
        mov     eax, dword [eax]                        ; 2F98 _ 8B. 00
        sub     esp, 8                                  ; 2F9A _ 83. EC, 08
        push    edx                                     ; 2F9D _ 52
        push    eax                                     ; 2F9E _ 50
        call    fifo8_put                               ; 2F9F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FA4 _ 83. C4, 10
?_154:  add     dword [ebp-0CH], 1                      ; 2FA7 _ 83. 45, F4, 01
?_155:  cmp     dword [ebp-0CH], 499                    ; 2FAB _ 81. 7D, F4, 000001F3
        jle     ?_153                                   ; 2FB2 _ 0F 8E, FFFFFF73
        nop                                             ; 2FB8 _ 90
        leave                                           ; 2FB9 _ C9
        ret                                             ; 2FBA _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2FBB _ 55
        mov     ebp, esp                                ; 2FBC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2FBE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2FC1 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2FC4 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2FC7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2FCA _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2FCD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2FCF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2FD2 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2FD5 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2FD8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2FDB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2FE2 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2FE5 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2FEC _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2FEF _ C7. 40, 14, 00000000
        nop                                             ; 2FF6 _ 90
        pop     ebp                                     ; 2FF7 _ 5D
        ret                                             ; 2FF8 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2FF9 _ 55
        mov     ebp, esp                                ; 2FFA _ 89. E5
        sub     esp, 4                                  ; 2FFC _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2FFF _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3002 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3005 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3008 _ 8B. 40, 10
        test    eax, eax                                ; 300B _ 85. C0
        jnz     ?_156                                   ; 300D _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 300F _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3012 _ 8B. 40, 14
        or      eax, 01H                                ; 3015 _ 83. C8, 01
        mov     edx, eax                                ; 3018 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 301A _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 301D _ 89. 50, 14
        mov     eax, 4294967295                         ; 3020 _ B8, FFFFFFFF
        jmp     ?_158                                   ; 3025 _ EB, 50

?_156:  mov     eax, dword [ebp+8H]                     ; 3027 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 302A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 302C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 302F _ 8B. 40, 08
        add     edx, eax                                ; 3032 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 3034 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3038 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 303A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 303D _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3040 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3043 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3046 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3049 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 304C _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 304F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3052 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3055 _ 39. C2
        jl      ?_157                                   ; 3057 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3059 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 305C _ C7. 40, 08, 00000000
?_157:  mov     eax, dword [ebp+8H]                     ; 3063 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3066 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3069 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 306C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 306F _ 89. 50, 10
        mov     eax, 1                                  ; 3072 _ B8, 00000001
?_158:  leave                                           ; 3077 _ C9
        ret                                             ; 3078 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3079 _ 55
        mov     ebp, esp                                ; 307A _ 89. E5
        sub     esp, 16                                 ; 307C _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 307F _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3082 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3085 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3088 _ 8B. 40, 0C
        cmp     edx, eax                                ; 308B _ 39. C2
        jnz     ?_159                                   ; 308D _ 75, 07
        mov     eax, 4294967295                         ; 308F _ B8, FFFFFFFF
        jmp     ?_161                                   ; 3094 _ EB, 51

?_159:  mov     eax, dword [ebp+8H]                     ; 3096 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3099 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 309B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 309E _ 8B. 40, 04
        add     eax, edx                                ; 30A1 _ 01. D0
        movzx   eax, byte [eax]                         ; 30A3 _ 0F B6. 00
        movzx   eax, al                                 ; 30A6 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 30A9 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 30AC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 30AF _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 30B2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30B5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 30B8 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30BB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30BE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30C1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30C4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 30C7 _ 39. C2
        jl      ?_160                                   ; 30C9 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 30CB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30CE _ C7. 40, 04, 00000000
?_160:  mov     eax, dword [ebp+8H]                     ; 30D5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30D8 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 30DB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30DE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 30E1 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 30E4 _ 8B. 45, FC
?_161:  leave                                           ; 30E7 _ C9
        ret                                             ; 30E8 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 30E9 _ 55
        mov     ebp, esp                                ; 30EA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30EC _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 30EF _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 30F2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30F5 _ 8B. 40, 10
        sub     edx, eax                                ; 30F8 _ 29. C2
        mov     eax, edx                                ; 30FA _ 89. D0
        pop     ebp                                     ; 30FC _ 5D
        ret                                             ; 30FD _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 30FE _ 55
        mov     ebp, esp                                ; 30FF _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3101 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_162                                   ; 3108 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 310A _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3111 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3114 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3117 _ 89. 45, 0C
?_162:  mov     eax, dword [ebp+0CH]                    ; 311A _ 8B. 45, 0C
        mov     edx, eax                                ; 311D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 311F _ 8B. 45, 08
        mov     word [eax], dx                          ; 3122 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3125 _ 8B. 45, 10
        mov     edx, eax                                ; 3128 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 312A _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 312D _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3131 _ 8B. 45, 10
        sar     eax, 16                                 ; 3134 _ C1. F8, 10
        mov     edx, eax                                ; 3137 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3139 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 313C _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 313F _ 8B. 45, 14
        mov     edx, eax                                ; 3142 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3144 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3147 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 314A _ 8B. 45, 0C
        shr     eax, 16                                 ; 314D _ C1. E8, 10
        and     eax, 0FH                                ; 3150 _ 83. E0, 0F
        mov     edx, eax                                ; 3153 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3155 _ 8B. 45, 14
        sar     eax, 8                                  ; 3158 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 315B _ 83. E0, F0
        or      eax, edx                                ; 315E _ 09. D0
        mov     edx, eax                                ; 3160 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3162 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3165 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3168 _ 8B. 45, 10
        shr     eax, 24                                 ; 316B _ C1. E8, 18
        mov     edx, eax                                ; 316E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3170 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3173 _ 88. 50, 07
        nop                                             ; 3176 _ 90
        pop     ebp                                     ; 3177 _ 5D
        ret                                             ; 3178 _ C3
; set_segmdesc End of function



?_163:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_164:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_165:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_166:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 74H       ; 001F _ switch t
        db 6FH, 20H, 74H, 61H, 73H, 6BH, 20H, 62H       ; 0027 _ o task b
        db 00H                                          ; 002F _ .

?_167:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0030 _ 3[sec].

?_168:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0037 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 003F _ sk b.

?_169:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 62H       ; 0044 _ switch b
        db 61H, 63H, 6BH, 00H                           ; 004C _ ack.

?_170:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0050 _ Page is:
        db 20H, 00H                                     ; 0058 _  .

?_171:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 005A _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0062 _ Low: .

?_172:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0068 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0070 _ High: .

?_173:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0077 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 007F _ w: .

?_174:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0083 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 008B _ gh: .

?_175:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0090 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_176:  db 00H                                          ; 0002 _ .

?_177:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.1764: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.1805:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.1860:                                            ; byte
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

closebtn.1984:                                          ; byte
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

?_178:  resw    1                                       ; 0004

?_179:  resw    1                                       ; 0006

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

?_180:  resd    1                                       ; 00EC

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

sheet_back:                                             ; dword
        resd    1                                       ; 0228

sheet_mouse:                                            ; dword
        resd    5                                       ; 022C

tss_a.1753:                                             ; byte
        resb    28                                      ; 0240

?_181:  resd    2                                       ; 025C

?_182:  resd    5                                       ; 0264

?_183:  resd    4                                       ; 0278

?_184:  resd    1                                       ; 0288

?_185:  resd    1                                       ; 028C

?_186:  resd    1                                       ; 0290

?_187:  resd    1                                       ; 0294

?_188:  resd    1                                       ; 0298

?_189:  resd    1                                       ; 029C

?_190:  resd    1                                       ; 02A0

?_191:  resd    7                                       ; 02A4

tss_b.1754:                                             ; byte
        resb    32                                      ; 02C0

?_192:  resd    1                                       ; 02E0

?_193:  resd    1                                       ; 02E4

?_194:  resd    1                                       ; 02E8

?_195:  resd    1                                       ; 02EC

?_196:  resd    1                                       ; 02F0

?_197:  resd    1                                       ; 02F4

?_198:  resd    1                                       ; 02F8

?_199:  resd    1                                       ; 02FC

?_200:  resd    1                                       ; 0300

?_201:  resd    1                                       ; 0304

?_202:  resd    1                                       ; 0308

?_203:  resd    1                                       ; 030C

?_204:  resd    1                                       ; 0310

?_205:  resd    1                                       ; 0314

?_206:  resd    1                                       ; 0318

?_207:  resd    1                                       ; 031C

?_208:  resd    1                                       ; 0320

?_209:  resd    1                                       ; 0324

cnt.1759: resd  1                                       ; 0328

line.1763:                                              ; dword
        resd    1                                       ; 032C

str.1903:                                               ; byte
        resb    1                                       ; 0330

?_210:  resb    9                                       ; 0331

?_211:  resb    2                                       ; 033A

line.1936:                                              ; dword
        resd    1                                       ; 033C

pos.1935: resd  8                                       ; 0340

timerctl:                                               ; byte
        resd    1                                       ; 0360

?_212:                                                  ; byte
        resb    4                                       ; 0364

?_213:                                                  ; byte
        resb    4                                       ; 0368

?_214:                                                  ; byte
        resb    4                                       ; 036C

?_215:                                                  ; byte
        resb    7988                                    ; 0370


