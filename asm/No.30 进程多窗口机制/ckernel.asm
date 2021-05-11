; Disassembly of file: ckernel.o
; Mon May 10 15:22:22 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






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
        mov     dword [ebp-60H], eax                    ; 0029 _ 89. 45, A0
        movzx   eax, word [?_205]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-5CH], eax                    ; 0034 _ 89. 45, A4
        movzx   eax, word [?_206]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-58H], eax                    ; 003F _ 89. 45, A8
        call    getTimerController                      ; 0042 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], eax                    ; 0047 _ 89. 45, AC
        call    init_pit                                ; 004A _ E8, FFFFFFFC(rel)
        push    0                                       ; 004F _ 6A, 00
        push    timerbuf                                ; 0051 _ 68, 0000021C(d)
        push    8                                       ; 0056 _ 6A, 08
        push    timerInfo                               ; 0058 _ 68, 00000200(d)
        call    fifo8_init                              ; 005D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0062 _ 83. C4, 10
        call    timer_alloc                             ; 0065 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-50H], eax                    ; 006A _ 89. 45, B0
        sub     esp, 4                                  ; 006D _ 83. EC, 04
        push    10                                      ; 0070 _ 6A, 0A
        push    timerInfo                               ; 0072 _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 0077 _ FF. 75, B0
        call    timer_init                              ; 007A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 007F _ 83. C4, 10
        sub     esp, 8                                  ; 0082 _ 83. EC, 08
        push    100                                     ; 0085 _ 6A, 64
        push    dword [ebp-50H]                         ; 0087 _ FF. 75, B0
        call    timer_setTime                           ; 008A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008F _ 83. C4, 10
        call    timer_alloc                             ; 0092 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 0097 _ 89. 45, B4
        sub     esp, 4                                  ; 009A _ 83. EC, 04
        push    2                                       ; 009D _ 6A, 02
        push    timerInfo                               ; 009F _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 00A4 _ FF. 75, B4
        call    timer_init                              ; 00A7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AC _ 83. C4, 10
        sub     esp, 8                                  ; 00AF _ 83. EC, 08
        push    300                                     ; 00B2 _ 68, 0000012C
        push    dword [ebp-4CH]                         ; 00B7 _ FF. 75, B4
        call    timer_setTime                           ; 00BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BF _ 83. C4, 10
        call    timer_alloc                             ; 00C2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 00C7 _ 89. 45, B8
        sub     esp, 4                                  ; 00CA _ 83. EC, 04
        push    1                                       ; 00CD _ 6A, 01
        push    timerInfo                               ; 00CF _ 68, 00000200(d)
        push    dword [ebp-48H]                         ; 00D4 _ FF. 75, B8
        call    timer_init                              ; 00D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DC _ 83. C4, 10
        sub     esp, 8                                  ; 00DF _ 83. EC, 08
        push    50                                      ; 00E2 _ 6A, 32
        push    dword [ebp-48H]                         ; 00E4 _ FF. 75, B8
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
        mov     dword [ebp-44H], eax                    ; 0142 _ 89. 45, BC
        call    get_memory_block_count                  ; 0145 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 014A _ 89. 45, C0
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
        mov     dword [ebp-3CH], eax                    ; 018D _ 89. 45, C4
        mov     eax, dword [ebp-3CH]                    ; 0190 _ 8B. 45, C4
        sub     esp, 12                                 ; 0193 _ 83. EC, 0C
        push    eax                                     ; 0196 _ 50
        call    intToHexStr                             ; 0197 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019C _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 019F _ 89. 45, C8
        mov     eax, dword [memman]                     ; 01A2 _ A1, 00000008(d)
        push    dword [ebp-58H]                         ; 01A7 _ FF. 75, A8
        push    dword [ebp-5CH]                         ; 01AA _ FF. 75, A4
        push    dword [ebp-60H]                         ; 01AD _ FF. 75, A0
        push    eax                                     ; 01B0 _ 50
        call    shtctl_init                             ; 01B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B6 _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 01B9 _ A3, 00000224(d)
        mov     eax, dword [shtctl]                     ; 01BE _ A1, 00000224(d)
        sub     esp, 12                                 ; 01C3 _ 83. EC, 0C
        push    eax                                     ; 01C6 _ 50
        call    sheet_alloc                             ; 01C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CC _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01CF _ A3, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 01D4 _ A1, 00000224(d)
        sub     esp, 12                                 ; 01D9 _ 83. EC, 0C
        push    eax                                     ; 01DC _ 50
        call    sheet_alloc                             ; 01DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E2 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01E5 _ A3, 00000230(d)
        mov     eax, dword [ebp-5CH]                    ; 01EA _ 8B. 45, A4
        imul    eax, dword [ebp-58H]                    ; 01ED _ 0F AF. 45, A8
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
        push    dword [ebp-58H]                         ; 0212 _ FF. 75, A8
        push    dword [ebp-5CH]                         ; 0215 _ FF. 75, A4
        push    eax                                     ; 0218 _ 50
        call    init_screen8                            ; 0219 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 021E _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0221 _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 0227 _ A1, 0000022C(d)
        sub     esp, 12                                 ; 022C _ 83. EC, 0C
        push    99                                      ; 022F _ 6A, 63
        push    dword [ebp-58H]                         ; 0231 _ FF. 75, A8
        push    dword [ebp-5CH]                         ; 0234 _ FF. 75, A4
        push    edx                                     ; 0237 _ 52
        push    eax                                     ; 0238 _ 50
        call    sheet_setbuf                            ; 0239 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 023E _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 0241 _ A1, 00000230(d)
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
        mov     edx, dword [sheet_back]                 ; 026F _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0275 _ A1, 00000224(d)
        push    0                                       ; 027A _ 6A, 00
        push    0                                       ; 027C _ 6A, 00
        push    edx                                     ; 027E _ 52
        push    eax                                     ; 027F _ 50
        call    sheet_slide                             ; 0280 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0285 _ 83. C4, 10
        mov     eax, dword [ebp-5CH]                    ; 0288 _ 8B. 45, A4
        sub     eax, 16                                 ; 028B _ 83. E8, 10
        mov     edx, eax                                ; 028E _ 89. C2
        shr     edx, 31                                 ; 0290 _ C1. EA, 1F
        add     eax, edx                                ; 0293 _ 01. D0
        sar     eax, 1                                  ; 0295 _ D1. F8
        mov     dword [mx], eax                         ; 0297 _ A3, 000000F0(d)
        mov     eax, dword [ebp-58H]                    ; 029C _ 8B. 45, A8
        sub     eax, 44                                 ; 029F _ 83. E8, 2C
        mov     edx, eax                                ; 02A2 _ 89. C2
        shr     edx, 31                                 ; 02A4 _ C1. EA, 1F
        add     eax, edx                                ; 02A7 _ 01. D0
        sar     eax, 1                                  ; 02A9 _ D1. F8
        mov     dword [my], eax                         ; 02AB _ A3, 000000F4(d)
        mov     ebx, dword [my]                         ; 02B0 _ 8B. 1D, 000000F4(d)
        mov     ecx, dword [mx]                         ; 02B6 _ 8B. 0D, 000000F0(d)
        mov     edx, dword [sheet_mouse]                ; 02BC _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 02C2 _ A1, 00000224(d)
        push    ebx                                     ; 02C7 _ 53
        push    ecx                                     ; 02C8 _ 51
        push    edx                                     ; 02C9 _ 52
        push    eax                                     ; 02CA _ 50
        call    sheet_slide                             ; 02CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D0 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02D3 _ A1, 00000224(d)
        sub     esp, 4                                  ; 02D8 _ 83. EC, 04
        push    4                                       ; 02DB _ 6A, 04
        push    100                                     ; 02DD _ 6A, 64
        push    170                                     ; 02DF _ 68, 000000AA
        push    150                                     ; 02E4 _ 68, 00000096
        push    300                                     ; 02E9 _ 68, 0000012C
        push    ?_188                                   ; 02EE _ 68, 00000000(d)
        push    eax                                     ; 02F3 _ 50
        call    messageBox                              ; 02F4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02F9 _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02FC _ A3, 00000228(d)
        mov     edx, dword [sheet_back]                 ; 0301 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0307 _ A1, 00000224(d)
        sub     esp, 4                                  ; 030C _ 83. EC, 04
        push    0                                       ; 030F _ 6A, 00
        push    edx                                     ; 0311 _ 52
        push    eax                                     ; 0312 _ 50
        call    sheet_level_updown                      ; 0313 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0318 _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 031B _ 8B. 15, 00000230(d)
        mov     eax, dword [shtctl]                     ; 0321 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0326 _ 83. EC, 04
        push    50                                      ; 0329 _ 6A, 32
        push    edx                                     ; 032B _ 52
        push    eax                                     ; 032C _ 50
        call    sheet_level_updown                      ; 032D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0332 _ 83. C4, 10
        call    io_sti                                  ; 0335 _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 033A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 033F _ 89. 45, CC
        mov     eax, dword [memman]                     ; 0342 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0347 _ 83. EC, 0C
        push    eax                                     ; 034A _ 50
        call    task_init                               ; 034B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0350 _ 83. C4, 10
        mov     dword [task_a.2254], eax                ; 0353 _ A3, 00000234(d)
        mov     eax, dword [task_a.2254]                ; 0358 _ A1, 00000234(d)
        mov     dword [?_207], eax                      ; 035D _ A3, 00000020(d)
        mov     edx, dword [task_b.2244]                ; 0362 _ 8B. 15, 00000238(d)
        mov     eax, dword [shtctl]                     ; 0368 _ A1, 00000224(d)
        push    3                                       ; 036D _ 6A, 03
        push    30                                      ; 036F _ 6A, 1E
        push    150                                     ; 0371 _ 68, 00000096
        push    50                                      ; 0376 _ 6A, 32
        push    150                                     ; 0378 _ 68, 00000096
        push    ?_189                                   ; 037D _ 68, 00000008(d)
        push    edx                                     ; 0382 _ 52
        push    eax                                     ; 0383 _ 50
        call    messageBoxToTask                        ; 0384 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0389 _ 83. C4, 20
        mov     dword [ebp-2CH], eax                    ; 038C _ 89. 45, D4
        mov     edx, dword [?_209]                      ; 038F _ 8B. 15, 0000023C(d)
        mov     eax, dword [shtctl]                     ; 0395 _ A1, 00000224(d)
        push    2                                       ; 039A _ 6A, 02
        push    30                                      ; 039C _ 6A, 1E
        push    300                                     ; 039E _ 68, 0000012C
        push    50                                      ; 03A3 _ 6A, 32
        push    150                                     ; 03A5 _ 68, 00000096
        push    ?_190                                   ; 03AA _ 68, 0000000E(d)
        push    edx                                     ; 03AF _ 52
        push    eax                                     ; 03B0 _ 50
        call    messageBoxToTask                        ; 03B1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03B6 _ 83. C4, 20
        mov     dword [ebp-28H], eax                    ; 03B9 _ 89. 45, D8
        mov     edx, dword [?_210]                      ; 03BC _ 8B. 15, 00000240(d)
        mov     eax, dword [shtctl]                     ; 03C2 _ A1, 00000224(d)
        push    1                                       ; 03C7 _ 6A, 01
        push    30                                      ; 03C9 _ 6A, 1E
        push    450                                     ; 03CB _ 68, 000001C2
        push    50                                      ; 03D0 _ 6A, 32
        push    150                                     ; 03D2 _ 68, 00000096
        push    ?_191                                   ; 03D7 _ 68, 00000014(d)
        push    edx                                     ; 03DC _ 52
        push    eax                                     ; 03DD _ 50
        call    messageBoxToTask                        ; 03DE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03E3 _ 83. C4, 20
        mov     dword [ebp-24H], eax                    ; 03E6 _ 89. 45, DC
        call    getTaskctl                              ; 03E9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [eax]                        ; 03EE _ 8B. 00
        sub     esp, 12                                 ; 03F0 _ 83. EC, 0C
        push    eax                                     ; 03F3 _ 50
        call    intToHexStr                             ; 03F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03F9 _ 83. C4, 10
        mov     ecx, eax                                ; 03FC _ 89. C1
        mov     edx, dword [sheet_back]                 ; 03FE _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0404 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0409 _ 83. EC, 08
        push    ecx                                     ; 040C _ 51
        push    7                                       ; 040D _ 6A, 07
        push    0                                       ; 040F _ 6A, 00
        push    0                                       ; 0411 _ 6A, 00
        push    edx                                     ; 0413 _ 52
        push    eax                                     ; 0414 _ 50
        call    showString                              ; 0415 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 041A _ 83. C4, 20
        mov     byte [ebp-6DH], 0                       ; 041D _ C6. 45, 93, 00
        mov     dword [ebp-6CH], 7                      ; 0421 _ C7. 45, 94, 00000007
        mov     dword [ebp-68H], 0                      ; 0428 _ C7. 45, 98, 00000000
        mov     edx, dword [sheet_win]                  ; 042F _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0435 _ A1, 00000224(d)
        sub     esp, 8                                  ; 043A _ 83. EC, 08
        push    ?_192                                   ; 043D _ 68, 0000001A(d)
        push    10                                      ; 0442 _ 6A, 0A
        push    63                                      ; 0444 _ 6A, 3F
        push    8                                       ; 0446 _ 6A, 08
        push    edx                                     ; 0448 _ 52
        push    eax                                     ; 0449 _ 50
        call    showString                              ; 044A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 044F _ 83. C4, 20
        mov     dword [ebp-64H], 0                      ; 0452 _ C7. 45, 9C, 00000000
?_001:  call    io_sti                                  ; 0459 _ E8, FFFFFFFC(rel)
        call    io_cli                                  ; 045E _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0463 _ 83. EC, 0C
        push    keyInfo                                 ; 0466 _ 68, 00000008(d)
        call    fifo8_status                            ; 046B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0470 _ 83. C4, 10
        mov     ebx, eax                                ; 0473 _ 89. C3
        sub     esp, 12                                 ; 0475 _ 83. EC, 0C
        push    mouseInfo                               ; 0478 _ 68, 00000024(d)
        call    fifo8_status                            ; 047D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0482 _ 83. C4, 10
        add     ebx, eax                                ; 0485 _ 01. C3
        sub     esp, 12                                 ; 0487 _ 83. EC, 0C
        push    timerInfo                               ; 048A _ 68, 00000200(d)
        call    fifo8_status                            ; 048F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0494 _ 83. C4, 10
        add     eax, ebx                                ; 0497 _ 01. D8
        test    eax, eax                                ; 0499 _ 85. C0
        jnz     ?_002                                   ; 049B _ 75, 07
        call    io_sti                                  ; 049D _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04A2 _ EB, B5

?_002:  sub     esp, 12                                 ; 04A4 _ 83. EC, 0C
        push    keyInfo                                 ; 04A7 _ 68, 00000008(d)
        call    fifo8_status                            ; 04AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04B1 _ 83. C4, 10
        test    eax, eax                                ; 04B4 _ 85. C0
        je      ?_008                                   ; 04B6 _ 0F 84, 00000317
        call    io_sti                                  ; 04BC _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 04C1 _ 83. EC, 0C
        push    keyInfo                                 ; 04C4 _ 68, 00000008(d)
        call    fifo8_get                               ; 04C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04CE _ 83. C4, 10
        mov     byte [ebp-6DH], al                      ; 04D1 _ 88. 45, 93
        cmp     byte [ebp-6DH], 28                      ; 04D4 _ 80. 7D, 93, 1C
        jnz     ?_003                                   ; 04D8 _ 75, 59
        mov     ebx, dword [cnt.2255]                   ; 04DA _ 8B. 1D, 00000244(d)
        mov     eax, dword [sheet_back]                 ; 04E0 _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 04E5 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 04E7 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04ED _ A1, 00000224(d)
        sub     esp, 4                                  ; 04F2 _ 83. EC, 04
        push    7                                       ; 04F5 _ 6A, 07
        push    dword [ebp-5CH]                         ; 04F7 _ FF. 75, A4
        push    ebx                                     ; 04FA _ 53
        push    ecx                                     ; 04FB _ 51
        push    dword [ebp-44H]                         ; 04FC _ FF. 75, BC
        push    edx                                     ; 04FF _ 52
        push    eax                                     ; 0500 _ 50
        call    showMemInfo                             ; 0501 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0506 _ 83. C4, 20
        mov     eax, dword [cnt.2255]                   ; 0509 _ A1, 00000244(d)
        add     eax, 1                                  ; 050E _ 83. C0, 01
        mov     dword [cnt.2255], eax                   ; 0511 _ A3, 00000244(d)
        mov     eax, dword [cnt.2255]                   ; 0516 _ A1, 00000244(d)
        cmp     dword [ebp-40H], eax                    ; 051B _ 39. 45, C0
        jg      ?_001                                   ; 051E _ 0F 8F, FFFFFF35
        mov     dword [cnt.2255], 0                     ; 0524 _ C7. 05, 00000244(d), 00000000
        jmp     ?_001                                   ; 052E _ E9, FFFFFF26

?_003:  movzx   eax, byte [ebp-6DH]                     ; 0533 _ 0F B6. 45, 93
        movzx   eax, byte [keytable+eax]                ; 0537 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 053E _ 84. C0
        jz      ?_004                                   ; 0540 _ 74, 18
        cmp     byte [ebp-6DH], 15                      ; 0542 _ 80. 7D, 93, 0F
        jbe     ?_004                                   ; 0546 _ 76, 12
        cmp     byte [ebp-6DH], 83                      ; 0548 _ 80. 7D, 93, 53
        ja      ?_004                                   ; 054C _ 77, 0C
        mov     eax, dword [line.2258]                  ; 054E _ A1, 00000248(d)
        cmp     eax, 142                                ; 0553 _ 3D, 0000008E
        jle     ?_005                                   ; 0558 _ 7E, 18
?_004:  cmp     byte [ebp-6DH], 14                      ; 055A _ 80. 7D, 93, 0E
        jne     ?_001                                   ; 055E _ 0F 85, FFFFFEF5
        mov     eax, dword [line.2258]                  ; 0564 _ A1, 00000248(d)
        cmp     eax, 7                                  ; 0569 _ 83. F8, 07
        jle     ?_001                                   ; 056C _ 0F 8E, FFFFFEE7
?_005:  movzx   eax, byte [ebp-6DH]                     ; 0572 _ 0F B6. 45, 93
        movzx   eax, byte [keytable+eax]                ; 0576 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 057D _ 84. C0
        je      ?_007                                   ; 057F _ 0F 84, 00000128
        cmp     byte [ebp-6DH], 15                      ; 0585 _ 80. 7D, 93, 0F
        jbe     ?_007                                   ; 0589 _ 0F 86, 0000011E
        cmp     byte [ebp-6DH], 83                      ; 058F _ 80. 7D, 93, 53
        ja      ?_007                                   ; 0593 _ 0F 87, 00000114
        mov     eax, dword [line.2258]                  ; 0599 _ A1, 00000248(d)
        cmp     eax, 142                                ; 059E _ 3D, 0000008E
        jg      ?_007                                   ; 05A3 _ 0F 8F, 00000104
        mov     eax, dword [pos.2259]                   ; 05A9 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 05AE _ 8D. 78, 28
        mov     eax, dword [line.2258]                  ; 05B1 _ A1, 00000248(d)
        lea     esi, [eax+0EH]                          ; 05B6 _ 8D. 70, 0E
        mov     eax, dword [pos.2259]                   ; 05B9 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05BE _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 05C1 _ A1, 00000248(d)
        lea     ecx, [eax+8H]                           ; 05C6 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 05C9 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 05CE _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 05D1 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 05D6 _ 8B. 00
        sub     esp, 4                                  ; 05D8 _ 83. EC, 04
        push    edi                                     ; 05DB _ 57
        push    esi                                     ; 05DC _ 56
        push    ebx                                     ; 05DD _ 53
        push    ecx                                     ; 05DE _ 51
        push    7                                       ; 05DF _ 6A, 07
        push    edx                                     ; 05E1 _ 52
        push    eax                                     ; 05E2 _ 50
        call    boxfill8                                ; 05E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05E8 _ 83. C4, 20
        mov     eax, dword [pos.2259]                   ; 05EB _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 05F0 _ 8D. 78, 2A
        mov     eax, dword [line.2258]                  ; 05F3 _ A1, 00000248(d)
        lea     esi, [eax+10H]                          ; 05F8 _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 05FB _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0600 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 0603 _ A1, 00000248(d)
        lea     ecx, [eax+8H]                           ; 0608 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 060B _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0611 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0616 _ 83. EC, 08
        push    edi                                     ; 0619 _ 57
        push    esi                                     ; 061A _ 56
        push    ebx                                     ; 061B _ 53
        push    ecx                                     ; 061C _ 51
        push    edx                                     ; 061D _ 52
        push    eax                                     ; 061E _ 50
        call    sheet_refresh                           ; 061F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0624 _ 83. C4, 20
        movzx   eax, byte [ebp-6DH]                     ; 0627 _ 0F B6. 45, 93
        movzx   eax, byte [keytable+eax]                ; 062B _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0632 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0635 _ C6. 45, E3, 00
        mov     eax, dword [pos.2259]                   ; 0639 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 063E _ 8D. 70, 1A
        mov     eax, dword [line.2258]                  ; 0641 _ A1, 00000248(d)
        lea     ebx, [eax+8H]                           ; 0646 _ 8D. 58, 08
        mov     edx, dword [sheet_win]                  ; 0649 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 064F _ A1, 00000224(d)
        sub     esp, 8                                  ; 0654 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0657 _ 8D. 4D, E2
        push    ecx                                     ; 065A _ 51
        push    0                                       ; 065B _ 6A, 00
        push    esi                                     ; 065D _ 56
        push    ebx                                     ; 065E _ 53
        push    edx                                     ; 065F _ 52
        push    eax                                     ; 0660 _ 50
        call    showString                              ; 0661 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0666 _ 83. C4, 20
        mov     eax, dword [line.2258]                  ; 0669 _ A1, 00000248(d)
        add     eax, 8                                  ; 066E _ 83. C0, 08
        mov     dword [line.2258], eax                  ; 0671 _ A3, 00000248(d)
        mov     eax, dword [sheet_win]                  ; 0676 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 067B _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 067E _ 8D. 50, F0
        mov     eax, dword [line.2258]                  ; 0681 _ A1, 00000248(d)
        cmp     edx, eax                                ; 0686 _ 39. C2
        jg      ?_006                                   ; 0688 _ 7F, 17
        mov     eax, dword [pos.2259]                   ; 068A _ A1, 00000074(d)
        add     eax, 16                                 ; 068F _ 83. C0, 10
        mov     dword [pos.2259], eax                   ; 0692 _ A3, 00000074(d)
        mov     dword [line.2258], 0                    ; 0697 _ C7. 05, 00000248(d), 00000000
?_006:  mov     dword [ebp-64H], 0                      ; 06A1 _ C7. 45, 9C, 00000000
        jmp     ?_014                                   ; 06A8 _ E9, 0000030D

?_007:  cmp     byte [ebp-6DH], 14                      ; 06AD _ 80. 7D, 93, 0E
        jne     ?_001                                   ; 06B1 _ 0F 85, FFFFFDA2
        mov     eax, dword [line.2258]                  ; 06B7 _ A1, 00000248(d)
        cmp     eax, 7                                  ; 06BC _ 83. F8, 07
        jle     ?_001                                   ; 06BF _ 0F 8E, FFFFFD94
        mov     eax, dword [pos.2259]                   ; 06C5 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06CA _ 8D. 78, 28
        mov     eax, dword [line.2258]                  ; 06CD _ A1, 00000248(d)
        lea     esi, [eax+10H]                          ; 06D2 _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 06D5 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06DA _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 06DD _ A1, 00000248(d)
        lea     ecx, [eax+8H]                           ; 06E2 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 06E5 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 06EA _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 06ED _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 06F2 _ 8B. 00
        sub     esp, 4                                  ; 06F4 _ 83. EC, 04
        push    edi                                     ; 06F7 _ 57
        push    esi                                     ; 06F8 _ 56
        push    ebx                                     ; 06F9 _ 53
        push    ecx                                     ; 06FA _ 51
        push    7                                       ; 06FB _ 6A, 07
        push    edx                                     ; 06FD _ 52
        push    eax                                     ; 06FE _ 50
        call    boxfill8                                ; 06FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0704 _ 83. C4, 20
        mov     eax, dword [pos.2259]                   ; 0707 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 070C _ 8D. 78, 2A
        mov     eax, dword [line.2258]                  ; 070F _ A1, 00000248(d)
        lea     esi, [eax+10H]                          ; 0714 _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 0717 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 071C _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 071F _ A1, 00000248(d)
        lea     ecx, [eax+8H]                           ; 0724 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0727 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 072D _ A1, 00000224(d)
        sub     esp, 8                                  ; 0732 _ 83. EC, 08
        push    edi                                     ; 0735 _ 57
        push    esi                                     ; 0736 _ 56
        push    ebx                                     ; 0737 _ 53
        push    ecx                                     ; 0738 _ 51
        push    edx                                     ; 0739 _ 52
        push    eax                                     ; 073A _ 50
        call    sheet_refresh                           ; 073B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0740 _ 83. C4, 20
        mov     eax, dword [line.2258]                  ; 0743 _ A1, 00000248(d)
        sub     eax, 8                                  ; 0748 _ 83. E8, 08
        mov     dword [line.2258], eax                  ; 074B _ A3, 00000248(d)
        mov     eax, dword [pos.2259]                   ; 0750 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0755 _ 8D. 78, 28
        mov     eax, dword [line.2258]                  ; 0758 _ A1, 00000248(d)
        lea     esi, [eax+10H]                          ; 075D _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 0760 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0765 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 0768 _ A1, 00000248(d)
        lea     ecx, [eax+8H]                           ; 076D _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0770 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0775 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0778 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 077D _ 8B. 00
        sub     esp, 4                                  ; 077F _ 83. EC, 04
        push    edi                                     ; 0782 _ 57
        push    esi                                     ; 0783 _ 56
        push    ebx                                     ; 0784 _ 53
        push    ecx                                     ; 0785 _ 51
        push    7                                       ; 0786 _ 6A, 07
        push    edx                                     ; 0788 _ 52
        push    eax                                     ; 0789 _ 50
        call    boxfill8                                ; 078A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 078F _ 83. C4, 20
        mov     eax, dword [pos.2259]                   ; 0792 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0797 _ 8D. 78, 2A
        mov     eax, dword [line.2258]                  ; 079A _ A1, 00000248(d)
        lea     esi, [eax+10H]                          ; 079F _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 07A2 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 07A7 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 07AA _ A1, 00000248(d)
        lea     ecx, [eax+8H]                           ; 07AF _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 07B2 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 07B8 _ A1, 00000224(d)
        sub     esp, 8                                  ; 07BD _ 83. EC, 08
        push    edi                                     ; 07C0 _ 57
        push    esi                                     ; 07C1 _ 56
        push    ebx                                     ; 07C2 _ 53
        push    ecx                                     ; 07C3 _ 51
        push    edx                                     ; 07C4 _ 52
        push    eax                                     ; 07C5 _ 50
        call    sheet_refresh                           ; 07C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07CB _ 83. C4, 20
        jmp     ?_001                                   ; 07CE _ E9, FFFFFC86

?_008:  sub     esp, 12                                 ; 07D3 _ 83. EC, 0C
        push    mouseInfo                               ; 07D6 _ 68, 00000024(d)
        call    fifo8_status                            ; 07DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07E0 _ 83. C4, 10
        test    eax, eax                                ; 07E3 _ 85. C0
        jz      ?_009                                   ; 07E5 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 07E7 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 07ED _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 07F3 _ A1, 00000224(d)
        sub     esp, 4                                  ; 07F8 _ 83. EC, 04
        push    ecx                                     ; 07FB _ 51
        push    edx                                     ; 07FC _ 52
        push    eax                                     ; 07FD _ 50
        call    showMouseInfo                           ; 07FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0803 _ 83. C4, 10
        jmp     ?_001                                   ; 0806 _ E9, FFFFFC4E

?_009:  sub     esp, 12                                 ; 080B _ 83. EC, 0C
        push    timerInfo                               ; 080E _ 68, 00000200(d)
        call    fifo8_status                            ; 0813 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0818 _ 83. C4, 10
        test    eax, eax                                ; 081B _ 85. C0
        je      ?_001                                   ; 081D _ 0F 84, FFFFFC36
        call    io_sti                                  ; 0823 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0828 _ 83. EC, 0C
        push    timerInfo                               ; 082B _ 68, 00000200(d)
        call    fifo8_get                               ; 0830 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0835 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0838 _ 89. 45, D0
        cmp     dword [ebp-30H], 10                     ; 083B _ 83. 7D, D0, 0A
        jnz     ?_010                                   ; 083F _ 75, 73
        mov     edx, dword [sheet_back]                 ; 0841 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0847 _ A1, 00000224(d)
        sub     esp, 8                                  ; 084C _ 83. EC, 08
        push    ?_193                                   ; 084F _ 68, 00000030(d)
        push    7                                       ; 0854 _ 6A, 07
        push    160                                     ; 0856 _ 68, 000000A0
        push    dword [ebp-68H]                         ; 085B _ FF. 75, 98
        push    edx                                     ; 085E _ 52
        push    eax                                     ; 085F _ 50
        call    showString                              ; 0860 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0865 _ 83. C4, 20
        sub     esp, 8                                  ; 0868 _ 83. EC, 08
        push    100                                     ; 086B _ 6A, 64
        push    dword [ebp-50H]                         ; 086D _ FF. 75, B0
        call    timer_setTime                           ; 0870 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0875 _ 83. C4, 10
        add     dword [ebp-68H], 8                      ; 0878 _ 83. 45, 98, 08
        add     dword [ebp-64H], 1                      ; 087C _ 83. 45, 9C, 01
        cmp     dword [ebp-68H], 39                     ; 0880 _ 83. 7D, 98, 27
        jle     ?_001                                   ; 0884 _ 0F 8E, FFFFFBCF
        cmp     dword [ebp-64H], 5                      ; 088A _ 83. 7D, 9C, 05
        jne     ?_001                                   ; 088E _ 0F 85, FFFFFBC5
        call    io_cli                                  ; 0894 _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2254]                ; 0899 _ A1, 00000234(d)
        sub     esp, 12                                 ; 089E _ 83. EC, 0C
        push    eax                                     ; 08A1 _ 50
        call    task_sleep                              ; 08A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08A7 _ 83. C4, 10
        call    io_sti                                  ; 08AA _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08AF _ E9, FFFFFBA5

?_010:  cmp     dword [ebp-30H], 2                      ; 08B4 _ 83. 7D, D0, 02
        jnz     ?_011                                   ; 08B8 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 08BA _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 08C0 _ A1, 00000224(d)
        sub     esp, 8                                  ; 08C5 _ 83. EC, 08
        push    ?_194                                   ; 08C8 _ 68, 00000032(d)
        push    7                                       ; 08CD _ 6A, 07
        push    32                                      ; 08CF _ 6A, 20
        push    0                                       ; 08D1 _ 6A, 00
        push    edx                                     ; 08D3 _ 52
        push    eax                                     ; 08D4 _ 50
        call    showString                              ; 08D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08DA _ 83. C4, 20
        jmp     ?_001                                   ; 08DD _ E9, FFFFFB77

?_011:  cmp     dword [ebp-30H], 0                      ; 08E2 _ 83. 7D, D0, 00
        jz      ?_012                                   ; 08E6 _ 74, 1E
        sub     esp, 4                                  ; 08E8 _ 83. EC, 04
        push    0                                       ; 08EB _ 6A, 00
        push    timerInfo                               ; 08ED _ 68, 00000200(d)
        push    dword [ebp-48H]                         ; 08F2 _ FF. 75, B8
        call    timer_init                              ; 08F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08FA _ 83. C4, 10
        mov     dword [ebp-6CH], 0                      ; 08FD _ C7. 45, 94, 00000000
        jmp     ?_013                                   ; 0904 _ EB, 1C

?_012:  sub     esp, 4                                  ; 0906 _ 83. EC, 04
        push    1                                       ; 0909 _ 6A, 01
        push    timerInfo                               ; 090B _ 68, 00000200(d)
        push    dword [ebp-48H]                         ; 0910 _ FF. 75, B8
        call    timer_init                              ; 0913 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0918 _ 83. C4, 10
        mov     dword [ebp-6CH], 7                      ; 091B _ C7. 45, 94, 00000007
?_013:  sub     esp, 8                                  ; 0922 _ 83. EC, 08
        push    50                                      ; 0925 _ 6A, 32
        push    dword [ebp-48H]                         ; 0927 _ FF. 75, B8
        call    timer_setTime                           ; 092A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 092F _ 83. C4, 10
        mov     eax, dword [pos.2259]                   ; 0932 _ A1, 00000074(d)
        add     eax, 40                                 ; 0937 _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 093A _ 89. 45, 84
        mov     eax, dword [line.2258]                  ; 093D _ A1, 00000248(d)
        lea     edi, [eax+0EH]                          ; 0942 _ 8D. 78, 0E
        mov     eax, dword [pos.2259]                   ; 0945 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 094A _ 8D. 70, 1A
        mov     eax, dword [line.2258]                  ; 094D _ A1, 00000248(d)
        lea     ebx, [eax+8H]                           ; 0952 _ 8D. 58, 08
        mov     eax, dword [ebp-6CH]                    ; 0955 _ 8B. 45, 94
        movzx   ecx, al                                 ; 0958 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 095B _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0960 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0963 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0968 _ 8B. 00
        sub     esp, 4                                  ; 096A _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 096D _ FF. 75, 84
        push    edi                                     ; 0970 _ 57
        push    esi                                     ; 0971 _ 56
        push    ebx                                     ; 0972 _ 53
        push    ecx                                     ; 0973 _ 51
        push    edx                                     ; 0974 _ 52
        push    eax                                     ; 0975 _ 50
        call    boxfill8                                ; 0976 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 097B _ 83. C4, 20
        mov     eax, dword [pos.2259]                   ; 097E _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0983 _ 8D. 78, 2A
        mov     eax, dword [line.2258]                  ; 0986 _ A1, 00000248(d)
        lea     esi, [eax+10H]                          ; 098B _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 098E _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0993 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 0996 _ A1, 00000248(d)
        lea     ecx, [eax+8H]                           ; 099B _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 099E _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 09A4 _ A1, 00000224(d)
        sub     esp, 8                                  ; 09A9 _ 83. EC, 08
        push    edi                                     ; 09AC _ 57
        push    esi                                     ; 09AD _ 56
        push    ebx                                     ; 09AE _ 53
        push    ecx                                     ; 09AF _ 51
        push    edx                                     ; 09B0 _ 52
        push    eax                                     ; 09B1 _ 50
        call    sheet_refresh                           ; 09B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09B7 _ 83. C4, 20
?_014:  jmp     ?_001                                   ; 09BA _ E9, FFFFFA9A
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 09BF _ 55
        mov     ebp, esp                                ; 09C0 _ 89. E5
        sub     esp, 88                                 ; 09C2 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 09C5 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 09C8 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 09CB _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 09D1 _ 89. 45, F4
        xor     eax, eax                                ; 09D4 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 09D6 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 09DC _ A1, 00000224(d)
        sub     esp, 8                                  ; 09E1 _ 83. EC, 08
        push    ?_195                                   ; 09E4 _ 68, 00000039(d)
        push    7                                       ; 09E9 _ 6A, 07
        push    144                                     ; 09EB _ 68, 00000090
        push    0                                       ; 09F0 _ 6A, 00
        push    edx                                     ; 09F2 _ 52
        push    eax                                     ; 09F3 _ 50
        call    showString                              ; 09F4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09F9 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 09FC _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0A03 _ C7. 45, C8, 00000000
        push    0                                       ; 0A0A _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0A0C _ 8D. 45, EC
        push    eax                                     ; 0A0F _ 50
        push    8                                       ; 0A10 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0A12 _ 8D. 45, D0
        push    eax                                     ; 0A15 _ 50
        call    fifo8_init                              ; 0A16 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A1B _ 83. C4, 10
        call    timer_alloc                             ; 0A1E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0A23 _ 89. 45, C4
        sub     esp, 4                                  ; 0A26 _ 83. EC, 04
        push    123                                     ; 0A29 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0A2B _ 8D. 45, D0
        push    eax                                     ; 0A2E _ 50
        push    dword [ebp-3CH]                         ; 0A2F _ FF. 75, C4
        call    timer_init                              ; 0A32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A37 _ 83. C4, 10
        sub     esp, 8                                  ; 0A3A _ 83. EC, 08
        push    100                                     ; 0A3D _ 6A, 64
        push    dword [ebp-3CH]                         ; 0A3F _ FF. 75, C4
        call    timer_setTime                           ; 0A42 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A47 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 0A4A _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 0A51 _ C7. 45, C0, 00000000
?_015:  add     dword [ebp-40H], 1                      ; 0A58 _ 83. 45, C0, 01
        call    io_cli                                  ; 0A5C _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0A61 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0A64 _ 8D. 45, D0
        push    eax                                     ; 0A67 _ 50
        call    fifo8_status                            ; 0A68 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A6D _ 83. C4, 10
        test    eax, eax                                ; 0A70 _ 85. C0
        jnz     ?_016                                   ; 0A72 _ 75, 07
        call    io_sti                                  ; 0A74 _ E8, FFFFFFFC(rel)
        jmp     ?_015                                   ; 0A79 _ EB, DD

?_016:  sub     esp, 12                                 ; 0A7B _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0A7E _ 8D. 45, D0
        push    eax                                     ; 0A81 _ 50
        call    fifo8_get                               ; 0A82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A87 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0A8A _ 89. 45, C8
        call    io_sti                                  ; 0A8D _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 0A92 _ 83. 7D, C8, 7B
        jnz     ?_015                                   ; 0A96 _ 75, C0
        mov     edx, dword [sheet_back]                 ; 0A98 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0A9E _ A1, 00000224(d)
        sub     esp, 8                                  ; 0AA3 _ 83. EC, 08
        push    ?_196                                   ; 0AA6 _ 68, 00000046(d)
        push    7                                       ; 0AAB _ 6A, 07
        push    176                                     ; 0AAD _ 68, 000000B0
        push    dword [ebp-44H]                         ; 0AB2 _ FF. 75, BC
        push    edx                                     ; 0AB5 _ 52
        push    eax                                     ; 0AB6 _ 50
        call    showString                              ; 0AB7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0ABC _ 83. C4, 20
        sub     esp, 8                                  ; 0ABF _ 83. EC, 08
        push    100                                     ; 0AC2 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0AC4 _ FF. 75, C4
        call    timer_setTime                           ; 0AC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ACC _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 0ACF _ 83. 45, BC, 08
        mov     eax, dword [ebp-4CH]                    ; 0AD3 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 0AD6 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 0AD9 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 0ADC _ 8B. 00
        sub     esp, 4                                  ; 0ADE _ 83. EC, 04
        push    38                                      ; 0AE1 _ 6A, 26
        push    100                                     ; 0AE3 _ 6A, 64
        push    23                                      ; 0AE5 _ 6A, 17
        push    8                                       ; 0AE7 _ 6A, 08
        push    8                                       ; 0AE9 _ 6A, 08
        push    edx                                     ; 0AEB _ 52
        push    eax                                     ; 0AEC _ 50
        call    boxfill8                                ; 0AED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AF2 _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0AF5 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0AFA _ 83. EC, 08
        push    61                                      ; 0AFD _ 6A, 3D
        push    108                                     ; 0AFF _ 6A, 6C
        push    23                                      ; 0B01 _ 6A, 17
        push    8                                       ; 0B03 _ 6A, 08
        push    dword [ebp-4CH]                         ; 0B05 _ FF. 75, B4
        push    eax                                     ; 0B08 _ 50
        call    sheet_refresh                           ; 0B09 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B0E _ 83. C4, 20
        mov     eax, dword [ebp-40H]                    ; 0B11 _ 8B. 45, C0
        sub     esp, 12                                 ; 0B14 _ 83. EC, 0C
        push    eax                                     ; 0B17 _ 50
        call    intToHexStr                             ; 0B18 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B1D _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0B20 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 0B23 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0B28 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 0B2B _ FF. 75, CC
        push    10                                      ; 0B2E _ 6A, 0A
        push    23                                      ; 0B30 _ 6A, 17
        push    8                                       ; 0B32 _ 6A, 08
        push    dword [ebp-4CH]                         ; 0B34 _ FF. 75, B4
        push    eax                                     ; 0B37 _ 50
        call    showString                              ; 0B38 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B3D _ 83. C4, 20
        jmp     ?_015                                   ; 0B40 _ E9, FFFFFF13
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0B45 _ 55
        mov     ebp, esp                                ; 0B46 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0B48 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0B4B _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0B51 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0B54 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0B5A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0B5D _ 66: C7. 40, 06, 01E0
        nop                                             ; 0B63 _ 90
        pop     ebp                                     ; 0B64 _ 5D
        ret                                             ; 0B65 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0B66 _ 55
        mov     ebp, esp                                ; 0B67 _ 89. E5
        push    ebx                                     ; 0B69 _ 53
        sub     esp, 36                                 ; 0B6A _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0B6D _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0B70 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0B73 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0B76 _ 89. 45, F4
        jmp     ?_018                                   ; 0B79 _ EB, 3E

?_017:  mov     eax, dword [ebp+1CH]                    ; 0B7B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B7E _ 0F B6. 00
        movzx   eax, al                                 ; 0B81 _ 0F B6. C0
        shl     eax, 4                                  ; 0B84 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0B87 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0B8D _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0B91 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0B94 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0B97 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0B9A _ 8B. 00
        sub     esp, 8                                  ; 0B9C _ 83. EC, 08
        push    ebx                                     ; 0B9F _ 53
        push    ecx                                     ; 0BA0 _ 51
        push    dword [ebp+14H]                         ; 0BA1 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0BA4 _ FF. 75, 10
        push    edx                                     ; 0BA7 _ 52
        push    eax                                     ; 0BA8 _ 50
        call    showFont8                               ; 0BA9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BAE _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0BB1 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0BB5 _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 0BB9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0BBC _ 0F B6. 00
        test    al, al                                  ; 0BBF _ 84. C0
        jnz     ?_017                                   ; 0BC1 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0BC3 _ 8B. 45, 14
        add     eax, 16                                 ; 0BC6 _ 83. C0, 10
        sub     esp, 8                                  ; 0BC9 _ 83. EC, 08
        push    eax                                     ; 0BCC _ 50
        push    dword [ebp+10H]                         ; 0BCD _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0BD0 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0BD3 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0BD6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BD9 _ FF. 75, 08
        call    sheet_refresh                           ; 0BDC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BE1 _ 83. C4, 20
        nop                                             ; 0BE4 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0BE5 _ 8B. 5D, FC
        leave                                           ; 0BE8 _ C9
        ret                                             ; 0BE9 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0BEA _ 55
        mov     ebp, esp                                ; 0BEB _ 89. E5
        push    ebx                                     ; 0BED _ 53
        sub     esp, 4                                  ; 0BEE _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0BF1 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0BF4 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0BF7 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0BFA _ 83. E8, 01
        sub     esp, 4                                  ; 0BFD _ 83. EC, 04
        push    edx                                     ; 0C00 _ 52
        push    eax                                     ; 0C01 _ 50
        push    0                                       ; 0C02 _ 6A, 00
        push    0                                       ; 0C04 _ 6A, 00
        push    14                                      ; 0C06 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0C08 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C0B _ FF. 75, 08
        call    boxfill8                                ; 0C0E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C13 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C16 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0C19 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0C1C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C1F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C22 _ 8B. 45, 10
        sub     eax, 24                                 ; 0C25 _ 83. E8, 18
        sub     esp, 4                                  ; 0C28 _ 83. EC, 04
        push    ecx                                     ; 0C2B _ 51
        push    edx                                     ; 0C2C _ 52
        push    eax                                     ; 0C2D _ 50
        push    0                                       ; 0C2E _ 6A, 00
        push    8                                       ; 0C30 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0C32 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C35 _ FF. 75, 08
        call    boxfill8                                ; 0C38 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C3D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C40 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0C43 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0C46 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C49 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C4C _ 8B. 45, 10
        sub     eax, 23                                 ; 0C4F _ 83. E8, 17
        sub     esp, 4                                  ; 0C52 _ 83. EC, 04
        push    ecx                                     ; 0C55 _ 51
        push    edx                                     ; 0C56 _ 52
        push    eax                                     ; 0C57 _ 50
        push    0                                       ; 0C58 _ 6A, 00
        push    7                                       ; 0C5A _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C5C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C5F _ FF. 75, 08
        call    boxfill8                                ; 0C62 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C67 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C6A _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0C6D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0C70 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C73 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C76 _ 8B. 45, 10
        sub     eax, 22                                 ; 0C79 _ 83. E8, 16
        sub     esp, 4                                  ; 0C7C _ 83. EC, 04
        push    ecx                                     ; 0C7F _ 51
        push    edx                                     ; 0C80 _ 52
        push    eax                                     ; 0C81 _ 50
        push    0                                       ; 0C82 _ 6A, 00
        push    8                                       ; 0C84 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0C86 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C89 _ FF. 75, 08
        call    boxfill8                                ; 0C8C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C91 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C94 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0C97 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0C9A _ 8B. 45, 10
        sub     eax, 20                                 ; 0C9D _ 83. E8, 14
        sub     esp, 4                                  ; 0CA0 _ 83. EC, 04
        push    edx                                     ; 0CA3 _ 52
        push    51                                      ; 0CA4 _ 6A, 33
        push    eax                                     ; 0CA6 _ 50
        push    10                                      ; 0CA7 _ 6A, 0A
        push    7                                       ; 0CA9 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0CAB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CAE _ FF. 75, 08
        call    boxfill8                                ; 0CB1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CB6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CB9 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CBC _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CBF _ 8B. 45, 10
        sub     eax, 20                                 ; 0CC2 _ 83. E8, 14
        sub     esp, 4                                  ; 0CC5 _ 83. EC, 04
        push    edx                                     ; 0CC8 _ 52
        push    9                                       ; 0CC9 _ 6A, 09
        push    eax                                     ; 0CCB _ 50
        push    9                                       ; 0CCC _ 6A, 09
        push    7                                       ; 0CCE _ 6A, 07
        push    dword [ebp+0CH]                         ; 0CD0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CD3 _ FF. 75, 08
        call    boxfill8                                ; 0CD6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CDB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CDE _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CE1 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CE4 _ 8B. 45, 10
        sub     eax, 4                                  ; 0CE7 _ 83. E8, 04
        sub     esp, 4                                  ; 0CEA _ 83. EC, 04
        push    edx                                     ; 0CED _ 52
        push    50                                      ; 0CEE _ 6A, 32
        push    eax                                     ; 0CF0 _ 50
        push    10                                      ; 0CF1 _ 6A, 0A
        push    15                                      ; 0CF3 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0CF5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CF8 _ FF. 75, 08
        call    boxfill8                                ; 0CFB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D00 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D03 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0D06 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0D09 _ 8B. 45, 10
        sub     eax, 19                                 ; 0D0C _ 83. E8, 13
        sub     esp, 4                                  ; 0D0F _ 83. EC, 04
        push    edx                                     ; 0D12 _ 52
        push    50                                      ; 0D13 _ 6A, 32
        push    eax                                     ; 0D15 _ 50
        push    50                                      ; 0D16 _ 6A, 32
        push    15                                      ; 0D18 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D1A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D1D _ FF. 75, 08
        call    boxfill8                                ; 0D20 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D25 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D28 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D2B _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D2E _ 8B. 45, 10
        sub     eax, 3                                  ; 0D31 _ 83. E8, 03
        sub     esp, 4                                  ; 0D34 _ 83. EC, 04
        push    edx                                     ; 0D37 _ 52
        push    50                                      ; 0D38 _ 6A, 32
        push    eax                                     ; 0D3A _ 50
        push    10                                      ; 0D3B _ 6A, 0A
        push    0                                       ; 0D3D _ 6A, 00
        push    dword [ebp+0CH]                         ; 0D3F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D42 _ FF. 75, 08
        call    boxfill8                                ; 0D45 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D4A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D4D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D50 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D53 _ 8B. 45, 10
        sub     eax, 20                                 ; 0D56 _ 83. E8, 14
        sub     esp, 4                                  ; 0D59 _ 83. EC, 04
        push    edx                                     ; 0D5C _ 52
        push    51                                      ; 0D5D _ 6A, 33
        push    eax                                     ; 0D5F _ 50
        push    51                                      ; 0D60 _ 6A, 33
        push    0                                       ; 0D62 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0D64 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D67 _ FF. 75, 08
        call    boxfill8                                ; 0D6A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D6F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D72 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0D75 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0D78 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D7B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D7E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D81 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D84 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D87 _ 83. E8, 2F
        sub     esp, 4                                  ; 0D8A _ 83. EC, 04
        push    ebx                                     ; 0D8D _ 53
        push    ecx                                     ; 0D8E _ 51
        push    edx                                     ; 0D8F _ 52
        push    eax                                     ; 0D90 _ 50
        push    15                                      ; 0D91 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D93 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D96 _ FF. 75, 08
        call    boxfill8                                ; 0D99 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D9E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DA1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DA4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DA7 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0DAA _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0DAD _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0DB0 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0DB3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0DB6 _ 83. E8, 2F
        sub     esp, 4                                  ; 0DB9 _ 83. EC, 04
        push    ebx                                     ; 0DBC _ 53
        push    ecx                                     ; 0DBD _ 51
        push    edx                                     ; 0DBE _ 52
        push    eax                                     ; 0DBF _ 50
        push    15                                      ; 0DC0 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0DC2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DC5 _ FF. 75, 08
        call    boxfill8                                ; 0DC8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DCD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DD0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DD3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DD6 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0DD9 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0DDC _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DDF _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0DE2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0DE5 _ 83. E8, 2F
        sub     esp, 4                                  ; 0DE8 _ 83. EC, 04
        push    ebx                                     ; 0DEB _ 53
        push    ecx                                     ; 0DEC _ 51
        push    edx                                     ; 0DED _ 52
        push    eax                                     ; 0DEE _ 50
        push    7                                       ; 0DEF _ 6A, 07
        push    dword [ebp+0CH]                         ; 0DF1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DF4 _ FF. 75, 08
        call    boxfill8                                ; 0DF7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DFC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DFF _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0E02 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0E05 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0E08 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0E0B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0E0E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0E11 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0E14 _ 83. E8, 03
        sub     esp, 4                                  ; 0E17 _ 83. EC, 04
        push    ebx                                     ; 0E1A _ 53
        push    ecx                                     ; 0E1B _ 51
        push    edx                                     ; 0E1C _ 52
        push    eax                                     ; 0E1D _ 50
        push    7                                       ; 0E1E _ 6A, 07
        push    dword [ebp+0CH]                         ; 0E20 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E23 _ FF. 75, 08
        call    boxfill8                                ; 0E26 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E2B _ 83. C4, 20
        nop                                             ; 0E2E _ 90
        mov     ebx, dword [ebp-4H]                     ; 0E2F _ 8B. 5D, FC
        leave                                           ; 0E32 _ C9
        ret                                             ; 0E33 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0E34 _ 55
        mov     ebp, esp                                ; 0E35 _ 89. E5
        sub     esp, 24                                 ; 0E37 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E3A _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E3F _ 89. 45, EC
        movzx   eax, word [?_205]                       ; 0E42 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E49 _ 98
        mov     dword [ebp-10H], eax                    ; 0E4A _ 89. 45, F0
        movzx   eax, word [?_206]                       ; 0E4D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E54 _ 98
        mov     dword [ebp-0CH], eax                    ; 0E55 _ 89. 45, F4
        sub     esp, 4                                  ; 0E58 _ 83. EC, 04
        push    table_rgb.2302                          ; 0E5B _ 68, 00000080(d)
        push    15                                      ; 0E60 _ 6A, 0F
        push    0                                       ; 0E62 _ 6A, 00
        call    set_palette                             ; 0E64 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E69 _ 83. C4, 10
        nop                                             ; 0E6C _ 90
        leave                                           ; 0E6D _ C9
        ret                                             ; 0E6E _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0E6F _ 55
        mov     ebp, esp                                ; 0E70 _ 89. E5
        sub     esp, 24                                 ; 0E72 _ 83. EC, 18
        call    io_load_eflags                          ; 0E75 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0E7A _ 89. 45, F4
        call    io_cli                                  ; 0E7D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0E82 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0E85 _ FF. 75, 08
        push    968                                     ; 0E88 _ 68, 000003C8
        call    io_out8                                 ; 0E8D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E92 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0E95 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0E98 _ 89. 45, F0
        jmp     ?_020                                   ; 0E9B _ EB, 65

?_019:  mov     eax, dword [ebp+10H]                    ; 0E9D _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0EA0 _ 0F B6. 00
        shr     al, 2                                   ; 0EA3 _ C0. E8, 02
        movzx   eax, al                                 ; 0EA6 _ 0F B6. C0
        sub     esp, 8                                  ; 0EA9 _ 83. EC, 08
        push    eax                                     ; 0EAC _ 50
        push    969                                     ; 0EAD _ 68, 000003C9
        call    io_out8                                 ; 0EB2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EB7 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0EBA _ 8B. 45, 10
        add     eax, 1                                  ; 0EBD _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0EC0 _ 0F B6. 00
        shr     al, 2                                   ; 0EC3 _ C0. E8, 02
        movzx   eax, al                                 ; 0EC6 _ 0F B6. C0
        sub     esp, 8                                  ; 0EC9 _ 83. EC, 08
        push    eax                                     ; 0ECC _ 50
        push    969                                     ; 0ECD _ 68, 000003C9
        call    io_out8                                 ; 0ED2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ED7 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0EDA _ 8B. 45, 10
        add     eax, 2                                  ; 0EDD _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0EE0 _ 0F B6. 00
        shr     al, 2                                   ; 0EE3 _ C0. E8, 02
        movzx   eax, al                                 ; 0EE6 _ 0F B6. C0
        sub     esp, 8                                  ; 0EE9 _ 83. EC, 08
        push    eax                                     ; 0EEC _ 50
        push    969                                     ; 0EED _ 68, 000003C9
        call    io_out8                                 ; 0EF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EF7 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0EFA _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0EFE _ 83. 45, F0, 01
?_020:  mov     eax, dword [ebp-10H]                    ; 0F02 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0F05 _ 3B. 45, 0C
        jle     ?_019                                   ; 0F08 _ 7E, 93
        sub     esp, 12                                 ; 0F0A _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0F0D _ FF. 75, F4
        call    io_store_eflags                         ; 0F10 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F15 _ 83. C4, 10
        nop                                             ; 0F18 _ 90
        leave                                           ; 0F19 _ C9
        ret                                             ; 0F1A _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0F1B _ 55
        mov     ebp, esp                                ; 0F1C _ 89. E5
        sub     esp, 20                                 ; 0F1E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0F21 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0F24 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0F27 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0F2A _ 89. 45, FC
        jmp     ?_024                                   ; 0F2D _ EB, 33

?_021:  mov     eax, dword [ebp+14H]                    ; 0F2F _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0F32 _ 89. 45, F8
        jmp     ?_023                                   ; 0F35 _ EB, 1F

?_022:  mov     eax, dword [ebp-4H]                     ; 0F37 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0F3A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F3E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F40 _ 8B. 45, F8
        add     eax, edx                                ; 0F43 _ 01. D0
        mov     edx, eax                                ; 0F45 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F47 _ 8B. 45, 08
        add     edx, eax                                ; 0F4A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F4C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F50 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0F52 _ 83. 45, F8, 01
?_023:  mov     eax, dword [ebp-8H]                     ; 0F56 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0F59 _ 3B. 45, 1C
        jle     ?_022                                   ; 0F5C _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0F5E _ 83. 45, FC, 01
?_024:  mov     eax, dword [ebp-4H]                     ; 0F62 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0F65 _ 3B. 45, 20
        jle     ?_021                                   ; 0F68 _ 7E, C5
        nop                                             ; 0F6A _ 90
        leave                                           ; 0F6B _ C9
        ret                                             ; 0F6C _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0F6D _ 55
        mov     ebp, esp                                ; 0F6E _ 89. E5
        push    edi                                     ; 0F70 _ 57
        push    esi                                     ; 0F71 _ 56
        push    ebx                                     ; 0F72 _ 53
        sub     esp, 16                                 ; 0F73 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0F76 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0F79 _ 8B. 45, 14
        add     eax, edx                                ; 0F7C _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0F7E _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0F81 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0F84 _ 8B. 45, 18
        add     eax, edx                                ; 0F87 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0F89 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0F8C _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0F8F _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0F92 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0F95 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0F98 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F9B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F9E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0FA1 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0FA4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FA7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FAA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FAD _ 8B. 00
        push    edi                                     ; 0FAF _ 57
        push    esi                                     ; 0FB0 _ 56
        push    ebx                                     ; 0FB1 _ 53
        push    ecx                                     ; 0FB2 _ 51
        push    15                                      ; 0FB3 _ 6A, 0F
        push    edx                                     ; 0FB5 _ 52
        push    eax                                     ; 0FB6 _ 50
        call    boxfill8                                ; 0FB7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FBC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FBF _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0FC2 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0FC5 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0FC8 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0FCB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FCE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FD1 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FD4 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0FD7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FDA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FDD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FE0 _ 8B. 00
        push    edi                                     ; 0FE2 _ 57
        push    esi                                     ; 0FE3 _ 56
        push    ebx                                     ; 0FE4 _ 53
        push    ecx                                     ; 0FE5 _ 51
        push    15                                      ; 0FE6 _ 6A, 0F
        push    edx                                     ; 0FE8 _ 52
        push    eax                                     ; 0FE9 _ 50
        call    boxfill8                                ; 0FEA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FEF _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FF2 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0FF5 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0FF8 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0FFB _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0FFE _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1001 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1004 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1007 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 100A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 100D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1010 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1013 _ 8B. 00
        push    edi                                     ; 1015 _ 57
        push    esi                                     ; 1016 _ 56
        push    ebx                                     ; 1017 _ 53
        push    ecx                                     ; 1018 _ 51
        push    7                                       ; 1019 _ 6A, 07
        push    edx                                     ; 101B _ 52
        push    eax                                     ; 101C _ 50
        call    boxfill8                                ; 101D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1022 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1025 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1028 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 102B _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 102E _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1031 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1034 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1037 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 103A _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 103D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1040 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1043 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1046 _ 8B. 00
        push    edi                                     ; 1048 _ 57
        push    esi                                     ; 1049 _ 56
        push    ebx                                     ; 104A _ 53
        push    ecx                                     ; 104B _ 51
        push    7                                       ; 104C _ 6A, 07
        push    edx                                     ; 104E _ 52
        push    eax                                     ; 104F _ 50
        call    boxfill8                                ; 1050 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1055 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1058 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 105B _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 105E _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1061 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1064 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1067 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 106A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 106D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1070 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1073 _ 8B. 00
        push    esi                                     ; 1075 _ 56
        push    dword [ebp-14H]                         ; 1076 _ FF. 75, EC
        push    ebx                                     ; 1079 _ 53
        push    ecx                                     ; 107A _ 51
        push    0                                       ; 107B _ 6A, 00
        push    edx                                     ; 107D _ 52
        push    eax                                     ; 107E _ 50
        call    boxfill8                                ; 107F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1084 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1087 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 108A _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 108D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1090 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1093 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1096 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1099 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 109C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 109F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10A2 _ 8B. 00
        push    dword [ebp-10H]                         ; 10A4 _ FF. 75, F0
        push    esi                                     ; 10A7 _ 56
        push    ebx                                     ; 10A8 _ 53
        push    ecx                                     ; 10A9 _ 51
        push    0                                       ; 10AA _ 6A, 00
        push    edx                                     ; 10AC _ 52
        push    eax                                     ; 10AD _ 50
        call    boxfill8                                ; 10AE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10B3 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 10B6 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 10B9 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 10BC _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 10BF _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 10C2 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 10C5 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 10C8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 10CB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10CE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10D1 _ 8B. 00
        push    esi                                     ; 10D3 _ 56
        push    dword [ebp-14H]                         ; 10D4 _ FF. 75, EC
        push    ebx                                     ; 10D7 _ 53
        push    ecx                                     ; 10D8 _ 51
        push    8                                       ; 10D9 _ 6A, 08
        push    edx                                     ; 10DB _ 52
        push    eax                                     ; 10DC _ 50
        call    boxfill8                                ; 10DD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10E2 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 10E5 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 10E8 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 10EB _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 10EE _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 10F1 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 10F4 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 10F7 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 10FA _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 10FD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1100 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1103 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1106 _ 8B. 00
        push    edi                                     ; 1108 _ 57
        push    esi                                     ; 1109 _ 56
        push    ebx                                     ; 110A _ 53
        push    ecx                                     ; 110B _ 51
        push    8                                       ; 110C _ 6A, 08
        push    edx                                     ; 110E _ 52
        push    eax                                     ; 110F _ 50
        call    boxfill8                                ; 1110 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1115 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1118 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 111B _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 111E _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1121 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1124 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1127 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 112A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 112D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1130 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1133 _ 8B. 00
        push    dword [ebp-10H]                         ; 1135 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1138 _ FF. 75, EC
        push    esi                                     ; 113B _ 56
        push    ebx                                     ; 113C _ 53
        push    ecx                                     ; 113D _ 51
        push    edx                                     ; 113E _ 52
        push    eax                                     ; 113F _ 50
        call    boxfill8                                ; 1140 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1145 _ 83. C4, 1C
        nop                                             ; 1148 _ 90
        lea     esp, [ebp-0CH]                          ; 1149 _ 8D. 65, F4
        pop     ebx                                     ; 114C _ 5B
        pop     esi                                     ; 114D _ 5E
        pop     edi                                     ; 114E _ 5F
        pop     ebp                                     ; 114F _ 5D
        ret                                             ; 1150 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1151 _ 55
        mov     ebp, esp                                ; 1152 _ 89. E5
        sub     esp, 20                                 ; 1154 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1157 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 115A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 115D _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 1164 _ E9, 0000016C

?_025:  mov     edx, dword [ebp-4H]                     ; 1169 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 116C _ 8B. 45, 1C
        add     eax, edx                                ; 116F _ 01. D0
        movzx   eax, byte [eax]                         ; 1171 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1174 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1177 _ 80. 7D, FB, 00
        jns     ?_026                                   ; 117B _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 117D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1180 _ 8B. 45, FC
        add     eax, edx                                ; 1183 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1185 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1189 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 118B _ 8B. 45, 10
        add     eax, edx                                ; 118E _ 01. D0
        mov     edx, eax                                ; 1190 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1192 _ 8B. 45, 08
        add     edx, eax                                ; 1195 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1197 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 119B _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 119D _ 0F BE. 45, FB
        and     eax, 40H                                ; 11A1 _ 83. E0, 40
        test    eax, eax                                ; 11A4 _ 85. C0
        jz      ?_027                                   ; 11A6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11A8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11AB _ 8B. 45, FC
        add     eax, edx                                ; 11AE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11B0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11B4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11B6 _ 8B. 45, 10
        add     eax, edx                                ; 11B9 _ 01. D0
        lea     edx, [eax+1H]                           ; 11BB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 11BE _ 8B. 45, 08
        add     edx, eax                                ; 11C1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11C3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11C7 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 11C9 _ 0F BE. 45, FB
        and     eax, 20H                                ; 11CD _ 83. E0, 20
        test    eax, eax                                ; 11D0 _ 85. C0
        jz      ?_028                                   ; 11D2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11D4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11D7 _ 8B. 45, FC
        add     eax, edx                                ; 11DA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11DC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11E0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11E2 _ 8B. 45, 10
        add     eax, edx                                ; 11E5 _ 01. D0
        lea     edx, [eax+2H]                           ; 11E7 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 11EA _ 8B. 45, 08
        add     edx, eax                                ; 11ED _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11EF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11F3 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 11F5 _ 0F BE. 45, FB
        and     eax, 10H                                ; 11F9 _ 83. E0, 10
        test    eax, eax                                ; 11FC _ 85. C0
        jz      ?_029                                   ; 11FE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1200 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1203 _ 8B. 45, FC
        add     eax, edx                                ; 1206 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1208 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 120C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 120E _ 8B. 45, 10
        add     eax, edx                                ; 1211 _ 01. D0
        lea     edx, [eax+3H]                           ; 1213 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1216 _ 8B. 45, 08
        add     edx, eax                                ; 1219 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 121B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 121F _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1221 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1225 _ 83. E0, 08
        test    eax, eax                                ; 1228 _ 85. C0
        jz      ?_030                                   ; 122A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 122C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 122F _ 8B. 45, FC
        add     eax, edx                                ; 1232 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1234 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1238 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 123A _ 8B. 45, 10
        add     eax, edx                                ; 123D _ 01. D0
        lea     edx, [eax+4H]                           ; 123F _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1242 _ 8B. 45, 08
        add     edx, eax                                ; 1245 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1247 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 124B _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 124D _ 0F BE. 45, FB
        and     eax, 04H                                ; 1251 _ 83. E0, 04
        test    eax, eax                                ; 1254 _ 85. C0
        jz      ?_031                                   ; 1256 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1258 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 125B _ 8B. 45, FC
        add     eax, edx                                ; 125E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1260 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1264 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1266 _ 8B. 45, 10
        add     eax, edx                                ; 1269 _ 01. D0
        lea     edx, [eax+5H]                           ; 126B _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 126E _ 8B. 45, 08
        add     edx, eax                                ; 1271 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1273 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1277 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1279 _ 0F BE. 45, FB
        and     eax, 02H                                ; 127D _ 83. E0, 02
        test    eax, eax                                ; 1280 _ 85. C0
        jz      ?_032                                   ; 1282 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1284 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1287 _ 8B. 45, FC
        add     eax, edx                                ; 128A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 128C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1290 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1292 _ 8B. 45, 10
        add     eax, edx                                ; 1295 _ 01. D0
        lea     edx, [eax+6H]                           ; 1297 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 129A _ 8B. 45, 08
        add     edx, eax                                ; 129D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 129F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12A3 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 12A5 _ 0F BE. 45, FB
        and     eax, 01H                                ; 12A9 _ 83. E0, 01
        test    eax, eax                                ; 12AC _ 85. C0
        jz      ?_033                                   ; 12AE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 12B0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12B3 _ 8B. 45, FC
        add     eax, edx                                ; 12B6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12B8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 12BC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 12BE _ 8B. 45, 10
        add     eax, edx                                ; 12C1 _ 01. D0
        lea     edx, [eax+7H]                           ; 12C3 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 12C6 _ 8B. 45, 08
        add     edx, eax                                ; 12C9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12CB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12CF _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 12D1 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 12D5 _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 12D9 _ 0F 8E, FFFFFE8A
        nop                                             ; 12DF _ 90
        leave                                           ; 12E0 _ C9
        ret                                             ; 12E1 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 12E2 _ 55
        mov     ebp, esp                                ; 12E3 _ 89. E5
        sub     esp, 20                                 ; 12E5 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 12E8 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 12EB _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 12EE _ C7. 45, FC, 00000000
        jmp     ?_041                                   ; 12F5 _ E9, 000000B1

?_035:  mov     dword [ebp-8H], 0                       ; 12FA _ C7. 45, F8, 00000000
        jmp     ?_040                                   ; 1301 _ E9, 00000097

?_036:  mov     eax, dword [ebp-4H]                     ; 1306 _ 8B. 45, FC
        shl     eax, 4                                  ; 1309 _ C1. E0, 04
        mov     edx, eax                                ; 130C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 130E _ 8B. 45, F8
        add     eax, edx                                ; 1311 _ 01. D0
        add     eax, cursor.2357                        ; 1313 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1318 _ 0F B6. 00
        cmp     al, 42                                  ; 131B _ 3C, 2A
        jnz     ?_037                                   ; 131D _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 131F _ 8B. 45, FC
        shl     eax, 4                                  ; 1322 _ C1. E0, 04
        mov     edx, eax                                ; 1325 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1327 _ 8B. 45, F8
        add     eax, edx                                ; 132A _ 01. D0
        mov     edx, eax                                ; 132C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 132E _ 8B. 45, 08
        add     eax, edx                                ; 1331 _ 01. D0
        mov     byte [eax], 0                           ; 1333 _ C6. 00, 00
?_037:  mov     eax, dword [ebp-4H]                     ; 1336 _ 8B. 45, FC
        shl     eax, 4                                  ; 1339 _ C1. E0, 04
        mov     edx, eax                                ; 133C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 133E _ 8B. 45, F8
        add     eax, edx                                ; 1341 _ 01. D0
        add     eax, cursor.2357                        ; 1343 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1348 _ 0F B6. 00
        cmp     al, 79                                  ; 134B _ 3C, 4F
        jnz     ?_038                                   ; 134D _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 134F _ 8B. 45, FC
        shl     eax, 4                                  ; 1352 _ C1. E0, 04
        mov     edx, eax                                ; 1355 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1357 _ 8B. 45, F8
        add     eax, edx                                ; 135A _ 01. D0
        mov     edx, eax                                ; 135C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 135E _ 8B. 45, 08
        add     eax, edx                                ; 1361 _ 01. D0
        mov     byte [eax], 7                           ; 1363 _ C6. 00, 07
?_038:  mov     eax, dword [ebp-4H]                     ; 1366 _ 8B. 45, FC
        shl     eax, 4                                  ; 1369 _ C1. E0, 04
        mov     edx, eax                                ; 136C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 136E _ 8B. 45, F8
        add     eax, edx                                ; 1371 _ 01. D0
        add     eax, cursor.2357                        ; 1373 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1378 _ 0F B6. 00
        cmp     al, 46                                  ; 137B _ 3C, 2E
        jnz     ?_039                                   ; 137D _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 137F _ 8B. 45, FC
        shl     eax, 4                                  ; 1382 _ C1. E0, 04
        mov     edx, eax                                ; 1385 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1387 _ 8B. 45, F8
        add     eax, edx                                ; 138A _ 01. D0
        mov     edx, eax                                ; 138C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 138E _ 8B. 45, 08
        add     edx, eax                                ; 1391 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1393 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1397 _ 88. 02
?_039:  add     dword [ebp-8H], 1                       ; 1399 _ 83. 45, F8, 01
?_040:  cmp     dword [ebp-8H], 15                      ; 139D _ 83. 7D, F8, 0F
        jle     ?_036                                   ; 13A1 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 13A7 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 15                      ; 13AB _ 83. 7D, FC, 0F
        jle     ?_035                                   ; 13AF _ 0F 8E, FFFFFF45
        nop                                             ; 13B5 _ 90
        leave                                           ; 13B6 _ C9
        ret                                             ; 13B7 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 13B8 _ 55
        mov     ebp, esp                                ; 13B9 _ 89. E5
        push    ebx                                     ; 13BB _ 53
        sub     esp, 16                                 ; 13BC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 13BF _ C7. 45, F8, 00000000
        jmp     ?_045                                   ; 13C6 _ EB, 50

?_042:  mov     dword [ebp-0CH], 0                      ; 13C8 _ C7. 45, F4, 00000000
        jmp     ?_044                                   ; 13CF _ EB, 3B

?_043:  mov     eax, dword [ebp-8H]                     ; 13D1 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 13D4 _ 0F AF. 45, 24
        mov     edx, eax                                ; 13D8 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 13DA _ 8B. 45, F4
        add     eax, edx                                ; 13DD _ 01. D0
        mov     edx, eax                                ; 13DF _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 13E1 _ 8B. 45, 20
        add     eax, edx                                ; 13E4 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 13E6 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 13E9 _ 8B. 55, F8
        add     edx, ecx                                ; 13EC _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 13EE _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 13F2 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 13F5 _ 8B. 4D, F4
        add     ecx, ebx                                ; 13F8 _ 01. D9
        add     edx, ecx                                ; 13FA _ 01. CA
        mov     ecx, edx                                ; 13FC _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 13FE _ 8B. 55, 08
        add     edx, ecx                                ; 1401 _ 01. CA
        movzx   eax, byte [eax]                         ; 1403 _ 0F B6. 00
        mov     byte [edx], al                          ; 1406 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1408 _ 83. 45, F4, 01
?_044:  mov     eax, dword [ebp-0CH]                    ; 140C _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 140F _ 3B. 45, 10
        jl      ?_043                                   ; 1412 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1414 _ 83. 45, F8, 01
?_045:  mov     eax, dword [ebp-8H]                     ; 1418 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 141B _ 3B. 45, 14
        jl      ?_042                                   ; 141E _ 7C, A8
        nop                                             ; 1420 _ 90
        add     esp, 16                                 ; 1421 _ 83. C4, 10
        pop     ebx                                     ; 1424 _ 5B
        pop     ebp                                     ; 1425 _ 5D
        ret                                             ; 1426 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1427 _ 55
        mov     ebp, esp                                ; 1428 _ 89. E5
        sub     esp, 24                                 ; 142A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 142D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1432 _ 89. 45, EC
        movzx   eax, word [?_205]                       ; 1435 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 143C _ 98
        mov     dword [ebp-10H], eax                    ; 143D _ 89. 45, F0
        movzx   eax, word [?_206]                       ; 1440 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1447 _ 98
        mov     dword [ebp-0CH], eax                    ; 1448 _ 89. 45, F4
        sub     esp, 8                                  ; 144B _ 83. EC, 08
        push    32                                      ; 144E _ 6A, 20
        push    32                                      ; 1450 _ 6A, 20
        call    io_out8                                 ; 1452 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1457 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 145A _ C6. 45, EB, 00
        sub     esp, 12                                 ; 145E _ 83. EC, 0C
        push    96                                      ; 1461 _ 6A, 60
        call    io_in8                                  ; 1463 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1468 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 146B _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 146E _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1472 _ 83. EC, 08
        push    eax                                     ; 1475 _ 50
        push    keyInfo                                 ; 1476 _ 68, 00000008(d)
        call    fifo8_put                               ; 147B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1480 _ 83. C4, 10
        nop                                             ; 1483 _ 90
        leave                                           ; 1484 _ C9
        ret                                             ; 1485 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1486 _ 55
        mov     ebp, esp                                ; 1487 _ 89. E5
        sub     esp, 40                                 ; 1489 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 148C _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 148F _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1492 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1496 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1499 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 149C _ 0F BE. 45, F7
        sub     esp, 12                                 ; 14A0 _ 83. EC, 0C
        push    eax                                     ; 14A3 _ 50
        call    charToVal                               ; 14A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14A9 _ 83. C4, 10
        mov     byte [?_204], al                        ; 14AC _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 14B1 _ 0F B6. 45, E4
        shr     al, 4                                   ; 14B5 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 14B8 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 14BB _ 0F B6. 45, E4
        movsx   eax, al                                 ; 14BF _ 0F BE. C0
        sub     esp, 12                                 ; 14C2 _ 83. EC, 0C
        push    eax                                     ; 14C5 _ 50
        call    charToVal                               ; 14C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14CB _ 83. C4, 10
        mov     byte [?_203], al                        ; 14CE _ A2, 00000002(d)
        mov     eax, keyVal                             ; 14D3 _ B8, 00000000(d)
        leave                                           ; 14D8 _ C9
        ret                                             ; 14D9 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 14DA _ 55
        mov     ebp, esp                                ; 14DB _ 89. E5
        sub     esp, 4                                  ; 14DD _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 14E0 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 14E3 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 14E6 _ 80. 7D, FC, 09
        jle     ?_046                                   ; 14EA _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 14EC _ 0F B6. 45, FC
        add     eax, 55                                 ; 14F0 _ 83. C0, 37
        jmp     ?_047                                   ; 14F3 _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 14F5 _ 0F B6. 45, FC
        add     eax, 48                                 ; 14F9 _ 83. C0, 30
?_047:  leave                                           ; 14FC _ C9
        ret                                             ; 14FD _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 14FE _ 55
        mov     ebp, esp                                ; 14FF _ 89. E5
        sub     esp, 16                                 ; 1501 _ 83. EC, 10
        mov     byte [str.2400], 48                     ; 1504 _ C6. 05, 0000024C(d), 30
        mov     byte [?_211], 120                       ; 150B _ C6. 05, 0000024D(d), 78
        mov     byte [?_212], 0                         ; 1512 _ C6. 05, 00000256(d), 00
        mov     dword [ebp-0CH], 2                      ; 1519 _ C7. 45, F4, 00000002
        jmp     ?_049                                   ; 1520 _ EB, 0F

?_048:  mov     eax, dword [ebp-0CH]                    ; 1522 _ 8B. 45, F4
        add     eax, str.2400                           ; 1525 _ 05, 0000024C(d)
        mov     byte [eax], 48                          ; 152A _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 152D _ 83. 45, F4, 01
?_049:  cmp     dword [ebp-0CH], 9                      ; 1531 _ 83. 7D, F4, 09
        jle     ?_048                                   ; 1535 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1537 _ C7. 45, F8, 00000009
        jmp     ?_052                                   ; 153E _ EB, 48

?_050:  mov     eax, dword [ebp+8H]                     ; 1540 _ 8B. 45, 08
        and     eax, 0FH                                ; 1543 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1546 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1549 _ 8B. 45, 08
        shr     eax, 4                                  ; 154C _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 154F _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1552 _ 83. 7D, FC, 09
        jle     ?_051                                   ; 1556 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1558 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 155B _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 155E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1561 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1564 _ 89. 55, F8
        mov     edx, ecx                                ; 1567 _ 89. CA
        mov     byte [str.2400+eax], dl                 ; 1569 _ 88. 90, 0000024C(d)
        jmp     ?_052                                   ; 156F _ EB, 17

?_051:  mov     eax, dword [ebp-4H]                     ; 1571 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1574 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1577 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 157A _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 157D _ 89. 55, F8
        mov     edx, ecx                                ; 1580 _ 89. CA
        mov     byte [str.2400+eax], dl                 ; 1582 _ 88. 90, 0000024C(d)
?_052:  cmp     dword [ebp-8H], 1                       ; 1588 _ 83. 7D, F8, 01
        jle     ?_053                                   ; 158C _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 158E _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 1592 _ 75, AC
?_053:  mov     eax, str.2400                           ; 1594 _ B8, 0000024C(d)
        leave                                           ; 1599 _ C9
        ret                                             ; 159A _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 159B _ 55
        mov     ebp, esp                                ; 159C _ 89. E5
        sub     esp, 8                                  ; 159E _ 83. EC, 08
?_054:  sub     esp, 12                                 ; 15A1 _ 83. EC, 0C
        push    100                                     ; 15A4 _ 6A, 64
        call    io_in8                                  ; 15A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15AB _ 83. C4, 10
        movsx   eax, al                                 ; 15AE _ 0F BE. C0
        and     eax, 02H                                ; 15B1 _ 83. E0, 02
        test    eax, eax                                ; 15B4 _ 85. C0
        jz      ?_055                                   ; 15B6 _ 74, 02
        jmp     ?_054                                   ; 15B8 _ EB, E7

?_055:  nop                                             ; 15BA _ 90
        nop                                             ; 15BB _ 90
        leave                                           ; 15BC _ C9
        ret                                             ; 15BD _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 15BE _ 55
        mov     ebp, esp                                ; 15BF _ 89. E5
        sub     esp, 8                                  ; 15C1 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 15C4 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15C9 _ 83. EC, 08
        push    96                                      ; 15CC _ 6A, 60
        push    100                                     ; 15CE _ 6A, 64
        call    io_out8                                 ; 15D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15D5 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 15D8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15DD _ 83. EC, 08
        push    71                                      ; 15E0 _ 6A, 47
        push    96                                      ; 15E2 _ 6A, 60
        call    io_out8                                 ; 15E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15E9 _ 83. C4, 10
        nop                                             ; 15EC _ 90
        leave                                           ; 15ED _ C9
        ret                                             ; 15EE _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 15EF _ 55
        mov     ebp, esp                                ; 15F0 _ 89. E5
        sub     esp, 8                                  ; 15F2 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 15F5 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15FA _ 83. EC, 08
        push    212                                     ; 15FD _ 68, 000000D4
        push    100                                     ; 1602 _ 6A, 64
        call    io_out8                                 ; 1604 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1609 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 160C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1611 _ 83. EC, 08
        push    244                                     ; 1614 _ 68, 000000F4
        push    96                                      ; 1619 _ 6A, 60
        call    io_out8                                 ; 161B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1620 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1623 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1626 _ C6. 40, 03, 00
        nop                                             ; 162A _ 90
        leave                                           ; 162B _ C9
        ret                                             ; 162C _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 162D _ 55
        mov     ebp, esp                                ; 162E _ 89. E5
        sub     esp, 24                                 ; 1630 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1633 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1637 _ 83. EC, 08
        push    32                                      ; 163A _ 6A, 20
        push    160                                     ; 163C _ 68, 000000A0
        call    io_out8                                 ; 1641 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1646 _ 83. C4, 10
        sub     esp, 8                                  ; 1649 _ 83. EC, 08
        push    32                                      ; 164C _ 6A, 20
        push    32                                      ; 164E _ 6A, 20
        call    io_out8                                 ; 1650 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1655 _ 83. C4, 10
        sub     esp, 12                                 ; 1658 _ 83. EC, 0C
        push    96                                      ; 165B _ 6A, 60
        call    io_in8                                  ; 165D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1662 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1665 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1668 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 166C _ 83. EC, 08
        push    eax                                     ; 166F _ 50
        push    mouseInfo                               ; 1670 _ 68, 00000024(d)
        call    fifo8_put                               ; 1675 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 167A _ 83. C4, 10
        nop                                             ; 167D _ 90
        leave                                           ; 167E _ C9
        ret                                             ; 167F _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1680 _ 55
        mov     ebp, esp                                ; 1681 _ 89. E5
        sub     esp, 40                                 ; 1683 _ 83. EC, 28
        call    io_sti                                  ; 1686 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 168B _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 1690 _ 89. 45, E8
        movzx   eax, word [?_205]                       ; 1693 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 169A _ 98
        mov     dword [ebp-14H], eax                    ; 169B _ 89. 45, EC
        movzx   eax, word [?_206]                       ; 169E _ 0F B7. 05, 00000006(d)
        cwde                                            ; 16A5 _ 98
        mov     dword [ebp-10H], eax                    ; 16A6 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 16A9 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 16AD _ 83. EC, 0C
        push    keyInfo                                 ; 16B0 _ 68, 00000008(d)
        call    fifo8_get                               ; 16B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16BA _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 16BD _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 16C0 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 16C4 _ 83. EC, 0C
        push    eax                                     ; 16C7 _ 50
        call    charToHex                               ; 16C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16CD _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 16D0 _ 89. 45, F4
        mov     edx, dword [line.2433]                  ; 16D3 _ 8B. 15, 00000258(d)
        mov     eax, dword [pos.2432]                   ; 16D9 _ A1, 0000025C(d)
        sub     esp, 8                                  ; 16DE _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 16E1 _ FF. 75, F4
        push    7                                       ; 16E4 _ 6A, 07
        push    edx                                     ; 16E6 _ 52
        push    eax                                     ; 16E7 _ 50
        push    dword [ebp+0CH]                         ; 16E8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16EB _ FF. 75, 08
        call    showString                              ; 16EE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16F3 _ 83. C4, 20
        mov     eax, dword [pos.2432]                   ; 16F6 _ A1, 0000025C(d)
        add     eax, 32                                 ; 16FB _ 83. C0, 20
        mov     dword [pos.2432], eax                   ; 16FE _ A3, 0000025C(d)
        mov     eax, dword [pos.2432]                   ; 1703 _ A1, 0000025C(d)
        cmp     dword [ebp-14H], eax                    ; 1708 _ 39. 45, EC
        jnz     ?_058                                   ; 170B _ 75, 28
        mov     eax, dword [line.2433]                  ; 170D _ A1, 00000258(d)
        cmp     dword [ebp-10H], eax                    ; 1712 _ 39. 45, F0
        jz      ?_056                                   ; 1715 _ 74, 0A
        mov     eax, dword [line.2433]                  ; 1717 _ A1, 00000258(d)
        add     eax, 16                                 ; 171C _ 83. C0, 10
        jmp     ?_057                                   ; 171F _ EB, 05

?_056:  mov     eax, 0                                  ; 1721 _ B8, 00000000
?_057:  mov     dword [line.2433], eax                  ; 1726 _ A3, 00000258(d)
        mov     dword [pos.2432], 0                     ; 172B _ C7. 05, 0000025C(d), 00000000
?_058:  nop                                             ; 1735 _ 90
        leave                                           ; 1736 _ C9
        ret                                             ; 1737 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1738 _ 55
        mov     ebp, esp                                ; 1739 _ 89. E5
        sub     esp, 24                                 ; 173B _ 83. EC, 18
        call    io_sti                                  ; 173E _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1743 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1747 _ 83. EC, 0C
        push    mouseInfo                               ; 174A _ 68, 00000024(d)
        call    fifo8_get                               ; 174F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1754 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1757 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 175A _ 0F B6. 45, F7
        sub     esp, 8                                  ; 175E _ 83. EC, 08
        push    eax                                     ; 1761 _ 50
        push    mouse_move                              ; 1762 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1767 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 176C _ 83. C4, 10
        test    eax, eax                                ; 176F _ 85. C0
        jz      ?_059                                   ; 1771 _ 74, 60
        sub     esp, 4                                  ; 1773 _ 83. EC, 04
        push    mouse_move                              ; 1776 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 177B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 177E _ FF. 75, 08
        call    computeMousePos                         ; 1781 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1786 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1789 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 178F _ A1, 000000F0(d)
        push    edx                                     ; 1794 _ 52
        push    eax                                     ; 1795 _ 50
        push    dword [ebp+10H]                         ; 1796 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1799 _ FF. 75, 08
        call    sheet_slide                             ; 179C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17A1 _ 83. C4, 10
        mov     eax, dword [?_208]                      ; 17A4 _ A1, 000000EC(d)
        and     eax, 01H                                ; 17A9 _ 83. E0, 01
        test    eax, eax                                ; 17AC _ 85. C0
        jz      ?_059                                   ; 17AE _ 74, 23
        mov     eax, dword [my]                         ; 17B0 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 17B5 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 17B8 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 17BD _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 17C0 _ A1, 00000228(d)
        push    ecx                                     ; 17C5 _ 51
        push    edx                                     ; 17C6 _ 52
        push    eax                                     ; 17C7 _ 50
        push    dword [ebp+8H]                          ; 17C8 _ FF. 75, 08
        call    sheet_slide                             ; 17CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17D0 _ 83. C4, 10
?_059:  nop                                             ; 17D3 _ 90
        leave                                           ; 17D4 _ C9
        ret                                             ; 17D5 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 17D6 _ 55
        mov     ebp, esp                                ; 17D7 _ 89. E5
        sub     esp, 4                                  ; 17D9 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 17DC _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 17DF _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 17E2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17E5 _ 0F B6. 40, 03
        test    al, al                                  ; 17E9 _ 84. C0
        jnz     ?_061                                   ; 17EB _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 17ED _ 80. 7D, FC, FA
        jnz     ?_060                                   ; 17F1 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 17F3 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 17F6 _ C6. 40, 03, 01
?_060:  mov     eax, 0                                  ; 17FA _ B8, 00000000
        jmp     ?_068                                   ; 17FF _ E9, 0000010C

?_061:  mov     eax, dword [ebp+8H]                     ; 1804 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1807 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 180B _ 3C, 01
        jnz     ?_063                                   ; 180D _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 180F _ 0F B6. 45, FC
        or      eax, 37H                                ; 1813 _ 83. C8, 37
        cmp     al, 63                                  ; 1816 _ 3C, 3F
        jnz     ?_062                                   ; 1818 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 181A _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 181D _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1821 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1823 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1826 _ C6. 40, 03, 02
?_062:  mov     eax, 0                                  ; 182A _ B8, 00000000
        jmp     ?_068                                   ; 182F _ E9, 000000DC

?_063:  mov     eax, dword [ebp+8H]                     ; 1834 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1837 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 183B _ 3C, 02
        jnz     ?_064                                   ; 183D _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 183F _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1842 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1846 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1849 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 184C _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1850 _ B8, 00000000
        jmp     ?_068                                   ; 1855 _ E9, 000000B6

?_064:  mov     eax, dword [ebp+8H]                     ; 185A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 185D _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1861 _ 3C, 03
        jne     ?_067                                   ; 1863 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1869 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 186C _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1870 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1873 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1876 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 187A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 187D _ 0F B6. 00
        movzx   eax, al                                 ; 1880 _ 0F B6. C0
        and     eax, 07H                                ; 1883 _ 83. E0, 07
        mov     edx, eax                                ; 1886 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1888 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 188B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 188E _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1891 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1895 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1898 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 189B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 189E _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 18A1 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 18A5 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 18A8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18AB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 18AE _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18B1 _ 0F B6. 00
        movzx   eax, al                                 ; 18B4 _ 0F B6. C0
        and     eax, 10H                                ; 18B7 _ 83. E0, 10
        test    eax, eax                                ; 18BA _ 85. C0
        jz      ?_065                                   ; 18BC _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 18BE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 18C1 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 18C4 _ 0D, FFFFFF00
        mov     edx, eax                                ; 18C9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18CB _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 18CE _ 89. 50, 04
?_065:  mov     eax, dword [ebp+8H]                     ; 18D1 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18D4 _ 0F B6. 00
        movzx   eax, al                                 ; 18D7 _ 0F B6. C0
        and     eax, 20H                                ; 18DA _ 83. E0, 20
        test    eax, eax                                ; 18DD _ 85. C0
        jz      ?_066                                   ; 18DF _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 18E1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18E4 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 18E7 _ 0D, FFFFFF00
        mov     edx, eax                                ; 18EC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18EE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18F1 _ 89. 50, 08
?_066:  mov     eax, dword [ebp+8H]                     ; 18F4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18F7 _ 8B. 40, 08
        neg     eax                                     ; 18FA _ F7. D8
        mov     edx, eax                                ; 18FC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18FE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1901 _ 89. 50, 08
        mov     eax, 1                                  ; 1904 _ B8, 00000001
        jmp     ?_068                                   ; 1909 _ EB, 05

?_067:  mov     eax, 4294967295                         ; 190B _ B8, FFFFFFFF
?_068:  leave                                           ; 1910 _ C9
        ret                                             ; 1911 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1912 _ 55
        mov     ebp, esp                                ; 1913 _ 89. E5
        sub     esp, 16                                 ; 1915 _ 83. EC, 10
        movzx   eax, word [?_205]                       ; 1918 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 191F _ 98
        mov     dword [ebp-8H], eax                     ; 1920 _ 89. 45, F8
        movzx   eax, word [?_206]                       ; 1923 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 192A _ 98
        mov     dword [ebp-4H], eax                     ; 192B _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 192E _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1931 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1934 _ A1, 000000F0(d)
        add     eax, edx                                ; 1939 _ 01. D0
        mov     dword [mx], eax                         ; 193B _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1940 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1943 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1946 _ A1, 000000F4(d)
        add     eax, edx                                ; 194B _ 01. D0
        mov     dword [my], eax                         ; 194D _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1952 _ A1, 000000F0(d)
        test    eax, eax                                ; 1957 _ 85. C0
        jns     ?_069                                   ; 1959 _ 79, 0A
        mov     dword [mx], 0                           ; 195B _ C7. 05, 000000F0(d), 00000000
?_069:  mov     eax, dword [my]                         ; 1965 _ A1, 000000F4(d)
        test    eax, eax                                ; 196A _ 85. C0
        jns     ?_070                                   ; 196C _ 79, 0A
        mov     dword [my], 0                           ; 196E _ C7. 05, 000000F4(d), 00000000
?_070:  mov     eax, dword [ebp-8H]                     ; 1978 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 197B _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 197E _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1983 _ 39. C2
        jge     ?_071                                   ; 1985 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1987 _ 8B. 45, F8
        sub     eax, 9                                  ; 198A _ 83. E8, 09
        mov     dword [mx], eax                         ; 198D _ A3, 000000F0(d)
?_071:  mov     eax, dword [ebp-4H]                     ; 1992 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1995 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1998 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 199D _ 39. C2
        jge     ?_072                                   ; 199F _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 19A1 _ 8B. 45, FC
        sub     eax, 1                                  ; 19A4 _ 83. E8, 01
        mov     dword [my], eax                         ; 19A7 _ A3, 000000F4(d)
?_072:  nop                                             ; 19AC _ 90
        leave                                           ; 19AD _ C9
        ret                                             ; 19AE _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 19AF _ 55
        mov     ebp, esp                                ; 19B0 _ 89. E5
        sub     esp, 56                                 ; 19B2 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 19B5 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 19BC _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 19C3 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 19CA _ C7. 45, DC, 00000050
        push    100                                     ; 19D1 _ 6A, 64
        push    dword [ebp+1CH]                         ; 19D3 _ FF. 75, 1C
        push    0                                       ; 19D6 _ 6A, 00
        push    0                                       ; 19D8 _ 6A, 00
        push    14                                      ; 19DA _ 6A, 0E
        push    dword [ebp+1CH]                         ; 19DC _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 19DF _ FF. 75, 14
        call    boxfill8                                ; 19E2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19E7 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 19EA _ 8B. 45, 20
        movsx   eax, al                                 ; 19ED _ 0F BE. C0
        sub     esp, 8                                  ; 19F0 _ 83. EC, 08
        push    ?_197                                   ; 19F3 _ 68, 00000048(d)
        push    eax                                     ; 19F8 _ 50
        push    dword [ebp-2CH]                         ; 19F9 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 19FC _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 19FF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A02 _ FF. 75, 08
        call    showString                              ; 1A05 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A0A _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1A0D _ 8B. 45, 18
        sub     esp, 12                                 ; 1A10 _ 83. EC, 0C
        push    eax                                     ; 1A13 _ 50
        call    intToHexStr                             ; 1A14 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A19 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1A1C _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1A1F _ 8B. 45, 20
        movsx   eax, al                                 ; 1A22 _ 0F BE. C0
        sub     esp, 8                                  ; 1A25 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1A28 _ FF. 75, E0
        push    eax                                     ; 1A2B _ 50
        push    dword [ebp-2CH]                         ; 1A2C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A2F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A32 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A35 _ FF. 75, 08
        call    showString                              ; 1A38 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A3D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A40 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A44 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A47 _ 0F BE. C0
        sub     esp, 8                                  ; 1A4A _ 83. EC, 08
        push    ?_198                                   ; 1A4D _ 68, 00000052(d)
        push    eax                                     ; 1A52 _ 50
        push    dword [ebp-2CH]                         ; 1A53 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A56 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A59 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A5C _ FF. 75, 08
        call    showString                              ; 1A5F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A64 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A67 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1A6A _ 8B. 00
        sub     esp, 12                                 ; 1A6C _ 83. EC, 0C
        push    eax                                     ; 1A6F _ 50
        call    intToHexStr                             ; 1A70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A75 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1A78 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1A7B _ 8B. 45, 20
        movsx   eax, al                                 ; 1A7E _ 0F BE. C0
        sub     esp, 8                                  ; 1A81 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1A84 _ FF. 75, E4
        push    eax                                     ; 1A87 _ 50
        push    dword [ebp-2CH]                         ; 1A88 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A8B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A8E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A91 _ FF. 75, 08
        call    showString                              ; 1A94 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A99 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A9C _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1AA0 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AA3 _ 0F BE. C0
        sub     esp, 8                                  ; 1AA6 _ 83. EC, 08
        push    ?_199                                   ; 1AA9 _ 68, 00000060(d)
        push    eax                                     ; 1AAE _ 50
        push    dword [ebp-2CH]                         ; 1AAF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1AB2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1AB5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AB8 _ FF. 75, 08
        call    showString                              ; 1ABB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AC0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1AC3 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1AC6 _ 8B. 40, 04
        sub     esp, 12                                 ; 1AC9 _ 83. EC, 0C
        push    eax                                     ; 1ACC _ 50
        call    intToHexStr                             ; 1ACD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AD2 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1AD5 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1AD8 _ 8B. 45, 20
        movsx   eax, al                                 ; 1ADB _ 0F BE. C0
        sub     esp, 8                                  ; 1ADE _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1AE1 _ FF. 75, E8
        push    eax                                     ; 1AE4 _ 50
        push    dword [ebp-2CH]                         ; 1AE5 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1AE8 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1AEB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AEE _ FF. 75, 08
        call    showString                              ; 1AF1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AF6 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1AF9 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1AFD _ 8B. 45, 20
        movsx   eax, al                                 ; 1B00 _ 0F BE. C0
        sub     esp, 8                                  ; 1B03 _ 83. EC, 08
        push    ?_200                                   ; 1B06 _ 68, 0000006F(d)
        push    eax                                     ; 1B0B _ 50
        push    dword [ebp-2CH]                         ; 1B0C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B0F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B12 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B15 _ FF. 75, 08
        call    showString                              ; 1B18 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B1D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B20 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1B23 _ 8B. 40, 08
        sub     esp, 12                                 ; 1B26 _ 83. EC, 0C
        push    eax                                     ; 1B29 _ 50
        call    intToHexStr                             ; 1B2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B2F _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1B32 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1B35 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B38 _ 0F BE. C0
        sub     esp, 8                                  ; 1B3B _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1B3E _ FF. 75, EC
        push    eax                                     ; 1B41 _ 50
        push    dword [ebp-2CH]                         ; 1B42 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B45 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B48 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B4B _ FF. 75, 08
        call    showString                              ; 1B4E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B53 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B56 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1B5A _ 8B. 45, 20
        movsx   eax, al                                 ; 1B5D _ 0F BE. C0
        sub     esp, 8                                  ; 1B60 _ 83. EC, 08
        push    ?_201                                   ; 1B63 _ 68, 0000007B(d)
        push    eax                                     ; 1B68 _ 50
        push    dword [ebp-2CH]                         ; 1B69 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B6C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B6F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B72 _ FF. 75, 08
        call    showString                              ; 1B75 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B7A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B7D _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1B80 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1B83 _ 83. EC, 0C
        push    eax                                     ; 1B86 _ 50
        call    intToHexStr                             ; 1B87 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B8C _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1B8F _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1B92 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B95 _ 0F BE. C0
        sub     esp, 8                                  ; 1B98 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1B9B _ FF. 75, F0
        push    eax                                     ; 1B9E _ 50
        push    dword [ebp-2CH]                         ; 1B9F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1BA2 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1BA5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BA8 _ FF. 75, 08
        call    showString                              ; 1BAB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BB0 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1BB3 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1BB7 _ 8B. 45, 20
        movsx   eax, al                                 ; 1BBA _ 0F BE. C0
        sub     esp, 8                                  ; 1BBD _ 83. EC, 08
        push    ?_202                                   ; 1BC0 _ 68, 00000088(d)
        push    eax                                     ; 1BC5 _ 50
        push    dword [ebp-2CH]                         ; 1BC6 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1BC9 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1BCC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BCF _ FF. 75, 08
        call    showString                              ; 1BD2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BD7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1BDA _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1BDD _ 8B. 40, 10
        sub     esp, 12                                 ; 1BE0 _ 83. EC, 0C
        push    eax                                     ; 1BE3 _ 50
        call    intToHexStr                             ; 1BE4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BE9 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1BEC _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1BEF _ 8B. 45, 20
        movsx   eax, al                                 ; 1BF2 _ 0F BE. C0
        sub     esp, 8                                  ; 1BF5 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1BF8 _ FF. 75, F4
        push    eax                                     ; 1BFB _ 50
        push    dword [ebp-2CH]                         ; 1BFC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1BFF _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1C02 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C05 _ FF. 75, 08
        call    showString                              ; 1C08 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C0D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1C10 _ 83. 45, D4, 10
        nop                                             ; 1C14 _ 90
        leave                                           ; 1C15 _ C9
        ret                                             ; 1C16 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1C17 _ 55
        mov     ebp, esp                                ; 1C18 _ 89. E5
        sub     esp, 24                                 ; 1C1A _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 1C1D _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1C20 _ 0F AF. 45, 14
        mov     edx, eax                                ; 1C24 _ 89. C2
        mov     eax, dword [memman]                     ; 1C26 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1C2B _ 83. EC, 08
        push    edx                                     ; 1C2E _ 52
        push    eax                                     ; 1C2F _ 50
        call    memman_alloc_4K                         ; 1C30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C35 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1C38 _ 89. 45, F0
        sub     esp, 12                                 ; 1C3B _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1C3E _ FF. 75, 08
        call    sheet_alloc                             ; 1C41 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C46 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1C49 _ 89. 45, F4
        sub     esp, 12                                 ; 1C4C _ 83. EC, 0C
        push    99                                      ; 1C4F _ 6A, 63
        push    dword [ebp+14H]                         ; 1C51 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1C54 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 1C57 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1C5A _ FF. 75, F4
        call    sheet_setbuf                            ; 1C5D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C62 _ 83. C4, 20
        sub     esp, 4                                  ; 1C65 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1C68 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1C6B _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C6E _ FF. 75, 08
        call    make_window8                            ; 1C71 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C76 _ 83. C4, 10
        sub     esp, 8                                  ; 1C79 _ 83. EC, 08
        push    7                                       ; 1C7C _ 6A, 07
        push    16                                      ; 1C7E _ 6A, 10
        push    150                                     ; 1C80 _ 68, 00000096
        push    42                                      ; 1C85 _ 6A, 2A
        push    8                                       ; 1C87 _ 6A, 08
        push    dword [ebp-0CH]                         ; 1C89 _ FF. 75, F4
        call    make_textbox8                           ; 1C8C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C91 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 1C94 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1C97 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1C9A _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C9D _ FF. 75, 08
        call    sheet_slide                             ; 1CA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CA5 _ 83. C4, 10
        sub     esp, 4                                  ; 1CA8 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 1CAB _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1CAE _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1CB1 _ FF. 75, 08
        call    sheet_level_updown                      ; 1CB4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CB9 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1CBC _ 8B. 45, F4
        leave                                           ; 1CBF _ C9
        ret                                             ; 1CC0 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 1CC1 _ 55
        mov     ebp, esp                                ; 1CC2 _ 89. E5
        sub     esp, 24                                 ; 1CC4 _ 83. EC, 18
        mov     eax, dword [ebp+14H]                    ; 1CC7 _ 8B. 45, 14
        imul    eax, dword [ebp+18H]                    ; 1CCA _ 0F AF. 45, 18
        mov     edx, eax                                ; 1CCE _ 89. C2
        mov     eax, dword [memman]                     ; 1CD0 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1CD5 _ 83. EC, 08
        push    edx                                     ; 1CD8 _ 52
        push    eax                                     ; 1CD9 _ 50
        call    memman_alloc_4K                         ; 1CDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CDF _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1CE2 _ 89. 45, F0
        sub     esp, 12                                 ; 1CE5 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1CE8 _ FF. 75, 08
        call    sheet_alloc                             ; 1CEB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CF0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1CF3 _ 89. 45, F4
        sub     esp, 12                                 ; 1CF6 _ 83. EC, 0C
        push    99                                      ; 1CF9 _ 6A, 63
        push    dword [ebp+18H]                         ; 1CFB _ FF. 75, 18
        push    dword [ebp+14H]                         ; 1CFE _ FF. 75, 14
        push    dword [ebp-10H]                         ; 1D01 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1D04 _ FF. 75, F4
        call    sheet_setbuf                            ; 1D07 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D0C _ 83. C4, 20
        sub     esp, 4                                  ; 1D0F _ 83. EC, 04
        push    dword [ebp+10H]                         ; 1D12 _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 1D15 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1D18 _ FF. 75, 08
        call    make_window8                            ; 1D1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D20 _ 83. C4, 10
        call    task_alloc                              ; 1D23 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 1D28 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D2B _ 8B. 45, 0C
        mov     dword [eax+68H], 0                      ; 1D2E _ C7. 40, 68, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D35 _ 8B. 45, 0C
        mov     dword [eax+6CH], 1073741824             ; 1D38 _ C7. 40, 6C, 40000000
        call    get_code32_addr                         ; 1D3F _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 1D44 _ F7. D8
        add     eax, task_b_main                        ; 1D46 _ 05, 00000000(d)
        mov     edx, eax                                ; 1D4B _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 1D4D _ 8B. 45, 0C
        mov     dword [eax+28H], edx                    ; 1D50 _ 89. 50, 28
        mov     eax, dword [ebp+0CH]                    ; 1D53 _ 8B. 45, 0C
        mov     dword [eax+50H], 0                      ; 1D56 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D5D _ 8B. 45, 0C
        mov     dword [eax+54H], 8                      ; 1D60 _ C7. 40, 54, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1D67 _ 8B. 45, 0C
        mov     dword [eax+58H], 32                     ; 1D6A _ C7. 40, 58, 00000020
        mov     eax, dword [ebp+0CH]                    ; 1D71 _ 8B. 45, 0C
        mov     dword [eax+5CH], 24                     ; 1D74 _ C7. 40, 5C, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1D7B _ 8B. 45, 0C
        mov     dword [eax+60H], 0                      ; 1D7E _ C7. 40, 60, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D85 _ 8B. 45, 0C
        mov     dword [eax+64H], 16                     ; 1D88 _ C7. 40, 64, 00000010
        mov     eax, dword [ebp+0CH]                    ; 1D8F _ 8B. 45, 0C
        mov     eax, dword [eax+40H]                    ; 1D92 _ 8B. 40, 40
        lea     edx, [eax-8H]                           ; 1D95 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 1D98 _ 8B. 45, 0C
        mov     dword [eax+40H], edx                    ; 1D9B _ 89. 50, 40
        mov     eax, dword [ebp+0CH]                    ; 1D9E _ 8B. 45, 0C
        mov     eax, dword [eax+40H]                    ; 1DA1 _ 8B. 40, 40
        add     eax, 4                                  ; 1DA4 _ 83. C0, 04
        mov     edx, eax                                ; 1DA7 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1DA9 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 1DAC _ 89. 02
        sub     esp, 12                                 ; 1DAE _ 83. EC, 0C
        push    dword [ebp+0CH]                         ; 1DB1 _ FF. 75, 0C
        call    task_run                                ; 1DB4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB9 _ 83. C4, 10
        push    dword [ebp+20H]                         ; 1DBC _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 1DBF _ FF. 75, 1C
        push    dword [ebp-0CH]                         ; 1DC2 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1DC5 _ FF. 75, 08
        call    sheet_slide                             ; 1DC8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DCD _ 83. C4, 10
        sub     esp, 4                                  ; 1DD0 _ 83. EC, 04
        push    dword [ebp+24H]                         ; 1DD3 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 1DD6 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1DD9 _ FF. 75, 08
        call    sheet_level_updown                      ; 1DDC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DE1 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1DE4 _ 8B. 45, F4
        leave                                           ; 1DE7 _ C9
        ret                                             ; 1DE8 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 1DE9 _ 55
        mov     ebp, esp                                ; 1DEA _ 89. E5
        push    ebx                                     ; 1DEC _ 53
        sub     esp, 36                                 ; 1DED _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1DF0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DF3 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1DF6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1DF9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DFC _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1DFF _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1E02 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1E05 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E08 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E0B _ 8B. 00
        push    0                                       ; 1E0D _ 6A, 00
        push    edx                                     ; 1E0F _ 52
        push    0                                       ; 1E10 _ 6A, 00
        push    0                                       ; 1E12 _ 6A, 00
        push    8                                       ; 1E14 _ 6A, 08
        push    dword [ebp-10H]                         ; 1E16 _ FF. 75, F0
        push    eax                                     ; 1E19 _ 50
        call    boxfill8                                ; 1E1A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E1F _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1E22 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1E25 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E28 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E2B _ 8B. 00
        push    1                                       ; 1E2D _ 6A, 01
        push    edx                                     ; 1E2F _ 52
        push    1                                       ; 1E30 _ 6A, 01
        push    1                                       ; 1E32 _ 6A, 01
        push    7                                       ; 1E34 _ 6A, 07
        push    dword [ebp-10H]                         ; 1E36 _ FF. 75, F0
        push    eax                                     ; 1E39 _ 50
        call    boxfill8                                ; 1E3A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E3F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E42 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1E45 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E48 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E4B _ 8B. 00
        push    edx                                     ; 1E4D _ 52
        push    0                                       ; 1E4E _ 6A, 00
        push    0                                       ; 1E50 _ 6A, 00
        push    0                                       ; 1E52 _ 6A, 00
        push    8                                       ; 1E54 _ 6A, 08
        push    dword [ebp-10H]                         ; 1E56 _ FF. 75, F0
        push    eax                                     ; 1E59 _ 50
        call    boxfill8                                ; 1E5A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E5F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E62 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1E65 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E68 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E6B _ 8B. 00
        push    edx                                     ; 1E6D _ 52
        push    1                                       ; 1E6E _ 6A, 01
        push    1                                       ; 1E70 _ 6A, 01
        push    1                                       ; 1E72 _ 6A, 01
        push    7                                       ; 1E74 _ 6A, 07
        push    dword [ebp-10H]                         ; 1E76 _ FF. 75, F0
        push    eax                                     ; 1E79 _ 50
        call    boxfill8                                ; 1E7A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E7F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E82 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1E85 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1E88 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1E8B _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1E8E _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1E91 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E94 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E97 _ 8B. 00
        push    ebx                                     ; 1E99 _ 53
        push    ecx                                     ; 1E9A _ 51
        push    1                                       ; 1E9B _ 6A, 01
        push    edx                                     ; 1E9D _ 52
        push    15                                      ; 1E9E _ 6A, 0F
        push    dword [ebp-10H]                         ; 1EA0 _ FF. 75, F0
        push    eax                                     ; 1EA3 _ 50
        call    boxfill8                                ; 1EA4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EA9 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1EAC _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1EAF _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1EB2 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1EB5 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1EB8 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1EBB _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1EBE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EC1 _ 8B. 00
        push    ebx                                     ; 1EC3 _ 53
        push    ecx                                     ; 1EC4 _ 51
        push    0                                       ; 1EC5 _ 6A, 00
        push    edx                                     ; 1EC7 _ 52
        push    0                                       ; 1EC8 _ 6A, 00
        push    dword [ebp-10H]                         ; 1ECA _ FF. 75, F0
        push    eax                                     ; 1ECD _ 50
        call    boxfill8                                ; 1ECE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1ED3 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1ED6 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1ED9 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1EDC _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1EDF _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1EE2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EE5 _ 8B. 00
        push    ecx                                     ; 1EE7 _ 51
        push    edx                                     ; 1EE8 _ 52
        push    2                                       ; 1EE9 _ 6A, 02
        push    2                                       ; 1EEB _ 6A, 02
        push    8                                       ; 1EED _ 6A, 08
        push    dword [ebp-10H]                         ; 1EEF _ FF. 75, F0
        push    eax                                     ; 1EF2 _ 50
        call    boxfill8                                ; 1EF3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EF8 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1EFB _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1EFE _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1F01 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F04 _ 8B. 00
        push    20                                      ; 1F06 _ 6A, 14
        push    edx                                     ; 1F08 _ 52
        push    3                                       ; 1F09 _ 6A, 03
        push    3                                       ; 1F0B _ 6A, 03
        push    12                                      ; 1F0D _ 6A, 0C
        push    dword [ebp-10H]                         ; 1F0F _ FF. 75, F0
        push    eax                                     ; 1F12 _ 50
        call    boxfill8                                ; 1F13 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F18 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F1B _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1F1E _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1F21 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1F24 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1F27 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1F2A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1F2D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F30 _ 8B. 00
        push    ebx                                     ; 1F32 _ 53
        push    ecx                                     ; 1F33 _ 51
        push    edx                                     ; 1F34 _ 52
        push    1                                       ; 1F35 _ 6A, 01
        push    15                                      ; 1F37 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1F39 _ FF. 75, F0
        push    eax                                     ; 1F3C _ 50
        call    boxfill8                                ; 1F3D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F42 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F45 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1F48 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1F4B _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1F4E _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1F51 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1F54 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1F57 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F5A _ 8B. 00
        push    ebx                                     ; 1F5C _ 53
        push    ecx                                     ; 1F5D _ 51
        push    edx                                     ; 1F5E _ 52
        push    0                                       ; 1F5F _ 6A, 00
        push    0                                       ; 1F61 _ 6A, 00
        push    dword [ebp-10H]                         ; 1F63 _ FF. 75, F0
        push    eax                                     ; 1F66 _ 50
        call    boxfill8                                ; 1F67 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F6C _ 83. C4, 1C
        sub     esp, 8                                  ; 1F6F _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1F72 _ FF. 75, 10
        push    7                                       ; 1F75 _ 6A, 07
        push    4                                       ; 1F77 _ 6A, 04
        push    8                                       ; 1F79 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1F7B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F7E _ FF. 75, 08
        call    showString                              ; 1F81 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F86 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1F89 _ C7. 45, E8, 00000000
        jmp     ?_079                                   ; 1F90 _ EB, 7D

?_073:  mov     dword [ebp-14H], 0                      ; 1F92 _ C7. 45, EC, 00000000
        jmp     ?_078                                   ; 1F99 _ EB, 6A

?_074:  mov     eax, dword [ebp-18H]                    ; 1F9B _ 8B. 45, E8
        shl     eax, 4                                  ; 1F9E _ C1. E0, 04
        mov     edx, eax                                ; 1FA1 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1FA3 _ 8B. 45, EC
        add     eax, edx                                ; 1FA6 _ 01. D0
        add     eax, closebtn.2498                      ; 1FA8 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1FAD _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1FB0 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1FB3 _ 80. 7D, E7, 40
        jnz     ?_075                                   ; 1FB7 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1FB9 _ C6. 45, E7, 00
        jmp     ?_077                                   ; 1FBD _ EB, 16

?_075:  cmp     byte [ebp-19H], 36                      ; 1FBF _ 80. 7D, E7, 24
        jnz     ?_076                                   ; 1FC3 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1FC5 _ C6. 45, E7, 0F
        jmp     ?_077                                   ; 1FC9 _ EB, 0A

?_076:  cmp     byte [ebp-19H], 81                      ; 1FCB _ 80. 7D, E7, 51
        jnz     ?_077                                   ; 1FCF _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1FD1 _ C6. 45, E7, 08
?_077:  mov     eax, dword [ebp+0CH]                    ; 1FD5 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1FD8 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1FDA _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1FDD _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1FE0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FE3 _ 8B. 40, 04
        imul    ecx, eax                                ; 1FE6 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1FE9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FEC _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1FEF _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1FF2 _ 8B. 45, EC
        add     eax, ebx                                ; 1FF5 _ 01. D8
        add     eax, ecx                                ; 1FF7 _ 01. C8
        add     edx, eax                                ; 1FF9 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1FFB _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1FFF _ 88. 02
        add     dword [ebp-14H], 1                      ; 2001 _ 83. 45, EC, 01
?_078:  cmp     dword [ebp-14H], 15                     ; 2005 _ 83. 7D, EC, 0F
        jle     ?_074                                   ; 2009 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 200B _ 83. 45, E8, 01
?_079:  cmp     dword [ebp-18H], 13                     ; 200F _ 83. 7D, E8, 0D
        jle     ?_073                                   ; 2013 _ 0F 8E, FFFFFF79
        nop                                             ; 2019 _ 90
        mov     ebx, dword [ebp-4H]                     ; 201A _ 8B. 5D, FC
        leave                                           ; 201D _ C9
        ret                                             ; 201E _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 201F _ 55
        mov     ebp, esp                                ; 2020 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2022 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2025 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 202B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 202E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2035 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2038 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 203F _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2042 _ C7. 40, 0C, 00000000
        nop                                             ; 2049 _ 90
        pop     ebp                                     ; 204A _ 5D
        ret                                             ; 204B _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 204C _ 55
        mov     ebp, esp                                ; 204D _ 89. E5
        sub     esp, 16                                 ; 204F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2052 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2059 _ C7. 45, FC, 00000000
        jmp     ?_081                                   ; 2060 _ EB, 14

?_080:  mov     eax, dword [ebp+8H]                     ; 2062 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2065 _ 8B. 55, FC
        add     edx, 2                                  ; 2068 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 206B _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 206F _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2072 _ 83. 45, FC, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 2076 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2079 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 207B _ 39. 45, FC
        jl      ?_080                                   ; 207E _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2080 _ 8B. 45, F8
        leave                                           ; 2083 _ C9
        ret                                             ; 2084 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2085 _ 55
        mov     ebp, esp                                ; 2086 _ 89. E5
        sub     esp, 16                                 ; 2088 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 208B _ C7. 45, F8, 00000000
        jmp     ?_085                                   ; 2092 _ E9, 00000085

?_082:  mov     eax, dword [ebp+8H]                     ; 2097 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 209A _ 8B. 55, F8
        add     edx, 2                                  ; 209D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20A0 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 20A4 _ 39. 45, 0C
        ja      ?_084                                   ; 20A7 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 20A9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20AC _ 8B. 55, F8
        add     edx, 2                                  ; 20AF _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 20B2 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 20B5 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 20B8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20BB _ 8B. 55, F8
        add     edx, 2                                  ; 20BE _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 20C1 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 20C4 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 20C7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20CA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20CD _ 8B. 55, F8
        add     edx, 2                                  ; 20D0 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 20D3 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 20D6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20D9 _ 8B. 55, F8
        add     edx, 2                                  ; 20DC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20DF _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 20E3 _ 2B. 45, 0C
        mov     edx, eax                                ; 20E6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 20E8 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 20EB _ 8B. 4D, F8
        add     ecx, 2                                  ; 20EE _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 20F1 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 20F5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20F8 _ 8B. 55, F8
        add     edx, 2                                  ; 20FB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20FE _ 8B. 44 D0, 04
        test    eax, eax                                ; 2102 _ 85. C0
        jnz     ?_083                                   ; 2104 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2106 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2109 _ 8B. 00
        lea     edx, [eax-1H]                           ; 210B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 210E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2111 _ 89. 10
?_083:  mov     eax, dword [ebp-4H]                     ; 2113 _ 8B. 45, FC
        jmp     ?_086                                   ; 2116 _ EB, 17

?_084:  add     dword [ebp-8H], 1                       ; 2118 _ 83. 45, F8, 01
?_085:  mov     eax, dword [ebp+8H]                     ; 211C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 211F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2121 _ 39. 45, F8
        jl      ?_082                                   ; 2124 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 212A _ B8, 00000000
?_086:  leave                                           ; 212F _ C9
        ret                                             ; 2130 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2131 _ 55
        mov     ebp, esp                                ; 2132 _ 89. E5
        sub     esp, 16                                 ; 2134 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2137 _ 8B. 45, 0C
        add     eax, 4095                               ; 213A _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 213F _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2144 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2147 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 214A _ FF. 75, 08
        call    memman_alloc_FF                         ; 214D _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2152 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2155 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2158 _ 8B. 45, FC
        leave                                           ; 215B _ C9
        ret                                             ; 215C _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 215D _ 55
        mov     ebp, esp                                ; 215E _ 89. E5
        push    ebx                                     ; 2160 _ 53
        sub     esp, 16                                 ; 2161 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2164 _ C7. 45, F4, 00000000
        jmp     ?_088                                   ; 216B _ EB, 15

?_087:  mov     eax, dword [ebp+8H]                     ; 216D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2170 _ 8B. 55, F4
        add     edx, 2                                  ; 2173 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2176 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2179 _ 39. 45, 0C
        jc      ?_089                                   ; 217C _ 72, 10
        add     dword [ebp-0CH], 1                      ; 217E _ 83. 45, F4, 01
?_088:  mov     eax, dword [ebp+8H]                     ; 2182 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2185 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2187 _ 39. 45, F4
        jl      ?_087                                   ; 218A _ 7C, E1
        jmp     ?_090                                   ; 218C _ EB, 01

?_089:  nop                                             ; 218E _ 90
?_090:  cmp     dword [ebp-0CH], 0                      ; 218F _ 83. 7D, F4, 00
        jle     ?_092                                   ; 2193 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2199 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 219C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 219F _ 8B. 45, 08
        add     edx, 2                                  ; 21A2 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 21A5 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 21A8 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 21AB _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 21AE _ 8B. 45, 08
        add     ecx, 2                                  ; 21B1 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 21B4 _ 8B. 44 C8, 04
        add     eax, edx                                ; 21B8 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 21BA _ 39. 45, 0C
        jne     ?_092                                   ; 21BD _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 21C3 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21C6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21C9 _ 8B. 45, 08
        add     edx, 2                                  ; 21CC _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 21CF _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 21D3 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 21D6 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 21D9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21DC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21DF _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 21E2 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 21E5 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 21E9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21EC _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 21EE _ 39. 45, F4
        jge     ?_091                                   ; 21F1 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 21F3 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 21F6 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21F9 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21FC _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 21FF _ 8B. 55, F4
        add     edx, 2                                  ; 2202 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2205 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2208 _ 39. C1
        jnz     ?_091                                   ; 220A _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 220C _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 220F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2212 _ 8B. 45, 08
        add     edx, 2                                  ; 2215 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2218 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 221C _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 221F _ 8B. 4D, F4
        add     ecx, 2                                  ; 2222 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2225 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2229 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 222C _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 222F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2232 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2235 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2238 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 223C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 223F _ 8B. 00
        lea     edx, [eax-1H]                           ; 2241 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2244 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2247 _ 89. 10
?_091:  mov     eax, 0                                  ; 2249 _ B8, 00000000
        jmp     ?_098                                   ; 224E _ E9, 0000011C

?_092:  mov     eax, dword [ebp+8H]                     ; 2253 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2256 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2258 _ 39. 45, F4
        jge     ?_093                                   ; 225B _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 225D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2260 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2263 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2266 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2269 _ 8B. 55, F4
        add     edx, 2                                  ; 226C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 226F _ 8B. 04 D0
        cmp     ecx, eax                                ; 2272 _ 39. C1
        jnz     ?_093                                   ; 2274 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2276 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2279 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 227C _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 227F _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2282 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2285 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2288 _ 8B. 55, F4
        add     edx, 2                                  ; 228B _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 228E _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2292 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2295 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2298 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 229B _ 8B. 55, F4
        add     edx, 2                                  ; 229E _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 22A1 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 22A5 _ B8, 00000000
        jmp     ?_098                                   ; 22AA _ E9, 000000C0

?_093:  mov     eax, dword [ebp+8H]                     ; 22AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22B2 _ 8B. 00
        cmp     eax, 4095                               ; 22B4 _ 3D, 00000FFF
        jg      ?_097                                   ; 22B9 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 22BF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22C2 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 22C4 _ 89. 45, F8
        jmp     ?_095                                   ; 22C7 _ EB, 28

?_094:  mov     eax, dword [ebp-8H]                     ; 22C9 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 22CC _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 22CF _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 22D2 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 22D5 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 22D8 _ 8B. 45, 08
        add     edx, 2                                  ; 22DB _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 22DE _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 22E1 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 22E3 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 22E6 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 22E9 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 22ED _ 83. 6D, F8, 01
?_095:  mov     eax, dword [ebp-8H]                     ; 22F1 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 22F4 _ 3B. 45, F4
        jg      ?_094                                   ; 22F7 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 22F9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22FC _ 8B. 00
        lea     edx, [eax+1H]                           ; 22FE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2301 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2304 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2306 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2309 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 230C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 230F _ 8B. 00
        cmp     edx, eax                                ; 2311 _ 39. C2
        jge     ?_096                                   ; 2313 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2315 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2318 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 231A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 231D _ 89. 50, 04
?_096:  mov     eax, dword [ebp+8H]                     ; 2320 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2323 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2326 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2329 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 232C _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 232F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2332 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2335 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2338 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 233B _ 89. 54 C8, 04
        mov     eax, 0                                  ; 233F _ B8, 00000000
        jmp     ?_098                                   ; 2344 _ EB, 29

?_097:  mov     eax, dword [ebp+8H]                     ; 2346 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2349 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 234C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 234F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2352 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2355 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2358 _ 8B. 40, 08
        mov     edx, eax                                ; 235B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 235D _ 8B. 45, 10
        add     eax, edx                                ; 2360 _ 01. D0
        mov     edx, eax                                ; 2362 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2364 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2367 _ 89. 50, 08
        mov     eax, 4294967295                         ; 236A _ B8, FFFFFFFF
?_098:  add     esp, 16                                 ; 236F _ 83. C4, 10
        pop     ebx                                     ; 2372 _ 5B
        pop     ebp                                     ; 2373 _ 5D
        ret                                             ; 2374 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2375 _ 55
        mov     ebp, esp                                ; 2376 _ 89. E5
        sub     esp, 16                                 ; 2378 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 237B _ 8B. 45, 10
        add     eax, 4095                               ; 237E _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2383 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2388 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 238B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 238E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2391 _ FF. 75, 08
        call    memman_free                             ; 2394 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2399 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 239C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 239F _ 8B. 45, FC
        leave                                           ; 23A2 _ C9
        ret                                             ; 23A3 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 23A4 _ 55
        mov     ebp, esp                                ; 23A5 _ 89. E5
        sub     esp, 24                                 ; 23A7 _ 83. EC, 18
        sub     esp, 8                                  ; 23AA _ 83. EC, 08
        push    9232                                    ; 23AD _ 68, 00002410
        push    dword [ebp+8H]                          ; 23B2 _ FF. 75, 08
        call    memman_alloc_4K                         ; 23B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23BA _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 23BD _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 23C0 _ 83. 7D, F4, 00
        jnz     ?_099                                   ; 23C4 _ 75, 0A
        mov     eax, 0                                  ; 23C6 _ B8, 00000000
        jmp     ?_103                                   ; 23CB _ E9, 0000009A

?_099:  mov     eax, dword [ebp+10H]                    ; 23D0 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 23D3 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 23D7 _ 83. EC, 08
        push    eax                                     ; 23DA _ 50
        push    dword [ebp+8H]                          ; 23DB _ FF. 75, 08
        call    memman_alloc_4K                         ; 23DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23E3 _ 83. C4, 10
        mov     edx, eax                                ; 23E6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 23E8 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 23EB _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 23EE _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 23F1 _ 8B. 40, 04
        test    eax, eax                                ; 23F4 _ 85. C0
        jnz     ?_100                                   ; 23F6 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 23F8 _ 8B. 45, F4
        sub     esp, 4                                  ; 23FB _ 83. EC, 04
        push    9232                                    ; 23FE _ 68, 00002410
        push    eax                                     ; 2403 _ 50
        push    dword [ebp+8H]                          ; 2404 _ FF. 75, 08
        call    memman_free_4K                          ; 2407 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 240C _ 83. C4, 10
        mov     eax, 0                                  ; 240F _ B8, 00000000
        jmp     ?_103                                   ; 2414 _ EB, 54

?_100:  mov     eax, dword [ebp-0CH]                    ; 2416 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2419 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 241C _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 241E _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2421 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2424 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2427 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 242A _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 242D _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2430 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2433 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 243A _ C7. 45, F0, 00000000
        jmp     ?_102                                   ; 2441 _ EB, 1B

?_101:  mov     eax, dword [ebp-0CH]                    ; 2443 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2446 _ 8B. 55, F0
        add     edx, 33                                 ; 2449 _ 83. C2, 21
        shl     edx, 5                                  ; 244C _ C1. E2, 05
        add     eax, edx                                ; 244F _ 01. D0
        add     eax, 16                                 ; 2451 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2454 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 245A _ 83. 45, F0, 01
?_102:  cmp     dword [ebp-10H], 255                    ; 245E _ 81. 7D, F0, 000000FF
        jle     ?_101                                   ; 2465 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2467 _ 8B. 45, F4
?_103:  leave                                           ; 246A _ C9
        ret                                             ; 246B _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 246C _ 55
        mov     ebp, esp                                ; 246D _ 89. E5
        sub     esp, 16                                 ; 246F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2472 _ C7. 45, F8, 00000000
        jmp     ?_106                                   ; 2479 _ EB, 4B

?_104:  mov     eax, dword [ebp+8H]                     ; 247B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 247E _ 8B. 55, F8
        add     edx, 33                                 ; 2481 _ 83. C2, 21
        shl     edx, 5                                  ; 2484 _ C1. E2, 05
        add     eax, edx                                ; 2487 _ 01. D0
        add     eax, 16                                 ; 2489 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 248C _ 8B. 00
        test    eax, eax                                ; 248E _ 85. C0
        jnz     ?_105                                   ; 2490 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2492 _ 8B. 45, F8
        shl     eax, 5                                  ; 2495 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2498 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 249E _ 8B. 45, 08
        add     eax, edx                                ; 24A1 _ 01. D0
        add     eax, 4                                  ; 24A3 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 24A6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 24A9 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 24AC _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 24B3 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 24B6 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 24BD _ 8B. 45, FC
        jmp     ?_107                                   ; 24C0 _ EB, 12

?_105:  add     dword [ebp-8H], 1                       ; 24C2 _ 83. 45, F8, 01
?_106:  cmp     dword [ebp-8H], 255                     ; 24C6 _ 81. 7D, F8, 000000FF
        jle     ?_104                                   ; 24CD _ 7E, AC
        mov     eax, 0                                  ; 24CF _ B8, 00000000
?_107:  leave                                           ; 24D4 _ C9
        ret                                             ; 24D5 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 24D6 _ 55
        mov     ebp, esp                                ; 24D7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 24D9 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 24DC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 24DF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 24E1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 24E4 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 24E7 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 24EA _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 24ED _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 24F0 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 24F3 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 24F6 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 24F9 _ 89. 50, 14
        nop                                             ; 24FC _ 90
        pop     ebp                                     ; 24FD _ 5D
        ret                                             ; 24FE _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 24FF _ 55
        mov     ebp, esp                                ; 2500 _ 89. E5
        push    esi                                     ; 2502 _ 56
        push    ebx                                     ; 2503 _ 53
        sub     esp, 32                                 ; 2504 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2507 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 250A _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 250D _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2510 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2513 _ 8B. 40, 10
        add     eax, 1                                  ; 2516 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2519 _ 39. 45, 10
        jle     ?_108                                   ; 251C _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 251E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2521 _ 8B. 40, 10
        add     eax, 1                                  ; 2524 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2527 _ 89. 45, 10
?_108:  cmp     dword [ebp+10H], -1                     ; 252A _ 83. 7D, 10, FF
        jge     ?_109                                   ; 252E _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2530 _ C7. 45, 10, FFFFFFFF
?_109:  mov     eax, dword [ebp+0CH]                    ; 2537 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 253A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 253D _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2540 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2543 _ 3B. 45, 10
        jle     ?_116                                   ; 2546 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 254C _ 83. 7D, 10, 00
        js      ?_112                                   ; 2550 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2556 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2559 _ 89. 45, E4
        jmp     ?_111                                   ; 255C _ EB, 34

?_110:  mov     eax, dword [ebp-1CH]                    ; 255E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2561 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2564 _ 8B. 45, 08
        add     edx, 4                                  ; 2567 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 256A _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 256E _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2571 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2574 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2577 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 257B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 257E _ 8B. 55, E4
        add     edx, 4                                  ; 2581 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2584 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2588 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 258B _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 258E _ 83. 6D, E4, 01
?_111:  mov     eax, dword [ebp-1CH]                    ; 2592 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2595 _ 3B. 45, 10
        jg      ?_110                                   ; 2598 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 259A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 259D _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 25A0 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 25A3 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 25A6 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 25AA _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 25AD _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 25B0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25B3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25B6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25B9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25BC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25BF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25C2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25C5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25C8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25CB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25CE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25D1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25D4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25D7 _ 8B. 40, 0C
        sub     esp, 8                                  ; 25DA _ 83. EC, 08
        push    esi                                     ; 25DD _ 56
        push    ebx                                     ; 25DE _ 53
        push    ecx                                     ; 25DF _ 51
        push    edx                                     ; 25E0 _ 52
        push    eax                                     ; 25E1 _ 50
        push    dword [ebp+8H]                          ; 25E2 _ FF. 75, 08
        call    sheet_refreshmap                        ; 25E5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25EA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 25ED _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 25F0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 25F3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25F6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25F9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25FC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25FF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2602 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2605 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2608 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 260B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 260E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2611 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2614 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2617 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 261A _ 8B. 40, 0C
        sub     esp, 4                                  ; 261D _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2620 _ FF. 75, F4
        push    esi                                     ; 2623 _ 56
        push    ebx                                     ; 2624 _ 53
        push    ecx                                     ; 2625 _ 51
        push    edx                                     ; 2626 _ 52
        push    eax                                     ; 2627 _ 50
        push    dword [ebp+8H]                          ; 2628 _ FF. 75, 08
        call    sheet_refresh_new                       ; 262B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2630 _ 83. C4, 20
        jmp     ?_123                                   ; 2633 _ E9, 00000244

?_112:  mov     eax, dword [ebp+8H]                     ; 2638 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 263B _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 263E _ 39. 45, F4
        jge     ?_115                                   ; 2641 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2643 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2646 _ 89. 45, E8
        jmp     ?_114                                   ; 2649 _ EB, 34

?_113:  mov     eax, dword [ebp-18H]                    ; 264B _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 264E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2651 _ 8B. 45, 08
        add     edx, 4                                  ; 2654 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2657 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 265B _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 265E _ 8B. 4D, E8
        add     ecx, 4                                  ; 2661 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2664 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2668 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 266B _ 8B. 55, E8
        add     edx, 4                                  ; 266E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2671 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2675 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2678 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 267B _ 83. 45, E8, 01
?_114:  mov     eax, dword [ebp+8H]                     ; 267F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2682 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2685 _ 39. 45, E8
        jl      ?_113                                   ; 2688 _ 7C, C1
?_115:  mov     eax, dword [ebp+8H]                     ; 268A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 268D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2690 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2693 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2696 _ 89. 50, 10
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
        sub     esp, 8                                  ; 26C3 _ 83. EC, 08
        push    0                                       ; 26C6 _ 6A, 00
        push    ebx                                     ; 26C8 _ 53
        push    ecx                                     ; 26C9 _ 51
        push    edx                                     ; 26CA _ 52
        push    eax                                     ; 26CB _ 50
        push    dword [ebp+8H]                          ; 26CC _ FF. 75, 08
        call    sheet_refreshmap                        ; 26CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26D4 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 26D7 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 26DA _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 26DD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26E0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26E3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 26E6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 26E9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26EC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26EF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26F2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26F5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 26F8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 26FB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26FE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2701 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2704 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2707 _ 83. EC, 04
        push    esi                                     ; 270A _ 56
        push    0                                       ; 270B _ 6A, 00
        push    ebx                                     ; 270D _ 53
        push    ecx                                     ; 270E _ 51
        push    edx                                     ; 270F _ 52
        push    eax                                     ; 2710 _ 50
        push    dword [ebp+8H]                          ; 2711 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2714 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2719 _ 83. C4, 20
        jmp     ?_123                                   ; 271C _ E9, 0000015B

?_116:  mov     eax, dword [ebp-0CH]                    ; 2721 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2724 _ 3B. 45, 10
        jge     ?_123                                   ; 2727 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 272D _ 83. 7D, F4, 00
        js      ?_119                                   ; 2731 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2733 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2736 _ 89. 45, EC
        jmp     ?_118                                   ; 2739 _ EB, 34

?_117:  mov     eax, dword [ebp-14H]                    ; 273B _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 273E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2741 _ 8B. 45, 08
        add     edx, 4                                  ; 2744 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2747 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 274B _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 274E _ 8B. 4D, EC
        add     ecx, 4                                  ; 2751 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2754 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2758 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 275B _ 8B. 55, EC
        add     edx, 4                                  ; 275E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2761 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2765 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2768 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 276B _ 83. 45, EC, 01
?_118:  mov     eax, dword [ebp-14H]                    ; 276F _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2772 _ 3B. 45, 10
        jl      ?_117                                   ; 2775 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2777 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 277A _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 277D _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2780 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2783 _ 89. 54 88, 04
        jmp     ?_122                                   ; 2787 _ EB, 72

?_119:  cmp     dword [ebp-0CH], 0                      ; 2789 _ 83. 7D, F4, 00
        jns     ?_122                                   ; 278D _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 278F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2792 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2795 _ 89. 45, F0
        jmp     ?_121                                   ; 2798 _ EB, 3A

?_120:  mov     eax, dword [ebp-10H]                    ; 279A _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 279D _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 27A0 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 27A3 _ 8B. 55, F0
        add     edx, 4                                  ; 27A6 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 27A9 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 27AD _ 8B. 45, 08
        add     ecx, 4                                  ; 27B0 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 27B3 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 27B7 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 27BA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27BD _ 8B. 45, 08
        add     edx, 4                                  ; 27C0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 27C3 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 27C7 _ 8B. 55, F0
        add     edx, 1                                  ; 27CA _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 27CD _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 27D0 _ 83. 6D, F0, 01
?_121:  mov     eax, dword [ebp-10H]                    ; 27D4 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 27D7 _ 3B. 45, 10
        jge     ?_120                                   ; 27DA _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 27DC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27DF _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 27E2 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 27E5 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 27E8 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 27EC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27EF _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 27F2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27F5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27F8 _ 89. 50, 10
?_122:  mov     eax, dword [ebp+0CH]                    ; 27FB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27FE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2801 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2804 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2807 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 280A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 280D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2810 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2813 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2816 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2819 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 281C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 281F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2822 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2825 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2828 _ FF. 75, 10
        push    ebx                                     ; 282B _ 53
        push    ecx                                     ; 282C _ 51
        push    edx                                     ; 282D _ 52
        push    eax                                     ; 282E _ 50
        push    dword [ebp+8H]                          ; 282F _ FF. 75, 08
        call    sheet_refreshmap                        ; 2832 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2837 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 283A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 283D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2840 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2843 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2846 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2849 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 284C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 284F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2852 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2855 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2858 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 285B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 285E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2861 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2864 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2867 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 286A _ FF. 75, 10
        push    ebx                                     ; 286D _ 53
        push    ecx                                     ; 286E _ 51
        push    edx                                     ; 286F _ 52
        push    eax                                     ; 2870 _ 50
        push    dword [ebp+8H]                          ; 2871 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2874 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2879 _ 83. C4, 20
?_123:  nop                                             ; 287C _ 90
        lea     esp, [ebp-8H]                           ; 287D _ 8D. 65, F8
        pop     ebx                                     ; 2880 _ 5B
        pop     esi                                     ; 2881 _ 5E
        pop     ebp                                     ; 2882 _ 5D
        ret                                             ; 2883 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2884 _ 55
        mov     ebp, esp                                ; 2885 _ 89. E5
        push    edi                                     ; 2887 _ 57
        push    esi                                     ; 2888 _ 56
        push    ebx                                     ; 2889 _ 53
        sub     esp, 28                                 ; 288A _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 288D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2890 _ 8B. 40, 18
        test    eax, eax                                ; 2893 _ 85. C0
        js      ?_124                                   ; 2895 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2897 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 289A _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 289D _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 28A0 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 28A3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28A6 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 28A9 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 28AC _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 28AF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28B2 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 28B5 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 28B8 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 28BB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28BE _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 28C1 _ 8B. 45, 14
        add     edx, eax                                ; 28C4 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28C6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28C9 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 28CC _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 28CF _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 28D2 _ 03. 45, E4
        sub     esp, 4                                  ; 28D5 _ 83. EC, 04
        push    ebx                                     ; 28D8 _ 53
        push    ecx                                     ; 28D9 _ 51
        push    edi                                     ; 28DA _ 57
        push    esi                                     ; 28DB _ 56
        push    edx                                     ; 28DC _ 52
        push    eax                                     ; 28DD _ 50
        push    dword [ebp+8H]                          ; 28DE _ FF. 75, 08
        call    sheet_refresh_new                       ; 28E1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28E6 _ 83. C4, 20
?_124:  mov     eax, 0                                  ; 28E9 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 28EE _ 8D. 65, F4
        pop     ebx                                     ; 28F1 _ 5B
        pop     esi                                     ; 28F2 _ 5E
        pop     edi                                     ; 28F3 _ 5F
        pop     ebp                                     ; 28F4 _ 5D
        ret                                             ; 28F5 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 28F6 _ 55
        mov     ebp, esp                                ; 28F7 _ 89. E5
        push    esi                                     ; 28F9 _ 56
        push    ebx                                     ; 28FA _ 53
        sub     esp, 16                                 ; 28FB _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 28FE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2901 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2904 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2907 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 290A _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 290D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2910 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2913 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2916 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2919 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 291C _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 291F _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2922 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2925 _ 8B. 40, 18
        test    eax, eax                                ; 2928 _ 85. C0
        js      ?_125                                   ; 292A _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2930 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2933 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2936 _ 8B. 45, F4
        add     edx, eax                                ; 2939 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 293B _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 293E _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2941 _ 8B. 45, F0
        add     eax, ecx                                ; 2944 _ 01. C8
        sub     esp, 8                                  ; 2946 _ 83. EC, 08
        push    0                                       ; 2949 _ 6A, 00
        push    edx                                     ; 294B _ 52
        push    eax                                     ; 294C _ 50
        push    dword [ebp-0CH]                         ; 294D _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2950 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2953 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2956 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 295B _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 295E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2961 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2964 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2967 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 296A _ 8B. 55, 14
        add     ecx, edx                                ; 296D _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 296F _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2972 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2975 _ 8B. 55, 10
        add     edx, ebx                                ; 2978 _ 01. DA
        sub     esp, 8                                  ; 297A _ 83. EC, 08
        push    eax                                     ; 297D _ 50
        push    ecx                                     ; 297E _ 51
        push    edx                                     ; 297F _ 52
        push    dword [ebp+14H]                         ; 2980 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2983 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2986 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2989 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 298E _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2991 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2994 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2997 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 299A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 299D _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 29A0 _ 8B. 45, F4
        add     edx, eax                                ; 29A3 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 29A5 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 29A8 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 29AB _ 8B. 45, F0
        add     eax, ebx                                ; 29AE _ 01. D8
        sub     esp, 4                                  ; 29B0 _ 83. EC, 04
        push    ecx                                     ; 29B3 _ 51
        push    0                                       ; 29B4 _ 6A, 00
        push    edx                                     ; 29B6 _ 52
        push    eax                                     ; 29B7 _ 50
        push    dword [ebp-0CH]                         ; 29B8 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 29BB _ FF. 75, F0
        push    dword [ebp+8H]                          ; 29BE _ FF. 75, 08
        call    sheet_refresh_new                       ; 29C1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29C6 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 29C9 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 29CC _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 29CF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 29D2 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 29D5 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 29D8 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 29DB _ 8B. 4D, 14
        add     ebx, ecx                                ; 29DE _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 29E0 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 29E3 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 29E6 _ 8B. 4D, 10
        add     ecx, esi                                ; 29E9 _ 01. F1
        sub     esp, 4                                  ; 29EB _ 83. EC, 04
        push    edx                                     ; 29EE _ 52
        push    eax                                     ; 29EF _ 50
        push    ebx                                     ; 29F0 _ 53
        push    ecx                                     ; 29F1 _ 51
        push    dword [ebp+14H]                         ; 29F2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 29F5 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 29F8 _ FF. 75, 08
        call    sheet_refresh_new                       ; 29FB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A00 _ 83. C4, 20
?_125:  nop                                             ; 2A03 _ 90
        lea     esp, [ebp-8H]                           ; 2A04 _ 8D. 65, F8
        pop     ebx                                     ; 2A07 _ 5B
        pop     esi                                     ; 2A08 _ 5E
        pop     ebp                                     ; 2A09 _ 5D
        ret                                             ; 2A0A _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2A0B _ 55
        mov     ebp, esp                                ; 2A0C _ 89. E5
        sub     esp, 48                                 ; 2A0E _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2A11 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A14 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2A16 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2A19 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2A1C _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2A1F _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2A22 _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 2A26 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2A28 _ C7. 45, 0C, 00000000
?_126:  cmp     dword [ebp+10H], 8                      ; 2A2F _ 83. 7D, 10, 08
        jg      ?_127                                   ; 2A33 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2A35 _ C7. 45, 10, 00000000
?_127:  mov     eax, dword [ebp+8H]                     ; 2A3C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A3F _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2A42 _ 39. 45, 14
        jle     ?_128                                   ; 2A45 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A47 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A4A _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2A4D _ 89. 45, 14
?_128:  mov     eax, dword [ebp+8H]                     ; 2A50 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A53 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2A56 _ 39. 45, 18
        jle     ?_129                                   ; 2A59 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A5B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A5E _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2A61 _ 89. 45, 18
?_129:  mov     eax, dword [ebp+1CH]                    ; 2A64 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2A67 _ 89. 45, DC
        jmp     ?_136                                   ; 2A6A _ E9, 00000118

?_130:  mov     eax, dword [ebp+8H]                     ; 2A6F _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2A72 _ 8B. 55, DC
        add     edx, 4                                  ; 2A75 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A78 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2A7C _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2A7F _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2A82 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2A84 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2A87 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2A8A _ 8B. 55, 08
        add     edx, 1044                               ; 2A8D _ 81. C2, 00000414
        sub     eax, edx                                ; 2A93 _ 29. D0
        sar     eax, 5                                  ; 2A95 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2A98 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2A9B _ C7. 45, E0, 00000000
        jmp     ?_135                                   ; 2AA2 _ E9, 000000CD

?_131:  mov     eax, dword [ebp-10H]                    ; 2AA7 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2AAA _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2AAD _ 8B. 45, E0
        add     eax, edx                                ; 2AB0 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2AB2 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2AB5 _ C7. 45, E4, 00000000
        jmp     ?_134                                   ; 2ABC _ E9, 000000A0

?_132:  mov     eax, dword [ebp-10H]                    ; 2AC1 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2AC4 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2AC7 _ 8B. 45, E4
        add     eax, edx                                ; 2ACA _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2ACC _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2ACF _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2AD2 _ 3B. 45, FC
        jg      ?_133                                   ; 2AD5 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2ADB _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2ADE _ 3B. 45, 14
        jge     ?_133                                   ; 2AE1 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2AE3 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2AE6 _ 3B. 45, F8
        jg      ?_133                                   ; 2AE9 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2AEB _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2AEE _ 3B. 45, 18
        jge     ?_133                                   ; 2AF1 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2AF3 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2AF6 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2AF9 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2AFD _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2AFF _ 8B. 45, E4
        add     eax, edx                                ; 2B02 _ 01. D0
        mov     edx, eax                                ; 2B04 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2B06 _ 8B. 45, F4
        add     eax, edx                                ; 2B09 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B0B _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2B0E _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2B11 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B14 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2B17 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B1B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B1D _ 8B. 45, FC
        add     eax, edx                                ; 2B20 _ 01. D0
        mov     edx, eax                                ; 2B22 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2B24 _ 8B. 45, EC
        add     eax, edx                                ; 2B27 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B29 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2B2C _ 38. 45, DA
        jnz     ?_133                                   ; 2B2F _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2B31 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2B35 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2B38 _ 8B. 40, 14
        cmp     edx, eax                                ; 2B3B _ 39. C2
        jz      ?_133                                   ; 2B3D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2B3F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B42 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2B45 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B49 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B4B _ 8B. 45, FC
        add     eax, edx                                ; 2B4E _ 01. D0
        mov     edx, eax                                ; 2B50 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2B52 _ 8B. 45, E8
        add     edx, eax                                ; 2B55 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2B57 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2B5B _ 88. 02
?_133:  add     dword [ebp-1CH], 1                      ; 2B5D _ 83. 45, E4, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 2B61 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B64 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2B67 _ 39. 45, E4
        jl      ?_132                                   ; 2B6A _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2B70 _ 83. 45, E0, 01
?_135:  mov     eax, dword [ebp-10H]                    ; 2B74 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2B77 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2B7A _ 39. 45, E0
        jl      ?_131                                   ; 2B7D _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2B83 _ 83. 45, DC, 01
?_136:  mov     eax, dword [ebp-24H]                    ; 2B87 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2B8A _ 3B. 45, 20
        jle     ?_130                                   ; 2B8D _ 0F 8E, FFFFFEDC
        nop                                             ; 2B93 _ 90
        leave                                           ; 2B94 _ C9
        ret                                             ; 2B95 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2B96 _ 55
        mov     ebp, esp                                ; 2B97 _ 89. E5
        sub     esp, 64                                 ; 2B99 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B9C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B9F _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2BA2 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2BA5 _ 83. 7D, 0C, 00
        jns     ?_137                                   ; 2BA9 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2BAB _ C7. 45, 0C, 00000000
?_137:  mov     eax, dword [ebp+8H]                     ; 2BB2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BB5 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2BB8 _ 39. 45, 0C
        jle     ?_138                                   ; 2BBB _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BBD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BC0 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2BC3 _ 89. 45, 0C
?_138:  cmp     dword [ebp+10H], 0                      ; 2BC6 _ 83. 7D, 10, 00
        jns     ?_139                                   ; 2BCA _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2BCC _ C7. 45, 10, 00000000
?_139:  mov     eax, dword [ebp+8H]                     ; 2BD3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BD6 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2BD9 _ 39. 45, 10
        jle     ?_140                                   ; 2BDC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BDE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BE1 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2BE4 _ 89. 45, 10
?_140:  mov     eax, dword [ebp+1CH]                    ; 2BE7 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2BEA _ 89. 45, E0
        jmp     ?_151                                   ; 2BED _ E9, 00000140

?_141:  mov     eax, dword [ebp+8H]                     ; 2BF2 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2BF5 _ 8B. 55, E0
        add     edx, 4                                  ; 2BF8 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BFB _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2BFF _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2C02 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2C05 _ 8B. 55, 08
        add     edx, 1044                               ; 2C08 _ 81. C2, 00000414
        sub     eax, edx                                ; 2C0E _ 29. D0
        sar     eax, 5                                  ; 2C10 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2C13 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2C16 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2C19 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2C1B _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2C1E _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2C21 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2C24 _ 8B. 55, 0C
        sub     edx, eax                                ; 2C27 _ 29. C2
        mov     eax, edx                                ; 2C29 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2C2B _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2C2E _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2C31 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2C34 _ 8B. 55, 10
        sub     edx, eax                                ; 2C37 _ 29. C2
        mov     eax, edx                                ; 2C39 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2C3B _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2C3E _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2C41 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2C44 _ 8B. 55, 14
        sub     edx, eax                                ; 2C47 _ 29. C2
        mov     eax, edx                                ; 2C49 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2C4B _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2C4E _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2C51 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2C54 _ 8B. 55, 18
        sub     edx, eax                                ; 2C57 _ 29. C2
        mov     eax, edx                                ; 2C59 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2C5B _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2C5E _ 83. 7D, D0, 00
        jns     ?_142                                   ; 2C62 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2C64 _ C7. 45, D0, 00000000
?_142:  cmp     dword [ebp-2CH], 0                      ; 2C6B _ 83. 7D, D4, 00
        jns     ?_143                                   ; 2C6F _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2C71 _ C7. 45, D4, 00000000
?_143:  mov     eax, dword [ebp-10H]                    ; 2C78 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C7B _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2C7E _ 39. 45, D8
        jle     ?_144                                   ; 2C81 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2C83 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C86 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2C89 _ 89. 45, D8
?_144:  mov     eax, dword [ebp-10H]                    ; 2C8C _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2C8F _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2C92 _ 39. 45, DC
        jle     ?_145                                   ; 2C95 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2C97 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2C9A _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2C9D _ 89. 45, DC
?_145:  mov     eax, dword [ebp-2CH]                    ; 2CA0 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2CA3 _ 89. 45, E4
        jmp     ?_150                                   ; 2CA6 _ EB, 7A

?_146:  mov     eax, dword [ebp-10H]                    ; 2CA8 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2CAB _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2CAE _ 8B. 45, E4
        add     eax, edx                                ; 2CB1 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2CB3 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2CB6 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2CB9 _ 89. 45, E8
        jmp     ?_149                                   ; 2CBC _ EB, 58

?_147:  mov     eax, dword [ebp-10H]                    ; 2CBE _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2CC1 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2CC4 _ 8B. 45, E8
        add     eax, edx                                ; 2CC7 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2CC9 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2CCC _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2CCF _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2CD2 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2CD6 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2CD8 _ 8B. 45, E8
        add     eax, edx                                ; 2CDB _ 01. D0
        mov     edx, eax                                ; 2CDD _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2CDF _ 8B. 45, F4
        add     eax, edx                                ; 2CE2 _ 01. D0
        movzx   eax, byte [eax]                         ; 2CE4 _ 0F B6. 00
        movzx   edx, al                                 ; 2CE7 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2CEA _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2CED _ 8B. 40, 14
        cmp     edx, eax                                ; 2CF0 _ 39. C2
        jz      ?_148                                   ; 2CF2 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2CF4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2CF7 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2CFA _ 0F AF. 45, F8
        mov     edx, eax                                ; 2CFE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D00 _ 8B. 45, FC
        add     eax, edx                                ; 2D03 _ 01. D0
        mov     edx, eax                                ; 2D05 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2D07 _ 8B. 45, EC
        add     edx, eax                                ; 2D0A _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2D0C _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2D10 _ 88. 02
?_148:  add     dword [ebp-18H], 1                      ; 2D12 _ 83. 45, E8, 01
?_149:  mov     eax, dword [ebp-18H]                    ; 2D16 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2D19 _ 3B. 45, D8
        jl      ?_147                                   ; 2D1C _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2D1E _ 83. 45, E4, 01
?_150:  mov     eax, dword [ebp-1CH]                    ; 2D22 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2D25 _ 3B. 45, DC
        jl      ?_146                                   ; 2D28 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2D2E _ 83. 45, E0, 01
?_151:  mov     eax, dword [ebp+8H]                     ; 2D32 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D35 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2D38 _ 39. 45, E0
        jle     ?_141                                   ; 2D3B _ 0F 8E, FFFFFEB1
        nop                                             ; 2D41 _ 90
        leave                                           ; 2D42 _ C9
        ret                                             ; 2D43 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2D44 _ 55
        mov     ebp, esp                                ; 2D45 _ 89. E5
        sub     esp, 24                                 ; 2D47 _ 83. EC, 18
        sub     esp, 8                                  ; 2D4A _ 83. EC, 08
        push    52                                      ; 2D4D _ 6A, 34
        push    67                                      ; 2D4F _ 6A, 43
        call    io_out8                                 ; 2D51 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D56 _ 83. C4, 10
        sub     esp, 8                                  ; 2D59 _ 83. EC, 08
        push    156                                     ; 2D5C _ 68, 0000009C
        push    64                                      ; 2D61 _ 6A, 40
        call    io_out8                                 ; 2D63 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D68 _ 83. C4, 10
        sub     esp, 8                                  ; 2D6B _ 83. EC, 08
        push    46                                      ; 2D6E _ 6A, 2E
        push    64                                      ; 2D70 _ 6A, 40
        call    io_out8                                 ; 2D72 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D77 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2D7A _ C7. 05, 00000260(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2D84 _ C7. 45, F4, 00000000
        jmp     ?_153                                   ; 2D8B _ EB, 26

?_152:  mov     eax, dword [ebp-0CH]                    ; 2D8D _ 8B. 45, F4
        shl     eax, 4                                  ; 2D90 _ C1. E0, 04
        add     eax, ?_214                              ; 2D93 _ 05, 00000268(d)
        mov     dword [eax], 0                          ; 2D98 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2D9E _ 8B. 45, F4
        shl     eax, 4                                  ; 2DA1 _ C1. E0, 04
        add     eax, ?_215                              ; 2DA4 _ 05, 0000026C(d)
        mov     dword [eax], 0                          ; 2DA9 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2DAF _ 83. 45, F4, 01
?_153:  cmp     dword [ebp-0CH], 499                    ; 2DB3 _ 81. 7D, F4, 000001F3
        jle     ?_152                                   ; 2DBA _ 7E, D1
        nop                                             ; 2DBC _ 90
        leave                                           ; 2DBD _ C9
        ret                                             ; 2DBE _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2DBF _ 55
        mov     ebp, esp                                ; 2DC0 _ 89. E5
        sub     esp, 16                                 ; 2DC2 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2DC5 _ C7. 45, FC, 00000000
        jmp     ?_156                                   ; 2DCC _ EB, 36

?_154:  mov     eax, dword [ebp-4H]                     ; 2DCE _ 8B. 45, FC
        shl     eax, 4                                  ; 2DD1 _ C1. E0, 04
        add     eax, ?_214                              ; 2DD4 _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2DD9 _ 8B. 00
        test    eax, eax                                ; 2DDB _ 85. C0
        jnz     ?_155                                   ; 2DDD _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2DDF _ 8B. 45, FC
        shl     eax, 4                                  ; 2DE2 _ C1. E0, 04
        add     eax, ?_214                              ; 2DE5 _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2DEA _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2DF0 _ 8B. 45, FC
        shl     eax, 4                                  ; 2DF3 _ C1. E0, 04
        add     eax, timerctl                           ; 2DF6 _ 05, 00000260(d)
        add     eax, 4                                  ; 2DFB _ 83. C0, 04
        jmp     ?_157                                   ; 2DFE _ EB, 12

?_155:  add     dword [ebp-4H], 1                       ; 2E00 _ 83. 45, FC, 01
?_156:  cmp     dword [ebp-4H], 499                     ; 2E04 _ 81. 7D, FC, 000001F3
        jle     ?_154                                   ; 2E0B _ 7E, C1
        mov     eax, 0                                  ; 2E0D _ B8, 00000000
?_157:  leave                                           ; 2E12 _ C9
        ret                                             ; 2E13 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2E14 _ 55
        mov     ebp, esp                                ; 2E15 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E17 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2E1A _ C7. 40, 04, 00000000
        nop                                             ; 2E21 _ 90
        pop     ebp                                     ; 2E22 _ 5D
        ret                                             ; 2E23 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2E24 _ 55
        mov     ebp, esp                                ; 2E25 _ 89. E5
        sub     esp, 4                                  ; 2E27 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2E2A _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2E2D _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E30 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E33 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2E36 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2E39 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2E3C _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2E40 _ 88. 50, 0C
        nop                                             ; 2E43 _ 90
        leave                                           ; 2E44 _ C9
        ret                                             ; 2E45 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2E46 _ 55
        mov     ebp, esp                                ; 2E47 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E49 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E4C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2E4F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E51 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2E54 _ C7. 40, 04, 00000002
        nop                                             ; 2E5B _ 90
        pop     ebp                                     ; 2E5C _ 5D
        ret                                             ; 2E5D _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 2E5E _ 55
        mov     ebp, esp                                ; 2E5F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E61 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E64 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2E67 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E69 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2E6C _ C7. 40, 04, 00000002
        nop                                             ; 2E73 _ 90
        pop     ebp                                     ; 2E74 _ 5D
        ret                                             ; 2E75 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2E76 _ 55
        mov     ebp, esp                                ; 2E77 _ 89. E5
        mov     eax, timerctl                           ; 2E79 _ B8, 00000260(d)
        pop     ebp                                     ; 2E7E _ 5D
        ret                                             ; 2E7F _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2E80 _ 55
        mov     ebp, esp                                ; 2E81 _ 89. E5
        push    ebx                                     ; 2E83 _ 53
        sub     esp, 20                                 ; 2E84 _ 83. EC, 14
        sub     esp, 8                                  ; 2E87 _ 83. EC, 08
        push    32                                      ; 2E8A _ 6A, 20
        push    32                                      ; 2E8C _ 6A, 20
        call    io_out8                                 ; 2E8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2E93 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2E96 _ A1, 00000260(d)
        add     eax, 1                                  ; 2E9B _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2E9E _ A3, 00000260(d)
        mov     dword [ebp-10H], 0                      ; 2EA3 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 2EAA _ C7. 45, F4, 00000000
        jmp     ?_161                                   ; 2EB1 _ E9, 000000AD

?_158:  mov     eax, dword [ebp-0CH]                    ; 2EB6 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EB9 _ C1. E0, 04
        add     eax, ?_214                              ; 2EBC _ 05, 00000268(d)
        mov     eax, dword [eax]                        ; 2EC1 _ 8B. 00
        cmp     eax, 2                                  ; 2EC3 _ 83. F8, 02
        jne     ?_159                                   ; 2EC6 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 2ECC _ 8B. 45, F4
        shl     eax, 4                                  ; 2ECF _ C1. E0, 04
        add     eax, ?_213                              ; 2ED2 _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2ED7 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2ED9 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2EDC _ 8B. 45, F4
        shl     eax, 4                                  ; 2EDF _ C1. E0, 04
        add     eax, ?_213                              ; 2EE2 _ 05, 00000264(d)
        mov     dword [eax], edx                        ; 2EE7 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2EE9 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EEC _ C1. E0, 04
        add     eax, ?_213                              ; 2EEF _ 05, 00000264(d)
        mov     eax, dword [eax]                        ; 2EF4 _ 8B. 00
        test    eax, eax                                ; 2EF6 _ 85. C0
        jnz     ?_159                                   ; 2EF8 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 2EFA _ 8B. 45, F4
        shl     eax, 4                                  ; 2EFD _ C1. E0, 04
        add     eax, ?_214                              ; 2F00 _ 05, 00000268(d)
        mov     dword [eax], 1                          ; 2F05 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2F0B _ 8B. 45, F4
        shl     eax, 4                                  ; 2F0E _ C1. E0, 04
        add     eax, ?_216                              ; 2F11 _ 05, 00000270(d)
        movzx   eax, byte [eax]                         ; 2F16 _ 0F B6. 00
        movzx   edx, al                                 ; 2F19 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2F1C _ 8B. 45, F4
        shl     eax, 4                                  ; 2F1F _ C1. E0, 04
        add     eax, ?_215                              ; 2F22 _ 05, 0000026C(d)
        mov     eax, dword [eax]                        ; 2F27 _ 8B. 00
        sub     esp, 8                                  ; 2F29 _ 83. EC, 08
        push    edx                                     ; 2F2C _ 52
        push    eax                                     ; 2F2D _ 50
        call    fifo8_put                               ; 2F2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F33 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2F36 _ 8B. 45, F4
        shl     eax, 4                                  ; 2F39 _ C1. E0, 04
        add     eax, timerctl                           ; 2F3C _ 05, 00000260(d)
        lea     ebx, [eax+4H]                           ; 2F41 _ 8D. 58, 04
        call    getTaskTimer                            ; 2F44 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 2F49 _ 39. C3
        jnz     ?_159                                   ; 2F4B _ 75, 07
        mov     dword [ebp-10H], 1                      ; 2F4D _ C7. 45, F0, 00000001
?_159:  cmp     dword [ebp-10H], 1                      ; 2F54 _ 83. 7D, F0, 01
        jnz     ?_160                                   ; 2F58 _ 75, 05
        call    task_switch                             ; 2F5A _ E8, FFFFFFFC(rel)
?_160:  add     dword [ebp-0CH], 1                      ; 2F5F _ 83. 45, F4, 01
?_161:  cmp     dword [ebp-0CH], 499                    ; 2F63 _ 81. 7D, F4, 000001F3
        jle     ?_158                                   ; 2F6A _ 0F 8E, FFFFFF46
        nop                                             ; 2F70 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2F71 _ 8B. 5D, FC
        leave                                           ; 2F74 _ C9
        ret                                             ; 2F75 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2F76 _ 55
        mov     ebp, esp                                ; 2F77 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F79 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F7C _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2F7F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2F82 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F85 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2F88 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F8A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F8D _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2F90 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2F93 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2F96 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2F9D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2FA0 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2FA7 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2FAA _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2FB1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2FB4 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 2FB7 _ 89. 50, 18
        nop                                             ; 2FBA _ 90
        pop     ebp                                     ; 2FBB _ 5D
        ret                                             ; 2FBC _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2FBD _ 55
        mov     ebp, esp                                ; 2FBE _ 89. E5
        sub     esp, 24                                 ; 2FC0 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2FC3 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 2FC6 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 2FC9 _ 83. 7D, 08, 00
        jnz     ?_162                                   ; 2FCD _ 75, 0A
        mov     eax, 4294967295                         ; 2FCF _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2FD4 _ E9, 0000009C

?_162:  mov     eax, dword [ebp+8H]                     ; 2FD9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2FDC _ 8B. 40, 10
        test    eax, eax                                ; 2FDF _ 85. C0
        jnz     ?_163                                   ; 2FE1 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2FE3 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2FE6 _ 8B. 40, 14
        or      eax, 01H                                ; 2FE9 _ 83. C8, 01
        mov     edx, eax                                ; 2FEC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FEE _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2FF1 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2FF4 _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2FF9 _ EB, 7A

?_163:  mov     eax, dword [ebp+8H]                     ; 2FFB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2FFE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3000 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3003 _ 8B. 40, 08
        add     edx, eax                                ; 3006 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3008 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 300C _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 300E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3011 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3014 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3017 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 301A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 301D _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3020 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3023 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3026 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3029 _ 39. C2
        jl      ?_164                                   ; 302B _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 302D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3030 _ C7. 40, 08, 00000000
?_164:  mov     eax, dword [ebp+8H]                     ; 3037 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 303A _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 303D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3040 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3043 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3046 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3049 _ 8B. 40, 18
        test    eax, eax                                ; 304C _ 85. C0
        jz      ?_165                                   ; 304E _ 74, 20
        mov     eax, dword [ebp+8H]                     ; 3050 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3053 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3056 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3059 _ 83. F8, 02
        jz      ?_165                                   ; 305C _ 74, 12
        mov     eax, dword [ebp+8H]                     ; 305E _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3061 _ 8B. 40, 18
        sub     esp, 12                                 ; 3064 _ 83. EC, 0C
        push    eax                                     ; 3067 _ 50
        call    task_run                                ; 3068 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 306D _ 83. C4, 10
?_165:  mov     eax, 1                                  ; 3070 _ B8, 00000001
?_166:  leave                                           ; 3075 _ C9
        ret                                             ; 3076 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3077 _ 55
        mov     ebp, esp                                ; 3078 _ 89. E5
        sub     esp, 16                                 ; 307A _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 307D _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3080 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3083 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3086 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3089 _ 39. C2
        jnz     ?_167                                   ; 308B _ 75, 07
        mov     eax, 4294967295                         ; 308D _ B8, FFFFFFFF
        jmp     ?_169                                   ; 3092 _ EB, 51

?_167:  mov     eax, dword [ebp+8H]                     ; 3094 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3097 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3099 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 309C _ 8B. 40, 04
        add     eax, edx                                ; 309F _ 01. D0
        movzx   eax, byte [eax]                         ; 30A1 _ 0F B6. 00
        movzx   eax, al                                 ; 30A4 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 30A7 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 30AA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 30AD _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 30B0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30B3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 30B6 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30B9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30BC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30BF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30C2 _ 8B. 40, 0C
        cmp     edx, eax                                ; 30C5 _ 39. C2
        jl      ?_168                                   ; 30C7 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 30C9 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30CC _ C7. 40, 04, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 30D3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30D6 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 30D9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30DC _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 30DF _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 30E2 _ 8B. 45, FC
?_169:  leave                                           ; 30E5 _ C9
        ret                                             ; 30E6 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 30E7 _ 55
        mov     ebp, esp                                ; 30E8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30EA _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 30ED _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 30F0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30F3 _ 8B. 40, 10
        sub     edx, eax                                ; 30F6 _ 29. C2
        mov     eax, edx                                ; 30F8 _ 89. D0
        pop     ebp                                     ; 30FA _ 5D
        ret                                             ; 30FB _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 30FC _ 55
        mov     ebp, esp                                ; 30FD _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 30FF _ 81. 7D, 0C, 000FFFFF
        jbe     ?_170                                   ; 3106 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3108 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 310F _ 8B. 45, 0C
        shr     eax, 12                                 ; 3112 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3115 _ 89. 45, 0C
?_170:  mov     eax, dword [ebp+0CH]                    ; 3118 _ 8B. 45, 0C
        mov     edx, eax                                ; 311B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 311D _ 8B. 45, 08
        mov     word [eax], dx                          ; 3120 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3123 _ 8B. 45, 10
        mov     edx, eax                                ; 3126 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3128 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 312B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 312F _ 8B. 45, 10
        sar     eax, 16                                 ; 3132 _ C1. F8, 10
        mov     edx, eax                                ; 3135 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3137 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 313A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 313D _ 8B. 45, 14
        mov     edx, eax                                ; 3140 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3142 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3145 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3148 _ 8B. 45, 0C
        shr     eax, 16                                 ; 314B _ C1. E8, 10
        and     eax, 0FH                                ; 314E _ 83. E0, 0F
        mov     edx, eax                                ; 3151 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3153 _ 8B. 45, 14
        sar     eax, 8                                  ; 3156 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3159 _ 83. E0, F0
        or      eax, edx                                ; 315C _ 09. D0
        mov     edx, eax                                ; 315E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3160 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3163 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3166 _ 8B. 45, 10
        shr     eax, 24                                 ; 3169 _ C1. E8, 18
        mov     edx, eax                                ; 316C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 316E _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3171 _ 88. 50, 07
        nop                                             ; 3174 _ 90
        pop     ebp                                     ; 3175 _ 5D
        ret                                             ; 3176 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3177 _ 55
        mov     ebp, esp                                ; 3178 _ 89. E5
        mov     eax, dword [task_timer]                 ; 317A _ A1, 000021A4(d)
        pop     ebp                                     ; 317F _ 5D
        ret                                             ; 3180 _ C3
; getTaskTimer End of function

task_init:; Function begin
        push    ebp                                     ; 3181 _ 55
        mov     ebp, esp                                ; 3182 _ 89. E5
        sub     esp, 24                                 ; 3184 _ 83. EC, 18
        call    get_addr_gdt                            ; 3187 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 318C _ 89. 45, F0
        sub     esp, 8                                  ; 318F _ 83. EC, 08
        push    588                                     ; 3192 _ 68, 0000024C
        push    dword [ebp+8H]                          ; 3197 _ FF. 75, 08
        call    memman_alloc_4K                         ; 319A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 319F _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 31A2 _ A3, 000021A8(d)
        mov     dword [ebp-14H], 0                      ; 31A7 _ C7. 45, EC, 00000000
        jmp     ?_172                                   ; 31AE _ EB, 73

?_171:  mov     edx, dword [taskctl]                    ; 31B0 _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-14H]                    ; 31B6 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 31B9 _ 6B. C0, 70
        add     eax, edx                                ; 31BC _ 01. D0
        add     eax, 32                                 ; 31BE _ 83. C0, 20
        mov     dword [eax], 0                          ; 31C1 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 31C7 _ 8B. 45, EC
        add     eax, 7                                  ; 31CA _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 31CD _ 8B. 0D, 000021A8(d)
        lea     edx, [eax*8]                            ; 31D3 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 31DA _ 8B. 45, EC
        imul    eax, eax, 112                           ; 31DD _ 6B. C0, 70
        add     eax, ecx                                ; 31E0 _ 01. C8
        add     eax, 28                                 ; 31E2 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 31E5 _ 89. 10
        mov     eax, dword [taskctl]                    ; 31E7 _ A1, 000021A8(d)
        mov     edx, dword [ebp-14H]                    ; 31EC _ 8B. 55, EC
        imul    edx, edx, 112                           ; 31EF _ 6B. D2, 70
        add     edx, 16                                 ; 31F2 _ 83. C2, 10
        add     eax, edx                                ; 31F5 _ 01. D0
        add     eax, 20                                 ; 31F7 _ 83. C0, 14
        mov     ecx, eax                                ; 31FA _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 31FC _ 8B. 45, EC
        add     eax, 7                                  ; 31FF _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3202 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3209 _ 8B. 45, F0
        add     eax, edx                                ; 320C _ 01. D0
        push    137                                     ; 320E _ 68, 00000089
        push    ecx                                     ; 3213 _ 51
        push    103                                     ; 3214 _ 6A, 67
        push    eax                                     ; 3216 _ 50
        call    set_segmdesc                            ; 3217 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 321C _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 321F _ 83. 45, EC, 01
?_172:  cmp     dword [ebp-14H], 4                      ; 3223 _ 83. 7D, EC, 04
        jle     ?_171                                   ; 3227 _ 7E, 87
        call    task_alloc                              ; 3229 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 322E _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3231 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3234 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 323B _ A1, 000021A8(d)
        mov     dword [eax], 1                          ; 3240 _ C7. 00, 00000001
        mov     eax, dword [taskctl]                    ; 3246 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 324B _ C7. 40, 04, 00000000
        mov     eax, dword [taskctl]                    ; 3252 _ A1, 000021A8(d)
        mov     edx, dword [ebp-0CH]                    ; 3257 _ 8B. 55, F4
        mov     dword [eax+8H], edx                     ; 325A _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 325D _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3260 _ 8B. 00
        sub     esp, 12                                 ; 3262 _ 83. EC, 0C
        push    eax                                     ; 3265 _ 50
        call    load_tr                                 ; 3266 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 326B _ 83. C4, 10
        call    timer_alloc                             ; 326E _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3273 _ A3, 000021A4(d)
        mov     eax, dword [task_timer]                 ; 3278 _ A1, 000021A4(d)
        sub     esp, 8                                  ; 327D _ 83. EC, 08
        push    100                                     ; 3280 _ 6A, 64
        push    eax                                     ; 3282 _ 50
        call    timer_setTime                           ; 3283 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3288 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 328B _ 8B. 45, F4
        leave                                           ; 328E _ C9
        ret                                             ; 328F _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3290 _ 55
        mov     ebp, esp                                ; 3291 _ 89. E5
        sub     esp, 16                                 ; 3293 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3296 _ C7. 45, F8, 00000000
        jmp     ?_175                                   ; 329D _ E9, 000000E1

?_173:  mov     edx, dword [taskctl]                    ; 32A2 _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-8H]                     ; 32A8 _ 8B. 45, F8
        imul    eax, eax, 112                           ; 32AB _ 6B. C0, 70
        add     eax, edx                                ; 32AE _ 01. D0
        add     eax, 32                                 ; 32B0 _ 83. C0, 20
        mov     eax, dword [eax]                        ; 32B3 _ 8B. 00
        test    eax, eax                                ; 32B5 _ 85. C0
        jne     ?_174                                   ; 32B7 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 32BD _ A1, 000021A8(d)
        mov     edx, dword [ebp-8H]                     ; 32C2 _ 8B. 55, F8
        imul    edx, edx, 112                           ; 32C5 _ 6B. D2, 70
        add     edx, 16                                 ; 32C8 _ 83. C2, 10
        add     eax, edx                                ; 32CB _ 01. D0
        add     eax, 12                                 ; 32CD _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 32D0 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 32D3 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 32D6 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 32DD _ 8B. 45, FC
        mov     dword [eax+2CH], 514                    ; 32E0 _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-4H]                     ; 32E7 _ 8B. 45, FC
        mov     dword [eax+30H], 0                      ; 32EA _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-4H]                     ; 32F1 _ 8B. 45, FC
        mov     dword [eax+34H], 0                      ; 32F4 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-4H]                     ; 32FB _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 32FE _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 3305 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3308 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 330F _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3312 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-8H]                     ; 3319 _ 8B. 45, F8
        add     eax, 1                                  ; 331C _ 83. C0, 01
        shl     eax, 9                                  ; 331F _ C1. E0, 09
        mov     edx, eax                                ; 3322 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3324 _ 8B. 45, FC
        mov     dword [eax+40H], edx                    ; 3327 _ 89. 50, 40
        mov     eax, dword [ebp-4H]                     ; 332A _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 332D _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3334 _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 3337 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 333E _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3341 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 3348 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 334B _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3352 _ 8B. 45, FC
        mov     dword [eax+60H], 0                      ; 3355 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-4H]                     ; 335C _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 335F _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 3366 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3369 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3370 _ 8B. 45, FC
        mov     dword [eax+6CH], 1073741824             ; 3373 _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-4H]                     ; 337A _ 8B. 45, FC
        jmp     ?_176                                   ; 337D _ EB, 13

?_174:  add     dword [ebp-8H], 1                       ; 337F _ 83. 45, F8, 01
?_175:  cmp     dword [ebp-8H], 4                       ; 3383 _ 83. 7D, F8, 04
        jle     ?_173                                   ; 3387 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 338D _ B8, 00000000
?_176:  leave                                           ; 3392 _ C9
        ret                                             ; 3393 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3394 _ 55
        mov     ebp, esp                                ; 3395 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3397 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 339A _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 33A1 _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 33A6 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx]                        ; 33AC _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 33AE _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 33B1 _ 89. 4C 90, 08
        mov     eax, dword [taskctl]                    ; 33B5 _ A1, 000021A8(d)
        mov     edx, dword [eax]                        ; 33BA _ 8B. 10
        add     edx, 1                                  ; 33BC _ 83. C2, 01
        mov     dword [eax], edx                        ; 33BF _ 89. 10
        nop                                             ; 33C1 _ 90
        pop     ebp                                     ; 33C2 _ 5D
        ret                                             ; 33C3 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 33C4 _ 55
        mov     ebp, esp                                ; 33C5 _ 89. E5
        sub     esp, 8                                  ; 33C7 _ 83. EC, 08
        mov     eax, dword [task_timer]                 ; 33CA _ A1, 000021A4(d)
        sub     esp, 8                                  ; 33CF _ 83. EC, 08
        push    100                                     ; 33D2 _ 6A, 64
        push    eax                                     ; 33D4 _ 50
        call    timer_setTime                           ; 33D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 33DA _ 83. C4, 10
        mov     eax, dword [taskctl]                    ; 33DD _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 33E2 _ 8B. 00
        cmp     eax, 1                                  ; 33E4 _ 83. F8, 01
        jle     ?_178                                   ; 33E7 _ 7E, 50
        mov     eax, dword [taskctl]                    ; 33E9 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 33EE _ 8B. 50, 04
        add     edx, 1                                  ; 33F1 _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 33F4 _ 89. 50, 04
        mov     eax, dword [taskctl]                    ; 33F7 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 33FC _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 33FF _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 3404 _ 8B. 00
        cmp     edx, eax                                ; 3406 _ 39. C2
        jnz     ?_177                                   ; 3408 _ 75, 0C
        mov     eax, dword [taskctl]                    ; 340A _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 340F _ C7. 40, 04, 00000000
?_177:  mov     eax, dword [taskctl]                    ; 3416 _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 341B _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 3421 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3424 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3428 _ 8B. 00
        sub     esp, 8                                  ; 342A _ 83. EC, 08
        push    eax                                     ; 342D _ 50
        push    0                                       ; 342E _ 6A, 00
        call    farjmp                                  ; 3430 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3435 _ 83. C4, 10
        nop                                             ; 3438 _ 90
?_178:  nop                                             ; 3439 _ 90
        leave                                           ; 343A _ C9
        ret                                             ; 343B _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 343C _ 55
        mov     ebp, esp                                ; 343D _ 89. E5
        sub     esp, 24                                 ; 343F _ 83. EC, 18
        mov     byte [ebp-0DH], 0                       ; 3442 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3446 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3449 _ 8B. 40, 04
        cmp     eax, 2                                  ; 344C _ 83. F8, 02
        jnz     ?_179                                   ; 344F _ 75, 1B
        mov     eax, dword [taskctl]                    ; 3451 _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3456 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 345C _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 345F _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3463 _ 39. 45, 08
        jnz     ?_179                                   ; 3466 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3468 _ C6. 45, F3, 01
?_179:  mov     dword [ebp-0CH], 0                      ; 346C _ C7. 45, F4, 00000000
        jmp     ?_181                                   ; 3473 _ EB, 15

?_180:  mov     eax, dword [taskctl]                    ; 3475 _ A1, 000021A8(d)
        mov     edx, dword [ebp-0CH]                    ; 347A _ 8B. 55, F4
        mov     eax, dword [eax+edx*4+8H]               ; 347D _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3481 _ 39. 45, 08
        jz      ?_182                                   ; 3484 _ 74, 12
        add     dword [ebp-0CH], 1                      ; 3486 _ 83. 45, F4, 01
?_181:  mov     eax, dword [taskctl]                    ; 348A _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 348F _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 3491 _ 39. 45, F4
        jl      ?_180                                   ; 3494 _ 7C, DF
        jmp     ?_183                                   ; 3496 _ EB, 01

?_182:  nop                                             ; 3498 _ 90
?_183:  mov     eax, dword [taskctl]                    ; 3499 _ A1, 000021A8(d)
        mov     edx, dword [eax]                        ; 349E _ 8B. 10
        sub     edx, 1                                  ; 34A0 _ 83. EA, 01
        mov     dword [eax], edx                        ; 34A3 _ 89. 10
        mov     eax, dword [taskctl]                    ; 34A5 _ A1, 000021A8(d)
        mov     eax, dword [eax+4H]                     ; 34AA _ 8B. 40, 04
        cmp     dword [ebp-0CH], eax                    ; 34AD _ 39. 45, F4
        jge     ?_185                                   ; 34B0 _ 7D, 30
        mov     eax, dword [taskctl]                    ; 34B2 _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 34B7 _ 8B. 50, 04
        sub     edx, 1                                  ; 34BA _ 83. EA, 01
        mov     dword [eax+4H], edx                     ; 34BD _ 89. 50, 04
        jmp     ?_185                                   ; 34C0 _ EB, 20

?_184:  mov     edx, dword [taskctl]                    ; 34C2 _ 8B. 15, 000021A8(d)
        mov     eax, dword [ebp-0CH]                    ; 34C8 _ 8B. 45, F4
        lea     ecx, [eax+1H]                           ; 34CB _ 8D. 48, 01
        mov     eax, dword [taskctl]                    ; 34CE _ A1, 000021A8(d)
        mov     ecx, dword [edx+ecx*4+8H]               ; 34D3 _ 8B. 4C 8A, 08
        mov     edx, dword [ebp-0CH]                    ; 34D7 _ 8B. 55, F4
        mov     dword [eax+edx*4+8H], ecx               ; 34DA _ 89. 4C 90, 08
        add     dword [ebp-0CH], 1                      ; 34DE _ 83. 45, F4, 01
?_185:  mov     eax, dword [taskctl]                    ; 34E2 _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 34E7 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 34E9 _ 39. 45, F4
        jl      ?_184                                   ; 34EC _ 7C, D4
        mov     eax, dword [ebp+8H]                     ; 34EE _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 34F1 _ C7. 40, 04, 00000001
        cmp     byte [ebp-0DH], 0                       ; 34F8 _ 80. 7D, F3, 00
        jz      ?_187                                   ; 34FC _ 74, 41
        mov     eax, dword [taskctl]                    ; 34FE _ A1, 000021A8(d)
        mov     edx, dword [eax+4H]                     ; 3503 _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 3506 _ A1, 000021A8(d)
        mov     eax, dword [eax]                        ; 350B _ 8B. 00
        cmp     edx, eax                                ; 350D _ 39. C2
        jl      ?_186                                   ; 350F _ 7C, 0C
        mov     eax, dword [taskctl]                    ; 3511 _ A1, 000021A8(d)
        mov     dword [eax+4H], 0                       ; 3516 _ C7. 40, 04, 00000000
?_186:  mov     eax, dword [taskctl]                    ; 351D _ A1, 000021A8(d)
        mov     edx, dword [taskctl]                    ; 3522 _ 8B. 15, 000021A8(d)
        mov     edx, dword [edx+4H]                     ; 3528 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 352B _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 352F _ 8B. 00
        sub     esp, 8                                  ; 3531 _ 83. EC, 08
        push    eax                                     ; 3534 _ 50
        push    0                                       ; 3535 _ 6A, 00
        call    farjmp                                  ; 3537 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 353C _ 83. C4, 10
?_187:  nop                                             ; 353F _ 90
        leave                                           ; 3540 _ C9
        ret                                             ; 3541 _ C3
; task_sleep End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3542 _ 55
        mov     ebp, esp                                ; 3543 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3545 _ A1, 000021A8(d)
        pop     ebp                                     ; 354A _ 5D
        ret                                             ; 354B _ C3
; getTaskctl End of function



?_188:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_189:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 31H, 00H                 ; 0008 _ Task1.

?_190:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 32H, 00H                 ; 000E _ Task2.

?_191:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 33H, 00H                 ; 0014 _ Task3.

?_192:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 001A _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0022 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 002A _ herry.

?_193:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_194:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_195:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0039 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0041 _ sk B.

?_196:                                                  ; byte
        db 42H, 00H                                     ; 0046 _ B.

?_197:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0048 _ Page is:
        db 20H, 00H                                     ; 0050 _  .

?_198:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0052 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 005A _ Low: .

?_199:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0060 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0068 _ High: .

?_200:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 006F _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0077 _ w: .

?_201:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 007B _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0083 _ gh: .

?_202:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0088 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_203:  db 00H                                          ; 0002 _ .

?_204:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2259: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2302:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2357:                                            ; byte
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

closebtn.2498:                                          ; byte
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

?_205:  resw    1                                       ; 0004

?_206:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

?_207:  resd    1                                       ; 0020

mouseInfo:                                              ; byte
        resb    28                                      ; 0024

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_208:  resd    1                                       ; 00EC

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

task_a.2254:                                            ; dword
        resd    1                                       ; 0234

task_b.2244:                                            ; byte
        resd    1                                       ; 0238

?_209:  resd    1                                       ; 023C

?_210:  resd    1                                       ; 0240

cnt.2255: resd  1                                       ; 0244

line.2258:                                              ; dword
        resd    1                                       ; 0248

str.2400:                                               ; byte
        resb    1                                       ; 024C

?_211:  resb    9                                       ; 024D

?_212:  resb    2                                       ; 0256

line.2433:                                              ; dword
        resd    1                                       ; 0258

pos.2432: resd  1                                       ; 025C

timerctl:                                               ; byte
        resd    1                                       ; 0260

?_213:                                                  ; byte
        resb    4                                       ; 0264

?_214:                                                  ; byte
        resb    4                                       ; 0268

?_215:                                                  ; byte
        resb    4                                       ; 026C

?_216:                                                  ; byte
        resb    7988                                    ; 0270

task_timer:                                             ; dword
        resd    1                                       ; 21A4

taskctl: resd   1                                       ; 21A8


