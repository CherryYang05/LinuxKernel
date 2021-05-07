; Disassembly of file: ckernel.o
; Fri May  7 18:53:53 2021
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
        push    100                                     ; 007E _ 6A, 64
        push    dword [ebp-60H]                         ; 0080 _ FF. 75, A0
        call    timer_setTime                           ; 0083 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0088 _ 83. C4, 10
        call    timer_alloc                             ; 008B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-5CH], eax                    ; 0090 _ 89. 45, A4
        sub     esp, 4                                  ; 0093 _ 83. EC, 04
        push    2                                       ; 0096 _ 6A, 02
        push    timerInfo                               ; 0098 _ 68, 00000200(d)
        push    dword [ebp-5CH]                         ; 009D _ FF. 75, A4
        call    timer_init                              ; 00A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A5 _ 83. C4, 10
        sub     esp, 8                                  ; 00A8 _ 83. EC, 08
        push    300                                     ; 00AB _ 68, 0000012C
        push    dword [ebp-5CH]                         ; 00B0 _ FF. 75, A4
        call    timer_setTime                           ; 00B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B8 _ 83. C4, 10
        call    timer_alloc                             ; 00BB _ E8, FFFFFFFC(rel)
        mov     dword [ebp-58H], eax                    ; 00C0 _ 89. 45, A8
        sub     esp, 4                                  ; 00C3 _ 83. EC, 04
        push    1                                       ; 00C6 _ 6A, 01
        push    timerInfo                               ; 00C8 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 00CD _ FF. 75, A8
        call    timer_init                              ; 00D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D5 _ 83. C4, 10
        sub     esp, 8                                  ; 00D8 _ 83. EC, 08
        push    50                                      ; 00DB _ 6A, 32
        push    dword [ebp-58H]                         ; 00DD _ FF. 75, A8
        call    timer_setTime                           ; 00E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E5 _ 83. C4, 10
        sub     esp, 4                                  ; 00E8 _ 83. EC, 04
        push    keybuf                                  ; 00EB _ 68, 00000040(d)
        push    32                                      ; 00F0 _ 6A, 20
        push    keyInfo                                 ; 00F2 _ 68, 00000008(d)
        call    fifo8_init                              ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00FC _ 83. C4, 10
        sub     esp, 4                                  ; 00FF _ 83. EC, 04
        push    mousebuf                                ; 0102 _ 68, 00000060(d)
        push    128                                     ; 0107 _ 68, 00000080
        push    mouseInfo                               ; 010C _ 68, 00000020(d)
        call    fifo8_init                              ; 0111 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0116 _ 83. C4, 10
        call    init_palette                            ; 0119 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 011E _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 0123 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], eax                    ; 0128 _ 89. 45, AC
        call    get_memory_block_count                  ; 012B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-50H], eax                    ; 0130 _ 89. 45, B0
        mov     eax, dword [memman]                     ; 0133 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0138 _ 83. EC, 0C
        push    eax                                     ; 013B _ 50
        call    memman_init                             ; 013C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0141 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0144 _ A1, 00000008(d)
        sub     esp, 4                                  ; 0149 _ 83. EC, 04
        push    1072594944                              ; 014C _ 68, 3FEE8000
        push    1081344                                 ; 0151 _ 68, 00108000
        push    eax                                     ; 0156 _ 50
        call    memman_free                             ; 0157 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 015C _ 83. C4, 10
        mov     eax, dword [memman]                     ; 015F _ A1, 00000008(d)
        sub     esp, 12                                 ; 0164 _ 83. EC, 0C
        push    eax                                     ; 0167 _ 50
        call    memman_total                            ; 0168 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 016D _ 83. C4, 10
        shr     eax, 20                                 ; 0170 _ C1. E8, 14
        mov     dword [ebp-4CH], eax                    ; 0173 _ 89. 45, B4
        mov     eax, dword [ebp-4CH]                    ; 0176 _ 8B. 45, B4
        sub     esp, 12                                 ; 0179 _ 83. EC, 0C
        push    eax                                     ; 017C _ 50
        call    intToHexStr                             ; 017D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0182 _ 83. C4, 10
        mov     dword [ebp-48H], eax                    ; 0185 _ 89. 45, B8
        mov     eax, dword [memman]                     ; 0188 _ A1, 00000008(d)
        push    dword [ebp-64H]                         ; 018D _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 0190 _ FF. 75, 98
        push    dword [ebp-6CH]                         ; 0193 _ FF. 75, 94
        push    eax                                     ; 0196 _ 50
        call    shtctl_init                             ; 0197 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019C _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 019F _ A3, 00000220(d)
        mov     eax, dword [shtctl]                     ; 01A4 _ A1, 00000220(d)
        sub     esp, 12                                 ; 01A9 _ 83. EC, 0C
        push    eax                                     ; 01AC _ 50
        call    sheet_alloc                             ; 01AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B2 _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01B5 _ A3, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 01BA _ A1, 00000220(d)
        sub     esp, 12                                 ; 01BF _ 83. EC, 0C
        push    eax                                     ; 01C2 _ 50
        call    sheet_alloc                             ; 01C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01C8 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01CB _ A3, 00000230(d)
        mov     eax, dword [ebp-68H]                    ; 01D0 _ 8B. 45, 98
        imul    eax, dword [ebp-64H]                    ; 01D3 _ 0F AF. 45, 9C
        mov     edx, eax                                ; 01D7 _ 89. C2
        mov     eax, dword [memman]                     ; 01D9 _ A1, 00000008(d)
        sub     esp, 8                                  ; 01DE _ 83. EC, 08
        push    edx                                     ; 01E1 _ 52
        push    eax                                     ; 01E2 _ 50
        call    memman_alloc_4K                         ; 01E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E8 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 01EB _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 01F0 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 01F5 _ 83. EC, 04
        push    dword [ebp-64H]                         ; 01F8 _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 01FB _ FF. 75, 98
        push    eax                                     ; 01FE _ 50
        call    init_screen8                            ; 01FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0204 _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0207 _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 020D _ A1, 0000022C(d)
        sub     esp, 12                                 ; 0212 _ 83. EC, 0C
        push    99                                      ; 0215 _ 6A, 63
        push    dword [ebp-64H]                         ; 0217 _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 021A _ FF. 75, 98
        push    edx                                     ; 021D _ 52
        push    eax                                     ; 021E _ 50
        call    sheet_setbuf                            ; 021F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0224 _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 0227 _ A1, 00000230(d)
        sub     esp, 12                                 ; 022C _ 83. EC, 0C
        push    99                                      ; 022F _ 6A, 63
        push    16                                      ; 0231 _ 6A, 10
        push    16                                      ; 0233 _ 6A, 10
        push    buf_mouse                               ; 0235 _ 68, 00000100(d)
        push    eax                                     ; 023A _ 50
        call    sheet_setbuf                            ; 023B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0240 _ 83. C4, 20
        sub     esp, 8                                  ; 0243 _ 83. EC, 08
        push    99                                      ; 0246 _ 6A, 63
        push    buf_mouse                               ; 0248 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 024D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0252 _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 0255 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 025B _ A1, 00000220(d)
        push    0                                       ; 0260 _ 6A, 00
        push    0                                       ; 0262 _ 6A, 00
        push    edx                                     ; 0264 _ 52
        push    eax                                     ; 0265 _ 50
        call    sheet_slide                             ; 0266 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026B _ 83. C4, 10
        mov     eax, dword [ebp-68H]                    ; 026E _ 8B. 45, 98
        sub     eax, 16                                 ; 0271 _ 83. E8, 10
        mov     edx, eax                                ; 0274 _ 89. C2
        shr     edx, 31                                 ; 0276 _ C1. EA, 1F
        add     eax, edx                                ; 0279 _ 01. D0
        sar     eax, 1                                  ; 027B _ D1. F8
        mov     dword [mx], eax                         ; 027D _ A3, 000000F0(d)
        mov     eax, dword [ebp-64H]                    ; 0282 _ 8B. 45, 9C
        sub     eax, 44                                 ; 0285 _ 83. E8, 2C
        mov     edx, eax                                ; 0288 _ 89. C2
        shr     edx, 31                                 ; 028A _ C1. EA, 1F
        add     eax, edx                                ; 028D _ 01. D0
        sar     eax, 1                                  ; 028F _ D1. F8
        mov     dword [my], eax                         ; 0291 _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 0296 _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 029C _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 02A2 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02A8 _ A1, 00000220(d)
        push    ebx                                     ; 02AD _ 53
        push    ecx                                     ; 02AE _ 51
        push    edx                                     ; 02AF _ 52
        push    eax                                     ; 02B0 _ 50
        call    sheet_slide                             ; 02B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B6 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02B9 _ A1, 00000220(d)
        sub     esp, 12                                 ; 02BE _ 83. EC, 0C
        push    2                                       ; 02C1 _ 6A, 02
        push    100                                     ; 02C3 _ 6A, 64
        push    200                                     ; 02C5 _ 68, 000000C8
        push    ?_170                                   ; 02CA _ 68, 00000000(d)
        push    eax                                     ; 02CF _ 50
        call    messageBox                              ; 02D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02D5 _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02D8 _ A3, 00000224(d)
        mov     edx, dword [sheet_back]                 ; 02DD _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 02E3 _ A1, 00000220(d)
        sub     esp, 4                                  ; 02E8 _ 83. EC, 04
        push    0                                       ; 02EB _ 6A, 00
        push    edx                                     ; 02ED _ 52
        push    eax                                     ; 02EE _ 50
        call    sheet_level_updown                      ; 02EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F4 _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 02F7 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02FD _ A1, 00000220(d)
        sub     esp, 4                                  ; 0302 _ 83. EC, 04
        push    50                                      ; 0305 _ 6A, 32
        push    edx                                     ; 0307 _ 52
        push    eax                                     ; 0308 _ 50
        call    sheet_level_updown                      ; 0309 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 030E _ 83. C4, 10
        call    get_code32_addr                         ; 0311 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 0316 _ 89. 45, BC
        call    get_addr_gdt                            ; 0319 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 031E _ 89. 45, C0
        mov     dword [?_195], 0                        ; 0321 _ C7. 05, 000002A0(d), 00000000
        mov     dword [?_196], 1073741824               ; 032B _ C7. 05, 000002A4(d), 40000000
        mov     dword [?_213], 0                        ; 0335 _ C7. 05, 00000320(d), 00000000
        mov     dword [?_214], 1073741824               ; 033F _ C7. 05, 00000324(d), 40000000
        mov     edx, tss_a.1766                         ; 0349 _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 034E _ 8B. 45, C0
        add     eax, 56                                 ; 0351 _ 83. C0, 38
        push    137                                     ; 0354 _ 68, 00000089
        push    edx                                     ; 0359 _ 52
        push    103                                     ; 035A _ 6A, 67
        push    eax                                     ; 035C _ 50
        call    set_segmdesc                            ; 035D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0362 _ 83. C4, 10
        mov     edx, tss_a.1766                         ; 0365 _ BA, 00000240(d)
        mov     eax, dword [ebp-40H]                    ; 036A _ 8B. 45, C0
        add     eax, 64                                 ; 036D _ 83. C0, 40
        push    137                                     ; 0370 _ 68, 00000089
        push    edx                                     ; 0375 _ 52
        push    103                                     ; 0376 _ 6A, 67
        push    eax                                     ; 0378 _ 50
        call    set_segmdesc                            ; 0379 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037E _ 83. C4, 10
        mov     edx, tss_b.1767                         ; 0381 _ BA, 000002C0(d)
        mov     eax, dword [ebp-40H]                    ; 0386 _ 8B. 45, C0
        add     eax, 72                                 ; 0389 _ 83. C0, 48
        push    137                                     ; 038C _ 68, 00000089
        push    edx                                     ; 0391 _ 52
        push    103                                     ; 0392 _ 6A, 67
        push    eax                                     ; 0394 _ 50
        call    set_segmdesc                            ; 0395 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 039A _ 83. C4, 10
        mov     edx, task_b_main                        ; 039D _ BA, 00000000(d)
        mov     eax, dword [ebp-40H]                    ; 03A2 _ 8B. 45, C0
        add     eax, 48                                 ; 03A5 _ 83. C0, 30
        push    16538                                   ; 03A8 _ 68, 0000409A
        push    edx                                     ; 03AD _ 52
        push    1048575                                 ; 03AE _ 68, 000FFFFF
        push    eax                                     ; 03B3 _ 50
        call    set_segmdesc                            ; 03B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03B9 _ 83. C4, 10
        sub     esp, 12                                 ; 03BC _ 83. EC, 0C
        push    56                                      ; 03BF _ 6A, 38
        call    load_tr                                 ; 03C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C6 _ 83. C4, 10
        call    taskswitch8                             ; 03C9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_187]                      ; 03CE _ A1, 00000264(d)
        sub     esp, 12                                 ; 03D3 _ 83. EC, 0C
        push    eax                                     ; 03D6 _ 50
        call    intToHexStr                             ; 03D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03DC _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 03DF _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 03E2 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 03E8 _ A1, 00000220(d)
        sub     esp, 8                                  ; 03ED _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 03F0 _ FF. 75, C4
        push    7                                       ; 03F3 _ 6A, 07
        push    0                                       ; 03F5 _ 6A, 00
        push    0                                       ; 03F7 _ 6A, 00
        push    edx                                     ; 03F9 _ 52
        push    eax                                     ; 03FA _ 50
        call    showString                              ; 03FB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0400 _ 83. C4, 20
        mov     eax, dword [?_188]                      ; 0403 _ A1, 00000278(d)
        sub     esp, 12                                 ; 0408 _ 83. EC, 0C
        push    eax                                     ; 040B _ 50
        call    intToHexStr                             ; 040C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0411 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0414 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0417 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 041D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0422 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0425 _ FF. 75, C4
        push    7                                       ; 0428 _ 6A, 07
        push    16                                      ; 042A _ 6A, 10
        push    0                                       ; 042C _ 6A, 00
        push    edx                                     ; 042E _ 52
        push    eax                                     ; 042F _ 50
        call    showString                              ; 0430 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0435 _ 83. C4, 20
        mov     eax, dword [?_189]                      ; 0438 _ A1, 00000288(d)
        lea     edx, [eax+7H]                           ; 043D _ 8D. 50, 07
        test    eax, eax                                ; 0440 _ 85. C0
        cmovs   eax, edx                                ; 0442 _ 0F 48. C2
        sar     eax, 3                                  ; 0445 _ C1. F8, 03
        sub     esp, 12                                 ; 0448 _ 83. EC, 0C
        push    eax                                     ; 044B _ 50
        call    intToHexStr                             ; 044C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0451 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0454 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0457 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 045D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0462 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0465 _ FF. 75, C4
        push    7                                       ; 0468 _ 6A, 07
        push    32                                      ; 046A _ 6A, 20
        push    0                                       ; 046C _ 6A, 00
        push    edx                                     ; 046E _ 52
        push    eax                                     ; 046F _ 50
        call    showString                              ; 0470 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0475 _ 83. C4, 20
        mov     eax, dword [?_190]                      ; 0478 _ A1, 0000028C(d)
        lea     edx, [eax+7H]                           ; 047D _ 8D. 50, 07
        test    eax, eax                                ; 0480 _ 85. C0
        cmovs   eax, edx                                ; 0482 _ 0F 48. C2
        sar     eax, 3                                  ; 0485 _ C1. F8, 03
        sub     esp, 12                                 ; 0488 _ 83. EC, 0C
        push    eax                                     ; 048B _ 50
        call    intToHexStr                             ; 048C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0491 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0494 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0497 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 049D _ A1, 00000220(d)
        sub     esp, 8                                  ; 04A2 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 04A5 _ FF. 75, C4
        push    7                                       ; 04A8 _ 6A, 07
        push    48                                      ; 04AA _ 6A, 30
        push    0                                       ; 04AC _ 6A, 00
        push    edx                                     ; 04AE _ 52
        push    eax                                     ; 04AF _ 50
        call    showString                              ; 04B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04B5 _ 83. C4, 20
        mov     eax, dword [?_191]                      ; 04B8 _ A1, 00000290(d)
        lea     edx, [eax+7H]                           ; 04BD _ 8D. 50, 07
        test    eax, eax                                ; 04C0 _ 85. C0
        cmovs   eax, edx                                ; 04C2 _ 0F 48. C2
        sar     eax, 3                                  ; 04C5 _ C1. F8, 03
        sub     esp, 12                                 ; 04C8 _ 83. EC, 0C
        push    eax                                     ; 04CB _ 50
        call    intToHexStr                             ; 04CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04D1 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 04D4 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 04D7 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04DD _ A1, 00000220(d)
        sub     esp, 8                                  ; 04E2 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 04E5 _ FF. 75, C4
        push    7                                       ; 04E8 _ 6A, 07
        push    64                                      ; 04EA _ 6A, 40
        push    0                                       ; 04EC _ 6A, 00
        push    edx                                     ; 04EE _ 52
        push    eax                                     ; 04EF _ 50
        call    showString                              ; 04F0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04F5 _ 83. C4, 20
        mov     eax, dword [?_192]                      ; 04F8 _ A1, 00000294(d)
        lea     edx, [eax+7H]                           ; 04FD _ 8D. 50, 07
        test    eax, eax                                ; 0500 _ 85. C0
        cmovs   eax, edx                                ; 0502 _ 0F 48. C2
        sar     eax, 3                                  ; 0505 _ C1. F8, 03
        sub     esp, 12                                 ; 0508 _ 83. EC, 0C
        push    eax                                     ; 050B _ 50
        call    intToHexStr                             ; 050C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0511 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0514 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0517 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 051D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0522 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0525 _ FF. 75, C4
        push    7                                       ; 0528 _ 6A, 07
        push    80                                      ; 052A _ 6A, 50
        push    0                                       ; 052C _ 6A, 00
        push    edx                                     ; 052E _ 52
        push    eax                                     ; 052F _ 50
        call    showString                              ; 0530 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0535 _ 83. C4, 20
        mov     eax, dword [?_194]                      ; 0538 _ A1, 0000029C(d)
        lea     edx, [eax+7H]                           ; 053D _ 8D. 50, 07
        test    eax, eax                                ; 0540 _ 85. C0
        cmovs   eax, edx                                ; 0542 _ 0F 48. C2
        sar     eax, 3                                  ; 0545 _ C1. F8, 03
        sub     esp, 12                                 ; 0548 _ 83. EC, 0C
        push    eax                                     ; 054B _ 50
        call    intToHexStr                             ; 054C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0551 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0554 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0557 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 055D _ A1, 00000220(d)
        sub     esp, 8                                  ; 0562 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 0565 _ FF. 75, C4
        push    7                                       ; 0568 _ 6A, 07
        push    96                                      ; 056A _ 6A, 60
        push    0                                       ; 056C _ 6A, 00
        push    edx                                     ; 056E _ 52
        push    eax                                     ; 056F _ 50
        call    showString                              ; 0570 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0575 _ 83. C4, 20
        mov     eax, dword [?_193]                      ; 0578 _ A1, 00000298(d)
        lea     edx, [eax+7H]                           ; 057D _ 8D. 50, 07
        test    eax, eax                                ; 0580 _ 85. C0
        cmovs   eax, edx                                ; 0582 _ 0F 48. C2
        sar     eax, 3                                  ; 0585 _ C1. F8, 03
        sub     esp, 12                                 ; 0588 _ 83. EC, 0C
        push    eax                                     ; 058B _ 50
        call    intToHexStr                             ; 058C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0591 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 0594 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 0597 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 059D _ A1, 00000220(d)
        sub     esp, 8                                  ; 05A2 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 05A5 _ FF. 75, C4
        push    7                                       ; 05A8 _ 6A, 07
        push    112                                     ; 05AA _ 6A, 70
        push    0                                       ; 05AC _ 6A, 00
        push    edx                                     ; 05AE _ 52
        push    eax                                     ; 05AF _ 50
        call    showString                              ; 05B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05B5 _ 83. C4, 20
        mov     eax, dword [?_186]                      ; 05B8 _ A1, 0000025C(d)
        sub     esp, 12                                 ; 05BD _ 83. EC, 0C
        push    eax                                     ; 05C0 _ 50
        call    intToHexStr                             ; 05C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05C6 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 05C9 _ 89. 45, C4
        mov     edx, dword [sheet_back]                 ; 05CC _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 05D2 _ A1, 00000220(d)
        sub     esp, 8                                  ; 05D7 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 05DA _ FF. 75, C4
        push    7                                       ; 05DD _ 6A, 07
        push    128                                     ; 05DF _ 68, 00000080
        push    0                                       ; 05E4 _ 6A, 00
        push    edx                                     ; 05E6 _ 52
        push    eax                                     ; 05E7 _ 50
        call    showString                              ; 05E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05ED _ 83. C4, 20
        mov     eax, dword [memman]                     ; 05F0 _ A1, 00000008(d)
        sub     esp, 8                                  ; 05F5 _ 83. EC, 08
        push    1024                                    ; 05F8 _ 68, 00000400
        push    eax                                     ; 05FD _ 50
        call    memman_alloc_4K                         ; 05FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0603 _ 83. C4, 10
        add     eax, 1024                               ; 0606 _ 05, 00000400
        mov     dword [ebp-38H], eax                    ; 060B _ 89. 45, C8
        mov     eax, dword [ebp-44H]                    ; 060E _ 8B. 45, BC
        neg     eax                                     ; 0611 _ F7. D8
        add     eax, task_b_main                        ; 0613 _ 05, 00000000(d)
        mov     dword [?_197], eax                      ; 0618 _ A3, 000002E0(d)
        mov     dword [?_198], 514                      ; 061D _ C7. 05, 000002E4(d), 00000202
        mov     dword [?_199], 0                        ; 0627 _ C7. 05, 000002E8(d), 00000000
        mov     dword [?_200], 0                        ; 0631 _ C7. 05, 000002EC(d), 00000000
        mov     dword [?_201], 0                        ; 063B _ C7. 05, 000002F0(d), 00000000
        mov     dword [?_202], 0                        ; 0645 _ C7. 05, 000002F4(d), 00000000
        mov     dword [?_203], 1024                     ; 064F _ C7. 05, 000002F8(d), 00000400
        mov     dword [?_204], 0                        ; 0659 _ C7. 05, 000002FC(d), 00000000
        mov     dword [?_205], 0                        ; 0663 _ C7. 05, 00000300(d), 00000000
        mov     dword [?_206], 0                        ; 066D _ C7. 05, 00000304(d), 00000000
        mov     eax, dword [?_189]                      ; 0677 _ A1, 00000288(d)
        mov     dword [?_207], eax                      ; 067C _ A3, 00000308(d)
        mov     eax, dword [?_190]                      ; 0681 _ A1, 0000028C(d)
        mov     dword [?_208], eax                      ; 0686 _ A3, 0000030C(d)
        mov     eax, dword [?_191]                      ; 068B _ A1, 00000290(d)
        mov     dword [?_209], eax                      ; 0690 _ A3, 00000310(d)
        mov     eax, dword [?_192]                      ; 0695 _ A1, 00000294(d)
        mov     dword [?_210], eax                      ; 069A _ A3, 00000314(d)
        mov     eax, dword [?_193]                      ; 069F _ A1, 00000298(d)
        mov     dword [?_211], eax                      ; 06A4 _ A3, 00000318(d)
        mov     eax, dword [?_194]                      ; 06A9 _ A1, 0000029C(d)
        mov     dword [?_212], eax                      ; 06AE _ A3, 0000031C(d)
        call    io_sti                                  ; 06B3 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 06B8 _ 83. EC, 0C
        push    mouse_move                              ; 06BB _ 68, 000000E0(d)
        call    enable_mouse                            ; 06C0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06C5 _ 83. C4, 10
        mov     byte [ebp-75H], 0                       ; 06C8 _ C6. 45, 8B, 00
        call    getTimerController                      ; 06CC _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 06D1 _ 89. 45, CC
        mov     dword [ebp-74H], 7                      ; 06D4 _ C7. 45, 8C, 00000007
        mov     dword [ebp-70H], 0                      ; 06DB _ C7. 45, 90, 00000000
        call    multi_task_init                         ; 06E2 _ E8, FFFFFFFC(rel)
?_001:  mov     eax, dword [ebp-60H]                    ; 06E7 _ 8B. 45, A0
        mov     eax, dword [eax]                        ; 06EA _ 8B. 00
        sub     esp, 12                                 ; 06EC _ 83. EC, 0C
        push    eax                                     ; 06EF _ 50
        call    intToHexStr                             ; 06F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06F5 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 06F8 _ 89. 45, D0
        mov     eax, dword [sheet_win]                  ; 06FB _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0700 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0703 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0708 _ 8B. 00
        sub     esp, 4                                  ; 070A _ 83. EC, 04
        push    38                                      ; 070D _ 6A, 26
        push    150                                     ; 070F _ 68, 00000096
        push    23                                      ; 0714 _ 6A, 17
        push    8                                       ; 0716 _ 6A, 08
        push    8                                       ; 0718 _ 6A, 08
        push    edx                                     ; 071A _ 52
        push    eax                                     ; 071B _ 50
        call    boxfill8                                ; 071C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0721 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 0724 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 072A _ A1, 00000220(d)
        sub     esp, 8                                  ; 072F _ 83. EC, 08
        push    dword [ebp-30H]                         ; 0732 _ FF. 75, D0
        push    10                                      ; 0735 _ 6A, 0A
        push    23                                      ; 0737 _ 6A, 17
        push    8                                       ; 0739 _ 6A, 08
        push    edx                                     ; 073B _ 52
        push    eax                                     ; 073C _ 50
        call    showString                              ; 073D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0742 _ 83. C4, 20
        sub     esp, 12                                 ; 0745 _ 83. EC, 0C
        push    keyInfo                                 ; 0748 _ 68, 00000008(d)
        call    fifo8_status                            ; 074D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0752 _ 83. C4, 10
        sub     esp, 12                                 ; 0755 _ 83. EC, 0C
        push    eax                                     ; 0758 _ 50
        call    intToHexStr                             ; 0759 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 075E _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 0761 _ 89. 45, D4
        mov     eax, dword [sheet_win]                  ; 0764 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0769 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 076C _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0771 _ 8B. 00
        sub     esp, 4                                  ; 0773 _ 83. EC, 04
        push    76                                      ; 0776 _ 6A, 4C
        push    100                                     ; 0778 _ 6A, 64
        push    61                                      ; 077A _ 6A, 3D
        push    8                                       ; 077C _ 6A, 08
        push    8                                       ; 077E _ 6A, 08
        push    edx                                     ; 0780 _ 52
        push    eax                                     ; 0781 _ 50
        call    boxfill8                                ; 0782 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0787 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 078A _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0790 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0795 _ 83. EC, 08
        push    dword [ebp-2CH]                         ; 0798 _ FF. 75, D4
        push    10                                      ; 079B _ 6A, 0A
        push    61                                      ; 079D _ 6A, 3D
        push    8                                       ; 079F _ 6A, 08
        push    edx                                     ; 07A1 _ 52
        push    eax                                     ; 07A2 _ 50
        call    showString                              ; 07A3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07A8 _ 83. C4, 20
        sub     esp, 12                                 ; 07AB _ 83. EC, 0C
        push    mouseInfo                               ; 07AE _ 68, 00000020(d)
        call    fifo8_status                            ; 07B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07B8 _ 83. C4, 10
        sub     esp, 12                                 ; 07BB _ 83. EC, 0C
        push    eax                                     ; 07BE _ 50
        call    intToHexStr                             ; 07BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C4 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 07C7 _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 07CA _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 07CF _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 07D2 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 07D7 _ 8B. 00
        sub     esp, 4                                  ; 07D9 _ 83. EC, 04
        push    92                                      ; 07DC _ 6A, 5C
        push    100                                     ; 07DE _ 6A, 64
        push    77                                      ; 07E0 _ 6A, 4D
        push    8                                       ; 07E2 _ 6A, 08
        push    8                                       ; 07E4 _ 6A, 08
        push    edx                                     ; 07E6 _ 52
        push    eax                                     ; 07E7 _ 50
        call    boxfill8                                ; 07E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07ED _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 07F0 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 07F6 _ A1, 00000220(d)
        sub     esp, 8                                  ; 07FB _ 83. EC, 08
        push    dword [ebp-28H]                         ; 07FE _ FF. 75, D8
        push    10                                      ; 0801 _ 6A, 0A
        push    77                                      ; 0803 _ 6A, 4D
        push    8                                       ; 0805 _ 6A, 08
        push    edx                                     ; 0807 _ 52
        push    eax                                     ; 0808 _ 50
        call    showString                              ; 0809 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 080E _ 83. C4, 20
        call    io_cli                                  ; 0811 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0816 _ 83. EC, 0C
        push    keyInfo                                 ; 0819 _ 68, 00000008(d)
        call    fifo8_status                            ; 081E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0823 _ 83. C4, 10
        mov     ebx, eax                                ; 0826 _ 89. C3
        sub     esp, 12                                 ; 0828 _ 83. EC, 0C
        push    mouseInfo                               ; 082B _ 68, 00000020(d)
        call    fifo8_status                            ; 0830 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0835 _ 83. C4, 10
        add     ebx, eax                                ; 0838 _ 01. C3
        sub     esp, 12                                 ; 083A _ 83. EC, 0C
        push    timerInfo                               ; 083D _ 68, 00000200(d)
        call    fifo8_status                            ; 0842 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0847 _ 83. C4, 10
        add     eax, ebx                                ; 084A _ 01. D8
        test    eax, eax                                ; 084C _ 85. C0
        jnz     ?_002                                   ; 084E _ 75, 0A
        call    io_sti                                  ; 0850 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0855 _ E9, FFFFFE8D

?_002:  sub     esp, 12                                 ; 085A _ 83. EC, 0C
        push    keyInfo                                 ; 085D _ 68, 00000008(d)
        call    fifo8_status                            ; 0862 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0867 _ 83. C4, 10
        test    eax, eax                                ; 086A _ 85. C0
        je      ?_007                                   ; 086C _ 0F 84, 00000314
        call    io_sti                                  ; 0872 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0877 _ 83. EC, 0C
        push    keyInfo                                 ; 087A _ 68, 00000008(d)
        call    fifo8_get                               ; 087F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0884 _ 83. C4, 10
        mov     byte [ebp-75H], al                      ; 0887 _ 88. 45, 8B
        cmp     byte [ebp-75H], 28                      ; 088A _ 80. 7D, 8B, 1C
        jnz     ?_003                                   ; 088E _ 75, 59
        mov     ebx, dword [cnt.1772]                   ; 0890 _ 8B. 1D, 00000328(d)
        mov     eax, dword [sheet_back]                 ; 0896 _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 089B _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 089D _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 08A3 _ A1, 00000220(d)
        sub     esp, 4                                  ; 08A8 _ 83. EC, 04
        push    7                                       ; 08AB _ 6A, 07
        push    dword [ebp-68H]                         ; 08AD _ FF. 75, 98
        push    ebx                                     ; 08B0 _ 53
        push    ecx                                     ; 08B1 _ 51
        push    dword [ebp-54H]                         ; 08B2 _ FF. 75, AC
        push    edx                                     ; 08B5 _ 52
        push    eax                                     ; 08B6 _ 50
        call    showMemInfo                             ; 08B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08BC _ 83. C4, 20
        mov     eax, dword [cnt.1772]                   ; 08BF _ A1, 00000328(d)
        add     eax, 1                                  ; 08C4 _ 83. C0, 01
        mov     dword [cnt.1772], eax                   ; 08C7 _ A3, 00000328(d)
        mov     eax, dword [cnt.1772]                   ; 08CC _ A1, 00000328(d)
        cmp     dword [ebp-50H], eax                    ; 08D1 _ 39. 45, B0
        jg      ?_001                                   ; 08D4 _ 0F 8F, FFFFFE0D
        mov     dword [cnt.1772], 0                     ; 08DA _ C7. 05, 00000328(d), 00000000
        jmp     ?_001                                   ; 08E4 _ E9, FFFFFDFE

?_003:  movzx   eax, byte [ebp-75H]                     ; 08E9 _ 0F B6. 45, 8B
        movzx   eax, byte [keytable+eax]                ; 08ED _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 08F4 _ 84. C0
        jz      ?_004                                   ; 08F6 _ 74, 18
        cmp     byte [ebp-75H], 15                      ; 08F8 _ 80. 7D, 8B, 0F
        jbe     ?_004                                   ; 08FC _ 76, 12
        cmp     byte [ebp-75H], 83                      ; 08FE _ 80. 7D, 8B, 53
        ja      ?_004                                   ; 0902 _ 77, 0C
        mov     eax, dword [line.1776]                  ; 0904 _ A1, 0000032C(d)
        cmp     eax, 142                                ; 0909 _ 3D, 0000008E
        jle     ?_005                                   ; 090E _ 7E, 18
?_004:  cmp     byte [ebp-75H], 14                      ; 0910 _ 80. 7D, 8B, 0E
        jne     ?_001                                   ; 0914 _ 0F 85, FFFFFDCD
        mov     eax, dword [line.1776]                  ; 091A _ A1, 0000032C(d)
        cmp     eax, 7                                  ; 091F _ 83. F8, 07
        jle     ?_001                                   ; 0922 _ 0F 8E, FFFFFDBF
?_005:  movzx   eax, byte [ebp-75H]                     ; 0928 _ 0F B6. 45, 8B
        movzx   eax, byte [keytable+eax]                ; 092C _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 0933 _ 84. C0
        je      ?_006                                   ; 0935 _ 0F 84, 00000125
        cmp     byte [ebp-75H], 15                      ; 093B _ 80. 7D, 8B, 0F
        jbe     ?_006                                   ; 093F _ 0F 86, 0000011B
        cmp     byte [ebp-75H], 83                      ; 0945 _ 80. 7D, 8B, 53
        ja      ?_006                                   ; 0949 _ 0F 87, 00000111
        mov     eax, dword [line.1776]                  ; 094F _ A1, 0000032C(d)
        cmp     eax, 142                                ; 0954 _ 3D, 0000008E
        jg      ?_006                                   ; 0959 _ 0F 8F, 00000101
        mov     eax, dword [pos.1777]                   ; 095F _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0964 _ 8D. 78, 28
        mov     eax, dword [line.1776]                  ; 0967 _ A1, 0000032C(d)
        lea     esi, [eax+0EH]                          ; 096C _ 8D. 70, 0E
        mov     eax, dword [pos.1777]                   ; 096F _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0974 _ 8D. 58, 1A
        mov     eax, dword [line.1776]                  ; 0977 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 097C _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 097F _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0984 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0987 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 098C _ 8B. 00
        sub     esp, 4                                  ; 098E _ 83. EC, 04
        push    edi                                     ; 0991 _ 57
        push    esi                                     ; 0992 _ 56
        push    ebx                                     ; 0993 _ 53
        push    ecx                                     ; 0994 _ 51
        push    7                                       ; 0995 _ 6A, 07
        push    edx                                     ; 0997 _ 52
        push    eax                                     ; 0998 _ 50
        call    boxfill8                                ; 0999 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 099E _ 83. C4, 20
        mov     eax, dword [pos.1777]                   ; 09A1 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 09A6 _ 8D. 78, 2A
        mov     eax, dword [line.1776]                  ; 09A9 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 09AE _ 8D. 70, 10
        mov     eax, dword [pos.1777]                   ; 09B1 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09B6 _ 8D. 58, 1A
        mov     eax, dword [line.1776]                  ; 09B9 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 09BE _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 09C1 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 09C7 _ A1, 00000220(d)
        sub     esp, 8                                  ; 09CC _ 83. EC, 08
        push    edi                                     ; 09CF _ 57
        push    esi                                     ; 09D0 _ 56
        push    ebx                                     ; 09D1 _ 53
        push    ecx                                     ; 09D2 _ 51
        push    edx                                     ; 09D3 _ 52
        push    eax                                     ; 09D4 _ 50
        call    sheet_refresh                           ; 09D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09DA _ 83. C4, 20
        movzx   eax, byte [ebp-75H]                     ; 09DD _ 0F B6. 45, 8B
        movzx   eax, byte [keytable+eax]                ; 09E1 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 09E8 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 09EB _ C6. 45, E3, 00
        mov     eax, dword [pos.1777]                   ; 09EF _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 09F4 _ 8D. 70, 1A
        mov     eax, dword [line.1776]                  ; 09F7 _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 09FC _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 09FF _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0A05 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0A0A _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0A0D _ 8D. 4D, E2
        push    ecx                                     ; 0A10 _ 51
        push    0                                       ; 0A11 _ 6A, 00
        push    esi                                     ; 0A13 _ 56
        push    ebx                                     ; 0A14 _ 53
        push    edx                                     ; 0A15 _ 52
        push    eax                                     ; 0A16 _ 50
        call    showString                              ; 0A17 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A1C _ 83. C4, 20
        mov     eax, dword [line.1776]                  ; 0A1F _ A1, 0000032C(d)
        add     eax, 8                                  ; 0A24 _ 83. C0, 08
        mov     dword [line.1776], eax                  ; 0A27 _ A3, 0000032C(d)
        mov     eax, dword [sheet_win]                  ; 0A2C _ A1, 00000224(d)
        mov     eax, dword [eax+4H]                     ; 0A31 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0A34 _ 8D. 50, F0
        mov     eax, dword [line.1776]                  ; 0A37 _ A1, 0000032C(d)
        cmp     edx, eax                                ; 0A3C _ 39. C2
        jg      ?_013                                   ; 0A3E _ 0F 8F, 00000300
        mov     eax, dword [pos.1777]                   ; 0A44 _ A1, 00000074(d)
        add     eax, 16                                 ; 0A49 _ 83. C0, 10
        mov     dword [pos.1777], eax                   ; 0A4C _ A3, 00000074(d)
        mov     dword [line.1776], 0                    ; 0A51 _ C7. 05, 0000032C(d), 00000000
        jmp     ?_013                                   ; 0A5B _ E9, 000002E4

?_006:  cmp     byte [ebp-75H], 14                      ; 0A60 _ 80. 7D, 8B, 0E
        jne     ?_001                                   ; 0A64 _ 0F 85, FFFFFC7D
        mov     eax, dword [line.1776]                  ; 0A6A _ A1, 0000032C(d)
        cmp     eax, 7                                  ; 0A6F _ 83. F8, 07
        jle     ?_001                                   ; 0A72 _ 0F 8E, FFFFFC6F
        mov     eax, dword [pos.1777]                   ; 0A78 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0A7D _ 8D. 78, 28
        mov     eax, dword [line.1776]                  ; 0A80 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0A85 _ 8D. 70, 10
        mov     eax, dword [pos.1777]                   ; 0A88 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0A8D _ 8D. 58, 1A
        mov     eax, dword [line.1776]                  ; 0A90 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0A95 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0A98 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0A9D _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0AA0 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0AA5 _ 8B. 00
        sub     esp, 4                                  ; 0AA7 _ 83. EC, 04
        push    edi                                     ; 0AAA _ 57
        push    esi                                     ; 0AAB _ 56
        push    ebx                                     ; 0AAC _ 53
        push    ecx                                     ; 0AAD _ 51
        push    7                                       ; 0AAE _ 6A, 07
        push    edx                                     ; 0AB0 _ 52
        push    eax                                     ; 0AB1 _ 50
        call    boxfill8                                ; 0AB2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AB7 _ 83. C4, 20
        mov     eax, dword [pos.1777]                   ; 0ABA _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0ABF _ 8D. 78, 2A
        mov     eax, dword [line.1776]                  ; 0AC2 _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0AC7 _ 8D. 70, 10
        mov     eax, dword [pos.1777]                   ; 0ACA _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0ACF _ 8D. 58, 1A
        mov     eax, dword [line.1776]                  ; 0AD2 _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0AD7 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0ADA _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0AE0 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0AE5 _ 83. EC, 08
        push    edi                                     ; 0AE8 _ 57
        push    esi                                     ; 0AE9 _ 56
        push    ebx                                     ; 0AEA _ 53
        push    ecx                                     ; 0AEB _ 51
        push    edx                                     ; 0AEC _ 52
        push    eax                                     ; 0AED _ 50
        call    sheet_refresh                           ; 0AEE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AF3 _ 83. C4, 20
        mov     eax, dword [line.1776]                  ; 0AF6 _ A1, 0000032C(d)
        sub     eax, 8                                  ; 0AFB _ 83. E8, 08
        mov     dword [line.1776], eax                  ; 0AFE _ A3, 0000032C(d)
        mov     eax, dword [pos.1777]                   ; 0B03 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0B08 _ 8D. 78, 28
        mov     eax, dword [line.1776]                  ; 0B0B _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0B10 _ 8D. 70, 10
        mov     eax, dword [pos.1777]                   ; 0B13 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0B18 _ 8D. 58, 1A
        mov     eax, dword [line.1776]                  ; 0B1B _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0B20 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0B23 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0B28 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0B2B _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0B30 _ 8B. 00
        sub     esp, 4                                  ; 0B32 _ 83. EC, 04
        push    edi                                     ; 0B35 _ 57
        push    esi                                     ; 0B36 _ 56
        push    ebx                                     ; 0B37 _ 53
        push    ecx                                     ; 0B38 _ 51
        push    7                                       ; 0B39 _ 6A, 07
        push    edx                                     ; 0B3B _ 52
        push    eax                                     ; 0B3C _ 50
        call    boxfill8                                ; 0B3D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B42 _ 83. C4, 20
        mov     eax, dword [pos.1777]                   ; 0B45 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0B4A _ 8D. 78, 2A
        mov     eax, dword [line.1776]                  ; 0B4D _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0B52 _ 8D. 70, 10
        mov     eax, dword [pos.1777]                   ; 0B55 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0B5A _ 8D. 58, 1A
        mov     eax, dword [line.1776]                  ; 0B5D _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0B62 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0B65 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0B6B _ A1, 00000220(d)
        sub     esp, 8                                  ; 0B70 _ 83. EC, 08
        push    edi                                     ; 0B73 _ 57
        push    esi                                     ; 0B74 _ 56
        push    ebx                                     ; 0B75 _ 53
        push    ecx                                     ; 0B76 _ 51
        push    edx                                     ; 0B77 _ 52
        push    eax                                     ; 0B78 _ 50
        call    sheet_refresh                           ; 0B79 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B7E _ 83. C4, 20
        jmp     ?_001                                   ; 0B81 _ E9, FFFFFB61

?_007:  sub     esp, 12                                 ; 0B86 _ 83. EC, 0C
        push    mouseInfo                               ; 0B89 _ 68, 00000020(d)
        call    fifo8_status                            ; 0B8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B93 _ 83. C4, 10
        test    eax, eax                                ; 0B96 _ 85. C0
        jz      ?_008                                   ; 0B98 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0B9A _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 0BA0 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0BA6 _ A1, 00000220(d)
        sub     esp, 4                                  ; 0BAB _ 83. EC, 04
        push    ecx                                     ; 0BAE _ 51
        push    edx                                     ; 0BAF _ 52
        push    eax                                     ; 0BB0 _ 50
        call    showMouseInfo                           ; 0BB1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BB6 _ 83. C4, 10
        jmp     ?_001                                   ; 0BB9 _ E9, FFFFFB29

?_008:  sub     esp, 12                                 ; 0BBE _ 83. EC, 0C
        push    timerInfo                               ; 0BC1 _ 68, 00000200(d)
        call    fifo8_status                            ; 0BC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BCB _ 83. C4, 10
        test    eax, eax                                ; 0BCE _ 85. C0
        je      ?_001                                   ; 0BD0 _ 0F 84, FFFFFB11
        call    io_sti                                  ; 0BD6 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0BDB _ 83. EC, 0C
        push    timerInfo                               ; 0BDE _ 68, 00000200(d)
        call    fifo8_get                               ; 0BE3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BE8 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0BEB _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 0BEE _ 83. 7D, DC, 0A
        jnz     ?_009                                   ; 0BF2 _ 75, 45
        mov     edx, dword [sheet_back]                 ; 0BF4 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0BFA _ A1, 00000220(d)
        sub     esp, 8                                  ; 0BFF _ 83. EC, 08
        push    ?_171                                   ; 0C02 _ 68, 00000008(d)
        push    7                                       ; 0C07 _ 6A, 07
        push    160                                     ; 0C09 _ 68, 000000A0
        push    dword [ebp-70H]                         ; 0C0E _ FF. 75, 90
        push    edx                                     ; 0C11 _ 52
        push    eax                                     ; 0C12 _ 50
        call    showString                              ; 0C13 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C18 _ 83. C4, 20
        add     dword [ebp-70H], 8                      ; 0C1B _ 83. 45, 90, 08
        call    taskswitch9                             ; 0C1F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C24 _ 83. EC, 08
        push    100                                     ; 0C27 _ 6A, 64
        push    dword [ebp-60H]                         ; 0C29 _ FF. 75, A0
        call    timer_setTime                           ; 0C2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C31 _ 83. C4, 10
        jmp     ?_001                                   ; 0C34 _ E9, FFFFFAAE

?_009:  cmp     dword [ebp-24H], 2                      ; 0C39 _ 83. 7D, DC, 02
        jnz     ?_010                                   ; 0C3D _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0C3F _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C45 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0C4A _ 83. EC, 08
        push    ?_172                                   ; 0C4D _ 68, 0000000A(d)
        push    7                                       ; 0C52 _ 6A, 07
        push    32                                      ; 0C54 _ 6A, 20
        push    80                                      ; 0C56 _ 6A, 50
        push    edx                                     ; 0C58 _ 52
        push    eax                                     ; 0C59 _ 50
        call    showString                              ; 0C5A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C5F _ 83. C4, 20
        jmp     ?_001                                   ; 0C62 _ E9, FFFFFA80

?_010:  cmp     dword [ebp-24H], 0                      ; 0C67 _ 83. 7D, DC, 00
        jz      ?_011                                   ; 0C6B _ 74, 1E
        sub     esp, 4                                  ; 0C6D _ 83. EC, 04
        push    0                                       ; 0C70 _ 6A, 00
        push    timerInfo                               ; 0C72 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0C77 _ FF. 75, A8
        call    timer_init                              ; 0C7A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C7F _ 83. C4, 10
        mov     dword [ebp-74H], 0                      ; 0C82 _ C7. 45, 8C, 00000000
        jmp     ?_012                                   ; 0C89 _ EB, 1C

?_011:  sub     esp, 4                                  ; 0C8B _ 83. EC, 04
        push    1                                       ; 0C8E _ 6A, 01
        push    timerInfo                               ; 0C90 _ 68, 00000200(d)
        push    dword [ebp-58H]                         ; 0C95 _ FF. 75, A8
        call    timer_init                              ; 0C98 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C9D _ 83. C4, 10
        mov     dword [ebp-74H], 7                      ; 0CA0 _ C7. 45, 8C, 00000007
?_012:  sub     esp, 8                                  ; 0CA7 _ 83. EC, 08
        push    50                                      ; 0CAA _ 6A, 32
        push    dword [ebp-58H]                         ; 0CAC _ FF. 75, A8
        call    timer_setTime                           ; 0CAF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB4 _ 83. C4, 10
        mov     eax, dword [pos.1777]                   ; 0CB7 _ A1, 00000074(d)
        add     eax, 40                                 ; 0CBC _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0CBF _ 89. 45, 84
        mov     eax, dword [line.1776]                  ; 0CC2 _ A1, 0000032C(d)
        lea     edi, [eax+0EH]                          ; 0CC7 _ 8D. 78, 0E
        mov     eax, dword [pos.1777]                   ; 0CCA _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0CCF _ 8D. 70, 1A
        mov     eax, dword [line.1776]                  ; 0CD2 _ A1, 0000032C(d)
        lea     ebx, [eax+8H]                           ; 0CD7 _ 8D. 58, 08
        mov     eax, dword [ebp-74H]                    ; 0CDA _ 8B. 45, 8C
        movzx   ecx, al                                 ; 0CDD _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0CE0 _ A1, 00000224(d)
        mov     edx, dword [eax+4H]                     ; 0CE5 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0CE8 _ A1, 00000224(d)
        mov     eax, dword [eax]                        ; 0CED _ 8B. 00
        sub     esp, 4                                  ; 0CEF _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 0CF2 _ FF. 75, 84
        push    edi                                     ; 0CF5 _ 57
        push    esi                                     ; 0CF6 _ 56
        push    ebx                                     ; 0CF7 _ 53
        push    ecx                                     ; 0CF8 _ 51
        push    edx                                     ; 0CF9 _ 52
        push    eax                                     ; 0CFA _ 50
        call    boxfill8                                ; 0CFB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D00 _ 83. C4, 20
        mov     eax, dword [pos.1777]                   ; 0D03 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0D08 _ 8D. 78, 2A
        mov     eax, dword [line.1776]                  ; 0D0B _ A1, 0000032C(d)
        lea     esi, [eax+10H]                          ; 0D10 _ 8D. 70, 10
        mov     eax, dword [pos.1777]                   ; 0D13 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0D18 _ 8D. 58, 1A
        mov     eax, dword [line.1776]                  ; 0D1B _ A1, 0000032C(d)
        lea     ecx, [eax+8H]                           ; 0D20 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0D23 _ 8B. 15, 00000224(d)
        mov     eax, dword [shtctl]                     ; 0D29 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0D2E _ 83. EC, 08
        push    edi                                     ; 0D31 _ 57
        push    esi                                     ; 0D32 _ 56
        push    ebx                                     ; 0D33 _ 53
        push    ecx                                     ; 0D34 _ 51
        push    edx                                     ; 0D35 _ 52
        push    eax                                     ; 0D36 _ 50
        call    sheet_refresh                           ; 0D37 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D3C _ 83. C4, 20
        jmp     ?_001                                   ; 0D3F _ E9, FFFFF9A3

?_013:  nop                                             ; 0D44 _ 90
        jmp     ?_001                                   ; 0D45 _ E9, FFFFF99D
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 0D4A _ 55
        mov     ebp, esp                                ; 0D4B _ 89. E5
        sub     esp, 56                                 ; 0D4D _ 83. EC, 38
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0D50 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0D56 _ 89. 45, F4
        xor     eax, eax                                ; 0D59 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0D5B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0D61 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0D66 _ 83. EC, 08
        push    ?_173                                   ; 0D69 _ 68, 00000011(d)
        push    7                                       ; 0D6E _ 6A, 07
        push    144                                     ; 0D70 _ 68, 00000090
        push    0                                       ; 0D75 _ 6A, 00
        push    edx                                     ; 0D77 _ 52
        push    eax                                     ; 0D78 _ 50
        call    showString                              ; 0D79 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D7E _ 83. C4, 20
        mov     dword [ebp-34H], 0                      ; 0D81 _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 0                      ; 0D88 _ C7. 45, D0, 00000000
        sub     esp, 4                                  ; 0D8F _ 83. EC, 04
        lea     eax, [ebp-14H]                          ; 0D92 _ 8D. 45, EC
        push    eax                                     ; 0D95 _ 50
        push    8                                       ; 0D96 _ 6A, 08
        lea     eax, [ebp-2CH]                          ; 0D98 _ 8D. 45, D4
        push    eax                                     ; 0D9B _ 50
        call    fifo8_init                              ; 0D9C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DA1 _ 83. C4, 10
        call    timer_alloc                             ; 0DA4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0DA9 _ 89. 45, CC
        sub     esp, 4                                  ; 0DAC _ 83. EC, 04
        push    123                                     ; 0DAF _ 6A, 7B
        lea     eax, [ebp-2CH]                          ; 0DB1 _ 8D. 45, D4
        push    eax                                     ; 0DB4 _ 50
        push    dword [ebp-34H]                         ; 0DB5 _ FF. 75, CC
        call    timer_init                              ; 0DB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DBD _ 83. C4, 10
        sub     esp, 8                                  ; 0DC0 _ 83. EC, 08
        push    100                                     ; 0DC3 _ 6A, 64
        push    dword [ebp-34H]                         ; 0DC5 _ FF. 75, CC
        call    timer_setTime                           ; 0DC8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DCD _ 83. C4, 10
        mov     dword [ebp-38H], 0                      ; 0DD0 _ C7. 45, C8, 00000000
?_014:  call    io_cli                                  ; 0DD7 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0DDC _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0DDF _ 8D. 45, D4
        push    eax                                     ; 0DE2 _ 50
        call    fifo8_status                            ; 0DE3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DE8 _ 83. C4, 10
        test    eax, eax                                ; 0DEB _ 85. C0
        jnz     ?_015                                   ; 0DED _ 75, 07
        call    io_sti                                  ; 0DEF _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 0DF4 _ EB, E1

?_015:  sub     esp, 12                                 ; 0DF6 _ 83. EC, 0C
        lea     eax, [ebp-2CH]                          ; 0DF9 _ 8D. 45, D4
        push    eax                                     ; 0DFC _ 50
        call    fifo8_get                               ; 0DFD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E02 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0E05 _ 89. 45, D0
        call    io_sti                                  ; 0E08 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-30H], 123                    ; 0E0D _ 83. 7D, D0, 7B
        jnz     ?_014                                   ; 0E11 _ 75, C4
        mov     edx, dword [sheet_back]                 ; 0E13 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0E19 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0E1E _ 83. EC, 08
        push    ?_174                                   ; 0E21 _ 68, 0000001E(d)
        push    7                                       ; 0E26 _ 6A, 07
        push    176                                     ; 0E28 _ 68, 000000B0
        push    dword [ebp-38H]                         ; 0E2D _ FF. 75, C8
        push    edx                                     ; 0E30 _ 52
        push    eax                                     ; 0E31 _ 50
        call    showString                              ; 0E32 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E37 _ 83. C4, 20
        call    taskswitch7                             ; 0E3A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0E3F _ 83. EC, 08
        push    100                                     ; 0E42 _ 6A, 64
        push    dword [ebp-34H]                         ; 0E44 _ FF. 75, CC
        call    timer_setTime                           ; 0E47 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E4C _ 83. C4, 10
        add     dword [ebp-38H], 8                      ; 0E4F _ 83. 45, C8, 08
        jmp     ?_014                                   ; 0E53 _ EB, 82
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0E55 _ 55
        mov     ebp, esp                                ; 0E56 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E58 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0E5B _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0E61 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0E64 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0E6A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0E6D _ 66: C7. 40, 06, 01E0
        nop                                             ; 0E73 _ 90
        pop     ebp                                     ; 0E74 _ 5D
        ret                                             ; 0E75 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0E76 _ 55
        mov     ebp, esp                                ; 0E77 _ 89. E5
        push    ebx                                     ; 0E79 _ 53
        sub     esp, 36                                 ; 0E7A _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0E7D _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0E80 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0E83 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0E86 _ 89. 45, F4
        jmp     ?_017                                   ; 0E89 _ EB, 3E

?_016:  mov     eax, dword [ebp+1CH]                    ; 0E8B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0E8E _ 0F B6. 00
        movzx   eax, al                                 ; 0E91 _ 0F B6. C0
        shl     eax, 4                                  ; 0E94 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0E97 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0E9D _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0EA1 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0EA4 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0EA7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0EAA _ 8B. 00
        sub     esp, 8                                  ; 0EAC _ 83. EC, 08
        push    ebx                                     ; 0EAF _ 53
        push    ecx                                     ; 0EB0 _ 51
        push    dword [ebp+14H]                         ; 0EB1 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0EB4 _ FF. 75, 10
        push    edx                                     ; 0EB7 _ 52
        push    eax                                     ; 0EB8 _ 50
        call    showFont8                               ; 0EB9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EBE _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0EC1 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0EC5 _ 83. 45, 1C, 01
?_017:  mov     eax, dword [ebp+1CH]                    ; 0EC9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0ECC _ 0F B6. 00
        test    al, al                                  ; 0ECF _ 84. C0
        jnz     ?_016                                   ; 0ED1 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0ED3 _ 8B. 45, 14
        add     eax, 16                                 ; 0ED6 _ 83. C0, 10
        sub     esp, 8                                  ; 0ED9 _ 83. EC, 08
        push    eax                                     ; 0EDC _ 50
        push    dword [ebp+10H]                         ; 0EDD _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0EE0 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0EE3 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0EE6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EE9 _ FF. 75, 08
        call    sheet_refresh                           ; 0EEC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EF1 _ 83. C4, 20
        nop                                             ; 0EF4 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0EF5 _ 8B. 5D, FC
        leave                                           ; 0EF8 _ C9
        ret                                             ; 0EF9 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0EFA _ 55
        mov     ebp, esp                                ; 0EFB _ 89. E5
        push    ebx                                     ; 0EFD _ 53
        sub     esp, 4                                  ; 0EFE _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0F01 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0F04 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0F07 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0F0A _ 83. E8, 01
        sub     esp, 4                                  ; 0F0D _ 83. EC, 04
        push    edx                                     ; 0F10 _ 52
        push    eax                                     ; 0F11 _ 50
        push    0                                       ; 0F12 _ 6A, 00
        push    0                                       ; 0F14 _ 6A, 00
        push    14                                      ; 0F16 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0F18 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F1B _ FF. 75, 08
        call    boxfill8                                ; 0F1E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F23 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F26 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0F29 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0F2C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F2F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F32 _ 8B. 45, 10
        sub     eax, 24                                 ; 0F35 _ 83. E8, 18
        sub     esp, 4                                  ; 0F38 _ 83. EC, 04
        push    ecx                                     ; 0F3B _ 51
        push    edx                                     ; 0F3C _ 52
        push    eax                                     ; 0F3D _ 50
        push    0                                       ; 0F3E _ 6A, 00
        push    8                                       ; 0F40 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0F42 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F45 _ FF. 75, 08
        call    boxfill8                                ; 0F48 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F4D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F50 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0F53 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0F56 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F59 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F5C _ 8B. 45, 10
        sub     eax, 23                                 ; 0F5F _ 83. E8, 17
        sub     esp, 4                                  ; 0F62 _ 83. EC, 04
        push    ecx                                     ; 0F65 _ 51
        push    edx                                     ; 0F66 _ 52
        push    eax                                     ; 0F67 _ 50
        push    0                                       ; 0F68 _ 6A, 00
        push    7                                       ; 0F6A _ 6A, 07
        push    dword [ebp+0CH]                         ; 0F6C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F6F _ FF. 75, 08
        call    boxfill8                                ; 0F72 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F77 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F7A _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0F7D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0F80 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F83 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F86 _ 8B. 45, 10
        sub     eax, 22                                 ; 0F89 _ 83. E8, 16
        sub     esp, 4                                  ; 0F8C _ 83. EC, 04
        push    ecx                                     ; 0F8F _ 51
        push    edx                                     ; 0F90 _ 52
        push    eax                                     ; 0F91 _ 50
        push    0                                       ; 0F92 _ 6A, 00
        push    8                                       ; 0F94 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0F96 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F99 _ FF. 75, 08
        call    boxfill8                                ; 0F9C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FA1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FA4 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FA7 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0FAA _ 8B. 45, 10
        sub     eax, 20                                 ; 0FAD _ 83. E8, 14
        sub     esp, 4                                  ; 0FB0 _ 83. EC, 04
        push    edx                                     ; 0FB3 _ 52
        push    51                                      ; 0FB4 _ 6A, 33
        push    eax                                     ; 0FB6 _ 50
        push    10                                      ; 0FB7 _ 6A, 0A
        push    7                                       ; 0FB9 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FBB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FBE _ FF. 75, 08
        call    boxfill8                                ; 0FC1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FC6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FC9 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0FCC _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0FCF _ 8B. 45, 10
        sub     eax, 20                                 ; 0FD2 _ 83. E8, 14
        sub     esp, 4                                  ; 0FD5 _ 83. EC, 04
        push    edx                                     ; 0FD8 _ 52
        push    9                                       ; 0FD9 _ 6A, 09
        push    eax                                     ; 0FDB _ 50
        push    9                                       ; 0FDC _ 6A, 09
        push    7                                       ; 0FDE _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FE0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FE3 _ FF. 75, 08
        call    boxfill8                                ; 0FE6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FEB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FEE _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0FF1 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0FF4 _ 8B. 45, 10
        sub     eax, 4                                  ; 0FF7 _ 83. E8, 04
        sub     esp, 4                                  ; 0FFA _ 83. EC, 04
        push    edx                                     ; 0FFD _ 52
        push    50                                      ; 0FFE _ 6A, 32
        push    eax                                     ; 1000 _ 50
        push    10                                      ; 1001 _ 6A, 0A
        push    15                                      ; 1003 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1005 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1008 _ FF. 75, 08
        call    boxfill8                                ; 100B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1010 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1013 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1016 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1019 _ 8B. 45, 10
        sub     eax, 19                                 ; 101C _ 83. E8, 13
        sub     esp, 4                                  ; 101F _ 83. EC, 04
        push    edx                                     ; 1022 _ 52
        push    50                                      ; 1023 _ 6A, 32
        push    eax                                     ; 1025 _ 50
        push    50                                      ; 1026 _ 6A, 32
        push    15                                      ; 1028 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 102A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 102D _ FF. 75, 08
        call    boxfill8                                ; 1030 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1035 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1038 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 103B _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 103E _ 8B. 45, 10
        sub     eax, 3                                  ; 1041 _ 83. E8, 03
        sub     esp, 4                                  ; 1044 _ 83. EC, 04
        push    edx                                     ; 1047 _ 52
        push    50                                      ; 1048 _ 6A, 32
        push    eax                                     ; 104A _ 50
        push    10                                      ; 104B _ 6A, 0A
        push    0                                       ; 104D _ 6A, 00
        push    dword [ebp+0CH]                         ; 104F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1052 _ FF. 75, 08
        call    boxfill8                                ; 1055 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 105A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 105D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1060 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1063 _ 8B. 45, 10
        sub     eax, 20                                 ; 1066 _ 83. E8, 14
        sub     esp, 4                                  ; 1069 _ 83. EC, 04
        push    edx                                     ; 106C _ 52
        push    51                                      ; 106D _ 6A, 33
        push    eax                                     ; 106F _ 50
        push    51                                      ; 1070 _ 6A, 33
        push    0                                       ; 1072 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1074 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1077 _ FF. 75, 08
        call    boxfill8                                ; 107A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 107F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1082 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 1085 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 1088 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 108B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 108E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1091 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1094 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1097 _ 83. E8, 2F
        sub     esp, 4                                  ; 109A _ 83. EC, 04
        push    ebx                                     ; 109D _ 53
        push    ecx                                     ; 109E _ 51
        push    edx                                     ; 109F _ 52
        push    eax                                     ; 10A0 _ 50
        push    15                                      ; 10A1 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 10A3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10A6 _ FF. 75, 08
        call    boxfill8                                ; 10A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10AE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10B1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 10B4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 10B7 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 10BA _ 8D. 48, D1
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
        lea     ecx, [eax-4H]                           ; 10E9 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 10EC _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 10EF _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 10F2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 10F5 _ 83. E8, 2F
        sub     esp, 4                                  ; 10F8 _ 83. EC, 04
        push    ebx                                     ; 10FB _ 53
        push    ecx                                     ; 10FC _ 51
        push    edx                                     ; 10FD _ 52
        push    eax                                     ; 10FE _ 50
        push    7                                       ; 10FF _ 6A, 07
        push    dword [ebp+0CH]                         ; 1101 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1104 _ FF. 75, 08
        call    boxfill8                                ; 1107 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 110C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 110F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1112 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1115 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1118 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 111B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 111E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1121 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1124 _ 83. E8, 03
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
        nop                                             ; 113E _ 90
        mov     ebx, dword [ebp-4H]                     ; 113F _ 8B. 5D, FC
        leave                                           ; 1142 _ C9
        ret                                             ; 1143 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1144 _ 55
        mov     ebp, esp                                ; 1145 _ 89. E5
        sub     esp, 24                                 ; 1147 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 114A _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 114F _ 89. 45, EC
        movzx   eax, word [?_183]                       ; 1152 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1159 _ 98
        mov     dword [ebp-10H], eax                    ; 115A _ 89. 45, F0
        movzx   eax, word [?_184]                       ; 115D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1164 _ 98
        mov     dword [ebp-0CH], eax                    ; 1165 _ 89. 45, F4
        sub     esp, 4                                  ; 1168 _ 83. EC, 04
        push    table_rgb.1820                          ; 116B _ 68, 00000080(d)
        push    15                                      ; 1170 _ 6A, 0F
        push    0                                       ; 1172 _ 6A, 00
        call    set_palette                             ; 1174 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1179 _ 83. C4, 10
        nop                                             ; 117C _ 90
        leave                                           ; 117D _ C9
        ret                                             ; 117E _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 117F _ 55
        mov     ebp, esp                                ; 1180 _ 89. E5
        sub     esp, 24                                 ; 1182 _ 83. EC, 18
        call    io_load_eflags                          ; 1185 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 118A _ 89. 45, F4
        call    io_cli                                  ; 118D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1192 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1195 _ FF. 75, 08
        push    968                                     ; 1198 _ 68, 000003C8
        call    io_out8                                 ; 119D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11A2 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 11A5 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 11A8 _ 89. 45, F0
        jmp     ?_019                                   ; 11AB _ EB, 65

?_018:  mov     eax, dword [ebp+10H]                    ; 11AD _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 11B0 _ 0F B6. 00
        shr     al, 2                                   ; 11B3 _ C0. E8, 02
        movzx   eax, al                                 ; 11B6 _ 0F B6. C0
        sub     esp, 8                                  ; 11B9 _ 83. EC, 08
        push    eax                                     ; 11BC _ 50
        push    969                                     ; 11BD _ 68, 000003C9
        call    io_out8                                 ; 11C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11C7 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 11CA _ 8B. 45, 10
        add     eax, 1                                  ; 11CD _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 11D0 _ 0F B6. 00
        shr     al, 2                                   ; 11D3 _ C0. E8, 02
        movzx   eax, al                                 ; 11D6 _ 0F B6. C0
        sub     esp, 8                                  ; 11D9 _ 83. EC, 08
        push    eax                                     ; 11DC _ 50
        push    969                                     ; 11DD _ 68, 000003C9
        call    io_out8                                 ; 11E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11E7 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 11EA _ 8B. 45, 10
        add     eax, 2                                  ; 11ED _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 11F0 _ 0F B6. 00
        shr     al, 2                                   ; 11F3 _ C0. E8, 02
        movzx   eax, al                                 ; 11F6 _ 0F B6. C0
        sub     esp, 8                                  ; 11F9 _ 83. EC, 08
        push    eax                                     ; 11FC _ 50
        push    969                                     ; 11FD _ 68, 000003C9
        call    io_out8                                 ; 1202 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1207 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 120A _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 120E _ 83. 45, F0, 01
?_019:  mov     eax, dword [ebp-10H]                    ; 1212 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1215 _ 3B. 45, 0C
        jle     ?_018                                   ; 1218 _ 7E, 93
        sub     esp, 12                                 ; 121A _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 121D _ FF. 75, F4
        call    io_store_eflags                         ; 1220 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1225 _ 83. C4, 10
        nop                                             ; 1228 _ 90
        leave                                           ; 1229 _ C9
        ret                                             ; 122A _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 122B _ 55
        mov     ebp, esp                                ; 122C _ 89. E5
        sub     esp, 20                                 ; 122E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1231 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1234 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1237 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 123A _ 89. 45, FC
        jmp     ?_023                                   ; 123D _ EB, 33

?_020:  mov     eax, dword [ebp+14H]                    ; 123F _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1242 _ 89. 45, F8
        jmp     ?_022                                   ; 1245 _ EB, 1F

?_021:  mov     eax, dword [ebp-4H]                     ; 1247 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 124A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 124E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1250 _ 8B. 45, F8
        add     eax, edx                                ; 1253 _ 01. D0
        mov     edx, eax                                ; 1255 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1257 _ 8B. 45, 08
        add     edx, eax                                ; 125A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 125C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1260 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1262 _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 1266 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1269 _ 3B. 45, 1C
        jle     ?_021                                   ; 126C _ 7E, D9
        add     dword [ebp-4H], 1                       ; 126E _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 1272 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1275 _ 3B. 45, 20
        jle     ?_020                                   ; 1278 _ 7E, C5
        nop                                             ; 127A _ 90
        leave                                           ; 127B _ C9
        ret                                             ; 127C _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 127D _ 55
        mov     ebp, esp                                ; 127E _ 89. E5
        push    edi                                     ; 1280 _ 57
        push    esi                                     ; 1281 _ 56
        push    ebx                                     ; 1282 _ 53
        sub     esp, 16                                 ; 1283 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1286 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1289 _ 8B. 45, 14
        add     eax, edx                                ; 128C _ 01. D0
        mov     dword [ebp-14H], eax                    ; 128E _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1291 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1294 _ 8B. 45, 18
        add     eax, edx                                ; 1297 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1299 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 129C _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 129F _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 12A2 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 12A5 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 12A8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 12AB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 12AE _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 12B1 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 12B4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12B7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12BA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12BD _ 8B. 00
        push    edi                                     ; 12BF _ 57
        push    esi                                     ; 12C0 _ 56
        push    ebx                                     ; 12C1 _ 53
        push    ecx                                     ; 12C2 _ 51
        push    15                                      ; 12C3 _ 6A, 0F
        push    edx                                     ; 12C5 _ 52
        push    eax                                     ; 12C6 _ 50
        call    boxfill8                                ; 12C7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12CC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 12CF _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 12D2 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 12D5 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 12D8 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 12DB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 12DE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 12E1 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 12E4 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 12E7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12EA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12ED _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12F0 _ 8B. 00
        push    edi                                     ; 12F2 _ 57
        push    esi                                     ; 12F3 _ 56
        push    ebx                                     ; 12F4 _ 53
        push    ecx                                     ; 12F5 _ 51
        push    15                                      ; 12F6 _ 6A, 0F
        push    edx                                     ; 12F8 _ 52
        push    eax                                     ; 12F9 _ 50
        call    boxfill8                                ; 12FA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12FF _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1302 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1305 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1308 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 130B _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 130E _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1311 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1314 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1317 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 131A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 131D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1320 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1323 _ 8B. 00
        push    edi                                     ; 1325 _ 57
        push    esi                                     ; 1326 _ 56
        push    ebx                                     ; 1327 _ 53
        push    ecx                                     ; 1328 _ 51
        push    7                                       ; 1329 _ 6A, 07
        push    edx                                     ; 132B _ 52
        push    eax                                     ; 132C _ 50
        call    boxfill8                                ; 132D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1332 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1335 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1338 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 133B _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 133E _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1341 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1344 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1347 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 134A _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 134D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1350 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1353 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1356 _ 8B. 00
        push    edi                                     ; 1358 _ 57
        push    esi                                     ; 1359 _ 56
        push    ebx                                     ; 135A _ 53
        push    ecx                                     ; 135B _ 51
        push    7                                       ; 135C _ 6A, 07
        push    edx                                     ; 135E _ 52
        push    eax                                     ; 135F _ 50
        call    boxfill8                                ; 1360 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1365 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1368 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 136B _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 136E _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1371 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1374 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1377 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 137A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 137D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1380 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1383 _ 8B. 00
        push    esi                                     ; 1385 _ 56
        push    dword [ebp-14H]                         ; 1386 _ FF. 75, EC
        push    ebx                                     ; 1389 _ 53
        push    ecx                                     ; 138A _ 51
        push    0                                       ; 138B _ 6A, 00
        push    edx                                     ; 138D _ 52
        push    eax                                     ; 138E _ 50
        call    boxfill8                                ; 138F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1394 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1397 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 139A _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 139D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13A0 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 13A3 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 13A6 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 13A9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13AC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13B2 _ 8B. 00
        push    dword [ebp-10H]                         ; 13B4 _ FF. 75, F0
        push    esi                                     ; 13B7 _ 56
        push    ebx                                     ; 13B8 _ 53
        push    ecx                                     ; 13B9 _ 51
        push    0                                       ; 13BA _ 6A, 00
        push    edx                                     ; 13BC _ 52
        push    eax                                     ; 13BD _ 50
        call    boxfill8                                ; 13BE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13C3 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 13C6 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 13C9 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 13CC _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 13CF _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 13D2 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 13D5 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 13D8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13DB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13DE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13E1 _ 8B. 00
        push    esi                                     ; 13E3 _ 56
        push    dword [ebp-14H]                         ; 13E4 _ FF. 75, EC
        push    ebx                                     ; 13E7 _ 53
        push    ecx                                     ; 13E8 _ 51
        push    8                                       ; 13E9 _ 6A, 08
        push    edx                                     ; 13EB _ 52
        push    eax                                     ; 13EC _ 50
        call    boxfill8                                ; 13ED _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13F2 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 13F5 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 13F8 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 13FB _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 13FE _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1401 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1404 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1407 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 140A _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 140D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1410 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1413 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1416 _ 8B. 00
        push    edi                                     ; 1418 _ 57
        push    esi                                     ; 1419 _ 56
        push    ebx                                     ; 141A _ 53
        push    ecx                                     ; 141B _ 51
        push    8                                       ; 141C _ 6A, 08
        push    edx                                     ; 141E _ 52
        push    eax                                     ; 141F _ 50
        call    boxfill8                                ; 1420 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1425 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1428 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 142B _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 142E _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1431 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1434 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1437 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 143A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 143D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1440 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1443 _ 8B. 00
        push    dword [ebp-10H]                         ; 1445 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1448 _ FF. 75, EC
        push    esi                                     ; 144B _ 56
        push    ebx                                     ; 144C _ 53
        push    ecx                                     ; 144D _ 51
        push    edx                                     ; 144E _ 52
        push    eax                                     ; 144F _ 50
        call    boxfill8                                ; 1450 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1455 _ 83. C4, 1C
        nop                                             ; 1458 _ 90
        lea     esp, [ebp-0CH]                          ; 1459 _ 8D. 65, F4
        pop     ebx                                     ; 145C _ 5B
        pop     esi                                     ; 145D _ 5E
        pop     edi                                     ; 145E _ 5F
        pop     ebp                                     ; 145F _ 5D
        ret                                             ; 1460 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1461 _ 55
        mov     ebp, esp                                ; 1462 _ 89. E5
        sub     esp, 20                                 ; 1464 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1467 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 146A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 146D _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 1474 _ E9, 0000016C

?_024:  mov     edx, dword [ebp-4H]                     ; 1479 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 147C _ 8B. 45, 1C
        add     eax, edx                                ; 147F _ 01. D0
        movzx   eax, byte [eax]                         ; 1481 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1484 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1487 _ 80. 7D, FB, 00
        jns     ?_025                                   ; 148B _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 148D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1490 _ 8B. 45, FC
        add     eax, edx                                ; 1493 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1495 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1499 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 149B _ 8B. 45, 10
        add     eax, edx                                ; 149E _ 01. D0
        mov     edx, eax                                ; 14A0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14A2 _ 8B. 45, 08
        add     edx, eax                                ; 14A5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14A7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14AB _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 14AD _ 0F BE. 45, FB
        and     eax, 40H                                ; 14B1 _ 83. E0, 40
        test    eax, eax                                ; 14B4 _ 85. C0
        jz      ?_026                                   ; 14B6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14B8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14BB _ 8B. 45, FC
        add     eax, edx                                ; 14BE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14C0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14C4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14C6 _ 8B. 45, 10
        add     eax, edx                                ; 14C9 _ 01. D0
        lea     edx, [eax+1H]                           ; 14CB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 14CE _ 8B. 45, 08
        add     edx, eax                                ; 14D1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14D3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14D7 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 14D9 _ 0F BE. 45, FB
        and     eax, 20H                                ; 14DD _ 83. E0, 20
        test    eax, eax                                ; 14E0 _ 85. C0
        jz      ?_027                                   ; 14E2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14E4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14E7 _ 8B. 45, FC
        add     eax, edx                                ; 14EA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14EC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14F0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14F2 _ 8B. 45, 10
        add     eax, edx                                ; 14F5 _ 01. D0
        lea     edx, [eax+2H]                           ; 14F7 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 14FA _ 8B. 45, 08
        add     edx, eax                                ; 14FD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14FF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1503 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 1505 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1509 _ 83. E0, 10
        test    eax, eax                                ; 150C _ 85. C0
        jz      ?_028                                   ; 150E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1510 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1513 _ 8B. 45, FC
        add     eax, edx                                ; 1516 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1518 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 151C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 151E _ 8B. 45, 10
        add     eax, edx                                ; 1521 _ 01. D0
        lea     edx, [eax+3H]                           ; 1523 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1526 _ 8B. 45, 08
        add     edx, eax                                ; 1529 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 152B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 152F _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1531 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1535 _ 83. E0, 08
        test    eax, eax                                ; 1538 _ 85. C0
        jz      ?_029                                   ; 153A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 153C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 153F _ 8B. 45, FC
        add     eax, edx                                ; 1542 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1544 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1548 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 154A _ 8B. 45, 10
        add     eax, edx                                ; 154D _ 01. D0
        lea     edx, [eax+4H]                           ; 154F _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1552 _ 8B. 45, 08
        add     edx, eax                                ; 1555 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1557 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 155B _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 155D _ 0F BE. 45, FB
        and     eax, 04H                                ; 1561 _ 83. E0, 04
        test    eax, eax                                ; 1564 _ 85. C0
        jz      ?_030                                   ; 1566 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1568 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 156B _ 8B. 45, FC
        add     eax, edx                                ; 156E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1570 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1574 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1576 _ 8B. 45, 10
        add     eax, edx                                ; 1579 _ 01. D0
        lea     edx, [eax+5H]                           ; 157B _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 157E _ 8B. 45, 08
        add     edx, eax                                ; 1581 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1583 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1587 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 1589 _ 0F BE. 45, FB
        and     eax, 02H                                ; 158D _ 83. E0, 02
        test    eax, eax                                ; 1590 _ 85. C0
        jz      ?_031                                   ; 1592 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1594 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1597 _ 8B. 45, FC
        add     eax, edx                                ; 159A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 159C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15A0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15A2 _ 8B. 45, 10
        add     eax, edx                                ; 15A5 _ 01. D0
        lea     edx, [eax+6H]                           ; 15A7 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 15AA _ 8B. 45, 08
        add     edx, eax                                ; 15AD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15AF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15B3 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 15B5 _ 0F BE. 45, FB
        and     eax, 01H                                ; 15B9 _ 83. E0, 01
        test    eax, eax                                ; 15BC _ 85. C0
        jz      ?_032                                   ; 15BE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 15C0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 15C3 _ 8B. 45, FC
        add     eax, edx                                ; 15C6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 15C8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15CC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15CE _ 8B. 45, 10
        add     eax, edx                                ; 15D1 _ 01. D0
        lea     edx, [eax+7H]                           ; 15D3 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 15D6 _ 8B. 45, 08
        add     edx, eax                                ; 15D9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15DB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15DF _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 15E1 _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 15E5 _ 83. 7D, FC, 0F
        jle     ?_024                                   ; 15E9 _ 0F 8E, FFFFFE8A
        nop                                             ; 15EF _ 90
        leave                                           ; 15F0 _ C9
        ret                                             ; 15F1 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 15F2 _ 55
        mov     ebp, esp                                ; 15F3 _ 89. E5
        sub     esp, 20                                 ; 15F5 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 15F8 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 15FB _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 15FE _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 1605 _ E9, 000000B1

?_034:  mov     dword [ebp-8H], 0                       ; 160A _ C7. 45, F8, 00000000
        jmp     ?_039                                   ; 1611 _ E9, 00000097

?_035:  mov     eax, dword [ebp-4H]                     ; 1616 _ 8B. 45, FC
        shl     eax, 4                                  ; 1619 _ C1. E0, 04
        mov     edx, eax                                ; 161C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 161E _ 8B. 45, F8
        add     eax, edx                                ; 1621 _ 01. D0
        add     eax, cursor.1875                        ; 1623 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1628 _ 0F B6. 00
        cmp     al, 42                                  ; 162B _ 3C, 2A
        jnz     ?_036                                   ; 162D _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 162F _ 8B. 45, FC
        shl     eax, 4                                  ; 1632 _ C1. E0, 04
        mov     edx, eax                                ; 1635 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1637 _ 8B. 45, F8
        add     eax, edx                                ; 163A _ 01. D0
        mov     edx, eax                                ; 163C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 163E _ 8B. 45, 08
        add     eax, edx                                ; 1641 _ 01. D0
        mov     byte [eax], 0                           ; 1643 _ C6. 00, 00
?_036:  mov     eax, dword [ebp-4H]                     ; 1646 _ 8B. 45, FC
        shl     eax, 4                                  ; 1649 _ C1. E0, 04
        mov     edx, eax                                ; 164C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 164E _ 8B. 45, F8
        add     eax, edx                                ; 1651 _ 01. D0
        add     eax, cursor.1875                        ; 1653 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1658 _ 0F B6. 00
        cmp     al, 79                                  ; 165B _ 3C, 4F
        jnz     ?_037                                   ; 165D _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 165F _ 8B. 45, FC
        shl     eax, 4                                  ; 1662 _ C1. E0, 04
        mov     edx, eax                                ; 1665 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1667 _ 8B. 45, F8
        add     eax, edx                                ; 166A _ 01. D0
        mov     edx, eax                                ; 166C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 166E _ 8B. 45, 08
        add     eax, edx                                ; 1671 _ 01. D0
        mov     byte [eax], 7                           ; 1673 _ C6. 00, 07
?_037:  mov     eax, dword [ebp-4H]                     ; 1676 _ 8B. 45, FC
        shl     eax, 4                                  ; 1679 _ C1. E0, 04
        mov     edx, eax                                ; 167C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 167E _ 8B. 45, F8
        add     eax, edx                                ; 1681 _ 01. D0
        add     eax, cursor.1875                        ; 1683 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1688 _ 0F B6. 00
        cmp     al, 46                                  ; 168B _ 3C, 2E
        jnz     ?_038                                   ; 168D _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 168F _ 8B. 45, FC
        shl     eax, 4                                  ; 1692 _ C1. E0, 04
        mov     edx, eax                                ; 1695 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1697 _ 8B. 45, F8
        add     eax, edx                                ; 169A _ 01. D0
        mov     edx, eax                                ; 169C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 169E _ 8B. 45, 08
        add     edx, eax                                ; 16A1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 16A3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 16A7 _ 88. 02
?_038:  add     dword [ebp-8H], 1                       ; 16A9 _ 83. 45, F8, 01
?_039:  cmp     dword [ebp-8H], 15                      ; 16AD _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 16B1 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 16B7 _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 16BB _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 16BF _ 0F 8E, FFFFFF45
        nop                                             ; 16C5 _ 90
        leave                                           ; 16C6 _ C9
        ret                                             ; 16C7 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 16C8 _ 55
        mov     ebp, esp                                ; 16C9 _ 89. E5
        push    ebx                                     ; 16CB _ 53
        sub     esp, 16                                 ; 16CC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 16CF _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 16D6 _ EB, 50

?_041:  mov     dword [ebp-0CH], 0                      ; 16D8 _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 16DF _ EB, 3B

?_042:  mov     eax, dword [ebp-8H]                     ; 16E1 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 16E4 _ 0F AF. 45, 24
        mov     edx, eax                                ; 16E8 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 16EA _ 8B. 45, F4
        add     eax, edx                                ; 16ED _ 01. D0
        mov     edx, eax                                ; 16EF _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 16F1 _ 8B. 45, 20
        add     eax, edx                                ; 16F4 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 16F6 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 16F9 _ 8B. 55, F8
        add     edx, ecx                                ; 16FC _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 16FE _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1702 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1705 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1708 _ 01. D9
        add     edx, ecx                                ; 170A _ 01. CA
        mov     ecx, edx                                ; 170C _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 170E _ 8B. 55, 08
        add     edx, ecx                                ; 1711 _ 01. CA
        movzx   eax, byte [eax]                         ; 1713 _ 0F B6. 00
        mov     byte [edx], al                          ; 1716 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1718 _ 83. 45, F4, 01
?_043:  mov     eax, dword [ebp-0CH]                    ; 171C _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 171F _ 3B. 45, 10
        jl      ?_042                                   ; 1722 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1724 _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 1728 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 172B _ 3B. 45, 14
        jl      ?_041                                   ; 172E _ 7C, A8
        nop                                             ; 1730 _ 90
        add     esp, 16                                 ; 1731 _ 83. C4, 10
        pop     ebx                                     ; 1734 _ 5B
        pop     ebp                                     ; 1735 _ 5D
        ret                                             ; 1736 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1737 _ 55
        mov     ebp, esp                                ; 1738 _ 89. E5
        sub     esp, 24                                 ; 173A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 173D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1742 _ 89. 45, EC
        movzx   eax, word [?_183]                       ; 1745 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 174C _ 98
        mov     dword [ebp-10H], eax                    ; 174D _ 89. 45, F0
        movzx   eax, word [?_184]                       ; 1750 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1757 _ 98
        mov     dword [ebp-0CH], eax                    ; 1758 _ 89. 45, F4
        sub     esp, 8                                  ; 175B _ 83. EC, 08
        push    32                                      ; 175E _ 6A, 20
        push    32                                      ; 1760 _ 6A, 20
        call    io_out8                                 ; 1762 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1767 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 176A _ C6. 45, EB, 00
        sub     esp, 12                                 ; 176E _ 83. EC, 0C
        push    96                                      ; 1771 _ 6A, 60
        call    io_in8                                  ; 1773 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1778 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 177B _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 177E _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1782 _ 83. EC, 08
        push    eax                                     ; 1785 _ 50
        push    keyInfo                                 ; 1786 _ 68, 00000008(d)
        call    fifo8_put                               ; 178B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1790 _ 83. C4, 10
        nop                                             ; 1793 _ 90
        leave                                           ; 1794 _ C9
        ret                                             ; 1795 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1796 _ 55
        mov     ebp, esp                                ; 1797 _ 89. E5
        sub     esp, 40                                 ; 1799 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 179C _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 179F _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 17A2 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 17A6 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 17A9 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 17AC _ 0F BE. 45, F7
        sub     esp, 12                                 ; 17B0 _ 83. EC, 0C
        push    eax                                     ; 17B3 _ 50
        call    charToVal                               ; 17B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17B9 _ 83. C4, 10
        mov     byte [?_182], al                        ; 17BC _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 17C1 _ 0F B6. 45, E4
        shr     al, 4                                   ; 17C5 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 17C8 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 17CB _ 0F B6. 45, E4
        movsx   eax, al                                 ; 17CF _ 0F BE. C0
        sub     esp, 12                                 ; 17D2 _ 83. EC, 0C
        push    eax                                     ; 17D5 _ 50
        call    charToVal                               ; 17D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17DB _ 83. C4, 10
        mov     byte [?_181], al                        ; 17DE _ A2, 00000002(d)
        mov     eax, keyVal                             ; 17E3 _ B8, 00000000(d)
        leave                                           ; 17E8 _ C9
        ret                                             ; 17E9 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 17EA _ 55
        mov     ebp, esp                                ; 17EB _ 89. E5
        sub     esp, 4                                  ; 17ED _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 17F0 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 17F3 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 17F6 _ 80. 7D, FC, 09
        jle     ?_045                                   ; 17FA _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 17FC _ 0F B6. 45, FC
        add     eax, 55                                 ; 1800 _ 83. C0, 37
        jmp     ?_046                                   ; 1803 _ EB, 07

?_045:  movzx   eax, byte [ebp-4H]                      ; 1805 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1809 _ 83. C0, 30
?_046:  leave                                           ; 180C _ C9
        ret                                             ; 180D _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 180E _ 55
        mov     ebp, esp                                ; 180F _ 89. E5
        sub     esp, 16                                 ; 1811 _ 83. EC, 10
        mov     byte [str.1918], 48                     ; 1814 _ C6. 05, 00000330(d), 30
        mov     byte [?_215], 120                       ; 181B _ C6. 05, 00000331(d), 78
        mov     byte [?_216], 0                         ; 1822 _ C6. 05, 0000033A(d), 00
        mov     dword [ebp-0CH], 2                      ; 1829 _ C7. 45, F4, 00000002
        jmp     ?_048                                   ; 1830 _ EB, 0F

?_047:  mov     eax, dword [ebp-0CH]                    ; 1832 _ 8B. 45, F4
        add     eax, str.1918                           ; 1835 _ 05, 00000330(d)
        mov     byte [eax], 48                          ; 183A _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 183D _ 83. 45, F4, 01
?_048:  cmp     dword [ebp-0CH], 9                      ; 1841 _ 83. 7D, F4, 09
        jle     ?_047                                   ; 1845 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1847 _ C7. 45, F8, 00000009
        jmp     ?_051                                   ; 184E _ EB, 48

?_049:  mov     eax, dword [ebp+8H]                     ; 1850 _ 8B. 45, 08
        and     eax, 0FH                                ; 1853 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1856 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1859 _ 8B. 45, 08
        shr     eax, 4                                  ; 185C _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 185F _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1862 _ 83. 7D, FC, 09
        jle     ?_050                                   ; 1866 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1868 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 186B _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 186E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1871 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1874 _ 89. 55, F8
        mov     edx, ecx                                ; 1877 _ 89. CA
        mov     byte [str.1918+eax], dl                 ; 1879 _ 88. 90, 00000330(d)
        jmp     ?_051                                   ; 187F _ EB, 17

?_050:  mov     eax, dword [ebp-4H]                     ; 1881 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1884 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1887 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 188A _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 188D _ 89. 55, F8
        mov     edx, ecx                                ; 1890 _ 89. CA
        mov     byte [str.1918+eax], dl                 ; 1892 _ 88. 90, 00000330(d)
?_051:  cmp     dword [ebp-8H], 1                       ; 1898 _ 83. 7D, F8, 01
        jle     ?_052                                   ; 189C _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 189E _ 83. 7D, 08, 00
        jnz     ?_049                                   ; 18A2 _ 75, AC
?_052:  mov     eax, str.1918                           ; 18A4 _ B8, 00000330(d)
        leave                                           ; 18A9 _ C9
        ret                                             ; 18AA _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 18AB _ 55
        mov     ebp, esp                                ; 18AC _ 89. E5
        sub     esp, 8                                  ; 18AE _ 83. EC, 08
?_053:  sub     esp, 12                                 ; 18B1 _ 83. EC, 0C
        push    100                                     ; 18B4 _ 6A, 64
        call    io_in8                                  ; 18B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18BB _ 83. C4, 10
        movsx   eax, al                                 ; 18BE _ 0F BE. C0
        and     eax, 02H                                ; 18C1 _ 83. E0, 02
        test    eax, eax                                ; 18C4 _ 85. C0
        jz      ?_054                                   ; 18C6 _ 74, 02
        jmp     ?_053                                   ; 18C8 _ EB, E7

?_054:  nop                                             ; 18CA _ 90
        nop                                             ; 18CB _ 90
        leave                                           ; 18CC _ C9
        ret                                             ; 18CD _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 18CE _ 55
        mov     ebp, esp                                ; 18CF _ 89. E5
        sub     esp, 8                                  ; 18D1 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 18D4 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 18D9 _ 83. EC, 08
        push    96                                      ; 18DC _ 6A, 60
        push    100                                     ; 18DE _ 6A, 64
        call    io_out8                                 ; 18E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18E5 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 18E8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 18ED _ 83. EC, 08
        push    71                                      ; 18F0 _ 6A, 47
        push    96                                      ; 18F2 _ 6A, 60
        call    io_out8                                 ; 18F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18F9 _ 83. C4, 10
        nop                                             ; 18FC _ 90
        leave                                           ; 18FD _ C9
        ret                                             ; 18FE _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 18FF _ 55
        mov     ebp, esp                                ; 1900 _ 89. E5
        sub     esp, 8                                  ; 1902 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1905 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 190A _ 83. EC, 08
        push    212                                     ; 190D _ 68, 000000D4
        push    100                                     ; 1912 _ 6A, 64
        call    io_out8                                 ; 1914 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1919 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 191C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1921 _ 83. EC, 08
        push    244                                     ; 1924 _ 68, 000000F4
        push    96                                      ; 1929 _ 6A, 60
        call    io_out8                                 ; 192B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1930 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1933 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1936 _ C6. 40, 03, 00
        nop                                             ; 193A _ 90
        leave                                           ; 193B _ C9
        ret                                             ; 193C _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 193D _ 55
        mov     ebp, esp                                ; 193E _ 89. E5
        sub     esp, 24                                 ; 1940 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1943 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1947 _ 83. EC, 08
        push    32                                      ; 194A _ 6A, 20
        push    160                                     ; 194C _ 68, 000000A0
        call    io_out8                                 ; 1951 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1956 _ 83. C4, 10
        sub     esp, 8                                  ; 1959 _ 83. EC, 08
        push    32                                      ; 195C _ 6A, 20
        push    32                                      ; 195E _ 6A, 20
        call    io_out8                                 ; 1960 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1965 _ 83. C4, 10
        sub     esp, 12                                 ; 1968 _ 83. EC, 0C
        push    96                                      ; 196B _ 6A, 60
        call    io_in8                                  ; 196D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1972 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1975 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1978 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 197C _ 83. EC, 08
        push    eax                                     ; 197F _ 50
        push    mouseInfo                               ; 1980 _ 68, 00000020(d)
        call    fifo8_put                               ; 1985 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 198A _ 83. C4, 10
        nop                                             ; 198D _ 90
        leave                                           ; 198E _ C9
        ret                                             ; 198F _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1990 _ 55
        mov     ebp, esp                                ; 1991 _ 89. E5
        sub     esp, 40                                 ; 1993 _ 83. EC, 28
        call    io_sti                                  ; 1996 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 199B _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 19A0 _ 89. 45, E8
        movzx   eax, word [?_183]                       ; 19A3 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 19AA _ 98
        mov     dword [ebp-14H], eax                    ; 19AB _ 89. 45, EC
        movzx   eax, word [?_184]                       ; 19AE _ 0F B7. 05, 00000006(d)
        cwde                                            ; 19B5 _ 98
        mov     dword [ebp-10H], eax                    ; 19B6 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 19B9 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 19BD _ 83. EC, 0C
        push    keyInfo                                 ; 19C0 _ 68, 00000008(d)
        call    fifo8_get                               ; 19C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19CA _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 19CD _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 19D0 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 19D4 _ 83. EC, 0C
        push    eax                                     ; 19D7 _ 50
        call    charToHex                               ; 19D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19DD _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 19E0 _ 89. 45, F4
        mov     edx, dword [line.1951]                  ; 19E3 _ 8B. 15, 0000033C(d)
        mov     eax, dword [pos.1950]                   ; 19E9 _ A1, 00000340(d)
        sub     esp, 8                                  ; 19EE _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 19F1 _ FF. 75, F4
        push    7                                       ; 19F4 _ 6A, 07
        push    edx                                     ; 19F6 _ 52
        push    eax                                     ; 19F7 _ 50
        push    dword [ebp+0CH]                         ; 19F8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19FB _ FF. 75, 08
        call    showString                              ; 19FE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A03 _ 83. C4, 20
        mov     eax, dword [pos.1950]                   ; 1A06 _ A1, 00000340(d)
        add     eax, 32                                 ; 1A0B _ 83. C0, 20
        mov     dword [pos.1950], eax                   ; 1A0E _ A3, 00000340(d)
        mov     eax, dword [pos.1950]                   ; 1A13 _ A1, 00000340(d)
        cmp     dword [ebp-14H], eax                    ; 1A18 _ 39. 45, EC
        jnz     ?_057                                   ; 1A1B _ 75, 28
        mov     eax, dword [line.1951]                  ; 1A1D _ A1, 0000033C(d)
        cmp     dword [ebp-10H], eax                    ; 1A22 _ 39. 45, F0
        jz      ?_055                                   ; 1A25 _ 74, 0A
        mov     eax, dword [line.1951]                  ; 1A27 _ A1, 0000033C(d)
        add     eax, 16                                 ; 1A2C _ 83. C0, 10
        jmp     ?_056                                   ; 1A2F _ EB, 05

?_055:  mov     eax, 0                                  ; 1A31 _ B8, 00000000
?_056:  mov     dword [line.1951], eax                  ; 1A36 _ A3, 0000033C(d)
        mov     dword [pos.1950], 0                     ; 1A3B _ C7. 05, 00000340(d), 00000000
?_057:  nop                                             ; 1A45 _ 90
        leave                                           ; 1A46 _ C9
        ret                                             ; 1A47 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1A48 _ 55
        mov     ebp, esp                                ; 1A49 _ 89. E5
        sub     esp, 24                                 ; 1A4B _ 83. EC, 18
        call    io_sti                                  ; 1A4E _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1A53 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1A57 _ 83. EC, 0C
        push    mouseInfo                               ; 1A5A _ 68, 00000020(d)
        call    fifo8_get                               ; 1A5F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A64 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1A67 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1A6A _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1A6E _ 83. EC, 08
        push    eax                                     ; 1A71 _ 50
        push    mouse_move                              ; 1A72 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1A77 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A7C _ 83. C4, 10
        test    eax, eax                                ; 1A7F _ 85. C0
        jz      ?_058                                   ; 1A81 _ 74, 60
        sub     esp, 4                                  ; 1A83 _ 83. EC, 04
        push    mouse_move                              ; 1A86 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1A8B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A8E _ FF. 75, 08
        call    computeMousePos                         ; 1A91 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A96 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1A99 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1A9F _ A1, 000000F0(d)
        push    edx                                     ; 1AA4 _ 52
        push    eax                                     ; 1AA5 _ 50
        push    dword [ebp+10H]                         ; 1AA6 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1AA9 _ FF. 75, 08
        call    sheet_slide                             ; 1AAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AB1 _ 83. C4, 10
        mov     eax, dword [?_185]                      ; 1AB4 _ A1, 000000EC(d)
        and     eax, 01H                                ; 1AB9 _ 83. E0, 01
        test    eax, eax                                ; 1ABC _ 85. C0
        jz      ?_058                                   ; 1ABE _ 74, 23
        mov     eax, dword [my]                         ; 1AC0 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1AC5 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1AC8 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1ACD _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1AD0 _ A1, 00000224(d)
        push    ecx                                     ; 1AD5 _ 51
        push    edx                                     ; 1AD6 _ 52
        push    eax                                     ; 1AD7 _ 50
        push    dword [ebp+8H]                          ; 1AD8 _ FF. 75, 08
        call    sheet_slide                             ; 1ADB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AE0 _ 83. C4, 10
?_058:  nop                                             ; 1AE3 _ 90
        leave                                           ; 1AE4 _ C9
        ret                                             ; 1AE5 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1AE6 _ 55
        mov     ebp, esp                                ; 1AE7 _ 89. E5
        sub     esp, 4                                  ; 1AE9 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1AEC _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1AEF _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1AF2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1AF5 _ 0F B6. 40, 03
        test    al, al                                  ; 1AF9 _ 84. C0
        jnz     ?_060                                   ; 1AFB _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1AFD _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 1B01 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1B03 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1B06 _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 1B0A _ B8, 00000000
        jmp     ?_067                                   ; 1B0F _ E9, 0000010C

?_060:  mov     eax, dword [ebp+8H]                     ; 1B14 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B17 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1B1B _ 3C, 01
        jnz     ?_062                                   ; 1B1D _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1B1F _ 0F B6. 45, FC
        or      eax, 37H                                ; 1B23 _ 83. C8, 37
        cmp     al, 63                                  ; 1B26 _ 3C, 3F
        jnz     ?_061                                   ; 1B28 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1B2A _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B2D _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1B31 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1B33 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1B36 _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 1B3A _ B8, 00000000
        jmp     ?_067                                   ; 1B3F _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 1B44 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B47 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1B4B _ 3C, 02
        jnz     ?_063                                   ; 1B4D _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1B4F _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B52 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1B56 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B59 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1B5C _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1B60 _ B8, 00000000
        jmp     ?_067                                   ; 1B65 _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 1B6A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B6D _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1B71 _ 3C, 03
        jne     ?_066                                   ; 1B73 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1B79 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B7C _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1B80 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1B83 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1B86 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1B8A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1B8D _ 0F B6. 00
        movzx   eax, al                                 ; 1B90 _ 0F B6. C0
        and     eax, 07H                                ; 1B93 _ 83. E0, 07
        mov     edx, eax                                ; 1B96 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B98 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1B9B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1B9E _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1BA1 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1BA5 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1BA8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1BAB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BAE _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1BB1 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1BB5 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1BB8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1BBB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1BBE _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BC1 _ 0F B6. 00
        movzx   eax, al                                 ; 1BC4 _ 0F B6. C0
        and     eax, 10H                                ; 1BC7 _ 83. E0, 10
        test    eax, eax                                ; 1BCA _ 85. C0
        jz      ?_064                                   ; 1BCC _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1BCE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1BD1 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1BD4 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1BD9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BDB _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1BDE _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 1BE1 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BE4 _ 0F B6. 00
        movzx   eax, al                                 ; 1BE7 _ 0F B6. C0
        and     eax, 20H                                ; 1BEA _ 83. E0, 20
        test    eax, eax                                ; 1BED _ 85. C0
        jz      ?_065                                   ; 1BEF _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1BF1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1BF4 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1BF7 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1BFC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BFE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C01 _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 1C04 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C07 _ 8B. 40, 08
        neg     eax                                     ; 1C0A _ F7. D8
        mov     edx, eax                                ; 1C0C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C0E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C11 _ 89. 50, 08
        mov     eax, 1                                  ; 1C14 _ B8, 00000001
        jmp     ?_067                                   ; 1C19 _ EB, 05

?_066:  mov     eax, 4294967295                         ; 1C1B _ B8, FFFFFFFF
?_067:  leave                                           ; 1C20 _ C9
        ret                                             ; 1C21 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1C22 _ 55
        mov     ebp, esp                                ; 1C23 _ 89. E5
        sub     esp, 16                                 ; 1C25 _ 83. EC, 10
        movzx   eax, word [?_183]                       ; 1C28 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1C2F _ 98
        mov     dword [ebp-8H], eax                     ; 1C30 _ 89. 45, F8
        movzx   eax, word [?_184]                       ; 1C33 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1C3A _ 98
        mov     dword [ebp-4H], eax                     ; 1C3B _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1C3E _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1C41 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1C44 _ A1, 000000F0(d)
        add     eax, edx                                ; 1C49 _ 01. D0
        mov     dword [mx], eax                         ; 1C4B _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1C50 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1C53 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1C56 _ A1, 000000F4(d)
        add     eax, edx                                ; 1C5B _ 01. D0
        mov     dword [my], eax                         ; 1C5D _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1C62 _ A1, 000000F0(d)
        test    eax, eax                                ; 1C67 _ 85. C0
        jns     ?_068                                   ; 1C69 _ 79, 0A
        mov     dword [mx], 0                           ; 1C6B _ C7. 05, 000000F0(d), 00000000
?_068:  mov     eax, dword [my]                         ; 1C75 _ A1, 000000F4(d)
        test    eax, eax                                ; 1C7A _ 85. C0
        jns     ?_069                                   ; 1C7C _ 79, 0A
        mov     dword [my], 0                           ; 1C7E _ C7. 05, 000000F4(d), 00000000
?_069:  mov     eax, dword [ebp-8H]                     ; 1C88 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1C8B _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1C8E _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1C93 _ 39. C2
        jge     ?_070                                   ; 1C95 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1C97 _ 8B. 45, F8
        sub     eax, 9                                  ; 1C9A _ 83. E8, 09
        mov     dword [mx], eax                         ; 1C9D _ A3, 000000F0(d)
?_070:  mov     eax, dword [ebp-4H]                     ; 1CA2 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1CA5 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1CA8 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1CAD _ 39. C2
        jge     ?_071                                   ; 1CAF _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1CB1 _ 8B. 45, FC
        sub     eax, 1                                  ; 1CB4 _ 83. E8, 01
        mov     dword [my], eax                         ; 1CB7 _ A3, 000000F4(d)
?_071:  nop                                             ; 1CBC _ 90
        leave                                           ; 1CBD _ C9
        ret                                             ; 1CBE _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1CBF _ 55
        mov     ebp, esp                                ; 1CC0 _ 89. E5
        sub     esp, 56                                 ; 1CC2 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1CC5 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1CCC _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1CD3 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1CDA _ C7. 45, DC, 00000050
        push    100                                     ; 1CE1 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1CE3 _ FF. 75, 1C
        push    0                                       ; 1CE6 _ 6A, 00
        push    0                                       ; 1CE8 _ 6A, 00
        push    14                                      ; 1CEA _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1CEC _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1CEF _ FF. 75, 14
        call    boxfill8                                ; 1CF2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CF7 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1CFA _ 8B. 45, 20
        movsx   eax, al                                 ; 1CFD _ 0F BE. C0
        sub     esp, 8                                  ; 1D00 _ 83. EC, 08
        push    ?_175                                   ; 1D03 _ 68, 00000020(d)
        push    eax                                     ; 1D08 _ 50
        push    dword [ebp-2CH]                         ; 1D09 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D0C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D0F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D12 _ FF. 75, 08
        call    showString                              ; 1D15 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D1A _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1D1D _ 8B. 45, 18
        sub     esp, 12                                 ; 1D20 _ 83. EC, 0C
        push    eax                                     ; 1D23 _ 50
        call    intToHexStr                             ; 1D24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D29 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1D2C _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1D2F _ 8B. 45, 20
        movsx   eax, al                                 ; 1D32 _ 0F BE. C0
        sub     esp, 8                                  ; 1D35 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1D38 _ FF. 75, E0
        push    eax                                     ; 1D3B _ 50
        push    dword [ebp-2CH]                         ; 1D3C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D3F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D42 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D45 _ FF. 75, 08
        call    showString                              ; 1D48 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D4D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D50 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D54 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D57 _ 0F BE. C0
        sub     esp, 8                                  ; 1D5A _ 83. EC, 08
        push    ?_176                                   ; 1D5D _ 68, 0000002A(d)
        push    eax                                     ; 1D62 _ 50
        push    dword [ebp-2CH]                         ; 1D63 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D66 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D69 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D6C _ FF. 75, 08
        call    showString                              ; 1D6F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D74 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1D77 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1D7A _ 8B. 00
        sub     esp, 12                                 ; 1D7C _ 83. EC, 0C
        push    eax                                     ; 1D7F _ 50
        call    intToHexStr                             ; 1D80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D85 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1D88 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1D8B _ 8B. 45, 20
        movsx   eax, al                                 ; 1D8E _ 0F BE. C0
        sub     esp, 8                                  ; 1D91 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1D94 _ FF. 75, E4
        push    eax                                     ; 1D97 _ 50
        push    dword [ebp-2CH]                         ; 1D98 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D9B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D9E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DA1 _ FF. 75, 08
        call    showString                              ; 1DA4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DA9 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DAC _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1DB0 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DB3 _ 0F BE. C0
        sub     esp, 8                                  ; 1DB6 _ 83. EC, 08
        push    ?_177                                   ; 1DB9 _ 68, 00000038(d)
        push    eax                                     ; 1DBE _ 50
        push    dword [ebp-2CH]                         ; 1DBF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1DC2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1DC5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DC8 _ FF. 75, 08
        call    showString                              ; 1DCB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DD0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DD3 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1DD6 _ 8B. 40, 04
        sub     esp, 12                                 ; 1DD9 _ 83. EC, 0C
        push    eax                                     ; 1DDC _ 50
        call    intToHexStr                             ; 1DDD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DE2 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1DE5 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1DE8 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DEB _ 0F BE. C0
        sub     esp, 8                                  ; 1DEE _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1DF1 _ FF. 75, E8
        push    eax                                     ; 1DF4 _ 50
        push    dword [ebp-2CH]                         ; 1DF5 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DF8 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DFB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DFE _ FF. 75, 08
        call    showString                              ; 1E01 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E06 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E09 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E0D _ 8B. 45, 20
        movsx   eax, al                                 ; 1E10 _ 0F BE. C0
        sub     esp, 8                                  ; 1E13 _ 83. EC, 08
        push    ?_178                                   ; 1E16 _ 68, 00000047(d)
        push    eax                                     ; 1E1B _ 50
        push    dword [ebp-2CH]                         ; 1E1C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E1F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E22 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E25 _ FF. 75, 08
        call    showString                              ; 1E28 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E2D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E30 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1E33 _ 8B. 40, 08
        sub     esp, 12                                 ; 1E36 _ 83. EC, 0C
        push    eax                                     ; 1E39 _ 50
        call    intToHexStr                             ; 1E3A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E3F _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1E42 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1E45 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E48 _ 0F BE. C0
        sub     esp, 8                                  ; 1E4B _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1E4E _ FF. 75, EC
        push    eax                                     ; 1E51 _ 50
        push    dword [ebp-2CH]                         ; 1E52 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E55 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E58 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E5B _ FF. 75, 08
        call    showString                              ; 1E5E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E63 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E66 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E6A _ 8B. 45, 20
        movsx   eax, al                                 ; 1E6D _ 0F BE. C0
        sub     esp, 8                                  ; 1E70 _ 83. EC, 08
        push    ?_179                                   ; 1E73 _ 68, 00000053(d)
        push    eax                                     ; 1E78 _ 50
        push    dword [ebp-2CH]                         ; 1E79 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E7C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E7F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E82 _ FF. 75, 08
        call    showString                              ; 1E85 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E8A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E8D _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1E90 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1E93 _ 83. EC, 0C
        push    eax                                     ; 1E96 _ 50
        call    intToHexStr                             ; 1E97 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E9C _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1E9F _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1EA2 _ 8B. 45, 20
        movsx   eax, al                                 ; 1EA5 _ 0F BE. C0
        sub     esp, 8                                  ; 1EA8 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1EAB _ FF. 75, F0
        push    eax                                     ; 1EAE _ 50
        push    dword [ebp-2CH]                         ; 1EAF _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1EB2 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1EB5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EB8 _ FF. 75, 08
        call    showString                              ; 1EBB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EC0 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1EC3 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1EC7 _ 8B. 45, 20
        movsx   eax, al                                 ; 1ECA _ 0F BE. C0
        sub     esp, 8                                  ; 1ECD _ 83. EC, 08
        push    ?_180                                   ; 1ED0 _ 68, 00000060(d)
        push    eax                                     ; 1ED5 _ 50
        push    dword [ebp-2CH]                         ; 1ED6 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1ED9 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1EDC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EDF _ FF. 75, 08
        call    showString                              ; 1EE2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EE7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1EEA _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1EED _ 8B. 40, 10
        sub     esp, 12                                 ; 1EF0 _ 83. EC, 0C
        push    eax                                     ; 1EF3 _ 50
        call    intToHexStr                             ; 1EF4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EF9 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1EFC _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1EFF _ 8B. 45, 20
        movsx   eax, al                                 ; 1F02 _ 0F BE. C0
        sub     esp, 8                                  ; 1F05 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1F08 _ FF. 75, F4
        push    eax                                     ; 1F0B _ 50
        push    dword [ebp-2CH]                         ; 1F0C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1F0F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1F12 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F15 _ FF. 75, 08
        call    showString                              ; 1F18 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F1D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1F20 _ 83. 45, D4, 10
        nop                                             ; 1F24 _ 90
        leave                                           ; 1F25 _ C9
        ret                                             ; 1F26 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1F27 _ 55
        mov     ebp, esp                                ; 1F28 _ 89. E5
        sub     esp, 24                                 ; 1F2A _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1F2D _ A1, 00000008(d)
        sub     esp, 8                                  ; 1F32 _ 83. EC, 08
        push    37500                                   ; 1F35 _ 68, 0000927C
        push    eax                                     ; 1F3A _ 50
        call    memman_alloc_4K                         ; 1F3B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F40 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1F43 _ 89. 45, F0
        sub     esp, 12                                 ; 1F46 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1F49 _ FF. 75, 08
        call    sheet_alloc                             ; 1F4C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F51 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F54 _ 89. 45, F4
        sub     esp, 12                                 ; 1F57 _ 83. EC, 0C
        push    99                                      ; 1F5A _ 6A, 63
        push    125                                     ; 1F5C _ 6A, 7D
        push    300                                     ; 1F5E _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1F63 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1F66 _ FF. 75, F4
        call    sheet_setbuf                            ; 1F69 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F6E _ 83. C4, 20
        sub     esp, 4                                  ; 1F71 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1F74 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1F77 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1F7A _ FF. 75, 08
        call    make_window8                            ; 1F7D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F82 _ 83. C4, 10
        sub     esp, 8                                  ; 1F85 _ 83. EC, 08
        push    7                                       ; 1F88 _ 6A, 07
        push    16                                      ; 1F8A _ 6A, 10
        push    150                                     ; 1F8C _ 68, 00000096
        push    42                                      ; 1F91 _ 6A, 2A
        push    8                                       ; 1F93 _ 6A, 08
        push    dword [ebp-0CH]                         ; 1F95 _ FF. 75, F4
        call    make_textbox8                           ; 1F98 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F9D _ 83. C4, 20
        push    dword [ebp+14H]                         ; 1FA0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1FA3 _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 1FA6 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FA9 _ FF. 75, 08
        call    sheet_slide                             ; 1FAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FB1 _ 83. C4, 10
        sub     esp, 4                                  ; 1FB4 _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1FB7 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1FBA _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FBD _ FF. 75, 08
        call    sheet_level_updown                      ; 1FC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FC5 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1FC8 _ 8B. 45, F4
        leave                                           ; 1FCB _ C9
        ret                                             ; 1FCC _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1FCD _ 55
        mov     ebp, esp                                ; 1FCE _ 89. E5
        push    ebx                                     ; 1FD0 _ 53
        sub     esp, 36                                 ; 1FD1 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1FD4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FD7 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1FDA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1FDD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1FE0 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1FE3 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1FE6 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1FE9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1FEC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1FEF _ 8B. 00
        push    0                                       ; 1FF1 _ 6A, 00
        push    edx                                     ; 1FF3 _ 52
        push    0                                       ; 1FF4 _ 6A, 00
        push    0                                       ; 1FF6 _ 6A, 00
        push    8                                       ; 1FF8 _ 6A, 08
        push    dword [ebp-10H]                         ; 1FFA _ FF. 75, F0
        push    eax                                     ; 1FFD _ 50
        call    boxfill8                                ; 1FFE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2003 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2006 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2009 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 200C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 200F _ 8B. 00
        push    1                                       ; 2011 _ 6A, 01
        push    edx                                     ; 2013 _ 52
        push    1                                       ; 2014 _ 6A, 01
        push    1                                       ; 2016 _ 6A, 01
        push    7                                       ; 2018 _ 6A, 07
        push    dword [ebp-10H]                         ; 201A _ FF. 75, F0
        push    eax                                     ; 201D _ 50
        call    boxfill8                                ; 201E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2023 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2026 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2029 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 202C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 202F _ 8B. 00
        push    edx                                     ; 2031 _ 52
        push    0                                       ; 2032 _ 6A, 00
        push    0                                       ; 2034 _ 6A, 00
        push    0                                       ; 2036 _ 6A, 00
        push    8                                       ; 2038 _ 6A, 08
        push    dword [ebp-10H]                         ; 203A _ FF. 75, F0
        push    eax                                     ; 203D _ 50
        call    boxfill8                                ; 203E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2043 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2046 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2049 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 204C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 204F _ 8B. 00
        push    edx                                     ; 2051 _ 52
        push    1                                       ; 2052 _ 6A, 01
        push    1                                       ; 2054 _ 6A, 01
        push    1                                       ; 2056 _ 6A, 01
        push    7                                       ; 2058 _ 6A, 07
        push    dword [ebp-10H]                         ; 205A _ FF. 75, F0
        push    eax                                     ; 205D _ 50
        call    boxfill8                                ; 205E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2063 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2066 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2069 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 206C _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 206F _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2072 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2075 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2078 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 207B _ 8B. 00
        push    ebx                                     ; 207D _ 53
        push    ecx                                     ; 207E _ 51
        push    1                                       ; 207F _ 6A, 01
        push    edx                                     ; 2081 _ 52
        push    15                                      ; 2082 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2084 _ FF. 75, F0
        push    eax                                     ; 2087 _ 50
        call    boxfill8                                ; 2088 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 208D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2090 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2093 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2096 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2099 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 209C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 209F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20A2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20A5 _ 8B. 00
        push    ebx                                     ; 20A7 _ 53
        push    ecx                                     ; 20A8 _ 51
        push    0                                       ; 20A9 _ 6A, 00
        push    edx                                     ; 20AB _ 52
        push    0                                       ; 20AC _ 6A, 00
        push    dword [ebp-10H]                         ; 20AE _ FF. 75, F0
        push    eax                                     ; 20B1 _ 50
        call    boxfill8                                ; 20B2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20B7 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20BA _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 20BD _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 20C0 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 20C3 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 20C6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20C9 _ 8B. 00
        push    ecx                                     ; 20CB _ 51
        push    edx                                     ; 20CC _ 52
        push    2                                       ; 20CD _ 6A, 02
        push    2                                       ; 20CF _ 6A, 02
        push    8                                       ; 20D1 _ 6A, 08
        push    dword [ebp-10H]                         ; 20D3 _ FF. 75, F0
        push    eax                                     ; 20D6 _ 50
        call    boxfill8                                ; 20D7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20DC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 20DF _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 20E2 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 20E5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20E8 _ 8B. 00
        push    20                                      ; 20EA _ 6A, 14
        push    edx                                     ; 20EC _ 52
        push    3                                       ; 20ED _ 6A, 03
        push    3                                       ; 20EF _ 6A, 03
        push    12                                      ; 20F1 _ 6A, 0C
        push    dword [ebp-10H]                         ; 20F3 _ FF. 75, F0
        push    eax                                     ; 20F6 _ 50
        call    boxfill8                                ; 20F7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20FC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20FF _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2102 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2105 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2108 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 210B _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 210E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2111 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2114 _ 8B. 00
        push    ebx                                     ; 2116 _ 53
        push    ecx                                     ; 2117 _ 51
        push    edx                                     ; 2118 _ 52
        push    1                                       ; 2119 _ 6A, 01
        push    15                                      ; 211B _ 6A, 0F
        push    dword [ebp-10H]                         ; 211D _ FF. 75, F0
        push    eax                                     ; 2120 _ 50
        call    boxfill8                                ; 2121 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2126 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2129 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 212C _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 212F _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2132 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2135 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2138 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 213B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 213E _ 8B. 00
        push    ebx                                     ; 2140 _ 53
        push    ecx                                     ; 2141 _ 51
        push    edx                                     ; 2142 _ 52
        push    0                                       ; 2143 _ 6A, 00
        push    0                                       ; 2145 _ 6A, 00
        push    dword [ebp-10H]                         ; 2147 _ FF. 75, F0
        push    eax                                     ; 214A _ 50
        call    boxfill8                                ; 214B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2150 _ 83. C4, 1C
        sub     esp, 8                                  ; 2153 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2156 _ FF. 75, 10
        push    7                                       ; 2159 _ 6A, 07
        push    4                                       ; 215B _ 6A, 04
        push    8                                       ; 215D _ 6A, 08
        push    dword [ebp+0CH]                         ; 215F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2162 _ FF. 75, 08
        call    showString                              ; 2165 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 216A _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 216D _ C7. 45, E8, 00000000
        jmp     ?_078                                   ; 2174 _ EB, 7D

?_072:  mov     dword [ebp-14H], 0                      ; 2176 _ C7. 45, EC, 00000000
        jmp     ?_077                                   ; 217D _ EB, 6A

?_073:  mov     eax, dword [ebp-18H]                    ; 217F _ 8B. 45, E8
        shl     eax, 4                                  ; 2182 _ C1. E0, 04
        mov     edx, eax                                ; 2185 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2187 _ 8B. 45, EC
        add     eax, edx                                ; 218A _ 01. D0
        add     eax, closebtn.2002                      ; 218C _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 2191 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 2194 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 2197 _ 80. 7D, E7, 40
        jnz     ?_074                                   ; 219B _ 75, 06
        mov     byte [ebp-19H], 0                       ; 219D _ C6. 45, E7, 00
        jmp     ?_076                                   ; 21A1 _ EB, 16

?_074:  cmp     byte [ebp-19H], 36                      ; 21A3 _ 80. 7D, E7, 24
        jnz     ?_075                                   ; 21A7 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 21A9 _ C6. 45, E7, 0F
        jmp     ?_076                                   ; 21AD _ EB, 0A

?_075:  cmp     byte [ebp-19H], 81                      ; 21AF _ 80. 7D, E7, 51
        jnz     ?_076                                   ; 21B3 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 21B5 _ C6. 45, E7, 08
?_076:  mov     eax, dword [ebp+0CH]                    ; 21B9 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 21BC _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 21BE _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 21C1 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 21C4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 21C7 _ 8B. 40, 04
        imul    ecx, eax                                ; 21CA _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 21CD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 21D0 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 21D3 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 21D6 _ 8B. 45, EC
        add     eax, ebx                                ; 21D9 _ 01. D8
        add     eax, ecx                                ; 21DB _ 01. C8
        add     edx, eax                                ; 21DD _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 21DF _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 21E3 _ 88. 02
        add     dword [ebp-14H], 1                      ; 21E5 _ 83. 45, EC, 01
?_077:  cmp     dword [ebp-14H], 15                     ; 21E9 _ 83. 7D, EC, 0F
        jle     ?_073                                   ; 21ED _ 7E, 90
        add     dword [ebp-18H], 1                      ; 21EF _ 83. 45, E8, 01
?_078:  cmp     dword [ebp-18H], 13                     ; 21F3 _ 83. 7D, E8, 0D
        jle     ?_072                                   ; 21F7 _ 0F 8E, FFFFFF79
        nop                                             ; 21FD _ 90
        mov     ebx, dword [ebp-4H]                     ; 21FE _ 8B. 5D, FC
        leave                                           ; 2201 _ C9
        ret                                             ; 2202 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2203 _ 55
        mov     ebp, esp                                ; 2204 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2206 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2209 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 220F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2212 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2219 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 221C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2223 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2226 _ C7. 40, 0C, 00000000
        nop                                             ; 222D _ 90
        pop     ebp                                     ; 222E _ 5D
        ret                                             ; 222F _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2230 _ 55
        mov     ebp, esp                                ; 2231 _ 89. E5
        sub     esp, 16                                 ; 2233 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2236 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 223D _ C7. 45, FC, 00000000
        jmp     ?_080                                   ; 2244 _ EB, 14

?_079:  mov     eax, dword [ebp+8H]                     ; 2246 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2249 _ 8B. 55, FC
        add     edx, 2                                  ; 224C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 224F _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2253 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2256 _ 83. 45, FC, 01
?_080:  mov     eax, dword [ebp+8H]                     ; 225A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 225D _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 225F _ 39. 45, FC
        jl      ?_079                                   ; 2262 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2264 _ 8B. 45, F8
        leave                                           ; 2267 _ C9
        ret                                             ; 2268 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2269 _ 55
        mov     ebp, esp                                ; 226A _ 89. E5
        sub     esp, 16                                 ; 226C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 226F _ C7. 45, F8, 00000000
        jmp     ?_084                                   ; 2276 _ E9, 00000085

?_081:  mov     eax, dword [ebp+8H]                     ; 227B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 227E _ 8B. 55, F8
        add     edx, 2                                  ; 2281 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2284 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2288 _ 39. 45, 0C
        ja      ?_083                                   ; 228B _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 228D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2290 _ 8B. 55, F8
        add     edx, 2                                  ; 2293 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2296 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2299 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 229C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 229F _ 8B. 55, F8
        add     edx, 2                                  ; 22A2 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 22A5 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 22A8 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 22AB _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 22AE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22B1 _ 8B. 55, F8
        add     edx, 2                                  ; 22B4 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 22B7 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 22BA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22BD _ 8B. 55, F8
        add     edx, 2                                  ; 22C0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22C3 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 22C7 _ 2B. 45, 0C
        mov     edx, eax                                ; 22CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 22CC _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 22CF _ 8B. 4D, F8
        add     ecx, 2                                  ; 22D2 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 22D5 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 22D9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22DC _ 8B. 55, F8
        add     edx, 2                                  ; 22DF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22E2 _ 8B. 44 D0, 04
        test    eax, eax                                ; 22E6 _ 85. C0
        jnz     ?_082                                   ; 22E8 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 22EA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22ED _ 8B. 00
        lea     edx, [eax-1H]                           ; 22EF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 22F2 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 22F5 _ 89. 10
?_082:  mov     eax, dword [ebp-4H]                     ; 22F7 _ 8B. 45, FC
        jmp     ?_085                                   ; 22FA _ EB, 17

?_083:  add     dword [ebp-8H], 1                       ; 22FC _ 83. 45, F8, 01
?_084:  mov     eax, dword [ebp+8H]                     ; 2300 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2303 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2305 _ 39. 45, F8
        jl      ?_081                                   ; 2308 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 230E _ B8, 00000000
?_085:  leave                                           ; 2313 _ C9
        ret                                             ; 2314 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2315 _ 55
        mov     ebp, esp                                ; 2316 _ 89. E5
        sub     esp, 16                                 ; 2318 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 231B _ 8B. 45, 0C
        add     eax, 4095                               ; 231E _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2323 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2328 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 232B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 232E _ FF. 75, 08
        call    memman_alloc_FF                         ; 2331 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2336 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2339 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 233C _ 8B. 45, FC
        leave                                           ; 233F _ C9
        ret                                             ; 2340 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2341 _ 55
        mov     ebp, esp                                ; 2342 _ 89. E5
        push    ebx                                     ; 2344 _ 53
        sub     esp, 16                                 ; 2345 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2348 _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 234F _ EB, 15

?_086:  mov     eax, dword [ebp+8H]                     ; 2351 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2354 _ 8B. 55, F4
        add     edx, 2                                  ; 2357 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 235A _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 235D _ 39. 45, 0C
        jc      ?_088                                   ; 2360 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2362 _ 83. 45, F4, 01
?_087:  mov     eax, dword [ebp+8H]                     ; 2366 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2369 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 236B _ 39. 45, F4
        jl      ?_086                                   ; 236E _ 7C, E1
        jmp     ?_089                                   ; 2370 _ EB, 01

?_088:  nop                                             ; 2372 _ 90
?_089:  cmp     dword [ebp-0CH], 0                      ; 2373 _ 83. 7D, F4, 00
        jle     ?_091                                   ; 2377 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 237D _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2380 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2383 _ 8B. 45, 08
        add     edx, 2                                  ; 2386 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2389 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 238C _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 238F _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2392 _ 8B. 45, 08
        add     ecx, 2                                  ; 2395 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2398 _ 8B. 44 C8, 04
        add     eax, edx                                ; 239C _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 239E _ 39. 45, 0C
        jne     ?_091                                   ; 23A1 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 23A7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23AA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23AD _ 8B. 45, 08
        add     edx, 2                                  ; 23B0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 23B3 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 23B7 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 23BA _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 23BD _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 23C0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 23C3 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 23C6 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 23C9 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 23CD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23D0 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 23D2 _ 39. 45, F4
        jge     ?_090                                   ; 23D5 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 23D7 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 23DA _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 23DD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 23E0 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 23E3 _ 8B. 55, F4
        add     edx, 2                                  ; 23E6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 23E9 _ 8B. 04 D0
        cmp     ecx, eax                                ; 23EC _ 39. C1
        jnz     ?_090                                   ; 23EE _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 23F0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23F3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23F6 _ 8B. 45, 08
        add     edx, 2                                  ; 23F9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 23FC _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2400 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2403 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2406 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2409 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 240D _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2410 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2413 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2416 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2419 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 241C _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2420 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2423 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2425 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2428 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 242B _ 89. 10
?_090:  mov     eax, 0                                  ; 242D _ B8, 00000000
        jmp     ?_097                                   ; 2432 _ E9, 0000011C

?_091:  mov     eax, dword [ebp+8H]                     ; 2437 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 243A _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 243C _ 39. 45, F4
        jge     ?_092                                   ; 243F _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2441 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2444 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2447 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 244A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 244D _ 8B. 55, F4
        add     edx, 2                                  ; 2450 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2453 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2456 _ 39. C1
        jnz     ?_092                                   ; 2458 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 245A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 245D _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2460 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2463 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2466 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2469 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 246C _ 8B. 55, F4
        add     edx, 2                                  ; 246F _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2472 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2476 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2479 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 247C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 247F _ 8B. 55, F4
        add     edx, 2                                  ; 2482 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2485 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2489 _ B8, 00000000
        jmp     ?_097                                   ; 248E _ E9, 000000C0

?_092:  mov     eax, dword [ebp+8H]                     ; 2493 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2496 _ 8B. 00
        cmp     eax, 4095                               ; 2498 _ 3D, 00000FFF
        jg      ?_096                                   ; 249D _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 24A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24A6 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 24A8 _ 89. 45, F8
        jmp     ?_094                                   ; 24AB _ EB, 28

?_093:  mov     eax, dword [ebp-8H]                     ; 24AD _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24B0 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 24B3 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 24B6 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 24B9 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 24BC _ 8B. 45, 08
        add     edx, 2                                  ; 24BF _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 24C2 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 24C5 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 24C7 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 24CA _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 24CD _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 24D1 _ 83. 6D, F8, 01
?_094:  mov     eax, dword [ebp-8H]                     ; 24D5 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 24D8 _ 3B. 45, F4
        jg      ?_093                                   ; 24DB _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 24DD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24E0 _ 8B. 00
        lea     edx, [eax+1H]                           ; 24E2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 24E5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 24E8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 24EA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 24ED _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 24F0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24F3 _ 8B. 00
        cmp     edx, eax                                ; 24F5 _ 39. C2
        jge     ?_095                                   ; 24F7 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 24F9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 24FC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 24FE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2501 _ 89. 50, 04
?_095:  mov     eax, dword [ebp+8H]                     ; 2504 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2507 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 250A _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 250D _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2510 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2513 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2516 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2519 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 251C _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 251F _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2523 _ B8, 00000000
        jmp     ?_097                                   ; 2528 _ EB, 29

?_096:  mov     eax, dword [ebp+8H]                     ; 252A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 252D _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2530 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2533 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2536 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2539 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 253C _ 8B. 40, 08
        mov     edx, eax                                ; 253F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2541 _ 8B. 45, 10
        add     eax, edx                                ; 2544 _ 01. D0
        mov     edx, eax                                ; 2546 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2548 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 254B _ 89. 50, 08
        mov     eax, 4294967295                         ; 254E _ B8, FFFFFFFF
?_097:  add     esp, 16                                 ; 2553 _ 83. C4, 10
        pop     ebx                                     ; 2556 _ 5B
        pop     ebp                                     ; 2557 _ 5D
        ret                                             ; 2558 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2559 _ 55
        mov     ebp, esp                                ; 255A _ 89. E5
        sub     esp, 16                                 ; 255C _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 255F _ 8B. 45, 10
        add     eax, 4095                               ; 2562 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2567 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 256C _ 89. 45, 10
        push    dword [ebp+10H]                         ; 256F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2572 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2575 _ FF. 75, 08
        call    memman_free                             ; 2578 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 257D _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2580 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2583 _ 8B. 45, FC
        leave                                           ; 2586 _ C9
        ret                                             ; 2587 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2588 _ 55
        mov     ebp, esp                                ; 2589 _ 89. E5
        sub     esp, 24                                 ; 258B _ 83. EC, 18
        sub     esp, 8                                  ; 258E _ 83. EC, 08
        push    9232                                    ; 2591 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2596 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2599 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 259E _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 25A1 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 25A4 _ 83. 7D, F4, 00
        jnz     ?_098                                   ; 25A8 _ 75, 0A
        mov     eax, 0                                  ; 25AA _ B8, 00000000
        jmp     ?_102                                   ; 25AF _ E9, 0000009A

?_098:  mov     eax, dword [ebp+10H]                    ; 25B4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 25B7 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 25BB _ 83. EC, 08
        push    eax                                     ; 25BE _ 50
        push    dword [ebp+8H]                          ; 25BF _ FF. 75, 08
        call    memman_alloc_4K                         ; 25C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25C7 _ 83. C4, 10
        mov     edx, eax                                ; 25CA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 25CC _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 25CF _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 25D2 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 25D5 _ 8B. 40, 04
        test    eax, eax                                ; 25D8 _ 85. C0
        jnz     ?_099                                   ; 25DA _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 25DC _ 8B. 45, F4
        sub     esp, 4                                  ; 25DF _ 83. EC, 04
        push    9232                                    ; 25E2 _ 68, 00002410
        push    eax                                     ; 25E7 _ 50
        push    dword [ebp+8H]                          ; 25E8 _ FF. 75, 08
        call    memman_free_4K                          ; 25EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25F0 _ 83. C4, 10
        mov     eax, 0                                  ; 25F3 _ B8, 00000000
        jmp     ?_102                                   ; 25F8 _ EB, 54

?_099:  mov     eax, dword [ebp-0CH]                    ; 25FA _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 25FD _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2600 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2602 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2605 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2608 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 260B _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 260E _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2611 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2614 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2617 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 261E _ C7. 45, F0, 00000000
        jmp     ?_101                                   ; 2625 _ EB, 1B

?_100:  mov     eax, dword [ebp-0CH]                    ; 2627 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 262A _ 8B. 55, F0
        add     edx, 33                                 ; 262D _ 83. C2, 21
        shl     edx, 5                                  ; 2630 _ C1. E2, 05
        add     eax, edx                                ; 2633 _ 01. D0
        add     eax, 16                                 ; 2635 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2638 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 263E _ 83. 45, F0, 01
?_101:  cmp     dword [ebp-10H], 255                    ; 2642 _ 81. 7D, F0, 000000FF
        jle     ?_100                                   ; 2649 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 264B _ 8B. 45, F4
?_102:  leave                                           ; 264E _ C9
        ret                                             ; 264F _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2650 _ 55
        mov     ebp, esp                                ; 2651 _ 89. E5
        sub     esp, 16                                 ; 2653 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2656 _ C7. 45, F8, 00000000
        jmp     ?_105                                   ; 265D _ EB, 4B

?_103:  mov     eax, dword [ebp+8H]                     ; 265F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2662 _ 8B. 55, F8
        add     edx, 33                                 ; 2665 _ 83. C2, 21
        shl     edx, 5                                  ; 2668 _ C1. E2, 05
        add     eax, edx                                ; 266B _ 01. D0
        add     eax, 16                                 ; 266D _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2670 _ 8B. 00
        test    eax, eax                                ; 2672 _ 85. C0
        jnz     ?_104                                   ; 2674 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2676 _ 8B. 45, F8
        shl     eax, 5                                  ; 2679 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 267C _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2682 _ 8B. 45, 08
        add     eax, edx                                ; 2685 _ 01. D0
        add     eax, 4                                  ; 2687 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 268A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 268D _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2690 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2697 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 269A _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 26A1 _ 8B. 45, FC
        jmp     ?_106                                   ; 26A4 _ EB, 12

?_104:  add     dword [ebp-8H], 1                       ; 26A6 _ 83. 45, F8, 01
?_105:  cmp     dword [ebp-8H], 255                     ; 26AA _ 81. 7D, F8, 000000FF
        jle     ?_103                                   ; 26B1 _ 7E, AC
        mov     eax, 0                                  ; 26B3 _ B8, 00000000
?_106:  leave                                           ; 26B8 _ C9
        ret                                             ; 26B9 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 26BA _ 55
        mov     ebp, esp                                ; 26BB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 26BD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 26C0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 26C3 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 26C5 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 26C8 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 26CB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 26CE _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 26D1 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 26D4 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 26D7 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 26DA _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 26DD _ 89. 50, 14
        nop                                             ; 26E0 _ 90
        pop     ebp                                     ; 26E1 _ 5D
        ret                                             ; 26E2 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 26E3 _ 55
        mov     ebp, esp                                ; 26E4 _ 89. E5
        push    esi                                     ; 26E6 _ 56
        push    ebx                                     ; 26E7 _ 53
        sub     esp, 32                                 ; 26E8 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 26EB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 26EE _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 26F1 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 26F4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 26F7 _ 8B. 40, 10
        add     eax, 1                                  ; 26FA _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 26FD _ 39. 45, 10
        jle     ?_107                                   ; 2700 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2702 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2705 _ 8B. 40, 10
        add     eax, 1                                  ; 2708 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 270B _ 89. 45, 10
?_107:  cmp     dword [ebp+10H], -1                     ; 270E _ 83. 7D, 10, FF
        jge     ?_108                                   ; 2712 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2714 _ C7. 45, 10, FFFFFFFF
?_108:  mov     eax, dword [ebp+0CH]                    ; 271B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 271E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2721 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2724 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2727 _ 3B. 45, 10
        jle     ?_115                                   ; 272A _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2730 _ 83. 7D, 10, 00
        js      ?_111                                   ; 2734 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 273A _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 273D _ 89. 45, E4
        jmp     ?_110                                   ; 2740 _ EB, 34

?_109:  mov     eax, dword [ebp-1CH]                    ; 2742 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2745 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2748 _ 8B. 45, 08
        add     edx, 4                                  ; 274B _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 274E _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2752 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2755 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2758 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 275B _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 275F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2762 _ 8B. 55, E4
        add     edx, 4                                  ; 2765 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2768 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 276C _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 276F _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2772 _ 83. 6D, E4, 01
?_110:  mov     eax, dword [ebp-1CH]                    ; 2776 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2779 _ 3B. 45, 10
        jg      ?_109                                   ; 277C _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 277E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2781 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2784 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2787 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 278A _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 278E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2791 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2794 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2797 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 279A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 279D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27A0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27A3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27A6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 27A9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27AC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 27AF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27B2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27B5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27B8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27BB _ 8B. 40, 0C
        sub     esp, 8                                  ; 27BE _ 83. EC, 08
        push    esi                                     ; 27C1 _ 56
        push    ebx                                     ; 27C2 _ 53
        push    ecx                                     ; 27C3 _ 51
        push    edx                                     ; 27C4 _ 52
        push    eax                                     ; 27C5 _ 50
        push    dword [ebp+8H]                          ; 27C6 _ FF. 75, 08
        call    sheet_refreshmap                        ; 27C9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27CE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 27D1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 27D4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 27D7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27DA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27DD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27E0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27E3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27E6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27E9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 27EC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27EF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 27F2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27F5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27F8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27FB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27FE _ 8B. 40, 0C
        sub     esp, 4                                  ; 2801 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2804 _ FF. 75, F4
        push    esi                                     ; 2807 _ 56
        push    ebx                                     ; 2808 _ 53
        push    ecx                                     ; 2809 _ 51
        push    edx                                     ; 280A _ 52
        push    eax                                     ; 280B _ 50
        push    dword [ebp+8H]                          ; 280C _ FF. 75, 08
        call    sheet_refresh_new                       ; 280F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2814 _ 83. C4, 20
        jmp     ?_122                                   ; 2817 _ E9, 00000244

?_111:  mov     eax, dword [ebp+8H]                     ; 281C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 281F _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2822 _ 39. 45, F4
        jge     ?_114                                   ; 2825 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2827 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 282A _ 89. 45, E8
        jmp     ?_113                                   ; 282D _ EB, 34

?_112:  mov     eax, dword [ebp-18H]                    ; 282F _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2832 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2835 _ 8B. 45, 08
        add     edx, 4                                  ; 2838 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 283B _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 283F _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2842 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2845 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2848 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 284C _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 284F _ 8B. 55, E8
        add     edx, 4                                  ; 2852 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2855 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2859 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 285C _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 285F _ 83. 45, E8, 01
?_113:  mov     eax, dword [ebp+8H]                     ; 2863 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2866 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2869 _ 39. 45, E8
        jl      ?_112                                   ; 286C _ 7C, C1
?_114:  mov     eax, dword [ebp+8H]                     ; 286E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2871 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2874 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2877 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 287A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 287D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2880 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2883 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2886 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2889 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 288C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 288F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2892 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2895 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2898 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 289B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 289E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28A1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28A4 _ 8B. 40, 0C
        sub     esp, 8                                  ; 28A7 _ 83. EC, 08
        push    0                                       ; 28AA _ 6A, 00
        push    ebx                                     ; 28AC _ 53
        push    ecx                                     ; 28AD _ 51
        push    edx                                     ; 28AE _ 52
        push    eax                                     ; 28AF _ 50
        push    dword [ebp+8H]                          ; 28B0 _ FF. 75, 08
        call    sheet_refreshmap                        ; 28B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28B8 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 28BB _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 28BE _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 28C1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28C4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28C7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28CA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28CD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28D0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28D3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28D6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28D9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28DC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 28DF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28E2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28E5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28E8 _ 8B. 40, 0C
        sub     esp, 4                                  ; 28EB _ 83. EC, 04
        push    esi                                     ; 28EE _ 56
        push    0                                       ; 28EF _ 6A, 00
        push    ebx                                     ; 28F1 _ 53
        push    ecx                                     ; 28F2 _ 51
        push    edx                                     ; 28F3 _ 52
        push    eax                                     ; 28F4 _ 50
        push    dword [ebp+8H]                          ; 28F5 _ FF. 75, 08
        call    sheet_refresh_new                       ; 28F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28FD _ 83. C4, 20
        jmp     ?_122                                   ; 2900 _ E9, 0000015B

?_115:  mov     eax, dword [ebp-0CH]                    ; 2905 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2908 _ 3B. 45, 10
        jge     ?_122                                   ; 290B _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2911 _ 83. 7D, F4, 00
        js      ?_118                                   ; 2915 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2917 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 291A _ 89. 45, EC
        jmp     ?_117                                   ; 291D _ EB, 34

?_116:  mov     eax, dword [ebp-14H]                    ; 291F _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2922 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2925 _ 8B. 45, 08
        add     edx, 4                                  ; 2928 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 292B _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 292F _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2932 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2935 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2938 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 293C _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 293F _ 8B. 55, EC
        add     edx, 4                                  ; 2942 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2945 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2949 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 294C _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 294F _ 83. 45, EC, 01
?_117:  mov     eax, dword [ebp-14H]                    ; 2953 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2956 _ 3B. 45, 10
        jl      ?_116                                   ; 2959 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 295B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 295E _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2961 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2964 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2967 _ 89. 54 88, 04
        jmp     ?_121                                   ; 296B _ EB, 72

?_118:  cmp     dword [ebp-0CH], 0                      ; 296D _ 83. 7D, F4, 00
        jns     ?_121                                   ; 2971 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2973 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2976 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2979 _ 89. 45, F0
        jmp     ?_120                                   ; 297C _ EB, 3A

?_119:  mov     eax, dword [ebp-10H]                    ; 297E _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2981 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2984 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2987 _ 8B. 55, F0
        add     edx, 4                                  ; 298A _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 298D _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2991 _ 8B. 45, 08
        add     ecx, 4                                  ; 2994 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2997 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 299B _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 299E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 29A1 _ 8B. 45, 08
        add     edx, 4                                  ; 29A4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29A7 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 29AB _ 8B. 55, F0
        add     edx, 1                                  ; 29AE _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 29B1 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 29B4 _ 83. 6D, F0, 01
?_120:  mov     eax, dword [ebp-10H]                    ; 29B8 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 29BB _ 3B. 45, 10
        jge     ?_119                                   ; 29BE _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 29C0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 29C3 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 29C6 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 29C9 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 29CC _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 29D0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 29D3 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 29D6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 29D9 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 29DC _ 89. 50, 10
?_121:  mov     eax, dword [ebp+0CH]                    ; 29DF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29E2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29E5 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 29E8 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 29EB _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 29EE _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 29F1 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 29F4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 29F7 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 29FA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 29FD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A00 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A03 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A06 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2A09 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2A0C _ FF. 75, 10
        push    ebx                                     ; 2A0F _ 53
        push    ecx                                     ; 2A10 _ 51
        push    edx                                     ; 2A11 _ 52
        push    eax                                     ; 2A12 _ 50
        push    dword [ebp+8H]                          ; 2A13 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2A16 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A1B _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A1E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A21 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A24 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A27 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A2A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A2D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A30 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A33 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A36 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A39 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A3C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A3F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A42 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A45 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2A48 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2A4B _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2A4E _ FF. 75, 10
        push    ebx                                     ; 2A51 _ 53
        push    ecx                                     ; 2A52 _ 51
        push    edx                                     ; 2A53 _ 52
        push    eax                                     ; 2A54 _ 50
        push    dword [ebp+8H]                          ; 2A55 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2A58 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A5D _ 83. C4, 20
?_122:  nop                                             ; 2A60 _ 90
        lea     esp, [ebp-8H]                           ; 2A61 _ 8D. 65, F8
        pop     ebx                                     ; 2A64 _ 5B
        pop     esi                                     ; 2A65 _ 5E
        pop     ebp                                     ; 2A66 _ 5D
        ret                                             ; 2A67 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2A68 _ 55
        mov     ebp, esp                                ; 2A69 _ 89. E5
        push    edi                                     ; 2A6B _ 57
        push    esi                                     ; 2A6C _ 56
        push    ebx                                     ; 2A6D _ 53
        sub     esp, 28                                 ; 2A6E _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2A71 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2A74 _ 8B. 40, 18
        test    eax, eax                                ; 2A77 _ 85. C0
        js      ?_123                                   ; 2A79 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2A7B _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2A7E _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2A81 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2A84 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2A87 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A8A _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2A8D _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2A90 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2A93 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A96 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2A99 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2A9C _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2A9F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AA2 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2AA5 _ 8B. 45, 14
        add     edx, eax                                ; 2AA8 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2AAA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2AAD _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2AB0 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2AB3 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2AB6 _ 03. 45, E4
        sub     esp, 4                                  ; 2AB9 _ 83. EC, 04
        push    ebx                                     ; 2ABC _ 53
        push    ecx                                     ; 2ABD _ 51
        push    edi                                     ; 2ABE _ 57
        push    esi                                     ; 2ABF _ 56
        push    edx                                     ; 2AC0 _ 52
        push    eax                                     ; 2AC1 _ 50
        push    dword [ebp+8H]                          ; 2AC2 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2AC5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2ACA _ 83. C4, 20
?_123:  mov     eax, 0                                  ; 2ACD _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2AD2 _ 8D. 65, F4
        pop     ebx                                     ; 2AD5 _ 5B
        pop     esi                                     ; 2AD6 _ 5E
        pop     edi                                     ; 2AD7 _ 5F
        pop     ebp                                     ; 2AD8 _ 5D
        ret                                             ; 2AD9 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2ADA _ 55
        mov     ebp, esp                                ; 2ADB _ 89. E5
        push    esi                                     ; 2ADD _ 56
        push    ebx                                     ; 2ADE _ 53
        sub     esp, 16                                 ; 2ADF _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2AE2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2AE5 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2AE8 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2AEB _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2AEE _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2AF1 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2AF4 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2AF7 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2AFA _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2AFD _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2B00 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2B03 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B06 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B09 _ 8B. 40, 18
        test    eax, eax                                ; 2B0C _ 85. C0
        js      ?_124                                   ; 2B0E _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2B14 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2B17 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B1A _ 8B. 45, F4
        add     edx, eax                                ; 2B1D _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B1F _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2B22 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2B25 _ 8B. 45, F0
        add     eax, ecx                                ; 2B28 _ 01. C8
        sub     esp, 8                                  ; 2B2A _ 83. EC, 08
        push    0                                       ; 2B2D _ 6A, 00
        push    edx                                     ; 2B2F _ 52
        push    eax                                     ; 2B30 _ 50
        push    dword [ebp-0CH]                         ; 2B31 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2B34 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2B37 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2B3A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B3F _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2B42 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B45 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2B48 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2B4B _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2B4E _ 8B. 55, 14
        add     ecx, edx                                ; 2B51 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2B53 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2B56 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2B59 _ 8B. 55, 10
        add     edx, ebx                                ; 2B5C _ 01. DA
        sub     esp, 8                                  ; 2B5E _ 83. EC, 08
        push    eax                                     ; 2B61 _ 50
        push    ecx                                     ; 2B62 _ 51
        push    edx                                     ; 2B63 _ 52
        push    dword [ebp+14H]                         ; 2B64 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2B67 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2B6A _ FF. 75, 08
        call    sheet_refreshmap                        ; 2B6D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B72 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2B75 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B78 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2B7B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2B7E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2B81 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B84 _ 8B. 45, F4
        add     edx, eax                                ; 2B87 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B89 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2B8C _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2B8F _ 8B. 45, F0
        add     eax, ebx                                ; 2B92 _ 01. D8
        sub     esp, 4                                  ; 2B94 _ 83. EC, 04
        push    ecx                                     ; 2B97 _ 51
        push    0                                       ; 2B98 _ 6A, 00
        push    edx                                     ; 2B9A _ 52
        push    eax                                     ; 2B9B _ 50
        push    dword [ebp-0CH]                         ; 2B9C _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2B9F _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2BA2 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2BA5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BAA _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BAD _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2BB0 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2BB3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BB6 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2BB9 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2BBC _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2BBF _ 8B. 4D, 14
        add     ebx, ecx                                ; 2BC2 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2BC4 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2BC7 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2BCA _ 8B. 4D, 10
        add     ecx, esi                                ; 2BCD _ 01. F1
        sub     esp, 4                                  ; 2BCF _ 83. EC, 04
        push    edx                                     ; 2BD2 _ 52
        push    eax                                     ; 2BD3 _ 50
        push    ebx                                     ; 2BD4 _ 53
        push    ecx                                     ; 2BD5 _ 51
        push    dword [ebp+14H]                         ; 2BD6 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2BD9 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2BDC _ FF. 75, 08
        call    sheet_refresh_new                       ; 2BDF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BE4 _ 83. C4, 20
?_124:  nop                                             ; 2BE7 _ 90
        lea     esp, [ebp-8H]                           ; 2BE8 _ 8D. 65, F8
        pop     ebx                                     ; 2BEB _ 5B
        pop     esi                                     ; 2BEC _ 5E
        pop     ebp                                     ; 2BED _ 5D
        ret                                             ; 2BEE _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2BEF _ 55
        mov     ebp, esp                                ; 2BF0 _ 89. E5
        sub     esp, 48                                 ; 2BF2 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2BF5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2BF8 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2BFA _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2BFD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C00 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2C03 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2C06 _ 83. 7D, 0C, 00
        jns     ?_125                                   ; 2C0A _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2C0C _ C7. 45, 0C, 00000000
?_125:  cmp     dword [ebp+10H], 8                      ; 2C13 _ 83. 7D, 10, 08
        jg      ?_126                                   ; 2C17 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2C19 _ C7. 45, 10, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 2C20 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C23 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2C26 _ 39. 45, 14
        jle     ?_127                                   ; 2C29 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C2B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C2E _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2C31 _ 89. 45, 14
?_127:  mov     eax, dword [ebp+8H]                     ; 2C34 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C37 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2C3A _ 39. 45, 18
        jle     ?_128                                   ; 2C3D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C3F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C42 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2C45 _ 89. 45, 18
?_128:  mov     eax, dword [ebp+1CH]                    ; 2C48 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2C4B _ 89. 45, DC
        jmp     ?_135                                   ; 2C4E _ E9, 00000118

?_129:  mov     eax, dword [ebp+8H]                     ; 2C53 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2C56 _ 8B. 55, DC
        add     edx, 4                                  ; 2C59 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C5C _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2C60 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2C63 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2C66 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2C68 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2C6B _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2C6E _ 8B. 55, 08
        add     edx, 1044                               ; 2C71 _ 81. C2, 00000414
        sub     eax, edx                                ; 2C77 _ 29. D0
        sar     eax, 5                                  ; 2C79 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2C7C _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2C7F _ C7. 45, E0, 00000000
        jmp     ?_134                                   ; 2C86 _ E9, 000000CD

?_130:  mov     eax, dword [ebp-10H]                    ; 2C8B _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2C8E _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2C91 _ 8B. 45, E0
        add     eax, edx                                ; 2C94 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2C96 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2C99 _ C7. 45, E4, 00000000
        jmp     ?_133                                   ; 2CA0 _ E9, 000000A0

?_131:  mov     eax, dword [ebp-10H]                    ; 2CA5 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2CA8 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2CAB _ 8B. 45, E4
        add     eax, edx                                ; 2CAE _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2CB0 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2CB3 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2CB6 _ 3B. 45, FC
        jg      ?_132                                   ; 2CB9 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2CBF _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2CC2 _ 3B. 45, 14
        jge     ?_132                                   ; 2CC5 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2CC7 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2CCA _ 3B. 45, F8
        jg      ?_132                                   ; 2CCD _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2CCF _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2CD2 _ 3B. 45, 18
        jge     ?_132                                   ; 2CD5 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2CD7 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2CDA _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2CDD _ 0F AF. 45, E0
        mov     edx, eax                                ; 2CE1 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2CE3 _ 8B. 45, E4
        add     eax, edx                                ; 2CE6 _ 01. D0
        mov     edx, eax                                ; 2CE8 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2CEA _ 8B. 45, F4
        add     eax, edx                                ; 2CED _ 01. D0
        movzx   eax, byte [eax]                         ; 2CEF _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2CF2 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2CF5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2CF8 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2CFB _ 0F AF. 45, F8
        mov     edx, eax                                ; 2CFF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D01 _ 8B. 45, FC
        add     eax, edx                                ; 2D04 _ 01. D0
        mov     edx, eax                                ; 2D06 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2D08 _ 8B. 45, EC
        add     eax, edx                                ; 2D0B _ 01. D0
        movzx   eax, byte [eax]                         ; 2D0D _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2D10 _ 38. 45, DA
        jnz     ?_132                                   ; 2D13 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2D15 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2D19 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2D1C _ 8B. 40, 14
        cmp     edx, eax                                ; 2D1F _ 39. C2
        jz      ?_132                                   ; 2D21 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2D23 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D26 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D29 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D2D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D2F _ 8B. 45, FC
        add     eax, edx                                ; 2D32 _ 01. D0
        mov     edx, eax                                ; 2D34 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2D36 _ 8B. 45, E8
        add     edx, eax                                ; 2D39 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2D3B _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2D3F _ 88. 02
?_132:  add     dword [ebp-1CH], 1                      ; 2D41 _ 83. 45, E4, 01
?_133:  mov     eax, dword [ebp-10H]                    ; 2D45 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D48 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2D4B _ 39. 45, E4
        jl      ?_131                                   ; 2D4E _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2D54 _ 83. 45, E0, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 2D58 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2D5B _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2D5E _ 39. 45, E0
        jl      ?_130                                   ; 2D61 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2D67 _ 83. 45, DC, 01
?_135:  mov     eax, dword [ebp-24H]                    ; 2D6B _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2D6E _ 3B. 45, 20
        jle     ?_129                                   ; 2D71 _ 0F 8E, FFFFFEDC
        nop                                             ; 2D77 _ 90
        leave                                           ; 2D78 _ C9
        ret                                             ; 2D79 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2D7A _ 55
        mov     ebp, esp                                ; 2D7B _ 89. E5
        sub     esp, 64                                 ; 2D7D _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2D80 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2D83 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2D86 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2D89 _ 83. 7D, 0C, 00
        jns     ?_136                                   ; 2D8D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2D8F _ C7. 45, 0C, 00000000
?_136:  mov     eax, dword [ebp+8H]                     ; 2D96 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D99 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2D9C _ 39. 45, 0C
        jle     ?_137                                   ; 2D9F _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2DA1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DA4 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2DA7 _ 89. 45, 0C
?_137:  cmp     dword [ebp+10H], 0                      ; 2DAA _ 83. 7D, 10, 00
        jns     ?_138                                   ; 2DAE _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2DB0 _ C7. 45, 10, 00000000
?_138:  mov     eax, dword [ebp+8H]                     ; 2DB7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2DBA _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2DBD _ 39. 45, 10
        jle     ?_139                                   ; 2DC0 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2DC2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2DC5 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2DC8 _ 89. 45, 10
?_139:  mov     eax, dword [ebp+1CH]                    ; 2DCB _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2DCE _ 89. 45, E0
        jmp     ?_150                                   ; 2DD1 _ E9, 00000140

?_140:  mov     eax, dword [ebp+8H]                     ; 2DD6 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2DD9 _ 8B. 55, E0
        add     edx, 4                                  ; 2DDC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2DDF _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2DE3 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2DE6 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2DE9 _ 8B. 55, 08
        add     edx, 1044                               ; 2DEC _ 81. C2, 00000414
        sub     eax, edx                                ; 2DF2 _ 29. D0
        sar     eax, 5                                  ; 2DF4 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2DF7 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2DFA _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2DFD _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2DFF _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2E02 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E05 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2E08 _ 8B. 55, 0C
        sub     edx, eax                                ; 2E0B _ 29. C2
        mov     eax, edx                                ; 2E0D _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2E0F _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2E12 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E15 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2E18 _ 8B. 55, 10
        sub     edx, eax                                ; 2E1B _ 29. C2
        mov     eax, edx                                ; 2E1D _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2E1F _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2E22 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E25 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2E28 _ 8B. 55, 14
        sub     edx, eax                                ; 2E2B _ 29. C2
        mov     eax, edx                                ; 2E2D _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2E2F _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2E32 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E35 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2E38 _ 8B. 55, 18
        sub     edx, eax                                ; 2E3B _ 29. C2
        mov     eax, edx                                ; 2E3D _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2E3F _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2E42 _ 83. 7D, D0, 00
        jns     ?_141                                   ; 2E46 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2E48 _ C7. 45, D0, 00000000
?_141:  cmp     dword [ebp-2CH], 0                      ; 2E4F _ 83. 7D, D4, 00
        jns     ?_142                                   ; 2E53 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2E55 _ C7. 45, D4, 00000000
?_142:  mov     eax, dword [ebp-10H]                    ; 2E5C _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2E5F _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2E62 _ 39. 45, D8
        jle     ?_143                                   ; 2E65 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2E67 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2E6A _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2E6D _ 89. 45, D8
?_143:  mov     eax, dword [ebp-10H]                    ; 2E70 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2E73 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2E76 _ 39. 45, DC
        jle     ?_144                                   ; 2E79 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2E7B _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2E7E _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2E81 _ 89. 45, DC
?_144:  mov     eax, dword [ebp-2CH]                    ; 2E84 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2E87 _ 89. 45, E4
        jmp     ?_149                                   ; 2E8A _ EB, 7A

?_145:  mov     eax, dword [ebp-10H]                    ; 2E8C _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2E8F _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2E92 _ 8B. 45, E4
        add     eax, edx                                ; 2E95 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2E97 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2E9A _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2E9D _ 89. 45, E8
        jmp     ?_148                                   ; 2EA0 _ EB, 58

?_146:  mov     eax, dword [ebp-10H]                    ; 2EA2 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2EA5 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2EA8 _ 8B. 45, E8
        add     eax, edx                                ; 2EAB _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2EAD _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2EB0 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2EB3 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2EB6 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2EBA _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2EBC _ 8B. 45, E8
        add     eax, edx                                ; 2EBF _ 01. D0
        mov     edx, eax                                ; 2EC1 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2EC3 _ 8B. 45, F4
        add     eax, edx                                ; 2EC6 _ 01. D0
        movzx   eax, byte [eax]                         ; 2EC8 _ 0F B6. 00
        movzx   edx, al                                 ; 2ECB _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2ECE _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2ED1 _ 8B. 40, 14
        cmp     edx, eax                                ; 2ED4 _ 39. C2
        jz      ?_147                                   ; 2ED6 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2ED8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2EDB _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2EDE _ 0F AF. 45, F8
        mov     edx, eax                                ; 2EE2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2EE4 _ 8B. 45, FC
        add     eax, edx                                ; 2EE7 _ 01. D0
        mov     edx, eax                                ; 2EE9 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2EEB _ 8B. 45, EC
        add     edx, eax                                ; 2EEE _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2EF0 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2EF4 _ 88. 02
?_147:  add     dword [ebp-18H], 1                      ; 2EF6 _ 83. 45, E8, 01
?_148:  mov     eax, dword [ebp-18H]                    ; 2EFA _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2EFD _ 3B. 45, D8
        jl      ?_146                                   ; 2F00 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2F02 _ 83. 45, E4, 01
?_149:  mov     eax, dword [ebp-1CH]                    ; 2F06 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2F09 _ 3B. 45, DC
        jl      ?_145                                   ; 2F0C _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2F12 _ 83. 45, E0, 01
?_150:  mov     eax, dword [ebp+8H]                     ; 2F16 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F19 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2F1C _ 39. 45, E0
        jle     ?_140                                   ; 2F1F _ 0F 8E, FFFFFEB1
        nop                                             ; 2F25 _ 90
        leave                                           ; 2F26 _ C9
        ret                                             ; 2F27 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2F28 _ 55
        mov     ebp, esp                                ; 2F29 _ 89. E5
        sub     esp, 24                                 ; 2F2B _ 83. EC, 18
        sub     esp, 8                                  ; 2F2E _ 83. EC, 08
        push    52                                      ; 2F31 _ 6A, 34
        push    67                                      ; 2F33 _ 6A, 43
        call    io_out8                                 ; 2F35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F3A _ 83. C4, 10
        sub     esp, 8                                  ; 2F3D _ 83. EC, 08
        push    156                                     ; 2F40 _ 68, 0000009C
        push    64                                      ; 2F45 _ 6A, 40
        call    io_out8                                 ; 2F47 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F4C _ 83. C4, 10
        sub     esp, 8                                  ; 2F4F _ 83. EC, 08
        push    46                                      ; 2F52 _ 6A, 2E
        push    64                                      ; 2F54 _ 6A, 40
        call    io_out8                                 ; 2F56 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F5B _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2F5E _ C7. 05, 00000360(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2F68 _ C7. 45, F4, 00000000
        jmp     ?_152                                   ; 2F6F _ EB, 15

?_151:  mov     eax, dword [ebp-0CH]                    ; 2F71 _ 8B. 45, F4
        shl     eax, 4                                  ; 2F74 _ C1. E0, 04
        add     eax, ?_218                              ; 2F77 _ 05, 00000368(d)
        mov     dword [eax], 0                          ; 2F7C _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2F82 _ 83. 45, F4, 01
?_152:  cmp     dword [ebp-0CH], 499                    ; 2F86 _ 81. 7D, F4, 000001F3
        jle     ?_151                                   ; 2F8D _ 7E, E2
        nop                                             ; 2F8F _ 90
        leave                                           ; 2F90 _ C9
        ret                                             ; 2F91 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2F92 _ 55
        mov     ebp, esp                                ; 2F93 _ 89. E5
        sub     esp, 16                                 ; 2F95 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2F98 _ C7. 45, FC, 00000000
        jmp     ?_155                                   ; 2F9F _ EB, 36

?_153:  mov     eax, dword [ebp-4H]                     ; 2FA1 _ 8B. 45, FC
        shl     eax, 4                                  ; 2FA4 _ C1. E0, 04
        add     eax, ?_218                              ; 2FA7 _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 2FAC _ 8B. 00
        test    eax, eax                                ; 2FAE _ 85. C0
        jnz     ?_154                                   ; 2FB0 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2FB2 _ 8B. 45, FC
        shl     eax, 4                                  ; 2FB5 _ C1. E0, 04
        add     eax, ?_218                              ; 2FB8 _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 2FBD _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2FC3 _ 8B. 45, FC
        shl     eax, 4                                  ; 2FC6 _ C1. E0, 04
        add     eax, timerctl                           ; 2FC9 _ 05, 00000360(d)
        add     eax, 4                                  ; 2FCE _ 83. C0, 04
        jmp     ?_156                                   ; 2FD1 _ EB, 12

?_154:  add     dword [ebp-4H], 1                       ; 2FD3 _ 83. 45, FC, 01
?_155:  cmp     dword [ebp-4H], 499                     ; 2FD7 _ 81. 7D, FC, 000001F3
        jle     ?_153                                   ; 2FDE _ 7E, C1
        mov     eax, 0                                  ; 2FE0 _ B8, 00000000
?_156:  leave                                           ; 2FE5 _ C9
        ret                                             ; 2FE6 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2FE7 _ 55
        mov     ebp, esp                                ; 2FE8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2FEA _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2FED _ C7. 40, 04, 00000000
        nop                                             ; 2FF4 _ 90
        pop     ebp                                     ; 2FF5 _ 5D
        ret                                             ; 2FF6 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2FF7 _ 55
        mov     ebp, esp                                ; 2FF8 _ 89. E5
        sub     esp, 4                                  ; 2FFA _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2FFD _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3000 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3003 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3006 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3009 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 300C _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 300F _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3013 _ 88. 50, 0C
        nop                                             ; 3016 _ 90
        leave                                           ; 3017 _ C9
        ret                                             ; 3018 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3019 _ 55
        mov     ebp, esp                                ; 301A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 301C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 301F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3022 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3024 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3027 _ C7. 40, 04, 00000002
        nop                                             ; 302E _ 90
        pop     ebp                                     ; 302F _ 5D
        ret                                             ; 3030 _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 3031 _ 55
        mov     ebp, esp                                ; 3032 _ 89. E5
        mov     eax, timerctl                           ; 3034 _ B8, 00000360(d)
        pop     ebp                                     ; 3039 _ 5D
        ret                                             ; 303A _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 303B _ 55
        mov     ebp, esp                                ; 303C _ 89. E5
        sub     esp, 24                                 ; 303E _ 83. EC, 18
        sub     esp, 8                                  ; 3041 _ 83. EC, 08
        push    32                                      ; 3044 _ 6A, 20
        push    32                                      ; 3046 _ 6A, 20
        call    io_out8                                 ; 3048 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 304D _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 3050 _ A1, 00000360(d)
        add     eax, 1                                  ; 3055 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3058 _ A3, 00000360(d)
        mov     byte [ebp-0DH], 0                       ; 305D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3061 _ C7. 45, F4, 00000000
        jmp     ?_160                                   ; 3068 _ E9, 000000AA

?_157:  mov     eax, dword [ebp-0CH]                    ; 306D _ 8B. 45, F4
        shl     eax, 4                                  ; 3070 _ C1. E0, 04
        add     eax, ?_218                              ; 3073 _ 05, 00000368(d)
        mov     eax, dword [eax]                        ; 3078 _ 8B. 00
        cmp     eax, 2                                  ; 307A _ 83. F8, 02
        jne     ?_158                                   ; 307D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 3083 _ 8B. 45, F4
        shl     eax, 4                                  ; 3086 _ C1. E0, 04
        add     eax, ?_217                              ; 3089 _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 308E _ 8B. 00
        lea     edx, [eax-1H]                           ; 3090 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3093 _ 8B. 45, F4
        shl     eax, 4                                  ; 3096 _ C1. E0, 04
        add     eax, ?_217                              ; 3099 _ 05, 00000364(d)
        mov     dword [eax], edx                        ; 309E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 30A0 _ 8B. 45, F4
        shl     eax, 4                                  ; 30A3 _ C1. E0, 04
        add     eax, ?_217                              ; 30A6 _ 05, 00000364(d)
        mov     eax, dword [eax]                        ; 30AB _ 8B. 00
        test    eax, eax                                ; 30AD _ 85. C0
        jnz     ?_158                                   ; 30AF _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 30B1 _ 8B. 45, F4
        shl     eax, 4                                  ; 30B4 _ C1. E0, 04
        add     eax, ?_218                              ; 30B7 _ 05, 00000368(d)
        mov     dword [eax], 1                          ; 30BC _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 30C2 _ 8B. 45, F4
        shl     eax, 4                                  ; 30C5 _ C1. E0, 04
        add     eax, ?_220                              ; 30C8 _ 05, 00000370(d)
        movzx   eax, byte [eax]                         ; 30CD _ 0F B6. 00
        movzx   edx, al                                 ; 30D0 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 30D3 _ 8B. 45, F4
        shl     eax, 4                                  ; 30D6 _ C1. E0, 04
        add     eax, ?_219                              ; 30D9 _ 05, 0000036C(d)
        mov     eax, dword [eax]                        ; 30DE _ 8B. 00
        sub     esp, 8                                  ; 30E0 _ 83. EC, 08
        push    edx                                     ; 30E3 _ 52
        push    eax                                     ; 30E4 _ 50
        call    fifo8_put                               ; 30E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30EA _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 30ED _ 8B. 45, F4
        shl     eax, 4                                  ; 30F0 _ C1. E0, 04
        add     eax, timerctl                           ; 30F3 _ 05, 00000360(d)
        lea     edx, [eax+4H]                           ; 30F8 _ 8D. 50, 04
        mov     eax, dword [multi_task_timer]           ; 30FB _ A1, 00000000(d)
        cmp     edx, eax                                ; 3100 _ 39. C2
        jnz     ?_158                                   ; 3102 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3104 _ C6. 45, F3, 01
?_158:  cmp     byte [ebp-0DH], 0                       ; 3108 _ 80. 7D, F3, 00
        jz      ?_159                                   ; 310C _ 74, 05
        call    multi_task_switch                       ; 310E _ E8, FFFFFFFC(rel)
?_159:  add     dword [ebp-0CH], 1                      ; 3113 _ 83. 45, F4, 01
?_160:  cmp     dword [ebp-0CH], 499                    ; 3117 _ 81. 7D, F4, 000001F3
        jle     ?_157                                   ; 311E _ 0F 8E, FFFFFF49
        nop                                             ; 3124 _ 90
        leave                                           ; 3125 _ C9
        ret                                             ; 3126 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 3127 _ 55
        mov     ebp, esp                                ; 3128 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 312A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 312D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3130 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3133 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3136 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3139 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 313B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 313E _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3141 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3144 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3147 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 314E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3151 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3158 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 315B _ C7. 40, 14, 00000000
        nop                                             ; 3162 _ 90
        pop     ebp                                     ; 3163 _ 5D
        ret                                             ; 3164 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3165 _ 55
        mov     ebp, esp                                ; 3166 _ 89. E5
        sub     esp, 4                                  ; 3168 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 316B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 316E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3171 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3174 _ 8B. 40, 10
        test    eax, eax                                ; 3177 _ 85. C0
        jnz     ?_161                                   ; 3179 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 317B _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 317E _ 8B. 40, 14
        or      eax, 01H                                ; 3181 _ 83. C8, 01
        mov     edx, eax                                ; 3184 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3186 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3189 _ 89. 50, 14
        mov     eax, 4294967295                         ; 318C _ B8, FFFFFFFF
        jmp     ?_163                                   ; 3191 _ EB, 50

?_161:  mov     eax, dword [ebp+8H]                     ; 3193 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3196 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3198 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 319B _ 8B. 40, 08
        add     edx, eax                                ; 319E _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 31A0 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 31A4 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 31A6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31A9 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 31AC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31AF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31B2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31B5 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 31B8 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31BB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31BE _ 8B. 40, 0C
        cmp     edx, eax                                ; 31C1 _ 39. C2
        jl      ?_162                                   ; 31C3 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 31C5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31C8 _ C7. 40, 08, 00000000
?_162:  mov     eax, dword [ebp+8H]                     ; 31CF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31D2 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 31D5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 31D8 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 31DB _ 89. 50, 10
        mov     eax, 1                                  ; 31DE _ B8, 00000001
?_163:  leave                                           ; 31E3 _ C9
        ret                                             ; 31E4 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 31E5 _ 55
        mov     ebp, esp                                ; 31E6 _ 89. E5
        sub     esp, 16                                 ; 31E8 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 31EB _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 31EE _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 31F1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31F4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 31F7 _ 39. C2
        jnz     ?_164                                   ; 31F9 _ 75, 07
        mov     eax, 4294967295                         ; 31FB _ B8, FFFFFFFF
        jmp     ?_166                                   ; 3200 _ EB, 51

?_164:  mov     eax, dword [ebp+8H]                     ; 3202 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3205 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3207 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 320A _ 8B. 40, 04
        add     eax, edx                                ; 320D _ 01. D0
        movzx   eax, byte [eax]                         ; 320F _ 0F B6. 00
        movzx   eax, al                                 ; 3212 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3215 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3218 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 321B _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 321E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3221 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3224 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3227 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 322A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 322D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3230 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3233 _ 39. C2
        jl      ?_165                                   ; 3235 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3237 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 323A _ C7. 40, 04, 00000000
?_165:  mov     eax, dword [ebp+8H]                     ; 3241 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3244 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3247 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 324A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 324D _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3250 _ 8B. 45, FC
?_166:  leave                                           ; 3253 _ C9
        ret                                             ; 3254 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3255 _ 55
        mov     ebp, esp                                ; 3256 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3258 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 325B _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 325E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3261 _ 8B. 40, 10
        sub     edx, eax                                ; 3264 _ 29. C2
        mov     eax, edx                                ; 3266 _ 89. D0
        pop     ebp                                     ; 3268 _ 5D
        ret                                             ; 3269 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 326A _ 55
        mov     ebp, esp                                ; 326B _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 326D _ 81. 7D, 0C, 000FFFFF
        jbe     ?_167                                   ; 3274 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3276 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 327D _ 8B. 45, 0C
        shr     eax, 12                                 ; 3280 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3283 _ 89. 45, 0C
?_167:  mov     eax, dword [ebp+0CH]                    ; 3286 _ 8B. 45, 0C
        mov     edx, eax                                ; 3289 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 328B _ 8B. 45, 08
        mov     word [eax], dx                          ; 328E _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3291 _ 8B. 45, 10
        mov     edx, eax                                ; 3294 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3296 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3299 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 329D _ 8B. 45, 10
        sar     eax, 16                                 ; 32A0 _ C1. F8, 10
        mov     edx, eax                                ; 32A3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32A5 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 32A8 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 32AB _ 8B. 45, 14
        mov     edx, eax                                ; 32AE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32B0 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 32B3 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 32B6 _ 8B. 45, 0C
        shr     eax, 16                                 ; 32B9 _ C1. E8, 10
        and     eax, 0FH                                ; 32BC _ 83. E0, 0F
        mov     edx, eax                                ; 32BF _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 32C1 _ 8B. 45, 14
        sar     eax, 8                                  ; 32C4 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 32C7 _ 83. E0, F0
        or      eax, edx                                ; 32CA _ 09. D0
        mov     edx, eax                                ; 32CC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32CE _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 32D1 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 32D4 _ 8B. 45, 10
        shr     eax, 24                                 ; 32D7 _ C1. E8, 18
        mov     edx, eax                                ; 32DA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32DC _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 32DF _ 88. 50, 07
        nop                                             ; 32E2 _ 90
        pop     ebp                                     ; 32E3 _ 5D
        ret                                             ; 32E4 _ C3
; set_segmdesc End of function

multi_task_init:; Function begin
        push    ebp                                     ; 32E5 _ 55
        mov     ebp, esp                                ; 32E6 _ 89. E5
        sub     esp, 8                                  ; 32E8 _ 83. EC, 08
        call    timer_alloc                             ; 32EB _ E8, FFFFFFFC(rel)
        mov     dword [multi_task_timer], eax           ; 32F0 _ A3, 000022A4(d)
        mov     eax, dword [multi_task_timer]           ; 32F5 _ A1, 000022A4(d)
        sub     esp, 8                                  ; 32FA _ 83. EC, 08
        push    101                                     ; 32FD _ 6A, 65
        push    eax                                     ; 32FF _ 50
        call    timer_setTime                           ; 3300 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3305 _ 83. C4, 10
        mov     dword [multi_task_tr], 56               ; 3308 _ C7. 05, 000022A8(d), 00000038
        nop                                             ; 3312 _ 90
        leave                                           ; 3313 _ C9
        ret                                             ; 3314 _ C3
; multi_task_init End of function

multi_task_switch:; Function begin
        push    ebp                                     ; 3315 _ 55
        mov     ebp, esp                                ; 3316 _ 89. E5
        sub     esp, 8                                  ; 3318 _ 83. EC, 08
        mov     eax, dword [multi_task_tr]              ; 331B _ A1, 000022A8(d)
        cmp     eax, 56                                 ; 3320 _ 83. F8, 38
        jnz     ?_168                                   ; 3323 _ 75, 0C
        mov     dword [multi_task_tr], 72               ; 3325 _ C7. 05, 000022A8(d), 00000048
        jmp     ?_169                                   ; 332F _ EB, 0A

?_168:  mov     dword [multi_task_tr], 56               ; 3331 _ C7. 05, 000022A8(d), 00000038
?_169:  mov     eax, dword [multi_task_timer]           ; 333B _ A1, 000022A4(d)
        sub     esp, 8                                  ; 3340 _ 83. EC, 08
        push    101                                     ; 3343 _ 6A, 65
        push    eax                                     ; 3345 _ 50
        call    timer_setTime                           ; 3346 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 334B _ 83. C4, 10
        mov     eax, dword [multi_task_tr]              ; 334E _ A1, 000022A8(d)
        sub     esp, 8                                  ; 3353 _ 83. EC, 08
        push    eax                                     ; 3356 _ 50
        push    0                                       ; 3357 _ 6A, 00
        call    farjmp                                  ; 3359 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 335E _ 83. C4, 10
        nop                                             ; 3361 _ 90
        leave                                           ; 3362 _ C9
        ret                                             ; 3363 _ C3
; multi_task_switch End of function



?_170:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_171:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_172:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_173:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0011 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0019 _ sk b.

?_174:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_175:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ Page is:
        db 20H, 00H                                     ; 0028 _  .

?_176:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0032 _ Low: .

?_177:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0038 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0040 _ High: .

?_178:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0047 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 004F _ w: .

?_179:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0053 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 005B _ gh: .

?_180:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0060 _ Type: .



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

pos.1777: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.1820:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.1875:                                            ; byte
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

closebtn.2002:                                          ; byte
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

tss_a.1766:                                             ; byte
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

tss_b.1767:                                             ; byte
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

cnt.1772: resd  1                                       ; 0328

line.1776:                                              ; dword
        resd    1                                       ; 032C

str.1918:                                               ; byte
        resb    1                                       ; 0330

?_215:  resb    9                                       ; 0331

?_216:  resb    2                                       ; 033A

line.1951:                                              ; dword
        resd    1                                       ; 033C

pos.1950: resd  8                                       ; 0340

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

multi_task_timer:                                       ; dword
        resd    1                                       ; 22A4

multi_task_tr:                                          ; dword
        resd    1                                       ; 22A8


