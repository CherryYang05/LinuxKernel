; Disassembly of file: ckernel.o
; Tue May  4 18:32:38 2021
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
        movzx   eax, word [?_182]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-68H], eax                    ; 0034 _ 89. 45, 98
        movzx   eax, word [?_183]                       ; 0037 _ 0F B7. 05, 00000006(d)
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
        push    1                                       ; 02C4 _ 6A, 01
        push    100                                     ; 02C6 _ 6A, 64
        push    200                                     ; 02C8 _ 68, 000000C8
        push    ?_167                                   ; 02CD _ 68, 00000000(d)
        push    eax                                     ; 02D2 _ 50
        call    messageBox                              ; 02D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02D8 _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02DB _ A3, 00000224(d)
        mov     edx, dword [sheet_back]                 ; 02E0 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 02E6 _ A1, 00000220(d)
        sub     esp, 4                                  ; 02EB _ 83. EC, 04
        push    0                                       ; 02EE _ 6A, 00
        push    edx                                     ; 02F0 _ 52
        push    eax                                     ; 02F1 _ 50
        call    sheet_level_updown                      ; 02F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F7 _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 02FA _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0300 _ A1, 00000220(d)
        sub     esp, 4                                  ; 0305 _ 83. EC, 04
        push    50                                      ; 0308 _ 6A, 32
        push    edx                                     ; 030A _ 52
        push    eax                                     ; 030B _ 50
        call    sheet_level_updown                      ; 030C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0311 _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 0314 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 031A _ A1, 00000220(d)
        sub     esp, 8                                  ; 031F _ 83. EC, 08
        push    ?_168                                   ; 0322 _ 68, 00000008(d)
        push    3                                       ; 0327 _ 6A, 03
        push    0                                       ; 0329 _ 6A, 00
        push    0                                       ; 032B _ 6A, 00
        push    edx                                     ; 032D _ 52
        push    eax                                     ; 032E _ 50
        call    showString                              ; 032F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0334 _ 83. C4, 20
        mov     edx, dword [sheet_back]                 ; 0337 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 033D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0342 _ 83. EC, 08
        push    dword [ebp-48H]                         ; 0345 _ FF. 75, B8
        push    3                                       ; 0348 _ 6A, 03
        push    0                                       ; 034A _ 6A, 00
        push    152                                     ; 034C _ 68, 00000098
        push    edx                                     ; 0351 _ 52
        push    eax                                     ; 0352 _ 50
        call    showString                              ; 0353 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0358 _ 83. C4, 20
        mov     edx, dword [sheet_back]                 ; 035B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0361 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0366 _ 83. EC, 08
        push    ?_169                                   ; 0369 _ 68, 0000001C(d)
        push    3                                       ; 036E _ 6A, 03
        push    0                                       ; 0370 _ 6A, 00
        push    240                                     ; 0372 _ 68, 000000F0
        push    edx                                     ; 0377 _ 52
        push    eax                                     ; 0378 _ 50
        call    showString                              ; 0379 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 037E _ 83. C4, 20
        call    get_code32_addr                         ; 0381 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 0386 _ 89. 45, BC
        call    get_addr_gdt                            ; 0389 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 038E _ 89. 45, C0
        mov     dword [?_194], 0                        ; 0391 _ C7. 05, 000002A0(d), 00000000
        mov     dword [?_195], 1073741824               ; 039B _ C7. 05, 000002A4(d), 40000000
        mov     dword [?_212], 0                        ; 03A5 _ C7. 05, 00000320(d), 00000000
        mov     dword [?_213], 1073741824               ; 03AF _ C7. 05, 00000324(d), 40000000
        mov     edx, tss_a.1757                         ; 03B9 _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 03BE _ 8B. 45, C0
        add     eax, 56                                 ; 03C1 _ 83. C0, 38
        push    137                                     ; 03C4 _ 68, 00000089
        push    edx                                     ; 03C9 _ 52
        push    103                                     ; 03CA _ 6A, 67
        push    eax                                     ; 03CC _ 50
        call    set_segmdesc                            ; 03CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D2 _ 83. C4, 10
        mov     edx, tss_a.1757                         ; 03D5 _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 03DA _ 8B. 45, C0
        add     eax, 64                                 ; 03DD _ 83. C0, 40
        push    137                                     ; 03E0 _ 68, 00000089
        push    edx                                     ; 03E5 _ 52
        push    103                                     ; 03E6 _ 6A, 67
        push    eax                                     ; 03E8 _ 50
        call    set_segmdesc                            ; 03E9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03EE _ 83. C4, 10
        mov     edx, tss_b.1758                         ; 03F1 _ BA, 000002C0(d)
        mov     eax, dword [ebp-40H]                    ; 03F6 _ 8B. 45, C0
        add     eax, 72                                 ; 03F9 _ 83. C0, 48
        push    137                                     ; 03FC _ 68, 00000089
        push    edx                                     ; 0401 _ 52
        push    103                                     ; 0402 _ 6A, 67
        push    eax                                     ; 0404 _ 50
        call    set_segmdesc                            ; 0405 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 040A _ 83. C4, 10
        mov     edx, task_b_main                        ; 040D _ BA, 00000000(d)
        mov     eax, dword [ebp-40H]                    ; 0412 _ 8B. 45, C0
        add     eax, 48                                 ; 0415 _ 83. C0, 30
        push    16538                                   ; 0418 _ 68, 0000409A
        push    edx                                     ; 041D _ 52
        push    1048575                                 ; 041E _ 68, 000FFFFF
        push    eax                                     ; 0423 _ 50
        call    set_segmdesc                            ; 0424 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0429 _ 83. C4, 10
        sub     esp, 12                                 ; 042C _ 83. EC, 0C
        push    56                                      ; 042F _ 6A, 38
        call    load_tr                                 ; 0431 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0436 _ 83. C4, 10
        call    taskswitch8                             ; 0439 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_186]                      ; 043E _ A1, 00000264(d)
        sub     esp, 12                                 ; 0443 _ 83. EC, 0C
        push    eax                                     ; 0446 _ 50
        call    intToHexStr                             ; 0447 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 044C _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 044F _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0452 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0458 _ A1, 00000220(d)
        sub     esp, 8                                  ; 045D _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0460 _ FF. 75, C4
        push    7                                       ; 0463 _ 6A, 07
        push    0                                       ; 0465 _ 6A, 00
        push    0                                       ; 0467 _ 6A, 00
        push    edx                                     ; 0469 _ 52
        push    eax                                     ; 046A _ 50
        call    showString                              ; 046B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0470 _ 83. C4, 20
        mov     eax, dword [?_187]                      ; 0473 _ A1, 00000278(d)
        sub     esp, 12                                 ; 0478 _ 83. EC, 0C
        push    eax                                     ; 047B _ 50
        call    intToHexStr                             ; 047C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0481 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0484 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0487 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 048D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0492 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0495 _ FF. 75, C4
        push    7                                       ; 0498 _ 6A, 07
        push    16                                      ; 049A _ 6A, 10
        push    0                                       ; 049C _ 6A, 00
        push    edx                                     ; 049E _ 52
        push    eax                                     ; 049F _ 50
        call    showString                              ; 04A0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04A5 _ 83. C4, 20
        mov     eax, dword [?_188]                      ; 04A8 _ A1, 00000288(d)
        lea     edx, [eax+7H]                           ; 04AD _ 8D. 50, 07
        test    eax, eax                                ; 04B0 _ 85. C0
        cmovs   eax, edx                                ; 04B2 _ 0F 48. C2
        sar     eax, 3                                  ; 04B5 _ C1. F8, 03
        sub     esp, 12                                 ; 04B8 _ 83. EC, 0C
        push    eax                                     ; 04BB _ 50
        call    intToHexStr                             ; 04BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04C1 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 04C4 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 04C7 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04CD _ A1, 00000220(d)
        sub     esp, 8                                  ; 04D2 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 04D5 _ FF. 75, C4
        push    7                                       ; 04D8 _ 6A, 07
        push    32                                      ; 04DA _ 6A, 20
        push    0                                       ; 04DC _ 6A, 00
        push    edx                                     ; 04DE _ 52
        push    eax                                     ; 04DF _ 50
        call    showString                              ; 04E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04E5 _ 83. C4, 20
        mov     eax, dword [?_189]                      ; 04E8 _ A1, 0000028C(d)
        lea     edx, [eax+7H]                           ; 04ED _ 8D. 50, 07
        test    eax, eax                                ; 04F0 _ 85. C0
        cmovs   eax, edx                                ; 04F2 _ 0F 48. C2
        sar     eax, 3                                  ; 04F5 _ C1. F8, 03
        sub     esp, 12                                 ; 04F8 _ 83. EC, 0C
        push    eax                                     ; 04FB _ 50
        call    intToHexStr                             ; 04FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0501 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0504 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0507 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 050D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0512 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0515 _ FF. 75, C4
        push    7                                       ; 0518 _ 6A, 07
        push    48                                      ; 051A _ 6A, 30
        push    0                                       ; 051C _ 6A, 00
        push    edx                                     ; 051E _ 52
        push    eax                                     ; 051F _ 50
        call    showString                              ; 0520 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0525 _ 83. C4, 20
        mov     eax, dword [?_190]                      ; 0528 _ A1, 00000290(d)
        lea     edx, [eax+7H]                           ; 052D _ 8D. 50, 07
        test    eax, eax                                ; 0530 _ 85. C0
        cmovs   eax, edx                                ; 0532 _ 0F 48. C2
        sar     eax, 3                                  ; 0535 _ C1. F8, 03
        sub     esp, 12                                 ; 0538 _ 83. EC, 0C
        push    eax                                     ; 053B _ 50
        call    intToHexStr                             ; 053C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0541 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0544 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0547 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 054D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0552 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0555 _ FF. 75, C4
        push    7                                       ; 0558 _ 6A, 07
        push    64                                      ; 055A _ 6A, 40
        push    0                                       ; 055C _ 6A, 00
        push    edx                                     ; 055E _ 52
        push    eax                                     ; 055F _ 50
        call    showString                              ; 0560 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0565 _ 83. C4, 20
        mov     eax, dword [?_191]                      ; 0568 _ A1, 00000294(d)
        lea     edx, [eax+7H]                           ; 056D _ 8D. 50, 07
        test    eax, eax                                ; 0570 _ 85. C0
        cmovs   eax, edx                                ; 0572 _ 0F 48. C2
        sar     eax, 3                                  ; 0575 _ C1. F8, 03
        sub     esp, 12                                 ; 0578 _ 83. EC, 0C
        push    eax                                     ; 057B _ 50
        call    intToHexStr                             ; 057C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0581 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0584 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0587 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 058D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0592 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0595 _ FF. 75, C4
        push    7                                       ; 0598 _ 6A, 07
        push    80                                      ; 059A _ 6A, 50
        push    0                                       ; 059C _ 6A, 00
        push    edx                                     ; 059E _ 52
        push    eax                                     ; 059F _ 50
        call    showString                              ; 05A0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05A5 _ 83. C4, 20
        mov     eax, dword [?_193]                      ; 05A8 _ A1, 0000029C(d)
        lea     edx, [eax+7H]                           ; 05AD _ 8D. 50, 07
        test    eax, eax                                ; 05B0 _ 85. C0
        cmovs   eax, edx                                ; 05B2 _ 0F 48. C2
        sar     eax, 3                                  ; 05B5 _ C1. F8, 03
        sub     esp, 12                                 ; 05B8 _ 83. EC, 0C
        push    eax                                     ; 05BB _ 50
        call    intToHexStr                             ; 05BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05C1 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 05C4 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 05C7 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 05CD _ A1, 00000220(d)
        sub     esp, 8                                  ; 05D2 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 05D5 _ FF. 75, C4
        push    7                                       ; 05D8 _ 6A, 07
        push    96                                      ; 05DA _ 6A, 60
        push    0                                       ; 05DC _ 6A, 00
        push    edx                                     ; 05DE _ 52
        push    eax                                     ; 05DF _ 50
        call    showString                              ; 05E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05E5 _ 83. C4, 20
        mov     eax, dword [?_192]                      ; 05E8 _ A1, 00000298(d)
        lea     edx, [eax+7H]                           ; 05ED _ 8D. 50, 07
        test    eax, eax                                ; 05F0 _ 85. C0
        cmovs   eax, edx                                ; 05F2 _ 0F 48. C2
        sar     eax, 3                                  ; 05F5 _ C1. F8, 03
        sub     esp, 12                                 ; 05F8 _ 83. EC, 0C
        push    eax                                     ; 05FB _ 50
        call    intToHexStr                             ; 05FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0601 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0604 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0607 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 060D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0612 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0615 _ FF. 75, C4
        push    7                                       ; 0618 _ 6A, 07
        push    112                                     ; 061A _ 6A, 70
        push    0                                       ; 061C _ 6A, 00
        push    edx                                     ; 061E _ 52
        push    eax                                     ; 061F _ 50
        call    showString                              ; 0620 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0625 _ 83. C4, 20
        mov     eax, dword [?_185]                      ; 0628 _ A1, 0000025C(d)
        sub     esp, 12                                 ; 062D _ 83. EC, 0C
        push    eax                                     ; 0630 _ 50
        call    intToHexStr                             ; 0631 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0636 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0639 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 063C _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0642 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0647 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 064A _ FF. 75, C4
        push    7                                       ; 064D _ 6A, 07
        push    128                                     ; 064F _ 68, 00000080
        push    0                                       ; 0654 _ 6A, 00
        push    edx                                     ; 0656 _ 52
        push    eax                                     ; 0657 _ 50
        call    showString                              ; 0658 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 065D _ 83. C4, 20
        mov     eax, dword [memman]                     ; 0660 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0665 _ 83. EC, 08
        push    65536                                   ; 0668 _ 68, 00010000
        push    eax                                     ; 066D _ 50
        call    memman_alloc_4K                         ; 066E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0673 _ 83. C4, 10
        add     eax, 65536                              ; 0676 _ 05, 00010000
        mov     dword [ebp-38H], eax                    ; 067B _ 89. 45, C8
        mov     eax, dword [ebp-44H]                    ; 067E _ 8B. 45, BC
        neg     eax                                     ; 0681 _ F7. D8
        add     eax, task_b_main                        ; 0683 _ 05, 00000000(d)
        mov     dword [?_196], eax                      ; 0688 _ A3, 000002E0(d)
        mov     dword [?_197], 514                      ; 068D _ C7. 05, 000002E4(d), 00000202
        mov     dword [?_198], 0                        ; 0697 _ C7. 05, 000002E8(d), 00000000
        mov     dword [?_199], 0                        ; 06A1 _ C7. 05, 000002EC(d), 00000000
        mov     dword [?_200], 0                        ; 06AB _ C7. 05, 000002F0(d), 00000000
        mov     dword [?_201], 0                        ; 06B5 _ C7. 05, 000002F4(d), 00000000
        mov     dword [?_202], 1024                     ; 06BF _ C7. 05, 000002F8(d), 00000400
        mov     dword [?_203], 0                        ; 06C9 _ C7. 05, 000002FC(d), 00000000
        mov     dword [?_204], 0                        ; 06D3 _ C7. 05, 00000300(d), 00000000
        mov     dword [?_205], 0                        ; 06DD _ C7. 05, 00000304(d), 00000000
        mov     eax, dword [?_188]                      ; 06E7 _ A1, 00000288(d)
        mov     dword [?_206], eax                      ; 06EC _ A3, 00000308(d)
        mov     eax, dword [?_189]                      ; 06F1 _ A1, 0000028C(d)
        mov     dword [?_207], eax                      ; 06F6 _ A3, 0000030C(d)
        mov     eax, dword [?_190]                      ; 06FB _ A1, 00000290(d)
        mov     dword [?_208], eax                      ; 0700 _ A3, 00000310(d)
        mov     eax, dword [?_191]                      ; 0705 _ A1, 00000294(d)
        mov     dword [?_209], eax                      ; 070A _ A3, 00000314(d)
        mov     eax, dword [?_192]                      ; 070F _ A1, 00000298(d)
        mov     dword [?_210], eax                      ; 0714 _ A3, 00000318(d)
        mov     eax, dword [?_193]                      ; 0719 _ A1, 0000029C(d)
        mov     dword [?_211], eax                      ; 071E _ A3, 0000031C(d)
        call    io_sti                                  ; 0723 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0728 _ 83. EC, 0C
        push    mouse_move                              ; 072B _ 68, 000000E0(d)
        call    enable_mouse                            ; 0730 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0735 _ 83. C4, 10
        mov     byte [ebp-71H], 0                       ; 0738 _ C6. 45, 8F, 00
        call    getTimerController                      ; 073C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0741 _ 89. 45, CC
        mov     dword [ebp-70H], 7                      ; 0744 _ C7. 45, 90, 00000007
?_001:  mov     eax, dword [ebp-60H]                    ; 074B _ 8B. 45, A0
        mov     eax, dword [eax]                        ; 074E _ 8B. 00
        sub     esp, 12                                 ; 0750 _ 83. EC, 0C
        push    eax                                     ; 0753 _ 50
        call    intToHexStr                             ; 0754 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0759 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 075C _ 89. 45, D0
        mov     eax, dword [sheet_win]                  ; 075F _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0764 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0767 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 076C _ 8B. 00
        sub     esp, 4                                  ; 076E _ 83. EC, 04
        push    38                                      ; 0771 _ 6A, 26
        push    150                                     ; 0773 _ 68, 00000096
        push    23                                      ; 0778 _ 6A, 17
        push    8                                       ; 077A _ 6A, 08
        push    8                                       ; 077C _ 6A, 08
        push    edx                                     ; 077E _ 52
        push    eax                                     ; 077F _ 50
        call    boxfill8                                ; 0780 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0785 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 0788 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 078E _ A1, 00000220(d)
        sub     esp, 8                                  ; 0793 _ 83. EC, 08
        push    dword [ebp-30H]                         ; 0796 _ FF. 75, D0
        push    10                                      ; 0799 _ 6A, 0A
        push    23                                      ; 079B _ 6A, 17
        push    8                                       ; 079D _ 6A, 08
        push    edx                                     ; 079F _ 52
        push    eax                                     ; 07A0 _ 50
        call    showString                              ; 07A1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07A6 _ 83. C4, 20
        sub     esp, 12                                 ; 07A9 _ 83. EC, 0C
        push    keyInfo                                 ; 07AC _ 68, 00000008(d)
        call    fifo8_status                            ; 07B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07B6 _ 83. C4, 10
        sub     esp, 12                                 ; 07B9 _ 83. EC, 0C
        push    eax                                     ; 07BC _ 50
        call    intToHexStr                             ; 07BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C2 _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 07C5 _ 89. 45, D4
        mov     eax, dword [sheet_win]                  ; 07C8 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 07CD _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 07D0 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 07D5 _ 8B. 00
        sub     esp, 4                                  ; 07D7 _ 83. EC, 04
        push    76                                      ; 07DA _ 6A, 4C
        push    100                                     ; 07DC _ 6A, 64
        push    61                                      ; 07DE _ 6A, 3D
        push    8                                       ; 07E0 _ 6A, 08
        push    8                                       ; 07E2 _ 6A, 08
        push    edx                                     ; 07E4 _ 52
        push    eax                                     ; 07E5 _ 50
        call    boxfill8                                ; 07E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07EB _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 07EE _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 07F4 _ A1, 00000220(d)
        sub     esp, 8                                  ; 07F9 _ 83. EC, 08
        push    dword [ebp-2CH]                         ; 07FC _ FF. 75, D4
        push    10                                      ; 07FF _ 6A, 0A
        push    61                                      ; 0801 _ 6A, 3D
        push    8                                       ; 0803 _ 6A, 08
        push    edx                                     ; 0805 _ 52
        push    eax                                     ; 0806 _ 50
        call    showString                              ; 0807 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 080C _ 83. C4, 20
        sub     esp, 12                                 ; 080F _ 83. EC, 0C
        push    mouseInfo                               ; 0812 _ 68, 00000020(d)
        call    fifo8_status                            ; 0817 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 081C _ 83. C4, 10
        sub     esp, 12                                 ; 081F _ 83. EC, 0C
        push    eax                                     ; 0822 _ 50
        call    intToHexStr                             ; 0823 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0828 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 082B _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 082E _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0833 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0836 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 083B _ 8B. 00
        sub     esp, 4                                  ; 083D _ 83. EC, 04
        push    92                                      ; 0840 _ 6A, 5C
        push    100                                     ; 0842 _ 6A, 64
        push    77                                      ; 0844 _ 6A, 4D
        push    8                                       ; 0846 _ 6A, 08
        push    8                                       ; 0848 _ 6A, 08
        push    edx                                     ; 084A _ 52
        push    eax                                     ; 084B _ 50
        call    boxfill8                                ; 084C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0851 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 0854 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 085A _ A1, 00000220(d)
        sub     esp, 8                                  ; 085F _ 83. EC, 08
        push    dword [ebp-28H]                         ; 0862 _ FF. 75, D8
        push    10                                      ; 0865 _ 6A, 0A
        push    77                                      ; 0867 _ 6A, 4D
        push    8                                       ; 0869 _ 6A, 08
        push    edx                                     ; 086B _ 52
        push    eax                                     ; 086C _ 50
        call    showString                              ; 086D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0872 _ 83. C4, 20
        call    io_cli                                  ; 0875 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 087A _ 83. EC, 0C
        push    keyInfo                                 ; 087D _ 68, 00000008(d)
        call    fifo8_status                            ; 0882 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0887 _ 83. C4, 10
        mov     ebx, eax                                ; 088A _ 89. C3
        sub     esp, 12                                 ; 088C _ 83. EC, 0C
        push    mouseInfo                               ; 088F _ 68, 00000020(d)
        call    fifo8_status                            ; 0894 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0899 _ 83. C4, 10
        add     ebx, eax                                ; 089C _ 01. C3
        sub     esp, 12                                 ; 089E _ 83. EC, 0C
        push    timerInfo                               ; 08A1 _ 68, 00000200(d)
        call    fifo8_status                            ; 08A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08AB _ 83. C4, 10
        add     eax, ebx                                ; 08AE _ 01. D8
        test    eax, eax                                ; 08B0 _ 85. C0
        jnz     ?_002                                   ; 08B2 _ 75, 0A
        call    io_sti                                  ; 08B4 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08B9 _ E9, FFFFFE8D

?_002:  sub     esp, 12                                 ; 08BE _ 83. EC, 0C
        push    keyInfo                                 ; 08C1 _ 68, 00000008(d)
        call    fifo8_status                            ; 08C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08CB _ 83. C4, 10
        test    eax, eax                                ; 08CE _ 85. C0
        je      ?_007                                   ; 08D0 _ 0F 84, 00000314
        call    io_sti                                  ; 08D6 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 08DB _ 83. EC, 0C
        push    keyInfo                                 ; 08DE _ 68, 00000008(d)
        call    fifo8_get                               ; 08E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08E8 _ 83. C4, 10
        mov     byte [ebp-71H], al                      ; 08EB _ 88. 45, 8F
        cmp     byte [ebp-71H], 28                      ; 08EE _ 80. 7D, 8F, 1C
        jnz     ?_003                                   ; 08F2 _ 75, 59
        mov     ebx, dword [cnt.1763]                   ; 08F4 _ 8B. 1D, 00000328(d)
        mov     eax, dword [sheet_back]                 ; 08FA _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 08FF _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 0901 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0907 _ A1, 00000220(d)
        sub     esp, 4                                  ; 090C _ 83. EC, 04
        push    7                                       ; 090F _ 6A, 07
        push    dword [ebp-68H]                         ; 0911 _ FF. 75, 98
        push    ebx                                     ; 0914 _ 53
        push    ecx                                     ; 0915 _ 51
        push    dword [ebp-54H]                         ; 0916 _ FF. 75, AC
        push    edx                                     ; 0919 _ 52
        push    eax                                     ; 091A _ 50
        call    showMemInfo                             ; 091B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0920 _ 83. C4, 20
        mov     eax, dword [cnt.1763]                   ; 0923 _ A1, 00000328(d)
        add     eax, 1                                  ; 0928 _ 83. C0, 01
        mov     dword [cnt.1763], eax                   ; 092B _ A3, 00000328(d)
        mov     eax, dword [cnt.1763]                   ; 0930 _ A1, 00000328(d)
        cmp     dword [ebp-50H], eax                    ; 0935 _ 39. 45, B0
        jg      ?_001                                   ; 0938 _ 0F 8F, FFFFFE0D
        mov     dword [cnt.1763], 0                     ; 093E _ C7. 05, 00000328(d), 00000000
        jmp     ?_001                                   ; 0948 _ E9, FFFFFDFE

?_003:  movzx   eax, byte [ebp-71H]                     ; 094D _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0951 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 0958 _ 84. C0
        jz      ?_004                                   ; 095A _ 74, 18
        cmp     byte [ebp-71H], 15                      ; 095C _ 80. 7D, 8F, 0F
        jbe     ?_004                                   ; 0960 _ 76, 12
        cmp     byte [ebp-71H], 83                      ; 0962 _ 80. 7D, 8F, 53
        ja      ?_004                                   ; 0966 _ 77, 0C
        mov     eax, dword [line.1767]                  ; 0968 _ A1, 0000032C(d)
        cmp     eax, 142                                ; 096D _ 3D, 0000008E
        jle     ?_005                                   ; 0972 _ 7E, 18
?_004:  cmp     byte [ebp-71H], 14                      ; 0974 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 0978 _ 0F 85, FFFFFDCD
        mov     eax, dword [line.1767]                  ; 097E _ A1, 0000032C(d)
        cmp     eax, 7                                  ; 0983 _ 83. F8, 07
        jle     ?_001                                   ; 0986 _ 0F 8E, FFFFFDBF
?_005:  movzx   eax, byte [ebp-71H]                     ; 098C _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0990 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 0997 _ 84. C0
        je      ?_006                                   ; 0999 _ 0F 84, 00000125
        cmp     byte [ebp-71H], 15                      ; 099F _ 80. 7D, 8F, 0F
        jbe     ?_006                                   ; 09A3 _ 0F 86, 0000011B
        cmp     byte [ebp-71H], 83                      ; 09A9 _ 80. 7D, 8F, 53
        ja      ?_006                                   ; 09AD _ 0F 87, 00000111
        mov     eax, dword [line.1767]                  ; 09B3 _ A1, 0000032C(d)
        cmp     eax, 142                                ; 09B8 _ 3D, 0000008E
        jg      ?_006                                   ; 09BD _ 0F 8F, 00000101
        mov     eax, dword [pos.1768]                   ; 09C3 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 09C8 _ 8D. 78, 28
        mov     eax, dword [line.1767]                  ; 09CB _ A1, 0000032C(d)
        lea     esi, [eax+0EH]                          ; 09D0 _ 8D. 70, 0E
        mov     eax, dword [pos.1768]                   ; 09D3 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09D8 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 09DB _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 09E0 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 09E3 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 09E8 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 09EB _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 09F0 _ 8B. 00
        sub     esp, 4                                  ; 09F2 _ 83. EC, 04
        push    edi                                     ; 09F5 _ 57
        push    esi                                     ; 09F6 _ 56
        push    ebx                                     ; 09F7 _ 53
        push    ecx                                     ; 09F8 _ 51
        push    7                                       ; 09F9 _ 6A, 07
        push    edx                                     ; 09FB _ 52
        push    eax                                     ; 09FC _ 50
        call    boxfill8                                ; 09FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A02 _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0A05 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0A0A _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0A0D _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0A12 _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0A15 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0A1A _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0A1D _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0A22 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0A25 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0A2B _ A1, 00000220(d)
        sub     esp, 8                                  ; 0A30 _ 83. EC, 08
        push    edi                                     ; 0A33 _ 57
        push    esi                                     ; 0A34 _ 56
        push    ebx                                     ; 0A35 _ 53
        push    ecx                                     ; 0A36 _ 51
        push    edx                                     ; 0A37 _ 52
        push    eax                                     ; 0A38 _ 50
        call    sheet_refresh                           ; 0A39 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A3E _ 83. C4, 20
        movzx   eax, byte [ebp-71H]                     ; 0A41 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0A45 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0A4C _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0A4F _ C6. 45, E3, 00
        mov     eax, dword [pos.1768]                   ; 0A53 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0A58 _ 8D. 70, 1A
        mov     eax, dword [line.1767]                  ; 0A5B _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 0A60 _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 0A63 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0A69 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0A6E _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0A71 _ 8D. 4D, E2
        push    ecx                                     ; 0A74 _ 51
        push    0                                       ; 0A75 _ 6A, 00
        push    esi                                     ; 0A77 _ 56
        push    ebx                                     ; 0A78 _ 53
        push    edx                                     ; 0A79 _ 52
        push    eax                                     ; 0A7A _ 50
        call    showString                              ; 0A7B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A80 _ 83. C4, 20
        mov     eax, dword [line.1767]                  ; 0A83 _ A1, 0000032C(d)
        add     eax, 8                                  ; 0A88 _ 83. C0, 08
        mov     dword [line.1767], eax                  ; 0A8B _ A3, 0000032C(d)
        mov     eax, dword [sheet_win]                  ; 0A90 _ A1, 00000224(d)
        mov     eax, dword [eax+4H]                     ; 0A95 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0A98 _ 8D. 50, F0
        mov     eax, dword [line.1767]                  ; 0A9B _ A1, 0000032C(d)
        cmp     edx, eax                                ; 0AA0 _ 39. C2
        jg      ?_013                                   ; 0AA2 _ 0F 8F, 000002EB
        mov     eax, dword [pos.1768]                   ; 0AA8 _ A1, 00000074(d)
        add     eax, 16                                 ; 0AAD _ 83. C0, 10
        mov     dword [pos.1768], eax                   ; 0AB0 _ A3, 00000074(d)
        mov     dword [line.1767], 0                    ; 0AB5 _ C7. 05, 0000032C(d), 00000000
        jmp     ?_013                                   ; 0ABF _ E9, 000002CF

?_006:  cmp     byte [ebp-71H], 14                      ; 0AC4 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 0AC8 _ 0F 85, FFFFFC7D
        mov     eax, dword [line.1767]                  ; 0ACE _ A1, 0000032C(d)
        cmp     eax, 7                                  ; 0AD3 _ 83. F8, 07
        jle     ?_001                                   ; 0AD6 _ 0F 8E, FFFFFC6F
        mov     eax, dword [pos.1768]                   ; 0ADC _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0AE1 _ 8D. 78, 28
        mov     eax, dword [line.1767]                  ; 0AE4 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0AE9 _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0AEC _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0AF1 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0AF4 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0AF9 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0AFC _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0B01 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0B04 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0B09 _ 8B. 00
        sub     esp, 4                                  ; 0B0B _ 83. EC, 04
        push    edi                                     ; 0B0E _ 57
        push    esi                                     ; 0B0F _ 56
        push    ebx                                     ; 0B10 _ 53
        push    ecx                                     ; 0B11 _ 51
        push    7                                       ; 0B12 _ 6A, 07
        push    edx                                     ; 0B14 _ 52
        push    eax                                     ; 0B15 _ 50
        call    boxfill8                                ; 0B16 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B1B _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0B1E _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0B23 _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0B26 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0B2B _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0B2E _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0B33 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0B36 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0B3B _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0B3E _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0B44 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0B49 _ 83. EC, 08
        push    edi                                     ; 0B4C _ 57
        push    esi                                     ; 0B4D _ 56
        push    ebx                                     ; 0B4E _ 53
        push    ecx                                     ; 0B4F _ 51
        push    edx                                     ; 0B50 _ 52
        push    eax                                     ; 0B51 _ 50
        call    sheet_refresh                           ; 0B52 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B57 _ 83. C4, 20
        mov     eax, dword [line.1767]                  ; 0B5A _ A1, 0000032C(d)
        sub     eax, 8                                  ; 0B5F _ 83. E8, 08
        mov     dword [line.1767], eax                  ; 0B62 _ A3, 0000032C(d)
        mov     eax, dword [pos.1768]                   ; 0B67 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0B6C _ 8D. 78, 28
        mov     eax, dword [line.1767]                  ; 0B6F _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0B74 _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0B77 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0B7C _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0B7F _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0B84 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0B87 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0B8C _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0B8F _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0B94 _ 8B. 00
        sub     esp, 4                                  ; 0B96 _ 83. EC, 04
        push    edi                                     ; 0B99 _ 57
        push    esi                                     ; 0B9A _ 56
        push    ebx                                     ; 0B9B _ 53
        push    ecx                                     ; 0B9C _ 51
        push    7                                       ; 0B9D _ 6A, 07
        push    edx                                     ; 0B9F _ 52
        push    eax                                     ; 0BA0 _ 50
        call    boxfill8                                ; 0BA1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BA6 _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0BA9 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0BAE _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0BB1 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0BB6 _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0BB9 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0BBE _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0BC1 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0BC6 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0BC9 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0BCF _ A1, 00000220(d)
        sub     esp, 8                                  ; 0BD4 _ 83. EC, 08
        push    edi                                     ; 0BD7 _ 57
        push    esi                                     ; 0BD8 _ 56
        push    ebx                                     ; 0BD9 _ 53
        push    ecx                                     ; 0BDA _ 51
        push    edx                                     ; 0BDB _ 52
        push    eax                                     ; 0BDC _ 50
        call    sheet_refresh                           ; 0BDD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BE2 _ 83. C4, 20
        jmp     ?_001                                   ; 0BE5 _ E9, FFFFFB61

?_007:  sub     esp, 12                                 ; 0BEA _ 83. EC, 0C
        push    mouseInfo                               ; 0BED _ 68, 00000020(d)
        call    fifo8_status                            ; 0BF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BF7 _ 83. C4, 10
        test    eax, eax                                ; 0BFA _ 85. C0
        jz      ?_008                                   ; 0BFC _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0BFE _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 0C04 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C0A _ A1, 00000220(d)
        sub     esp, 4                                  ; 0C0F _ 83. EC, 04
        push    ecx                                     ; 0C12 _ 51
        push    edx                                     ; 0C13 _ 52
        push    eax                                     ; 0C14 _ 50
        call    showMouseInfo                           ; 0C15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C1A _ 83. C4, 10
        jmp     ?_001                                   ; 0C1D _ E9, FFFFFB29

?_008:  sub     esp, 12                                 ; 0C22 _ 83. EC, 0C
        push    timerInfo                               ; 0C25 _ 68, 00000200(d)
        call    fifo8_status                            ; 0C2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C2F _ 83. C4, 10
        test    eax, eax                                ; 0C32 _ 85. C0
        je      ?_001                                   ; 0C34 _ 0F 84, FFFFFB11
        call    io_sti                                  ; 0C3A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0C3F _ 83. EC, 0C
        push    timerInfo                               ; 0C42 _ 68, 00000200(d)
        call    fifo8_get                               ; 0C47 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C4C _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0C4F _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 0C52 _ 83. 7D, DC, 0A
        jnz     ?_009                                   ; 0C56 _ 75, 30
        mov     edx, dword [sheet_back]                 ; 0C58 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C5E _ A1, 00000220(d)
        sub     esp, 8                                  ; 0C63 _ 83. EC, 08
        push    ?_170                                   ; 0C66 _ 68, 0000001F(d)
        push    5                                       ; 0C6B _ 6A, 05
        push    176                                     ; 0C6D _ 68, 000000B0
        push    0                                       ; 0C72 _ 6A, 00
        push    edx                                     ; 0C74 _ 52
        push    eax                                     ; 0C75 _ 50
        call    showString                              ; 0C76 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C7B _ 83. C4, 20
        call    taskswitch9                             ; 0C7E _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0C83 _ E9, FFFFFAC3

?_009:  cmp     dword [ebp-24H], 2                      ; 0C88 _ 83. 7D, DC, 02
        jnz     ?_010                                   ; 0C8C _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0C8E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C94 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0C99 _ 83. EC, 08
        push    ?_171                                   ; 0C9C _ 68, 00000030(d)
        push    7                                       ; 0CA1 _ 6A, 07
        push    32                                      ; 0CA3 _ 6A, 20
        push    80                                      ; 0CA5 _ 6A, 50
        push    edx                                     ; 0CA7 _ 52
        push    eax                                     ; 0CA8 _ 50
        call    showString                              ; 0CA9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CAE _ 83. C4, 20
        jmp     ?_001                                   ; 0CB1 _ E9, FFFFFA95

?_010:  cmp     dword [ebp-24H], 0                      ; 0CB6 _ 83. 7D, DC, 00
        jz      ?_011                                   ; 0CBA _ 74, 1E
        sub     esp, 4                                  ; 0CBC _ 83. EC, 04
        push    0                                       ; 0CBF _ 6A, 00
        push    timerInfo                               ; 0CC1 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0CC6 _ FF. 75, A8
        call    timer_init                              ; 0CC9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CCE _ 83. C4, 10
        mov     dword [ebp-70H], 0                      ; 0CD1 _ C7. 45, 90, 00000000
        jmp     ?_012                                   ; 0CD8 _ EB, 1C

?_011:  sub     esp, 4                                  ; 0CDA _ 83. EC, 04
        push    1                                       ; 0CDD _ 6A, 01
        push    timerInfo                               ; 0CDF _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0CE4 _ FF. 75, A8
        call    timer_init                              ; 0CE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CEC _ 83. C4, 10
        mov     dword [ebp-70H], 7                      ; 0CEF _ C7. 45, 90, 00000007
?_012:  sub     esp, 8                                  ; 0CF6 _ 83. EC, 08
        push    50                                      ; 0CF9 _ 6A, 32
        push    dword [ebp-58H]                         ; 0CFB _ FF. 75, A8
        call    timer_setTime                           ; 0CFE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D03 _ 83. C4, 10
        mov     eax, dword [pos.1768]                   ; 0D06 _ A1, 00000074(d)
        add     eax, 40                                 ; 0D0B _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0D0E _ 89. 45, 84
        mov     eax, dword [line.1767]                  ; 0D11 _ A1, 0000032C(d)
        lea     edi, [eax+0EH]                          ; 0D16 _ 8D. 78, 0E
        mov     eax, dword [pos.1768]                   ; 0D19 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0D1E _ 8D. 70, 1A
        mov     eax, dword [line.1767]                  ; 0D21 _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 0D26 _ 8D. 58, 08
        mov     eax, dword [ebp-70H]                    ; 0D29 _ 8B. 45, 90
        movzx   ecx, al                                 ; 0D2C _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0D2F _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0D34 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0D37 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0D3C _ 8B. 00
        sub     esp, 4                                  ; 0D3E _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 0D41 _ FF. 75, 84
        push    edi                                     ; 0D44 _ 57
        push    esi                                     ; 0D45 _ 56
        push    ebx                                     ; 0D46 _ 53
        push    ecx                                     ; 0D47 _ 51
        push    edx                                     ; 0D48 _ 52
        push    eax                                     ; 0D49 _ 50
        call    boxfill8                                ; 0D4A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D4F _ 83. C4, 20
        mov     eax, dword [pos.1768]                   ; 0D52 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0D57 _ 8D. 78, 2A
        mov     eax, dword [line.1767]                  ; 0D5A _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0D5F _ 8D. 70, 10
        mov     eax, dword [pos.1768]                   ; 0D62 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0D67 _ 8D. 58, 1A
        mov     eax, dword [line.1767]                  ; 0D6A _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0D6F _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0D72 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0D78 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0D7D _ 83. EC, 08
        push    edi                                     ; 0D80 _ 57
        push    esi                                     ; 0D81 _ 56
        push    ebx                                     ; 0D82 _ 53
        push    ecx                                     ; 0D83 _ 51
        push    edx                                     ; 0D84 _ 52
        push    eax                                     ; 0D85 _ 50
        call    sheet_refresh                           ; 0D86 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D8B _ 83. C4, 20
        jmp     ?_001                                   ; 0D8E _ E9, FFFFF9B8

?_013:  nop                                             ; 0D93 _ 90
        jmp     ?_001                                   ; 0D94 _ E9, FFFFF9B2
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 0D99 _ 55
        mov     ebp, esp                                ; 0D9A _ 89. E5
        sub     esp, 56                                 ; 0D9C _ 83. EC, 38
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0D9F _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0DA5 _ 89. 45, F4
        xor     eax, eax                                ; 0DA8 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0DAA _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0DB0 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0DB5 _ 83. EC, 08
        push    ?_172                                   ; 0DB8 _ 68, 00000037(d)
        push    7                                       ; 0DBD _ 6A, 07
        push    144                                     ; 0DBF _ 68, 00000090
        push    0                                       ; 0DC4 _ 6A, 00
        push    edx                                     ; 0DC6 _ 52
        push    eax                                     ; 0DC7 _ 50
        call    showString                              ; 0DC8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DCD _ 83. C4, 20
        mov     dword [ebp-34H], 0                      ; 0DD0 _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 0                      ; 0DD7 _ C7. 45, D0, 00000000
        sub     esp, 4                                  ; 0DDE _ 83. EC, 04
        lea     eax, [ebp-14H]                          ; 0DE1 _ 8D. 45, EC
        push    eax                                     ; 0DE4 _ 50
        push    8                                       ; 0DE5 _ 6A, 08
        lea     eax, [ebp-2CH]                          ; 0DE7 _ 8D. 45, D4
        push    eax                                     ; 0DEA _ 50
        call    fifo8_init                              ; 0DEB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DF0 _ 83. C4, 10
        call    timer_alloc                             ; 0DF3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0DF8 _ 89. 45, CC
        sub     esp, 4                                  ; 0DFB _ 83. EC, 04
        push    123                                     ; 0DFE _ 6A, 7B
        lea     eax, [ebp-2CH]                          ; 0E00 _ 8D. 45, D4
        push    eax                                     ; 0E03 _ 50
        push    dword [ebp-34H]                         ; 0E04 _ FF. 75, CC
        call    timer_init                              ; 0E07 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E0C _ 83. C4, 10
        sub     esp, 8                                  ; 0E0F _ 83. EC, 08
        push    200                                     ; 0E12 _ 68, 000000C8
        push    dword [ebp-34H]                         ; 0E17 _ FF. 75, CC
        call    timer_setTime                           ; 0E1A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E1F _ 83. C4, 10
?_014:  call    io_cli                                  ; 0E22 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0E27 _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0E2A _ 8D. 45, D4
        push    eax                                     ; 0E2D _ 50
        call    fifo8_status                            ; 0E2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E33 _ 83. C4, 10
        test    eax, eax                                ; 0E36 _ 85. C0
        jnz     ?_015                                   ; 0E38 _ 75, 07
        call    io_sti                                  ; 0E3A _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 0E3F _ EB, E1

?_015:  sub     esp, 12                                 ; 0E41 _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0E44 _ 8D. 45, D4
        push    eax                                     ; 0E47 _ 50
        call    fifo8_get                               ; 0E48 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E4D _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0E50 _ 89. 45, D0
        call    io_sti                                  ; 0E53 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-30H], 123                    ; 0E58 _ 83. 7D, D0, 7B
        jnz     ?_014                                   ; 0E5C _ 75, C4
        mov     edx, dword [sheet_back]                 ; 0E5E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0E64 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0E69 _ 83. EC, 08
        push    ?_173                                   ; 0E6C _ 68, 00000044(d)
        push    7                                       ; 0E71 _ 6A, 07
        push    160                                     ; 0E73 _ 68, 000000A0
        push    0                                       ; 0E78 _ 6A, 00
        push    edx                                     ; 0E7A _ 52
        push    eax                                     ; 0E7B _ 50
        call    showString                              ; 0E7C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E81 _ 83. C4, 20
        call    taskswitch7                             ; 0E84 _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 0E89 _ EB, 97
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0E8B _ 55
        mov     ebp, esp                                ; 0E8C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E8E _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0E91 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0E97 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0E9A _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0EA0 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0EA3 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0EA9 _ 90
        pop     ebp                                     ; 0EAA _ 5D
        ret                                             ; 0EAB _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0EAC _ 55
        mov     ebp, esp                                ; 0EAD _ 89. E5
        push    ebx                                     ; 0EAF _ 53
        sub     esp, 36                                 ; 0EB0 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0EB3 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0EB6 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0EB9 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0EBC _ 89. 45, F4
        jmp     ?_017                                   ; 0EBF _ EB, 3E

?_016:  mov     eax, dword [ebp+1CH]                    ; 0EC1 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0EC4 _ 0F B6. 00
        movzx   eax, al                                 ; 0EC7 _ 0F B6. C0
        shl     eax, 4                                  ; 0ECA _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0ECD _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0ED3 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0ED7 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0EDA _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0EDD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0EE0 _ 8B. 00
        sub     esp, 8                                  ; 0EE2 _ 83. EC, 08
        push    ebx                                     ; 0EE5 _ 53
        push    ecx                                     ; 0EE6 _ 51
        push    dword [ebp+14H]                         ; 0EE7 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0EEA _ FF. 75, 10
        push    edx                                     ; 0EED _ 52
        push    eax                                     ; 0EEE _ 50
        call    showFont8                               ; 0EEF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EF4 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0EF7 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0EFB _ 83. 45, 1C, 01
?_017:  mov     eax, dword [ebp+1CH]                    ; 0EFF _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F02 _ 0F B6. 00
        test    al, al                                  ; 0F05 _ 84. C0
        jnz     ?_016                                   ; 0F07 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0F09 _ 8B. 45, 14
        add     eax, 16                                 ; 0F0C _ 83. C0, 10
        sub     esp, 8                                  ; 0F0F _ 83. EC, 08
        push    eax                                     ; 0F12 _ 50
        push    dword [ebp+10H]                         ; 0F13 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0F16 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0F19 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0F1C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F1F _ FF. 75, 08
        call    sheet_refresh                           ; 0F22 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F27 _ 83. C4, 20
        nop                                             ; 0F2A _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F2B _ 8B. 5D, FC
        leave                                           ; 0F2E _ C9
        ret                                             ; 0F2F _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0F30 _ 55
        mov     ebp, esp                                ; 0F31 _ 89. E5
        push    ebx                                     ; 0F33 _ 53
        sub     esp, 4                                  ; 0F34 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0F37 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0F3A _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0F3D _ 8B. 45, 0C
        sub     eax, 1                                  ; 0F40 _ 83. E8, 01
        sub     esp, 4                                  ; 0F43 _ 83. EC, 04
        push    edx                                     ; 0F46 _ 52
        push    eax                                     ; 0F47 _ 50
        push    0                                       ; 0F48 _ 6A, 00
        push    0                                       ; 0F4A _ 6A, 00
        push    14                                      ; 0F4C _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0F4E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F51 _ FF. 75, 08
        call    boxfill8                                ; 0F54 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F59 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F5C _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0F5F _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0F62 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F65 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F68 _ 8B. 45, 10
        sub     eax, 24                                 ; 0F6B _ 83. E8, 18
        sub     esp, 4                                  ; 0F6E _ 83. EC, 04
        push    ecx                                     ; 0F71 _ 51
        push    edx                                     ; 0F72 _ 52
        push    eax                                     ; 0F73 _ 50
        push    0                                       ; 0F74 _ 6A, 00
        push    8                                       ; 0F76 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0F78 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F7B _ FF. 75, 08
        call    boxfill8                                ; 0F7E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F83 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F86 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0F89 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0F8C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F8F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F92 _ 8B. 45, 10
        sub     eax, 23                                 ; 0F95 _ 83. E8, 17
        sub     esp, 4                                  ; 0F98 _ 83. EC, 04
        push    ecx                                     ; 0F9B _ 51
        push    edx                                     ; 0F9C _ 52
        push    eax                                     ; 0F9D _ 50
        push    0                                       ; 0F9E _ 6A, 00
        push    7                                       ; 0FA0 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FA2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FA5 _ FF. 75, 08
        call    boxfill8                                ; 0FA8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FAD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FB0 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0FB3 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0FB6 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0FB9 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0FBC _ 8B. 45, 10
        sub     eax, 22                                 ; 0FBF _ 83. E8, 16
        sub     esp, 4                                  ; 0FC2 _ 83. EC, 04
        push    ecx                                     ; 0FC5 _ 51
        push    edx                                     ; 0FC6 _ 52
        push    eax                                     ; 0FC7 _ 50
        push    0                                       ; 0FC8 _ 6A, 00
        push    8                                       ; 0FCA _ 6A, 08
        push    dword [ebp+0CH]                         ; 0FCC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FCF _ FF. 75, 08
        call    boxfill8                                ; 0FD2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FD7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FDA _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FDD _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0FE0 _ 8B. 45, 10
        sub     eax, 20                                 ; 0FE3 _ 83. E8, 14
        sub     esp, 4                                  ; 0FE6 _ 83. EC, 04
        push    edx                                     ; 0FE9 _ 52
        push    51                                      ; 0FEA _ 6A, 33
        push    eax                                     ; 0FEC _ 50
        push    10                                      ; 0FED _ 6A, 0A
        push    7                                       ; 0FEF _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FF1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FF4 _ FF. 75, 08
        call    boxfill8                                ; 0FF7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FFC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FFF _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1002 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1005 _ 8B. 45, 10
        sub     eax, 20                                 ; 1008 _ 83. E8, 14
        sub     esp, 4                                  ; 100B _ 83. EC, 04
        push    edx                                     ; 100E _ 52
        push    9                                       ; 100F _ 6A, 09
        push    eax                                     ; 1011 _ 50
        push    9                                       ; 1012 _ 6A, 09
        push    7                                       ; 1014 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1016 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1019 _ FF. 75, 08
        call    boxfill8                                ; 101C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1021 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1024 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1027 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 102A _ 8B. 45, 10
        sub     eax, 4                                  ; 102D _ 83. E8, 04
        sub     esp, 4                                  ; 1030 _ 83. EC, 04
        push    edx                                     ; 1033 _ 52
        push    50                                      ; 1034 _ 6A, 32
        push    eax                                     ; 1036 _ 50
        push    10                                      ; 1037 _ 6A, 0A
        push    15                                      ; 1039 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 103B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 103E _ FF. 75, 08
        call    boxfill8                                ; 1041 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1046 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1049 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 104C _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 104F _ 8B. 45, 10
        sub     eax, 19                                 ; 1052 _ 83. E8, 13
        sub     esp, 4                                  ; 1055 _ 83. EC, 04
        push    edx                                     ; 1058 _ 52
        push    50                                      ; 1059 _ 6A, 32
        push    eax                                     ; 105B _ 50
        push    50                                      ; 105C _ 6A, 32
        push    15                                      ; 105E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1060 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1063 _ FF. 75, 08
        call    boxfill8                                ; 1066 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 106B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 106E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1071 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1074 _ 8B. 45, 10
        sub     eax, 3                                  ; 1077 _ 83. E8, 03
        sub     esp, 4                                  ; 107A _ 83. EC, 04
        push    edx                                     ; 107D _ 52
        push    50                                      ; 107E _ 6A, 32
        push    eax                                     ; 1080 _ 50
        push    10                                      ; 1081 _ 6A, 0A
        push    0                                       ; 1083 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1085 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1088 _ FF. 75, 08
        call    boxfill8                                ; 108B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1090 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1093 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1096 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1099 _ 8B. 45, 10
        sub     eax, 20                                 ; 109C _ 83. E8, 14
        sub     esp, 4                                  ; 109F _ 83. EC, 04
        push    edx                                     ; 10A2 _ 52
        push    51                                      ; 10A3 _ 6A, 33
        push    eax                                     ; 10A5 _ 50
        push    51                                      ; 10A6 _ 6A, 33
        push    0                                       ; 10A8 _ 6A, 00
        push    dword [ebp+0CH]                         ; 10AA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10AD _ FF. 75, 08
        call    boxfill8                                ; 10B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10B5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10B8 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 10BB _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 10BE _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 10C1 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 10C4 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 10C7 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 10CA _ 8B. 45, 0C
        sub     eax, 47                                 ; 10CD _ 83. E8, 2F
        sub     esp, 4                                  ; 10D0 _ 83. EC, 04
        push    ebx                                     ; 10D3 _ 53
        push    ecx                                     ; 10D4 _ 51
        push    edx                                     ; 10D5 _ 52
        push    eax                                     ; 10D6 _ 50
        push    15                                      ; 10D7 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 10D9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10DC _ FF. 75, 08
        call    boxfill8                                ; 10DF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10E4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10E7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 10EA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 10ED _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 10F0 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 10F3 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 10F6 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 10F9 _ 8B. 45, 0C
        sub     eax, 47                                 ; 10FC _ 83. E8, 2F
        sub     esp, 4                                  ; 10FF _ 83. EC, 04
        push    ebx                                     ; 1102 _ 53
        push    ecx                                     ; 1103 _ 51
        push    edx                                     ; 1104 _ 52
        push    eax                                     ; 1105 _ 50
        push    15                                      ; 1106 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1108 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 110B _ FF. 75, 08
        call    boxfill8                                ; 110E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1113 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1116 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1119 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 111C _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 111F _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1122 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1125 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1128 _ 8B. 45, 0C
        sub     eax, 47                                 ; 112B _ 83. E8, 2F
        sub     esp, 4                                  ; 112E _ 83. EC, 04
        push    ebx                                     ; 1131 _ 53
        push    ecx                                     ; 1132 _ 51
        push    edx                                     ; 1133 _ 52
        push    eax                                     ; 1134 _ 50
        push    7                                       ; 1135 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1137 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 113A _ FF. 75, 08
        call    boxfill8                                ; 113D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1142 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1145 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1148 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 114B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 114E _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1151 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1154 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1157 _ 8B. 45, 0C
        sub     eax, 3                                  ; 115A _ 83. E8, 03
        sub     esp, 4                                  ; 115D _ 83. EC, 04
        push    ebx                                     ; 1160 _ 53
        push    ecx                                     ; 1161 _ 51
        push    edx                                     ; 1162 _ 52
        push    eax                                     ; 1163 _ 50
        push    7                                       ; 1164 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1166 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1169 _ FF. 75, 08
        call    boxfill8                                ; 116C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1171 _ 83. C4, 20
        nop                                             ; 1174 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1175 _ 8B. 5D, FC
        leave                                           ; 1178 _ C9
        ret                                             ; 1179 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 117A _ 55
        mov     ebp, esp                                ; 117B _ 89. E5
        sub     esp, 24                                 ; 117D _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1180 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1185 _ 89. 45, EC
        movzx   eax, word [?_182]                       ; 1188 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 118F _ 98
        mov     dword [ebp-10H], eax                    ; 1190 _ 89. 45, F0
        movzx   eax, word [?_183]                       ; 1193 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 119A _ 98
        mov     dword [ebp-0CH], eax                    ; 119B _ 89. 45, F4
        sub     esp, 4                                  ; 119E _ 83. EC, 04
        push    table_rgb.1809                          ; 11A1 _ 68, 00000080(d)
        push    15                                      ; 11A6 _ 6A, 0F
        push    0                                       ; 11A8 _ 6A, 00
        call    set_palette                             ; 11AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11AF _ 83. C4, 10
        nop                                             ; 11B2 _ 90
        leave                                           ; 11B3 _ C9
        ret                                             ; 11B4 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 11B5 _ 55
        mov     ebp, esp                                ; 11B6 _ 89. E5
        sub     esp, 24                                 ; 11B8 _ 83. EC, 18
        call    io_load_eflags                          ; 11BB _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 11C0 _ 89. 45, F4
        call    io_cli                                  ; 11C3 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 11C8 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 11CB _ FF. 75, 08
        push    968                                     ; 11CE _ 68, 000003C8
        call    io_out8                                 ; 11D3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11D8 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 11DB _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 11DE _ 89. 45, F0
        jmp     ?_019                                   ; 11E1 _ EB, 65

?_018:  mov     eax, dword [ebp+10H]                    ; 11E3 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 11E6 _ 0F B6. 00
        shr     al, 2                                   ; 11E9 _ C0. E8, 02
        movzx   eax, al                                 ; 11EC _ 0F B6. C0
        sub     esp, 8                                  ; 11EF _ 83. EC, 08
        push    eax                                     ; 11F2 _ 50
        push    969                                     ; 11F3 _ 68, 000003C9
        call    io_out8                                 ; 11F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11FD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1200 _ 8B. 45, 10
        add     eax, 1                                  ; 1203 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1206 _ 0F B6. 00
        shr     al, 2                                   ; 1209 _ C0. E8, 02
        movzx   eax, al                                 ; 120C _ 0F B6. C0
        sub     esp, 8                                  ; 120F _ 83. EC, 08
        push    eax                                     ; 1212 _ 50
        push    969                                     ; 1213 _ 68, 000003C9
        call    io_out8                                 ; 1218 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 121D _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1220 _ 8B. 45, 10
        add     eax, 2                                  ; 1223 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1226 _ 0F B6. 00
        shr     al, 2                                   ; 1229 _ C0. E8, 02
        movzx   eax, al                                 ; 122C _ 0F B6. C0
        sub     esp, 8                                  ; 122F _ 83. EC, 08
        push    eax                                     ; 1232 _ 50
        push    969                                     ; 1233 _ 68, 000003C9
        call    io_out8                                 ; 1238 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 123D _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1240 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 1244 _ 83. 45, F0, 01
?_019:  mov     eax, dword [ebp-10H]                    ; 1248 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 124B _ 3B. 45, 0C
        jle     ?_018                                   ; 124E _ 7E, 93
        sub     esp, 12                                 ; 1250 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 1253 _ FF. 75, F4
        call    io_store_eflags                         ; 1256 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 125B _ 83. C4, 10
        nop                                             ; 125E _ 90
        leave                                           ; 125F _ C9
        ret                                             ; 1260 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1261 _ 55
        mov     ebp, esp                                ; 1262 _ 89. E5
        sub     esp, 20                                 ; 1264 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1267 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 126A _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 126D _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1270 _ 89. 45, FC
        jmp     ?_023                                   ; 1273 _ EB, 33

?_020:  mov     eax, dword [ebp+14H]                    ; 1275 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1278 _ 89. 45, F8
        jmp     ?_022                                   ; 127B _ EB, 1F

?_021:  mov     eax, dword [ebp-4H]                     ; 127D _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1280 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1284 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1286 _ 8B. 45, F8
        add     eax, edx                                ; 1289 _ 01. D0
        mov     edx, eax                                ; 128B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 128D _ 8B. 45, 08
        add     edx, eax                                ; 1290 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1292 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1296 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1298 _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 129C _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 129F _ 3B. 45, 1C
        jle     ?_021                                   ; 12A2 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 12A4 _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 12A8 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 12AB _ 3B. 45, 20
        jle     ?_020                                   ; 12AE _ 7E, C5
        nop                                             ; 12B0 _ 90
        leave                                           ; 12B1 _ C9
        ret                                             ; 12B2 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 12B3 _ 55
        mov     ebp, esp                                ; 12B4 _ 89. E5
        push    edi                                     ; 12B6 _ 57
        push    esi                                     ; 12B7 _ 56
        push    ebx                                     ; 12B8 _ 53
        sub     esp, 16                                 ; 12B9 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 12BC _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 12BF _ 8B. 45, 14
        add     eax, edx                                ; 12C2 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 12C4 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 12C7 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 12CA _ 8B. 45, 18
        add     eax, edx                                ; 12CD _ 01. D0
        mov     dword [ebp-10H], eax                    ; 12CF _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 12D2 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 12D5 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 12D8 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 12DB _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 12DE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 12E1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 12E4 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 12E7 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 12EA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12ED _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12F0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12F3 _ 8B. 00
        push    edi                                     ; 12F5 _ 57
        push    esi                                     ; 12F6 _ 56
        push    ebx                                     ; 12F7 _ 53
        push    ecx                                     ; 12F8 _ 51
        push    15                                      ; 12F9 _ 6A, 0F
        push    edx                                     ; 12FB _ 52
        push    eax                                     ; 12FC _ 50
        call    boxfill8                                ; 12FD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1302 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1305 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1308 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 130B _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 130E _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1311 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1314 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1317 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 131A _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 131D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1320 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1323 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1326 _ 8B. 00
        push    edi                                     ; 1328 _ 57
        push    esi                                     ; 1329 _ 56
        push    ebx                                     ; 132A _ 53
        push    ecx                                     ; 132B _ 51
        push    15                                      ; 132C _ 6A, 0F
        push    edx                                     ; 132E _ 52
        push    eax                                     ; 132F _ 50
        call    boxfill8                                ; 1330 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1335 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1338 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 133B _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 133E _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1341 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1344 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1347 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 134A _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 134D _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1350 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1353 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1356 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1359 _ 8B. 00
        push    edi                                     ; 135B _ 57
        push    esi                                     ; 135C _ 56
        push    ebx                                     ; 135D _ 53
        push    ecx                                     ; 135E _ 51
        push    7                                       ; 135F _ 6A, 07
        push    edx                                     ; 1361 _ 52
        push    eax                                     ; 1362 _ 50
        call    boxfill8                                ; 1363 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1368 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 136B _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 136E _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1371 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1374 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1377 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 137A _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 137D _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1380 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1383 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1386 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1389 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 138C _ 8B. 00
        push    edi                                     ; 138E _ 57
        push    esi                                     ; 138F _ 56
        push    ebx                                     ; 1390 _ 53
        push    ecx                                     ; 1391 _ 51
        push    7                                       ; 1392 _ 6A, 07
        push    edx                                     ; 1394 _ 52
        push    eax                                     ; 1395 _ 50
        call    boxfill8                                ; 1396 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 139B _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 139E _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 13A1 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 13A4 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13A7 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 13AA _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 13AD _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 13B0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13B3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13B6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13B9 _ 8B. 00
        push    esi                                     ; 13BB _ 56
        push    dword [ebp-14H]                         ; 13BC _ FF. 75, EC
        push    ebx                                     ; 13BF _ 53
        push    ecx                                     ; 13C0 _ 51
        push    0                                       ; 13C1 _ 6A, 00
        push    edx                                     ; 13C3 _ 52
        push    eax                                     ; 13C4 _ 50
        call    boxfill8                                ; 13C5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13CA _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 13CD _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 13D0 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 13D3 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13D6 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 13D9 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 13DC _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 13DF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13E2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13E5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13E8 _ 8B. 00
        push    dword [ebp-10H]                         ; 13EA _ FF. 75, F0
        push    esi                                     ; 13ED _ 56
        push    ebx                                     ; 13EE _ 53
        push    ecx                                     ; 13EF _ 51
        push    0                                       ; 13F0 _ 6A, 00
        push    edx                                     ; 13F2 _ 52
        push    eax                                     ; 13F3 _ 50
        call    boxfill8                                ; 13F4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13F9 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 13FC _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 13FF _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1402 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1405 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1408 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 140B _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 140E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1411 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1414 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1417 _ 8B. 00
        push    esi                                     ; 1419 _ 56
        push    dword [ebp-14H]                         ; 141A _ FF. 75, EC
        push    ebx                                     ; 141D _ 53
        push    ecx                                     ; 141E _ 51
        push    8                                       ; 141F _ 6A, 08
        push    edx                                     ; 1421 _ 52
        push    eax                                     ; 1422 _ 50
        call    boxfill8                                ; 1423 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1428 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 142B _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 142E _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1431 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1434 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1437 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 143A _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 143D _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1440 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1443 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1446 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1449 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 144C _ 8B. 00
        push    edi                                     ; 144E _ 57
        push    esi                                     ; 144F _ 56
        push    ebx                                     ; 1450 _ 53
        push    ecx                                     ; 1451 _ 51
        push    8                                       ; 1452 _ 6A, 08
        push    edx                                     ; 1454 _ 52
        push    eax                                     ; 1455 _ 50
        call    boxfill8                                ; 1456 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 145B _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 145E _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1461 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1464 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1467 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 146A _ 8B. 45, 1C
        movzx   ecx, al                                 ; 146D _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1470 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1473 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1476 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1479 _ 8B. 00
        push    dword [ebp-10H]                         ; 147B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 147E _ FF. 75, EC
        push    esi                                     ; 1481 _ 56
        push    ebx                                     ; 1482 _ 53
        push    ecx                                     ; 1483 _ 51
        push    edx                                     ; 1484 _ 52
        push    eax                                     ; 1485 _ 50
        call    boxfill8                                ; 1486 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 148B _ 83. C4, 1C
        nop                                             ; 148E _ 90
        lea     esp, [ebp-0CH]                          ; 148F _ 8D. 65, F4
        pop     ebx                                     ; 1492 _ 5B
        pop     esi                                     ; 1493 _ 5E
        pop     edi                                     ; 1494 _ 5F
        pop     ebp                                     ; 1495 _ 5D
        ret                                             ; 1496 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1497 _ 55
        mov     ebp, esp                                ; 1498 _ 89. E5
        sub     esp, 20                                 ; 149A _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 149D _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 14A0 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 14A3 _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 14AA _ E9, 0000016C

?_024:  mov     edx, dword [ebp-4H]                     ; 14AF _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 14B2 _ 8B. 45, 1C
        add     eax, edx                                ; 14B5 _ 01. D0
        movzx   eax, byte [eax]                         ; 14B7 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 14BA _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 14BD _ 80. 7D, FB, 00
        jns     ?_025                                   ; 14C1 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 14C3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14C6 _ 8B. 45, FC
        add     eax, edx                                ; 14C9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14CB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14CF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14D1 _ 8B. 45, 10
        add     eax, edx                                ; 14D4 _ 01. D0
        mov     edx, eax                                ; 14D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14D8 _ 8B. 45, 08
        add     edx, eax                                ; 14DB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14DD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14E1 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 14E3 _ 0F BE. 45, FB
        and     eax, 40H                                ; 14E7 _ 83. E0, 40
        test    eax, eax                                ; 14EA _ 85. C0
        jz      ?_026                                   ; 14EC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14EE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14F1 _ 8B. 45, FC
        add     eax, edx                                ; 14F4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14F6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14FA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14FC _ 8B. 45, 10
        add     eax, edx                                ; 14FF _ 01. D0
        lea     edx, [eax+1H]                           ; 1501 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1504 _ 8B. 45, 08
        add     edx, eax                                ; 1507 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1509 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 150D _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 150F _ 0F BE. 45, FB
        and     eax, 20H                                ; 1513 _ 83. E0, 20
        test    eax, eax                                ; 1516 _ 85. C0
        jz      ?_027                                   ; 1518 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 151A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 151D _ 8B. 45, FC
        add     eax, edx                                ; 1520 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1522 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1526 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1528 _ 8B. 45, 10
        add     eax, edx                                ; 152B _ 01. D0
        lea     edx, [eax+2H]                           ; 152D _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1530 _ 8B. 45, 08
        add     edx, eax                                ; 1533 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1535 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1539 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 153B _ 0F BE. 45, FB
        and     eax, 10H                                ; 153F _ 83. E0, 10
        test    eax, eax                                ; 1542 _ 85. C0
        jz      ?_028                                   ; 1544 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1546 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1549 _ 8B. 45, FC
        add     eax, edx                                ; 154C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 154E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1552 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1554 _ 8B. 45, 10
        add     eax, edx                                ; 1557 _ 01. D0
        lea     edx, [eax+3H]                           ; 1559 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 155C _ 8B. 45, 08
        add     edx, eax                                ; 155F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1561 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1565 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1567 _ 0F BE. 45, FB
        and     eax, 08H                                ; 156B _ 83. E0, 08
        test    eax, eax                                ; 156E _ 85. C0
        jz      ?_029                                   ; 1570 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1572 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1575 _ 8B. 45, FC
        add     eax, edx                                ; 1578 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 157A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 157E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1580 _ 8B. 45, 10
        add     eax, edx                                ; 1583 _ 01. D0
        lea     edx, [eax+4H]                           ; 1585 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1588 _ 8B. 45, 08
        add     edx, eax                                ; 158B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 158D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1591 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1593 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1597 _ 83. E0, 04
        test    eax, eax                                ; 159A _ 85. C0
        jz      ?_030                                   ; 159C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 159E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15A1 _ 8B. 45, FC
        add     eax, edx                                ; 15A4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15A6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15AA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15AC _ 8B. 45, 10
        add     eax, edx                                ; 15AF _ 01. D0
        lea     edx, [eax+5H]                           ; 15B1 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 15B4 _ 8B. 45, 08
        add     edx, eax                                ; 15B7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15B9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15BD _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 15BF _ 0F BE. 45, FB
        and     eax, 02H                                ; 15C3 _ 83. E0, 02
        test    eax, eax                                ; 15C6 _ 85. C0
        jz      ?_031                                   ; 15C8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 15CA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15CD _ 8B. 45, FC
        add     eax, edx                                ; 15D0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15D2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15D6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15D8 _ 8B. 45, 10
        add     eax, edx                                ; 15DB _ 01. D0
        lea     edx, [eax+6H]                           ; 15DD _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 15E0 _ 8B. 45, 08
        add     edx, eax                                ; 15E3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15E5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15E9 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 15EB _ 0F BE. 45, FB
        and     eax, 01H                                ; 15EF _ 83. E0, 01
        test    eax, eax                                ; 15F2 _ 85. C0
        jz      ?_032                                   ; 15F4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 15F6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15F9 _ 8B. 45, FC
        add     eax, edx                                ; 15FC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15FE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1602 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1604 _ 8B. 45, 10
        add     eax, edx                                ; 1607 _ 01. D0
        lea     edx, [eax+7H]                           ; 1609 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 160C _ 8B. 45, 08
        add     edx, eax                                ; 160F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1611 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1615 _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 1617 _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 161B _ 83. 7D, FC, 0F
        jle     ?_024                                   ; 161F _ 0F 8E, FFFFFE8A
        nop                                             ; 1625 _ 90
        leave                                           ; 1626 _ C9
        ret                                             ; 1627 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1628 _ 55
        mov     ebp, esp                                ; 1629 _ 89. E5
        sub     esp, 20                                 ; 162B _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 162E _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1631 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1634 _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 163B _ E9, 000000B1

?_034:  mov     dword [ebp-8H], 0                       ; 1640 _ C7. 45, F8, 00000000
        jmp     ?_039                                   ; 1647 _ E9, 00000097

?_035:  mov     eax, dword [ebp-4H]                     ; 164C _ 8B. 45, FC
        shl     eax, 4                                  ; 164F _ C1. E0, 04
        mov     edx, eax                                ; 1652 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1654 _ 8B. 45, F8
        add     eax, edx                                ; 1657 _ 01. D0
        add     eax, cursor.1864                        ; 1659 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 165E _ 0F B6. 00
        cmp     al, 42                                  ; 1661 _ 3C, 2A
        jnz     ?_036                                   ; 1663 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1665 _ 8B. 45, FC
        shl     eax, 4                                  ; 1668 _ C1. E0, 04
        mov     edx, eax                                ; 166B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 166D _ 8B. 45, F8
        add     eax, edx                                ; 1670 _ 01. D0
        mov     edx, eax                                ; 1672 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1674 _ 8B. 45, 08
        add     eax, edx                                ; 1677 _ 01. D0
        mov     byte [eax], 0                           ; 1679 _ C6. 00, 00
?_036:  mov     eax, dword [ebp-4H]                     ; 167C _ 8B. 45, FC
        shl     eax, 4                                  ; 167F _ C1. E0, 04
        mov     edx, eax                                ; 1682 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1684 _ 8B. 45, F8
        add     eax, edx                                ; 1687 _ 01. D0
        add     eax, cursor.1864                        ; 1689 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 168E _ 0F B6. 00
        cmp     al, 79                                  ; 1691 _ 3C, 4F
        jnz     ?_037                                   ; 1693 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1695 _ 8B. 45, FC
        shl     eax, 4                                  ; 1698 _ C1. E0, 04
        mov     edx, eax                                ; 169B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 169D _ 8B. 45, F8
        add     eax, edx                                ; 16A0 _ 01. D0
        mov     edx, eax                                ; 16A2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16A4 _ 8B. 45, 08
        add     eax, edx                                ; 16A7 _ 01. D0
        mov     byte [eax], 7                           ; 16A9 _ C6. 00, 07
?_037:  mov     eax, dword [ebp-4H]                     ; 16AC _ 8B. 45, FC
        shl     eax, 4                                  ; 16AF _ C1. E0, 04
        mov     edx, eax                                ; 16B2 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16B4 _ 8B. 45, F8
        add     eax, edx                                ; 16B7 _ 01. D0
        add     eax, cursor.1864                        ; 16B9 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 16BE _ 0F B6. 00
        cmp     al, 46                                  ; 16C1 _ 3C, 2E
        jnz     ?_038                                   ; 16C3 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 16C5 _ 8B. 45, FC
        shl     eax, 4                                  ; 16C8 _ C1. E0, 04
        mov     edx, eax                                ; 16CB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16CD _ 8B. 45, F8
        add     eax, edx                                ; 16D0 _ 01. D0
        mov     edx, eax                                ; 16D2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16D4 _ 8B. 45, 08
        add     edx, eax                                ; 16D7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 16D9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 16DD _ 88. 02
?_038:  add     dword [ebp-8H], 1                       ; 16DF _ 83. 45, F8, 01
?_039:  cmp     dword [ebp-8H], 15                      ; 16E3 _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 16E7 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 16ED _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 16F1 _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 16F5 _ 0F 8E, FFFFFF45
        nop                                             ; 16FB _ 90
        leave                                           ; 16FC _ C9
        ret                                             ; 16FD _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 16FE _ 55
        mov     ebp, esp                                ; 16FF _ 89. E5
        push    ebx                                     ; 1701 _ 53
        sub     esp, 16                                 ; 1702 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1705 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 170C _ EB, 50

?_041:  mov     dword [ebp-0CH], 0                      ; 170E _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 1715 _ EB, 3B

?_042:  mov     eax, dword [ebp-8H]                     ; 1717 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 171A _ 0F AF. 45, 24
        mov     edx, eax                                ; 171E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1720 _ 8B. 45, F4
        add     eax, edx                                ; 1723 _ 01. D0
        mov     edx, eax                                ; 1725 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1727 _ 8B. 45, 20
        add     eax, edx                                ; 172A _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 172C _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 172F _ 8B. 55, F8
        add     edx, ecx                                ; 1732 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1734 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1738 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 173B _ 8B. 4D, F4
        add     ecx, ebx                                ; 173E _ 01. D9
        add     edx, ecx                                ; 1740 _ 01. CA
        mov     ecx, edx                                ; 1742 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1744 _ 8B. 55, 08
        add     edx, ecx                                ; 1747 _ 01. CA
        movzx   eax, byte [eax]                         ; 1749 _ 0F B6. 00
        mov     byte [edx], al                          ; 174C _ 88. 02
        add     dword [ebp-0CH], 1                      ; 174E _ 83. 45, F4, 01
?_043:  mov     eax, dword [ebp-0CH]                    ; 1752 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1755 _ 3B. 45, 10
        jl      ?_042                                   ; 1758 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 175A _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 175E _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1761 _ 3B. 45, 14
        jl      ?_041                                   ; 1764 _ 7C, A8
        nop                                             ; 1766 _ 90
        add     esp, 16                                 ; 1767 _ 83. C4, 10
        pop     ebx                                     ; 176A _ 5B
        pop     ebp                                     ; 176B _ 5D
        ret                                             ; 176C _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 176D _ 55
        mov     ebp, esp                                ; 176E _ 89. E5
        sub     esp, 24                                 ; 1770 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1773 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1778 _ 89. 45, EC
        movzx   eax, word [?_182]                       ; 177B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1782 _ 98
        mov     dword [ebp-10H], eax                    ; 1783 _ 89. 45, F0
        movzx   eax, word [?_183]                       ; 1786 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 178D _ 98
        mov     dword [ebp-0CH], eax                    ; 178E _ 89. 45, F4
        sub     esp, 8                                  ; 1791 _ 83. EC, 08
        push    32                                      ; 1794 _ 6A, 20
        push    32                                      ; 1796 _ 6A, 20
        call    io_out8                                 ; 1798 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 179D _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 17A0 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 17A4 _ 83. EC, 0C
        push    96                                      ; 17A7 _ 6A, 60
        call    io_in8                                  ; 17A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17AE _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 17B1 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 17B4 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 17B8 _ 83. EC, 08
        push    eax                                     ; 17BB _ 50
        push    keyInfo                                 ; 17BC _ 68, 00000008(d)
        call    fifo8_put                               ; 17C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17C6 _ 83. C4, 10
        nop                                             ; 17C9 _ 90
        leave                                           ; 17CA _ C9
        ret                                             ; 17CB _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 17CC _ 55
        mov     ebp, esp                                ; 17CD _ 89. E5
        sub     esp, 40                                 ; 17CF _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 17D2 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 17D5 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 17D8 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 17DC _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 17DF _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 17E2 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 17E6 _ 83. EC, 0C
        push    eax                                     ; 17E9 _ 50
        call    charToVal                               ; 17EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17EF _ 83. C4, 10
        mov     byte [?_181], al                        ; 17F2 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 17F7 _ 0F B6. 45, E4
        shr     al, 4                                   ; 17FB _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 17FE _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1801 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1805 _ 0F BE. C0
        sub     esp, 12                                 ; 1808 _ 83. EC, 0C
        push    eax                                     ; 180B _ 50
        call    charToVal                               ; 180C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1811 _ 83. C4, 10
        mov     byte [?_180], al                        ; 1814 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1819 _ B8, 00000000(d)
        leave                                           ; 181E _ C9
        ret                                             ; 181F _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1820 _ 55
        mov     ebp, esp                                ; 1821 _ 89. E5
        sub     esp, 4                                  ; 1823 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1826 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1829 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 182C _ 80. 7D, FC, 09
        jle     ?_045                                   ; 1830 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1832 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1836 _ 83. C0, 37
        jmp     ?_046                                   ; 1839 _ EB, 07

?_045:  movzx   eax, byte [ebp-4H]                      ; 183B _ 0F B6. 45, FC
        add     eax, 48                                 ; 183F _ 83. C0, 30
?_046:  leave                                           ; 1842 _ C9
        ret                                             ; 1843 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1844 _ 55
        mov     ebp, esp                                ; 1845 _ 89. E5
        sub     esp, 16                                 ; 1847 _ 83. EC, 10
        mov     byte [str.1907], 48                     ; 184A _ C6. 05, 00000330(d), 30
        mov     byte [?_214], 120                       ; 1851 _ C6. 05, 00000331(d), 78
        mov     byte [?_215], 0                         ; 1858 _ C6. 05, 0000033A(d), 00
        mov     dword [ebp-0CH], 2                      ; 185F _ C7. 45, F4, 00000002
        jmp     ?_048                                   ; 1866 _ EB, 0F

?_047:  mov     eax, dword [ebp-0CH]                    ; 1868 _ 8B. 45, F4
        add     eax, str.1907                           ; 186B _ 05, 00000330(d)
        mov     byte [eax], 48                          ; 1870 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1873 _ 83. 45, F4, 01
?_048:  cmp     dword [ebp-0CH], 9                      ; 1877 _ 83. 7D, F4, 09
        jle     ?_047                                   ; 187B _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 187D _ C7. 45, F8, 00000009
        jmp     ?_051                                   ; 1884 _ EB, 48

?_049:  mov     eax, dword [ebp+8H]                     ; 1886 _ 8B. 45, 08
        and     eax, 0FH                                ; 1889 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 188C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 188F _ 8B. 45, 08
        shr     eax, 4                                  ; 1892 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1895 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1898 _ 83. 7D, FC, 09
        jle     ?_050                                   ; 189C _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 189E _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 18A1 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 18A4 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 18A7 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 18AA _ 89. 55, F8
        mov     edx, ecx                                ; 18AD _ 89. CA
        mov     byte [str.1907+eax], dl                 ; 18AF _ 88. 90, 00000330(d)
        jmp     ?_051                                   ; 18B5 _ EB, 17

?_050:  mov     eax, dword [ebp-4H]                     ; 18B7 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 18BA _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 18BD _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 18C0 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 18C3 _ 89. 55, F8
        mov     edx, ecx                                ; 18C6 _ 89. CA
        mov     byte [str.1907+eax], dl                 ; 18C8 _ 88. 90, 00000330(d)
?_051:  cmp     dword [ebp-8H], 1                       ; 18CE _ 83. 7D, F8, 01
        jle     ?_052                                   ; 18D2 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 18D4 _ 83. 7D, 08, 00
        jnz     ?_049                                   ; 18D8 _ 75, AC
?_052:  mov     eax, str.1907                           ; 18DA _ B8, 00000330(d)
        leave                                           ; 18DF _ C9
        ret                                             ; 18E0 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 18E1 _ 55
        mov     ebp, esp                                ; 18E2 _ 89. E5
        sub     esp, 8                                  ; 18E4 _ 83. EC, 08
?_053:  sub     esp, 12                                 ; 18E7 _ 83. EC, 0C
        push    100                                     ; 18EA _ 6A, 64
        call    io_in8                                  ; 18EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18F1 _ 83. C4, 10
        movsx   eax, al                                 ; 18F4 _ 0F BE. C0
        and     eax, 02H                                ; 18F7 _ 83. E0, 02
        test    eax, eax                                ; 18FA _ 85. C0
        jz      ?_054                                   ; 18FC _ 74, 02
        jmp     ?_053                                   ; 18FE _ EB, E7

?_054:  nop                                             ; 1900 _ 90
        nop                                             ; 1901 _ 90
        leave                                           ; 1902 _ C9
        ret                                             ; 1903 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1904 _ 55
        mov     ebp, esp                                ; 1905 _ 89. E5
        sub     esp, 8                                  ; 1907 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 190A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 190F _ 83. EC, 08
        push    96                                      ; 1912 _ 6A, 60
        push    100                                     ; 1914 _ 6A, 64
        call    io_out8                                 ; 1916 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 191B _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 191E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1923 _ 83. EC, 08
        push    71                                      ; 1926 _ 6A, 47
        push    96                                      ; 1928 _ 6A, 60
        call    io_out8                                 ; 192A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 192F _ 83. C4, 10
        nop                                             ; 1932 _ 90
        leave                                           ; 1933 _ C9
        ret                                             ; 1934 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1935 _ 55
        mov     ebp, esp                                ; 1936 _ 89. E5
        sub     esp, 8                                  ; 1938 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 193B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1940 _ 83. EC, 08
        push    212                                     ; 1943 _ 68, 000000D4
        push    100                                     ; 1948 _ 6A, 64
        call    io_out8                                 ; 194A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 194F _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1952 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1957 _ 83. EC, 08
        push    244                                     ; 195A _ 68, 000000F4
        push    96                                      ; 195F _ 6A, 60
        call    io_out8                                 ; 1961 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1966 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1969 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 196C _ C6. 40, 03, 00
        nop                                             ; 1970 _ 90
        leave                                           ; 1971 _ C9
        ret                                             ; 1972 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1973 _ 55
        mov     ebp, esp                                ; 1974 _ 89. E5
        sub     esp, 24                                 ; 1976 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1979 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 197D _ 83. EC, 08
        push    32                                      ; 1980 _ 6A, 20
        push    160                                     ; 1982 _ 68, 000000A0
        call    io_out8                                 ; 1987 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 198C _ 83. C4, 10
        sub     esp, 8                                  ; 198F _ 83. EC, 08
        push    32                                      ; 1992 _ 6A, 20
        push    32                                      ; 1994 _ 6A, 20
        call    io_out8                                 ; 1996 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 199B _ 83. C4, 10
        sub     esp, 12                                 ; 199E _ 83. EC, 0C
        push    96                                      ; 19A1 _ 6A, 60
        call    io_in8                                  ; 19A3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19A8 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 19AB _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 19AE _ 0F B6. 45, F7
        sub     esp, 8                                  ; 19B2 _ 83. EC, 08
        push    eax                                     ; 19B5 _ 50
        push    mouseInfo                               ; 19B6 _ 68, 00000020(d)
        call    fifo8_put                               ; 19BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19C0 _ 83. C4, 10
        nop                                             ; 19C3 _ 90
        leave                                           ; 19C4 _ C9
        ret                                             ; 19C5 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 19C6 _ 55
        mov     ebp, esp                                ; 19C7 _ 89. E5
        sub     esp, 40                                 ; 19C9 _ 83. EC, 28
        call    io_sti                                  ; 19CC _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 19D1 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 19D6 _ 89. 45, E8
        movzx   eax, word [?_182]                       ; 19D9 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 19E0 _ 98
        mov     dword [ebp-14H], eax                    ; 19E1 _ 89. 45, EC
        movzx   eax, word [?_183]                       ; 19E4 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 19EB _ 98
        mov     dword [ebp-10H], eax                    ; 19EC _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 19EF _ C6. 45, E7, 00
        sub     esp, 12                                 ; 19F3 _ 83. EC, 0C
        push    keyInfo                                 ; 19F6 _ 68, 00000008(d)
        call    fifo8_get                               ; 19FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A00 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1A03 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1A06 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1A0A _ 83. EC, 0C
        push    eax                                     ; 1A0D _ 50
        call    charToHex                               ; 1A0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A13 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1A16 _ 89. 45, F4
        mov     edx, dword [line.1940]                  ; 1A19 _ 8B. 15, 0000033C(d)
        mov     eax, dword [pos.1939]                   ; 1A1F _ A1, 00000340(d)
        sub     esp, 8                                  ; 1A24 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1A27 _ FF. 75, F4
        push    7                                       ; 1A2A _ 6A, 07
        push    edx                                     ; 1A2C _ 52
        push    eax                                     ; 1A2D _ 50
        push    dword [ebp+0CH]                         ; 1A2E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A31 _ FF. 75, 08
        call    showString                              ; 1A34 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A39 _ 83. C4, 20
        mov     eax, dword [pos.1939]                   ; 1A3C _ A1, 00000340(d)
        add     eax, 32                                 ; 1A41 _ 83. C0, 20
        mov     dword [pos.1939], eax                   ; 1A44 _ A3, 00000340(d)
        mov     eax, dword [pos.1939]                   ; 1A49 _ A1, 00000340(d)
        cmp     dword [ebp-14H], eax                    ; 1A4E _ 39. 45, EC
        jnz     ?_057                                   ; 1A51 _ 75, 28
        mov     eax, dword [line.1940]                  ; 1A53 _ A1, 0000033C(d)
        cmp     dword [ebp-10H], eax                    ; 1A58 _ 39. 45, F0
        jz      ?_055                                   ; 1A5B _ 74, 0A
        mov     eax, dword [line.1940]                  ; 1A5D _ A1, 0000033C(d)
        add     eax, 16                                 ; 1A62 _ 83. C0, 10
        jmp     ?_056                                   ; 1A65 _ EB, 05

?_055:  mov     eax, 0                                  ; 1A67 _ B8, 00000000
?_056:  mov     dword [line.1940], eax                  ; 1A6C _ A3, 0000033C(d)
        mov     dword [pos.1939], 0                     ; 1A71 _ C7. 05, 00000340(d), 00000000
?_057:  nop                                             ; 1A7B _ 90
        leave                                           ; 1A7C _ C9
        ret                                             ; 1A7D _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1A7E _ 55
        mov     ebp, esp                                ; 1A7F _ 89. E5
        sub     esp, 24                                 ; 1A81 _ 83. EC, 18
        call    io_sti                                  ; 1A84 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1A89 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1A8D _ 83. EC, 0C
        push    mouseInfo                               ; 1A90 _ 68, 00000020(d)
        call    fifo8_get                               ; 1A95 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A9A _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1A9D _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1AA0 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1AA4 _ 83. EC, 08
        push    eax                                     ; 1AA7 _ 50
        push    mouse_move                              ; 1AA8 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1AAD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AB2 _ 83. C4, 10
        test    eax, eax                                ; 1AB5 _ 85. C0
        jz      ?_058                                   ; 1AB7 _ 74, 60
        sub     esp, 4                                  ; 1AB9 _ 83. EC, 04
        push    mouse_move                              ; 1ABC _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1AC1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AC4 _ FF. 75, 08
        call    computeMousePos                         ; 1AC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ACC _ 83. C4, 10
        mov     edx, dword [my]                         ; 1ACF _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1AD5 _ A1, 000000F0(d)
        push    edx                                     ; 1ADA _ 52
        push    eax                                     ; 1ADB _ 50
        push    dword [ebp+10H]                         ; 1ADC _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1ADF _ FF. 75, 08
        call    sheet_slide                             ; 1AE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AE7 _ 83. C4, 10
        mov     eax, dword [?_184]                      ; 1AEA _ A1, 000000EC(d)
        and     eax, 01H                                ; 1AEF _ 83. E0, 01
        test    eax, eax                                ; 1AF2 _ 85. C0
        jz      ?_058                                   ; 1AF4 _ 74, 23
        mov     eax, dword [my]                         ; 1AF6 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1AFB _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1AFE _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1B03 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1B06 _ A1, 00000224(d)
        push    ecx                                     ; 1B0B _ 51
        push    edx                                     ; 1B0C _ 52
        push    eax                                     ; 1B0D _ 50
        push    dword [ebp+8H]                          ; 1B0E _ FF. 75, 08
        call    sheet_slide                             ; 1B11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B16 _ 83. C4, 10
?_058:  nop                                             ; 1B19 _ 90
        leave                                           ; 1B1A _ C9
        ret                                             ; 1B1B _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1B1C _ 55
        mov     ebp, esp                                ; 1B1D _ 89. E5
        sub     esp, 4                                  ; 1B1F _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1B22 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1B25 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1B28 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B2B _ 0F B6. 40, 03
        test    al, al                                  ; 1B2F _ 84. C0
        jnz     ?_060                                   ; 1B31 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1B33 _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 1B37 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1B39 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1B3C _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 1B40 _ B8, 00000000
        jmp     ?_067                                   ; 1B45 _ E9, 0000010C

?_060:  mov     eax, dword [ebp+8H]                     ; 1B4A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B4D _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1B51 _ 3C, 01
        jnz     ?_062                                   ; 1B53 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1B55 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1B59 _ 83. C8, 37
        cmp     al, 63                                  ; 1B5C _ 3C, 3F
        jnz     ?_061                                   ; 1B5E _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1B60 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B63 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1B67 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1B69 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1B6C _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 1B70 _ B8, 00000000
        jmp     ?_067                                   ; 1B75 _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 1B7A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B7D _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1B81 _ 3C, 02
        jnz     ?_063                                   ; 1B83 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1B85 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B88 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1B8C _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B8F _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1B92 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1B96 _ B8, 00000000
        jmp     ?_067                                   ; 1B9B _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 1BA0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1BA3 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1BA7 _ 3C, 03
        jne     ?_066                                   ; 1BA9 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1BAF _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1BB2 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1BB6 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1BB9 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1BBC _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1BC0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BC3 _ 0F B6. 00
        movzx   eax, al                                 ; 1BC6 _ 0F B6. C0
        and     eax, 07H                                ; 1BC9 _ 83. E0, 07
        mov     edx, eax                                ; 1BCC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BCE _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1BD1 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1BD4 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1BD7 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1BDB _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1BDE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1BE1 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BE4 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1BE7 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1BEB _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1BEE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1BF1 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1BF4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BF7 _ 0F B6. 00
        movzx   eax, al                                 ; 1BFA _ 0F B6. C0
        and     eax, 10H                                ; 1BFD _ 83. E0, 10
        test    eax, eax                                ; 1C00 _ 85. C0
        jz      ?_064                                   ; 1C02 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1C04 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1C07 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1C0A _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C0F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C11 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1C14 _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 1C17 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C1A _ 0F B6. 00
        movzx   eax, al                                 ; 1C1D _ 0F B6. C0
        and     eax, 20H                                ; 1C20 _ 83. E0, 20
        test    eax, eax                                ; 1C23 _ 85. C0
        jz      ?_065                                   ; 1C25 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1C27 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C2A _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1C2D _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C32 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C34 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C37 _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 1C3A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C3D _ 8B. 40, 08
        neg     eax                                     ; 1C40 _ F7. D8
        mov     edx, eax                                ; 1C42 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C44 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C47 _ 89. 50, 08
        mov     eax, 1                                  ; 1C4A _ B8, 00000001
        jmp     ?_067                                   ; 1C4F _ EB, 05

?_066:  mov     eax, 4294967295                         ; 1C51 _ B8, FFFFFFFF
?_067:  leave                                           ; 1C56 _ C9
        ret                                             ; 1C57 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1C58 _ 55
        mov     ebp, esp                                ; 1C59 _ 89. E5
        sub     esp, 16                                 ; 1C5B _ 83. EC, 10
        movzx   eax, word [?_182]                       ; 1C5E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1C65 _ 98
        mov     dword [ebp-8H], eax                     ; 1C66 _ 89. 45, F8
        movzx   eax, word [?_183]                       ; 1C69 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1C70 _ 98
        mov     dword [ebp-4H], eax                     ; 1C71 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1C74 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1C77 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1C7A _ A1, 000000F0(d)
        add     eax, edx                                ; 1C7F _ 01. D0
        mov     dword [mx], eax                         ; 1C81 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1C86 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1C89 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1C8C _ A1, 000000F4(d)
        add     eax, edx                                ; 1C91 _ 01. D0
        mov     dword [my], eax                         ; 1C93 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1C98 _ A1, 000000F0(d)
        test    eax, eax                                ; 1C9D _ 85. C0
        jns     ?_068                                   ; 1C9F _ 79, 0A
        mov     dword [mx], 0                           ; 1CA1 _ C7. 05, 000000F0(d), 00000000
?_068:  mov     eax, dword [my]                         ; 1CAB _ A1, 000000F4(d)
        test    eax, eax                                ; 1CB0 _ 85. C0
        jns     ?_069                                   ; 1CB2 _ 79, 0A
        mov     dword [my], 0                           ; 1CB4 _ C7. 05, 000000F4(d), 00000000
?_069:  mov     eax, dword [ebp-8H]                     ; 1CBE _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1CC1 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1CC4 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1CC9 _ 39. C2
        jge     ?_070                                   ; 1CCB _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1CCD _ 8B. 45, F8
        sub     eax, 9                                  ; 1CD0 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1CD3 _ A3, 000000F0(d)
?_070:  mov     eax, dword [ebp-4H]                     ; 1CD8 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1CDB _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1CDE _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1CE3 _ 39. C2
        jge     ?_071                                   ; 1CE5 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1CE7 _ 8B. 45, FC
        sub     eax, 1                                  ; 1CEA _ 83. E8, 01
        mov     dword [my], eax                         ; 1CED _ A3, 000000F4(d)
?_071:  nop                                             ; 1CF2 _ 90
        leave                                           ; 1CF3 _ C9
        ret                                             ; 1CF4 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1CF5 _ 55
        mov     ebp, esp                                ; 1CF6 _ 89. E5
        sub     esp, 56                                 ; 1CF8 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1CFB _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1D02 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1D09 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1D10 _ C7. 45, DC, 00000050
        push    100                                     ; 1D17 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1D19 _ FF. 75, 1C
        push    0                                       ; 1D1C _ 6A, 00
        push    0                                       ; 1D1E _ 6A, 00
        push    14                                      ; 1D20 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1D22 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1D25 _ FF. 75, 14
        call    boxfill8                                ; 1D28 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D2D _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1D30 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D33 _ 0F BE. C0
        sub     esp, 8                                  ; 1D36 _ 83. EC, 08
        push    ?_174                                   ; 1D39 _ 68, 00000050(d)
        push    eax                                     ; 1D3E _ 50
        push    dword [ebp-2CH]                         ; 1D3F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D42 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D45 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D48 _ FF. 75, 08
        call    showString                              ; 1D4B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D50 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1D53 _ 8B. 45, 18
        sub     esp, 12                                 ; 1D56 _ 83. EC, 0C
        push    eax                                     ; 1D59 _ 50
        call    intToHexStr                             ; 1D5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D5F _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1D62 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1D65 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D68 _ 0F BE. C0
        sub     esp, 8                                  ; 1D6B _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1D6E _ FF. 75, E0
        push    eax                                     ; 1D71 _ 50
        push    dword [ebp-2CH]                         ; 1D72 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D75 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D78 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D7B _ FF. 75, 08
        call    showString                              ; 1D7E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D83 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D86 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D8A _ 8B. 45, 20
        movsx   eax, al                                 ; 1D8D _ 0F BE. C0
        sub     esp, 8                                  ; 1D90 _ 83. EC, 08
        push    ?_175                                   ; 1D93 _ 68, 0000005A(d)
        push    eax                                     ; 1D98 _ 50
        push    dword [ebp-2CH]                         ; 1D99 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D9C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D9F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DA2 _ FF. 75, 08
        call    showString                              ; 1DA5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DAA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DAD _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1DB0 _ 8B. 00
        sub     esp, 12                                 ; 1DB2 _ 83. EC, 0C
        push    eax                                     ; 1DB5 _ 50
        call    intToHexStr                             ; 1DB6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DBB _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1DBE _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1DC1 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DC4 _ 0F BE. C0
        sub     esp, 8                                  ; 1DC7 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1DCA _ FF. 75, E4
        push    eax                                     ; 1DCD _ 50
        push    dword [ebp-2CH]                         ; 1DCE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DD1 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DD4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DD7 _ FF. 75, 08
        call    showString                              ; 1DDA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DDF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DE2 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1DE6 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DE9 _ 0F BE. C0
        sub     esp, 8                                  ; 1DEC _ 83. EC, 08
        push    ?_176                                   ; 1DEF _ 68, 00000068(d)
        push    eax                                     ; 1DF4 _ 50
        push    dword [ebp-2CH]                         ; 1DF5 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1DF8 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1DFB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DFE _ FF. 75, 08
        call    showString                              ; 1E01 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E06 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E09 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1E0C _ 8B. 40, 04
        sub     esp, 12                                 ; 1E0F _ 83. EC, 0C
        push    eax                                     ; 1E12 _ 50
        call    intToHexStr                             ; 1E13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E18 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1E1B _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1E1E _ 8B. 45, 20
        movsx   eax, al                                 ; 1E21 _ 0F BE. C0
        sub     esp, 8                                  ; 1E24 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1E27 _ FF. 75, E8
        push    eax                                     ; 1E2A _ 50
        push    dword [ebp-2CH]                         ; 1E2B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E2E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E31 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E34 _ FF. 75, 08
        call    showString                              ; 1E37 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E3C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E3F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E43 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E46 _ 0F BE. C0
        sub     esp, 8                                  ; 1E49 _ 83. EC, 08
        push    ?_177                                   ; 1E4C _ 68, 00000077(d)
        push    eax                                     ; 1E51 _ 50
        push    dword [ebp-2CH]                         ; 1E52 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E55 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E58 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E5B _ FF. 75, 08
        call    showString                              ; 1E5E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E63 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E66 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1E69 _ 8B. 40, 08
        sub     esp, 12                                 ; 1E6C _ 83. EC, 0C
        push    eax                                     ; 1E6F _ 50
        call    intToHexStr                             ; 1E70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E75 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1E78 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1E7B _ 8B. 45, 20
        movsx   eax, al                                 ; 1E7E _ 0F BE. C0
        sub     esp, 8                                  ; 1E81 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1E84 _ FF. 75, EC
        push    eax                                     ; 1E87 _ 50
        push    dword [ebp-2CH]                         ; 1E88 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E8B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E8E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E91 _ FF. 75, 08
        call    showString                              ; 1E94 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E99 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E9C _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1EA0 _ 8B. 45, 20
        movsx   eax, al                                 ; 1EA3 _ 0F BE. C0
        sub     esp, 8                                  ; 1EA6 _ 83. EC, 08
        push    ?_178                                   ; 1EA9 _ 68, 00000083(d)
        push    eax                                     ; 1EAE _ 50
        push    dword [ebp-2CH]                         ; 1EAF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1EB2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1EB5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EB8 _ FF. 75, 08
        call    showString                              ; 1EBB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EC0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1EC3 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1EC6 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1EC9 _ 83. EC, 0C
        push    eax                                     ; 1ECC _ 50
        call    intToHexStr                             ; 1ECD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ED2 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1ED5 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1ED8 _ 8B. 45, 20
        movsx   eax, al                                 ; 1EDB _ 0F BE. C0
        sub     esp, 8                                  ; 1EDE _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1EE1 _ FF. 75, F0
        push    eax                                     ; 1EE4 _ 50
        push    dword [ebp-2CH]                         ; 1EE5 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1EE8 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1EEB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EEE _ FF. 75, 08
        call    showString                              ; 1EF1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EF6 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1EF9 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1EFD _ 8B. 45, 20
        movsx   eax, al                                 ; 1F00 _ 0F BE. C0
        sub     esp, 8                                  ; 1F03 _ 83. EC, 08
        push    ?_179                                   ; 1F06 _ 68, 00000090(d)
        push    eax                                     ; 1F0B _ 50
        push    dword [ebp-2CH]                         ; 1F0C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1F0F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1F12 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F15 _ FF. 75, 08
        call    showString                              ; 1F18 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F1D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1F20 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1F23 _ 8B. 40, 10
        sub     esp, 12                                 ; 1F26 _ 83. EC, 0C
        push    eax                                     ; 1F29 _ 50
        call    intToHexStr                             ; 1F2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F2F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F32 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1F35 _ 8B. 45, 20
        movsx   eax, al                                 ; 1F38 _ 0F BE. C0
        sub     esp, 8                                  ; 1F3B _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1F3E _ FF. 75, F4
        push    eax                                     ; 1F41 _ 50
        push    dword [ebp-2CH]                         ; 1F42 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1F45 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1F48 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F4B _ FF. 75, 08
        call    showString                              ; 1F4E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F53 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1F56 _ 83. 45, D4, 10
        nop                                             ; 1F5A _ 90
        leave                                           ; 1F5B _ C9
        ret                                             ; 1F5C _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1F5D _ 55
        mov     ebp, esp                                ; 1F5E _ 89. E5
        sub     esp, 24                                 ; 1F60 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1F63 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1F68 _ 83. EC, 08
        push    37500                                   ; 1F6B _ 68, 0000927C
        push    eax                                     ; 1F70 _ 50
        call    memman_alloc_4K                         ; 1F71 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F76 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1F79 _ 89. 45, F0
        sub     esp, 12                                 ; 1F7C _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1F7F _ FF. 75, 08
        call    sheet_alloc                             ; 1F82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F87 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F8A _ 89. 45, F4
        sub     esp, 12                                 ; 1F8D _ 83. EC, 0C
        push    99                                      ; 1F90 _ 6A, 63
        push    125                                     ; 1F92 _ 6A, 7D
        push    300                                     ; 1F94 _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1F99 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1F9C _ FF. 75, F4
        call    sheet_setbuf                            ; 1F9F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FA4 _ 83. C4, 20
        sub     esp, 4                                  ; 1FA7 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1FAA _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1FAD _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FB0 _ FF. 75, 08
        call    make_window8                            ; 1FB3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FB8 _ 83. C4, 10
        sub     esp, 8                                  ; 1FBB _ 83. EC, 08
        push    7                                       ; 1FBE _ 6A, 07
        push    16                                      ; 1FC0 _ 6A, 10
        push    150                                     ; 1FC2 _ 68, 00000096
        push    42                                      ; 1FC7 _ 6A, 2A
        push    8                                       ; 1FC9 _ 6A, 08
        push    dword [ebp-0CH]                         ; 1FCB _ FF. 75, F4
        call    make_textbox8                           ; 1FCE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FD3 _ 83. C4, 20
        push    dword [ebp+14H]                         ; 1FD6 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1FD9 _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 1FDC _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FDF _ FF. 75, 08
        call    sheet_slide                             ; 1FE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FE7 _ 83. C4, 10
        sub     esp, 4                                  ; 1FEA _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1FED _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1FF0 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FF3 _ FF. 75, 08
        call    sheet_level_updown                      ; 1FF6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FFB _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1FFE _ 8B. 45, F4
        leave                                           ; 2001 _ C9
        ret                                             ; 2002 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 2003 _ 55
        mov     ebp, esp                                ; 2004 _ 89. E5
        push    ebx                                     ; 2006 _ 53
        sub     esp, 36                                 ; 2007 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 200A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 200D _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2010 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2013 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2016 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2019 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 201C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 201F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2022 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2025 _ 8B. 00
        push    0                                       ; 2027 _ 6A, 00
        push    edx                                     ; 2029 _ 52
        push    0                                       ; 202A _ 6A, 00
        push    0                                       ; 202C _ 6A, 00
        push    8                                       ; 202E _ 6A, 08
        push    dword [ebp-10H]                         ; 2030 _ FF. 75, F0
        push    eax                                     ; 2033 _ 50
        call    boxfill8                                ; 2034 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2039 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 203C _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 203F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2042 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2045 _ 8B. 00
        push    1                                       ; 2047 _ 6A, 01
        push    edx                                     ; 2049 _ 52
        push    1                                       ; 204A _ 6A, 01
        push    1                                       ; 204C _ 6A, 01
        push    7                                       ; 204E _ 6A, 07
        push    dword [ebp-10H]                         ; 2050 _ FF. 75, F0
        push    eax                                     ; 2053 _ 50
        call    boxfill8                                ; 2054 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2059 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 205C _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 205F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2062 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2065 _ 8B. 00
        push    edx                                     ; 2067 _ 52
        push    0                                       ; 2068 _ 6A, 00
        push    0                                       ; 206A _ 6A, 00
        push    0                                       ; 206C _ 6A, 00
        push    8                                       ; 206E _ 6A, 08
        push    dword [ebp-10H]                         ; 2070 _ FF. 75, F0
        push    eax                                     ; 2073 _ 50
        call    boxfill8                                ; 2074 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2079 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 207C _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 207F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2082 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2085 _ 8B. 00
        push    edx                                     ; 2087 _ 52
        push    1                                       ; 2088 _ 6A, 01
        push    1                                       ; 208A _ 6A, 01
        push    1                                       ; 208C _ 6A, 01
        push    7                                       ; 208E _ 6A, 07
        push    dword [ebp-10H]                         ; 2090 _ FF. 75, F0
        push    eax                                     ; 2093 _ 50
        call    boxfill8                                ; 2094 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2099 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 209C _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 209F _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 20A2 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 20A5 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 20A8 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 20AB _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 20AE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20B1 _ 8B. 00
        push    ebx                                     ; 20B3 _ 53
        push    ecx                                     ; 20B4 _ 51
        push    1                                       ; 20B5 _ 6A, 01
        push    edx                                     ; 20B7 _ 52
        push    15                                      ; 20B8 _ 6A, 0F
        push    dword [ebp-10H]                         ; 20BA _ FF. 75, F0
        push    eax                                     ; 20BD _ 50
        call    boxfill8                                ; 20BE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20C3 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20C6 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 20C9 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 20CC _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 20CF _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 20D2 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 20D5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20D8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20DB _ 8B. 00
        push    ebx                                     ; 20DD _ 53
        push    ecx                                     ; 20DE _ 51
        push    0                                       ; 20DF _ 6A, 00
        push    edx                                     ; 20E1 _ 52
        push    0                                       ; 20E2 _ 6A, 00
        push    dword [ebp-10H]                         ; 20E4 _ FF. 75, F0
        push    eax                                     ; 20E7 _ 50
        call    boxfill8                                ; 20E8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20ED _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20F0 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 20F3 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 20F6 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 20F9 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 20FC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20FF _ 8B. 00
        push    ecx                                     ; 2101 _ 51
        push    edx                                     ; 2102 _ 52
        push    2                                       ; 2103 _ 6A, 02
        push    2                                       ; 2105 _ 6A, 02
        push    8                                       ; 2107 _ 6A, 08
        push    dword [ebp-10H]                         ; 2109 _ FF. 75, F0
        push    eax                                     ; 210C _ 50
        call    boxfill8                                ; 210D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2112 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2115 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2118 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 211B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 211E _ 8B. 00
        push    20                                      ; 2120 _ 6A, 14
        push    edx                                     ; 2122 _ 52
        push    3                                       ; 2123 _ 6A, 03
        push    3                                       ; 2125 _ 6A, 03
        push    12                                      ; 2127 _ 6A, 0C
        push    dword [ebp-10H]                         ; 2129 _ FF. 75, F0
        push    eax                                     ; 212C _ 50
        call    boxfill8                                ; 212D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2132 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2135 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2138 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 213B _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 213E _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2141 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2144 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2147 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 214A _ 8B. 00
        push    ebx                                     ; 214C _ 53
        push    ecx                                     ; 214D _ 51
        push    edx                                     ; 214E _ 52
        push    1                                       ; 214F _ 6A, 01
        push    15                                      ; 2151 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2153 _ FF. 75, F0
        push    eax                                     ; 2156 _ 50
        call    boxfill8                                ; 2157 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 215C _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 215F _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2162 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2165 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2168 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 216B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 216E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2171 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2174 _ 8B. 00
        push    ebx                                     ; 2176 _ 53
        push    ecx                                     ; 2177 _ 51
        push    edx                                     ; 2178 _ 52
        push    0                                       ; 2179 _ 6A, 00
        push    0                                       ; 217B _ 6A, 00
        push    dword [ebp-10H]                         ; 217D _ FF. 75, F0
        push    eax                                     ; 2180 _ 50
        call    boxfill8                                ; 2181 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2186 _ 83. C4, 1C
        sub     esp, 8                                  ; 2189 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 218C _ FF. 75, 10
        push    7                                       ; 218F _ 6A, 07
        push    4                                       ; 2191 _ 6A, 04
        push    8                                       ; 2193 _ 6A, 08
        push    dword [ebp+0CH]                         ; 2195 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2198 _ FF. 75, 08
        call    showString                              ; 219B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21A0 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 21A3 _ C7. 45, E8, 00000000
        jmp     ?_078                                   ; 21AA _ EB, 7D

?_072:  mov     dword [ebp-14H], 0                      ; 21AC _ C7. 45, EC, 00000000
        jmp     ?_077                                   ; 21B3 _ EB, 6A

?_073:  mov     eax, dword [ebp-18H]                    ; 21B5 _ 8B. 45, E8
        shl     eax, 4                                  ; 21B8 _ C1. E0, 04
        mov     edx, eax                                ; 21BB _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 21BD _ 8B. 45, EC
        add     eax, edx                                ; 21C0 _ 01. D0
        add     eax, closebtn.1991                      ; 21C2 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 21C7 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 21CA _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 21CD _ 80. 7D, E7, 40
        jnz     ?_074                                   ; 21D1 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 21D3 _ C6. 45, E7, 00
        jmp     ?_076                                   ; 21D7 _ EB, 16

?_074:  cmp     byte [ebp-19H], 36                      ; 21D9 _ 80. 7D, E7, 24
        jnz     ?_075                                   ; 21DD _ 75, 06
        mov     byte [ebp-19H], 15                      ; 21DF _ C6. 45, E7, 0F
        jmp     ?_076                                   ; 21E3 _ EB, 0A

?_075:  cmp     byte [ebp-19H], 81                      ; 21E5 _ 80. 7D, E7, 51
        jnz     ?_076                                   ; 21E9 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 21EB _ C6. 45, E7, 08
?_076:  mov     eax, dword [ebp+0CH]                    ; 21EF _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 21F2 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 21F4 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 21F7 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 21FA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 21FD _ 8B. 40, 04
        imul    ecx, eax                                ; 2200 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 2203 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2206 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 2209 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 220C _ 8B. 45, EC
        add     eax, ebx                                ; 220F _ 01. D8
        add     eax, ecx                                ; 2211 _ 01. C8
        add     edx, eax                                ; 2213 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 2215 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 2219 _ 88. 02
        add     dword [ebp-14H], 1                      ; 221B _ 83. 45, EC, 01
?_077:  cmp     dword [ebp-14H], 15                     ; 221F _ 83. 7D, EC, 0F
        jle     ?_073                                   ; 2223 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 2225 _ 83. 45, E8, 01
?_078:  cmp     dword [ebp-18H], 13                     ; 2229 _ 83. 7D, E8, 0D
        jle     ?_072                                   ; 222D _ 0F 8E, FFFFFF79
        nop                                             ; 2233 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2234 _ 8B. 5D, FC
        leave                                           ; 2237 _ C9
        ret                                             ; 2238 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2239 _ 55
        mov     ebp, esp                                ; 223A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 223C _ 8B. 45, 08
        mov     dword [eax], 0                          ; 223F _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2245 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2248 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 224F _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2252 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2259 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 225C _ C7. 40, 0C, 00000000
        nop                                             ; 2263 _ 90
        pop     ebp                                     ; 2264 _ 5D
        ret                                             ; 2265 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2266 _ 55
        mov     ebp, esp                                ; 2267 _ 89. E5
        sub     esp, 16                                 ; 2269 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 226C _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2273 _ C7. 45, FC, 00000000
        jmp     ?_080                                   ; 227A _ EB, 14

?_079:  mov     eax, dword [ebp+8H]                     ; 227C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 227F _ 8B. 55, FC
        add     edx, 2                                  ; 2282 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2285 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2289 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 228C _ 83. 45, FC, 01
?_080:  mov     eax, dword [ebp+8H]                     ; 2290 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2293 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2295 _ 39. 45, FC
        jl      ?_079                                   ; 2298 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 229A _ 8B. 45, F8
        leave                                           ; 229D _ C9
        ret                                             ; 229E _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 229F _ 55
        mov     ebp, esp                                ; 22A0 _ 89. E5
        sub     esp, 16                                 ; 22A2 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22A5 _ C7. 45, F8, 00000000
        jmp     ?_084                                   ; 22AC _ E9, 00000085

?_081:  mov     eax, dword [ebp+8H]                     ; 22B1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22B4 _ 8B. 55, F8
        add     edx, 2                                  ; 22B7 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22BA _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 22BE _ 39. 45, 0C
        ja      ?_083                                   ; 22C1 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 22C3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22C6 _ 8B. 55, F8
        add     edx, 2                                  ; 22C9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 22CC _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 22CF _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 22D2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22D5 _ 8B. 55, F8
        add     edx, 2                                  ; 22D8 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 22DB _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 22DE _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 22E1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 22E4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22E7 _ 8B. 55, F8
        add     edx, 2                                  ; 22EA _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 22ED _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 22F0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22F3 _ 8B. 55, F8
        add     edx, 2                                  ; 22F6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22F9 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 22FD _ 2B. 45, 0C
        mov     edx, eax                                ; 2300 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2302 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2305 _ 8B. 4D, F8
        add     ecx, 2                                  ; 2308 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 230B _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 230F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2312 _ 8B. 55, F8
        add     edx, 2                                  ; 2315 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2318 _ 8B. 44 D0, 04
        test    eax, eax                                ; 231C _ 85. C0
        jnz     ?_082                                   ; 231E _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2320 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2323 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2325 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2328 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 232B _ 89. 10
?_082:  mov     eax, dword [ebp-4H]                     ; 232D _ 8B. 45, FC
        jmp     ?_085                                   ; 2330 _ EB, 17

?_083:  add     dword [ebp-8H], 1                       ; 2332 _ 83. 45, F8, 01
?_084:  mov     eax, dword [ebp+8H]                     ; 2336 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2339 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 233B _ 39. 45, F8
        jl      ?_081                                   ; 233E _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2344 _ B8, 00000000
?_085:  leave                                           ; 2349 _ C9
        ret                                             ; 234A _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 234B _ 55
        mov     ebp, esp                                ; 234C _ 89. E5
        sub     esp, 16                                 ; 234E _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2351 _ 8B. 45, 0C
        add     eax, 4095                               ; 2354 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2359 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 235E _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2361 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2364 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2367 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 236C _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 236F _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2372 _ 8B. 45, FC
        leave                                           ; 2375 _ C9
        ret                                             ; 2376 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2377 _ 55
        mov     ebp, esp                                ; 2378 _ 89. E5
        push    ebx                                     ; 237A _ 53
        sub     esp, 16                                 ; 237B _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 237E _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 2385 _ EB, 15

?_086:  mov     eax, dword [ebp+8H]                     ; 2387 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 238A _ 8B. 55, F4
        add     edx, 2                                  ; 238D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2390 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2393 _ 39. 45, 0C
        jc      ?_088                                   ; 2396 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2398 _ 83. 45, F4, 01
?_087:  mov     eax, dword [ebp+8H]                     ; 239C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 239F _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 23A1 _ 39. 45, F4
        jl      ?_086                                   ; 23A4 _ 7C, E1
        jmp     ?_089                                   ; 23A6 _ EB, 01

?_088:  nop                                             ; 23A8 _ 90
?_089:  cmp     dword [ebp-0CH], 0                      ; 23A9 _ 83. 7D, F4, 00
        jle     ?_091                                   ; 23AD _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 23B3 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23B6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23B9 _ 8B. 45, 08
        add     edx, 2                                  ; 23BC _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 23BF _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 23C2 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 23C5 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 23C8 _ 8B. 45, 08
        add     ecx, 2                                  ; 23CB _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 23CE _ 8B. 44 C8, 04
        add     eax, edx                                ; 23D2 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 23D4 _ 39. 45, 0C
        jne     ?_091                                   ; 23D7 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 23DD _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23E0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23E3 _ 8B. 45, 08
        add     edx, 2                                  ; 23E6 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 23E9 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 23ED _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 23F0 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 23F3 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 23F6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 23F9 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 23FC _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 23FF _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2403 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2406 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2408 _ 39. 45, F4
        jge     ?_090                                   ; 240B _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 240D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2410 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2413 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2416 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2419 _ 8B. 55, F4
        add     edx, 2                                  ; 241C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 241F _ 8B. 04 D0
        cmp     ecx, eax                                ; 2422 _ 39. C1
        jnz     ?_090                                   ; 2424 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2426 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2429 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 242C _ 8B. 45, 08
        add     edx, 2                                  ; 242F _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2432 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2436 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2439 _ 8B. 4D, F4
        add     ecx, 2                                  ; 243C _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 243F _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2443 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2446 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2449 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 244C _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 244F _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2452 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2456 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2459 _ 8B. 00
        lea     edx, [eax-1H]                           ; 245B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 245E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2461 _ 89. 10
?_090:  mov     eax, 0                                  ; 2463 _ B8, 00000000
        jmp     ?_097                                   ; 2468 _ E9, 0000011C

?_091:  mov     eax, dword [ebp+8H]                     ; 246D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2470 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2472 _ 39. 45, F4
        jge     ?_092                                   ; 2475 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2477 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 247A _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 247D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2480 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2483 _ 8B. 55, F4
        add     edx, 2                                  ; 2486 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2489 _ 8B. 04 D0
        cmp     ecx, eax                                ; 248C _ 39. C1
        jnz     ?_092                                   ; 248E _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2490 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2493 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2496 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2499 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 249C _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 249F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24A2 _ 8B. 55, F4
        add     edx, 2                                  ; 24A5 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 24A8 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 24AC _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24AF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24B2 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24B5 _ 8B. 55, F4
        add     edx, 2                                  ; 24B8 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 24BB _ 89. 4C D0, 04
        mov     eax, 0                                  ; 24BF _ B8, 00000000
        jmp     ?_097                                   ; 24C4 _ E9, 000000C0

?_092:  mov     eax, dword [ebp+8H]                     ; 24C9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24CC _ 8B. 00
        cmp     eax, 4095                               ; 24CE _ 3D, 00000FFF
        jg      ?_096                                   ; 24D3 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 24D9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24DC _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 24DE _ 89. 45, F8
        jmp     ?_094                                   ; 24E1 _ EB, 28

?_093:  mov     eax, dword [ebp-8H]                     ; 24E3 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24E6 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 24E9 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 24EC _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 24EF _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 24F2 _ 8B. 45, 08
        add     edx, 2                                  ; 24F5 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 24F8 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 24FB _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 24FD _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2500 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2503 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2507 _ 83. 6D, F8, 01
?_094:  mov     eax, dword [ebp-8H]                     ; 250B _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 250E _ 3B. 45, F4
        jg      ?_093                                   ; 2511 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2513 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2516 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2518 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 251B _ 8B. 45, 08
        mov     dword [eax], edx                        ; 251E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2520 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2523 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2526 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2529 _ 8B. 00
        cmp     edx, eax                                ; 252B _ 39. C2
        jge     ?_095                                   ; 252D _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 252F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2532 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2534 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2537 _ 89. 50, 04
?_095:  mov     eax, dword [ebp+8H]                     ; 253A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 253D _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2540 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2543 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2546 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2549 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 254C _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 254F _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2552 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2555 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2559 _ B8, 00000000
        jmp     ?_097                                   ; 255E _ EB, 29

?_096:  mov     eax, dword [ebp+8H]                     ; 2560 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2563 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2566 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2569 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 256C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 256F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2572 _ 8B. 40, 08
        mov     edx, eax                                ; 2575 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2577 _ 8B. 45, 10
        add     eax, edx                                ; 257A _ 01. D0
        mov     edx, eax                                ; 257C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 257E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2581 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2584 _ B8, FFFFFFFF
?_097:  add     esp, 16                                 ; 2589 _ 83. C4, 10
        pop     ebx                                     ; 258C _ 5B
        pop     ebp                                     ; 258D _ 5D
        ret                                             ; 258E _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 258F _ 55
        mov     ebp, esp                                ; 2590 _ 89. E5
        sub     esp, 16                                 ; 2592 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2595 _ 8B. 45, 10
        add     eax, 4095                               ; 2598 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 259D _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 25A2 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 25A5 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 25A8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25AB _ FF. 75, 08
        call    memman_free                             ; 25AE _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 25B3 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 25B6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 25B9 _ 8B. 45, FC
        leave                                           ; 25BC _ C9
        ret                                             ; 25BD _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 25BE _ 55
        mov     ebp, esp                                ; 25BF _ 89. E5
        sub     esp, 24                                 ; 25C1 _ 83. EC, 18
        sub     esp, 8                                  ; 25C4 _ 83. EC, 08
        push    9232                                    ; 25C7 _ 68, 00002410
        push    dword [ebp+8H]                          ; 25CC _ FF. 75, 08
        call    memman_alloc_4K                         ; 25CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25D4 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 25D7 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 25DA _ 83. 7D, F4, 00
        jnz     ?_098                                   ; 25DE _ 75, 0A
        mov     eax, 0                                  ; 25E0 _ B8, 00000000
        jmp     ?_102                                   ; 25E5 _ E9, 0000009A

?_098:  mov     eax, dword [ebp+10H]                    ; 25EA _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 25ED _ 0F AF. 45, 14
        sub     esp, 8                                  ; 25F1 _ 83. EC, 08
        push    eax                                     ; 25F4 _ 50
        push    dword [ebp+8H]                          ; 25F5 _ FF. 75, 08
        call    memman_alloc_4K                         ; 25F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25FD _ 83. C4, 10
        mov     edx, eax                                ; 2600 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2602 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2605 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2608 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 260B _ 8B. 40, 04
        test    eax, eax                                ; 260E _ 85. C0
        jnz     ?_099                                   ; 2610 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2612 _ 8B. 45, F4
        sub     esp, 4                                  ; 2615 _ 83. EC, 04
        push    9232                                    ; 2618 _ 68, 00002410
        push    eax                                     ; 261D _ 50
        push    dword [ebp+8H]                          ; 261E _ FF. 75, 08
        call    memman_free_4K                          ; 2621 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2626 _ 83. C4, 10
        mov     eax, 0                                  ; 2629 _ B8, 00000000
        jmp     ?_102                                   ; 262E _ EB, 54

?_099:  mov     eax, dword [ebp-0CH]                    ; 2630 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2633 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2636 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2638 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 263B _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 263E _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2641 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2644 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2647 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 264A _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 264D _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2654 _ C7. 45, F0, 00000000
        jmp     ?_101                                   ; 265B _ EB, 1B

?_100:  mov     eax, dword [ebp-0CH]                    ; 265D _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2660 _ 8B. 55, F0
        add     edx, 33                                 ; 2663 _ 83. C2, 21
        shl     edx, 5                                  ; 2666 _ C1. E2, 05
        add     eax, edx                                ; 2669 _ 01. D0
        add     eax, 16                                 ; 266B _ 83. C0, 10
        mov     dword [eax], 0                          ; 266E _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2674 _ 83. 45, F0, 01
?_101:  cmp     dword [ebp-10H], 255                    ; 2678 _ 81. 7D, F0, 000000FF
        jle     ?_100                                   ; 267F _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2681 _ 8B. 45, F4
?_102:  leave                                           ; 2684 _ C9
        ret                                             ; 2685 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2686 _ 55
        mov     ebp, esp                                ; 2687 _ 89. E5
        sub     esp, 16                                 ; 2689 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 268C _ C7. 45, F8, 00000000
        jmp     ?_105                                   ; 2693 _ EB, 4B

?_103:  mov     eax, dword [ebp+8H]                     ; 2695 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2698 _ 8B. 55, F8
        add     edx, 33                                 ; 269B _ 83. C2, 21
        shl     edx, 5                                  ; 269E _ C1. E2, 05
        add     eax, edx                                ; 26A1 _ 01. D0
        add     eax, 16                                 ; 26A3 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 26A6 _ 8B. 00
        test    eax, eax                                ; 26A8 _ 85. C0
        jnz     ?_104                                   ; 26AA _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 26AC _ 8B. 45, F8
        shl     eax, 5                                  ; 26AF _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 26B2 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 26B8 _ 8B. 45, 08
        add     eax, edx                                ; 26BB _ 01. D0
        add     eax, 4                                  ; 26BD _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 26C0 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 26C3 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 26C6 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 26CD _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 26D0 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 26D7 _ 8B. 45, FC
        jmp     ?_106                                   ; 26DA _ EB, 12

?_104:  add     dword [ebp-8H], 1                       ; 26DC _ 83. 45, F8, 01
?_105:  cmp     dword [ebp-8H], 255                     ; 26E0 _ 81. 7D, F8, 000000FF
        jle     ?_103                                   ; 26E7 _ 7E, AC
        mov     eax, 0                                  ; 26E9 _ B8, 00000000
?_106:  leave                                           ; 26EE _ C9
        ret                                             ; 26EF _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 26F0 _ 55
        mov     ebp, esp                                ; 26F1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 26F3 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 26F6 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 26F9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 26FB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 26FE _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2701 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2704 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2707 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 270A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 270D _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2710 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2713 _ 89. 50, 14
        nop                                             ; 2716 _ 90
        pop     ebp                                     ; 2717 _ 5D
        ret                                             ; 2718 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2719 _ 55
        mov     ebp, esp                                ; 271A _ 89. E5
        push    esi                                     ; 271C _ 56
        push    ebx                                     ; 271D _ 53
        sub     esp, 32                                 ; 271E _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2721 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2724 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2727 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 272A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 272D _ 8B. 40, 10
        add     eax, 1                                  ; 2730 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2733 _ 39. 45, 10
        jle     ?_107                                   ; 2736 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2738 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 273B _ 8B. 40, 10
        add     eax, 1                                  ; 273E _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2741 _ 89. 45, 10
?_107:  cmp     dword [ebp+10H], -1                     ; 2744 _ 83. 7D, 10, FF
        jge     ?_108                                   ; 2748 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 274A _ C7. 45, 10, FFFFFFFF
?_108:  mov     eax, dword [ebp+0CH]                    ; 2751 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2754 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2757 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 275A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 275D _ 3B. 45, 10
        jle     ?_115                                   ; 2760 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2766 _ 83. 7D, 10, 00
        js      ?_111                                   ; 276A _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2770 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2773 _ 89. 45, E4
        jmp     ?_110                                   ; 2776 _ EB, 34

?_109:  mov     eax, dword [ebp-1CH]                    ; 2778 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 277B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 277E _ 8B. 45, 08
        add     edx, 4                                  ; 2781 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2784 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2788 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 278B _ 8B. 4D, E4
        add     ecx, 4                                  ; 278E _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2791 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2795 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2798 _ 8B. 55, E4
        add     edx, 4                                  ; 279B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 279E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 27A2 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 27A5 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 27A8 _ 83. 6D, E4, 01
?_110:  mov     eax, dword [ebp-1CH]                    ; 27AC _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 27AF _ 3B. 45, 10
        jg      ?_109                                   ; 27B2 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 27B4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27B7 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 27BA _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 27BD _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 27C0 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 27C4 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 27C7 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 27CA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27CD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27D0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27D3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27D6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27D9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27DC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 27DF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27E2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 27E5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27E8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27EB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27EE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27F1 _ 8B. 40, 0C
        sub     esp, 8                                  ; 27F4 _ 83. EC, 08
        push    esi                                     ; 27F7 _ 56
        push    ebx                                     ; 27F8 _ 53
        push    ecx                                     ; 27F9 _ 51
        push    edx                                     ; 27FA _ 52
        push    eax                                     ; 27FB _ 50
        push    dword [ebp+8H]                          ; 27FC _ FF. 75, 08
        call    sheet_refreshmap                        ; 27FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2804 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2807 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 280A _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 280D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2810 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2813 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2816 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2819 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 281C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 281F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2822 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2825 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2828 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 282B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 282E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2831 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2834 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2837 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 283A _ FF. 75, F4
        push    esi                                     ; 283D _ 56
        push    ebx                                     ; 283E _ 53
        push    ecx                                     ; 283F _ 51
        push    edx                                     ; 2840 _ 52
        push    eax                                     ; 2841 _ 50
        push    dword [ebp+8H]                          ; 2842 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2845 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 284A _ 83. C4, 20
        jmp     ?_122                                   ; 284D _ E9, 00000244

?_111:  mov     eax, dword [ebp+8H]                     ; 2852 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2855 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2858 _ 39. 45, F4
        jge     ?_114                                   ; 285B _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 285D _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2860 _ 89. 45, E8
        jmp     ?_113                                   ; 2863 _ EB, 34

?_112:  mov     eax, dword [ebp-18H]                    ; 2865 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2868 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 286B _ 8B. 45, 08
        add     edx, 4                                  ; 286E _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2871 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2875 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2878 _ 8B. 4D, E8
        add     ecx, 4                                  ; 287B _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 287E _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2882 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2885 _ 8B. 55, E8
        add     edx, 4                                  ; 2888 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 288B _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 288F _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2892 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2895 _ 83. 45, E8, 01
?_113:  mov     eax, dword [ebp+8H]                     ; 2899 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 289C _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 289F _ 39. 45, E8
        jl      ?_112                                   ; 28A2 _ 7C, C1
?_114:  mov     eax, dword [ebp+8H]                     ; 28A4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28A7 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 28AA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28AD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 28B0 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28B3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28B6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28B9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28BC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28BF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28C2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28C5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28C8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28CB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28CE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 28D1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28D4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28D7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28DA _ 8B. 40, 0C
        sub     esp, 8                                  ; 28DD _ 83. EC, 08
        push    0                                       ; 28E0 _ 6A, 00
        push    ebx                                     ; 28E2 _ 53
        push    ecx                                     ; 28E3 _ 51
        push    edx                                     ; 28E4 _ 52
        push    eax                                     ; 28E5 _ 50
        push    dword [ebp+8H]                          ; 28E6 _ FF. 75, 08
        call    sheet_refreshmap                        ; 28E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28EE _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 28F1 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 28F4 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 28F7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28FA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28FD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2900 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2903 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2906 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2909 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 290C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 290F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2912 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2915 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2918 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 291B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 291E _ 8B. 40, 0C
        sub     esp, 4                                  ; 2921 _ 83. EC, 04
        push    esi                                     ; 2924 _ 56
        push    0                                       ; 2925 _ 6A, 00
        push    ebx                                     ; 2927 _ 53
        push    ecx                                     ; 2928 _ 51
        push    edx                                     ; 2929 _ 52
        push    eax                                     ; 292A _ 50
        push    dword [ebp+8H]                          ; 292B _ FF. 75, 08
        call    sheet_refresh_new                       ; 292E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2933 _ 83. C4, 20
        jmp     ?_122                                   ; 2936 _ E9, 0000015B

?_115:  mov     eax, dword [ebp-0CH]                    ; 293B _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 293E _ 3B. 45, 10
        jge     ?_122                                   ; 2941 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2947 _ 83. 7D, F4, 00
        js      ?_118                                   ; 294B _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 294D _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2950 _ 89. 45, EC
        jmp     ?_117                                   ; 2953 _ EB, 34

?_116:  mov     eax, dword [ebp-14H]                    ; 2955 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2958 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 295B _ 8B. 45, 08
        add     edx, 4                                  ; 295E _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2961 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2965 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2968 _ 8B. 4D, EC
        add     ecx, 4                                  ; 296B _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 296E _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2972 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2975 _ 8B. 55, EC
        add     edx, 4                                  ; 2978 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 297B _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 297F _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2982 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2985 _ 83. 45, EC, 01
?_117:  mov     eax, dword [ebp-14H]                    ; 2989 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 298C _ 3B. 45, 10
        jl      ?_116                                   ; 298F _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2991 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2994 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2997 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 299A _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 299D _ 89. 54 88, 04
        jmp     ?_121                                   ; 29A1 _ EB, 72

?_118:  cmp     dword [ebp-0CH], 0                      ; 29A3 _ 83. 7D, F4, 00
        jns     ?_121                                   ; 29A7 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 29A9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 29AC _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 29AF _ 89. 45, F0
        jmp     ?_120                                   ; 29B2 _ EB, 3A

?_119:  mov     eax, dword [ebp-10H]                    ; 29B4 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 29B7 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 29BA _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 29BD _ 8B. 55, F0
        add     edx, 4                                  ; 29C0 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 29C3 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 29C7 _ 8B. 45, 08
        add     ecx, 4                                  ; 29CA _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 29CD _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 29D1 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 29D4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 29D7 _ 8B. 45, 08
        add     edx, 4                                  ; 29DA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29DD _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 29E1 _ 8B. 55, F0
        add     edx, 1                                  ; 29E4 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 29E7 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 29EA _ 83. 6D, F0, 01
?_120:  mov     eax, dword [ebp-10H]                    ; 29EE _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 29F1 _ 3B. 45, 10
        jge     ?_119                                   ; 29F4 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 29F6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 29F9 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 29FC _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 29FF _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2A02 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2A06 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A09 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2A0C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A0F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2A12 _ 89. 50, 10
?_121:  mov     eax, dword [ebp+0CH]                    ; 2A15 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A18 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A1B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A1E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A21 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A24 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A27 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A2A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A2D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A30 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A33 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A36 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A39 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A3C _ 8B. 40, 0C
        sub     esp, 8                                  ; 2A3F _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2A42 _ FF. 75, 10
        push    ebx                                     ; 2A45 _ 53
        push    ecx                                     ; 2A46 _ 51
        push    edx                                     ; 2A47 _ 52
        push    eax                                     ; 2A48 _ 50
        push    dword [ebp+8H]                          ; 2A49 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2A4C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A51 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A54 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A57 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A5A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A5D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A60 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A63 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A66 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A69 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A6C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A6F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A72 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A75 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A78 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A7B _ 8B. 40, 0C
        sub     esp, 4                                  ; 2A7E _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2A81 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2A84 _ FF. 75, 10
        push    ebx                                     ; 2A87 _ 53
        push    ecx                                     ; 2A88 _ 51
        push    edx                                     ; 2A89 _ 52
        push    eax                                     ; 2A8A _ 50
        push    dword [ebp+8H]                          ; 2A8B _ FF. 75, 08
        call    sheet_refresh_new                       ; 2A8E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A93 _ 83. C4, 20
?_122:  nop                                             ; 2A96 _ 90
        lea     esp, [ebp-8H]                           ; 2A97 _ 8D. 65, F8
        pop     ebx                                     ; 2A9A _ 5B
        pop     esi                                     ; 2A9B _ 5E
        pop     ebp                                     ; 2A9C _ 5D
        ret                                             ; 2A9D _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2A9E _ 55
        mov     ebp, esp                                ; 2A9F _ 89. E5
        push    edi                                     ; 2AA1 _ 57
        push    esi                                     ; 2AA2 _ 56
        push    ebx                                     ; 2AA3 _ 53
        sub     esp, 28                                 ; 2AA4 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2AA7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2AAA _ 8B. 40, 18
        test    eax, eax                                ; 2AAD _ 85. C0
        js      ?_123                                   ; 2AAF _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2AB1 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2AB4 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2AB7 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2ABA _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2ABD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AC0 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2AC3 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2AC6 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2AC9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2ACC _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2ACF _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2AD2 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2AD5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AD8 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2ADB _ 8B. 45, 14
        add     edx, eax                                ; 2ADE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2AE0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2AE3 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2AE6 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2AE9 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2AEC _ 03. 45, E4
        sub     esp, 4                                  ; 2AEF _ 83. EC, 04
        push    ebx                                     ; 2AF2 _ 53
        push    ecx                                     ; 2AF3 _ 51
        push    edi                                     ; 2AF4 _ 57
        push    esi                                     ; 2AF5 _ 56
        push    edx                                     ; 2AF6 _ 52
        push    eax                                     ; 2AF7 _ 50
        push    dword [ebp+8H]                          ; 2AF8 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2AFB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B00 _ 83. C4, 20
?_123:  mov     eax, 0                                  ; 2B03 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2B08 _ 8D. 65, F4
        pop     ebx                                     ; 2B0B _ 5B
        pop     esi                                     ; 2B0C _ 5E
        pop     edi                                     ; 2B0D _ 5F
        pop     ebp                                     ; 2B0E _ 5D
        ret                                             ; 2B0F _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2B10 _ 55
        mov     ebp, esp                                ; 2B11 _ 89. E5
        push    esi                                     ; 2B13 _ 56
        push    ebx                                     ; 2B14 _ 53
        sub     esp, 16                                 ; 2B15 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2B18 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B1B _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2B1E _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2B21 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2B24 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2B27 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2B2A _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2B2D _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2B30 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2B33 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2B36 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2B39 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B3C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B3F _ 8B. 40, 18
        test    eax, eax                                ; 2B42 _ 85. C0
        js      ?_124                                   ; 2B44 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2B4A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2B4D _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B50 _ 8B. 45, F4
        add     edx, eax                                ; 2B53 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B55 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2B58 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2B5B _ 8B. 45, F0
        add     eax, ecx                                ; 2B5E _ 01. C8
        sub     esp, 8                                  ; 2B60 _ 83. EC, 08
        push    0                                       ; 2B63 _ 6A, 00
        push    edx                                     ; 2B65 _ 52
        push    eax                                     ; 2B66 _ 50
        push    dword [ebp-0CH]                         ; 2B67 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2B6A _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2B6D _ FF. 75, 08
        call    sheet_refreshmap                        ; 2B70 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B75 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2B78 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B7B _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2B7E _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2B81 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2B84 _ 8B. 55, 14
        add     ecx, edx                                ; 2B87 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2B89 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2B8C _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2B8F _ 8B. 55, 10
        add     edx, ebx                                ; 2B92 _ 01. DA
        sub     esp, 8                                  ; 2B94 _ 83. EC, 08
        push    eax                                     ; 2B97 _ 50
        push    ecx                                     ; 2B98 _ 51
        push    edx                                     ; 2B99 _ 52
        push    dword [ebp+14H]                         ; 2B9A _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2B9D _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2BA0 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2BA3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BA8 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BAB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BAE _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2BB1 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2BB4 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2BB7 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2BBA _ 8B. 45, F4
        add     edx, eax                                ; 2BBD _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2BBF _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2BC2 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2BC5 _ 8B. 45, F0
        add     eax, ebx                                ; 2BC8 _ 01. D8
        sub     esp, 4                                  ; 2BCA _ 83. EC, 04
        push    ecx                                     ; 2BCD _ 51
        push    0                                       ; 2BCE _ 6A, 00
        push    edx                                     ; 2BD0 _ 52
        push    eax                                     ; 2BD1 _ 50
        push    dword [ebp-0CH]                         ; 2BD2 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2BD5 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2BD8 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2BDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BE0 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BE3 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2BE6 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2BE9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BEC _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2BEF _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2BF2 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2BF5 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2BF8 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2BFA _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2BFD _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2C00 _ 8B. 4D, 10
        add     ecx, esi                                ; 2C03 _ 01. F1
        sub     esp, 4                                  ; 2C05 _ 83. EC, 04
        push    edx                                     ; 2C08 _ 52
        push    eax                                     ; 2C09 _ 50
        push    ebx                                     ; 2C0A _ 53
        push    ecx                                     ; 2C0B _ 51
        push    dword [ebp+14H]                         ; 2C0C _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2C0F _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2C12 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C15 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C1A _ 83. C4, 20
?_124:  nop                                             ; 2C1D _ 90
        lea     esp, [ebp-8H]                           ; 2C1E _ 8D. 65, F8
        pop     ebx                                     ; 2C21 _ 5B
        pop     esi                                     ; 2C22 _ 5E
        pop     ebp                                     ; 2C23 _ 5D
        ret                                             ; 2C24 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2C25 _ 55
        mov     ebp, esp                                ; 2C26 _ 89. E5
        sub     esp, 48                                 ; 2C28 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2C2B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C2E _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2C30 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2C33 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C36 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2C39 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2C3C _ 83. 7D, 0C, 00
        jns     ?_125                                   ; 2C40 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2C42 _ C7. 45, 0C, 00000000
?_125:  cmp     dword [ebp+10H], 8                      ; 2C49 _ 83. 7D, 10, 08
        jg      ?_126                                   ; 2C4D _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2C4F _ C7. 45, 10, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 2C56 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C59 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2C5C _ 39. 45, 14
        jle     ?_127                                   ; 2C5F _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C61 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C64 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2C67 _ 89. 45, 14
?_127:  mov     eax, dword [ebp+8H]                     ; 2C6A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C6D _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2C70 _ 39. 45, 18
        jle     ?_128                                   ; 2C73 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C75 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C78 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2C7B _ 89. 45, 18
?_128:  mov     eax, dword [ebp+1CH]                    ; 2C7E _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2C81 _ 89. 45, DC
        jmp     ?_135                                   ; 2C84 _ E9, 00000118

?_129:  mov     eax, dword [ebp+8H]                     ; 2C89 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2C8C _ 8B. 55, DC
        add     edx, 4                                  ; 2C8F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C92 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2C96 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2C99 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2C9C _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2C9E _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2CA1 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2CA4 _ 8B. 55, 08
        add     edx, 1044                               ; 2CA7 _ 81. C2, 00000414
        sub     eax, edx                                ; 2CAD _ 29. D0
        sar     eax, 5                                  ; 2CAF _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2CB2 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2CB5 _ C7. 45, E0, 00000000
        jmp     ?_134                                   ; 2CBC _ E9, 000000CD

?_130:  mov     eax, dword [ebp-10H]                    ; 2CC1 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2CC4 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2CC7 _ 8B. 45, E0
        add     eax, edx                                ; 2CCA _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2CCC _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2CCF _ C7. 45, E4, 00000000
        jmp     ?_133                                   ; 2CD6 _ E9, 000000A0

?_131:  mov     eax, dword [ebp-10H]                    ; 2CDB _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2CDE _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2CE1 _ 8B. 45, E4
        add     eax, edx                                ; 2CE4 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2CE6 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2CE9 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2CEC _ 3B. 45, FC
        jg      ?_132                                   ; 2CEF _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2CF5 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2CF8 _ 3B. 45, 14
        jge     ?_132                                   ; 2CFB _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2CFD _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2D00 _ 3B. 45, F8
        jg      ?_132                                   ; 2D03 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2D05 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2D08 _ 3B. 45, 18
        jge     ?_132                                   ; 2D0B _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2D0D _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D10 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2D13 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2D17 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2D19 _ 8B. 45, E4
        add     eax, edx                                ; 2D1C _ 01. D0
        mov     edx, eax                                ; 2D1E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2D20 _ 8B. 45, F4
        add     eax, edx                                ; 2D23 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D25 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2D28 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2D2B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D2E _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D31 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D35 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D37 _ 8B. 45, FC
        add     eax, edx                                ; 2D3A _ 01. D0
        mov     edx, eax                                ; 2D3C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2D3E _ 8B. 45, EC
        add     eax, edx                                ; 2D41 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D43 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2D46 _ 38. 45, DA
        jnz     ?_132                                   ; 2D49 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2D4B _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2D4F _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2D52 _ 8B. 40, 14
        cmp     edx, eax                                ; 2D55 _ 39. C2
        jz      ?_132                                   ; 2D57 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2D59 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D5C _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D5F _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D63 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D65 _ 8B. 45, FC
        add     eax, edx                                ; 2D68 _ 01. D0
        mov     edx, eax                                ; 2D6A _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2D6C _ 8B. 45, E8
        add     edx, eax                                ; 2D6F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2D71 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2D75 _ 88. 02
?_132:  add     dword [ebp-1CH], 1                      ; 2D77 _ 83. 45, E4, 01
?_133:  mov     eax, dword [ebp-10H]                    ; 2D7B _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D7E _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2D81 _ 39. 45, E4
        jl      ?_131                                   ; 2D84 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2D8A _ 83. 45, E0, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 2D8E _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2D91 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2D94 _ 39. 45, E0
        jl      ?_130                                   ; 2D97 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2D9D _ 83. 45, DC, 01
?_135:  mov     eax, dword [ebp-24H]                    ; 2DA1 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2DA4 _ 3B. 45, 20
        jle     ?_129                                   ; 2DA7 _ 0F 8E, FFFFFEDC
        nop                                             ; 2DAD _ 90
        leave                                           ; 2DAE _ C9
        ret                                             ; 2DAF _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2DB0 _ 55
        mov     ebp, esp                                ; 2DB1 _ 89. E5
        sub     esp, 64                                 ; 2DB3 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2DB6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2DB9 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2DBC _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2DBF _ 83. 7D, 0C, 00
        jns     ?_136                                   ; 2DC3 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2DC5 _ C7. 45, 0C, 00000000
?_136:  mov     eax, dword [ebp+8H]                     ; 2DCC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DCF _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2DD2 _ 39. 45, 0C
        jle     ?_137                                   ; 2DD5 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2DD7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DDA _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2DDD _ 89. 45, 0C
?_137:  cmp     dword [ebp+10H], 0                      ; 2DE0 _ 83. 7D, 10, 00
        jns     ?_138                                   ; 2DE4 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2DE6 _ C7. 45, 10, 00000000
?_138:  mov     eax, dword [ebp+8H]                     ; 2DED _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2DF0 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2DF3 _ 39. 45, 10
        jle     ?_139                                   ; 2DF6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2DF8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2DFB _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2DFE _ 89. 45, 10
?_139:  mov     eax, dword [ebp+1CH]                    ; 2E01 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2E04 _ 89. 45, E0
        jmp     ?_150                                   ; 2E07 _ E9, 00000140

?_140:  mov     eax, dword [ebp+8H]                     ; 2E0C _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2E0F _ 8B. 55, E0
        add     edx, 4                                  ; 2E12 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E15 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2E19 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2E1C _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2E1F _ 8B. 55, 08
        add     edx, 1044                               ; 2E22 _ 81. C2, 00000414
        sub     eax, edx                                ; 2E28 _ 29. D0
        sar     eax, 5                                  ; 2E2A _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2E2D _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2E30 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2E33 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2E35 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2E38 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E3B _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2E3E _ 8B. 55, 0C
        sub     edx, eax                                ; 2E41 _ 29. C2
        mov     eax, edx                                ; 2E43 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2E45 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2E48 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E4B _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2E4E _ 8B. 55, 10
        sub     edx, eax                                ; 2E51 _ 29. C2
        mov     eax, edx                                ; 2E53 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2E55 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2E58 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E5B _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2E5E _ 8B. 55, 14
        sub     edx, eax                                ; 2E61 _ 29. C2
        mov     eax, edx                                ; 2E63 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2E65 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2E68 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E6B _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2E6E _ 8B. 55, 18
        sub     edx, eax                                ; 2E71 _ 29. C2
        mov     eax, edx                                ; 2E73 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2E75 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2E78 _ 83. 7D, D0, 00
        jns     ?_141                                   ; 2E7C _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2E7E _ C7. 45, D0, 00000000
?_141:  cmp     dword [ebp-2CH], 0                      ; 2E85 _ 83. 7D, D4, 00
        jns     ?_142                                   ; 2E89 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2E8B _ C7. 45, D4, 00000000
?_142:  mov     eax, dword [ebp-10H]                    ; 2E92 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2E95 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2E98 _ 39. 45, D8
        jle     ?_143                                   ; 2E9B _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2E9D _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2EA0 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2EA3 _ 89. 45, D8
?_143:  mov     eax, dword [ebp-10H]                    ; 2EA6 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2EA9 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2EAC _ 39. 45, DC
        jle     ?_144                                   ; 2EAF _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2EB1 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2EB4 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2EB7 _ 89. 45, DC
?_144:  mov     eax, dword [ebp-2CH]                    ; 2EBA _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2EBD _ 89. 45, E4
        jmp     ?_149                                   ; 2EC0 _ EB, 7A

?_145:  mov     eax, dword [ebp-10H]                    ; 2EC2 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2EC5 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2EC8 _ 8B. 45, E4
        add     eax, edx                                ; 2ECB _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2ECD _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2ED0 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2ED3 _ 89. 45, E8
        jmp     ?_148                                   ; 2ED6 _ EB, 58

?_146:  mov     eax, dword [ebp-10H]                    ; 2ED8 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2EDB _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2EDE _ 8B. 45, E8
        add     eax, edx                                ; 2EE1 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2EE3 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2EE6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2EE9 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2EEC _ 0F AF. 45, E4
        mov     edx, eax                                ; 2EF0 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2EF2 _ 8B. 45, E8
        add     eax, edx                                ; 2EF5 _ 01. D0
        mov     edx, eax                                ; 2EF7 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2EF9 _ 8B. 45, F4
        add     eax, edx                                ; 2EFC _ 01. D0
        movzx   eax, byte [eax]                         ; 2EFE _ 0F B6. 00
        movzx   edx, al                                 ; 2F01 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2F04 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2F07 _ 8B. 40, 14
        cmp     edx, eax                                ; 2F0A _ 39. C2
        jz      ?_147                                   ; 2F0C _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2F0E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F11 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2F14 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2F18 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2F1A _ 8B. 45, FC
        add     eax, edx                                ; 2F1D _ 01. D0
        mov     edx, eax                                ; 2F1F _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2F21 _ 8B. 45, EC
        add     edx, eax                                ; 2F24 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2F26 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2F2A _ 88. 02
?_147:  add     dword [ebp-18H], 1                      ; 2F2C _ 83. 45, E8, 01
?_148:  mov     eax, dword [ebp-18H]                    ; 2F30 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2F33 _ 3B. 45, D8
        jl      ?_146                                   ; 2F36 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2F38 _ 83. 45, E4, 01
?_149:  mov     eax, dword [ebp-1CH]                    ; 2F3C _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2F3F _ 3B. 45, DC
        jl      ?_145                                   ; 2F42 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2F48 _ 83. 45, E0, 01
?_150:  mov     eax, dword [ebp+8H]                     ; 2F4C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F4F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2F52 _ 39. 45, E0
        jle     ?_140                                   ; 2F55 _ 0F 8E, FFFFFEB1
        nop                                             ; 2F5B _ 90
        leave                                           ; 2F5C _ C9
        ret                                             ; 2F5D _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2F5E _ 55
        mov     ebp, esp                                ; 2F5F _ 89. E5
        sub     esp, 24                                 ; 2F61 _ 83. EC, 18
        sub     esp, 8                                  ; 2F64 _ 83. EC, 08
        push    52                                      ; 2F67 _ 6A, 34
        push    67                                      ; 2F69 _ 6A, 43
        call    io_out8                                 ; 2F6B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F70 _ 83. C4, 10
        sub     esp, 8                                  ; 2F73 _ 83. EC, 08
        push    156                                     ; 2F76 _ 68, 0000009C
        push    64                                      ; 2F7B _ 6A, 40
        call    io_out8                                 ; 2F7D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F82 _ 83. C4, 10
        sub     esp, 8                                  ; 2F85 _ 83. EC, 08
        push    46                                      ; 2F88 _ 6A, 2E
        push    64                                      ; 2F8A _ 6A, 40
        call    io_out8                                 ; 2F8C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F91 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2F94 _ C7. 05, 00000360(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2F9E _ C7. 45, F4, 00000000
        jmp     ?_152                                   ; 2FA5 _ EB, 15

?_151:  mov     eax, dword [ebp-0CH]                    ; 2FA7 _ 8B. 45, F4
        shl     eax, 4                                  ; 2FAA _ C1. E0, 04
        add     eax, ?_217                              ; 2FAD _ 05, 00000368(d)
        mov     dword [eax], 0                          ; 2FB2 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2FB8 _ 83. 45, F4, 01
?_152:  cmp     dword [ebp-0CH], 499                    ; 2FBC _ 81. 7D, F4, 000001F3
        jle     ?_151                                   ; 2FC3 _ 7E, E2
        nop                                             ; 2FC5 _ 90
        leave                                           ; 2FC6 _ C9
        ret                                             ; 2FC7 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2FC8 _ 55
        mov     ebp, esp                                ; 2FC9 _ 89. E5
        sub     esp, 16                                 ; 2FCB _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2FCE _ C7. 45, FC, 00000000
        jmp     ?_155                                   ; 2FD5 _ EB, 36

?_153:  mov     eax, dword [ebp-4H]                     ; 2FD7 _ 8B. 45, FC
        shl     eax, 4                                  ; 2FDA _ C1. E0, 04
        add     eax, ?_217                              ; 2FDD _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 2FE2 _ 8B. 00
        test    eax, eax                                ; 2FE4 _ 85. C0
        jnz     ?_154                                   ; 2FE6 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2FE8 _ 8B. 45, FC
        shl     eax, 4                                  ; 2FEB _ C1. E0, 04
        add     eax, ?_217                              ; 2FEE _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 2FF3 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2FF9 _ 8B. 45, FC
        shl     eax, 4                                  ; 2FFC _ C1. E0, 04
        add     eax, timerctl                           ; 2FFF _ 05, 00000360(d)
        add     eax, 4                                  ; 3004 _ 83. C0, 04
        jmp     ?_156                                   ; 3007 _ EB, 12

?_154:  add     dword [ebp-4H], 1                       ; 3009 _ 83. 45, FC, 01
?_155:  cmp     dword [ebp-4H], 499                     ; 300D _ 81. 7D, FC, 000001F3
        jle     ?_153                                   ; 3014 _ 7E, C1
        mov     eax, 0                                  ; 3016 _ B8, 00000000
?_156:  leave                                           ; 301B _ C9
        ret                                             ; 301C _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 301D _ 55
        mov     ebp, esp                                ; 301E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3020 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3023 _ C7. 40, 04, 00000000
        nop                                             ; 302A _ 90
        pop     ebp                                     ; 302B _ 5D
        ret                                             ; 302C _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 302D _ 55
        mov     ebp, esp                                ; 302E _ 89. E5
        sub     esp, 4                                  ; 3030 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3033 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3036 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3039 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 303C _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 303F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3042 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3045 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3049 _ 88. 50, 0C
        nop                                             ; 304C _ 90
        leave                                           ; 304D _ C9
        ret                                             ; 304E _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 304F _ 55
        mov     ebp, esp                                ; 3050 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3052 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3055 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3058 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 305A _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 305D _ C7. 40, 04, 00000002
        nop                                             ; 3064 _ 90
        pop     ebp                                     ; 3065 _ 5D
        ret                                             ; 3066 _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 3067 _ 55
        mov     ebp, esp                                ; 3068 _ 89. E5
        mov     eax, timerctl                           ; 306A _ B8, 00000360(d)
        pop     ebp                                     ; 306F _ 5D
        ret                                             ; 3070 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3071 _ 55
        mov     ebp, esp                                ; 3072 _ 89. E5
        sub     esp, 24                                 ; 3074 _ 83. EC, 18
        sub     esp, 8                                  ; 3077 _ 83. EC, 08
        push    96                                      ; 307A _ 6A, 60
        push    32                                      ; 307C _ 6A, 20
        call    io_out8                                 ; 307E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3083 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 3086 _ A1, 00000360(d)
        add     eax, 1                                  ; 308B _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 308E _ A3, 00000360(d)
        mov     dword [ebp-0CH], 0                      ; 3093 _ C7. 45, F4, 00000000
        jmp     ?_159                                   ; 309A _ E9, 00000080

?_157:  mov     eax, dword [ebp-0CH]                    ; 309F _ 8B. 45, F4
        shl     eax, 4                                  ; 30A2 _ C1. E0, 04
        add     eax, ?_217                              ; 30A5 _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 30AA _ 8B. 00
        cmp     eax, 2                                  ; 30AC _ 83. F8, 02
        jnz     ?_158                                   ; 30AF _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 30B1 _ 8B. 45, F4
        shl     eax, 4                                  ; 30B4 _ C1. E0, 04
        add     eax, ?_216                              ; 30B7 _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 30BC _ 8B. 00
        lea     edx, [eax-1H]                           ; 30BE _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 30C1 _ 8B. 45, F4
        shl     eax, 4                                  ; 30C4 _ C1. E0, 04
        add     eax, ?_216                              ; 30C7 _ 05, 00000364(d)
        mov     dword [eax], edx                        ; 30CC _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 30CE _ 8B. 45, F4
        shl     eax, 4                                  ; 30D1 _ C1. E0, 04
        add     eax, ?_216                              ; 30D4 _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 30D9 _ 8B. 00
        test    eax, eax                                ; 30DB _ 85. C0
        jnz     ?_158                                   ; 30DD _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 30DF _ 8B. 45, F4
        shl     eax, 4                                  ; 30E2 _ C1. E0, 04
        add     eax, ?_217                              ; 30E5 _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 30EA _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 30F0 _ 8B. 45, F4
        shl     eax, 4                                  ; 30F3 _ C1. E0, 04
        add     eax, ?_219                              ; 30F6 _ 05, 00000370(d)
        movzx   eax, byte [eax]                         ; 30FB _ 0F B6. 00
        movzx   edx, al                                 ; 30FE _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3101 _ 8B. 45, F4
        shl     eax, 4                                  ; 3104 _ C1. E0, 04
        add     eax, ?_218                              ; 3107 _ 05, 0000036C(d)
        mov     eax, dword [eax]                        ; 310C _ 8B. 00
        sub     esp, 8                                  ; 310E _ 83. EC, 08
        push    edx                                     ; 3111 _ 52
        push    eax                                     ; 3112 _ 50
        call    fifo8_put                               ; 3113 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3118 _ 83. C4, 10
?_158:  add     dword [ebp-0CH], 1                      ; 311B _ 83. 45, F4, 01
?_159:  cmp     dword [ebp-0CH], 499                    ; 311F _ 81. 7D, F4, 000001F3
        jle     ?_157                                   ; 3126 _ 0F 8E, FFFFFF73
        nop                                             ; 312C _ 90
        leave                                           ; 312D _ C9
        ret                                             ; 312E _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 312F _ 55
        mov     ebp, esp                                ; 3130 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3132 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3135 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3138 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 313B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 313E _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3141 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3143 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3146 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3149 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 314C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 314F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3156 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3159 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3160 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3163 _ C7. 40, 14, 00000000
        nop                                             ; 316A _ 90
        pop     ebp                                     ; 316B _ 5D
        ret                                             ; 316C _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 316D _ 55
        mov     ebp, esp                                ; 316E _ 89. E5
        sub     esp, 4                                  ; 3170 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 3173 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3176 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3179 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 317C _ 8B. 40, 10
        test    eax, eax                                ; 317F _ 85. C0
        jnz     ?_160                                   ; 3181 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3183 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3186 _ 8B. 40, 14
        or      eax, 01H                                ; 3189 _ 83. C8, 01
        mov     edx, eax                                ; 318C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 318E _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3191 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3194 _ B8, FFFFFFFF
        jmp     ?_162                                   ; 3199 _ EB, 50

?_160:  mov     eax, dword [ebp+8H]                     ; 319B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 319E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 31A0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31A3 _ 8B. 40, 08
        add     edx, eax                                ; 31A6 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 31A8 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 31AC _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 31AE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31B1 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 31B4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31B7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31BA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31BD _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 31C0 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31C3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31C6 _ 8B. 40, 0C
        cmp     edx, eax                                ; 31C9 _ 39. C2
        jl      ?_161                                   ; 31CB _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 31CD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31D0 _ C7. 40, 08, 00000000
?_161:  mov     eax, dword [ebp+8H]                     ; 31D7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31DA _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 31DD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 31E0 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 31E3 _ 89. 50, 10
        mov     eax, 1                                  ; 31E6 _ B8, 00000001
?_162:  leave                                           ; 31EB _ C9
        ret                                             ; 31EC _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 31ED _ 55
        mov     ebp, esp                                ; 31EE _ 89. E5
        sub     esp, 16                                 ; 31F0 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 31F3 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 31F6 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 31F9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31FC _ 8B. 40, 0C
        cmp     edx, eax                                ; 31FF _ 39. C2
        jnz     ?_163                                   ; 3201 _ 75, 07
        mov     eax, 4294967295                         ; 3203 _ B8, FFFFFFFF
        jmp     ?_165                                   ; 3208 _ EB, 51

?_163:  mov     eax, dword [ebp+8H]                     ; 320A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 320D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 320F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3212 _ 8B. 40, 04
        add     eax, edx                                ; 3215 _ 01. D0
        movzx   eax, byte [eax]                         ; 3217 _ 0F B6. 00
        movzx   eax, al                                 ; 321A _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 321D _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3220 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3223 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3226 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3229 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 322C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 322F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3232 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3235 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3238 _ 8B. 40, 0C
        cmp     edx, eax                                ; 323B _ 39. C2
        jl      ?_164                                   ; 323D _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 323F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3242 _ C7. 40, 04, 00000000
?_164:  mov     eax, dword [ebp+8H]                     ; 3249 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 324C _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 324F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3252 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3255 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3258 _ 8B. 45, FC
?_165:  leave                                           ; 325B _ C9
        ret                                             ; 325C _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 325D _ 55
        mov     ebp, esp                                ; 325E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3260 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3263 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3266 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3269 _ 8B. 40, 10
        sub     edx, eax                                ; 326C _ 29. C2
        mov     eax, edx                                ; 326E _ 89. D0
        pop     ebp                                     ; 3270 _ 5D
        ret                                             ; 3271 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3272 _ 55
        mov     ebp, esp                                ; 3273 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3275 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_166                                   ; 327C _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 327E _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3285 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3288 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 328B _ 89. 45, 0C
?_166:  mov     eax, dword [ebp+0CH]                    ; 328E _ 8B. 45, 0C
        mov     edx, eax                                ; 3291 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3293 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3296 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3299 _ 8B. 45, 10
        mov     edx, eax                                ; 329C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 329E _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 32A1 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 32A5 _ 8B. 45, 10
        sar     eax, 16                                 ; 32A8 _ C1. F8, 10
        mov     edx, eax                                ; 32AB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32AD _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 32B0 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 32B3 _ 8B. 45, 14
        mov     edx, eax                                ; 32B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32B8 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 32BB _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 32BE _ 8B. 45, 0C
        shr     eax, 16                                 ; 32C1 _ C1. E8, 10
        and     eax, 0FH                                ; 32C4 _ 83. E0, 0F
        mov     edx, eax                                ; 32C7 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 32C9 _ 8B. 45, 14
        sar     eax, 8                                  ; 32CC _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 32CF _ 83. E0, F0
        or      eax, edx                                ; 32D2 _ 09. D0
        mov     edx, eax                                ; 32D4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32D6 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 32D9 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 32DC _ 8B. 45, 10
        shr     eax, 24                                 ; 32DF _ C1. E8, 18
        mov     edx, eax                                ; 32E2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32E4 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 32E7 _ 88. 50, 07
        nop                                             ; 32EA _ 90
        pop     ebp                                     ; 32EB _ 5D
        ret                                             ; 32EC _ C3
; set_segmdesc End of function



?_167:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_168:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0008 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0010 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0018 _ s: .

?_169:                                                  ; byte
        db 4DH, 42H, 00H                                ; 001C _ MB.

?_170:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 74H       ; 001F _ switch t
        db 6FH, 20H, 74H, 61H, 73H, 6BH, 20H, 62H       ; 0027 _ o task b
        db 00H                                          ; 002F _ .

?_171:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0030 _ 3[sec].

?_172:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0037 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 003F _ sk b.

?_173:                                                  ; byte
        db 73H, 77H, 69H, 74H, 63H, 68H, 20H, 62H       ; 0044 _ switch b
        db 61H, 63H, 6BH, 00H                           ; 004C _ ack.

?_174:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0050 _ Page is:
        db 20H, 00H                                     ; 0058 _  .

?_175:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 005A _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0062 _ Low: .

?_176:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0068 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0070 _ High: .

?_177:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0077 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 007F _ w: .

?_178:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0083 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 008B _ gh: .

?_179:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0090 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_180:  db 00H                                          ; 0002 _ .

?_181:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

?_182:  resw    1                                       ; 0004

?_183:  resw    1                                       ; 0006

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

?_184:  resd    1                                       ; 00EC

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

?_185:  resd    2                                       ; 025C

?_186:  resd    5                                       ; 0264

?_187:  resd    4                                       ; 0278

?_188:  resd    1                                       ; 0288

?_189:  resd    1                                       ; 028C

?_190:  resd    1                                       ; 0290

?_191:  resd    1                                       ; 0294

?_192:  resd    1                                       ; 0298

?_193:  resd    1                                       ; 029C

?_194:  resd    1                                       ; 02A0

?_195:  resd    7                                       ; 02A4

tss_b.1758:                                             ; byte
        resb    32                                      ; 02C0

?_196:  resd    1                                       ; 02E0

?_197:  resd    1                                       ; 02E4

?_198:  resd    1                                       ; 02E8

?_199:  resd    1                                       ; 02EC

?_200:  resd    1                                       ; 02F0

?_201:  resd    1                                       ; 02F4

?_202:  resd    1                                       ; 02F8

?_203:  resd    1                                       ; 02FC

?_204:  resd    1                                       ; 0300

?_205:  resd    1                                       ; 0304

?_206:  resd    1                                       ; 0308

?_207:  resd    1                                       ; 030C

?_208:  resd    1                                       ; 0310

?_209:  resd    1                                       ; 0314

?_210:  resd    1                                       ; 0318

?_211:  resd    1                                       ; 031C

?_212:  resd    1                                       ; 0320

?_213:  resd    1                                       ; 0324

cnt.1763: resd  1                                       ; 0328

line.1767:                                              ; dword
        resd    1                                       ; 032C

str.1907:                                               ; byte
        resb    1                                       ; 0330

?_214:  resb    9                                       ; 0331

?_215:  resb    2                                       ; 033A

line.1940:                                              ; dword
        resd    1                                       ; 033C

pos.1939: resd  8                                       ; 0340

timerctl:                                               ; byte
        resd    1                                       ; 0360

?_216:                                                  ; byte
        resb    4                                       ; 0364

?_217:                                                  ; byte
        resb    4                                       ; 0368

?_218:                                                  ; byte
        resb    4                                       ; 036C

?_219:                                                  ; byte
        resb    7988                                    ; 0370


