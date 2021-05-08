; Disassembly of file: ckernel.o
; Sat May  8 14:40:48 2021
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
        movzx   eax, word [?_202]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-54H], eax                    ; 0034 _ 89. 45, AC
        movzx   eax, word [?_203]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-50H], eax                    ; 003F _ 89. 45, B0
        call    getTimerController                      ; 0042 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 0047 _ 89. 45, B4
        call    init_pit                                ; 004A _ E8, FFFFFFFC(rel)
        push    0                                       ; 004F _ 6A, 00
        push    timerbuf                                ; 0051 _ 68, 0000021C(d)
        push    8                                       ; 0056 _ 6A, 08
        push    timerInfo                               ; 0058 _ 68, 00000200(d)
        call    fifo8_init                              ; 005D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0062 _ 83. C4, 10
        call    timer_alloc                             ; 0065 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 006A _ 89. 45, B8
        sub     esp, 4                                  ; 006D _ 83. EC, 04
        push    10                                      ; 0070 _ 6A, 0A
        push    timerInfo                               ; 0072 _ 68, 00000200(d)
        push    dword [ebp-48H]                         ; 0077 _ FF. 75, B8
        call    timer_init                              ; 007A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 007F _ 83. C4, 10
        sub     esp, 8                                  ; 0082 _ 83. EC, 08
        push    100                                     ; 0085 _ 6A, 64
        push    dword [ebp-48H]                         ; 0087 _ FF. 75, B8
        call    timer_setTime                           ; 008A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008F _ 83. C4, 10
        call    timer_alloc                             ; 0092 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 0097 _ 89. 45, BC
        sub     esp, 4                                  ; 009A _ 83. EC, 04
        push    2                                       ; 009D _ 6A, 02
        push    timerInfo                               ; 009F _ 68, 00000200(d)
        push    dword [ebp-44H]                         ; 00A4 _ FF. 75, BC
        call    timer_init                              ; 00A7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AC _ 83. C4, 10
        sub     esp, 8                                  ; 00AF _ 83. EC, 08
        push    300                                     ; 00B2 _ 68, 0000012C
        push    dword [ebp-44H]                         ; 00B7 _ FF. 75, BC
        call    timer_setTime                           ; 00BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BF _ 83. C4, 10
        call    timer_alloc                             ; 00C2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 00C7 _ 89. 45, C0
        sub     esp, 4                                  ; 00CA _ 83. EC, 04
        push    1                                       ; 00CD _ 6A, 01
        push    timerInfo                               ; 00CF _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 00D4 _ FF. 75, C0
        call    timer_init                              ; 00D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DC _ 83. C4, 10
        sub     esp, 8                                  ; 00DF _ 83. EC, 08
        push    50                                      ; 00E2 _ 6A, 32
        push    dword [ebp-40H]                         ; 00E4 _ FF. 75, C0
        call    timer_setTime                           ; 00E7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EC _ 83. C4, 10
        push    0                                       ; 00EF _ 6A, 00
        push    keybuf                                  ; 00F1 _ 68, 00000040(d)
        push    32                                      ; 00F6 _ 6A, 20
        push    keyInfo                                 ; 00F8 _ 68, 00000008(d)
        call    fifo8_init                              ; 00FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0102 _ 83. C4, 10
        push    0                                       ; 0105 _ 6A, 00
        push    mousebuf                                ; 0107 _ 68, 00000060(d)
        push    128                                     ; 010C _ 68, 00000080
        push    mouseInfo                               ; 0111 _ 68, 00000024(d)
        call    fifo8_init                              ; 0116 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 011B _ 83. C4, 10
        call    init_palette                            ; 011E _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0123 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0128 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 012D _ 83. EC, 0C
        push    mouse_move                              ; 0130 _ 68, 000000E0(d)
        call    enable_mouse                            ; 0135 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 013A _ 83. C4, 10
        call    get_addr_buffer                         ; 013D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0142 _ 89. 45, C4
        call    get_memory_block_count                  ; 0145 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 014A _ 89. 45, C8
        mov     eax, dword [memman]                     ; 014D _ A1, 00000008(d)
        sub     esp, 12                                 ; 0152 _ 83. EC, 0C
        push    eax                                     ; 0155 _ 50
        call    memman_init                             ; 0156 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 015B _ 83. C4, 10
        mov     eax, dword [memman]                     ; 015E _ A1, 00000008(d)
        sub     esp, 4                                  ; 0163 _ 83. EC, 04
        push    1072594944                              ; 0166 _ 68, 3FEE8000
        push    16809984                                ; 016B _ 68, 01008000
        push    eax                                     ; 0170 _ 50
        call    memman_free                             ; 0171 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0176 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0179 _ A1, 00000008(d)
        sub     esp, 12                                 ; 017E _ 83. EC, 0C
        push    eax                                     ; 0181 _ 50
        call    memman_total                            ; 0182 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0187 _ 83. C4, 10
        shr     eax, 20                                 ; 018A _ C1. E8, 14
        mov     dword [ebp-34H], eax                    ; 018D _ 89. 45, CC
        mov     eax, dword [ebp-34H]                    ; 0190 _ 8B. 45, CC
        sub     esp, 12                                 ; 0193 _ 83. EC, 0C
        push    eax                                     ; 0196 _ 50
        call    intToHexStr                             ; 0197 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019C _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 019F _ 89. 45, D0
        mov     eax, dword [memman]                     ; 01A2 _ A1, 00000008(d)
        push    dword [ebp-50H]                         ; 01A7 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 01AA _ FF. 75, AC
        push    dword [ebp-58H]                         ; 01AD _ FF. 75, A8
        push    eax                                     ; 01B0 _ 50
        call    shtctl_init                             ; 01B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B6 _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 01B9 _ A3, 00000224(d)
        mov     eax, dword [shtctl]                     ; 01BE _ A1, 00000224(d)
        sub     esp, 12                                 ; 01C3 _ 83. EC, 0C
        push    eax                                     ; 01C6 _ 50
        call    sheet_alloc                             ; 01C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CC _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01CF _ A3, 00000230(d)
        mov     eax, dword [shtctl]                     ; 01D4 _ A1, 00000224(d)
        sub     esp, 12                                 ; 01D9 _ 83. EC, 0C
        push    eax                                     ; 01DC _ 50
        call    sheet_alloc                             ; 01DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E2 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01E5 _ A3, 00000234(d)
        mov     eax, dword [ebp-54H]                    ; 01EA _ 8B. 45, AC
        imul    eax, dword [ebp-50H]                    ; 01ED _ 0F AF. 45, B0
        mov     edx, eax                                ; 01F1 _ 89. C2
        mov     eax, dword [memman]                     ; 01F3 _ A1, 00000008(d)
        sub     esp, 8                                  ; 01F8 _ 83. EC, 08
        push    edx                                     ; 01FB _ 52
        push    eax                                     ; 01FC _ 50
        call    memman_alloc_4K                         ; 01FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0202 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0205 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 020A _ A1, 000000F8(d)
        sub     esp, 4                                  ; 020F _ 83. EC, 04
        push    dword [ebp-50H]                         ; 0212 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0215 _ FF. 75, AC
        push    eax                                     ; 0218 _ 50
        call    init_screen8                            ; 0219 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 021E _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0221 _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 0227 _ A1, 00000230(d)
        sub     esp, 12                                 ; 022C _ 83. EC, 0C
        push    99                                      ; 022F _ 6A, 63
        push    dword [ebp-50H]                         ; 0231 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0234 _ FF. 75, AC
        push    edx                                     ; 0237 _ 52
        push    eax                                     ; 0238 _ 50
        call    sheet_setbuf                            ; 0239 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 023E _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 0241 _ A1, 00000234(d)
        sub     esp, 12                                 ; 0246 _ 83. EC, 0C
        push    99                                      ; 0249 _ 6A, 63
        push    16                                      ; 024B _ 6A, 10
        push    16                                      ; 024D _ 6A, 10
        push    buf_mouse                               ; 024F _ 68, 00000100(d)
        push    eax                                     ; 0254 _ 50
        call    sheet_setbuf                            ; 0255 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 025A _ 83. C4, 20
        sub     esp, 8                                  ; 025D _ 83. EC, 08
        push    99                                      ; 0260 _ 6A, 63
        push    buf_mouse                               ; 0262 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 0267 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026C _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 026F _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0275 _ A1, 00000224(d)
        push    0                                       ; 027A _ 6A, 00
        push    0                                       ; 027C _ 6A, 00
        push    edx                                     ; 027E _ 52
        push    eax                                     ; 027F _ 50
        call    sheet_slide                             ; 0280 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0285 _ 83. C4, 10
        mov     eax, dword [ebp-54H]                    ; 0288 _ 8B. 45, AC
        sub     eax, 16                                 ; 028B _ 83. E8, 10
        mov     edx, eax                                ; 028E _ 89. C2
        shr     edx, 31                                 ; 0290 _ C1. EA, 1F
        add     eax, edx                                ; 0293 _ 01. D0
        sar     eax, 1                                  ; 0295 _ D1. F8
        mov     dword [mx], eax                         ; 0297 _ A3, 000000F0(d)
        mov     eax, dword [ebp-50H]                    ; 029C _ 8B. 45, B0
        sub     eax, 44                                 ; 029F _ 83. E8, 2C
        mov     edx, eax                                ; 02A2 _ 89. C2
        shr     edx, 31                                 ; 02A4 _ C1. EA, 1F
        add     eax, edx                                ; 02A7 _ 01. D0
        sar     eax, 1                                  ; 02A9 _ D1. F8
        mov     dword [my], eax                         ; 02AB _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 02B0 _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 02B6 _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 02BC _ 8B. 15, 00000234(d)
        mov     eax, dword [shtctl]                     ; 02C2 _ A1, 00000224(d)
        push    ebx                                     ; 02C7 _ 53
        push    ecx                                     ; 02C8 _ 51
        push    edx                                     ; 02C9 _ 52
        push    eax                                     ; 02CA _ 50
        call    sheet_slide                             ; 02CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D0 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02D3 _ A1, 00000224(d)
        sub     esp, 12                                 ; 02D8 _ 83. EC, 0C
        push    2                                       ; 02DB _ 6A, 02
        push    100                                     ; 02DD _ 6A, 64
        push    170                                     ; 02DF _ 68, 000000AA
        push    ?_188                                   ; 02E4 _ 68, 00000000(d)
        push    eax                                     ; 02E9 _ 50
        call    messageBox                              ; 02EA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02EF _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02F2 _ A3, 00000228(d)
        mov     edx, dword [sheet_back]                 ; 02F7 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02FD _ A1, 00000224(d)
        sub     esp, 4                                  ; 0302 _ 83. EC, 04
        push    0                                       ; 0305 _ 6A, 00
        push    edx                                     ; 0307 _ 52
        push    eax                                     ; 0308 _ 50
        call    sheet_level_updown                      ; 0309 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 030E _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 0311 _ 8B. 15, 00000234(d)
        mov     eax, dword [shtctl]                     ; 0317 _ A1, 00000224(d)
        sub     esp, 4                                  ; 031C _ 83. EC, 04
        push    50                                      ; 031F _ 6A, 32
        push    edx                                     ; 0321 _ 52
        push    eax                                     ; 0322 _ 50
        call    sheet_level_updown                      ; 0323 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0328 _ 83. C4, 10
        call    io_sti                                  ; 032B _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 0330 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 0335 _ 89. 45, D4
        mov     eax, dword [memman]                     ; 0338 _ A1, 00000008(d)
        sub     esp, 12                                 ; 033D _ 83. EC, 0C
        push    eax                                     ; 0340 _ 50
        call    task_init                               ; 0341 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0346 _ 83. C4, 10
        mov     dword [task_a.2241], eax                ; 0349 _ A3, 00000238(d)
        mov     eax, dword [task_a.2241]                ; 034E _ A1, 00000238(d)
        mov     dword [?_204], eax                      ; 0353 _ A3, 00000020(d)
        call    task_alloc                              ; 0358 _ E8, FFFFFFFC(rel)
        mov     dword [task_b.2242], eax                ; 035D _ A3, 0000023C(d)
        mov     eax, dword [task_b.2242]                ; 0362 _ A1, 0000023C(d)
        mov     dword [eax+68H], 0                      ; 0367 _ C7. 40, 68, 00000000
        mov     eax, dword [task_b.2242]                ; 036E _ A1, 0000023C(d)
        mov     dword [eax+6CH], 1073741824             ; 0373 _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-2CH]                    ; 037A _ 8B. 45, D4
        neg     eax                                     ; 037D _ F7. D8
        lea     edx, [task_b_main+eax]                  ; 037F _ 8D. 90, 00000000(d)
        mov     eax, dword [task_b.2242]                ; 0385 _ A1, 0000023C(d)
        mov     dword [eax+28H], edx                    ; 038A _ 89. 50, 28
        mov     eax, dword [task_b.2242]                ; 038D _ A1, 0000023C(d)
        mov     dword [eax+50H], 0                      ; 0392 _ C7. 40, 50, 00000000
        mov     eax, dword [task_b.2242]                ; 0399 _ A1, 0000023C(d)
        mov     dword [eax+54H], 8                      ; 039E _ C7. 40, 54, 00000008
        mov     eax, dword [task_b.2242]                ; 03A5 _ A1, 0000023C(d)
        mov     dword [eax+58H], 32                     ; 03AA _ C7. 40, 58, 00000020
        mov     eax, dword [task_b.2242]                ; 03B1 _ A1, 0000023C(d)
        mov     dword [eax+5CH], 24                     ; 03B6 _ C7. 40, 5C, 00000018
        mov     eax, dword [task_b.2242]                ; 03BD _ A1, 0000023C(d)
        mov     dword [eax+60H], 0                      ; 03C2 _ C7. 40, 60, 00000000
        mov     eax, dword [task_b.2242]                ; 03C9 _ A1, 0000023C(d)
        mov     dword [eax+64H], 16                     ; 03CE _ C7. 40, 64, 00000010
        mov     eax, dword [task_b.2242]                ; 03D5 _ A1, 0000023C(d)
        sub     esp, 12                                 ; 03DA _ 83. EC, 0C
        push    eax                                     ; 03DD _ 50
        call    task_run                                ; 03DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E3 _ 83. C4, 10
        mov     byte [ebp-65H], 0                       ; 03E6 _ C6. 45, 9B, 00
        mov     dword [ebp-64H], 7                      ; 03EA _ C7. 45, 9C, 00000007
        mov     dword [ebp-60H], 0                      ; 03F1 _ C7. 45, A0, 00000000
        mov     edx, dword [sheet_win]                  ; 03F8 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 03FE _ A1, 00000224(d)
        sub     esp, 8                                  ; 0403 _ 83. EC, 08
        push    ?_189                                   ; 0406 _ 68, 00000008(d)
        push    10                                      ; 040B _ 6A, 0A
        push    63                                      ; 040D _ 6A, 3F
        push    8                                       ; 040F _ 6A, 08
        push    edx                                     ; 0411 _ 52
        push    eax                                     ; 0412 _ 50
        call    showString                              ; 0413 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0418 _ 83. C4, 20
        mov     dword [ebp-5CH], 0                      ; 041B _ C7. 45, A4, 00000000
?_001:  call    io_sti                                  ; 0422 _ E8, FFFFFFFC(rel)
        call    getTaskTimer                            ; 0427 _ E8, FFFFFFFC(rel)
        mov     eax, dword [eax]                        ; 042C _ 8B. 00
        sub     esp, 12                                 ; 042E _ 83. EC, 0C
        push    eax                                     ; 0431 _ 50
        call    intToHexStr                             ; 0432 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0437 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 043A _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 043D _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0442 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0445 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 044A _ 8B. 00
        sub     esp, 4                                  ; 044C _ 83. EC, 04
        push    38                                      ; 044F _ 6A, 26
        push    150                                     ; 0451 _ 68, 00000096
        push    23                                      ; 0456 _ 6A, 17
        push    8                                       ; 0458 _ 6A, 08
        push    8                                       ; 045A _ 6A, 08
        push    edx                                     ; 045C _ 52
        push    eax                                     ; 045D _ 50
        call    boxfill8                                ; 045E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0463 _ 83. C4, 20
        mov     edx, dword [sheet_win]                  ; 0466 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 046C _ A1, 00000224(d)
        sub     esp, 8                                  ; 0471 _ 83. EC, 08
        push    dword [ebp-28H]                         ; 0474 _ FF. 75, D8
        push    10                                      ; 0477 _ 6A, 0A
        push    23                                      ; 0479 _ 6A, 17
        push    8                                       ; 047B _ 6A, 08
        push    edx                                     ; 047D _ 52
        push    eax                                     ; 047E _ 50
        call    showString                              ; 047F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0484 _ 83. C4, 20
        call    io_cli                                  ; 0487 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 048C _ 83. EC, 0C
        push    keyInfo                                 ; 048F _ 68, 00000008(d)
        call    fifo8_status                            ; 0494 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0499 _ 83. C4, 10
        mov     ebx, eax                                ; 049C _ 89. C3
        sub     esp, 12                                 ; 049E _ 83. EC, 0C
        push    mouseInfo                               ; 04A1 _ 68, 00000024(d)
        call    fifo8_status                            ; 04A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04AB _ 83. C4, 10
        add     ebx, eax                                ; 04AE _ 01. C3
        sub     esp, 12                                 ; 04B0 _ 83. EC, 0C
        push    timerInfo                               ; 04B3 _ 68, 00000200(d)
        call    fifo8_status                            ; 04B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04BD _ 83. C4, 10
        add     eax, ebx                                ; 04C0 _ 01. D8
        test    eax, eax                                ; 04C2 _ 85. C0
        jnz     ?_002                                   ; 04C4 _ 75, 0A
        call    io_sti                                  ; 04C6 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04CB _ E9, FFFFFF52

?_002:  sub     esp, 12                                 ; 04D0 _ 83. EC, 0C
        push    keyInfo                                 ; 04D3 _ 68, 00000008(d)
        call    fifo8_status                            ; 04D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DD _ 83. C4, 10
        test    eax, eax                                ; 04E0 _ 85. C0
        je      ?_008                                   ; 04E2 _ 0F 84, 00000317
        call    io_sti                                  ; 04E8 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 04ED _ 83. EC, 0C
        push    keyInfo                                 ; 04F0 _ 68, 00000008(d)
        call    fifo8_get                               ; 04F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04FA _ 83. C4, 10
        mov     byte [ebp-65H], al                      ; 04FD _ 88. 45, 9B
        cmp     byte [ebp-65H], 28                      ; 0500 _ 80. 7D, 9B, 1C
        jnz     ?_003                                   ; 0504 _ 75, 59
        mov     ebx, dword [cnt.2243]                   ; 0506 _ 8B. 1D, 00000240(d)
        mov     eax, dword [sheet_back]                 ; 050C _ A1, 00000230(d)
        mov     ecx, dword [eax]                        ; 0511 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 0513 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0519 _ A1, 00000224(d)
        sub     esp, 4                                  ; 051E _ 83. EC, 04
        push    7                                       ; 0521 _ 6A, 07
        push    dword [ebp-54H]                         ; 0523 _ FF. 75, AC
        push    ebx                                     ; 0526 _ 53
        push    ecx                                     ; 0527 _ 51
        push    dword [ebp-3CH]                         ; 0528 _ FF. 75, C4
        push    edx                                     ; 052B _ 52
        push    eax                                     ; 052C _ 50
        call    showMemInfo                             ; 052D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0532 _ 83. C4, 20
        mov     eax, dword [cnt.2243]                   ; 0535 _ A1, 00000240(d)
        add     eax, 1                                  ; 053A _ 83. C0, 01
        mov     dword [cnt.2243], eax                   ; 053D _ A3, 00000240(d)
        mov     eax, dword [cnt.2243]                   ; 0542 _ A1, 00000240(d)
        cmp     dword [ebp-38H], eax                    ; 0547 _ 39. 45, C8
        jg      ?_001                                   ; 054A _ 0F 8F, FFFFFED2
        mov     dword [cnt.2243], 0                     ; 0550 _ C7. 05, 00000240(d), 00000000
        jmp     ?_001                                   ; 055A _ E9, FFFFFEC3

?_003:  movzx   eax, byte [ebp-65H]                     ; 055F _ 0F B6. 45, 9B
        movzx   eax, byte [keytable+eax]                ; 0563 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 056A _ 84. C0
        jz      ?_004                                   ; 056C _ 74, 18
        cmp     byte [ebp-65H], 15                      ; 056E _ 80. 7D, 9B, 0F
        jbe     ?_004                                   ; 0572 _ 76, 12
        cmp     byte [ebp-65H], 83                      ; 0574 _ 80. 7D, 9B, 53
        ja      ?_004                                   ; 0578 _ 77, 0C
        mov     eax, dword [line.2246]                  ; 057A _ A1, 00000244(d)
        cmp     eax, 142                                ; 057F _ 3D, 0000008E
        jle     ?_005                                   ; 0584 _ 7E, 18
?_004:  cmp     byte [ebp-65H], 14                      ; 0586 _ 80. 7D, 9B, 0E
        jne     ?_001                                   ; 058A _ 0F 85, FFFFFE92
        mov     eax, dword [line.2246]                  ; 0590 _ A1, 00000244(d)
        cmp     eax, 7                                  ; 0595 _ 83. F8, 07
        jle     ?_001                                   ; 0598 _ 0F 8E, FFFFFE84
?_005:  movzx   eax, byte [ebp-65H]                     ; 059E _ 0F B6. 45, 9B
        movzx   eax, byte [keytable+eax]                ; 05A2 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 05A9 _ 84. C0
        je      ?_007                                   ; 05AB _ 0F 84, 00000128
        cmp     byte [ebp-65H], 15                      ; 05B1 _ 80. 7D, 9B, 0F
        jbe     ?_007                                   ; 05B5 _ 0F 86, 0000011E
        cmp     byte [ebp-65H], 83                      ; 05BB _ 80. 7D, 9B, 53
        ja      ?_007                                   ; 05BF _ 0F 87, 00000114
        mov     eax, dword [line.2246]                  ; 05C5 _ A1, 00000244(d)
        cmp     eax, 142                                ; 05CA _ 3D, 0000008E
        jg      ?_007                                   ; 05CF _ 0F 8F, 00000104
        mov     eax, dword [pos.2247]                   ; 05D5 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 05DA _ 8D. 78, 28
        mov     eax, dword [line.2246]                  ; 05DD _ A1, 00000244(d)
        lea     esi, [eax+0EH]                          ; 05E2 _ 8D. 70, 0E
        mov     eax, dword [pos.2247]                   ; 05E5 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05EA _ 8D. 58, 1A
        mov     eax, dword [line.2246]                  ; 05ED _ A1, 00000244(d)
        lea     ecx, [eax+8H]                           ; 05F2 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 05F5 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 05FA _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 05FD _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0602 _ 8B. 00
        sub     esp, 4                                  ; 0604 _ 83. EC, 04
        push    edi                                     ; 0607 _ 57
        push    esi                                     ; 0608 _ 56
        push    ebx                                     ; 0609 _ 53
        push    ecx                                     ; 060A _ 51
        push    7                                       ; 060B _ 6A, 07
        push    edx                                     ; 060D _ 52
        push    eax                                     ; 060E _ 50
        call    boxfill8                                ; 060F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0614 _ 83. C4, 20
        mov     eax, dword [pos.2247]                   ; 0617 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 061C _ 8D. 78, 2A
        mov     eax, dword [line.2246]                  ; 061F _ A1, 00000244(d)
        lea     esi, [eax+10H]                          ; 0624 _ 8D. 70, 10
        mov     eax, dword [pos.2247]                   ; 0627 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 062C _ 8D. 58, 1A
        mov     eax, dword [line.2246]                  ; 062F _ A1, 00000244(d)
        lea     ecx, [eax+8H]                           ; 0634 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0637 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 063D _ A1, 00000224(d)
        sub     esp, 8                                  ; 0642 _ 83. EC, 08
        push    edi                                     ; 0645 _ 57
        push    esi                                     ; 0646 _ 56
        push    ebx                                     ; 0647 _ 53
        push    ecx                                     ; 0648 _ 51
        push    edx                                     ; 0649 _ 52
        push    eax                                     ; 064A _ 50
        call    sheet_refresh                           ; 064B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0650 _ 83. C4, 20
        movzx   eax, byte [ebp-65H]                     ; 0653 _ 0F B6. 45, 9B
        movzx   eax, byte [keytable+eax]                ; 0657 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 065E _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0661 _ C6. 45, E3, 00
        mov     eax, dword [pos.2247]                   ; 0665 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 066A _ 8D. 70, 1A
        mov     eax, dword [line.2246]                  ; 066D _ A1, 00000244(d)
        lea     ebx, [eax+8H]                           ; 0672 _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 0675 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 067B _ A1, 00000224(d)
        sub     esp, 8                                  ; 0680 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0683 _ 8D. 4D, E2
        push    ecx                                     ; 0686 _ 51
        push    0                                       ; 0687 _ 6A, 00
        push    esi                                     ; 0689 _ 56
        push    ebx                                     ; 068A _ 53
        push    edx                                     ; 068B _ 52
        push    eax                                     ; 068C _ 50
        call    showString                              ; 068D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0692 _ 83. C4, 20
        mov     eax, dword [line.2246]                  ; 0695 _ A1, 00000244(d)
        add     eax, 8                                  ; 069A _ 83. C0, 08
        mov     dword [line.2246], eax                  ; 069D _ A3, 00000244(d)
        mov     eax, dword [sheet_win]                  ; 06A2 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 06A7 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 06AA _ 8D. 50, F0
        mov     eax, dword [line.2246]                  ; 06AD _ A1, 00000244(d)
        cmp     edx, eax                                ; 06B2 _ 39. C2
        jg      ?_006                                   ; 06B4 _ 7F, 17
        mov     eax, dword [pos.2247]                   ; 06B6 _ A1, 00000074(d)
        add     eax, 16                                 ; 06BB _ 83. C0, 10
        mov     dword [pos.2247], eax                   ; 06BE _ A3, 00000074(d)
        mov     dword [line.2246], 0                    ; 06C3 _ C7. 05, 00000244(d), 00000000
?_006:  mov     dword [ebp-5CH], 0                      ; 06CD _ C7. 45, A4, 00000000
        jmp     ?_014                                   ; 06D4 _ E9, 0000030D

?_007:  cmp     byte [ebp-65H], 14                      ; 06D9 _ 80. 7D, 9B, 0E
        jne     ?_001                                   ; 06DD _ 0F 85, FFFFFD3F
        mov     eax, dword [line.2246]                  ; 06E3 _ A1, 00000244(d)
        cmp     eax, 7                                  ; 06E8 _ 83. F8, 07
        jle     ?_001                                   ; 06EB _ 0F 8E, FFFFFD31
        mov     eax, dword [pos.2247]                   ; 06F1 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06F6 _ 8D. 78, 28
        mov     eax, dword [line.2246]                  ; 06F9 _ A1, 00000244(d)
        lea     esi, [eax+10H]                          ; 06FE _ 8D. 70, 10
        mov     eax, dword [pos.2247]                   ; 0701 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0706 _ 8D. 58, 1A
        mov     eax, dword [line.2246]                  ; 0709 _ A1, 00000244(d)
        lea     ecx, [eax+8H]                           ; 070E _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0711 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0716 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0719 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 071E _ 8B. 00
        sub     esp, 4                                  ; 0720 _ 83. EC, 04
        push    edi                                     ; 0723 _ 57
        push    esi                                     ; 0724 _ 56
        push    ebx                                     ; 0725 _ 53
        push    ecx                                     ; 0726 _ 51
        push    7                                       ; 0727 _ 6A, 07
        push    edx                                     ; 0729 _ 52
        push    eax                                     ; 072A _ 50
        call    boxfill8                                ; 072B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0730 _ 83. C4, 20
        mov     eax, dword [pos.2247]                   ; 0733 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0738 _ 8D. 78, 2A
        mov     eax, dword [line.2246]                  ; 073B _ A1, 00000244(d)
        lea     esi, [eax+10H]                          ; 0740 _ 8D. 70, 10
        mov     eax, dword [pos.2247]                   ; 0743 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0748 _ 8D. 58, 1A
        mov     eax, dword [line.2246]                  ; 074B _ A1, 00000244(d)
        lea     ecx, [eax+8H]                           ; 0750 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0753 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0759 _ A1, 00000224(d)
        sub     esp, 8                                  ; 075E _ 83. EC, 08
        push    edi                                     ; 0761 _ 57
        push    esi                                     ; 0762 _ 56
        push    ebx                                     ; 0763 _ 53
        push    ecx                                     ; 0764 _ 51
        push    edx                                     ; 0765 _ 52
        push    eax                                     ; 0766 _ 50
        call    sheet_refresh                           ; 0767 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 076C _ 83. C4, 20
        mov     eax, dword [line.2246]                  ; 076F _ A1, 00000244(d)
        sub     eax, 8                                  ; 0774 _ 83. E8, 08
        mov     dword [line.2246], eax                  ; 0777 _ A3, 00000244(d)
        mov     eax, dword [pos.2247]                   ; 077C _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0781 _ 8D. 78, 28
        mov     eax, dword [line.2246]                  ; 0784 _ A1, 00000244(d)
        lea     esi, [eax+10H]                          ; 0789 _ 8D. 70, 10
        mov     eax, dword [pos.2247]                   ; 078C _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0791 _ 8D. 58, 1A
        mov     eax, dword [line.2246]                  ; 0794 _ A1, 00000244(d)
        lea     ecx, [eax+8H]                           ; 0799 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 079C _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 07A1 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 07A4 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 07A9 _ 8B. 00
        sub     esp, 4                                  ; 07AB _ 83. EC, 04
        push    edi                                     ; 07AE _ 57
        push    esi                                     ; 07AF _ 56
        push    ebx                                     ; 07B0 _ 53
        push    ecx                                     ; 07B1 _ 51
        push    7                                       ; 07B2 _ 6A, 07
        push    edx                                     ; 07B4 _ 52
        push    eax                                     ; 07B5 _ 50
        call    boxfill8                                ; 07B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07BB _ 83. C4, 20
        mov     eax, dword [pos.2247]                   ; 07BE _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 07C3 _ 8D. 78, 2A
        mov     eax, dword [line.2246]                  ; 07C6 _ A1, 00000244(d)
        lea     esi, [eax+10H]                          ; 07CB _ 8D. 70, 10
        mov     eax, dword [pos.2247]                   ; 07CE _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 07D3 _ 8D. 58, 1A
        mov     eax, dword [line.2246]                  ; 07D6 _ A1, 00000244(d)
        lea     ecx, [eax+8H]                           ; 07DB _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 07DE _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 07E4 _ A1, 00000224(d)
        sub     esp, 8                                  ; 07E9 _ 83. EC, 08
        push    edi                                     ; 07EC _ 57
        push    esi                                     ; 07ED _ 56
        push    ebx                                     ; 07EE _ 53
        push    ecx                                     ; 07EF _ 51
        push    edx                                     ; 07F0 _ 52
        push    eax                                     ; 07F1 _ 50
        call    sheet_refresh                           ; 07F2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07F7 _ 83. C4, 20
        jmp     ?_001                                   ; 07FA _ E9, FFFFFC23

?_008:  sub     esp, 12                                 ; 07FF _ 83. EC, 0C
        push    mouseInfo                               ; 0802 _ 68, 00000024(d)
        call    fifo8_status                            ; 0807 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 080C _ 83. C4, 10
        test    eax, eax                                ; 080F _ 85. C0
        jz      ?_009                                   ; 0811 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0813 _ 8B. 0D, 00000234(d)
        mov     edx, dword [sheet_back]                 ; 0819 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 081F _ A1, 00000224(d)
        sub     esp, 4                                  ; 0824 _ 83. EC, 04
        push    ecx                                     ; 0827 _ 51
        push    edx                                     ; 0828 _ 52
        push    eax                                     ; 0829 _ 50
        call    showMouseInfo                           ; 082A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 082F _ 83. C4, 10
        jmp     ?_001                                   ; 0832 _ E9, FFFFFBEB

?_009:  sub     esp, 12                                 ; 0837 _ 83. EC, 0C
        push    timerInfo                               ; 083A _ 68, 00000200(d)
        call    fifo8_status                            ; 083F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0844 _ 83. C4, 10
        test    eax, eax                                ; 0847 _ 85. C0
        je      ?_001                                   ; 0849 _ 0F 84, FFFFFBD3
        call    io_sti                                  ; 084F _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0854 _ 83. EC, 0C
        push    timerInfo                               ; 0857 _ 68, 00000200(d)
        call    fifo8_get                               ; 085C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0861 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0864 _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 0867 _ 83. 7D, DC, 0A
        jnz     ?_010                                   ; 086B _ 75, 73
        mov     edx, dword [sheet_back]                 ; 086D _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0873 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0878 _ 83. EC, 08
        push    ?_190                                   ; 087B _ 68, 0000001E(d)
        push    7                                       ; 0880 _ 6A, 07
        push    160                                     ; 0882 _ 68, 000000A0
        push    dword [ebp-60H]                         ; 0887 _ FF. 75, A0
        push    edx                                     ; 088A _ 52
        push    eax                                     ; 088B _ 50
        call    showString                              ; 088C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0891 _ 83. C4, 20
        sub     esp, 8                                  ; 0894 _ 83. EC, 08
        push    100                                     ; 0897 _ 6A, 64
        push    dword [ebp-48H]                         ; 0899 _ FF. 75, B8
        call    timer_setTime                           ; 089C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08A1 _ 83. C4, 10
        add     dword [ebp-60H], 8                      ; 08A4 _ 83. 45, A0, 08
        add     dword [ebp-5CH], 1                      ; 08A8 _ 83. 45, A4, 01
        cmp     dword [ebp-60H], 39                     ; 08AC _ 83. 7D, A0, 27
        jle     ?_001                                   ; 08B0 _ 0F 8E, FFFFFB6C
        cmp     dword [ebp-5CH], 5                      ; 08B6 _ 83. 7D, A4, 05
        jne     ?_001                                   ; 08BA _ 0F 85, FFFFFB62
        call    io_cli                                  ; 08C0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2241]                ; 08C5 _ A1, 00000238(d)
        sub     esp, 12                                 ; 08CA _ 83. EC, 0C
        push    eax                                     ; 08CD _ 50
        call    task_sleep                              ; 08CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08D3 _ 83. C4, 10
        call    io_sti                                  ; 08D6 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08DB _ E9, FFFFFB42

?_010:  cmp     dword [ebp-24H], 2                      ; 08E0 _ 83. 7D, DC, 02
        jnz     ?_011                                   ; 08E4 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 08E6 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 08EC _ A1, 00000224(d)
        sub     esp, 8                                  ; 08F1 _ 83. EC, 08
        push    ?_191                                   ; 08F4 _ 68, 00000020(d)
        push    7                                       ; 08F9 _ 6A, 07
        push    32                                      ; 08FB _ 6A, 20
        push    80                                      ; 08FD _ 6A, 50
        push    edx                                     ; 08FF _ 52
        push    eax                                     ; 0900 _ 50
        call    showString                              ; 0901 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0906 _ 83. C4, 20
        jmp     ?_001                                   ; 0909 _ E9, FFFFFB14

?_011:  cmp     dword [ebp-24H], 0                      ; 090E _ 83. 7D, DC, 00
        jz      ?_012                                   ; 0912 _ 74, 1E
        sub     esp, 4                                  ; 0914 _ 83. EC, 04
        push    0                                       ; 0917 _ 6A, 00
        push    timerInfo                               ; 0919 _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 091E _ FF. 75, C0
        call    timer_init                              ; 0921 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0926 _ 83. C4, 10
        mov     dword [ebp-64H], 0                      ; 0929 _ C7. 45, 9C, 00000000
        jmp     ?_013                                   ; 0930 _ EB, 1C

?_012:  sub     esp, 4                                  ; 0932 _ 83. EC, 04
        push    1                                       ; 0935 _ 6A, 01
        push    timerInfo                               ; 0937 _ 68, 00000200(d)
        push    dword [ebp-40H]                         ; 093C _ FF. 75, C0
        call    timer_init                              ; 093F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0944 _ 83. C4, 10
        mov     dword [ebp-64H], 7                      ; 0947 _ C7. 45, 9C, 00000007
?_013:  sub     esp, 8                                  ; 094E _ 83. EC, 08
        push    50                                      ; 0951 _ 6A, 32
        push    dword [ebp-40H]                         ; 0953 _ FF. 75, C0
        call    timer_setTime                           ; 0956 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 095B _ 83. C4, 10
        mov     eax, dword [pos.2247]                   ; 095E _ A1, 00000074(d)
        add     eax, 40                                 ; 0963 _ 83. C0, 28
        mov     dword [ebp-6CH], eax                    ; 0966 _ 89. 45, 94
        mov     eax, dword [line.2246]                  ; 0969 _ A1, 00000244(d)
        lea     edi, [eax+0EH]                          ; 096E _ 8D. 78, 0E
        mov     eax, dword [pos.2247]                   ; 0971 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0976 _ 8D. 70, 1A
        mov     eax, dword [line.2246]                  ; 0979 _ A1, 00000244(d)
        lea     ebx, [eax+8H]                           ; 097E _ 8D. 58, 08
        mov     eax, dword [ebp-64H]                    ; 0981 _ 8B. 45, 9C
        movzx   ecx, al                                 ; 0984 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0987 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 098C _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 098F _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0994 _ 8B. 00
        sub     esp, 4                                  ; 0996 _ 83. EC, 04
        push    dword [ebp-6CH]                         ; 0999 _ FF. 75, 94
        push    edi                                     ; 099C _ 57
        push    esi                                     ; 099D _ 56
        push    ebx                                     ; 099E _ 53
        push    ecx                                     ; 099F _ 51
        push    edx                                     ; 09A0 _ 52
        push    eax                                     ; 09A1 _ 50
        call    boxfill8                                ; 09A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09A7 _ 83. C4, 20
        mov     eax, dword [pos.2247]                   ; 09AA _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 09AF _ 8D. 78, 2A
        mov     eax, dword [line.2246]                  ; 09B2 _ A1, 00000244(d)
        lea     esi, [eax+10H]                          ; 09B7 _ 8D. 70, 10
        mov     eax, dword [pos.2247]                   ; 09BA _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09BF _ 8D. 58, 1A
        mov     eax, dword [line.2246]                  ; 09C2 _ A1, 00000244(d)
        lea     ecx, [eax+8H]                           ; 09C7 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 09CA _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 09D0 _ A1, 00000224(d)
        sub     esp, 8                                  ; 09D5 _ 83. EC, 08
        push    edi                                     ; 09D8 _ 57
        push    esi                                     ; 09D9 _ 56
        push    ebx                                     ; 09DA _ 53
        push    ecx                                     ; 09DB _ 51
        push    edx                                     ; 09DC _ 52
        push    eax                                     ; 09DD _ 50
        call    sheet_refresh                           ; 09DE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09E3 _ 83. C4, 20
?_014:  jmp     ?_001                                   ; 09E6 _ E9, FFFFFA37
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 09EB _ 55
        mov     ebp, esp                                ; 09EC _ 89. E5
        sub     esp, 72                                 ; 09EE _ 83. EC, 48
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 09F1 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 09F7 _ 89. 45, F4
        xor     eax, eax                                ; 09FA _ 31. C0
        mov     edx, dword [sheet_back]                 ; 09FC _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0A02 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0A07 _ 83. EC, 08
        push    ?_192                                   ; 0A0A _ 68, 00000027(d)
        push    7                                       ; 0A0F _ 6A, 07
        push    144                                     ; 0A11 _ 68, 00000090
        push    0                                       ; 0A16 _ 6A, 00
        push    edx                                     ; 0A18 _ 52
        push    eax                                     ; 0A19 _ 50
        call    showString                              ; 0A1A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A1F _ 83. C4, 20
        mov     dword [ebp-38H], 0                      ; 0A22 _ C7. 45, C8, 00000000
        mov     dword [ebp-34H], 0                      ; 0A29 _ C7. 45, CC, 00000000
        push    0                                       ; 0A30 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0A32 _ 8D. 45, EC
        push    eax                                     ; 0A35 _ 50
        push    8                                       ; 0A36 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0A38 _ 8D. 45, D0
        push    eax                                     ; 0A3B _ 50
        call    fifo8_init                              ; 0A3C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A41 _ 83. C4, 10
        call    timer_alloc                             ; 0A44 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 0A49 _ 89. 45, C8
        sub     esp, 4                                  ; 0A4C _ 83. EC, 04
        push    123                                     ; 0A4F _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0A51 _ 8D. 45, D0
        push    eax                                     ; 0A54 _ 50
        push    dword [ebp-38H]                         ; 0A55 _ FF. 75, C8
        call    timer_init                              ; 0A58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A5D _ 83. C4, 10
        sub     esp, 8                                  ; 0A60 _ 83. EC, 08
        push    100                                     ; 0A63 _ 6A, 64
        push    dword [ebp-38H]                         ; 0A65 _ FF. 75, C8
        call    timer_setTime                           ; 0A68 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A6D _ 83. C4, 10
        mov     dword [ebp-3CH], 0                      ; 0A70 _ C7. 45, C4, 00000000
?_015:  call    io_cli                                  ; 0A77 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0A7C _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0A7F _ 8D. 45, D0
        push    eax                                     ; 0A82 _ 50
        call    fifo8_status                            ; 0A83 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A88 _ 83. C4, 10
        test    eax, eax                                ; 0A8B _ 85. C0
        jnz     ?_016                                   ; 0A8D _ 75, 07
        call    io_sti                                  ; 0A8F _ E8, FFFFFFFC(rel)
        jmp     ?_015                                   ; 0A94 _ EB, E1

?_016:  sub     esp, 12                                 ; 0A96 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0A99 _ 8D. 45, D0
        push    eax                                     ; 0A9C _ 50
        call    fifo8_get                               ; 0A9D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AA2 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0AA5 _ 89. 45, CC
        call    io_sti                                  ; 0AA8 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-34H], 123                    ; 0AAD _ 83. 7D, CC, 7B
        jnz     ?_015                                   ; 0AB1 _ 75, C4
        mov     edx, dword [sheet_back]                 ; 0AB3 _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0AB9 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0ABE _ 83. EC, 08
        push    ?_193                                   ; 0AC1 _ 68, 00000034(d)
        push    7                                       ; 0AC6 _ 6A, 07
        push    176                                     ; 0AC8 _ 68, 000000B0
        push    dword [ebp-3CH]                         ; 0ACD _ FF. 75, C4
        push    edx                                     ; 0AD0 _ 52
        push    eax                                     ; 0AD1 _ 50
        call    showString                              ; 0AD2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AD7 _ 83. C4, 20
        sub     esp, 8                                  ; 0ADA _ 83. EC, 08
        push    100                                     ; 0ADD _ 6A, 64
        push    dword [ebp-38H]                         ; 0ADF _ FF. 75, C8
        call    timer_setTime                           ; 0AE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AE7 _ 83. C4, 10
        add     dword [ebp-3CH], 8                      ; 0AEA _ 83. 45, C4, 08
        jmp     ?_015                                   ; 0AEE _ EB, 87
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0AF0 _ 55
        mov     ebp, esp                                ; 0AF1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0AF3 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0AF6 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0AFC _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0AFF _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0B05 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0B08 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0B0E _ 90
        pop     ebp                                     ; 0B0F _ 5D
        ret                                             ; 0B10 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0B11 _ 55
        mov     ebp, esp                                ; 0B12 _ 89. E5
        push    ebx                                     ; 0B14 _ 53
        sub     esp, 36                                 ; 0B15 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0B18 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0B1B _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0B1E _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0B21 _ 89. 45, F4
        jmp     ?_018                                   ; 0B24 _ EB, 3E

?_017:  mov     eax, dword [ebp+1CH]                    ; 0B26 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B29 _ 0F B6. 00
        movzx   eax, al                                 ; 0B2C _ 0F B6. C0
        shl     eax, 4                                  ; 0B2F _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0B32 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0B38 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0B3C _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0B3F _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0B42 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0B45 _ 8B. 00
        sub     esp, 8                                  ; 0B47 _ 83. EC, 08
        push    ebx                                     ; 0B4A _ 53
        push    ecx                                     ; 0B4B _ 51
        push    dword [ebp+14H]                         ; 0B4C _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B4F _ FF. 75, 10
        push    edx                                     ; 0B52 _ 52
        push    eax                                     ; 0B53 _ 50
        call    showFont8                               ; 0B54 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B59 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0B5C _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0B60 _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 0B64 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B67 _ 0F B6. 00
        test    al, al                                  ; 0B6A _ 84. C0
        jnz     ?_017                                   ; 0B6C _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0B6E _ 8B. 45, 14
        add     eax, 16                                 ; 0B71 _ 83. C0, 10
        sub     esp, 8                                  ; 0B74 _ 83. EC, 08
        push    eax                                     ; 0B77 _ 50
        push    dword [ebp+10H]                         ; 0B78 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0B7B _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0B7E _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0B81 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B84 _ FF. 75, 08
        call    sheet_refresh                           ; 0B87 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B8C _ 83. C4, 20
        nop                                             ; 0B8F _ 90
        mov     ebx, dword [ebp-4H]                     ; 0B90 _ 8B. 5D, FC
        leave                                           ; 0B93 _ C9
        ret                                             ; 0B94 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0B95 _ 55
        mov     ebp, esp                                ; 0B96 _ 89. E5
        push    ebx                                     ; 0B98 _ 53
        sub     esp, 4                                  ; 0B99 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0B9C _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0B9F _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0BA2 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0BA5 _ 83. E8, 01
        sub     esp, 4                                  ; 0BA8 _ 83. EC, 04
        push    edx                                     ; 0BAB _ 52
        push    eax                                     ; 0BAC _ 50
        push    0                                       ; 0BAD _ 6A, 00
        push    0                                       ; 0BAF _ 6A, 00
        push    14                                      ; 0BB1 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0BB3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BB6 _ FF. 75, 08
        call    boxfill8                                ; 0BB9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BBE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0BC1 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0BC4 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0BC7 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0BCA _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0BCD _ 8B. 45, 10
        sub     eax, 24                                 ; 0BD0 _ 83. E8, 18
        sub     esp, 4                                  ; 0BD3 _ 83. EC, 04
        push    ecx                                     ; 0BD6 _ 51
        push    edx                                     ; 0BD7 _ 52
        push    eax                                     ; 0BD8 _ 50
        push    0                                       ; 0BD9 _ 6A, 00
        push    8                                       ; 0BDB _ 6A, 08
        push    dword [ebp+0CH]                         ; 0BDD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BE0 _ FF. 75, 08
        call    boxfill8                                ; 0BE3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BE8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0BEB _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0BEE _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0BF1 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0BF4 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0BF7 _ 8B. 45, 10
        sub     eax, 23                                 ; 0BFA _ 83. E8, 17
        sub     esp, 4                                  ; 0BFD _ 83. EC, 04
        push    ecx                                     ; 0C00 _ 51
        push    edx                                     ; 0C01 _ 52
        push    eax                                     ; 0C02 _ 50
        push    0                                       ; 0C03 _ 6A, 00
        push    7                                       ; 0C05 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C07 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C0A _ FF. 75, 08
        call    boxfill8                                ; 0C0D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C12 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C15 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0C18 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0C1B _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C1E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C21 _ 8B. 45, 10
        sub     eax, 22                                 ; 0C24 _ 83. E8, 16
        sub     esp, 4                                  ; 0C27 _ 83. EC, 04
        push    ecx                                     ; 0C2A _ 51
        push    edx                                     ; 0C2B _ 52
        push    eax                                     ; 0C2C _ 50
        push    0                                       ; 0C2D _ 6A, 00
        push    8                                       ; 0C2F _ 6A, 08
        push    dword [ebp+0CH]                         ; 0C31 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C34 _ FF. 75, 08
        call    boxfill8                                ; 0C37 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C3C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C3F _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0C42 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0C45 _ 8B. 45, 10
        sub     eax, 20                                 ; 0C48 _ 83. E8, 14
        sub     esp, 4                                  ; 0C4B _ 83. EC, 04
        push    edx                                     ; 0C4E _ 52
        push    51                                      ; 0C4F _ 6A, 33
        push    eax                                     ; 0C51 _ 50
        push    10                                      ; 0C52 _ 6A, 0A
        push    7                                       ; 0C54 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C56 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C59 _ FF. 75, 08
        call    boxfill8                                ; 0C5C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C61 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C64 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0C67 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0C6A _ 8B. 45, 10
        sub     eax, 20                                 ; 0C6D _ 83. E8, 14
        sub     esp, 4                                  ; 0C70 _ 83. EC, 04
        push    edx                                     ; 0C73 _ 52
        push    9                                       ; 0C74 _ 6A, 09
        push    eax                                     ; 0C76 _ 50
        push    9                                       ; 0C77 _ 6A, 09
        push    7                                       ; 0C79 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C7B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C7E _ FF. 75, 08
        call    boxfill8                                ; 0C81 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C86 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C89 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0C8C _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0C8F _ 8B. 45, 10
        sub     eax, 4                                  ; 0C92 _ 83. E8, 04
        sub     esp, 4                                  ; 0C95 _ 83. EC, 04
        push    edx                                     ; 0C98 _ 52
        push    50                                      ; 0C99 _ 6A, 32
        push    eax                                     ; 0C9B _ 50
        push    10                                      ; 0C9C _ 6A, 0A
        push    15                                      ; 0C9E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0CA0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CA3 _ FF. 75, 08
        call    boxfill8                                ; 0CA6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CAB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CAE _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0CB1 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0CB4 _ 8B. 45, 10
        sub     eax, 19                                 ; 0CB7 _ 83. E8, 13
        sub     esp, 4                                  ; 0CBA _ 83. EC, 04
        push    edx                                     ; 0CBD _ 52
        push    50                                      ; 0CBE _ 6A, 32
        push    eax                                     ; 0CC0 _ 50
        push    50                                      ; 0CC1 _ 6A, 32
        push    15                                      ; 0CC3 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0CC5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CC8 _ FF. 75, 08
        call    boxfill8                                ; 0CCB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CD0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CD3 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CD6 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0CD9 _ 8B. 45, 10
        sub     eax, 3                                  ; 0CDC _ 83. E8, 03
        sub     esp, 4                                  ; 0CDF _ 83. EC, 04
        push    edx                                     ; 0CE2 _ 52
        push    50                                      ; 0CE3 _ 6A, 32
        push    eax                                     ; 0CE5 _ 50
        push    10                                      ; 0CE6 _ 6A, 0A
        push    0                                       ; 0CE8 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0CEA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CED _ FF. 75, 08
        call    boxfill8                                ; 0CF0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CF5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CF8 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CFB _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0CFE _ 8B. 45, 10
        sub     eax, 20                                 ; 0D01 _ 83. E8, 14
        sub     esp, 4                                  ; 0D04 _ 83. EC, 04
        push    edx                                     ; 0D07 _ 52
        push    51                                      ; 0D08 _ 6A, 33
        push    eax                                     ; 0D0A _ 50
        push    51                                      ; 0D0B _ 6A, 33
        push    0                                       ; 0D0D _ 6A, 00
        push    dword [ebp+0CH]                         ; 0D0F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D12 _ FF. 75, 08
        call    boxfill8                                ; 0D15 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D1A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D1D _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0D20 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0D23 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D26 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D29 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D2C _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D2F _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D32 _ 83. E8, 2F
        sub     esp, 4                                  ; 0D35 _ 83. EC, 04
        push    ebx                                     ; 0D38 _ 53
        push    ecx                                     ; 0D39 _ 51
        push    edx                                     ; 0D3A _ 52
        push    eax                                     ; 0D3B _ 50
        push    15                                      ; 0D3C _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D3E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D41 _ FF. 75, 08
        call    boxfill8                                ; 0D44 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D49 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D4C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D4F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D52 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0D55 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0D58 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D5B _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D5E _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D61 _ 83. E8, 2F
        sub     esp, 4                                  ; 0D64 _ 83. EC, 04
        push    ebx                                     ; 0D67 _ 53
        push    ecx                                     ; 0D68 _ 51
        push    edx                                     ; 0D69 _ 52
        push    eax                                     ; 0D6A _ 50
        push    15                                      ; 0D6B _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D6D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D70 _ FF. 75, 08
        call    boxfill8                                ; 0D73 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D78 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D7B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D7E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D81 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D84 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D87 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D8A _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0D8D _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D90 _ 83. E8, 2F
        sub     esp, 4                                  ; 0D93 _ 83. EC, 04
        push    ebx                                     ; 0D96 _ 53
        push    ecx                                     ; 0D97 _ 51
        push    edx                                     ; 0D98 _ 52
        push    eax                                     ; 0D99 _ 50
        push    7                                       ; 0D9A _ 6A, 07
        push    dword [ebp+0CH]                         ; 0D9C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D9F _ FF. 75, 08
        call    boxfill8                                ; 0DA2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DA7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DAA _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DAD _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DB0 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0DB3 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0DB6 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0DB9 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0DBC _ 8B. 45, 0C
        sub     eax, 3                                  ; 0DBF _ 83. E8, 03
        sub     esp, 4                                  ; 0DC2 _ 83. EC, 04
        push    ebx                                     ; 0DC5 _ 53
        push    ecx                                     ; 0DC6 _ 51
        push    edx                                     ; 0DC7 _ 52
        push    eax                                     ; 0DC8 _ 50
        push    7                                       ; 0DC9 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0DCB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DCE _ FF. 75, 08
        call    boxfill8                                ; 0DD1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DD6 _ 83. C4, 20
        nop                                             ; 0DD9 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0DDA _ 8B. 5D, FC
        leave                                           ; 0DDD _ C9
        ret                                             ; 0DDE _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0DDF _ 55
        mov     ebp, esp                                ; 0DE0 _ 89. E5
        sub     esp, 24                                 ; 0DE2 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0DE5 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0DEA _ 89. 45, EC
        movzx   eax, word [?_202]                       ; 0DED _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0DF4 _ 98
        mov     dword [ebp-10H], eax                    ; 0DF5 _ 89. 45, F0
        movzx   eax, word [?_203]                       ; 0DF8 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0DFF _ 98
        mov     dword [ebp-0CH], eax                    ; 0E00 _ 89. 45, F4
        sub     esp, 4                                  ; 0E03 _ 83. EC, 04
        push    table_rgb.2288                          ; 0E06 _ 68, 00000080(d)
        push    15                                      ; 0E0B _ 6A, 0F
        push    0                                       ; 0E0D _ 6A, 00
        call    set_palette                             ; 0E0F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E14 _ 83. C4, 10
        nop                                             ; 0E17 _ 90
        leave                                           ; 0E18 _ C9
        ret                                             ; 0E19 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0E1A _ 55
        mov     ebp, esp                                ; 0E1B _ 89. E5
        sub     esp, 24                                 ; 0E1D _ 83. EC, 18
        call    io_load_eflags                          ; 0E20 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0E25 _ 89. 45, F4
        call    io_cli                                  ; 0E28 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0E2D _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0E30 _ FF. 75, 08
        push    968                                     ; 0E33 _ 68, 000003C8
        call    io_out8                                 ; 0E38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E3D _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0E40 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0E43 _ 89. 45, F0
        jmp     ?_020                                   ; 0E46 _ EB, 65

?_019:  mov     eax, dword [ebp+10H]                    ; 0E48 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0E4B _ 0F B6. 00
        shr     al, 2                                   ; 0E4E _ C0. E8, 02
        movzx   eax, al                                 ; 0E51 _ 0F B6. C0
        sub     esp, 8                                  ; 0E54 _ 83. EC, 08
        push    eax                                     ; 0E57 _ 50
        push    969                                     ; 0E58 _ 68, 000003C9
        call    io_out8                                 ; 0E5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E62 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0E65 _ 8B. 45, 10
        add     eax, 1                                  ; 0E68 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0E6B _ 0F B6. 00
        shr     al, 2                                   ; 0E6E _ C0. E8, 02
        movzx   eax, al                                 ; 0E71 _ 0F B6. C0
        sub     esp, 8                                  ; 0E74 _ 83. EC, 08
        push    eax                                     ; 0E77 _ 50
        push    969                                     ; 0E78 _ 68, 000003C9
        call    io_out8                                 ; 0E7D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E82 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0E85 _ 8B. 45, 10
        add     eax, 2                                  ; 0E88 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0E8B _ 0F B6. 00
        shr     al, 2                                   ; 0E8E _ C0. E8, 02
        movzx   eax, al                                 ; 0E91 _ 0F B6. C0
        sub     esp, 8                                  ; 0E94 _ 83. EC, 08
        push    eax                                     ; 0E97 _ 50
        push    969                                     ; 0E98 _ 68, 000003C9
        call    io_out8                                 ; 0E9D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EA2 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0EA5 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0EA9 _ 83. 45, F0, 01
?_020:  mov     eax, dword [ebp-10H]                    ; 0EAD _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0EB0 _ 3B. 45, 0C
        jle     ?_019                                   ; 0EB3 _ 7E, 93
        sub     esp, 12                                 ; 0EB5 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0EB8 _ FF. 75, F4
        call    io_store_eflags                         ; 0EBB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EC0 _ 83. C4, 10
        nop                                             ; 0EC3 _ 90
        leave                                           ; 0EC4 _ C9
        ret                                             ; 0EC5 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0EC6 _ 55
        mov     ebp, esp                                ; 0EC7 _ 89. E5
        sub     esp, 20                                 ; 0EC9 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0ECC _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0ECF _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0ED2 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0ED5 _ 89. 45, FC
        jmp     ?_024                                   ; 0ED8 _ EB, 33

?_021:  mov     eax, dword [ebp+14H]                    ; 0EDA _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0EDD _ 89. 45, F8
        jmp     ?_023                                   ; 0EE0 _ EB, 1F

?_022:  mov     eax, dword [ebp-4H]                     ; 0EE2 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0EE5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0EE9 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0EEB _ 8B. 45, F8
        add     eax, edx                                ; 0EEE _ 01. D0
        mov     edx, eax                                ; 0EF0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EF2 _ 8B. 45, 08
        add     edx, eax                                ; 0EF5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EF7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EFB _ 88. 02
        add     dword [ebp-8H], 1                       ; 0EFD _ 83. 45, F8, 01
?_023:  mov     eax, dword [ebp-8H]                     ; 0F01 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0F04 _ 3B. 45, 1C
        jle     ?_022                                   ; 0F07 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0F09 _ 83. 45, FC, 01
?_024:  mov     eax, dword [ebp-4H]                     ; 0F0D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0F10 _ 3B. 45, 20
        jle     ?_021                                   ; 0F13 _ 7E, C5
        nop                                             ; 0F15 _ 90
        leave                                           ; 0F16 _ C9
        ret                                             ; 0F17 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0F18 _ 55
        mov     ebp, esp                                ; 0F19 _ 89. E5
        push    edi                                     ; 0F1B _ 57
        push    esi                                     ; 0F1C _ 56
        push    ebx                                     ; 0F1D _ 53
        sub     esp, 16                                 ; 0F1E _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0F21 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0F24 _ 8B. 45, 14
        add     eax, edx                                ; 0F27 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0F29 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0F2C _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0F2F _ 8B. 45, 18
        add     eax, edx                                ; 0F32 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0F34 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0F37 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0F3A _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0F3D _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0F40 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0F43 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F46 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F49 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0F4C _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0F4F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F52 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F55 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F58 _ 8B. 00
        push    edi                                     ; 0F5A _ 57
        push    esi                                     ; 0F5B _ 56
        push    ebx                                     ; 0F5C _ 53
        push    ecx                                     ; 0F5D _ 51
        push    15                                      ; 0F5E _ 6A, 0F
        push    edx                                     ; 0F60 _ 52
        push    eax                                     ; 0F61 _ 50
        call    boxfill8                                ; 0F62 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F67 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0F6A _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0F6D _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0F70 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0F73 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0F76 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F79 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F7C _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0F7F _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0F82 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F85 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F88 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F8B _ 8B. 00
        push    edi                                     ; 0F8D _ 57
        push    esi                                     ; 0F8E _ 56
        push    ebx                                     ; 0F8F _ 53
        push    ecx                                     ; 0F90 _ 51
        push    15                                      ; 0F91 _ 6A, 0F
        push    edx                                     ; 0F93 _ 52
        push    eax                                     ; 0F94 _ 50
        call    boxfill8                                ; 0F95 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F9A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0F9D _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0FA0 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0FA3 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0FA6 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0FA9 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 0FAC _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 0FAF _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FB2 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0FB5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FB8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FBB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FBE _ 8B. 00
        push    edi                                     ; 0FC0 _ 57
        push    esi                                     ; 0FC1 _ 56
        push    ebx                                     ; 0FC2 _ 53
        push    ecx                                     ; 0FC3 _ 51
        push    7                                       ; 0FC4 _ 6A, 07
        push    edx                                     ; 0FC6 _ 52
        push    eax                                     ; 0FC7 _ 50
        call    boxfill8                                ; 0FC8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FCD _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FD0 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0FD3 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0FD6 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 0FD9 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 0FDC _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FDF _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 0FE2 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 0FE5 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 0FE8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FEB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FEE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FF1 _ 8B. 00
        push    edi                                     ; 0FF3 _ 57
        push    esi                                     ; 0FF4 _ 56
        push    ebx                                     ; 0FF5 _ 53
        push    ecx                                     ; 0FF6 _ 51
        push    7                                       ; 0FF7 _ 6A, 07
        push    edx                                     ; 0FF9 _ 52
        push    eax                                     ; 0FFA _ 50
        call    boxfill8                                ; 0FFB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1000 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1003 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1006 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1009 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 100C _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 100F _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1012 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1015 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1018 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 101B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 101E _ 8B. 00
        push    esi                                     ; 1020 _ 56
        push    dword [ebp-14H]                         ; 1021 _ FF. 75, EC
        push    ebx                                     ; 1024 _ 53
        push    ecx                                     ; 1025 _ 51
        push    0                                       ; 1026 _ 6A, 00
        push    edx                                     ; 1028 _ 52
        push    eax                                     ; 1029 _ 50
        call    boxfill8                                ; 102A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 102F _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1032 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1035 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1038 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 103B _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 103E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1041 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1044 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1047 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 104A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 104D _ 8B. 00
        push    dword [ebp-10H]                         ; 104F _ FF. 75, F0
        push    esi                                     ; 1052 _ 56
        push    ebx                                     ; 1053 _ 53
        push    ecx                                     ; 1054 _ 51
        push    0                                       ; 1055 _ 6A, 00
        push    edx                                     ; 1057 _ 52
        push    eax                                     ; 1058 _ 50
        call    boxfill8                                ; 1059 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 105E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1061 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1064 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1067 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 106A _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 106D _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1070 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1073 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1076 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1079 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 107C _ 8B. 00
        push    esi                                     ; 107E _ 56
        push    dword [ebp-14H]                         ; 107F _ FF. 75, EC
        push    ebx                                     ; 1082 _ 53
        push    ecx                                     ; 1083 _ 51
        push    8                                       ; 1084 _ 6A, 08
        push    edx                                     ; 1086 _ 52
        push    eax                                     ; 1087 _ 50
        call    boxfill8                                ; 1088 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 108D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1090 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1093 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1096 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1099 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 109C _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 109F _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 10A2 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 10A5 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 10A8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 10AB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10AE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10B1 _ 8B. 00
        push    edi                                     ; 10B3 _ 57
        push    esi                                     ; 10B4 _ 56
        push    ebx                                     ; 10B5 _ 53
        push    ecx                                     ; 10B6 _ 51
        push    8                                       ; 10B7 _ 6A, 08
        push    edx                                     ; 10B9 _ 52
        push    eax                                     ; 10BA _ 50
        call    boxfill8                                ; 10BB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10C0 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 10C3 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 10C6 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 10C9 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 10CC _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 10CF _ 8B. 45, 1C
        movzx   ecx, al                                 ; 10D2 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 10D5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 10D8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10DB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10DE _ 8B. 00
        push    dword [ebp-10H]                         ; 10E0 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 10E3 _ FF. 75, EC
        push    esi                                     ; 10E6 _ 56
        push    ebx                                     ; 10E7 _ 53
        push    ecx                                     ; 10E8 _ 51
        push    edx                                     ; 10E9 _ 52
        push    eax                                     ; 10EA _ 50
        call    boxfill8                                ; 10EB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10F0 _ 83. C4, 1C
        nop                                             ; 10F3 _ 90
        lea     esp, [ebp-0CH]                          ; 10F4 _ 8D. 65, F4
        pop     ebx                                     ; 10F7 _ 5B
        pop     esi                                     ; 10F8 _ 5E
        pop     edi                                     ; 10F9 _ 5F
        pop     ebp                                     ; 10FA _ 5D
        ret                                             ; 10FB _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 10FC _ 55
        mov     ebp, esp                                ; 10FD _ 89. E5
        sub     esp, 20                                 ; 10FF _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1102 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1105 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1108 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 110F _ E9, 0000016C

?_025:  mov     edx, dword [ebp-4H]                     ; 1114 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1117 _ 8B. 45, 1C
        add     eax, edx                                ; 111A _ 01. D0
        movzx   eax, byte [eax]                         ; 111C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 111F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1122 _ 80. 7D, FB, 00
        jns     ?_026                                   ; 1126 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1128 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 112B _ 8B. 45, FC
        add     eax, edx                                ; 112E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1130 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1134 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1136 _ 8B. 45, 10
        add     eax, edx                                ; 1139 _ 01. D0
        mov     edx, eax                                ; 113B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 113D _ 8B. 45, 08
        add     edx, eax                                ; 1140 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1142 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1146 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1148 _ 0F BE. 45, FB
        and     eax, 40H                                ; 114C _ 83. E0, 40
        test    eax, eax                                ; 114F _ 85. C0
        jz      ?_027                                   ; 1151 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1153 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1156 _ 8B. 45, FC
        add     eax, edx                                ; 1159 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 115B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 115F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1161 _ 8B. 45, 10
        add     eax, edx                                ; 1164 _ 01. D0
        lea     edx, [eax+1H]                           ; 1166 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1169 _ 8B. 45, 08
        add     edx, eax                                ; 116C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 116E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1172 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 1174 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1178 _ 83. E0, 20
        test    eax, eax                                ; 117B _ 85. C0
        jz      ?_028                                   ; 117D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 117F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1182 _ 8B. 45, FC
        add     eax, edx                                ; 1185 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1187 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 118B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 118D _ 8B. 45, 10
        add     eax, edx                                ; 1190 _ 01. D0
        lea     edx, [eax+2H]                           ; 1192 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1195 _ 8B. 45, 08
        add     edx, eax                                ; 1198 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 119A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 119E _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 11A0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 11A4 _ 83. E0, 10
        test    eax, eax                                ; 11A7 _ 85. C0
        jz      ?_029                                   ; 11A9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11AB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11AE _ 8B. 45, FC
        add     eax, edx                                ; 11B1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11B3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11B7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11B9 _ 8B. 45, 10
        add     eax, edx                                ; 11BC _ 01. D0
        lea     edx, [eax+3H]                           ; 11BE _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 11C1 _ 8B. 45, 08
        add     edx, eax                                ; 11C4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11C6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11CA _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 11CC _ 0F BE. 45, FB
        and     eax, 08H                                ; 11D0 _ 83. E0, 08
        test    eax, eax                                ; 11D3 _ 85. C0
        jz      ?_030                                   ; 11D5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11D7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11DA _ 8B. 45, FC
        add     eax, edx                                ; 11DD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11DF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11E3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11E5 _ 8B. 45, 10
        add     eax, edx                                ; 11E8 _ 01. D0
        lea     edx, [eax+4H]                           ; 11EA _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11ED _ 8B. 45, 08
        add     edx, eax                                ; 11F0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11F2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11F6 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 11F8 _ 0F BE. 45, FB
        and     eax, 04H                                ; 11FC _ 83. E0, 04
        test    eax, eax                                ; 11FF _ 85. C0
        jz      ?_031                                   ; 1201 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1203 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1206 _ 8B. 45, FC
        add     eax, edx                                ; 1209 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 120B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 120F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1211 _ 8B. 45, 10
        add     eax, edx                                ; 1214 _ 01. D0
        lea     edx, [eax+5H]                           ; 1216 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1219 _ 8B. 45, 08
        add     edx, eax                                ; 121C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 121E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1222 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1224 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1228 _ 83. E0, 02
        test    eax, eax                                ; 122B _ 85. C0
        jz      ?_032                                   ; 122D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 122F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1232 _ 8B. 45, FC
        add     eax, edx                                ; 1235 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1237 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 123B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 123D _ 8B. 45, 10
        add     eax, edx                                ; 1240 _ 01. D0
        lea     edx, [eax+6H]                           ; 1242 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1245 _ 8B. 45, 08
        add     edx, eax                                ; 1248 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 124A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 124E _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1250 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1254 _ 83. E0, 01
        test    eax, eax                                ; 1257 _ 85. C0
        jz      ?_033                                   ; 1259 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 125B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 125E _ 8B. 45, FC
        add     eax, edx                                ; 1261 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1263 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1267 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1269 _ 8B. 45, 10
        add     eax, edx                                ; 126C _ 01. D0
        lea     edx, [eax+7H]                           ; 126E _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1271 _ 8B. 45, 08
        add     edx, eax                                ; 1274 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1276 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 127A _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 127C _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 1280 _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 1284 _ 0F 8E, FFFFFE8A
        nop                                             ; 128A _ 90
        leave                                           ; 128B _ C9
        ret                                             ; 128C _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 128D _ 55
        mov     ebp, esp                                ; 128E _ 89. E5
        sub     esp, 20                                 ; 1290 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1293 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1296 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1299 _ C7. 45, FC, 00000000
        jmp     ?_041                                   ; 12A0 _ E9, 000000B1

?_035:  mov     dword [ebp-8H], 0                       ; 12A5 _ C7. 45, F8, 00000000
        jmp     ?_040                                   ; 12AC _ E9, 00000097

?_036:  mov     eax, dword [ebp-4H]                     ; 12B1 _ 8B. 45, FC
        shl     eax, 4                                  ; 12B4 _ C1. E0, 04
        mov     edx, eax                                ; 12B7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12B9 _ 8B. 45, F8
        add     eax, edx                                ; 12BC _ 01. D0
        add     eax, cursor.2343                        ; 12BE _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12C3 _ 0F B6. 00
        cmp     al, 42                                  ; 12C6 _ 3C, 2A
        jnz     ?_037                                   ; 12C8 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 12CA _ 8B. 45, FC
        shl     eax, 4                                  ; 12CD _ C1. E0, 04
        mov     edx, eax                                ; 12D0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12D2 _ 8B. 45, F8
        add     eax, edx                                ; 12D5 _ 01. D0
        mov     edx, eax                                ; 12D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12D9 _ 8B. 45, 08
        add     eax, edx                                ; 12DC _ 01. D0
        mov     byte [eax], 0                           ; 12DE _ C6. 00, 00
?_037:  mov     eax, dword [ebp-4H]                     ; 12E1 _ 8B. 45, FC
        shl     eax, 4                                  ; 12E4 _ C1. E0, 04
        mov     edx, eax                                ; 12E7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12E9 _ 8B. 45, F8
        add     eax, edx                                ; 12EC _ 01. D0
        add     eax, cursor.2343                        ; 12EE _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12F3 _ 0F B6. 00
        cmp     al, 79                                  ; 12F6 _ 3C, 4F
        jnz     ?_038                                   ; 12F8 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 12FA _ 8B. 45, FC
        shl     eax, 4                                  ; 12FD _ C1. E0, 04
        mov     edx, eax                                ; 1300 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1302 _ 8B. 45, F8
        add     eax, edx                                ; 1305 _ 01. D0
        mov     edx, eax                                ; 1307 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1309 _ 8B. 45, 08
        add     eax, edx                                ; 130C _ 01. D0
        mov     byte [eax], 7                           ; 130E _ C6. 00, 07
?_038:  mov     eax, dword [ebp-4H]                     ; 1311 _ 8B. 45, FC
        shl     eax, 4                                  ; 1314 _ C1. E0, 04
        mov     edx, eax                                ; 1317 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1319 _ 8B. 45, F8
        add     eax, edx                                ; 131C _ 01. D0
        add     eax, cursor.2343                        ; 131E _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1323 _ 0F B6. 00
        cmp     al, 46                                  ; 1326 _ 3C, 2E
        jnz     ?_039                                   ; 1328 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 132A _ 8B. 45, FC
        shl     eax, 4                                  ; 132D _ C1. E0, 04
        mov     edx, eax                                ; 1330 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1332 _ 8B. 45, F8
        add     eax, edx                                ; 1335 _ 01. D0
        mov     edx, eax                                ; 1337 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1339 _ 8B. 45, 08
        add     edx, eax                                ; 133C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 133E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1342 _ 88. 02
?_039:  add     dword [ebp-8H], 1                       ; 1344 _ 83. 45, F8, 01
?_040:  cmp     dword [ebp-8H], 15                      ; 1348 _ 83. 7D, F8, 0F
        jle     ?_036                                   ; 134C _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1352 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 15                      ; 1356 _ 83. 7D, FC, 0F
        jle     ?_035                                   ; 135A _ 0F 8E, FFFFFF45
        nop                                             ; 1360 _ 90
        leave                                           ; 1361 _ C9
        ret                                             ; 1362 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1363 _ 55
        mov     ebp, esp                                ; 1364 _ 89. E5
        push    ebx                                     ; 1366 _ 53
        sub     esp, 16                                 ; 1367 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 136A _ C7. 45, F8, 00000000
        jmp     ?_045                                   ; 1371 _ EB, 50

?_042:  mov     dword [ebp-0CH], 0                      ; 1373 _ C7. 45, F4, 00000000
        jmp     ?_044                                   ; 137A _ EB, 3B

?_043:  mov     eax, dword [ebp-8H]                     ; 137C _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 137F _ 0F AF. 45, 24
        mov     edx, eax                                ; 1383 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1385 _ 8B. 45, F4
        add     eax, edx                                ; 1388 _ 01. D0
        mov     edx, eax                                ; 138A _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 138C _ 8B. 45, 20
        add     eax, edx                                ; 138F _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1391 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1394 _ 8B. 55, F8
        add     edx, ecx                                ; 1397 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1399 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 139D _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 13A0 _ 8B. 4D, F4
        add     ecx, ebx                                ; 13A3 _ 01. D9
        add     edx, ecx                                ; 13A5 _ 01. CA
        mov     ecx, edx                                ; 13A7 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 13A9 _ 8B. 55, 08
        add     edx, ecx                                ; 13AC _ 01. CA
        movzx   eax, byte [eax]                         ; 13AE _ 0F B6. 00
        mov     byte [edx], al                          ; 13B1 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 13B3 _ 83. 45, F4, 01
?_044:  mov     eax, dword [ebp-0CH]                    ; 13B7 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 13BA _ 3B. 45, 10
        jl      ?_043                                   ; 13BD _ 7C, BD
        add     dword [ebp-8H], 1                       ; 13BF _ 83. 45, F8, 01
?_045:  mov     eax, dword [ebp-8H]                     ; 13C3 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 13C6 _ 3B. 45, 14
        jl      ?_042                                   ; 13C9 _ 7C, A8
        nop                                             ; 13CB _ 90
        add     esp, 16                                 ; 13CC _ 83. C4, 10
        pop     ebx                                     ; 13CF _ 5B
        pop     ebp                                     ; 13D0 _ 5D
        ret                                             ; 13D1 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 13D2 _ 55
        mov     ebp, esp                                ; 13D3 _ 89. E5
        sub     esp, 24                                 ; 13D5 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 13D8 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 13DD _ 89. 45, EC
        movzx   eax, word [?_202]                       ; 13E0 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 13E7 _ 98
        mov     dword [ebp-10H], eax                    ; 13E8 _ 89. 45, F0
        movzx   eax, word [?_203]                       ; 13EB _ 0F B7. 05, 00000006(d)
        cwde                                            ; 13F2 _ 98
        mov     dword [ebp-0CH], eax                    ; 13F3 _ 89. 45, F4
        sub     esp, 8                                  ; 13F6 _ 83. EC, 08
        push    32                                      ; 13F9 _ 6A, 20
        push    32                                      ; 13FB _ 6A, 20
        call    io_out8                                 ; 13FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1402 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1405 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1409 _ 83. EC, 0C
        push    96                                      ; 140C _ 6A, 60
        call    io_in8                                  ; 140E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1413 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1416 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1419 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 141D _ 83. EC, 08
        push    eax                                     ; 1420 _ 50
        push    keyInfo                                 ; 1421 _ 68, 00000008(d)
        call    fifo8_put                               ; 1426 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 142B _ 83. C4, 10
        nop                                             ; 142E _ 90
        leave                                           ; 142F _ C9
        ret                                             ; 1430 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1431 _ 55
        mov     ebp, esp                                ; 1432 _ 89. E5
        sub     esp, 40                                 ; 1434 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1437 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 143A _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 143D _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1441 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1444 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1447 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 144B _ 83. EC, 0C
        push    eax                                     ; 144E _ 50
        call    charToVal                               ; 144F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1454 _ 83. C4, 10
        mov     byte [?_201], al                        ; 1457 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 145C _ 0F B6. 45, E4
        shr     al, 4                                   ; 1460 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1463 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1466 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 146A _ 0F BE. C0
        sub     esp, 12                                 ; 146D _ 83. EC, 0C
        push    eax                                     ; 1470 _ 50
        call    charToVal                               ; 1471 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1476 _ 83. C4, 10
        mov     byte [?_200], al                        ; 1479 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 147E _ B8, 00000000(d)
        leave                                           ; 1483 _ C9
        ret                                             ; 1484 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1485 _ 55
        mov     ebp, esp                                ; 1486 _ 89. E5
        sub     esp, 4                                  ; 1488 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 148B _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 148E _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1491 _ 80. 7D, FC, 09
        jle     ?_046                                   ; 1495 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1497 _ 0F B6. 45, FC
        add     eax, 55                                 ; 149B _ 83. C0, 37
        jmp     ?_047                                   ; 149E _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 14A0 _ 0F B6. 45, FC
        add     eax, 48                                 ; 14A4 _ 83. C0, 30
?_047:  leave                                           ; 14A7 _ C9
        ret                                             ; 14A8 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 14A9 _ 55
        mov     ebp, esp                                ; 14AA _ 89. E5
        sub     esp, 16                                 ; 14AC _ 83. EC, 10
        mov     byte [str.2386], 48                     ; 14AF _ C6. 05, 00000248(d), 30
        mov     byte [?_206], 120                       ; 14B6 _ C6. 05, 00000249(d), 78
        mov     byte [?_207], 0                         ; 14BD _ C6. 05, 00000252(d), 00
        mov     dword [ebp-0CH], 2                      ; 14C4 _ C7. 45, F4, 00000002
        jmp     ?_049                                   ; 14CB _ EB, 0F

?_048:  mov     eax, dword [ebp-0CH]                    ; 14CD _ 8B. 45, F4
        add     eax, str.2386                           ; 14D0 _ 05, 00000248(d)
        mov     byte [eax], 48                          ; 14D5 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 14D8 _ 83. 45, F4, 01
?_049:  cmp     dword [ebp-0CH], 9                      ; 14DC _ 83. 7D, F4, 09
        jle     ?_048                                   ; 14E0 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 14E2 _ C7. 45, F8, 00000009
        jmp     ?_052                                   ; 14E9 _ EB, 48

?_050:  mov     eax, dword [ebp+8H]                     ; 14EB _ 8B. 45, 08
        and     eax, 0FH                                ; 14EE _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 14F1 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 14F4 _ 8B. 45, 08
        shr     eax, 4                                  ; 14F7 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 14FA _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 14FD _ 83. 7D, FC, 09
        jle     ?_051                                   ; 1501 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1503 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1506 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1509 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 150C _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 150F _ 89. 55, F8
        mov     edx, ecx                                ; 1512 _ 89. CA
        mov     byte [str.2386+eax], dl                 ; 1514 _ 88. 90, 00000248(d)
        jmp     ?_052                                   ; 151A _ EB, 17

?_051:  mov     eax, dword [ebp-4H]                     ; 151C _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 151F _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1522 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1525 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1528 _ 89. 55, F8
        mov     edx, ecx                                ; 152B _ 89. CA
        mov     byte [str.2386+eax], dl                 ; 152D _ 88. 90, 00000248(d)
?_052:  cmp     dword [ebp-8H], 1                       ; 1533 _ 83. 7D, F8, 01
        jle     ?_053                                   ; 1537 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1539 _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 153D _ 75, AC
?_053:  mov     eax, str.2386                           ; 153F _ B8, 00000248(d)
        leave                                           ; 1544 _ C9
        ret                                             ; 1545 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1546 _ 55
        mov     ebp, esp                                ; 1547 _ 89. E5
        sub     esp, 8                                  ; 1549 _ 83. EC, 08
?_054:  sub     esp, 12                                 ; 154C _ 83. EC, 0C
        push    100                                     ; 154F _ 6A, 64
        call    io_in8                                  ; 1551 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1556 _ 83. C4, 10
        movsx   eax, al                                 ; 1559 _ 0F BE. C0
        and     eax, 02H                                ; 155C _ 83. E0, 02
        test    eax, eax                                ; 155F _ 85. C0
        jz      ?_055                                   ; 1561 _ 74, 02
        jmp     ?_054                                   ; 1563 _ EB, E7

?_055:  nop                                             ; 1565 _ 90
        nop                                             ; 1566 _ 90
        leave                                           ; 1567 _ C9
        ret                                             ; 1568 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1569 _ 55
        mov     ebp, esp                                ; 156A _ 89. E5
        sub     esp, 8                                  ; 156C _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 156F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1574 _ 83. EC, 08
        push    96                                      ; 1577 _ 6A, 60
        push    100                                     ; 1579 _ 6A, 64
        call    io_out8                                 ; 157B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1580 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1583 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1588 _ 83. EC, 08
        push    71                                      ; 158B _ 6A, 47
        push    96                                      ; 158D _ 6A, 60
        call    io_out8                                 ; 158F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1594 _ 83. C4, 10
        nop                                             ; 1597 _ 90
        leave                                           ; 1598 _ C9
        ret                                             ; 1599 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 159A _ 55
        mov     ebp, esp                                ; 159B _ 89. E5
        sub     esp, 8                                  ; 159D _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 15A0 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15A5 _ 83. EC, 08
        push    212                                     ; 15A8 _ 68, 000000D4
        push    100                                     ; 15AD _ 6A, 64
        call    io_out8                                 ; 15AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15B4 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 15B7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15BC _ 83. EC, 08
        push    244                                     ; 15BF _ 68, 000000F4
        push    96                                      ; 15C4 _ 6A, 60
        call    io_out8                                 ; 15C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15CB _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 15CE _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 15D1 _ C6. 40, 03, 00
        nop                                             ; 15D5 _ 90
        leave                                           ; 15D6 _ C9
        ret                                             ; 15D7 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 15D8 _ 55
        mov     ebp, esp                                ; 15D9 _ 89. E5
        sub     esp, 24                                 ; 15DB _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 15DE _ C6. 45, F7, 00
        sub     esp, 8                                  ; 15E2 _ 83. EC, 08
        push    32                                      ; 15E5 _ 6A, 20
        push    160                                     ; 15E7 _ 68, 000000A0
        call    io_out8                                 ; 15EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15F1 _ 83. C4, 10
        sub     esp, 8                                  ; 15F4 _ 83. EC, 08
        push    32                                      ; 15F7 _ 6A, 20
        push    32                                      ; 15F9 _ 6A, 20
        call    io_out8                                 ; 15FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1600 _ 83. C4, 10
        sub     esp, 12                                 ; 1603 _ 83. EC, 0C
        push    96                                      ; 1606 _ 6A, 60
        call    io_in8                                  ; 1608 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 160D _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1610 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1613 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1617 _ 83. EC, 08
        push    eax                                     ; 161A _ 50
        push    mouseInfo                               ; 161B _ 68, 00000024(d)
        call    fifo8_put                               ; 1620 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1625 _ 83. C4, 10
        nop                                             ; 1628 _ 90
        leave                                           ; 1629 _ C9
        ret                                             ; 162A _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 162B _ 55
        mov     ebp, esp                                ; 162C _ 89. E5
        sub     esp, 40                                 ; 162E _ 83. EC, 28
        call    io_sti                                  ; 1631 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1636 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 163B _ 89. 45, E8
        movzx   eax, word [?_202]                       ; 163E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1645 _ 98
        mov     dword [ebp-14H], eax                    ; 1646 _ 89. 45, EC
        movzx   eax, word [?_203]                       ; 1649 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1650 _ 98
        mov     dword [ebp-10H], eax                    ; 1651 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1654 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1658 _ 83. EC, 0C
        push    keyInfo                                 ; 165B _ 68, 00000008(d)
        call    fifo8_get                               ; 1660 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1665 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1668 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 166B _ 0F B6. 45, E7
        sub     esp, 12                                 ; 166F _ 83. EC, 0C
        push    eax                                     ; 1672 _ 50
        call    charToHex                               ; 1673 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1678 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 167B _ 89. 45, F4
        mov     edx, dword [line.2419]                  ; 167E _ 8B. 15, 00000254(d)
        mov     eax, dword [pos.2418]                   ; 1684 _ A1, 00000258(d)
        sub     esp, 8                                  ; 1689 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 168C _ FF. 75, F4
        push    7                                       ; 168F _ 6A, 07
        push    edx                                     ; 1691 _ 52
        push    eax                                     ; 1692 _ 50
        push    dword [ebp+0CH]                         ; 1693 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1696 _ FF. 75, 08
        call    showString                              ; 1699 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 169E _ 83. C4, 20
        mov     eax, dword [pos.2418]                   ; 16A1 _ A1, 00000258(d)
        add     eax, 32                                 ; 16A6 _ 83. C0, 20
        mov     dword [pos.2418], eax                   ; 16A9 _ A3, 00000258(d)
        mov     eax, dword [pos.2418]                   ; 16AE _ A1, 00000258(d)
        cmp     dword [ebp-14H], eax                    ; 16B3 _ 39. 45, EC
        jnz     ?_058                                   ; 16B6 _ 75, 28
        mov     eax, dword [line.2419]                  ; 16B8 _ A1, 00000254(d)
        cmp     dword [ebp-10H], eax                    ; 16BD _ 39. 45, F0
        jz      ?_056                                   ; 16C0 _ 74, 0A
        mov     eax, dword [line.2419]                  ; 16C2 _ A1, 00000254(d)
        add     eax, 16                                 ; 16C7 _ 83. C0, 10
        jmp     ?_057                                   ; 16CA _ EB, 05

?_056:  mov     eax, 0                                  ; 16CC _ B8, 00000000
?_057:  mov     dword [line.2419], eax                  ; 16D1 _ A3, 00000254(d)
        mov     dword [pos.2418], 0                     ; 16D6 _ C7. 05, 00000258(d), 00000000
?_058:  nop                                             ; 16E0 _ 90
        leave                                           ; 16E1 _ C9
        ret                                             ; 16E2 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 16E3 _ 55
        mov     ebp, esp                                ; 16E4 _ 89. E5
        sub     esp, 24                                 ; 16E6 _ 83. EC, 18
        call    io_sti                                  ; 16E9 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 16EE _ C6. 45, F7, 00
        sub     esp, 12                                 ; 16F2 _ 83. EC, 0C
        push    mouseInfo                               ; 16F5 _ 68, 00000024(d)
        call    fifo8_get                               ; 16FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16FF _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1702 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1705 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1709 _ 83. EC, 08
        push    eax                                     ; 170C _ 50
        push    mouse_move                              ; 170D _ 68, 000000E0(d)
        call    mouse_decode                            ; 1712 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1717 _ 83. C4, 10
        test    eax, eax                                ; 171A _ 85. C0
        jz      ?_059                                   ; 171C _ 74, 60
        sub     esp, 4                                  ; 171E _ 83. EC, 04
        push    mouse_move                              ; 1721 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1726 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1729 _ FF. 75, 08
        call    computeMousePos                         ; 172C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1731 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1734 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 173A _ A1, 000000F0(d)
        push    edx                                     ; 173F _ 52
        push    eax                                     ; 1740 _ 50
        push    dword [ebp+10H]                         ; 1741 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1744 _ FF. 75, 08
        call    sheet_slide                             ; 1747 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 174C _ 83. C4, 10
        mov     eax, dword [?_205]                      ; 174F _ A1, 000000EC(d)
        and     eax, 01H                                ; 1754 _ 83. E0, 01
        test    eax, eax                                ; 1757 _ 85. C0
        jz      ?_059                                   ; 1759 _ 74, 23
        mov     eax, dword [my]                         ; 175B _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1760 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1763 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1768 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 176B _ A1, 00000228(d)
        push    ecx                                     ; 1770 _ 51
        push    edx                                     ; 1771 _ 52
        push    eax                                     ; 1772 _ 50
        push    dword [ebp+8H]                          ; 1773 _ FF. 75, 08
        call    sheet_slide                             ; 1776 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 177B _ 83. C4, 10
?_059:  nop                                             ; 177E _ 90
        leave                                           ; 177F _ C9
        ret                                             ; 1780 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1781 _ 55
        mov     ebp, esp                                ; 1782 _ 89. E5
        sub     esp, 4                                  ; 1784 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1787 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 178A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 178D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1790 _ 0F B6. 40, 03
        test    al, al                                  ; 1794 _ 84. C0
        jnz     ?_061                                   ; 1796 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1798 _ 80. 7D, FC, FA
        jnz     ?_060                                   ; 179C _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 179E _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 17A1 _ C6. 40, 03, 01
?_060:  mov     eax, 0                                  ; 17A5 _ B8, 00000000
        jmp     ?_068                                   ; 17AA _ E9, 0000010C

?_061:  mov     eax, dword [ebp+8H]                     ; 17AF _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17B2 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 17B6 _ 3C, 01
        jnz     ?_063                                   ; 17B8 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 17BA _ 0F B6. 45, FC
        or      eax, 37H                                ; 17BE _ 83. C8, 37
        cmp     al, 63                                  ; 17C1 _ 3C, 3F
        jnz     ?_062                                   ; 17C3 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 17C5 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 17C8 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 17CC _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 17CE _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 17D1 _ C6. 40, 03, 02
?_062:  mov     eax, 0                                  ; 17D5 _ B8, 00000000
        jmp     ?_068                                   ; 17DA _ E9, 000000DC

?_063:  mov     eax, dword [ebp+8H]                     ; 17DF _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17E2 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 17E6 _ 3C, 02
        jnz     ?_064                                   ; 17E8 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 17EA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 17ED _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 17F1 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17F4 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 17F7 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 17FB _ B8, 00000000
        jmp     ?_068                                   ; 1800 _ E9, 000000B6

?_064:  mov     eax, dword [ebp+8H]                     ; 1805 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1808 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 180C _ 3C, 03
        jne     ?_067                                   ; 180E _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1814 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1817 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 181B _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 181E _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1821 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1825 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1828 _ 0F B6. 00
        movzx   eax, al                                 ; 182B _ 0F B6. C0
        and     eax, 07H                                ; 182E _ 83. E0, 07
        mov     edx, eax                                ; 1831 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1833 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1836 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1839 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 183C _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1840 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1843 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1846 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1849 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 184C _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1850 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1853 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1856 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1859 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 185C _ 0F B6. 00
        movzx   eax, al                                 ; 185F _ 0F B6. C0
        and     eax, 10H                                ; 1862 _ 83. E0, 10
        test    eax, eax                                ; 1865 _ 85. C0
        jz      ?_065                                   ; 1867 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1869 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 186C _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 186F _ 0D, FFFFFF00
        mov     edx, eax                                ; 1874 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1876 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1879 _ 89. 50, 04
?_065:  mov     eax, dword [ebp+8H]                     ; 187C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 187F _ 0F B6. 00
        movzx   eax, al                                 ; 1882 _ 0F B6. C0
        and     eax, 20H                                ; 1885 _ 83. E0, 20
        test    eax, eax                                ; 1888 _ 85. C0
        jz      ?_066                                   ; 188A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 188C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 188F _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1892 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1897 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1899 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 189C _ 89. 50, 08
?_066:  mov     eax, dword [ebp+8H]                     ; 189F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18A2 _ 8B. 40, 08
        neg     eax                                     ; 18A5 _ F7. D8
        mov     edx, eax                                ; 18A7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18A9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18AC _ 89. 50, 08
        mov     eax, 1                                  ; 18AF _ B8, 00000001
        jmp     ?_068                                   ; 18B4 _ EB, 05

?_067:  mov     eax, 4294967295                         ; 18B6 _ B8, FFFFFFFF
?_068:  leave                                           ; 18BB _ C9
        ret                                             ; 18BC _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 18BD _ 55
        mov     ebp, esp                                ; 18BE _ 89. E5
        sub     esp, 16                                 ; 18C0 _ 83. EC, 10
        movzx   eax, word [?_202]                       ; 18C3 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 18CA _ 98
        mov     dword [ebp-8H], eax                     ; 18CB _ 89. 45, F8
        movzx   eax, word [?_203]                       ; 18CE _ 0F B7. 05, 00000006(d)
        cwde                                            ; 18D5 _ 98
        mov     dword [ebp-4H], eax                     ; 18D6 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 18D9 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 18DC _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 18DF _ A1, 000000F0(d)
        add     eax, edx                                ; 18E4 _ 01. D0
        mov     dword [mx], eax                         ; 18E6 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 18EB _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 18EE _ 8B. 50, 08
        mov     eax, dword [my]                         ; 18F1 _ A1, 000000F4(d)
        add     eax, edx                                ; 18F6 _ 01. D0
        mov     dword [my], eax                         ; 18F8 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 18FD _ A1, 000000F0(d)
        test    eax, eax                                ; 1902 _ 85. C0
        jns     ?_069                                   ; 1904 _ 79, 0A
        mov     dword [mx], 0                           ; 1906 _ C7. 05, 000000F0(d), 00000000
?_069:  mov     eax, dword [my]                         ; 1910 _ A1, 000000F4(d)
        test    eax, eax                                ; 1915 _ 85. C0
        jns     ?_070                                   ; 1917 _ 79, 0A
        mov     dword [my], 0                           ; 1919 _ C7. 05, 000000F4(d), 00000000
?_070:  mov     eax, dword [ebp-8H]                     ; 1923 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1926 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1929 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 192E _ 39. C2
        jge     ?_071                                   ; 1930 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1932 _ 8B. 45, F8
        sub     eax, 9                                  ; 1935 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1938 _ A3, 000000F0(d)
?_071:  mov     eax, dword [ebp-4H]                     ; 193D _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1940 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1943 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1948 _ 39. C2
        jge     ?_072                                   ; 194A _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 194C _ 8B. 45, FC
        sub     eax, 1                                  ; 194F _ 83. E8, 01
        mov     dword [my], eax                         ; 1952 _ A3, 000000F4(d)
?_072:  nop                                             ; 1957 _ 90
        leave                                           ; 1958 _ C9
        ret                                             ; 1959 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 195A _ 55
        mov     ebp, esp                                ; 195B _ 89. E5
        sub     esp, 56                                 ; 195D _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1960 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1967 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 196E _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1975 _ C7. 45, DC, 00000050
        push    100                                     ; 197C _ 6A, 64
        push    dword [ebp+1CH]                         ; 197E _ FF. 75, 1C
        push    0                                       ; 1981 _ 6A, 00
        push    0                                       ; 1983 _ 6A, 00
        push    14                                      ; 1985 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1987 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 198A _ FF. 75, 14
        call    boxfill8                                ; 198D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1992 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1995 _ 8B. 45, 20
        movsx   eax, al                                 ; 1998 _ 0F BE. C0
        sub     esp, 8                                  ; 199B _ 83. EC, 08
        push    ?_194                                   ; 199E _ 68, 00000036(d)
        push    eax                                     ; 19A3 _ 50
        push    dword [ebp-2CH]                         ; 19A4 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 19A7 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 19AA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19AD _ FF. 75, 08
        call    showString                              ; 19B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19B5 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 19B8 _ 8B. 45, 18
        sub     esp, 12                                 ; 19BB _ 83. EC, 0C
        push    eax                                     ; 19BE _ 50
        call    intToHexStr                             ; 19BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19C4 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 19C7 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 19CA _ 8B. 45, 20
        movsx   eax, al                                 ; 19CD _ 0F BE. C0
        sub     esp, 8                                  ; 19D0 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 19D3 _ FF. 75, E0
        push    eax                                     ; 19D6 _ 50
        push    dword [ebp-2CH]                         ; 19D7 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 19DA _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 19DD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19E0 _ FF. 75, 08
        call    showString                              ; 19E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19E8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 19EB _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 19EF _ 8B. 45, 20
        movsx   eax, al                                 ; 19F2 _ 0F BE. C0
        sub     esp, 8                                  ; 19F5 _ 83. EC, 08
        push    ?_195                                   ; 19F8 _ 68, 00000040(d)
        push    eax                                     ; 19FD _ 50
        push    dword [ebp-2CH]                         ; 19FE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A01 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A04 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A07 _ FF. 75, 08
        call    showString                              ; 1A0A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A0F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A12 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1A15 _ 8B. 00
        sub     esp, 12                                 ; 1A17 _ 83. EC, 0C
        push    eax                                     ; 1A1A _ 50
        call    intToHexStr                             ; 1A1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A20 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1A23 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1A26 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A29 _ 0F BE. C0
        sub     esp, 8                                  ; 1A2C _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1A2F _ FF. 75, E4
        push    eax                                     ; 1A32 _ 50
        push    dword [ebp-2CH]                         ; 1A33 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A36 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A39 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A3C _ FF. 75, 08
        call    showString                              ; 1A3F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A44 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A47 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A4B _ 8B. 45, 20
        movsx   eax, al                                 ; 1A4E _ 0F BE. C0
        sub     esp, 8                                  ; 1A51 _ 83. EC, 08
        push    ?_196                                   ; 1A54 _ 68, 0000004E(d)
        push    eax                                     ; 1A59 _ 50
        push    dword [ebp-2CH]                         ; 1A5A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A5D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A60 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A63 _ FF. 75, 08
        call    showString                              ; 1A66 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A6B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A6E _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1A71 _ 8B. 40, 04
        sub     esp, 12                                 ; 1A74 _ 83. EC, 0C
        push    eax                                     ; 1A77 _ 50
        call    intToHexStr                             ; 1A78 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A7D _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1A80 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1A83 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A86 _ 0F BE. C0
        sub     esp, 8                                  ; 1A89 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1A8C _ FF. 75, E8
        push    eax                                     ; 1A8F _ 50
        push    dword [ebp-2CH]                         ; 1A90 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A93 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A96 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A99 _ FF. 75, 08
        call    showString                              ; 1A9C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AA1 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1AA4 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1AA8 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AAB _ 0F BE. C0
        sub     esp, 8                                  ; 1AAE _ 83. EC, 08
        push    ?_197                                   ; 1AB1 _ 68, 0000005D(d)
        push    eax                                     ; 1AB6 _ 50
        push    dword [ebp-2CH]                         ; 1AB7 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1ABA _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1ABD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AC0 _ FF. 75, 08
        call    showString                              ; 1AC3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AC8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1ACB _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1ACE _ 8B. 40, 08
        sub     esp, 12                                 ; 1AD1 _ 83. EC, 0C
        push    eax                                     ; 1AD4 _ 50
        call    intToHexStr                             ; 1AD5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ADA _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1ADD _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1AE0 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AE3 _ 0F BE. C0
        sub     esp, 8                                  ; 1AE6 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1AE9 _ FF. 75, EC
        push    eax                                     ; 1AEC _ 50
        push    dword [ebp-2CH]                         ; 1AED _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1AF0 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1AF3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AF6 _ FF. 75, 08
        call    showString                              ; 1AF9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AFE _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B01 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1B05 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B08 _ 0F BE. C0
        sub     esp, 8                                  ; 1B0B _ 83. EC, 08
        push    ?_198                                   ; 1B0E _ 68, 00000069(d)
        push    eax                                     ; 1B13 _ 50
        push    dword [ebp-2CH]                         ; 1B14 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B17 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B1A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B1D _ FF. 75, 08
        call    showString                              ; 1B20 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B25 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B28 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1B2B _ 8B. 40, 0C
        sub     esp, 12                                 ; 1B2E _ 83. EC, 0C
        push    eax                                     ; 1B31 _ 50
        call    intToHexStr                             ; 1B32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B37 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1B3A _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1B3D _ 8B. 45, 20
        movsx   eax, al                                 ; 1B40 _ 0F BE. C0
        sub     esp, 8                                  ; 1B43 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1B46 _ FF. 75, F0
        push    eax                                     ; 1B49 _ 50
        push    dword [ebp-2CH]                         ; 1B4A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B4D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B50 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B53 _ FF. 75, 08
        call    showString                              ; 1B56 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B5B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B5E _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1B62 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B65 _ 0F BE. C0
        sub     esp, 8                                  ; 1B68 _ 83. EC, 08
        push    ?_199                                   ; 1B6B _ 68, 00000076(d)
        push    eax                                     ; 1B70 _ 50
        push    dword [ebp-2CH]                         ; 1B71 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B74 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B77 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B7A _ FF. 75, 08
        call    showString                              ; 1B7D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B82 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B85 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1B88 _ 8B. 40, 10
        sub     esp, 12                                 ; 1B8B _ 83. EC, 0C
        push    eax                                     ; 1B8E _ 50
        call    intToHexStr                             ; 1B8F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B94 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1B97 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1B9A _ 8B. 45, 20
        movsx   eax, al                                 ; 1B9D _ 0F BE. C0
        sub     esp, 8                                  ; 1BA0 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1BA3 _ FF. 75, F4
        push    eax                                     ; 1BA6 _ 50
        push    dword [ebp-2CH]                         ; 1BA7 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1BAA _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1BAD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BB0 _ FF. 75, 08
        call    showString                              ; 1BB3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BB8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1BBB _ 83. 45, D4, 10
        nop                                             ; 1BBF _ 90
        leave                                           ; 1BC0 _ C9
        ret                                             ; 1BC1 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1BC2 _ 55
        mov     ebp, esp                                ; 1BC3 _ 89. E5
        sub     esp, 24                                 ; 1BC5 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1BC8 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1BCD _ 83. EC, 08
        push    37500                                   ; 1BD0 _ 68, 0000927C
        push    eax                                     ; 1BD5 _ 50
        call    memman_alloc_4K                         ; 1BD6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BDB _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1BDE _ 89. 45, F0
        sub     esp, 12                                 ; 1BE1 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1BE4 _ FF. 75, 08
        call    sheet_alloc                             ; 1BE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BEC _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1BEF _ 89. 45, F4
        sub     esp, 12                                 ; 1BF2 _ 83. EC, 0C
        push    99                                      ; 1BF5 _ 6A, 63
        push    125                                     ; 1BF7 _ 6A, 7D
        push    300                                     ; 1BF9 _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1BFE _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1C01 _ FF. 75, F4
        call    sheet_setbuf                            ; 1C04 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C09 _ 83. C4, 20
        sub     esp, 4                                  ; 1C0C _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1C0F _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1C12 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C15 _ FF. 75, 08
        call    make_window8                            ; 1C18 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C1D _ 83. C4, 10
        sub     esp, 8                                  ; 1C20 _ 83. EC, 08
        push    7                                       ; 1C23 _ 6A, 07
        push    16                                      ; 1C25 _ 6A, 10
        push    150                                     ; 1C27 _ 68, 00000096
        push    42                                      ; 1C2C _ 6A, 2A
        push    8                                       ; 1C2E _ 6A, 08
        push    dword [ebp-0CH]                         ; 1C30 _ FF. 75, F4
        call    make_textbox8                           ; 1C33 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C38 _ 83. C4, 20
        push    dword [ebp+14H]                         ; 1C3B _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1C3E _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 1C41 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C44 _ FF. 75, 08
        call    sheet_slide                             ; 1C47 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C4C _ 83. C4, 10
        sub     esp, 4                                  ; 1C4F _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1C52 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1C55 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C58 _ FF. 75, 08
        call    sheet_level_updown                      ; 1C5B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C60 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1C63 _ 8B. 45, F4
        leave                                           ; 1C66 _ C9
        ret                                             ; 1C67 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1C68 _ 55
        mov     ebp, esp                                ; 1C69 _ 89. E5
        push    ebx                                     ; 1C6B _ 53
        sub     esp, 36                                 ; 1C6C _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1C6F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C72 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1C75 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1C78 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C7B _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1C7E _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1C81 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C84 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C87 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C8A _ 8B. 00
        push    0                                       ; 1C8C _ 6A, 00
        push    edx                                     ; 1C8E _ 52
        push    0                                       ; 1C8F _ 6A, 00
        push    0                                       ; 1C91 _ 6A, 00
        push    8                                       ; 1C93 _ 6A, 08
        push    dword [ebp-10H]                         ; 1C95 _ FF. 75, F0
        push    eax                                     ; 1C98 _ 50
        call    boxfill8                                ; 1C99 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C9E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1CA1 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1CA4 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CA7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CAA _ 8B. 00
        push    1                                       ; 1CAC _ 6A, 01
        push    edx                                     ; 1CAE _ 52
        push    1                                       ; 1CAF _ 6A, 01
        push    1                                       ; 1CB1 _ 6A, 01
        push    7                                       ; 1CB3 _ 6A, 07
        push    dword [ebp-10H]                         ; 1CB5 _ FF. 75, F0
        push    eax                                     ; 1CB8 _ 50
        call    boxfill8                                ; 1CB9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CBE _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1CC1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1CC4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CC7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CCA _ 8B. 00
        push    edx                                     ; 1CCC _ 52
        push    0                                       ; 1CCD _ 6A, 00
        push    0                                       ; 1CCF _ 6A, 00
        push    0                                       ; 1CD1 _ 6A, 00
        push    8                                       ; 1CD3 _ 6A, 08
        push    dword [ebp-10H]                         ; 1CD5 _ FF. 75, F0
        push    eax                                     ; 1CD8 _ 50
        call    boxfill8                                ; 1CD9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CDE _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1CE1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1CE4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CE7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CEA _ 8B. 00
        push    edx                                     ; 1CEC _ 52
        push    1                                       ; 1CED _ 6A, 01
        push    1                                       ; 1CEF _ 6A, 01
        push    1                                       ; 1CF1 _ 6A, 01
        push    7                                       ; 1CF3 _ 6A, 07
        push    dword [ebp-10H]                         ; 1CF5 _ FF. 75, F0
        push    eax                                     ; 1CF8 _ 50
        call    boxfill8                                ; 1CF9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CFE _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1D01 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1D04 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1D07 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1D0A _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1D0D _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1D10 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1D13 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D16 _ 8B. 00
        push    ebx                                     ; 1D18 _ 53
        push    ecx                                     ; 1D19 _ 51
        push    1                                       ; 1D1A _ 6A, 01
        push    edx                                     ; 1D1C _ 52
        push    15                                      ; 1D1D _ 6A, 0F
        push    dword [ebp-10H]                         ; 1D1F _ FF. 75, F0
        push    eax                                     ; 1D22 _ 50
        call    boxfill8                                ; 1D23 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D28 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1D2B _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1D2E _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1D31 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1D34 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1D37 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1D3A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D3D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D40 _ 8B. 00
        push    ebx                                     ; 1D42 _ 53
        push    ecx                                     ; 1D43 _ 51
        push    0                                       ; 1D44 _ 6A, 00
        push    edx                                     ; 1D46 _ 52
        push    0                                       ; 1D47 _ 6A, 00
        push    dword [ebp-10H]                         ; 1D49 _ FF. 75, F0
        push    eax                                     ; 1D4C _ 50
        call    boxfill8                                ; 1D4D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D52 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1D55 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1D58 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1D5B _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1D5E _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1D61 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D64 _ 8B. 00
        push    ecx                                     ; 1D66 _ 51
        push    edx                                     ; 1D67 _ 52
        push    2                                       ; 1D68 _ 6A, 02
        push    2                                       ; 1D6A _ 6A, 02
        push    8                                       ; 1D6C _ 6A, 08
        push    dword [ebp-10H]                         ; 1D6E _ FF. 75, F0
        push    eax                                     ; 1D71 _ 50
        call    boxfill8                                ; 1D72 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D77 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1D7A _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1D7D _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1D80 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D83 _ 8B. 00
        push    20                                      ; 1D85 _ 6A, 14
        push    edx                                     ; 1D87 _ 52
        push    3                                       ; 1D88 _ 6A, 03
        push    3                                       ; 1D8A _ 6A, 03
        push    12                                      ; 1D8C _ 6A, 0C
        push    dword [ebp-10H]                         ; 1D8E _ FF. 75, F0
        push    eax                                     ; 1D91 _ 50
        call    boxfill8                                ; 1D92 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D97 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1D9A _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1D9D _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1DA0 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1DA3 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1DA6 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1DA9 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1DAC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DAF _ 8B. 00
        push    ebx                                     ; 1DB1 _ 53
        push    ecx                                     ; 1DB2 _ 51
        push    edx                                     ; 1DB3 _ 52
        push    1                                       ; 1DB4 _ 6A, 01
        push    15                                      ; 1DB6 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1DB8 _ FF. 75, F0
        push    eax                                     ; 1DBB _ 50
        call    boxfill8                                ; 1DBC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1DC1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1DC4 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1DC7 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1DCA _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1DCD _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1DD0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1DD3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1DD6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DD9 _ 8B. 00
        push    ebx                                     ; 1DDB _ 53
        push    ecx                                     ; 1DDC _ 51
        push    edx                                     ; 1DDD _ 52
        push    0                                       ; 1DDE _ 6A, 00
        push    0                                       ; 1DE0 _ 6A, 00
        push    dword [ebp-10H]                         ; 1DE2 _ FF. 75, F0
        push    eax                                     ; 1DE5 _ 50
        call    boxfill8                                ; 1DE6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1DEB _ 83. C4, 1C
        sub     esp, 8                                  ; 1DEE _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1DF1 _ FF. 75, 10
        push    7                                       ; 1DF4 _ 6A, 07
        push    4                                       ; 1DF6 _ 6A, 04
        push    8                                       ; 1DF8 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1DFA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DFD _ FF. 75, 08
        call    showString                              ; 1E00 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E05 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1E08 _ C7. 45, E8, 00000000
        jmp     ?_079                                   ; 1E0F _ EB, 7D

?_073:  mov     dword [ebp-14H], 0                      ; 1E11 _ C7. 45, EC, 00000000
        jmp     ?_078                                   ; 1E18 _ EB, 6A

?_074:  mov     eax, dword [ebp-18H]                    ; 1E1A _ 8B. 45, E8
        shl     eax, 4                                  ; 1E1D _ C1. E0, 04
        mov     edx, eax                                ; 1E20 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1E22 _ 8B. 45, EC
        add     eax, edx                                ; 1E25 _ 01. D0
        add     eax, closebtn.2470                      ; 1E27 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1E2C _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1E2F _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1E32 _ 80. 7D, E7, 40
        jnz     ?_075                                   ; 1E36 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1E38 _ C6. 45, E7, 00
        jmp     ?_077                                   ; 1E3C _ EB, 16

?_075:  cmp     byte [ebp-19H], 36                      ; 1E3E _ 80. 7D, E7, 24
        jnz     ?_076                                   ; 1E42 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1E44 _ C6. 45, E7, 0F
        jmp     ?_077                                   ; 1E48 _ EB, 0A

?_076:  cmp     byte [ebp-19H], 81                      ; 1E4A _ 80. 7D, E7, 51
        jnz     ?_077                                   ; 1E4E _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1E50 _ C6. 45, E7, 08
?_077:  mov     eax, dword [ebp+0CH]                    ; 1E54 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1E57 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1E59 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1E5C _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1E5F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E62 _ 8B. 40, 04
        imul    ecx, eax                                ; 1E65 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1E68 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E6B _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1E6E _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1E71 _ 8B. 45, EC
        add     eax, ebx                                ; 1E74 _ 01. D8
        add     eax, ecx                                ; 1E76 _ 01. C8
        add     edx, eax                                ; 1E78 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1E7A _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1E7E _ 88. 02
        add     dword [ebp-14H], 1                      ; 1E80 _ 83. 45, EC, 01
?_078:  cmp     dword [ebp-14H], 15                     ; 1E84 _ 83. 7D, EC, 0F
        jle     ?_074                                   ; 1E88 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1E8A _ 83. 45, E8, 01
?_079:  cmp     dword [ebp-18H], 13                     ; 1E8E _ 83. 7D, E8, 0D
        jle     ?_073                                   ; 1E92 _ 0F 8E, FFFFFF79
        nop                                             ; 1E98 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1E99 _ 8B. 5D, FC
        leave                                           ; 1E9C _ C9
        ret                                             ; 1E9D _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 1E9E _ 55
        mov     ebp, esp                                ; 1E9F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1EA1 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1EA4 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1EAA _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1EAD _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1EB4 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1EB7 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1EBE _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1EC1 _ C7. 40, 0C, 00000000
        nop                                             ; 1EC8 _ 90
        pop     ebp                                     ; 1EC9 _ 5D
        ret                                             ; 1ECA _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1ECB _ 55
        mov     ebp, esp                                ; 1ECC _ 89. E5
        sub     esp, 16                                 ; 1ECE _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1ED1 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1ED8 _ C7. 45, FC, 00000000
        jmp     ?_081                                   ; 1EDF _ EB, 14

?_080:  mov     eax, dword [ebp+8H]                     ; 1EE1 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1EE4 _ 8B. 55, FC
        add     edx, 2                                  ; 1EE7 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1EEA _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1EEE _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1EF1 _ 83. 45, FC, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1EF5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EF8 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1EFA _ 39. 45, FC
        jl      ?_080                                   ; 1EFD _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1EFF _ 8B. 45, F8
        leave                                           ; 1F02 _ C9
        ret                                             ; 1F03 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1F04 _ 55
        mov     ebp, esp                                ; 1F05 _ 89. E5
        sub     esp, 16                                 ; 1F07 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1F0A _ C7. 45, F8, 00000000
        jmp     ?_085                                   ; 1F11 _ E9, 00000085

?_082:  mov     eax, dword [ebp+8H]                     ; 1F16 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F19 _ 8B. 55, F8
        add     edx, 2                                  ; 1F1C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1F1F _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1F23 _ 39. 45, 0C
        ja      ?_084                                   ; 1F26 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1F28 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F2B _ 8B. 55, F8
        add     edx, 2                                  ; 1F2E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1F31 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1F34 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1F37 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F3A _ 8B. 55, F8
        add     edx, 2                                  ; 1F3D _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1F40 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1F43 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1F46 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1F49 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F4C _ 8B. 55, F8
        add     edx, 2                                  ; 1F4F _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1F52 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1F55 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F58 _ 8B. 55, F8
        add     edx, 2                                  ; 1F5B _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1F5E _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1F62 _ 2B. 45, 0C
        mov     edx, eax                                ; 1F65 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F67 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1F6A _ 8B. 4D, F8
        add     ecx, 2                                  ; 1F6D _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 1F70 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1F74 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1F77 _ 8B. 55, F8
        add     edx, 2                                  ; 1F7A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1F7D _ 8B. 44 D0, 04
        test    eax, eax                                ; 1F81 _ 85. C0
        jnz     ?_083                                   ; 1F83 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1F85 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F88 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1F8A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1F8D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1F90 _ 89. 10
?_083:  mov     eax, dword [ebp-4H]                     ; 1F92 _ 8B. 45, FC
        jmp     ?_086                                   ; 1F95 _ EB, 17

?_084:  add     dword [ebp-8H], 1                       ; 1F97 _ 83. 45, F8, 01
?_085:  mov     eax, dword [ebp+8H]                     ; 1F9B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F9E _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1FA0 _ 39. 45, F8
        jl      ?_082                                   ; 1FA3 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1FA9 _ B8, 00000000
?_086:  leave                                           ; 1FAE _ C9
        ret                                             ; 1FAF _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1FB0 _ 55
        mov     ebp, esp                                ; 1FB1 _ 89. E5
        sub     esp, 16                                 ; 1FB3 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1FB6 _ 8B. 45, 0C
        add     eax, 4095                               ; 1FB9 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1FBE _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1FC3 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1FC6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1FC9 _ FF. 75, 08
        call    memman_alloc_FF                         ; 1FCC _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1FD1 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1FD4 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1FD7 _ 8B. 45, FC
        leave                                           ; 1FDA _ C9
        ret                                             ; 1FDB _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1FDC _ 55
        mov     ebp, esp                                ; 1FDD _ 89. E5
        push    ebx                                     ; 1FDF _ 53
        sub     esp, 16                                 ; 1FE0 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1FE3 _ C7. 45, F4, 00000000
        jmp     ?_088                                   ; 1FEA _ EB, 15

?_087:  mov     eax, dword [ebp+8H]                     ; 1FEC _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1FEF _ 8B. 55, F4
        add     edx, 2                                  ; 1FF2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1FF5 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1FF8 _ 39. 45, 0C
        jc      ?_089                                   ; 1FFB _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1FFD _ 83. 45, F4, 01
?_088:  mov     eax, dword [ebp+8H]                     ; 2001 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2004 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2006 _ 39. 45, F4
        jl      ?_087                                   ; 2009 _ 7C, E1
        jmp     ?_090                                   ; 200B _ EB, 01

?_089:  nop                                             ; 200D _ 90
?_090:  cmp     dword [ebp-0CH], 0                      ; 200E _ 83. 7D, F4, 00
        jle     ?_092                                   ; 2012 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2018 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 201B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 201E _ 8B. 45, 08
        add     edx, 2                                  ; 2021 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2024 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2027 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 202A _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 202D _ 8B. 45, 08
        add     ecx, 2                                  ; 2030 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2033 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2037 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2039 _ 39. 45, 0C
        jne     ?_092                                   ; 203C _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2042 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2045 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2048 _ 8B. 45, 08
        add     edx, 2                                  ; 204B _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 204E _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2052 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2055 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2058 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 205B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 205E _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2061 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2064 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2068 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 206B _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 206D _ 39. 45, F4
        jge     ?_091                                   ; 2070 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2072 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2075 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2078 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 207B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 207E _ 8B. 55, F4
        add     edx, 2                                  ; 2081 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2084 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2087 _ 39. C1
        jnz     ?_091                                   ; 2089 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 208B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 208E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2091 _ 8B. 45, 08
        add     edx, 2                                  ; 2094 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2097 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 209B _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 209E _ 8B. 4D, F4
        add     ecx, 2                                  ; 20A1 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 20A4 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 20A8 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 20AB _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 20AE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20B1 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 20B4 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 20B7 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 20BB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20BE _ 8B. 00
        lea     edx, [eax-1H]                           ; 20C0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20C3 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 20C6 _ 89. 10
?_091:  mov     eax, 0                                  ; 20C8 _ B8, 00000000
        jmp     ?_098                                   ; 20CD _ E9, 0000011C

?_092:  mov     eax, dword [ebp+8H]                     ; 20D2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20D5 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 20D7 _ 39. 45, F4
        jge     ?_093                                   ; 20DA _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 20DC _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 20DF _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 20E2 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20E5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20E8 _ 8B. 55, F4
        add     edx, 2                                  ; 20EB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 20EE _ 8B. 04 D0
        cmp     ecx, eax                                ; 20F1 _ 39. C1
        jnz     ?_093                                   ; 20F3 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 20F5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 20F8 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 20FB _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 20FE _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2101 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2104 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2107 _ 8B. 55, F4
        add     edx, 2                                  ; 210A _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 210D _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2111 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2114 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2117 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 211A _ 8B. 55, F4
        add     edx, 2                                  ; 211D _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2120 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2124 _ B8, 00000000
        jmp     ?_098                                   ; 2129 _ E9, 000000C0

?_093:  mov     eax, dword [ebp+8H]                     ; 212E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2131 _ 8B. 00
        cmp     eax, 4095                               ; 2133 _ 3D, 00000FFF
        jg      ?_097                                   ; 2138 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 213E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2141 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2143 _ 89. 45, F8
        jmp     ?_095                                   ; 2146 _ EB, 28

?_094:  mov     eax, dword [ebp-8H]                     ; 2148 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 214B _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 214E _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2151 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2154 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2157 _ 8B. 45, 08
        add     edx, 2                                  ; 215A _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 215D _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2160 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2162 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2165 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2168 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 216C _ 83. 6D, F8, 01
?_095:  mov     eax, dword [ebp-8H]                     ; 2170 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2173 _ 3B. 45, F4
        jg      ?_094                                   ; 2176 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2178 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 217B _ 8B. 00
        lea     edx, [eax+1H]                           ; 217D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2180 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2183 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2185 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2188 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 218B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 218E _ 8B. 00
        cmp     edx, eax                                ; 2190 _ 39. C2
        jge     ?_096                                   ; 2192 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2194 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2197 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2199 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 219C _ 89. 50, 04
?_096:  mov     eax, dword [ebp+8H]                     ; 219F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 21A2 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 21A5 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 21A8 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 21AB _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 21AE _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 21B1 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 21B4 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 21B7 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 21BA _ 89. 54 C8, 04
        mov     eax, 0                                  ; 21BE _ B8, 00000000
        jmp     ?_098                                   ; 21C3 _ EB, 29

?_097:  mov     eax, dword [ebp+8H]                     ; 21C5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 21C8 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 21CB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 21CE _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 21D1 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 21D4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21D7 _ 8B. 40, 08
        mov     edx, eax                                ; 21DA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 21DC _ 8B. 45, 10
        add     eax, edx                                ; 21DF _ 01. D0
        mov     edx, eax                                ; 21E1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 21E3 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 21E6 _ 89. 50, 08
        mov     eax, 4294967295                         ; 21E9 _ B8, FFFFFFFF
?_098:  add     esp, 16                                 ; 21EE _ 83. C4, 10
        pop     ebx                                     ; 21F1 _ 5B
        pop     ebp                                     ; 21F2 _ 5D
        ret                                             ; 21F3 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 21F4 _ 55
        mov     ebp, esp                                ; 21F5 _ 89. E5
        sub     esp, 16                                 ; 21F7 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 21FA _ 8B. 45, 10
        add     eax, 4095                               ; 21FD _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2202 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2207 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 220A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 220D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2210 _ FF. 75, 08
        call    memman_free                             ; 2213 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2218 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 221B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 221E _ 8B. 45, FC
        leave                                           ; 2221 _ C9
        ret                                             ; 2222 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2223 _ 55
        mov     ebp, esp                                ; 2224 _ 89. E5
        sub     esp, 24                                 ; 2226 _ 83. EC, 18
        sub     esp, 8                                  ; 2229 _ 83. EC, 08
        push    9232                                    ; 222C _ 68, 00002410
        push    dword [ebp+8H]                          ; 2231 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2234 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2239 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 223C _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 223F _ 83. 7D, F4, 00
        jnz     ?_099                                   ; 2243 _ 75, 0A
        mov     eax, 0                                  ; 2245 _ B8, 00000000
        jmp     ?_103                                   ; 224A _ E9, 0000009A

?_099:  mov     eax, dword [ebp+10H]                    ; 224F _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2252 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2256 _ 83. EC, 08
        push    eax                                     ; 2259 _ 50
        push    dword [ebp+8H]                          ; 225A _ FF. 75, 08
        call    memman_alloc_4K                         ; 225D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2262 _ 83. C4, 10
        mov     edx, eax                                ; 2265 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2267 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 226A _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 226D _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2270 _ 8B. 40, 04
        test    eax, eax                                ; 2273 _ 85. C0
        jnz     ?_100                                   ; 2275 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2277 _ 8B. 45, F4
        sub     esp, 4                                  ; 227A _ 83. EC, 04
        push    9232                                    ; 227D _ 68, 00002410
        push    eax                                     ; 2282 _ 50
        push    dword [ebp+8H]                          ; 2283 _ FF. 75, 08
        call    memman_free_4K                          ; 2286 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 228B _ 83. C4, 10
        mov     eax, 0                                  ; 228E _ B8, 00000000
        jmp     ?_103                                   ; 2293 _ EB, 54

?_100:  mov     eax, dword [ebp-0CH]                    ; 2295 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2298 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 229B _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 229D _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 22A0 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 22A3 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 22A6 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 22A9 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 22AC _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 22AF _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 22B2 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 22B9 _ C7. 45, F0, 00000000
        jmp     ?_102                                   ; 22C0 _ EB, 1B

?_101:  mov     eax, dword [ebp-0CH]                    ; 22C2 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 22C5 _ 8B. 55, F0
        add     edx, 33                                 ; 22C8 _ 83. C2, 21
        shl     edx, 5                                  ; 22CB _ C1. E2, 05
        add     eax, edx                                ; 22CE _ 01. D0
        add     eax, 16                                 ; 22D0 _ 83. C0, 10
        mov     dword [eax], 0                          ; 22D3 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 22D9 _ 83. 45, F0, 01
?_102:  cmp     dword [ebp-10H], 255                    ; 22DD _ 81. 7D, F0, 000000FF
        jle     ?_101                                   ; 22E4 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 22E6 _ 8B. 45, F4
?_103:  leave                                           ; 22E9 _ C9
        ret                                             ; 22EA _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 22EB _ 55
        mov     ebp, esp                                ; 22EC _ 89. E5
        sub     esp, 16                                 ; 22EE _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22F1 _ C7. 45, F8, 00000000
        jmp     ?_106                                   ; 22F8 _ EB, 4B

?_104:  mov     eax, dword [ebp+8H]                     ; 22FA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22FD _ 8B. 55, F8
        add     edx, 33                                 ; 2300 _ 83. C2, 21
        shl     edx, 5                                  ; 2303 _ C1. E2, 05
        add     eax, edx                                ; 2306 _ 01. D0
        add     eax, 16                                 ; 2308 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 230B _ 8B. 00
        test    eax, eax                                ; 230D _ 85. C0
        jnz     ?_105                                   ; 230F _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2311 _ 8B. 45, F8
        shl     eax, 5                                  ; 2314 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2317 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 231D _ 8B. 45, 08
        add     eax, edx                                ; 2320 _ 01. D0
        add     eax, 4                                  ; 2322 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2325 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2328 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 232B _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2332 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2335 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 233C _ 8B. 45, FC
        jmp     ?_107                                   ; 233F _ EB, 12

?_105:  add     dword [ebp-8H], 1                       ; 2341 _ 83. 45, F8, 01
?_106:  cmp     dword [ebp-8H], 255                     ; 2345 _ 81. 7D, F8, 000000FF
        jle     ?_104                                   ; 234C _ 7E, AC
        mov     eax, 0                                  ; 234E _ B8, 00000000
?_107:  leave                                           ; 2353 _ C9
        ret                                             ; 2354 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2355 _ 55
        mov     ebp, esp                                ; 2356 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2358 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 235B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 235E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2360 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2363 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2366 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2369 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 236C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 236F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2372 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2375 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2378 _ 89. 50, 14
        nop                                             ; 237B _ 90
        pop     ebp                                     ; 237C _ 5D
        ret                                             ; 237D _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 237E _ 55
        mov     ebp, esp                                ; 237F _ 89. E5
        push    esi                                     ; 2381 _ 56
        push    ebx                                     ; 2382 _ 53
        sub     esp, 32                                 ; 2383 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2386 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2389 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 238C _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 238F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2392 _ 8B. 40, 10
        add     eax, 1                                  ; 2395 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2398 _ 39. 45, 10
        jle     ?_108                                   ; 239B _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 239D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23A0 _ 8B. 40, 10
        add     eax, 1                                  ; 23A3 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 23A6 _ 89. 45, 10
?_108:  cmp     dword [ebp+10H], -1                     ; 23A9 _ 83. 7D, 10, FF
        jge     ?_109                                   ; 23AD _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 23AF _ C7. 45, 10, FFFFFFFF
?_109:  mov     eax, dword [ebp+0CH]                    ; 23B6 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 23B9 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 23BC _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 23BF _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 23C2 _ 3B. 45, 10
        jle     ?_116                                   ; 23C5 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 23CB _ 83. 7D, 10, 00
        js      ?_112                                   ; 23CF _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 23D5 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 23D8 _ 89. 45, E4
        jmp     ?_111                                   ; 23DB _ EB, 34

?_110:  mov     eax, dword [ebp-1CH]                    ; 23DD _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 23E0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23E3 _ 8B. 45, 08
        add     edx, 4                                  ; 23E6 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 23E9 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 23ED _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 23F0 _ 8B. 4D, E4
        add     ecx, 4                                  ; 23F3 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 23F6 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 23FA _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 23FD _ 8B. 55, E4
        add     edx, 4                                  ; 2400 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2403 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2407 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 240A _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 240D _ 83. 6D, E4, 01
?_111:  mov     eax, dword [ebp-1CH]                    ; 2411 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2414 _ 3B. 45, 10
        jg      ?_110                                   ; 2417 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2419 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 241C _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 241F _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2422 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2425 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2429 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 242C _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 242F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2432 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2435 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2438 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 243B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 243E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2441 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2444 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2447 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 244A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 244D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2450 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2453 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2456 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2459 _ 83. EC, 08
        push    esi                                     ; 245C _ 56
        push    ebx                                     ; 245D _ 53
        push    ecx                                     ; 245E _ 51
        push    edx                                     ; 245F _ 52
        push    eax                                     ; 2460 _ 50
        push    dword [ebp+8H]                          ; 2461 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2464 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2469 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 246C _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 246F _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2472 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2475 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2478 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 247B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 247E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2481 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2484 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2487 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 248A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 248D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2490 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2493 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2496 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2499 _ 8B. 40, 0C
        sub     esp, 4                                  ; 249C _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 249F _ FF. 75, F4
        push    esi                                     ; 24A2 _ 56
        push    ebx                                     ; 24A3 _ 53
        push    ecx                                     ; 24A4 _ 51
        push    edx                                     ; 24A5 _ 52
        push    eax                                     ; 24A6 _ 50
        push    dword [ebp+8H]                          ; 24A7 _ FF. 75, 08
        call    sheet_refresh_new                       ; 24AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 24AF _ 83. C4, 20
        jmp     ?_123                                   ; 24B2 _ E9, 00000244

?_112:  mov     eax, dword [ebp+8H]                     ; 24B7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 24BA _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 24BD _ 39. 45, F4
        jge     ?_115                                   ; 24C0 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 24C2 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 24C5 _ 89. 45, E8
        jmp     ?_114                                   ; 24C8 _ EB, 34

?_113:  mov     eax, dword [ebp-18H]                    ; 24CA _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 24CD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 24D0 _ 8B. 45, 08
        add     edx, 4                                  ; 24D3 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 24D6 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 24DA _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 24DD _ 8B. 4D, E8
        add     ecx, 4                                  ; 24E0 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 24E3 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 24E7 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 24EA _ 8B. 55, E8
        add     edx, 4                                  ; 24ED _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 24F0 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 24F4 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 24F7 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 24FA _ 83. 45, E8, 01
?_114:  mov     eax, dword [ebp+8H]                     ; 24FE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2501 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2504 _ 39. 45, E8
        jl      ?_113                                   ; 2507 _ 7C, C1
?_115:  mov     eax, dword [ebp+8H]                     ; 2509 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 250C _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 250F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2512 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2515 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2518 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 251B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 251E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2521 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2524 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2527 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 252A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 252D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2530 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2533 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2536 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2539 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 253C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 253F _ 8B. 40, 0C
        sub     esp, 8                                  ; 2542 _ 83. EC, 08
        push    0                                       ; 2545 _ 6A, 00
        push    ebx                                     ; 2547 _ 53
        push    ecx                                     ; 2548 _ 51
        push    edx                                     ; 2549 _ 52
        push    eax                                     ; 254A _ 50
        push    dword [ebp+8H]                          ; 254B _ FF. 75, 08
        call    sheet_refreshmap                        ; 254E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2553 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2556 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2559 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 255C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 255F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2562 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2565 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2568 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 256B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 256E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2571 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2574 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2577 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 257A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 257D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2580 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2583 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2586 _ 83. EC, 04
        push    esi                                     ; 2589 _ 56
        push    0                                       ; 258A _ 6A, 00
        push    ebx                                     ; 258C _ 53
        push    ecx                                     ; 258D _ 51
        push    edx                                     ; 258E _ 52
        push    eax                                     ; 258F _ 50
        push    dword [ebp+8H]                          ; 2590 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2593 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2598 _ 83. C4, 20
        jmp     ?_123                                   ; 259B _ E9, 0000015B

?_116:  mov     eax, dword [ebp-0CH]                    ; 25A0 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 25A3 _ 3B. 45, 10
        jge     ?_123                                   ; 25A6 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 25AC _ 83. 7D, F4, 00
        js      ?_119                                   ; 25B0 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 25B2 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 25B5 _ 89. 45, EC
        jmp     ?_118                                   ; 25B8 _ EB, 34

?_117:  mov     eax, dword [ebp-14H]                    ; 25BA _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 25BD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25C0 _ 8B. 45, 08
        add     edx, 4                                  ; 25C3 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 25C6 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 25CA _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 25CD _ 8B. 4D, EC
        add     ecx, 4                                  ; 25D0 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 25D3 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 25D7 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 25DA _ 8B. 55, EC
        add     edx, 4                                  ; 25DD _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 25E0 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 25E4 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 25E7 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 25EA _ 83. 45, EC, 01
?_118:  mov     eax, dword [ebp-14H]                    ; 25EE _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 25F1 _ 3B. 45, 10
        jl      ?_117                                   ; 25F4 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 25F6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 25F9 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 25FC _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 25FF _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2602 _ 89. 54 88, 04
        jmp     ?_122                                   ; 2606 _ EB, 72

?_119:  cmp     dword [ebp-0CH], 0                      ; 2608 _ 83. 7D, F4, 00
        jns     ?_122                                   ; 260C _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 260E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2611 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2614 _ 89. 45, F0
        jmp     ?_121                                   ; 2617 _ EB, 3A

?_120:  mov     eax, dword [ebp-10H]                    ; 2619 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 261C _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 261F _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2622 _ 8B. 55, F0
        add     edx, 4                                  ; 2625 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2628 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 262C _ 8B. 45, 08
        add     ecx, 4                                  ; 262F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2632 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2636 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2639 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 263C _ 8B. 45, 08
        add     edx, 4                                  ; 263F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2642 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2646 _ 8B. 55, F0
        add     edx, 1                                  ; 2649 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 264C _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 264F _ 83. 6D, F0, 01
?_121:  mov     eax, dword [ebp-10H]                    ; 2653 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2656 _ 3B. 45, 10
        jge     ?_120                                   ; 2659 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 265B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 265E _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2661 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2664 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2667 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 266B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 266E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2671 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2674 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2677 _ 89. 50, 10
?_122:  mov     eax, dword [ebp+0CH]                    ; 267A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 267D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2680 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2683 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2686 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2689 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 268C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 268F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2692 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2695 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2698 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 269B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 269E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26A1 _ 8B. 40, 0C
        sub     esp, 8                                  ; 26A4 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 26A7 _ FF. 75, 10
        push    ebx                                     ; 26AA _ 53
        push    ecx                                     ; 26AB _ 51
        push    edx                                     ; 26AC _ 52
        push    eax                                     ; 26AD _ 50
        push    dword [ebp+8H]                          ; 26AE _ FF. 75, 08
        call    sheet_refreshmap                        ; 26B1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26B6 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 26B9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26BC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26BF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 26C2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 26C5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26C8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26CB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26CE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26D1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 26D4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 26D7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26DA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26DD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26E0 _ 8B. 40, 0C
        sub     esp, 4                                  ; 26E3 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 26E6 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 26E9 _ FF. 75, 10
        push    ebx                                     ; 26EC _ 53
        push    ecx                                     ; 26ED _ 51
        push    edx                                     ; 26EE _ 52
        push    eax                                     ; 26EF _ 50
        push    dword [ebp+8H]                          ; 26F0 _ FF. 75, 08
        call    sheet_refresh_new                       ; 26F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26F8 _ 83. C4, 20
?_123:  nop                                             ; 26FB _ 90
        lea     esp, [ebp-8H]                           ; 26FC _ 8D. 65, F8
        pop     ebx                                     ; 26FF _ 5B
        pop     esi                                     ; 2700 _ 5E
        pop     ebp                                     ; 2701 _ 5D
        ret                                             ; 2702 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2703 _ 55
        mov     ebp, esp                                ; 2704 _ 89. E5
        push    edi                                     ; 2706 _ 57
        push    esi                                     ; 2707 _ 56
        push    ebx                                     ; 2708 _ 53
        sub     esp, 28                                 ; 2709 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 270C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 270F _ 8B. 40, 18
        test    eax, eax                                ; 2712 _ 85. C0
        js      ?_124                                   ; 2714 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2716 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2719 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 271C _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 271F _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2722 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2725 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2728 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 272B _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 272E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2731 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2734 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2737 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 273A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 273D _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2740 _ 8B. 45, 14
        add     edx, eax                                ; 2743 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2745 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2748 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 274B _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 274E _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2751 _ 03. 45, E4
        sub     esp, 4                                  ; 2754 _ 83. EC, 04
        push    ebx                                     ; 2757 _ 53
        push    ecx                                     ; 2758 _ 51
        push    edi                                     ; 2759 _ 57
        push    esi                                     ; 275A _ 56
        push    edx                                     ; 275B _ 52
        push    eax                                     ; 275C _ 50
        push    dword [ebp+8H]                          ; 275D _ FF. 75, 08
        call    sheet_refresh_new                       ; 2760 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2765 _ 83. C4, 20
?_124:  mov     eax, 0                                  ; 2768 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 276D _ 8D. 65, F4
        pop     ebx                                     ; 2770 _ 5B
        pop     esi                                     ; 2771 _ 5E
        pop     edi                                     ; 2772 _ 5F
        pop     ebp                                     ; 2773 _ 5D
        ret                                             ; 2774 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2775 _ 55
        mov     ebp, esp                                ; 2776 _ 89. E5
        push    esi                                     ; 2778 _ 56
        push    ebx                                     ; 2779 _ 53
        sub     esp, 16                                 ; 277A _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 277D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2780 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2783 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2786 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2789 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 278C _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 278F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2792 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2795 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2798 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 279B _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 279E _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27A1 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27A4 _ 8B. 40, 18
        test    eax, eax                                ; 27A7 _ 85. C0
        js      ?_125                                   ; 27A9 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 27AF _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 27B2 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 27B5 _ 8B. 45, F4
        add     edx, eax                                ; 27B8 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 27BA _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 27BD _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 27C0 _ 8B. 45, F0
        add     eax, ecx                                ; 27C3 _ 01. C8
        sub     esp, 8                                  ; 27C5 _ 83. EC, 08
        push    0                                       ; 27C8 _ 6A, 00
        push    edx                                     ; 27CA _ 52
        push    eax                                     ; 27CB _ 50
        push    dword [ebp-0CH]                         ; 27CC _ FF. 75, F4
        push    dword [ebp-10H]                         ; 27CF _ FF. 75, F0
        push    dword [ebp+8H]                          ; 27D2 _ FF. 75, 08
        call    sheet_refreshmap                        ; 27D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27DA _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 27DD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27E0 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 27E3 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 27E6 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 27E9 _ 8B. 55, 14
        add     ecx, edx                                ; 27EC _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 27EE _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 27F1 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 27F4 _ 8B. 55, 10
        add     edx, ebx                                ; 27F7 _ 01. DA
        sub     esp, 8                                  ; 27F9 _ 83. EC, 08
        push    eax                                     ; 27FC _ 50
        push    ecx                                     ; 27FD _ 51
        push    edx                                     ; 27FE _ 52
        push    dword [ebp+14H]                         ; 27FF _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2802 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2805 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2808 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 280D _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2810 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2813 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2816 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2819 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 281C _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 281F _ 8B. 45, F4
        add     edx, eax                                ; 2822 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2824 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2827 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 282A _ 8B. 45, F0
        add     eax, ebx                                ; 282D _ 01. D8
        sub     esp, 4                                  ; 282F _ 83. EC, 04
        push    ecx                                     ; 2832 _ 51
        push    0                                       ; 2833 _ 6A, 00
        push    edx                                     ; 2835 _ 52
        push    eax                                     ; 2836 _ 50
        push    dword [ebp-0CH]                         ; 2837 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 283A _ FF. 75, F0
        push    dword [ebp+8H]                          ; 283D _ FF. 75, 08
        call    sheet_refresh_new                       ; 2840 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2845 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2848 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 284B _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 284E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2851 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2854 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2857 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 285A _ 8B. 4D, 14
        add     ebx, ecx                                ; 285D _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 285F _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2862 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2865 _ 8B. 4D, 10
        add     ecx, esi                                ; 2868 _ 01. F1
        sub     esp, 4                                  ; 286A _ 83. EC, 04
        push    edx                                     ; 286D _ 52
        push    eax                                     ; 286E _ 50
        push    ebx                                     ; 286F _ 53
        push    ecx                                     ; 2870 _ 51
        push    dword [ebp+14H]                         ; 2871 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2874 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2877 _ FF. 75, 08
        call    sheet_refresh_new                       ; 287A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 287F _ 83. C4, 20
?_125:  nop                                             ; 2882 _ 90
        lea     esp, [ebp-8H]                           ; 2883 _ 8D. 65, F8
        pop     ebx                                     ; 2886 _ 5B
        pop     esi                                     ; 2887 _ 5E
        pop     ebp                                     ; 2888 _ 5D
        ret                                             ; 2889 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 288A _ 55
        mov     ebp, esp                                ; 288B _ 89. E5
        sub     esp, 48                                 ; 288D _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2890 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2893 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2895 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2898 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 289B _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 289E _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 28A1 _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 28A5 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 28A7 _ C7. 45, 0C, 00000000
?_126:  cmp     dword [ebp+10H], 8                      ; 28AE _ 83. 7D, 10, 08
        jg      ?_127                                   ; 28B2 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 28B4 _ C7. 45, 10, 00000000
?_127:  mov     eax, dword [ebp+8H]                     ; 28BB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 28BE _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 28C1 _ 39. 45, 14
        jle     ?_128                                   ; 28C4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 28C6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 28C9 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 28CC _ 89. 45, 14
?_128:  mov     eax, dword [ebp+8H]                     ; 28CF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 28D2 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 28D5 _ 39. 45, 18
        jle     ?_129                                   ; 28D8 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 28DA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 28DD _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 28E0 _ 89. 45, 18
?_129:  mov     eax, dword [ebp+1CH]                    ; 28E3 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 28E6 _ 89. 45, DC
        jmp     ?_136                                   ; 28E9 _ E9, 00000118

?_130:  mov     eax, dword [ebp+8H]                     ; 28EE _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 28F1 _ 8B. 55, DC
        add     edx, 4                                  ; 28F4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 28F7 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 28FB _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 28FE _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2901 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2903 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2906 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2909 _ 8B. 55, 08
        add     edx, 1044                               ; 290C _ 81. C2, 00000414
        sub     eax, edx                                ; 2912 _ 29. D0
        sar     eax, 5                                  ; 2914 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2917 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 291A _ C7. 45, E0, 00000000
        jmp     ?_135                                   ; 2921 _ E9, 000000CD

?_131:  mov     eax, dword [ebp-10H]                    ; 2926 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2929 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 292C _ 8B. 45, E0
        add     eax, edx                                ; 292F _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2931 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2934 _ C7. 45, E4, 00000000
        jmp     ?_134                                   ; 293B _ E9, 000000A0

?_132:  mov     eax, dword [ebp-10H]                    ; 2940 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2943 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2946 _ 8B. 45, E4
        add     eax, edx                                ; 2949 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 294B _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 294E _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2951 _ 3B. 45, FC
        jg      ?_133                                   ; 2954 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 295A _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 295D _ 3B. 45, 14
        jge     ?_133                                   ; 2960 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2962 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2965 _ 3B. 45, F8
        jg      ?_133                                   ; 2968 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 296A _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 296D _ 3B. 45, 18
        jge     ?_133                                   ; 2970 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2972 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2975 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2978 _ 0F AF. 45, E0
        mov     edx, eax                                ; 297C _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 297E _ 8B. 45, E4
        add     eax, edx                                ; 2981 _ 01. D0
        mov     edx, eax                                ; 2983 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2985 _ 8B. 45, F4
        add     eax, edx                                ; 2988 _ 01. D0
        movzx   eax, byte [eax]                         ; 298A _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 298D _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2990 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2993 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2996 _ 0F AF. 45, F8
        mov     edx, eax                                ; 299A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 299C _ 8B. 45, FC
        add     eax, edx                                ; 299F _ 01. D0
        mov     edx, eax                                ; 29A1 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 29A3 _ 8B. 45, EC
        add     eax, edx                                ; 29A6 _ 01. D0
        movzx   eax, byte [eax]                         ; 29A8 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 29AB _ 38. 45, DA
        jnz     ?_133                                   ; 29AE _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 29B0 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 29B4 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 29B7 _ 8B. 40, 14
        cmp     edx, eax                                ; 29BA _ 39. C2
        jz      ?_133                                   ; 29BC _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 29BE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29C1 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 29C4 _ 0F AF. 45, F8
        mov     edx, eax                                ; 29C8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 29CA _ 8B. 45, FC
        add     eax, edx                                ; 29CD _ 01. D0
        mov     edx, eax                                ; 29CF _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 29D1 _ 8B. 45, E8
        add     edx, eax                                ; 29D4 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 29D6 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 29DA _ 88. 02
?_133:  add     dword [ebp-1CH], 1                      ; 29DC _ 83. 45, E4, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 29E0 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 29E3 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 29E6 _ 39. 45, E4
        jl      ?_132                                   ; 29E9 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 29EF _ 83. 45, E0, 01
?_135:  mov     eax, dword [ebp-10H]                    ; 29F3 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 29F6 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 29F9 _ 39. 45, E0
        jl      ?_131                                   ; 29FC _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2A02 _ 83. 45, DC, 01
?_136:  mov     eax, dword [ebp-24H]                    ; 2A06 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2A09 _ 3B. 45, 20
        jle     ?_130                                   ; 2A0C _ 0F 8E, FFFFFEDC
        nop                                             ; 2A12 _ 90
        leave                                           ; 2A13 _ C9
        ret                                             ; 2A14 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2A15 _ 55
        mov     ebp, esp                                ; 2A16 _ 89. E5
        sub     esp, 64                                 ; 2A18 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2A1B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2A1E _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2A21 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2A24 _ 83. 7D, 0C, 00
        jns     ?_137                                   ; 2A28 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2A2A _ C7. 45, 0C, 00000000
?_137:  mov     eax, dword [ebp+8H]                     ; 2A31 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A34 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2A37 _ 39. 45, 0C
        jle     ?_138                                   ; 2A3A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A3C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A3F _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2A42 _ 89. 45, 0C
?_138:  cmp     dword [ebp+10H], 0                      ; 2A45 _ 83. 7D, 10, 00
        jns     ?_139                                   ; 2A49 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2A4B _ C7. 45, 10, 00000000
?_139:  mov     eax, dword [ebp+8H]                     ; 2A52 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A55 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2A58 _ 39. 45, 10
        jle     ?_140                                   ; 2A5B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A5D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A60 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2A63 _ 89. 45, 10
?_140:  mov     eax, dword [ebp+1CH]                    ; 2A66 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2A69 _ 89. 45, E0
        jmp     ?_151                                   ; 2A6C _ E9, 00000140

?_141:  mov     eax, dword [ebp+8H]                     ; 2A71 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2A74 _ 8B. 55, E0
        add     edx, 4                                  ; 2A77 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A7A _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2A7E _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2A81 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2A84 _ 8B. 55, 08
        add     edx, 1044                               ; 2A87 _ 81. C2, 00000414
        sub     eax, edx                                ; 2A8D _ 29. D0
        sar     eax, 5                                  ; 2A8F _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2A92 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2A95 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2A98 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2A9A _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2A9D _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2AA0 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2AA3 _ 8B. 55, 0C
        sub     edx, eax                                ; 2AA6 _ 29. C2
        mov     eax, edx                                ; 2AA8 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2AAA _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2AAD _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2AB0 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2AB3 _ 8B. 55, 10
        sub     edx, eax                                ; 2AB6 _ 29. C2
        mov     eax, edx                                ; 2AB8 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2ABA _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2ABD _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2AC0 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2AC3 _ 8B. 55, 14
        sub     edx, eax                                ; 2AC6 _ 29. C2
        mov     eax, edx                                ; 2AC8 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2ACA _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2ACD _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2AD0 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2AD3 _ 8B. 55, 18
        sub     edx, eax                                ; 2AD6 _ 29. C2
        mov     eax, edx                                ; 2AD8 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2ADA _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2ADD _ 83. 7D, D0, 00
        jns     ?_142                                   ; 2AE1 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2AE3 _ C7. 45, D0, 00000000
?_142:  cmp     dword [ebp-2CH], 0                      ; 2AEA _ 83. 7D, D4, 00
        jns     ?_143                                   ; 2AEE _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2AF0 _ C7. 45, D4, 00000000
?_143:  mov     eax, dword [ebp-10H]                    ; 2AF7 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2AFA _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2AFD _ 39. 45, D8
        jle     ?_144                                   ; 2B00 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2B02 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B05 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2B08 _ 89. 45, D8
?_144:  mov     eax, dword [ebp-10H]                    ; 2B0B _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2B0E _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2B11 _ 39. 45, DC
        jle     ?_145                                   ; 2B14 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2B16 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2B19 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2B1C _ 89. 45, DC
?_145:  mov     eax, dword [ebp-2CH]                    ; 2B1F _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2B22 _ 89. 45, E4
        jmp     ?_150                                   ; 2B25 _ EB, 7A

?_146:  mov     eax, dword [ebp-10H]                    ; 2B27 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2B2A _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2B2D _ 8B. 45, E4
        add     eax, edx                                ; 2B30 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2B32 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2B35 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2B38 _ 89. 45, E8
        jmp     ?_149                                   ; 2B3B _ EB, 58

?_147:  mov     eax, dword [ebp-10H]                    ; 2B3D _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2B40 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2B43 _ 8B. 45, E8
        add     eax, edx                                ; 2B46 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2B48 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2B4B _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B4E _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2B51 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2B55 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2B57 _ 8B. 45, E8
        add     eax, edx                                ; 2B5A _ 01. D0
        mov     edx, eax                                ; 2B5C _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2B5E _ 8B. 45, F4
        add     eax, edx                                ; 2B61 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B63 _ 0F B6. 00
        movzx   edx, al                                 ; 2B66 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2B69 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2B6C _ 8B. 40, 14
        cmp     edx, eax                                ; 2B6F _ 39. C2
        jz      ?_148                                   ; 2B71 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2B73 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B76 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2B79 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B7D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B7F _ 8B. 45, FC
        add     eax, edx                                ; 2B82 _ 01. D0
        mov     edx, eax                                ; 2B84 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2B86 _ 8B. 45, EC
        add     edx, eax                                ; 2B89 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2B8B _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2B8F _ 88. 02
?_148:  add     dword [ebp-18H], 1                      ; 2B91 _ 83. 45, E8, 01
?_149:  mov     eax, dword [ebp-18H]                    ; 2B95 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2B98 _ 3B. 45, D8
        jl      ?_147                                   ; 2B9B _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2B9D _ 83. 45, E4, 01
?_150:  mov     eax, dword [ebp-1CH]                    ; 2BA1 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2BA4 _ 3B. 45, DC
        jl      ?_146                                   ; 2BA7 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2BAD _ 83. 45, E0, 01
?_151:  mov     eax, dword [ebp+8H]                     ; 2BB1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BB4 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2BB7 _ 39. 45, E0
        jle     ?_141                                   ; 2BBA _ 0F 8E, FFFFFEB1
        nop                                             ; 2BC0 _ 90
        leave                                           ; 2BC1 _ C9
        ret                                             ; 2BC2 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2BC3 _ 55
        mov     ebp, esp                                ; 2BC4 _ 89. E5
        sub     esp, 24                                 ; 2BC6 _ 83. EC, 18
        sub     esp, 8                                  ; 2BC9 _ 83. EC, 08
        push    52                                      ; 2BCC _ 6A, 34
        push    67                                      ; 2BCE _ 6A, 43
        call    io_out8                                 ; 2BD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2BD5 _ 83. C4, 10
        sub     esp, 8                                  ; 2BD8 _ 83. EC, 08
        push    156                                     ; 2BDB _ 68, 0000009C
        push    64                                      ; 2BE0 _ 6A, 40
        call    io_out8                                 ; 2BE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2BE7 _ 83. C4, 10
        sub     esp, 8                                  ; 2BEA _ 83. EC, 08
        push    46                                      ; 2BED _ 6A, 2E
        push    64                                      ; 2BEF _ 6A, 40
        call    io_out8                                 ; 2BF1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2BF6 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2BF9 _ C7. 05, 00000260(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2C03 _ C7. 45, F4, 00000000
        jmp     ?_153                                   ; 2C0A _ EB, 26

?_152:  mov     eax, dword [ebp-0CH]                    ; 2C0C _ 8B. 45, F4
        shl     eax, 4                                  ; 2C0F _ C1. E0, 04
        add     eax, ?_209                              ; 2C12 _ 05, 00000268(d)
        mov     dword [eax], 0                          ; 2C17 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2C1D _ 8B. 45, F4
        shl     eax, 4                                  ; 2C20 _ C1. E0, 04
        add     eax, ?_210                              ; 2C23 _ 05, 0000026C(d)
        mov     dword [eax], 0                          ; 2C28 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2C2E _ 83. 45, F4, 01
?_153:  cmp     dword [ebp-0CH], 499                    ; 2C32 _ 81. 7D, F4, 000001F3
        jle     ?_152                                   ; 2C39 _ 7E, D1
        nop                                             ; 2C3B _ 90
        leave                                           ; 2C3C _ C9
        ret                                             ; 2C3D _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2C3E _ 55
        mov     ebp, esp                                ; 2C3F _ 89. E5
        sub     esp, 16                                 ; 2C41 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2C44 _ C7. 45, FC, 00000000
        jmp     ?_156                                   ; 2C4B _ EB, 36

?_154:  mov     eax, dword [ebp-4H]                     ; 2C4D _ 8B. 45, FC
        shl     eax, 4                                  ; 2C50 _ C1. E0, 04
        add     eax, ?_209                              ; 2C53 _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2C58 _ 8B. 00
        test    eax, eax                                ; 2C5A _ 85. C0
        jnz     ?_155                                   ; 2C5C _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2C5E _ 8B. 45, FC
        shl     eax, 4                                  ; 2C61 _ C1. E0, 04
        add     eax, ?_209                              ; 2C64 _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2C69 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2C6F _ 8B. 45, FC
        shl     eax, 4                                  ; 2C72 _ C1. E0, 04
        add     eax, timerctl                           ; 2C75 _ 05, 00000260(d)
        add     eax, 4                                  ; 2C7A _ 83. C0, 04
        jmp     ?_157                                   ; 2C7D _ EB, 12

?_155:  add     dword [ebp-4H], 1                       ; 2C7F _ 83. 45, FC, 01
?_156:  cmp     dword [ebp-4H], 499                     ; 2C83 _ 81. 7D, FC, 000001F3
        jle     ?_154                                   ; 2C8A _ 7E, C1
        mov     eax, 0                                  ; 2C8C _ B8, 00000000
?_157:  leave                                           ; 2C91 _ C9
        ret                                             ; 2C92 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2C93 _ 55
        mov     ebp, esp                                ; 2C94 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C96 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2C99 _ C7. 40, 04, 00000000
        nop                                             ; 2CA0 _ 90
        pop     ebp                                     ; 2CA1 _ 5D
        ret                                             ; 2CA2 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2CA3 _ 55
        mov     ebp, esp                                ; 2CA4 _ 89. E5
        sub     esp, 4                                  ; 2CA6 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2CA9 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2CAC _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2CAF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2CB2 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2CB5 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2CB8 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2CBB _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2CBF _ 88. 50, 0C
        nop                                             ; 2CC2 _ 90
        leave                                           ; 2CC3 _ C9
        ret                                             ; 2CC4 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2CC5 _ 55
        mov     ebp, esp                                ; 2CC6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2CC8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2CCB _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2CCE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2CD0 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2CD3 _ C7. 40, 04, 00000002
        nop                                             ; 2CDA _ 90
        pop     ebp                                     ; 2CDB _ 5D
        ret                                             ; 2CDC _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 2CDD _ 55
        mov     ebp, esp                                ; 2CDE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2CE0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2CE3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2CE6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2CE8 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2CEB _ C7. 40, 04, 00000002
        nop                                             ; 2CF2 _ 90
        pop     ebp                                     ; 2CF3 _ 5D
        ret                                             ; 2CF4 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2CF5 _ 55
        mov     ebp, esp                                ; 2CF6 _ 89. E5
        mov     eax, timerctl                           ; 2CF8 _ B8, 00000260(d)
        pop     ebp                                     ; 2CFD _ 5D
        ret                                             ; 2CFE _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2CFF _ 55
        mov     ebp, esp                                ; 2D00 _ 89. E5
        push    ebx                                     ; 2D02 _ 53
        sub     esp, 20                                 ; 2D03 _ 83. EC, 14
        sub     esp, 8                                  ; 2D06 _ 83. EC, 08
        push    32                                      ; 2D09 _ 6A, 20
        push    32                                      ; 2D0B _ 6A, 20
        call    io_out8                                 ; 2D0D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D12 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2D15 _ A1, 00000260(d)
        add     eax, 1                                  ; 2D1A _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2D1D _ A3, 00000260(d)
        mov     dword [ebp-10H], 0                      ; 2D22 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 2D29 _ C7. 45, F4, 00000000
        jmp     ?_161                                   ; 2D30 _ E9, 000000AD

?_158:  mov     eax, dword [ebp-0CH]                    ; 2D35 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D38 _ C1. E0, 04
        add     eax, ?_209                              ; 2D3B _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2D40 _ 8B. 00
        cmp     eax, 2                                  ; 2D42 _ 83. F8, 02
        jne     ?_159                                   ; 2D45 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 2D4B _ 8B. 45, F4
        shl     eax, 4                                  ; 2D4E _ C1. E0, 04
        add     eax, ?_208                              ; 2D51 _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2D56 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2D58 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2D5B _ 8B. 45, F4
        shl     eax, 4                                  ; 2D5E _ C1. E0, 04
        add     eax, ?_208                              ; 2D61 _ 05, 00000264(d)
        mov     dword [eax], edx                        ; 2D66 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2D68 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D6B _ C1. E0, 04
        add     eax, ?_208                              ; 2D6E _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2D73 _ 8B. 00
        test    eax, eax                                ; 2D75 _ 85. C0
        jnz     ?_159                                   ; 2D77 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 2D79 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D7C _ C1. E0, 04
        add     eax, ?_209                              ; 2D7F _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2D84 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2D8A _ 8B. 45, F4
        shl     eax, 4                                  ; 2D8D _ C1. E0, 04
        add     eax, ?_211                              ; 2D90 _ 05, 00000270(d)
        movzx   eax, byte [eax]                         ; 2D95 _ 0F B6. 00
        movzx   edx, al                                 ; 2D98 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2D9B _ 8B. 45, F4
        shl     eax, 4                                  ; 2D9E _ C1. E0, 04
        add     eax, ?_210                              ; 2DA1 _ 05, 0000026C(d)
        mov     eax, dword [eax]                        ; 2DA6 _ 8B. 00
        sub     esp, 8                                  ; 2DA8 _ 83. EC, 08
        push    edx                                     ; 2DAB _ 52
        push    eax                                     ; 2DAC _ 50
        call    fifo8_put                               ; 2DAD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2DB2 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2DB5 _ 8B. 45, F4
        shl     eax, 4                                  ; 2DB8 _ C1. E0, 04
        add     eax, timerctl                           ; 2DBB _ 05, 00000260(d)
        lea     ebx, [eax+4H]                           ; 2DC0 _ 8D. 58, 04
        call    getTaskTimer                            ; 2DC3 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 2DC8 _ 39. C3
        jnz     ?_159                                   ; 2DCA _ 75, 07
        mov     dword [ebp-10H], 1                      ; 2DCC _ C7. 45, F0, 00000001
?_159:  cmp     dword [ebp-10H], 1                      ; 2DD3 _ 83. 7D, F0, 01
        jnz     ?_160                                   ; 2DD7 _ 75, 05
        call    task_switch                             ; 2DD9 _ E8, FFFFFFFC(rel)
?_160:  add     dword [ebp-0CH], 1                      ; 2DDE _ 83. 45, F4, 01
?_161:  cmp     dword [ebp-0CH], 499                    ; 2DE2 _ 81. 7D, F4, 000001F3
        jle     ?_158                                   ; 2DE9 _ 0F 8E, FFFFFF46
        nop                                             ; 2DEF _ 90
        mov     ebx, dword [ebp-4H]                     ; 2DF0 _ 8B. 5D, FC
        leave                                           ; 2DF3 _ C9
        ret                                             ; 2DF4 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2DF5 _ 55
        mov     ebp, esp                                ; 2DF6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2DF8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2DFB _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2DFE _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2E01 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E04 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2E07 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E09 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E0C _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2E0F _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2E12 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2E15 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2E1C _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2E1F _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2E26 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2E29 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2E30 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2E33 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 2E36 _ 89. 50, 18
        nop                                             ; 2E39 _ 90
        pop     ebp                                     ; 2E3A _ 5D
        ret                                             ; 2E3B _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2E3C _ 55
        mov     ebp, esp                                ; 2E3D _ 89. E5
        sub     esp, 24                                 ; 2E3F _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2E42 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 2E45 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 2E48 _ 83. 7D, 08, 00
        jnz     ?_162                                   ; 2E4C _ 75, 0A
        mov     eax, 4294967295                         ; 2E4E _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2E53 _ E9, 0000009C

?_162:  mov     eax, dword [ebp+8H]                     ; 2E58 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E5B _ 8B. 40, 10
        test    eax, eax                                ; 2E5E _ 85. C0
        jnz     ?_163                                   ; 2E60 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2E62 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2E65 _ 8B. 40, 14
        or      eax, 01H                                ; 2E68 _ 83. C8, 01
        mov     edx, eax                                ; 2E6B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2E6D _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2E70 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2E73 _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2E78 _ EB, 7A

?_163:  mov     eax, dword [ebp+8H]                     ; 2E7A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2E7D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2E7F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E82 _ 8B. 40, 08
        add     edx, eax                                ; 2E85 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 2E87 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 2E8B _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2E8D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E90 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2E93 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E96 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2E99 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2E9C _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2E9F _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2EA2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2EA5 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2EA8 _ 39. C2
        jl      ?_164                                   ; 2EAA _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2EAC _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2EAF _ C7. 40, 08, 00000000
?_164:  mov     eax, dword [ebp+8H]                     ; 2EB6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2EB9 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2EBC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EBF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2EC2 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2EC5 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2EC8 _ 8B. 40, 18
        test    eax, eax                                ; 2ECB _ 85. C0
        jz      ?_165                                   ; 2ECD _ 74, 20
        mov     eax, dword [ebp+8H]                     ; 2ECF _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2ED2 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 2ED5 _ 8B. 40, 04
        cmp     eax, 2                                  ; 2ED8 _ 83. F8, 02
        jz      ?_165                                   ; 2EDB _ 74, 12
        mov     eax, dword [ebp+8H]                     ; 2EDD _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2EE0 _ 8B. 40, 18
        sub     esp, 12                                 ; 2EE3 _ 83. EC, 0C
        push    eax                                     ; 2EE6 _ 50
        call    task_run                                ; 2EE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2EEC _ 83. C4, 10
?_165:  mov     eax, 1                                  ; 2EEF _ B8, 00000001
?_166:  leave                                           ; 2EF4 _ C9
        ret                                             ; 2EF5 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 2EF6 _ 55
        mov     ebp, esp                                ; 2EF7 _ 89. E5
        sub     esp, 16                                 ; 2EF9 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2EFC _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2EFF _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2F02 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F05 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2F08 _ 39. C2
        jnz     ?_167                                   ; 2F0A _ 75, 07
        mov     eax, 4294967295                         ; 2F0C _ B8, FFFFFFFF
        jmp     ?_169                                   ; 2F11 _ EB, 51

?_167:  mov     eax, dword [ebp+8H]                     ; 2F13 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2F16 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2F18 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2F1B _ 8B. 40, 04
        add     eax, edx                                ; 2F1E _ 01. D0
        movzx   eax, byte [eax]                         ; 2F20 _ 0F B6. 00
        movzx   eax, al                                 ; 2F23 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2F26 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2F29 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2F2C _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2F2F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F32 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F35 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F38 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F3B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F3E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F41 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2F44 _ 39. C2
        jl      ?_168                                   ; 2F46 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2F48 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2F4B _ C7. 40, 04, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 2F52 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F55 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2F58 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F5B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2F5E _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2F61 _ 8B. 45, FC
?_169:  leave                                           ; 2F64 _ C9
        ret                                             ; 2F65 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 2F66 _ 55
        mov     ebp, esp                                ; 2F67 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F69 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2F6C _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2F6F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F72 _ 8B. 40, 10
        sub     edx, eax                                ; 2F75 _ 29. C2
        mov     eax, edx                                ; 2F77 _ 89. D0
        pop     ebp                                     ; 2F79 _ 5D
        ret                                             ; 2F7A _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 2F7B _ 55
        mov     ebp, esp                                ; 2F7C _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 2F7E _ 81. 7D, 0C, 000FFFFF
        jbe     ?_170                                   ; 2F85 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 2F87 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 2F8E _ 8B. 45, 0C
        shr     eax, 12                                 ; 2F91 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 2F94 _ 89. 45, 0C
?_170:  mov     eax, dword [ebp+0CH]                    ; 2F97 _ 8B. 45, 0C
        mov     edx, eax                                ; 2F9A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F9C _ 8B. 45, 08
        mov     word [eax], dx                          ; 2F9F _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 2FA2 _ 8B. 45, 10
        mov     edx, eax                                ; 2FA5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FA7 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 2FAA _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 2FAE _ 8B. 45, 10
        sar     eax, 16                                 ; 2FB1 _ C1. F8, 10
        mov     edx, eax                                ; 2FB4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FB6 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 2FB9 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 2FBC _ 8B. 45, 14
        mov     edx, eax                                ; 2FBF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FC1 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 2FC4 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2FC7 _ 8B. 45, 0C
        shr     eax, 16                                 ; 2FCA _ C1. E8, 10
        and     eax, 0FH                                ; 2FCD _ 83. E0, 0F
        mov     edx, eax                                ; 2FD0 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 2FD2 _ 8B. 45, 14
        sar     eax, 8                                  ; 2FD5 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 2FD8 _ 83. E0, F0
        or      eax, edx                                ; 2FDB _ 09. D0
        mov     edx, eax                                ; 2FDD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FDF _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 2FE2 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 2FE5 _ 8B. 45, 10
        shr     eax, 24                                 ; 2FE8 _ C1. E8, 18
        mov     edx, eax                                ; 2FEB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FED _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 2FF0 _ 88. 50, 07
        nop                                             ; 2FF3 _ 90
        pop     ebp                                     ; 2FF4 _ 5D
        ret                                             ; 2FF5 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 2FF6 _ 55
        mov     ebp, esp                                ; 2FF7 _ 89. E5
        mov     eax, dword [task_timer]                 ; 2FF9 _ A1, 000021A4(d)
        pop     ebp                                     ; 2FFE _ 5D
        ret                                             ; 2FFF _ C3
; getTaskTimer End of function

task_init:; Function begin
        push    ebp                                     ; 3000 _ 55
        mov     ebp, esp                                ; 3001 _ 89. E5
        sub     esp, 24                                 ; 3003 _ 83. EC, 18
        call    get_addr_gdt                            ; 3006 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 300B _ 89. 45, F0
        sub     esp, 8                                  ; 300E _ 83. EC, 08
        push    240                                     ; 3011 _ 68, 000000F0
        push    dword [ebp+8H]                          ; 3016 _ FF. 75, 08
        call    memman_alloc_4K                         ; 3019 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 301E _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3021 _ A3, 000021A8(d)
        mov     dword [ebp-14H], 0                      ; 3026 _ C7. 45, EC, 00000000
        jmp     ?_172                                   ; 302D _ EB, 73

?_171:  mov     edx, dword [taskctl]                    ; 302F _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-14H]                    ; 3035 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 3038 _ 6B. C0, 70
        add     eax, edx                                ; 303B _ 01. D0
        add     eax, 20                                 ; 303D _ 83. C0, 14
        mov     dword [eax], 0                          ; 3040 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3046 _ 8B. 45, EC
        add     eax, 7                                  ; 3049 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 304C _ 8B. 0D, 000021A8(d)
        lea     edx, [eax*8]                            ; 3052 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3059 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 305C _ 6B. C0, 70
        add     eax, ecx                                ; 305F _ 01. C8
        add     eax, 16                                 ; 3061 _ 83. C0, 10
        mov     dword [eax], edx                        ; 3064 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3066 _ A1, 000021A8(d)
        mov     edx, dword [ebp-14H]                    ; 306B _ 8B. 55, EC
        imul    edx, edx, 112                           ; 306E _ 6B. D2, 70
        add     edx, 16                                 ; 3071 _ 83. C2, 10
        add     eax, edx                                ; 3074 _ 01. D0
        add     eax, 8                                  ; 3076 _ 83. C0, 08
        mov     ecx, eax                                ; 3079 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 307B _ 8B. 45, EC
        add     eax, 7                                  ; 307E _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3081 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3088 _ 8B. 45, F0
        add     eax, edx                                ; 308B _ 01. D0
        push    137                                     ; 308D _ 68, 00000089
        push    ecx                                     ; 3092 _ 51
        push    103                                     ; 3093 _ 6A, 67
        push    eax                                     ; 3095 _ 50
        call    set_segmdesc                            ; 3096 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 309B _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 309E _ 83. 45, EC, 01
?_172:  cmp     dword [ebp-14H], 1                      ; 30A2 _ 83. 7D, EC, 01
        jle     ?_171                                   ; 30A6 _ 7E, 87
        call    task_alloc                              ; 30A8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 30AD _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 30B0 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 30B3 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 30BA _ A1, 000021A8(d)
        mov     dword [eax], 1                          ; 30BF _ C7. 00, 00000001
        mov     eax, dword [taskctl]                    ; 30C5 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 30CA _ C7. 40, 04, 00000000
        mov     eax, dword [taskctl]                    ; 30D1 _ A1, 000021A8(d)
        mov     edx, dword [ebp-0CH]                    ; 30D6 _ 8B. 55, F4
        mov     dword [eax+8H], edx                     ; 30D9 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 30DC _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 30DF _ 8B. 00
        sub     esp, 12                                 ; 30E1 _ 83. EC, 0C
        push    eax                                     ; 30E4 _ 50
        call    load_tr                                 ; 30E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30EA _ 83. C4, 10
        call    timer_alloc                             ; 30ED _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 30F2 _ A3, 000021A4(d)
        mov     eax, dword [task_timer]                 ; 30F7 _ A1, 000021A4(d)
        sub     esp, 8                                  ; 30FC _ 83. EC, 08
        push    100                                     ; 30FF _ 6A, 64
        push    eax                                     ; 3101 _ 50
        call    timer_setTime                           ; 3102 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3107 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 310A _ 8B. 45, F4
        leave                                           ; 310D _ C9
        ret                                             ; 310E _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 310F _ 55
        mov     ebp, esp                                ; 3110 _ 89. E5
        sub     esp, 16                                 ; 3112 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3115 _ C7. 45, F8, 00000000
        jmp     ?_175                                   ; 311C _ E9, 000000DE

?_173:  mov     edx, dword [taskctl]                    ; 3121 _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-8H]                     ; 3127 _ 8B. 45, F8
        imul    eax, eax, 112                           ; 312A _ 6B. C0, 70
        add     eax, edx                                ; 312D _ 01. D0
        add     eax, 20                                 ; 312F _ 83. C0, 14
        mov     eax, dword [eax]                        ; 3132 _ 8B. 00
        test    eax, eax                                ; 3134 _ 85. C0
        jne     ?_174                                   ; 3136 _ 0F 85, 000000BF
        mov     eax, dword [taskctl]                    ; 313C _ A1, 000021A8(d)
        mov     edx, dword [ebp-8H]                     ; 3141 _ 8B. 55, F8
        imul    edx, edx, 112                           ; 3144 _ 6B. D2, 70
        add     edx, 16                                 ; 3147 _ 83. C2, 10
        add     eax, edx                                ; 314A _ 01. D0
        mov     dword [ebp-4H], eax                     ; 314C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 314F _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3152 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3159 _ 8B. 45, FC
        mov     dword [eax+2CH], 514                    ; 315C _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-4H]                     ; 3163 _ 8B. 45, FC
        mov     dword [eax+30H], 0                      ; 3166 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-4H]                     ; 316D _ 8B. 45, FC
        mov     dword [eax+34H], 0                      ; 3170 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-4H]                     ; 3177 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 317A _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 3181 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3184 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 318B _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 318E _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-8H]                     ; 3195 _ 8B. 45, F8
        add     eax, 1                                  ; 3198 _ 83. C0, 01
        shl     eax, 9                                  ; 319B _ C1. E0, 09
        mov     edx, eax                                ; 319E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 31A0 _ 8B. 45, FC
        mov     dword [eax+40H], edx                    ; 31A3 _ 89. 50, 40
        mov     eax, dword [ebp-4H]                     ; 31A6 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 31A9 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 31B0 _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 31B3 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 31BA _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 31BD _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 31C4 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 31C7 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 31CE _ 8B. 45, FC
        mov     dword [eax+60H], 0                      ; 31D1 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-4H]                     ; 31D8 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 31DB _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 31E2 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 31E5 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 31EC _ 8B. 45, FC
        mov     dword [eax+6CH], 1073741824             ; 31EF _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-4H]                     ; 31F6 _ 8B. 45, FC
        jmp     ?_176                                   ; 31F9 _ EB, 13

?_174:  add     dword [ebp-8H], 1                       ; 31FB _ 83. 45, F8, 01
?_175:  cmp     dword [ebp-8H], 1                       ; 31FF _ 83. 7D, F8, 01
        jle     ?_173                                   ; 3203 _ 0F 8E, FFFFFF18
        mov     eax, 0                                  ; 3209 _ B8, 00000000
?_176:  leave                                           ; 320E _ C9
        ret                                             ; 320F _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3210 _ 55
        mov     ebp, esp                                ; 3211 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3213 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3216 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 321D _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3222 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx]                        ; 3228 _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 322A _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 322D _ 89. 4C 90, 08
        mov     eax, dword [taskctl]                    ; 3231 _ A1, 000021A8(d)
        mov     edx, dword [eax]                        ; 3236 _ 8B. 10
        add     edx, 1                                  ; 3238 _ 83. C2, 01
        mov     dword [eax], edx                        ; 323B _ 89. 10
        nop                                             ; 323D _ 90
        pop     ebp                                     ; 323E _ 5D
        ret                                             ; 323F _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3240 _ 55
        mov     ebp, esp                                ; 3241 _ 89. E5
        sub     esp, 8                                  ; 3243 _ 83. EC, 08
        mov     eax, dword [task_timer]                 ; 3246 _ A1, 000021A4(d)
        sub     esp, 8                                  ; 324B _ 83. EC, 08
        push    100                                     ; 324E _ 6A, 64
        push    eax                                     ; 3250 _ 50
        call    timer_setTime                           ; 3251 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3256 _ 83. C4, 10
        mov     eax, dword [taskctl]                    ; 3259 _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 325E _ 8B. 00
        cmp     eax, 1                                  ; 3260 _ 83. F8, 01
        jle     ?_178                                   ; 3263 _ 7E, 50
        mov     eax, dword [taskctl]                    ; 3265 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 326A _ 8B. 50, 04
        add     edx, 1                                  ; 326D _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 3270 _ 89. 50, 04
        mov     eax, dword [taskctl]                    ; 3273 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 3278 _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 327B _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 3280 _ 8B. 00
        cmp     edx, eax                                ; 3282 _ 39. C2
        jnz     ?_177                                   ; 3284 _ 75, 0C
        mov     eax, dword [taskctl]                    ; 3286 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 328B _ C7. 40, 04, 00000000
?_177:  mov     eax, dword [taskctl]                    ; 3292 _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3297 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 329D _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 32A0 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 32A4 _ 8B. 00
        sub     esp, 8                                  ; 32A6 _ 83. EC, 08
        push    eax                                     ; 32A9 _ 50
        push    0                                       ; 32AA _ 6A, 00
        call    farjmp                                  ; 32AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 32B1 _ 83. C4, 10
        nop                                             ; 32B4 _ 90
?_178:  nop                                             ; 32B5 _ 90
        leave                                           ; 32B6 _ C9
        ret                                             ; 32B7 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 32B8 _ 55
        mov     ebp, esp                                ; 32B9 _ 89. E5
        sub     esp, 24                                 ; 32BB _ 83. EC, 18
        mov     byte [ebp-0DH], 0                       ; 32BE _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 32C2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 32C5 _ 8B. 40, 04
        cmp     eax, 2                                  ; 32C8 _ 83. F8, 02
        jnz     ?_179                                   ; 32CB _ 75, 1B
        mov     eax, dword [taskctl]                    ; 32CD _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 32D2 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 32D8 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 32DB _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 32DF _ 39. 45, 08
        jnz     ?_179                                   ; 32E2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 32E4 _ C6. 45, F3, 01
?_179:  mov     dword [ebp-0CH], 0                      ; 32E8 _ C7. 45, F4, 00000000
        jmp     ?_181                                   ; 32EF _ EB, 15

?_180:  mov     eax, dword [taskctl]                    ; 32F1 _ A1, 000021A8(d)
        mov     edx, dword [ebp-0CH]                    ; 32F6 _ 8B. 55, F4
        mov     eax, dword [eax+edx*4+8H]               ; 32F9 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 32FD _ 39. 45, 08
        jz      ?_182                                   ; 3300 _ 74, 12
        add     dword [ebp-0CH], 1                      ; 3302 _ 83. 45, F4, 01
?_181:  mov     eax, dword [taskctl]                    ; 3306 _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 330B _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 330D _ 39. 45, F4
        jl      ?_180                                   ; 3310 _ 7C, DF
        jmp     ?_183                                   ; 3312 _ EB, 01

?_182:  nop                                             ; 3314 _ 90
?_183:  mov     eax, dword [taskctl]                    ; 3315 _ A1, 000021A8(d)
        mov     edx, dword [eax]                        ; 331A _ 8B. 10
        sub     edx, 1                                  ; 331C _ 83. EA, 01
        mov     dword [eax], edx                        ; 331F _ 89. 10
        mov     eax, dword [taskctl]                    ; 3321 _ A1, 000021A8(d)
        mov     eax, dword [eax+4H]                     ; 3326 _ 8B. 40, 04
        cmp     dword [ebp-0CH], eax                    ; 3329 _ 39. 45, F4
        jge     ?_185                                   ; 332C _ 7D, 30
        mov     eax, dword [taskctl]                    ; 332E _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 3333 _ 8B. 50, 04
        sub     edx, 1                                  ; 3336 _ 83. EA, 01
        mov     dword [eax+4H], edx                     ; 3339 _ 89. 50, 04
        jmp     ?_185                                   ; 333C _ EB, 20

?_184:  mov     edx, dword [taskctl]                    ; 333E _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-0CH]                    ; 3344 _ 8B. 45, F4
        lea     ecx, [eax+1H]                           ; 3347 _ 8D. 48, 01
        mov     eax, dword [taskctl]                    ; 334A _ A1, 000021A8(d)
        mov     ecx, dword [edx+ecx*4+8H]               ; 334F _ 8B. 4C 8A, 08
        mov     edx, dword [ebp-0CH]                    ; 3353 _ 8B. 55, F4
        mov     dword [eax+edx*4+8H], ecx               ; 3356 _ 89. 4C 90, 08
        add     dword [ebp-0CH], 1                      ; 335A _ 83. 45, F4, 01
?_185:  mov     eax, dword [taskctl]                    ; 335E _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 3363 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 3365 _ 39. 45, F4
        jl      ?_184                                   ; 3368 _ 7C, D4
        mov     eax, dword [ebp+8H]                     ; 336A _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 336D _ C7. 40, 04, 00000001
        cmp     byte [ebp-0DH], 0                       ; 3374 _ 80. 7D, F3, 00
        jz      ?_187                                   ; 3378 _ 74, 41
        mov     eax, dword [taskctl]                    ; 337A _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 337F _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 3382 _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 3387 _ 8B. 00
        cmp     edx, eax                                ; 3389 _ 39. C2
        jl      ?_186                                   ; 338B _ 7C, 0C
        mov     eax, dword [taskctl]                    ; 338D _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 3392 _ C7. 40, 04, 00000000
?_186:  mov     eax, dword [taskctl]                    ; 3399 _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 339E _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 33A4 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 33A7 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 33AB _ 8B. 00
        sub     esp, 8                                  ; 33AD _ 83. EC, 08
        push    eax                                     ; 33B0 _ 50
        push    0                                       ; 33B1 _ 6A, 00
        call    farjmp                                  ; 33B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 33B8 _ 83. C4, 10
?_187:  nop                                             ; 33BB _ 90
        leave                                           ; 33BC _ C9
        ret                                             ; 33BD _ C3
; task_sleep End of function



?_188:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_189:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_190:                                                  ; byte
        db 41H, 00H                                     ; 001E _ A.

?_191:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0020 _ 3[sec].

?_192:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0027 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 002F _ sk B.

?_193:                                                  ; byte
        db 42H, 00H                                     ; 0034 _ B.

?_194:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0036 _ Page is:
        db 20H, 00H                                     ; 003E _  .

?_195:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0040 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0048 _ Low: .

?_196:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 004E _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0056 _ High: .

?_197:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005D _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0065 _ w: .

?_198:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0069 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0071 _ gh: .

?_199:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0076 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_200:  db 00H                                          ; 0002 _ .

?_201:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2247: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2288:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2343:                                            ; byte
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

closebtn.2470:                                          ; byte
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

?_202:  resw    1                                       ; 0004

?_203:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

?_204:  resd    1                                       ; 0020

mouseInfo:                                              ; byte
        resb    28                                      ; 0024

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_205:  resd    1                                       ; 00EC

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

sheet_win2:                                             ; dword
        resd    1                                       ; 022C

sheet_back:                                             ; dword
        resd    1                                       ; 0230

sheet_mouse:                                            ; dword
        resd    1                                       ; 0234

task_a.2241:                                            ; dword
        resd    1                                       ; 0238

task_b.2242:                                            ; dword
        resd    1                                       ; 023C

cnt.2243: resd  1                                       ; 0240

line.2246:                                              ; dword
        resd    1                                       ; 0244

str.2386:                                               ; byte
        resb    1                                       ; 0248

?_206:  resb    9                                       ; 0249

?_207:  resb    2                                       ; 0252

line.2419:                                              ; dword
        resd    1                                       ; 0254

pos.2418: resd  2                                       ; 0258

timerctl:                                               ; byte
        resd    1                                       ; 0260

?_208:                                                  ; byte
        resb    4                                       ; 0264

?_209:                                                  ; byte
        resb    4                                       ; 0268

?_210:                                                  ; byte
        resb    4                                       ; 026C

?_211:                                                  ; byte
        resb    7988                                    ; 0270

task_timer:                                             ; dword
        resd    1                                       ; 21A4

taskctl: resd   1                                       ; 21A8


