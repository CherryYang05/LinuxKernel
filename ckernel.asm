; Disassembly of file: ckernel.o
; Tue May 11 00:14:55 2021
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
        mov     dword [ebp-64H], eax                    ; 0029 _ 89. 45, 9C
        movzx   eax, word [?_205]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-60H], eax                    ; 0034 _ 89. 45, A0
        movzx   eax, word [?_206]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-5CH], eax                    ; 003F _ 89. 45, A4
        call    getTimerController                      ; 0042 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-58H], eax                    ; 0047 _ 89. 45, A8
        call    init_pit                                ; 004A _ E8, FFFFFFFC(rel)
        push    0                                       ; 004F _ 6A, 00
        push    timerbuf                                ; 0051 _ 68, 0000021C(d)
        push    8                                       ; 0056 _ 6A, 08
        push    timerInfo                               ; 0058 _ 68, 00000200(d)
        call    fifo8_init                              ; 005D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0062 _ 83. C4, 10
        call    timer_alloc                             ; 0065 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], eax                    ; 006A _ 89. 45, AC
        sub     esp, 4                                  ; 006D _ 83. EC, 04
        push    10                                      ; 0070 _ 6A, 0A
        push    timerInfo                               ; 0072 _ 68, 00000200(d)
        push    dword [ebp-54H]                         ; 0077 _ FF. 75, AC
        call    timer_init                              ; 007A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 007F _ 83. C4, 10
        sub     esp, 8                                  ; 0082 _ 83. EC, 08
        push    100                                     ; 0085 _ 6A, 64
        push    dword [ebp-54H]                         ; 0087 _ FF. 75, AC
        call    timer_setTime                           ; 008A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008F _ 83. C4, 10
        call    timer_alloc                             ; 0092 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-50H], eax                    ; 0097 _ 89. 45, B0
        sub     esp, 4                                  ; 009A _ 83. EC, 04
        push    2                                       ; 009D _ 6A, 02
        push    timerInfo                               ; 009F _ 68, 00000200(d)
        push    dword [ebp-50H]                         ; 00A4 _ FF. 75, B0
        call    timer_init                              ; 00A7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AC _ 83. C4, 10
        sub     esp, 8                                  ; 00AF _ 83. EC, 08
        push    300                                     ; 00B2 _ 68, 0000012C
        push    dword [ebp-50H]                         ; 00B7 _ FF. 75, B0
        call    timer_setTime                           ; 00BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BF _ 83. C4, 10
        call    timer_alloc                             ; 00C2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 00C7 _ 89. 45, B4
        sub     esp, 4                                  ; 00CA _ 83. EC, 04
        push    1                                       ; 00CD _ 6A, 01
        push    timerInfo                               ; 00CF _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 00D4 _ FF. 75, B4
        call    timer_init                              ; 00D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DC _ 83. C4, 10
        sub     esp, 8                                  ; 00DF _ 83. EC, 08
        push    50                                      ; 00E2 _ 6A, 32
        push    dword [ebp-4CH]                         ; 00E4 _ FF. 75, B4
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
        mov     dword [ebp-48H], eax                    ; 0142 _ 89. 45, B8
        call    get_memory_block_count                  ; 0145 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 014A _ 89. 45, BC
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
        mov     dword [ebp-40H], eax                    ; 018D _ 89. 45, C0
        mov     eax, dword [ebp-40H]                    ; 0190 _ 8B. 45, C0
        sub     esp, 12                                 ; 0193 _ 83. EC, 0C
        push    eax                                     ; 0196 _ 50
        call    intToHexStr                             ; 0197 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019C _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 019F _ 89. 45, C4
        mov     eax, dword [memman]                     ; 01A2 _ A1, 00000008(d)
        push    dword [ebp-5CH]                         ; 01A7 _ FF. 75, A4
        push    dword [ebp-60H]                         ; 01AA _ FF. 75, A0
        push    dword [ebp-64H]                         ; 01AD _ FF. 75, 9C
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
        mov     eax, dword [ebp-60H]                    ; 01EA _ 8B. 45, A0
        imul    eax, dword [ebp-5CH]                    ; 01ED _ 0F AF. 45, A4
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
        push    dword [ebp-5CH]                         ; 0212 _ FF. 75, A4
        push    dword [ebp-60H]                         ; 0215 _ FF. 75, A0
        push    eax                                     ; 0218 _ 50
        call    init_screen8                            ; 0219 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 021E _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0221 _ 8B. 15, 000000F8(d)
        mov     eax, dword [sheet_back]                 ; 0227 _ A1, 0000022C(d)
        sub     esp, 12                                 ; 022C _ 83. EC, 0C
        push    99                                      ; 022F _ 6A, 63
        push    dword [ebp-5CH]                         ; 0231 _ FF. 75, A4
        push    dword [ebp-60H]                         ; 0234 _ FF. 75, A0
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
        mov     eax, dword [ebp-60H]                    ; 0288 _ 8B. 45, A0
        sub     eax, 16                                 ; 028B _ 83. E8, 10
        mov     edx, eax                                ; 028E _ 89. C2
        shr     edx, 31                                 ; 0290 _ C1. EA, 1F
        add     eax, edx                                ; 0293 _ 01. D0
        sar     eax, 1                                  ; 0295 _ D1. F8
        mov     dword [mx], eax                         ; 0297 _ A3, 000000F0(d)
        mov     eax, dword [ebp-5CH]                    ; 029C _ 8B. 45, A4
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
        mov     dword [ebp-38H], eax                    ; 033F _ 89. 45, C8
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
        mov     dword [ebp-30H], eax                    ; 038C _ 89. 45, D0
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
        mov     dword [ebp-2CH], eax                    ; 03B9 _ 89. 45, D4
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
        mov     dword [ebp-28H], eax                    ; 03E6 _ 89. 45, D8
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
        mov     byte [ebp-71H], 0                       ; 041D _ C6. 45, 8F, 00
        mov     dword [ebp-70H], 7                      ; 0421 _ C7. 45, 90, 00000007
        mov     dword [ebp-6CH], 0                      ; 0428 _ C7. 45, 94, 00000000
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
        mov     dword [ebp-68H], 0                      ; 0452 _ C7. 45, 98, 00000000
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
        mov     byte [ebp-71H], al                      ; 04D1 _ 88. 45, 8F
        cmp     byte [ebp-71H], 28                      ; 04D4 _ 80. 7D, 8F, 1C
        jnz     ?_003                                   ; 04D8 _ 75, 59
        mov     ebx, dword [cnt.2255]                   ; 04DA _ 8B. 1D, 00000248(d)
        mov     eax, dword [sheet_back]                 ; 04E0 _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 04E5 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 04E7 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04ED _ A1, 00000224(d)
        sub     esp, 4                                  ; 04F2 _ 83. EC, 04
        push    7                                       ; 04F5 _ 6A, 07
        push    dword [ebp-60H]                         ; 04F7 _ FF. 75, A0
        push    ebx                                     ; 04FA _ 53
        push    ecx                                     ; 04FB _ 51
        push    dword [ebp-48H]                         ; 04FC _ FF. 75, B8
        push    edx                                     ; 04FF _ 52
        push    eax                                     ; 0500 _ 50
        call    showMemInfo                             ; 0501 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0506 _ 83. C4, 20
        mov     eax, dword [cnt.2255]                   ; 0509 _ A1, 00000248(d)
        add     eax, 1                                  ; 050E _ 83. C0, 01
        mov     dword [cnt.2255], eax                   ; 0511 _ A3, 00000248(d)
        mov     eax, dword [cnt.2255]                   ; 0516 _ A1, 00000248(d)
        cmp     dword [ebp-44H], eax                    ; 051B _ 39. 45, BC
        jg      ?_001                                   ; 051E _ 0F 8F, FFFFFF35
        mov     dword [cnt.2255], 0                     ; 0524 _ C7. 05, 00000248(d), 00000000
        jmp     ?_001                                   ; 052E _ E9, FFFFFF26

?_003:  movzx   eax, byte [ebp-71H]                     ; 0533 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0537 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 053E _ 84. C0
        jz      ?_004                                   ; 0540 _ 74, 18
        cmp     byte [ebp-71H], 15                      ; 0542 _ 80. 7D, 8F, 0F
        jbe     ?_004                                   ; 0546 _ 76, 12
        cmp     byte [ebp-71H], 83                      ; 0548 _ 80. 7D, 8F, 53
        ja      ?_004                                   ; 054C _ 77, 0C
        mov     eax, dword [line.2258]                  ; 054E _ A1, 0000024C(d)
        cmp     eax, 142                                ; 0553 _ 3D, 0000008E
        jle     ?_005                                   ; 0558 _ 7E, 18
?_004:  cmp     byte [ebp-71H], 14                      ; 055A _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 055E _ 0F 85, FFFFFEF5
        mov     eax, dword [line.2258]                  ; 0564 _ A1, 0000024C(d)
        cmp     eax, 7                                  ; 0569 _ 83. F8, 07
        jle     ?_001                                   ; 056C _ 0F 8E, FFFFFEE7
?_005:  movzx   eax, byte [ebp-71H]                     ; 0572 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0576 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 057D _ 84. C0
        je      ?_007                                   ; 057F _ 0F 84, 00000128
        cmp     byte [ebp-71H], 15                      ; 0585 _ 80. 7D, 8F, 0F
        jbe     ?_007                                   ; 0589 _ 0F 86, 0000011E
        cmp     byte [ebp-71H], 83                      ; 058F _ 80. 7D, 8F, 53
        ja      ?_007                                   ; 0593 _ 0F 87, 00000114
        mov     eax, dword [line.2258]                  ; 0599 _ A1, 0000024C(d)
        cmp     eax, 142                                ; 059E _ 3D, 0000008E
        jg      ?_007                                   ; 05A3 _ 0F 8F, 00000104
        mov     eax, dword [pos.2259]                   ; 05A9 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 05AE _ 8D. 78, 28
        mov     eax, dword [line.2258]                  ; 05B1 _ A1, 0000024C(d)
        lea     esi, [eax+0EH]                          ; 05B6 _ 8D. 70, 0E
        mov     eax, dword [pos.2259]                   ; 05B9 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05BE _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 05C1 _ A1, 0000024C(d)
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
        mov     eax, dword [line.2258]                  ; 05F3 _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 05F8 _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 05FB _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0600 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 0603 _ A1, 0000024C(d)
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
        movzx   eax, byte [ebp-71H]                     ; 0627 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 062B _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0632 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0635 _ C6. 45, E3, 00
        mov     eax, dword [pos.2259]                   ; 0639 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 063E _ 8D. 70, 1A
        mov     eax, dword [line.2258]                  ; 0641 _ A1, 0000024C(d)
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
        mov     eax, dword [line.2258]                  ; 0669 _ A1, 0000024C(d)
        add     eax, 8                                  ; 066E _ 83. C0, 08
        mov     dword [line.2258], eax                  ; 0671 _ A3, 0000024C(d)
        mov     eax, dword [sheet_win]                  ; 0676 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 067B _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 067E _ 8D. 50, F0
        mov     eax, dword [line.2258]                  ; 0681 _ A1, 0000024C(d)
        cmp     edx, eax                                ; 0686 _ 39. C2
        jg      ?_006                                   ; 0688 _ 7F, 17
        mov     eax, dword [pos.2259]                   ; 068A _ A1, 00000074(d)
        add     eax, 16                                 ; 068F _ 83. C0, 10
        mov     dword [pos.2259], eax                   ; 0692 _ A3, 00000074(d)
        mov     dword [line.2258], 0                    ; 0697 _ C7. 05, 0000024C(d), 00000000
?_006:  mov     dword [ebp-68H], 0                      ; 06A1 _ C7. 45, 98, 00000000
        jmp     ?_014                                   ; 06A8 _ E9, 0000030D

?_007:  cmp     byte [ebp-71H], 14                      ; 06AD _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 06B1 _ 0F 85, FFFFFDA2
        mov     eax, dword [line.2258]                  ; 06B7 _ A1, 0000024C(d)
        cmp     eax, 7                                  ; 06BC _ 83. F8, 07
        jle     ?_001                                   ; 06BF _ 0F 8E, FFFFFD94
        mov     eax, dword [pos.2259]                   ; 06C5 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06CA _ 8D. 78, 28
        mov     eax, dword [line.2258]                  ; 06CD _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 06D2 _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 06D5 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06DA _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 06DD _ A1, 0000024C(d)
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
        mov     eax, dword [line.2258]                  ; 070F _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 0714 _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 0717 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 071C _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 071F _ A1, 0000024C(d)
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
        mov     eax, dword [line.2258]                  ; 0743 _ A1, 0000024C(d)
        sub     eax, 8                                  ; 0748 _ 83. E8, 08
        mov     dword [line.2258], eax                  ; 074B _ A3, 0000024C(d)
        mov     eax, dword [pos.2259]                   ; 0750 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0755 _ 8D. 78, 28
        mov     eax, dword [line.2258]                  ; 0758 _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 075D _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 0760 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0765 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 0768 _ A1, 0000024C(d)
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
        mov     eax, dword [line.2258]                  ; 079A _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 079F _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 07A2 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 07A7 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 07AA _ A1, 0000024C(d)
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
        mov     dword [ebp-34H], eax                    ; 0838 _ 89. 45, CC
        cmp     dword [ebp-34H], 10                     ; 083B _ 83. 7D, CC, 0A
        jnz     ?_010                                   ; 083F _ 75, 73
        mov     edx, dword [sheet_back]                 ; 0841 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0847 _ A1, 00000224(d)
        sub     esp, 8                                  ; 084C _ 83. EC, 08
        push    ?_193                                   ; 084F _ 68, 00000030(d)
        push    7                                       ; 0854 _ 6A, 07
        push    160                                     ; 0856 _ 68, 000000A0
        push    dword [ebp-6CH]                         ; 085B _ FF. 75, 94
        push    edx                                     ; 085E _ 52
        push    eax                                     ; 085F _ 50
        call    showString                              ; 0860 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0865 _ 83. C4, 20
        sub     esp, 8                                  ; 0868 _ 83. EC, 08
        push    100                                     ; 086B _ 6A, 64
        push    dword [ebp-54H]                         ; 086D _ FF. 75, AC
        call    timer_setTime                           ; 0870 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0875 _ 83. C4, 10
        add     dword [ebp-6CH], 8                      ; 0878 _ 83. 45, 94, 08
        add     dword [ebp-68H], 1                      ; 087C _ 83. 45, 98, 01
        cmp     dword [ebp-6CH], 39                     ; 0880 _ 83. 7D, 94, 27
        jle     ?_001                                   ; 0884 _ 0F 8E, FFFFFBCF
        cmp     dword [ebp-68H], 5                      ; 088A _ 83. 7D, 98, 05
        jne     ?_001                                   ; 088E _ 0F 85, FFFFFBC5
        call    io_cli                                  ; 0894 _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2254]                ; 0899 _ A1, 00000234(d)
        sub     esp, 12                                 ; 089E _ 83. EC, 0C
        push    eax                                     ; 08A1 _ 50
        call    task_sleep                              ; 08A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08A7 _ 83. C4, 10
        call    io_sti                                  ; 08AA _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08AF _ E9, FFFFFBA5

?_010:  cmp     dword [ebp-34H], 2                      ; 08B4 _ 83. 7D, CC, 02
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

?_011:  cmp     dword [ebp-34H], 0                      ; 08E2 _ 83. 7D, CC, 00
        jz      ?_012                                   ; 08E6 _ 74, 1E
        sub     esp, 4                                  ; 08E8 _ 83. EC, 04
        push    0                                       ; 08EB _ 6A, 00
        push    timerInfo                               ; 08ED _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 08F2 _ FF. 75, B4
        call    timer_init                              ; 08F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08FA _ 83. C4, 10
        mov     dword [ebp-70H], 0                      ; 08FD _ C7. 45, 90, 00000000
        jmp     ?_013                                   ; 0904 _ EB, 1C

?_012:  sub     esp, 4                                  ; 0906 _ 83. EC, 04
        push    1                                       ; 0909 _ 6A, 01
        push    timerInfo                               ; 090B _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 0910 _ FF. 75, B4
        call    timer_init                              ; 0913 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0918 _ 83. C4, 10
        mov     dword [ebp-70H], 7                      ; 091B _ C7. 45, 90, 00000007
?_013:  sub     esp, 8                                  ; 0922 _ 83. EC, 08
        push    50                                      ; 0925 _ 6A, 32
        push    dword [ebp-4CH]                         ; 0927 _ FF. 75, B4
        call    timer_setTime                           ; 092A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 092F _ 83. C4, 10
        mov     eax, dword [pos.2259]                   ; 0932 _ A1, 00000074(d)
        add     eax, 40                                 ; 0937 _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 093A _ 89. 45, 84
        mov     eax, dword [line.2258]                  ; 093D _ A1, 0000024C(d)
        lea     edi, [eax+0EH]                          ; 0942 _ 8D. 78, 0E
        mov     eax, dword [pos.2259]                   ; 0945 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 094A _ 8D. 70, 1A
        mov     eax, dword [line.2258]                  ; 094D _ A1, 0000024C(d)
        lea     ebx, [eax+8H]                           ; 0952 _ 8D. 58, 08
        mov     eax, dword [ebp-70H]                    ; 0955 _ 8B. 45, 90
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
        mov     eax, dword [line.2258]                  ; 0986 _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 098B _ 8D. 70, 10
        mov     eax, dword [pos.2259]                   ; 098E _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0993 _ 8D. 58, 1A
        mov     eax, dword [line.2258]                  ; 0996 _ A1, 0000024C(d)
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
        mov     eax, dword [ebp-4CH]                    ; 0A5C _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 0A5F _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 0A62 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 0A65 _ 8B. 00
        sub     esp, 4                                  ; 0A67 _ 83. EC, 04
        push    38                                      ; 0A6A _ 6A, 26
        push    100                                     ; 0A6C _ 6A, 64
        push    23                                      ; 0A6E _ 6A, 17
        push    8                                       ; 0A70 _ 6A, 08
        push    8                                       ; 0A72 _ 6A, 08
        push    edx                                     ; 0A74 _ 52
        push    eax                                     ; 0A75 _ 50
        call    boxfill8                                ; 0A76 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A7B _ 83. C4, 20
        sub     esp, 12                                 ; 0A7E _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 0A81 _ FF. 75, C0
        call    intToHexStr                             ; 0A84 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A89 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0A8C _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 0A8F _ A1, 00000224(d)
        sub     esp, 8                                  ; 0A94 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 0A97 _ FF. 75, CC
        push    10                                      ; 0A9A _ 6A, 0A
        push    23                                      ; 0A9C _ 6A, 17
        push    8                                       ; 0A9E _ 6A, 08
        push    dword [ebp-4CH]                         ; 0AA0 _ FF. 75, B4
        push    eax                                     ; 0AA3 _ 50
        call    showString                              ; 0AA4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AA9 _ 83. C4, 20
        call    io_cli                                  ; 0AAC _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0AB1 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0AB4 _ 8D. 45, D0
        push    eax                                     ; 0AB7 _ 50
        call    fifo8_status                            ; 0AB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ABD _ 83. C4, 10
        test    eax, eax                                ; 0AC0 _ 85. C0
        jnz     ?_016                                   ; 0AC2 _ 75, 07
        call    io_sti                                  ; 0AC4 _ E8, FFFFFFFC(rel)
        jmp     ?_015                                   ; 0AC9 _ EB, 8D

?_016:  sub     esp, 12                                 ; 0ACB _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0ACE _ 8D. 45, D0
        push    eax                                     ; 0AD1 _ 50
        call    fifo8_get                               ; 0AD2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AD7 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0ADA _ 89. 45, C8
        call    io_sti                                  ; 0ADD _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 0AE2 _ 83. 7D, C8, 7B
        jne     ?_015                                   ; 0AE6 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 0AEC _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0AF2 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0AF7 _ 83. EC, 08
        push    ?_196                                   ; 0AFA _ 68, 00000046(d)
        push    7                                       ; 0AFF _ 6A, 07
        push    176                                     ; 0B01 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 0B06 _ FF. 75, BC
        push    edx                                     ; 0B09 _ 52
        push    eax                                     ; 0B0A _ 50
        call    showString                              ; 0B0B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B10 _ 83. C4, 20
        sub     esp, 8                                  ; 0B13 _ 83. EC, 08
        push    100                                     ; 0B16 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0B18 _ FF. 75, C4
        call    timer_setTime                           ; 0B1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B20 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 0B23 _ 83. 45, BC, 08
        jmp     ?_015                                   ; 0B27 _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0B2C _ 55
        mov     ebp, esp                                ; 0B2D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0B2F _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0B32 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0B38 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0B3B _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0B41 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0B44 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0B4A _ 90
        pop     ebp                                     ; 0B4B _ 5D
        ret                                             ; 0B4C _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0B4D _ 55
        mov     ebp, esp                                ; 0B4E _ 89. E5
        push    ebx                                     ; 0B50 _ 53
        sub     esp, 36                                 ; 0B51 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0B54 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0B57 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0B5A _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0B5D _ 89. 45, F4
        jmp     ?_018                                   ; 0B60 _ EB, 3E

?_017:  mov     eax, dword [ebp+1CH]                    ; 0B62 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B65 _ 0F B6. 00
        movzx   eax, al                                 ; 0B68 _ 0F B6. C0
        shl     eax, 4                                  ; 0B6B _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0B6E _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0B74 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0B78 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0B7B _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0B7E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0B81 _ 8B. 00
        sub     esp, 8                                  ; 0B83 _ 83. EC, 08
        push    ebx                                     ; 0B86 _ 53
        push    ecx                                     ; 0B87 _ 51
        push    dword [ebp+14H]                         ; 0B88 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B8B _ FF. 75, 10
        push    edx                                     ; 0B8E _ 52
        push    eax                                     ; 0B8F _ 50
        call    showFont8                               ; 0B90 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B95 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0B98 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0B9C _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 0BA0 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0BA3 _ 0F B6. 00
        test    al, al                                  ; 0BA6 _ 84. C0
        jnz     ?_017                                   ; 0BA8 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0BAA _ 8B. 45, 14
        add     eax, 16                                 ; 0BAD _ 83. C0, 10
        sub     esp, 8                                  ; 0BB0 _ 83. EC, 08
        push    eax                                     ; 0BB3 _ 50
        push    dword [ebp+10H]                         ; 0BB4 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0BB7 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0BBA _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0BBD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BC0 _ FF. 75, 08
        call    sheet_refresh                           ; 0BC3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BC8 _ 83. C4, 20
        nop                                             ; 0BCB _ 90
        mov     ebx, dword [ebp-4H]                     ; 0BCC _ 8B. 5D, FC
        leave                                           ; 0BCF _ C9
        ret                                             ; 0BD0 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0BD1 _ 55
        mov     ebp, esp                                ; 0BD2 _ 89. E5
        push    ebx                                     ; 0BD4 _ 53
        sub     esp, 4                                  ; 0BD5 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0BD8 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0BDB _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0BDE _ 8B. 45, 0C
        sub     eax, 1                                  ; 0BE1 _ 83. E8, 01
        sub     esp, 4                                  ; 0BE4 _ 83. EC, 04
        push    edx                                     ; 0BE7 _ 52
        push    eax                                     ; 0BE8 _ 50
        push    0                                       ; 0BE9 _ 6A, 00
        push    0                                       ; 0BEB _ 6A, 00
        push    14                                      ; 0BED _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0BEF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BF2 _ FF. 75, 08
        call    boxfill8                                ; 0BF5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BFA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0BFD _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0C00 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0C03 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C06 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C09 _ 8B. 45, 10
        sub     eax, 24                                 ; 0C0C _ 83. E8, 18
        sub     esp, 4                                  ; 0C0F _ 83. EC, 04
        push    ecx                                     ; 0C12 _ 51
        push    edx                                     ; 0C13 _ 52
        push    eax                                     ; 0C14 _ 50
        push    0                                       ; 0C15 _ 6A, 00
        push    8                                       ; 0C17 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0C19 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C1C _ FF. 75, 08
        call    boxfill8                                ; 0C1F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C24 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C27 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0C2A _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0C2D _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C30 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C33 _ 8B. 45, 10
        sub     eax, 23                                 ; 0C36 _ 83. E8, 17
        sub     esp, 4                                  ; 0C39 _ 83. EC, 04
        push    ecx                                     ; 0C3C _ 51
        push    edx                                     ; 0C3D _ 52
        push    eax                                     ; 0C3E _ 50
        push    0                                       ; 0C3F _ 6A, 00
        push    7                                       ; 0C41 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C43 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C46 _ FF. 75, 08
        call    boxfill8                                ; 0C49 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C4E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C51 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0C54 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0C57 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C5A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C5D _ 8B. 45, 10
        sub     eax, 22                                 ; 0C60 _ 83. E8, 16
        sub     esp, 4                                  ; 0C63 _ 83. EC, 04
        push    ecx                                     ; 0C66 _ 51
        push    edx                                     ; 0C67 _ 52
        push    eax                                     ; 0C68 _ 50
        push    0                                       ; 0C69 _ 6A, 00
        push    8                                       ; 0C6B _ 6A, 08
        push    dword [ebp+0CH]                         ; 0C6D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C70 _ FF. 75, 08
        call    boxfill8                                ; 0C73 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C78 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C7B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0C7E _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0C81 _ 8B. 45, 10
        sub     eax, 20                                 ; 0C84 _ 83. E8, 14
        sub     esp, 4                                  ; 0C87 _ 83. EC, 04
        push    edx                                     ; 0C8A _ 52
        push    51                                      ; 0C8B _ 6A, 33
        push    eax                                     ; 0C8D _ 50
        push    10                                      ; 0C8E _ 6A, 0A
        push    7                                       ; 0C90 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C92 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C95 _ FF. 75, 08
        call    boxfill8                                ; 0C98 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C9D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CA0 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CA3 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CA6 _ 8B. 45, 10
        sub     eax, 20                                 ; 0CA9 _ 83. E8, 14
        sub     esp, 4                                  ; 0CAC _ 83. EC, 04
        push    edx                                     ; 0CAF _ 52
        push    9                                       ; 0CB0 _ 6A, 09
        push    eax                                     ; 0CB2 _ 50
        push    9                                       ; 0CB3 _ 6A, 09
        push    7                                       ; 0CB5 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0CB7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CBA _ FF. 75, 08
        call    boxfill8                                ; 0CBD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CC2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CC5 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CC8 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CCB _ 8B. 45, 10
        sub     eax, 4                                  ; 0CCE _ 83. E8, 04
        sub     esp, 4                                  ; 0CD1 _ 83. EC, 04
        push    edx                                     ; 0CD4 _ 52
        push    50                                      ; 0CD5 _ 6A, 32
        push    eax                                     ; 0CD7 _ 50
        push    10                                      ; 0CD8 _ 6A, 0A
        push    15                                      ; 0CDA _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0CDC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CDF _ FF. 75, 08
        call    boxfill8                                ; 0CE2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CE7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CEA _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0CED _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0CF0 _ 8B. 45, 10
        sub     eax, 19                                 ; 0CF3 _ 83. E8, 13
        sub     esp, 4                                  ; 0CF6 _ 83. EC, 04
        push    edx                                     ; 0CF9 _ 52
        push    50                                      ; 0CFA _ 6A, 32
        push    eax                                     ; 0CFC _ 50
        push    50                                      ; 0CFD _ 6A, 32
        push    15                                      ; 0CFF _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D01 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D04 _ FF. 75, 08
        call    boxfill8                                ; 0D07 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D0C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D0F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D12 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D15 _ 8B. 45, 10
        sub     eax, 3                                  ; 0D18 _ 83. E8, 03
        sub     esp, 4                                  ; 0D1B _ 83. EC, 04
        push    edx                                     ; 0D1E _ 52
        push    50                                      ; 0D1F _ 6A, 32
        push    eax                                     ; 0D21 _ 50
        push    10                                      ; 0D22 _ 6A, 0A
        push    0                                       ; 0D24 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0D26 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D29 _ FF. 75, 08
        call    boxfill8                                ; 0D2C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D31 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D34 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D37 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D3A _ 8B. 45, 10
        sub     eax, 20                                 ; 0D3D _ 83. E8, 14
        sub     esp, 4                                  ; 0D40 _ 83. EC, 04
        push    edx                                     ; 0D43 _ 52
        push    51                                      ; 0D44 _ 6A, 33
        push    eax                                     ; 0D46 _ 50
        push    51                                      ; 0D47 _ 6A, 33
        push    0                                       ; 0D49 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0D4B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D4E _ FF. 75, 08
        call    boxfill8                                ; 0D51 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D56 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D59 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0D5C _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0D5F _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D62 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D65 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D68 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D6B _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D6E _ 83. E8, 2F
        sub     esp, 4                                  ; 0D71 _ 83. EC, 04
        push    ebx                                     ; 0D74 _ 53
        push    ecx                                     ; 0D75 _ 51
        push    edx                                     ; 0D76 _ 52
        push    eax                                     ; 0D77 _ 50
        push    15                                      ; 0D78 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D7A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D7D _ FF. 75, 08
        call    boxfill8                                ; 0D80 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D85 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D88 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D8B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D8E _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0D91 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0D94 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D97 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D9A _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D9D _ 83. E8, 2F
        sub     esp, 4                                  ; 0DA0 _ 83. EC, 04
        push    ebx                                     ; 0DA3 _ 53
        push    ecx                                     ; 0DA4 _ 51
        push    edx                                     ; 0DA5 _ 52
        push    eax                                     ; 0DA6 _ 50
        push    15                                      ; 0DA7 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0DA9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DAC _ FF. 75, 08
        call    boxfill8                                ; 0DAF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DB4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DB7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DBA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DBD _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0DC0 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0DC3 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DC6 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0DC9 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0DCC _ 83. E8, 2F
        sub     esp, 4                                  ; 0DCF _ 83. EC, 04
        push    ebx                                     ; 0DD2 _ 53
        push    ecx                                     ; 0DD3 _ 51
        push    edx                                     ; 0DD4 _ 52
        push    eax                                     ; 0DD5 _ 50
        push    7                                       ; 0DD6 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0DD8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DDB _ FF. 75, 08
        call    boxfill8                                ; 0DDE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DE3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DE6 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DE9 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DEC _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0DEF _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0DF2 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0DF5 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0DF8 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0DFB _ 83. E8, 03
        sub     esp, 4                                  ; 0DFE _ 83. EC, 04
        push    ebx                                     ; 0E01 _ 53
        push    ecx                                     ; 0E02 _ 51
        push    edx                                     ; 0E03 _ 52
        push    eax                                     ; 0E04 _ 50
        push    7                                       ; 0E05 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0E07 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E0A _ FF. 75, 08
        call    boxfill8                                ; 0E0D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E12 _ 83. C4, 20
        nop                                             ; 0E15 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0E16 _ 8B. 5D, FC
        leave                                           ; 0E19 _ C9
        ret                                             ; 0E1A _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0E1B _ 55
        mov     ebp, esp                                ; 0E1C _ 89. E5
        sub     esp, 24                                 ; 0E1E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E21 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E26 _ 89. 45, EC
        movzx   eax, word [?_205]                       ; 0E29 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E30 _ 98
        mov     dword [ebp-10H], eax                    ; 0E31 _ 89. 45, F0
        movzx   eax, word [?_206]                       ; 0E34 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E3B _ 98
        mov     dword [ebp-0CH], eax                    ; 0E3C _ 89. 45, F4
        sub     esp, 4                                  ; 0E3F _ 83. EC, 04
        push    table_rgb.2302                          ; 0E42 _ 68, 00000080(d)
        push    15                                      ; 0E47 _ 6A, 0F
        push    0                                       ; 0E49 _ 6A, 00
        call    set_palette                             ; 0E4B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E50 _ 83. C4, 10
        nop                                             ; 0E53 _ 90
        leave                                           ; 0E54 _ C9
        ret                                             ; 0E55 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0E56 _ 55
        mov     ebp, esp                                ; 0E57 _ 89. E5
        sub     esp, 24                                 ; 0E59 _ 83. EC, 18
        call    io_load_eflags                          ; 0E5C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0E61 _ 89. 45, F4
        call    io_cli                                  ; 0E64 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0E69 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0E6C _ FF. 75, 08
        push    968                                     ; 0E6F _ 68, 000003C8
        call    io_out8                                 ; 0E74 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E79 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0E7C _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0E7F _ 89. 45, F0
        jmp     ?_020                                   ; 0E82 _ EB, 65

?_019:  mov     eax, dword [ebp+10H]                    ; 0E84 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0E87 _ 0F B6. 00
        shr     al, 2                                   ; 0E8A _ C0. E8, 02
        movzx   eax, al                                 ; 0E8D _ 0F B6. C0
        sub     esp, 8                                  ; 0E90 _ 83. EC, 08
        push    eax                                     ; 0E93 _ 50
        push    969                                     ; 0E94 _ 68, 000003C9
        call    io_out8                                 ; 0E99 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E9E _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0EA1 _ 8B. 45, 10
        add     eax, 1                                  ; 0EA4 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0EA7 _ 0F B6. 00
        shr     al, 2                                   ; 0EAA _ C0. E8, 02
        movzx   eax, al                                 ; 0EAD _ 0F B6. C0
        sub     esp, 8                                  ; 0EB0 _ 83. EC, 08
        push    eax                                     ; 0EB3 _ 50
        push    969                                     ; 0EB4 _ 68, 000003C9
        call    io_out8                                 ; 0EB9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EBE _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0EC1 _ 8B. 45, 10
        add     eax, 2                                  ; 0EC4 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0EC7 _ 0F B6. 00
        shr     al, 2                                   ; 0ECA _ C0. E8, 02
        movzx   eax, al                                 ; 0ECD _ 0F B6. C0
        sub     esp, 8                                  ; 0ED0 _ 83. EC, 08
        push    eax                                     ; 0ED3 _ 50
        push    969                                     ; 0ED4 _ 68, 000003C9
        call    io_out8                                 ; 0ED9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EDE _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0EE1 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0EE5 _ 83. 45, F0, 01
?_020:  mov     eax, dword [ebp-10H]                    ; 0EE9 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0EEC _ 3B. 45, 0C
        jle     ?_019                                   ; 0EEF _ 7E, 93
        sub     esp, 12                                 ; 0EF1 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0EF4 _ FF. 75, F4
        call    io_store_eflags                         ; 0EF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EFC _ 83. C4, 10
        nop                                             ; 0EFF _ 90
        leave                                           ; 0F00 _ C9
        ret                                             ; 0F01 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0F02 _ 55
        mov     ebp, esp                                ; 0F03 _ 89. E5
        sub     esp, 20                                 ; 0F05 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0F08 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0F0B _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0F0E _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0F11 _ 89. 45, FC
        jmp     ?_024                                   ; 0F14 _ EB, 33

?_021:  mov     eax, dword [ebp+14H]                    ; 0F16 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0F19 _ 89. 45, F8
        jmp     ?_023                                   ; 0F1C _ EB, 1F

?_022:  mov     eax, dword [ebp-4H]                     ; 0F1E _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0F21 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F25 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F27 _ 8B. 45, F8
        add     eax, edx                                ; 0F2A _ 01. D0
        mov     edx, eax                                ; 0F2C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F2E _ 8B. 45, 08
        add     edx, eax                                ; 0F31 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F33 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F37 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0F39 _ 83. 45, F8, 01
?_023:  mov     eax, dword [ebp-8H]                     ; 0F3D _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0F40 _ 3B. 45, 1C
        jle     ?_022                                   ; 0F43 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0F45 _ 83. 45, FC, 01
?_024:  mov     eax, dword [ebp-4H]                     ; 0F49 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0F4C _ 3B. 45, 20
        jle     ?_021                                   ; 0F4F _ 7E, C5
        nop                                             ; 0F51 _ 90
        leave                                           ; 0F52 _ C9
        ret                                             ; 0F53 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0F54 _ 55
        mov     ebp, esp                                ; 0F55 _ 89. E5
        push    edi                                     ; 0F57 _ 57
        push    esi                                     ; 0F58 _ 56
        push    ebx                                     ; 0F59 _ 53
        sub     esp, 16                                 ; 0F5A _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0F5D _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0F60 _ 8B. 45, 14
        add     eax, edx                                ; 0F63 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0F65 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0F68 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0F6B _ 8B. 45, 18
        add     eax, edx                                ; 0F6E _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0F70 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0F73 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0F76 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0F79 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0F7C _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0F7F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F82 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F85 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0F88 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0F8B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F8E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F91 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F94 _ 8B. 00
        push    edi                                     ; 0F96 _ 57
        push    esi                                     ; 0F97 _ 56
        push    ebx                                     ; 0F98 _ 53
        push    ecx                                     ; 0F99 _ 51
        push    15                                      ; 0F9A _ 6A, 0F
        push    edx                                     ; 0F9C _ 52
        push    eax                                     ; 0F9D _ 50
        call    boxfill8                                ; 0F9E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FA3 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FA6 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0FA9 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0FAC _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0FAF _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0FB2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FB5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FB8 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FBB _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0FBE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FC1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FC4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FC7 _ 8B. 00
        push    edi                                     ; 0FC9 _ 57
        push    esi                                     ; 0FCA _ 56
        push    ebx                                     ; 0FCB _ 53
        push    ecx                                     ; 0FCC _ 51
        push    15                                      ; 0FCD _ 6A, 0F
        push    edx                                     ; 0FCF _ 52
        push    eax                                     ; 0FD0 _ 50
        call    boxfill8                                ; 0FD1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FD6 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FD9 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0FDC _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0FDF _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0FE2 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0FE5 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 0FE8 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 0FEB _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FEE _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0FF1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FF4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FF7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FFA _ 8B. 00
        push    edi                                     ; 0FFC _ 57
        push    esi                                     ; 0FFD _ 56
        push    ebx                                     ; 0FFE _ 53
        push    ecx                                     ; 0FFF _ 51
        push    7                                       ; 1000 _ 6A, 07
        push    edx                                     ; 1002 _ 52
        push    eax                                     ; 1003 _ 50
        call    boxfill8                                ; 1004 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1009 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 100C _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 100F _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1012 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1015 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1018 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 101B _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 101E _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1021 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1024 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1027 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 102A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 102D _ 8B. 00
        push    edi                                     ; 102F _ 57
        push    esi                                     ; 1030 _ 56
        push    ebx                                     ; 1031 _ 53
        push    ecx                                     ; 1032 _ 51
        push    7                                       ; 1033 _ 6A, 07
        push    edx                                     ; 1035 _ 52
        push    eax                                     ; 1036 _ 50
        call    boxfill8                                ; 1037 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 103C _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 103F _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1042 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1045 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1048 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 104B _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 104E _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1051 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1054 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1057 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 105A _ 8B. 00
        push    esi                                     ; 105C _ 56
        push    dword [ebp-14H]                         ; 105D _ FF. 75, EC
        push    ebx                                     ; 1060 _ 53
        push    ecx                                     ; 1061 _ 51
        push    0                                       ; 1062 _ 6A, 00
        push    edx                                     ; 1064 _ 52
        push    eax                                     ; 1065 _ 50
        call    boxfill8                                ; 1066 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 106B _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 106E _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1071 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1074 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1077 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 107A _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 107D _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1080 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1083 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1086 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1089 _ 8B. 00
        push    dword [ebp-10H]                         ; 108B _ FF. 75, F0
        push    esi                                     ; 108E _ 56
        push    ebx                                     ; 108F _ 53
        push    ecx                                     ; 1090 _ 51
        push    0                                       ; 1091 _ 6A, 00
        push    edx                                     ; 1093 _ 52
        push    eax                                     ; 1094 _ 50
        call    boxfill8                                ; 1095 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 109A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 109D _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 10A0 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 10A3 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 10A6 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 10A9 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 10AC _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 10AF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 10B2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10B5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10B8 _ 8B. 00
        push    esi                                     ; 10BA _ 56
        push    dword [ebp-14H]                         ; 10BB _ FF. 75, EC
        push    ebx                                     ; 10BE _ 53
        push    ecx                                     ; 10BF _ 51
        push    8                                       ; 10C0 _ 6A, 08
        push    edx                                     ; 10C2 _ 52
        push    eax                                     ; 10C3 _ 50
        call    boxfill8                                ; 10C4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10C9 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 10CC _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 10CF _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 10D2 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 10D5 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 10D8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 10DB _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 10DE _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 10E1 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 10E4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 10E7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10EA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10ED _ 8B. 00
        push    edi                                     ; 10EF _ 57
        push    esi                                     ; 10F0 _ 56
        push    ebx                                     ; 10F1 _ 53
        push    ecx                                     ; 10F2 _ 51
        push    8                                       ; 10F3 _ 6A, 08
        push    edx                                     ; 10F5 _ 52
        push    eax                                     ; 10F6 _ 50
        call    boxfill8                                ; 10F7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10FC _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 10FF _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1102 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1105 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1108 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 110B _ 8B. 45, 1C
        movzx   ecx, al                                 ; 110E _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1111 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1114 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1117 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 111A _ 8B. 00
        push    dword [ebp-10H]                         ; 111C _ FF. 75, F0
        push    dword [ebp-14H]                         ; 111F _ FF. 75, EC
        push    esi                                     ; 1122 _ 56
        push    ebx                                     ; 1123 _ 53
        push    ecx                                     ; 1124 _ 51
        push    edx                                     ; 1125 _ 52
        push    eax                                     ; 1126 _ 50
        call    boxfill8                                ; 1127 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 112C _ 83. C4, 1C
        nop                                             ; 112F _ 90
        lea     esp, [ebp-0CH]                          ; 1130 _ 8D. 65, F4
        pop     ebx                                     ; 1133 _ 5B
        pop     esi                                     ; 1134 _ 5E
        pop     edi                                     ; 1135 _ 5F
        pop     ebp                                     ; 1136 _ 5D
        ret                                             ; 1137 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1138 _ 55
        mov     ebp, esp                                ; 1139 _ 89. E5
        sub     esp, 20                                 ; 113B _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 113E _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1141 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1144 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 114B _ E9, 0000016C

?_025:  mov     edx, dword [ebp-4H]                     ; 1150 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1153 _ 8B. 45, 1C
        add     eax, edx                                ; 1156 _ 01. D0
        movzx   eax, byte [eax]                         ; 1158 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 115B _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 115E _ 80. 7D, FB, 00
        jns     ?_026                                   ; 1162 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1164 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1167 _ 8B. 45, FC
        add     eax, edx                                ; 116A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 116C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1170 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1172 _ 8B. 45, 10
        add     eax, edx                                ; 1175 _ 01. D0
        mov     edx, eax                                ; 1177 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1179 _ 8B. 45, 08
        add     edx, eax                                ; 117C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 117E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1182 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1184 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1188 _ 83. E0, 40
        test    eax, eax                                ; 118B _ 85. C0
        jz      ?_027                                   ; 118D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 118F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1192 _ 8B. 45, FC
        add     eax, edx                                ; 1195 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1197 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 119B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 119D _ 8B. 45, 10
        add     eax, edx                                ; 11A0 _ 01. D0
        lea     edx, [eax+1H]                           ; 11A2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 11A5 _ 8B. 45, 08
        add     edx, eax                                ; 11A8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11AA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11AE _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 11B0 _ 0F BE. 45, FB
        and     eax, 20H                                ; 11B4 _ 83. E0, 20
        test    eax, eax                                ; 11B7 _ 85. C0
        jz      ?_028                                   ; 11B9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11BB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11BE _ 8B. 45, FC
        add     eax, edx                                ; 11C1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11C3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11C7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11C9 _ 8B. 45, 10
        add     eax, edx                                ; 11CC _ 01. D0
        lea     edx, [eax+2H]                           ; 11CE _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 11D1 _ 8B. 45, 08
        add     edx, eax                                ; 11D4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11D6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11DA _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 11DC _ 0F BE. 45, FB
        and     eax, 10H                                ; 11E0 _ 83. E0, 10
        test    eax, eax                                ; 11E3 _ 85. C0
        jz      ?_029                                   ; 11E5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11E7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11EA _ 8B. 45, FC
        add     eax, edx                                ; 11ED _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11EF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11F3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11F5 _ 8B. 45, 10
        add     eax, edx                                ; 11F8 _ 01. D0
        lea     edx, [eax+3H]                           ; 11FA _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 11FD _ 8B. 45, 08
        add     edx, eax                                ; 1200 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1202 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1206 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1208 _ 0F BE. 45, FB
        and     eax, 08H                                ; 120C _ 83. E0, 08
        test    eax, eax                                ; 120F _ 85. C0
        jz      ?_030                                   ; 1211 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1213 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1216 _ 8B. 45, FC
        add     eax, edx                                ; 1219 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 121B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 121F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1221 _ 8B. 45, 10
        add     eax, edx                                ; 1224 _ 01. D0
        lea     edx, [eax+4H]                           ; 1226 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1229 _ 8B. 45, 08
        add     edx, eax                                ; 122C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 122E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1232 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 1234 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1238 _ 83. E0, 04
        test    eax, eax                                ; 123B _ 85. C0
        jz      ?_031                                   ; 123D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 123F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1242 _ 8B. 45, FC
        add     eax, edx                                ; 1245 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1247 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 124B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 124D _ 8B. 45, 10
        add     eax, edx                                ; 1250 _ 01. D0
        lea     edx, [eax+5H]                           ; 1252 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1255 _ 8B. 45, 08
        add     edx, eax                                ; 1258 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 125A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 125E _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1260 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1264 _ 83. E0, 02
        test    eax, eax                                ; 1267 _ 85. C0
        jz      ?_032                                   ; 1269 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 126B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 126E _ 8B. 45, FC
        add     eax, edx                                ; 1271 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1273 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1277 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1279 _ 8B. 45, 10
        add     eax, edx                                ; 127C _ 01. D0
        lea     edx, [eax+6H]                           ; 127E _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1281 _ 8B. 45, 08
        add     edx, eax                                ; 1284 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1286 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 128A _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 128C _ 0F BE. 45, FB
        and     eax, 01H                                ; 1290 _ 83. E0, 01
        test    eax, eax                                ; 1293 _ 85. C0
        jz      ?_033                                   ; 1295 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1297 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 129A _ 8B. 45, FC
        add     eax, edx                                ; 129D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 129F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 12A3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 12A5 _ 8B. 45, 10
        add     eax, edx                                ; 12A8 _ 01. D0
        lea     edx, [eax+7H]                           ; 12AA _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 12AD _ 8B. 45, 08
        add     edx, eax                                ; 12B0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12B2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12B6 _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 12B8 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 12BC _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 12C0 _ 0F 8E, FFFFFE8A
        nop                                             ; 12C6 _ 90
        leave                                           ; 12C7 _ C9
        ret                                             ; 12C8 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 12C9 _ 55
        mov     ebp, esp                                ; 12CA _ 89. E5
        sub     esp, 20                                 ; 12CC _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 12CF _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 12D2 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 12D5 _ C7. 45, FC, 00000000
        jmp     ?_041                                   ; 12DC _ E9, 000000B1

?_035:  mov     dword [ebp-8H], 0                       ; 12E1 _ C7. 45, F8, 00000000
        jmp     ?_040                                   ; 12E8 _ E9, 00000097

?_036:  mov     eax, dword [ebp-4H]                     ; 12ED _ 8B. 45, FC
        shl     eax, 4                                  ; 12F0 _ C1. E0, 04
        mov     edx, eax                                ; 12F3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12F5 _ 8B. 45, F8
        add     eax, edx                                ; 12F8 _ 01. D0
        add     eax, cursor.2357                        ; 12FA _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12FF _ 0F B6. 00
        cmp     al, 42                                  ; 1302 _ 3C, 2A
        jnz     ?_037                                   ; 1304 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1306 _ 8B. 45, FC
        shl     eax, 4                                  ; 1309 _ C1. E0, 04
        mov     edx, eax                                ; 130C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 130E _ 8B. 45, F8
        add     eax, edx                                ; 1311 _ 01. D0
        mov     edx, eax                                ; 1313 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1315 _ 8B. 45, 08
        add     eax, edx                                ; 1318 _ 01. D0
        mov     byte [eax], 0                           ; 131A _ C6. 00, 00
?_037:  mov     eax, dword [ebp-4H]                     ; 131D _ 8B. 45, FC
        shl     eax, 4                                  ; 1320 _ C1. E0, 04
        mov     edx, eax                                ; 1323 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1325 _ 8B. 45, F8
        add     eax, edx                                ; 1328 _ 01. D0
        add     eax, cursor.2357                        ; 132A _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 132F _ 0F B6. 00
        cmp     al, 79                                  ; 1332 _ 3C, 4F
        jnz     ?_038                                   ; 1334 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1336 _ 8B. 45, FC
        shl     eax, 4                                  ; 1339 _ C1. E0, 04
        mov     edx, eax                                ; 133C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 133E _ 8B. 45, F8
        add     eax, edx                                ; 1341 _ 01. D0
        mov     edx, eax                                ; 1343 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1345 _ 8B. 45, 08
        add     eax, edx                                ; 1348 _ 01. D0
        mov     byte [eax], 7                           ; 134A _ C6. 00, 07
?_038:  mov     eax, dword [ebp-4H]                     ; 134D _ 8B. 45, FC
        shl     eax, 4                                  ; 1350 _ C1. E0, 04
        mov     edx, eax                                ; 1353 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1355 _ 8B. 45, F8
        add     eax, edx                                ; 1358 _ 01. D0
        add     eax, cursor.2357                        ; 135A _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 135F _ 0F B6. 00
        cmp     al, 46                                  ; 1362 _ 3C, 2E
        jnz     ?_039                                   ; 1364 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1366 _ 8B. 45, FC
        shl     eax, 4                                  ; 1369 _ C1. E0, 04
        mov     edx, eax                                ; 136C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 136E _ 8B. 45, F8
        add     eax, edx                                ; 1371 _ 01. D0
        mov     edx, eax                                ; 1373 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1375 _ 8B. 45, 08
        add     edx, eax                                ; 1378 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 137A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 137E _ 88. 02
?_039:  add     dword [ebp-8H], 1                       ; 1380 _ 83. 45, F8, 01
?_040:  cmp     dword [ebp-8H], 15                      ; 1384 _ 83. 7D, F8, 0F
        jle     ?_036                                   ; 1388 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 138E _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 15                      ; 1392 _ 83. 7D, FC, 0F
        jle     ?_035                                   ; 1396 _ 0F 8E, FFFFFF45
        nop                                             ; 139C _ 90
        leave                                           ; 139D _ C9
        ret                                             ; 139E _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 139F _ 55
        mov     ebp, esp                                ; 13A0 _ 89. E5
        push    ebx                                     ; 13A2 _ 53
        sub     esp, 16                                 ; 13A3 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 13A6 _ C7. 45, F8, 00000000
        jmp     ?_045                                   ; 13AD _ EB, 50

?_042:  mov     dword [ebp-0CH], 0                      ; 13AF _ C7. 45, F4, 00000000
        jmp     ?_044                                   ; 13B6 _ EB, 3B

?_043:  mov     eax, dword [ebp-8H]                     ; 13B8 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 13BB _ 0F AF. 45, 24
        mov     edx, eax                                ; 13BF _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 13C1 _ 8B. 45, F4
        add     eax, edx                                ; 13C4 _ 01. D0
        mov     edx, eax                                ; 13C6 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 13C8 _ 8B. 45, 20
        add     eax, edx                                ; 13CB _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 13CD _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 13D0 _ 8B. 55, F8
        add     edx, ecx                                ; 13D3 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 13D5 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 13D9 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 13DC _ 8B. 4D, F4
        add     ecx, ebx                                ; 13DF _ 01. D9
        add     edx, ecx                                ; 13E1 _ 01. CA
        mov     ecx, edx                                ; 13E3 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 13E5 _ 8B. 55, 08
        add     edx, ecx                                ; 13E8 _ 01. CA
        movzx   eax, byte [eax]                         ; 13EA _ 0F B6. 00
        mov     byte [edx], al                          ; 13ED _ 88. 02
        add     dword [ebp-0CH], 1                      ; 13EF _ 83. 45, F4, 01
?_044:  mov     eax, dword [ebp-0CH]                    ; 13F3 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 13F6 _ 3B. 45, 10
        jl      ?_043                                   ; 13F9 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 13FB _ 83. 45, F8, 01
?_045:  mov     eax, dword [ebp-8H]                     ; 13FF _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1402 _ 3B. 45, 14
        jl      ?_042                                   ; 1405 _ 7C, A8
        nop                                             ; 1407 _ 90
        add     esp, 16                                 ; 1408 _ 83. C4, 10
        pop     ebx                                     ; 140B _ 5B
        pop     ebp                                     ; 140C _ 5D
        ret                                             ; 140D _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 140E _ 55
        mov     ebp, esp                                ; 140F _ 89. E5
        sub     esp, 24                                 ; 1411 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1414 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1419 _ 89. 45, EC
        movzx   eax, word [?_205]                       ; 141C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1423 _ 98
        mov     dword [ebp-10H], eax                    ; 1424 _ 89. 45, F0
        movzx   eax, word [?_206]                       ; 1427 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 142E _ 98
        mov     dword [ebp-0CH], eax                    ; 142F _ 89. 45, F4
        sub     esp, 8                                  ; 1432 _ 83. EC, 08
        push    32                                      ; 1435 _ 6A, 20
        push    32                                      ; 1437 _ 6A, 20
        call    io_out8                                 ; 1439 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 143E _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1441 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1445 _ 83. EC, 0C
        push    96                                      ; 1448 _ 6A, 60
        call    io_in8                                  ; 144A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 144F _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1452 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1455 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1459 _ 83. EC, 08
        push    eax                                     ; 145C _ 50
        push    keyInfo                                 ; 145D _ 68, 00000008(d)
        call    fifo8_put                               ; 1462 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1467 _ 83. C4, 10
        nop                                             ; 146A _ 90
        leave                                           ; 146B _ C9
        ret                                             ; 146C _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 146D _ 55
        mov     ebp, esp                                ; 146E _ 89. E5
        sub     esp, 40                                 ; 1470 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1473 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1476 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1479 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 147D _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1480 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1483 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1487 _ 83. EC, 0C
        push    eax                                     ; 148A _ 50
        call    charToVal                               ; 148B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1490 _ 83. C4, 10
        mov     byte [?_204], al                        ; 1493 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1498 _ 0F B6. 45, E4
        shr     al, 4                                   ; 149C _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 149F _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 14A2 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 14A6 _ 0F BE. C0
        sub     esp, 12                                 ; 14A9 _ 83. EC, 0C
        push    eax                                     ; 14AC _ 50
        call    charToVal                               ; 14AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14B2 _ 83. C4, 10
        mov     byte [?_203], al                        ; 14B5 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 14BA _ B8, 00000000(d)
        leave                                           ; 14BF _ C9
        ret                                             ; 14C0 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 14C1 _ 55
        mov     ebp, esp                                ; 14C2 _ 89. E5
        sub     esp, 4                                  ; 14C4 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 14C7 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 14CA _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 14CD _ 80. 7D, FC, 09
        jle     ?_046                                   ; 14D1 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 14D3 _ 0F B6. 45, FC
        add     eax, 55                                 ; 14D7 _ 83. C0, 37
        jmp     ?_047                                   ; 14DA _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 14DC _ 0F B6. 45, FC
        add     eax, 48                                 ; 14E0 _ 83. C0, 30
?_047:  leave                                           ; 14E3 _ C9
        ret                                             ; 14E4 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 14E5 _ 55
        mov     ebp, esp                                ; 14E6 _ 89. E5
        sub     esp, 16                                 ; 14E8 _ 83. EC, 10
        mov     byte [str.2400], 48                     ; 14EB _ C6. 05, 00000250(d), 30
        mov     byte [?_211], 120                       ; 14F2 _ C6. 05, 00000251(d), 78
        mov     byte [?_212], 0                         ; 14F9 _ C6. 05, 0000025A(d), 00
        mov     dword [ebp-0CH], 2                      ; 1500 _ C7. 45, F4, 00000002
        jmp     ?_049                                   ; 1507 _ EB, 0F

?_048:  mov     eax, dword [ebp-0CH]                    ; 1509 _ 8B. 45, F4
        add     eax, str.2400                           ; 150C _ 05, 00000250(d)
        mov     byte [eax], 48                          ; 1511 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1514 _ 83. 45, F4, 01
?_049:  cmp     dword [ebp-0CH], 9                      ; 1518 _ 83. 7D, F4, 09
        jle     ?_048                                   ; 151C _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 151E _ C7. 45, F8, 00000009
        jmp     ?_052                                   ; 1525 _ EB, 48

?_050:  mov     eax, dword [ebp+8H]                     ; 1527 _ 8B. 45, 08
        and     eax, 0FH                                ; 152A _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 152D _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1530 _ 8B. 45, 08
        shr     eax, 4                                  ; 1533 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1536 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1539 _ 83. 7D, FC, 09
        jle     ?_051                                   ; 153D _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 153F _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1542 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1545 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1548 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 154B _ 89. 55, F8
        mov     edx, ecx                                ; 154E _ 89. CA
        mov     byte [str.2400+eax], dl                 ; 1550 _ 88. 90, 00000250(d)
        jmp     ?_052                                   ; 1556 _ EB, 17

?_051:  mov     eax, dword [ebp-4H]                     ; 1558 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 155B _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 155E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1561 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1564 _ 89. 55, F8
        mov     edx, ecx                                ; 1567 _ 89. CA
        mov     byte [str.2400+eax], dl                 ; 1569 _ 88. 90, 00000250(d)
?_052:  cmp     dword [ebp-8H], 1                       ; 156F _ 83. 7D, F8, 01
        jle     ?_053                                   ; 1573 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1575 _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 1579 _ 75, AC
?_053:  mov     eax, str.2400                           ; 157B _ B8, 00000250(d)
        leave                                           ; 1580 _ C9
        ret                                             ; 1581 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1582 _ 55
        mov     ebp, esp                                ; 1583 _ 89. E5
        sub     esp, 8                                  ; 1585 _ 83. EC, 08
?_054:  sub     esp, 12                                 ; 1588 _ 83. EC, 0C
        push    100                                     ; 158B _ 6A, 64
        call    io_in8                                  ; 158D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1592 _ 83. C4, 10
        movsx   eax, al                                 ; 1595 _ 0F BE. C0
        and     eax, 02H                                ; 1598 _ 83. E0, 02
        test    eax, eax                                ; 159B _ 85. C0
        jz      ?_055                                   ; 159D _ 74, 02
        jmp     ?_054                                   ; 159F _ EB, E7

?_055:  nop                                             ; 15A1 _ 90
        nop                                             ; 15A2 _ 90
        leave                                           ; 15A3 _ C9
        ret                                             ; 15A4 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 15A5 _ 55
        mov     ebp, esp                                ; 15A6 _ 89. E5
        sub     esp, 8                                  ; 15A8 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 15AB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15B0 _ 83. EC, 08
        push    96                                      ; 15B3 _ 6A, 60
        push    100                                     ; 15B5 _ 6A, 64
        call    io_out8                                 ; 15B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15BC _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 15BF _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15C4 _ 83. EC, 08
        push    71                                      ; 15C7 _ 6A, 47
        push    96                                      ; 15C9 _ 6A, 60
        call    io_out8                                 ; 15CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15D0 _ 83. C4, 10
        nop                                             ; 15D3 _ 90
        leave                                           ; 15D4 _ C9
        ret                                             ; 15D5 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 15D6 _ 55
        mov     ebp, esp                                ; 15D7 _ 89. E5
        sub     esp, 8                                  ; 15D9 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 15DC _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15E1 _ 83. EC, 08
        push    212                                     ; 15E4 _ 68, 000000D4
        push    100                                     ; 15E9 _ 6A, 64
        call    io_out8                                 ; 15EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15F0 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 15F3 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15F8 _ 83. EC, 08
        push    244                                     ; 15FB _ 68, 000000F4
        push    96                                      ; 1600 _ 6A, 60
        call    io_out8                                 ; 1602 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1607 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 160A _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 160D _ C6. 40, 03, 00
        nop                                             ; 1611 _ 90
        leave                                           ; 1612 _ C9
        ret                                             ; 1613 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1614 _ 55
        mov     ebp, esp                                ; 1615 _ 89. E5
        sub     esp, 24                                 ; 1617 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 161A _ C6. 45, F7, 00
        sub     esp, 8                                  ; 161E _ 83. EC, 08
        push    32                                      ; 1621 _ 6A, 20
        push    160                                     ; 1623 _ 68, 000000A0
        call    io_out8                                 ; 1628 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 162D _ 83. C4, 10
        sub     esp, 8                                  ; 1630 _ 83. EC, 08
        push    32                                      ; 1633 _ 6A, 20
        push    32                                      ; 1635 _ 6A, 20
        call    io_out8                                 ; 1637 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 163C _ 83. C4, 10
        sub     esp, 12                                 ; 163F _ 83. EC, 0C
        push    96                                      ; 1642 _ 6A, 60
        call    io_in8                                  ; 1644 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1649 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 164C _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 164F _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1653 _ 83. EC, 08
        push    eax                                     ; 1656 _ 50
        push    mouseInfo                               ; 1657 _ 68, 00000024(d)
        call    fifo8_put                               ; 165C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1661 _ 83. C4, 10
        nop                                             ; 1664 _ 90
        leave                                           ; 1665 _ C9
        ret                                             ; 1666 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1667 _ 55
        mov     ebp, esp                                ; 1668 _ 89. E5
        sub     esp, 40                                 ; 166A _ 83. EC, 28
        call    io_sti                                  ; 166D _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1672 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 1677 _ 89. 45, E8
        movzx   eax, word [?_205]                       ; 167A _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1681 _ 98
        mov     dword [ebp-14H], eax                    ; 1682 _ 89. 45, EC
        movzx   eax, word [?_206]                       ; 1685 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 168C _ 98
        mov     dword [ebp-10H], eax                    ; 168D _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1690 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1694 _ 83. EC, 0C
        push    keyInfo                                 ; 1697 _ 68, 00000008(d)
        call    fifo8_get                               ; 169C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16A1 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 16A4 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 16A7 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 16AB _ 83. EC, 0C
        push    eax                                     ; 16AE _ 50
        call    charToHex                               ; 16AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16B4 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 16B7 _ 89. 45, F4
        mov     edx, dword [line.2433]                  ; 16BA _ 8B. 15, 0000025C(d)
        mov     eax, dword [pos.2432]                   ; 16C0 _ A1, 00000260(d)
        sub     esp, 8                                  ; 16C5 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 16C8 _ FF. 75, F4
        push    7                                       ; 16CB _ 6A, 07
        push    edx                                     ; 16CD _ 52
        push    eax                                     ; 16CE _ 50
        push    dword [ebp+0CH]                         ; 16CF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16D2 _ FF. 75, 08
        call    showString                              ; 16D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16DA _ 83. C4, 20
        mov     eax, dword [pos.2432]                   ; 16DD _ A1, 00000260(d)
        add     eax, 32                                 ; 16E2 _ 83. C0, 20
        mov     dword [pos.2432], eax                   ; 16E5 _ A3, 00000260(d)
        mov     eax, dword [pos.2432]                   ; 16EA _ A1, 00000260(d)
        cmp     dword [ebp-14H], eax                    ; 16EF _ 39. 45, EC
        jnz     ?_058                                   ; 16F2 _ 75, 28
        mov     eax, dword [line.2433]                  ; 16F4 _ A1, 0000025C(d)
        cmp     dword [ebp-10H], eax                    ; 16F9 _ 39. 45, F0
        jz      ?_056                                   ; 16FC _ 74, 0A
        mov     eax, dword [line.2433]                  ; 16FE _ A1, 0000025C(d)
        add     eax, 16                                 ; 1703 _ 83. C0, 10
        jmp     ?_057                                   ; 1706 _ EB, 05

?_056:  mov     eax, 0                                  ; 1708 _ B8, 00000000
?_057:  mov     dword [line.2433], eax                  ; 170D _ A3, 0000025C(d)
        mov     dword [pos.2432], 0                     ; 1712 _ C7. 05, 00000260(d), 00000000
?_058:  nop                                             ; 171C _ 90
        leave                                           ; 171D _ C9
        ret                                             ; 171E _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 171F _ 55
        mov     ebp, esp                                ; 1720 _ 89. E5
        sub     esp, 24                                 ; 1722 _ 83. EC, 18
        call    io_sti                                  ; 1725 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 172A _ C6. 45, F7, 00
        sub     esp, 12                                 ; 172E _ 83. EC, 0C
        push    mouseInfo                               ; 1731 _ 68, 00000024(d)
        call    fifo8_get                               ; 1736 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 173B _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 173E _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1741 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1745 _ 83. EC, 08
        push    eax                                     ; 1748 _ 50
        push    mouse_move                              ; 1749 _ 68, 000000E0(d)
        call    mouse_decode                            ; 174E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1753 _ 83. C4, 10
        test    eax, eax                                ; 1756 _ 85. C0
        jz      ?_059                                   ; 1758 _ 74, 60
        sub     esp, 4                                  ; 175A _ 83. EC, 04
        push    mouse_move                              ; 175D _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1762 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1765 _ FF. 75, 08
        call    computeMousePos                         ; 1768 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 176D _ 83. C4, 10
        mov     edx, dword [my]                         ; 1770 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1776 _ A1, 000000F0(d)
        push    edx                                     ; 177B _ 52
        push    eax                                     ; 177C _ 50
        push    dword [ebp+10H]                         ; 177D _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1780 _ FF. 75, 08
        call    sheet_slide                             ; 1783 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1788 _ 83. C4, 10
        mov     eax, dword [?_208]                      ; 178B _ A1, 000000EC(d)
        and     eax, 01H                                ; 1790 _ 83. E0, 01
        test    eax, eax                                ; 1793 _ 85. C0
        jz      ?_059                                   ; 1795 _ 74, 23
        mov     eax, dword [my]                         ; 1797 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 179C _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 179F _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 17A4 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 17A7 _ A1, 00000228(d)
        push    ecx                                     ; 17AC _ 51
        push    edx                                     ; 17AD _ 52
        push    eax                                     ; 17AE _ 50
        push    dword [ebp+8H]                          ; 17AF _ FF. 75, 08
        call    sheet_slide                             ; 17B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17B7 _ 83. C4, 10
?_059:  nop                                             ; 17BA _ 90
        leave                                           ; 17BB _ C9
        ret                                             ; 17BC _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 17BD _ 55
        mov     ebp, esp                                ; 17BE _ 89. E5
        sub     esp, 4                                  ; 17C0 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 17C3 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 17C6 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 17C9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17CC _ 0F B6. 40, 03
        test    al, al                                  ; 17D0 _ 84. C0
        jnz     ?_061                                   ; 17D2 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 17D4 _ 80. 7D, FC, FA
        jnz     ?_060                                   ; 17D8 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 17DA _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 17DD _ C6. 40, 03, 01
?_060:  mov     eax, 0                                  ; 17E1 _ B8, 00000000
        jmp     ?_068                                   ; 17E6 _ E9, 0000010C

?_061:  mov     eax, dword [ebp+8H]                     ; 17EB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17EE _ 0F B6. 40, 03
        cmp     al, 1                                   ; 17F2 _ 3C, 01
        jnz     ?_063                                   ; 17F4 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 17F6 _ 0F B6. 45, FC
        or      eax, 37H                                ; 17FA _ 83. C8, 37
        cmp     al, 63                                  ; 17FD _ 3C, 3F
        jnz     ?_062                                   ; 17FF _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1801 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1804 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1808 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 180A _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 180D _ C6. 40, 03, 02
?_062:  mov     eax, 0                                  ; 1811 _ B8, 00000000
        jmp     ?_068                                   ; 1816 _ E9, 000000DC

?_063:  mov     eax, dword [ebp+8H]                     ; 181B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 181E _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1822 _ 3C, 02
        jnz     ?_064                                   ; 1824 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1826 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1829 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 182D _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1830 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1833 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1837 _ B8, 00000000
        jmp     ?_068                                   ; 183C _ E9, 000000B6

?_064:  mov     eax, dword [ebp+8H]                     ; 1841 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1844 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1848 _ 3C, 03
        jne     ?_067                                   ; 184A _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1850 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1853 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1857 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 185A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 185D _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1861 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1864 _ 0F B6. 00
        movzx   eax, al                                 ; 1867 _ 0F B6. C0
        and     eax, 07H                                ; 186A _ 83. E0, 07
        mov     edx, eax                                ; 186D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 186F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1872 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1875 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1878 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 187C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 187F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1882 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1885 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1888 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 188C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 188F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1892 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1895 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1898 _ 0F B6. 00
        movzx   eax, al                                 ; 189B _ 0F B6. C0
        and     eax, 10H                                ; 189E _ 83. E0, 10
        test    eax, eax                                ; 18A1 _ 85. C0
        jz      ?_065                                   ; 18A3 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 18A5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 18A8 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 18AB _ 0D, FFFFFF00
        mov     edx, eax                                ; 18B0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18B2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 18B5 _ 89. 50, 04
?_065:  mov     eax, dword [ebp+8H]                     ; 18B8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18BB _ 0F B6. 00
        movzx   eax, al                                 ; 18BE _ 0F B6. C0
        and     eax, 20H                                ; 18C1 _ 83. E0, 20
        test    eax, eax                                ; 18C4 _ 85. C0
        jz      ?_066                                   ; 18C6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 18C8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18CB _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 18CE _ 0D, FFFFFF00
        mov     edx, eax                                ; 18D3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18D5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18D8 _ 89. 50, 08
?_066:  mov     eax, dword [ebp+8H]                     ; 18DB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18DE _ 8B. 40, 08
        neg     eax                                     ; 18E1 _ F7. D8
        mov     edx, eax                                ; 18E3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18E5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18E8 _ 89. 50, 08
        mov     eax, 1                                  ; 18EB _ B8, 00000001
        jmp     ?_068                                   ; 18F0 _ EB, 05

?_067:  mov     eax, 4294967295                         ; 18F2 _ B8, FFFFFFFF
?_068:  leave                                           ; 18F7 _ C9
        ret                                             ; 18F8 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 18F9 _ 55
        mov     ebp, esp                                ; 18FA _ 89. E5
        sub     esp, 16                                 ; 18FC _ 83. EC, 10
        movzx   eax, word [?_205]                       ; 18FF _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1906 _ 98
        mov     dword [ebp-8H], eax                     ; 1907 _ 89. 45, F8
        movzx   eax, word [?_206]                       ; 190A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1911 _ 98
        mov     dword [ebp-4H], eax                     ; 1912 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1915 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1918 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 191B _ A1, 000000F0(d)
        add     eax, edx                                ; 1920 _ 01. D0
        mov     dword [mx], eax                         ; 1922 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1927 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 192A _ 8B. 50, 08
        mov     eax, dword [my]                         ; 192D _ A1, 000000F4(d)
        add     eax, edx                                ; 1932 _ 01. D0
        mov     dword [my], eax                         ; 1934 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1939 _ A1, 000000F0(d)
        test    eax, eax                                ; 193E _ 85. C0
        jns     ?_069                                   ; 1940 _ 79, 0A
        mov     dword [mx], 0                           ; 1942 _ C7. 05, 000000F0(d), 00000000
?_069:  mov     eax, dword [my]                         ; 194C _ A1, 000000F4(d)
        test    eax, eax                                ; 1951 _ 85. C0
        jns     ?_070                                   ; 1953 _ 79, 0A
        mov     dword [my], 0                           ; 1955 _ C7. 05, 000000F4(d), 00000000
?_070:  mov     eax, dword [ebp-8H]                     ; 195F _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1962 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1965 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 196A _ 39. C2
        jge     ?_071                                   ; 196C _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 196E _ 8B. 45, F8
        sub     eax, 9                                  ; 1971 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1974 _ A3, 000000F0(d)
?_071:  mov     eax, dword [ebp-4H]                     ; 1979 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 197C _ 8D. 50, FF
        mov     eax, dword [my]                         ; 197F _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1984 _ 39. C2
        jge     ?_072                                   ; 1986 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1988 _ 8B. 45, FC
        sub     eax, 1                                  ; 198B _ 83. E8, 01
        mov     dword [my], eax                         ; 198E _ A3, 000000F4(d)
?_072:  nop                                             ; 1993 _ 90
        leave                                           ; 1994 _ C9
        ret                                             ; 1995 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1996 _ 55
        mov     ebp, esp                                ; 1997 _ 89. E5
        sub     esp, 56                                 ; 1999 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 199C _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 19A3 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 19AA _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 19B1 _ C7. 45, DC, 00000050
        push    100                                     ; 19B8 _ 6A, 64
        push    dword [ebp+1CH]                         ; 19BA _ FF. 75, 1C
        push    0                                       ; 19BD _ 6A, 00
        push    0                                       ; 19BF _ 6A, 00
        push    14                                      ; 19C1 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 19C3 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 19C6 _ FF. 75, 14
        call    boxfill8                                ; 19C9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19CE _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 19D1 _ 8B. 45, 20
        movsx   eax, al                                 ; 19D4 _ 0F BE. C0
        sub     esp, 8                                  ; 19D7 _ 83. EC, 08
        push    ?_197                                   ; 19DA _ 68, 00000048(d)
        push    eax                                     ; 19DF _ 50
        push    dword [ebp-2CH]                         ; 19E0 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 19E3 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 19E6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19E9 _ FF. 75, 08
        call    showString                              ; 19EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19F1 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 19F4 _ 8B. 45, 18
        sub     esp, 12                                 ; 19F7 _ 83. EC, 0C
        push    eax                                     ; 19FA _ 50
        call    intToHexStr                             ; 19FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A00 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1A03 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1A06 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A09 _ 0F BE. C0
        sub     esp, 8                                  ; 1A0C _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1A0F _ FF. 75, E0
        push    eax                                     ; 1A12 _ 50
        push    dword [ebp-2CH]                         ; 1A13 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A16 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A19 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A1C _ FF. 75, 08
        call    showString                              ; 1A1F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A24 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A27 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A2B _ 8B. 45, 20
        movsx   eax, al                                 ; 1A2E _ 0F BE. C0
        sub     esp, 8                                  ; 1A31 _ 83. EC, 08
        push    ?_198                                   ; 1A34 _ 68, 00000052(d)
        push    eax                                     ; 1A39 _ 50
        push    dword [ebp-2CH]                         ; 1A3A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A3D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A40 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A43 _ FF. 75, 08
        call    showString                              ; 1A46 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A4B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A4E _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1A51 _ 8B. 00
        sub     esp, 12                                 ; 1A53 _ 83. EC, 0C
        push    eax                                     ; 1A56 _ 50
        call    intToHexStr                             ; 1A57 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A5C _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1A5F _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1A62 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A65 _ 0F BE. C0
        sub     esp, 8                                  ; 1A68 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1A6B _ FF. 75, E4
        push    eax                                     ; 1A6E _ 50
        push    dword [ebp-2CH]                         ; 1A6F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A72 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A75 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A78 _ FF. 75, 08
        call    showString                              ; 1A7B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A80 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A83 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A87 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A8A _ 0F BE. C0
        sub     esp, 8                                  ; 1A8D _ 83. EC, 08
        push    ?_199                                   ; 1A90 _ 68, 00000060(d)
        push    eax                                     ; 1A95 _ 50
        push    dword [ebp-2CH]                         ; 1A96 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A99 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A9C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A9F _ FF. 75, 08
        call    showString                              ; 1AA2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AA7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1AAA _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1AAD _ 8B. 40, 04
        sub     esp, 12                                 ; 1AB0 _ 83. EC, 0C
        push    eax                                     ; 1AB3 _ 50
        call    intToHexStr                             ; 1AB4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AB9 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1ABC _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1ABF _ 8B. 45, 20
        movsx   eax, al                                 ; 1AC2 _ 0F BE. C0
        sub     esp, 8                                  ; 1AC5 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1AC8 _ FF. 75, E8
        push    eax                                     ; 1ACB _ 50
        push    dword [ebp-2CH]                         ; 1ACC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1ACF _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1AD2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AD5 _ FF. 75, 08
        call    showString                              ; 1AD8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1ADD _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1AE0 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1AE4 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AE7 _ 0F BE. C0
        sub     esp, 8                                  ; 1AEA _ 83. EC, 08
        push    ?_200                                   ; 1AED _ 68, 0000006F(d)
        push    eax                                     ; 1AF2 _ 50
        push    dword [ebp-2CH]                         ; 1AF3 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1AF6 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1AF9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AFC _ FF. 75, 08
        call    showString                              ; 1AFF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B04 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B07 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1B0A _ 8B. 40, 08
        sub     esp, 12                                 ; 1B0D _ 83. EC, 0C
        push    eax                                     ; 1B10 _ 50
        call    intToHexStr                             ; 1B11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B16 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1B19 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1B1C _ 8B. 45, 20
        movsx   eax, al                                 ; 1B1F _ 0F BE. C0
        sub     esp, 8                                  ; 1B22 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1B25 _ FF. 75, EC
        push    eax                                     ; 1B28 _ 50
        push    dword [ebp-2CH]                         ; 1B29 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B2C _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B2F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B32 _ FF. 75, 08
        call    showString                              ; 1B35 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B3A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B3D _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1B41 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B44 _ 0F BE. C0
        sub     esp, 8                                  ; 1B47 _ 83. EC, 08
        push    ?_201                                   ; 1B4A _ 68, 0000007B(d)
        push    eax                                     ; 1B4F _ 50
        push    dword [ebp-2CH]                         ; 1B50 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B53 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B56 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B59 _ FF. 75, 08
        call    showString                              ; 1B5C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B61 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B64 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1B67 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1B6A _ 83. EC, 0C
        push    eax                                     ; 1B6D _ 50
        call    intToHexStr                             ; 1B6E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B73 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1B76 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1B79 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B7C _ 0F BE. C0
        sub     esp, 8                                  ; 1B7F _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1B82 _ FF. 75, F0
        push    eax                                     ; 1B85 _ 50
        push    dword [ebp-2CH]                         ; 1B86 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B89 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B8C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B8F _ FF. 75, 08
        call    showString                              ; 1B92 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B97 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B9A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1B9E _ 8B. 45, 20
        movsx   eax, al                                 ; 1BA1 _ 0F BE. C0
        sub     esp, 8                                  ; 1BA4 _ 83. EC, 08
        push    ?_202                                   ; 1BA7 _ 68, 00000088(d)
        push    eax                                     ; 1BAC _ 50
        push    dword [ebp-2CH]                         ; 1BAD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1BB0 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1BB3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BB6 _ FF. 75, 08
        call    showString                              ; 1BB9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BBE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1BC1 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1BC4 _ 8B. 40, 10
        sub     esp, 12                                 ; 1BC7 _ 83. EC, 0C
        push    eax                                     ; 1BCA _ 50
        call    intToHexStr                             ; 1BCB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BD0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1BD3 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1BD6 _ 8B. 45, 20
        movsx   eax, al                                 ; 1BD9 _ 0F BE. C0
        sub     esp, 8                                  ; 1BDC _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1BDF _ FF. 75, F4
        push    eax                                     ; 1BE2 _ 50
        push    dword [ebp-2CH]                         ; 1BE3 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1BE6 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1BE9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BEC _ FF. 75, 08
        call    showString                              ; 1BEF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BF4 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1BF7 _ 83. 45, D4, 10
        nop                                             ; 1BFB _ 90
        leave                                           ; 1BFC _ C9
        ret                                             ; 1BFD _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1BFE _ 55
        mov     ebp, esp                                ; 1BFF _ 89. E5
        sub     esp, 24                                 ; 1C01 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 1C04 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1C07 _ 0F AF. 45, 14
        mov     edx, eax                                ; 1C0B _ 89. C2
        mov     eax, dword [memman]                     ; 1C0D _ A1, 00000008(d)
        sub     esp, 8                                  ; 1C12 _ 83. EC, 08
        push    edx                                     ; 1C15 _ 52
        push    eax                                     ; 1C16 _ 50
        call    memman_alloc_4K                         ; 1C17 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C1C _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1C1F _ 89. 45, F0
        sub     esp, 12                                 ; 1C22 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1C25 _ FF. 75, 08
        call    sheet_alloc                             ; 1C28 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C2D _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1C30 _ 89. 45, F4
        sub     esp, 12                                 ; 1C33 _ 83. EC, 0C
        push    99                                      ; 1C36 _ 6A, 63
        push    dword [ebp+14H]                         ; 1C38 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1C3B _ FF. 75, 10
        push    dword [ebp-10H]                         ; 1C3E _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1C41 _ FF. 75, F4
        call    sheet_setbuf                            ; 1C44 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C49 _ 83. C4, 20
        sub     esp, 4                                  ; 1C4C _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1C4F _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1C52 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C55 _ FF. 75, 08
        call    make_window8                            ; 1C58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C5D _ 83. C4, 10
        sub     esp, 8                                  ; 1C60 _ 83. EC, 08
        push    7                                       ; 1C63 _ 6A, 07
        push    16                                      ; 1C65 _ 6A, 10
        push    150                                     ; 1C67 _ 68, 00000096
        push    42                                      ; 1C6C _ 6A, 2A
        push    8                                       ; 1C6E _ 6A, 08
        push    dword [ebp-0CH]                         ; 1C70 _ FF. 75, F4
        call    make_textbox8                           ; 1C73 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C78 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 1C7B _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1C7E _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1C81 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C84 _ FF. 75, 08
        call    sheet_slide                             ; 1C87 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C8C _ 83. C4, 10
        sub     esp, 4                                  ; 1C8F _ 83. EC, 04
        push    dword [ebp+20H]                         ; 1C92 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1C95 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C98 _ FF. 75, 08
        call    sheet_level_updown                      ; 1C9B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CA0 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1CA3 _ 8B. 45, F4
        leave                                           ; 1CA6 _ C9
        ret                                             ; 1CA7 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 1CA8 _ 55
        mov     ebp, esp                                ; 1CA9 _ 89. E5
        sub     esp, 24                                 ; 1CAB _ 83. EC, 18
        mov     eax, dword [ebp+14H]                    ; 1CAE _ 8B. 45, 14
        imul    eax, dword [ebp+18H]                    ; 1CB1 _ 0F AF. 45, 18
        mov     edx, eax                                ; 1CB5 _ 89. C2
        mov     eax, dword [memman]                     ; 1CB7 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1CBC _ 83. EC, 08
        push    edx                                     ; 1CBF _ 52
        push    eax                                     ; 1CC0 _ 50
        call    memman_alloc_4K                         ; 1CC1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC6 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1CC9 _ 89. 45, F0
        sub     esp, 12                                 ; 1CCC _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1CCF _ FF. 75, 08
        call    sheet_alloc                             ; 1CD2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CD7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1CDA _ 89. 45, F4
        sub     esp, 12                                 ; 1CDD _ 83. EC, 0C
        push    99                                      ; 1CE0 _ 6A, 63
        push    dword [ebp+18H]                         ; 1CE2 _ FF. 75, 18
        push    dword [ebp+14H]                         ; 1CE5 _ FF. 75, 14
        push    dword [ebp-10H]                         ; 1CE8 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1CEB _ FF. 75, F4
        call    sheet_setbuf                            ; 1CEE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CF3 _ 83. C4, 20
        sub     esp, 4                                  ; 1CF6 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 1CF9 _ FF. 75, 10
        push    dword [ebp-0CH]                         ; 1CFC _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1CFF _ FF. 75, 08
        call    make_window8                            ; 1D02 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D07 _ 83. C4, 10
        call    task_alloc                              ; 1D0A _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 1D0F _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D12 _ 8B. 45, 0C
        mov     dword [eax+68H], 0                      ; 1D15 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D1C _ 8B. 45, 0C
        mov     dword [eax+6CH], 1073741824             ; 1D1F _ C7. 40, 6C, 40000000
        call    get_code32_addr                         ; 1D26 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 1D2B _ F7. D8
        add     eax, task_b_main                        ; 1D2D _ 05, 00000000(d)
        mov     edx, eax                                ; 1D32 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 1D34 _ 8B. 45, 0C
        mov     dword [eax+28H], edx                    ; 1D37 _ 89. 50, 28
        mov     eax, dword [ebp+0CH]                    ; 1D3A _ 8B. 45, 0C
        mov     dword [eax+50H], 0                      ; 1D3D _ C7. 40, 50, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D44 _ 8B. 45, 0C
        mov     dword [eax+54H], 8                      ; 1D47 _ C7. 40, 54, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1D4E _ 8B. 45, 0C
        mov     dword [eax+58H], 32                     ; 1D51 _ C7. 40, 58, 00000020
        mov     eax, dword [ebp+0CH]                    ; 1D58 _ 8B. 45, 0C
        mov     dword [eax+5CH], 24                     ; 1D5B _ C7. 40, 5C, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1D62 _ 8B. 45, 0C
        mov     dword [eax+60H], 0                      ; 1D65 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D6C _ 8B. 45, 0C
        mov     dword [eax+64H], 16                     ; 1D6F _ C7. 40, 64, 00000010
        mov     eax, dword [ebp+0CH]                    ; 1D76 _ 8B. 45, 0C
        mov     eax, dword [eax+40H]                    ; 1D79 _ 8B. 40, 40
        lea     edx, [eax-8H]                           ; 1D7C _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 1D7F _ 8B. 45, 0C
        mov     dword [eax+40H], edx                    ; 1D82 _ 89. 50, 40
        mov     eax, dword [ebp+0CH]                    ; 1D85 _ 8B. 45, 0C
        mov     eax, dword [eax+40H]                    ; 1D88 _ 8B. 40, 40
        add     eax, 4                                  ; 1D8B _ 83. C0, 04
        mov     edx, eax                                ; 1D8E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1D90 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 1D93 _ 89. 02
        sub     esp, 12                                 ; 1D95 _ 83. EC, 0C
        push    dword [ebp+0CH]                         ; 1D98 _ FF. 75, 0C
        call    task_run                                ; 1D9B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DA0 _ 83. C4, 10
        push    dword [ebp+20H]                         ; 1DA3 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 1DA6 _ FF. 75, 1C
        push    dword [ebp-0CH]                         ; 1DA9 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1DAC _ FF. 75, 08
        call    sheet_slide                             ; 1DAF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB4 _ 83. C4, 10
        sub     esp, 4                                  ; 1DB7 _ 83. EC, 04
        push    dword [ebp+24H]                         ; 1DBA _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 1DBD _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1DC0 _ FF. 75, 08
        call    sheet_level_updown                      ; 1DC3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DC8 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1DCB _ 8B. 45, F4
        leave                                           ; 1DCE _ C9
        ret                                             ; 1DCF _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 1DD0 _ 55
        mov     ebp, esp                                ; 1DD1 _ 89. E5
        push    ebx                                     ; 1DD3 _ 53
        sub     esp, 36                                 ; 1DD4 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1DD7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DDA _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1DDD _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1DE0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DE3 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1DE6 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1DE9 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1DEC _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1DEF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DF2 _ 8B. 00
        push    0                                       ; 1DF4 _ 6A, 00
        push    edx                                     ; 1DF6 _ 52
        push    0                                       ; 1DF7 _ 6A, 00
        push    0                                       ; 1DF9 _ 6A, 00
        push    8                                       ; 1DFB _ 6A, 08
        push    dword [ebp-10H]                         ; 1DFD _ FF. 75, F0
        push    eax                                     ; 1E00 _ 50
        call    boxfill8                                ; 1E01 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E06 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1E09 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1E0C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E0F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E12 _ 8B. 00
        push    1                                       ; 1E14 _ 6A, 01
        push    edx                                     ; 1E16 _ 52
        push    1                                       ; 1E17 _ 6A, 01
        push    1                                       ; 1E19 _ 6A, 01
        push    7                                       ; 1E1B _ 6A, 07
        push    dword [ebp-10H]                         ; 1E1D _ FF. 75, F0
        push    eax                                     ; 1E20 _ 50
        call    boxfill8                                ; 1E21 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E26 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E29 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1E2C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E2F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E32 _ 8B. 00
        push    edx                                     ; 1E34 _ 52
        push    0                                       ; 1E35 _ 6A, 00
        push    0                                       ; 1E37 _ 6A, 00
        push    0                                       ; 1E39 _ 6A, 00
        push    8                                       ; 1E3B _ 6A, 08
        push    dword [ebp-10H]                         ; 1E3D _ FF. 75, F0
        push    eax                                     ; 1E40 _ 50
        call    boxfill8                                ; 1E41 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E46 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E49 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1E4C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E4F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E52 _ 8B. 00
        push    edx                                     ; 1E54 _ 52
        push    1                                       ; 1E55 _ 6A, 01
        push    1                                       ; 1E57 _ 6A, 01
        push    1                                       ; 1E59 _ 6A, 01
        push    7                                       ; 1E5B _ 6A, 07
        push    dword [ebp-10H]                         ; 1E5D _ FF. 75, F0
        push    eax                                     ; 1E60 _ 50
        call    boxfill8                                ; 1E61 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E66 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E69 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1E6C _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1E6F _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1E72 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1E75 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1E78 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E7B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E7E _ 8B. 00
        push    ebx                                     ; 1E80 _ 53
        push    ecx                                     ; 1E81 _ 51
        push    1                                       ; 1E82 _ 6A, 01
        push    edx                                     ; 1E84 _ 52
        push    15                                      ; 1E85 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1E87 _ FF. 75, F0
        push    eax                                     ; 1E8A _ 50
        call    boxfill8                                ; 1E8B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E90 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E93 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1E96 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1E99 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1E9C _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1E9F _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1EA2 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1EA5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EA8 _ 8B. 00
        push    ebx                                     ; 1EAA _ 53
        push    ecx                                     ; 1EAB _ 51
        push    0                                       ; 1EAC _ 6A, 00
        push    edx                                     ; 1EAE _ 52
        push    0                                       ; 1EAF _ 6A, 00
        push    dword [ebp-10H]                         ; 1EB1 _ FF. 75, F0
        push    eax                                     ; 1EB4 _ 50
        call    boxfill8                                ; 1EB5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EBA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1EBD _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1EC0 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1EC3 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1EC6 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1EC9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1ECC _ 8B. 00
        push    ecx                                     ; 1ECE _ 51
        push    edx                                     ; 1ECF _ 52
        push    2                                       ; 1ED0 _ 6A, 02
        push    2                                       ; 1ED2 _ 6A, 02
        push    8                                       ; 1ED4 _ 6A, 08
        push    dword [ebp-10H]                         ; 1ED6 _ FF. 75, F0
        push    eax                                     ; 1ED9 _ 50
        call    boxfill8                                ; 1EDA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EDF _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1EE2 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1EE5 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1EE8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EEB _ 8B. 00
        push    20                                      ; 1EED _ 6A, 14
        push    edx                                     ; 1EEF _ 52
        push    3                                       ; 1EF0 _ 6A, 03
        push    3                                       ; 1EF2 _ 6A, 03
        push    12                                      ; 1EF4 _ 6A, 0C
        push    dword [ebp-10H]                         ; 1EF6 _ FF. 75, F0
        push    eax                                     ; 1EF9 _ 50
        call    boxfill8                                ; 1EFA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EFF _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F02 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1F05 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1F08 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1F0B _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1F0E _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1F11 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1F14 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F17 _ 8B. 00
        push    ebx                                     ; 1F19 _ 53
        push    ecx                                     ; 1F1A _ 51
        push    edx                                     ; 1F1B _ 52
        push    1                                       ; 1F1C _ 6A, 01
        push    15                                      ; 1F1E _ 6A, 0F
        push    dword [ebp-10H]                         ; 1F20 _ FF. 75, F0
        push    eax                                     ; 1F23 _ 50
        call    boxfill8                                ; 1F24 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F29 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F2C _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1F2F _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1F32 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1F35 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1F38 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1F3B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1F3E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F41 _ 8B. 00
        push    ebx                                     ; 1F43 _ 53
        push    ecx                                     ; 1F44 _ 51
        push    edx                                     ; 1F45 _ 52
        push    0                                       ; 1F46 _ 6A, 00
        push    0                                       ; 1F48 _ 6A, 00
        push    dword [ebp-10H]                         ; 1F4A _ FF. 75, F0
        push    eax                                     ; 1F4D _ 50
        call    boxfill8                                ; 1F4E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F53 _ 83. C4, 1C
        sub     esp, 8                                  ; 1F56 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1F59 _ FF. 75, 10
        push    7                                       ; 1F5C _ 6A, 07
        push    4                                       ; 1F5E _ 6A, 04
        push    8                                       ; 1F60 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1F62 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F65 _ FF. 75, 08
        call    showString                              ; 1F68 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F6D _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1F70 _ C7. 45, E8, 00000000
        jmp     ?_079                                   ; 1F77 _ EB, 7D

?_073:  mov     dword [ebp-14H], 0                      ; 1F79 _ C7. 45, EC, 00000000
        jmp     ?_078                                   ; 1F80 _ EB, 6A

?_074:  mov     eax, dword [ebp-18H]                    ; 1F82 _ 8B. 45, E8
        shl     eax, 4                                  ; 1F85 _ C1. E0, 04
        mov     edx, eax                                ; 1F88 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1F8A _ 8B. 45, EC
        add     eax, edx                                ; 1F8D _ 01. D0
        add     eax, closebtn.2498                      ; 1F8F _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1F94 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1F97 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1F9A _ 80. 7D, E7, 40
        jnz     ?_075                                   ; 1F9E _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1FA0 _ C6. 45, E7, 00
        jmp     ?_077                                   ; 1FA4 _ EB, 16

?_075:  cmp     byte [ebp-19H], 36                      ; 1FA6 _ 80. 7D, E7, 24
        jnz     ?_076                                   ; 1FAA _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1FAC _ C6. 45, E7, 0F
        jmp     ?_077                                   ; 1FB0 _ EB, 0A

?_076:  cmp     byte [ebp-19H], 81                      ; 1FB2 _ 80. 7D, E7, 51
        jnz     ?_077                                   ; 1FB6 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1FB8 _ C6. 45, E7, 08
?_077:  mov     eax, dword [ebp+0CH]                    ; 1FBC _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1FBF _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1FC1 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1FC4 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1FC7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FCA _ 8B. 40, 04
        imul    ecx, eax                                ; 1FCD _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1FD0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FD3 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1FD6 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1FD9 _ 8B. 45, EC
        add     eax, ebx                                ; 1FDC _ 01. D8
        add     eax, ecx                                ; 1FDE _ 01. C8
        add     edx, eax                                ; 1FE0 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1FE2 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1FE6 _ 88. 02
        add     dword [ebp-14H], 1                      ; 1FE8 _ 83. 45, EC, 01
?_078:  cmp     dword [ebp-14H], 15                     ; 1FEC _ 83. 7D, EC, 0F
        jle     ?_074                                   ; 1FF0 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1FF2 _ 83. 45, E8, 01
?_079:  cmp     dword [ebp-18H], 13                     ; 1FF6 _ 83. 7D, E8, 0D
        jle     ?_073                                   ; 1FFA _ 0F 8E, FFFFFF79
        nop                                             ; 2000 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2001 _ 8B. 5D, FC
        leave                                           ; 2004 _ C9
        ret                                             ; 2005 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2006 _ 55
        mov     ebp, esp                                ; 2007 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2009 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 200C _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2012 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2015 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 201C _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 201F _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2026 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2029 _ C7. 40, 0C, 00000000
        nop                                             ; 2030 _ 90
        pop     ebp                                     ; 2031 _ 5D
        ret                                             ; 2032 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2033 _ 55
        mov     ebp, esp                                ; 2034 _ 89. E5
        sub     esp, 16                                 ; 2036 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2039 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2040 _ C7. 45, FC, 00000000
        jmp     ?_081                                   ; 2047 _ EB, 14

?_080:  mov     eax, dword [ebp+8H]                     ; 2049 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 204C _ 8B. 55, FC
        add     edx, 2                                  ; 204F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2052 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2056 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2059 _ 83. 45, FC, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 205D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2060 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2062 _ 39. 45, FC
        jl      ?_080                                   ; 2065 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2067 _ 8B. 45, F8
        leave                                           ; 206A _ C9
        ret                                             ; 206B _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 206C _ 55
        mov     ebp, esp                                ; 206D _ 89. E5
        sub     esp, 16                                 ; 206F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2072 _ C7. 45, F8, 00000000
        jmp     ?_085                                   ; 2079 _ E9, 00000085

?_082:  mov     eax, dword [ebp+8H]                     ; 207E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2081 _ 8B. 55, F8
        add     edx, 2                                  ; 2084 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2087 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 208B _ 39. 45, 0C
        ja      ?_084                                   ; 208E _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2090 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2093 _ 8B. 55, F8
        add     edx, 2                                  ; 2096 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2099 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 209C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 209F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20A2 _ 8B. 55, F8
        add     edx, 2                                  ; 20A5 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 20A8 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 20AB _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 20AE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20B1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20B4 _ 8B. 55, F8
        add     edx, 2                                  ; 20B7 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 20BA _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 20BD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20C0 _ 8B. 55, F8
        add     edx, 2                                  ; 20C3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20C6 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 20CA _ 2B. 45, 0C
        mov     edx, eax                                ; 20CD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 20CF _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 20D2 _ 8B. 4D, F8
        add     ecx, 2                                  ; 20D5 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 20D8 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 20DC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20DF _ 8B. 55, F8
        add     edx, 2                                  ; 20E2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20E5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 20E9 _ 85. C0
        jnz     ?_083                                   ; 20EB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 20ED _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20F0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 20F2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20F5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 20F8 _ 89. 10
?_083:  mov     eax, dword [ebp-4H]                     ; 20FA _ 8B. 45, FC
        jmp     ?_086                                   ; 20FD _ EB, 17

?_084:  add     dword [ebp-8H], 1                       ; 20FF _ 83. 45, F8, 01
?_085:  mov     eax, dword [ebp+8H]                     ; 2103 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2106 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2108 _ 39. 45, F8
        jl      ?_082                                   ; 210B _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2111 _ B8, 00000000
?_086:  leave                                           ; 2116 _ C9
        ret                                             ; 2117 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2118 _ 55
        mov     ebp, esp                                ; 2119 _ 89. E5
        sub     esp, 16                                 ; 211B _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 211E _ 8B. 45, 0C
        add     eax, 4095                               ; 2121 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2126 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 212B _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 212E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2131 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2134 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2139 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 213C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 213F _ 8B. 45, FC
        leave                                           ; 2142 _ C9
        ret                                             ; 2143 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2144 _ 55
        mov     ebp, esp                                ; 2145 _ 89. E5
        push    ebx                                     ; 2147 _ 53
        sub     esp, 16                                 ; 2148 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 214B _ C7. 45, F4, 00000000
        jmp     ?_088                                   ; 2152 _ EB, 15

?_087:  mov     eax, dword [ebp+8H]                     ; 2154 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2157 _ 8B. 55, F4
        add     edx, 2                                  ; 215A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 215D _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2160 _ 39. 45, 0C
        jc      ?_089                                   ; 2163 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2165 _ 83. 45, F4, 01
?_088:  mov     eax, dword [ebp+8H]                     ; 2169 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 216C _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 216E _ 39. 45, F4
        jl      ?_087                                   ; 2171 _ 7C, E1
        jmp     ?_090                                   ; 2173 _ EB, 01

?_089:  nop                                             ; 2175 _ 90
?_090:  cmp     dword [ebp-0CH], 0                      ; 2176 _ 83. 7D, F4, 00
        jle     ?_092                                   ; 217A _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2180 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2183 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2186 _ 8B. 45, 08
        add     edx, 2                                  ; 2189 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 218C _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 218F _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2192 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2195 _ 8B. 45, 08
        add     ecx, 2                                  ; 2198 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 219B _ 8B. 44 C8, 04
        add     eax, edx                                ; 219F _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 21A1 _ 39. 45, 0C
        jne     ?_092                                   ; 21A4 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 21AA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21AD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21B0 _ 8B. 45, 08
        add     edx, 2                                  ; 21B3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 21B6 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 21BA _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 21BD _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 21C0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21C3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21C6 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 21C9 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 21CC _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 21D0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21D3 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 21D5 _ 39. 45, F4
        jge     ?_091                                   ; 21D8 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 21DA _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 21DD _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21E0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21E3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 21E6 _ 8B. 55, F4
        add     edx, 2                                  ; 21E9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 21EC _ 8B. 04 D0
        cmp     ecx, eax                                ; 21EF _ 39. C1
        jnz     ?_091                                   ; 21F1 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 21F3 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21F6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21F9 _ 8B. 45, 08
        add     edx, 2                                  ; 21FC _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 21FF _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2203 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2206 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2209 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 220C _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2210 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2213 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2216 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2219 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 221C _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 221F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2223 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2226 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2228 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 222B _ 8B. 45, 08
        mov     dword [eax], edx                        ; 222E _ 89. 10
?_091:  mov     eax, 0                                  ; 2230 _ B8, 00000000
        jmp     ?_098                                   ; 2235 _ E9, 0000011C

?_092:  mov     eax, dword [ebp+8H]                     ; 223A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 223D _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 223F _ 39. 45, F4
        jge     ?_093                                   ; 2242 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2244 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2247 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 224A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 224D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2250 _ 8B. 55, F4
        add     edx, 2                                  ; 2253 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2256 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2259 _ 39. C1
        jnz     ?_093                                   ; 225B _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 225D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2260 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2263 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2266 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2269 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 226C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 226F _ 8B. 55, F4
        add     edx, 2                                  ; 2272 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2275 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2279 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 227C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 227F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2282 _ 8B. 55, F4
        add     edx, 2                                  ; 2285 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2288 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 228C _ B8, 00000000
        jmp     ?_098                                   ; 2291 _ E9, 000000C0

?_093:  mov     eax, dword [ebp+8H]                     ; 2296 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2299 _ 8B. 00
        cmp     eax, 4095                               ; 229B _ 3D, 00000FFF
        jg      ?_097                                   ; 22A0 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 22A6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22A9 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 22AB _ 89. 45, F8
        jmp     ?_095                                   ; 22AE _ EB, 28

?_094:  mov     eax, dword [ebp-8H]                     ; 22B0 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 22B3 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 22B6 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 22B9 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 22BC _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 22BF _ 8B. 45, 08
        add     edx, 2                                  ; 22C2 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 22C5 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 22C8 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 22CA _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 22CD _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 22D0 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 22D4 _ 83. 6D, F8, 01
?_095:  mov     eax, dword [ebp-8H]                     ; 22D8 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 22DB _ 3B. 45, F4
        jg      ?_094                                   ; 22DE _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 22E0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22E3 _ 8B. 00
        lea     edx, [eax+1H]                           ; 22E5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 22E8 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 22EB _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 22ED _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 22F0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 22F3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22F6 _ 8B. 00
        cmp     edx, eax                                ; 22F8 _ 39. C2
        jge     ?_096                                   ; 22FA _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 22FC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 22FF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2301 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2304 _ 89. 50, 04
?_096:  mov     eax, dword [ebp+8H]                     ; 2307 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 230A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 230D _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2310 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2313 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2316 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2319 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 231C _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 231F _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2322 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2326 _ B8, 00000000
        jmp     ?_098                                   ; 232B _ EB, 29

?_097:  mov     eax, dword [ebp+8H]                     ; 232D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2330 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2333 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2336 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2339 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 233C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 233F _ 8B. 40, 08
        mov     edx, eax                                ; 2342 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2344 _ 8B. 45, 10
        add     eax, edx                                ; 2347 _ 01. D0
        mov     edx, eax                                ; 2349 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 234B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 234E _ 89. 50, 08
        mov     eax, 4294967295                         ; 2351 _ B8, FFFFFFFF
?_098:  add     esp, 16                                 ; 2356 _ 83. C4, 10
        pop     ebx                                     ; 2359 _ 5B
        pop     ebp                                     ; 235A _ 5D
        ret                                             ; 235B _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 235C _ 55
        mov     ebp, esp                                ; 235D _ 89. E5
        sub     esp, 16                                 ; 235F _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2362 _ 8B. 45, 10
        add     eax, 4095                               ; 2365 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 236A _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 236F _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2372 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2375 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2378 _ FF. 75, 08
        call    memman_free                             ; 237B _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2380 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2383 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2386 _ 8B. 45, FC
        leave                                           ; 2389 _ C9
        ret                                             ; 238A _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 238B _ 55
        mov     ebp, esp                                ; 238C _ 89. E5
        sub     esp, 24                                 ; 238E _ 83. EC, 18
        sub     esp, 8                                  ; 2391 _ 83. EC, 08
        push    9232                                    ; 2394 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2399 _ FF. 75, 08
        call    memman_alloc_4K                         ; 239C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23A1 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 23A4 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 23A7 _ 83. 7D, F4, 00
        jnz     ?_099                                   ; 23AB _ 75, 0A
        mov     eax, 0                                  ; 23AD _ B8, 00000000
        jmp     ?_103                                   ; 23B2 _ E9, 0000009A

?_099:  mov     eax, dword [ebp+10H]                    ; 23B7 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 23BA _ 0F AF. 45, 14
        sub     esp, 8                                  ; 23BE _ 83. EC, 08
        push    eax                                     ; 23C1 _ 50
        push    dword [ebp+8H]                          ; 23C2 _ FF. 75, 08
        call    memman_alloc_4K                         ; 23C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23CA _ 83. C4, 10
        mov     edx, eax                                ; 23CD _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 23CF _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 23D2 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 23D5 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 23D8 _ 8B. 40, 04
        test    eax, eax                                ; 23DB _ 85. C0
        jnz     ?_100                                   ; 23DD _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 23DF _ 8B. 45, F4
        sub     esp, 4                                  ; 23E2 _ 83. EC, 04
        push    9232                                    ; 23E5 _ 68, 00002410
        push    eax                                     ; 23EA _ 50
        push    dword [ebp+8H]                          ; 23EB _ FF. 75, 08
        call    memman_free_4K                          ; 23EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23F3 _ 83. C4, 10
        mov     eax, 0                                  ; 23F6 _ B8, 00000000
        jmp     ?_103                                   ; 23FB _ EB, 54

?_100:  mov     eax, dword [ebp-0CH]                    ; 23FD _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2400 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2403 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2405 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2408 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 240B _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 240E _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2411 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2414 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2417 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 241A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2421 _ C7. 45, F0, 00000000
        jmp     ?_102                                   ; 2428 _ EB, 1B

?_101:  mov     eax, dword [ebp-0CH]                    ; 242A _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 242D _ 8B. 55, F0
        add     edx, 33                                 ; 2430 _ 83. C2, 21
        shl     edx, 5                                  ; 2433 _ C1. E2, 05
        add     eax, edx                                ; 2436 _ 01. D0
        add     eax, 16                                 ; 2438 _ 83. C0, 10
        mov     dword [eax], 0                          ; 243B _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2441 _ 83. 45, F0, 01
?_102:  cmp     dword [ebp-10H], 255                    ; 2445 _ 81. 7D, F0, 000000FF
        jle     ?_101                                   ; 244C _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 244E _ 8B. 45, F4
?_103:  leave                                           ; 2451 _ C9
        ret                                             ; 2452 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2453 _ 55
        mov     ebp, esp                                ; 2454 _ 89. E5
        sub     esp, 16                                 ; 2456 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2459 _ C7. 45, F8, 00000000
        jmp     ?_106                                   ; 2460 _ EB, 4B

?_104:  mov     eax, dword [ebp+8H]                     ; 2462 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2465 _ 8B. 55, F8
        add     edx, 33                                 ; 2468 _ 83. C2, 21
        shl     edx, 5                                  ; 246B _ C1. E2, 05
        add     eax, edx                                ; 246E _ 01. D0
        add     eax, 16                                 ; 2470 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2473 _ 8B. 00
        test    eax, eax                                ; 2475 _ 85. C0
        jnz     ?_105                                   ; 2477 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2479 _ 8B. 45, F8
        shl     eax, 5                                  ; 247C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 247F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2485 _ 8B. 45, 08
        add     eax, edx                                ; 2488 _ 01. D0
        add     eax, 4                                  ; 248A _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 248D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2490 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2493 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 249A _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 249D _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 24A4 _ 8B. 45, FC
        jmp     ?_107                                   ; 24A7 _ EB, 12

?_105:  add     dword [ebp-8H], 1                       ; 24A9 _ 83. 45, F8, 01
?_106:  cmp     dword [ebp-8H], 255                     ; 24AD _ 81. 7D, F8, 000000FF
        jle     ?_104                                   ; 24B4 _ 7E, AC
        mov     eax, 0                                  ; 24B6 _ B8, 00000000
?_107:  leave                                           ; 24BB _ C9
        ret                                             ; 24BC _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 24BD _ 55
        mov     ebp, esp                                ; 24BE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 24C0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 24C3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 24C6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 24C8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 24CB _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 24CE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 24D1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 24D4 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 24D7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 24DA _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 24DD _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 24E0 _ 89. 50, 14
        nop                                             ; 24E3 _ 90
        pop     ebp                                     ; 24E4 _ 5D
        ret                                             ; 24E5 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 24E6 _ 55
        mov     ebp, esp                                ; 24E7 _ 89. E5
        push    esi                                     ; 24E9 _ 56
        push    ebx                                     ; 24EA _ 53
        sub     esp, 32                                 ; 24EB _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 24EE _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 24F1 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 24F4 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 24F7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 24FA _ 8B. 40, 10
        add     eax, 1                                  ; 24FD _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2500 _ 39. 45, 10
        jle     ?_108                                   ; 2503 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2505 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2508 _ 8B. 40, 10
        add     eax, 1                                  ; 250B _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 250E _ 89. 45, 10
?_108:  cmp     dword [ebp+10H], -1                     ; 2511 _ 83. 7D, 10, FF
        jge     ?_109                                   ; 2515 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2517 _ C7. 45, 10, FFFFFFFF
?_109:  mov     eax, dword [ebp+0CH]                    ; 251E _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2521 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2524 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2527 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 252A _ 3B. 45, 10
        jle     ?_116                                   ; 252D _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2533 _ 83. 7D, 10, 00
        js      ?_112                                   ; 2537 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 253D _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2540 _ 89. 45, E4
        jmp     ?_111                                   ; 2543 _ EB, 34

?_110:  mov     eax, dword [ebp-1CH]                    ; 2545 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2548 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 254B _ 8B. 45, 08
        add     edx, 4                                  ; 254E _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2551 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2555 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2558 _ 8B. 4D, E4
        add     ecx, 4                                  ; 255B _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 255E _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2562 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2565 _ 8B. 55, E4
        add     edx, 4                                  ; 2568 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 256B _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 256F _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2572 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2575 _ 83. 6D, E4, 01
?_111:  mov     eax, dword [ebp-1CH]                    ; 2579 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 257C _ 3B. 45, 10
        jg      ?_110                                   ; 257F _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2581 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2584 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2587 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 258A _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 258D _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2591 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2594 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2597 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 259A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 259D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25A0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25A3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25A6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25A9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25AC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25AF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25B2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25B5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25B8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25BB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25BE _ 8B. 40, 0C
        sub     esp, 8                                  ; 25C1 _ 83. EC, 08
        push    esi                                     ; 25C4 _ 56
        push    ebx                                     ; 25C5 _ 53
        push    ecx                                     ; 25C6 _ 51
        push    edx                                     ; 25C7 _ 52
        push    eax                                     ; 25C8 _ 50
        push    dword [ebp+8H]                          ; 25C9 _ FF. 75, 08
        call    sheet_refreshmap                        ; 25CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25D1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 25D4 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 25D7 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 25DA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25DD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25E0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25E3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25E6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25E9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25EC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25EF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25F2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25F5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25F8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25FB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25FE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2601 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2604 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2607 _ FF. 75, F4
        push    esi                                     ; 260A _ 56
        push    ebx                                     ; 260B _ 53
        push    ecx                                     ; 260C _ 51
        push    edx                                     ; 260D _ 52
        push    eax                                     ; 260E _ 50
        push    dword [ebp+8H]                          ; 260F _ FF. 75, 08
        call    sheet_refresh_new                       ; 2612 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2617 _ 83. C4, 20
        jmp     ?_123                                   ; 261A _ E9, 00000244

?_112:  mov     eax, dword [ebp+8H]                     ; 261F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2622 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2625 _ 39. 45, F4
        jge     ?_115                                   ; 2628 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 262A _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 262D _ 89. 45, E8
        jmp     ?_114                                   ; 2630 _ EB, 34

?_113:  mov     eax, dword [ebp-18H]                    ; 2632 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2635 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2638 _ 8B. 45, 08
        add     edx, 4                                  ; 263B _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 263E _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2642 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2645 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2648 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 264B _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 264F _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2652 _ 8B. 55, E8
        add     edx, 4                                  ; 2655 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2658 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 265C _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 265F _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2662 _ 83. 45, E8, 01
?_114:  mov     eax, dword [ebp+8H]                     ; 2666 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2669 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 266C _ 39. 45, E8
        jl      ?_113                                   ; 266F _ 7C, C1
?_115:  mov     eax, dword [ebp+8H]                     ; 2671 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2674 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2677 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 267A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 267D _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2680 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2683 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2686 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2689 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 268C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 268F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2692 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2695 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2698 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 269B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 269E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26A1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26A4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26A7 _ 8B. 40, 0C
        sub     esp, 8                                  ; 26AA _ 83. EC, 08
        push    0                                       ; 26AD _ 6A, 00
        push    ebx                                     ; 26AF _ 53
        push    ecx                                     ; 26B0 _ 51
        push    edx                                     ; 26B1 _ 52
        push    eax                                     ; 26B2 _ 50
        push    dword [ebp+8H]                          ; 26B3 _ FF. 75, 08
        call    sheet_refreshmap                        ; 26B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26BB _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 26BE _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 26C1 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 26C4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26C7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26CA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 26CD _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 26D0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26D3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26D6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26D9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26DC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 26DF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 26E2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26E5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26E8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26EB _ 8B. 40, 0C
        sub     esp, 4                                  ; 26EE _ 83. EC, 04
        push    esi                                     ; 26F1 _ 56
        push    0                                       ; 26F2 _ 6A, 00
        push    ebx                                     ; 26F4 _ 53
        push    ecx                                     ; 26F5 _ 51
        push    edx                                     ; 26F6 _ 52
        push    eax                                     ; 26F7 _ 50
        push    dword [ebp+8H]                          ; 26F8 _ FF. 75, 08
        call    sheet_refresh_new                       ; 26FB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2700 _ 83. C4, 20
        jmp     ?_123                                   ; 2703 _ E9, 0000015B

?_116:  mov     eax, dword [ebp-0CH]                    ; 2708 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 270B _ 3B. 45, 10
        jge     ?_123                                   ; 270E _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2714 _ 83. 7D, F4, 00
        js      ?_119                                   ; 2718 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 271A _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 271D _ 89. 45, EC
        jmp     ?_118                                   ; 2720 _ EB, 34

?_117:  mov     eax, dword [ebp-14H]                    ; 2722 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2725 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2728 _ 8B. 45, 08
        add     edx, 4                                  ; 272B _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 272E _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2732 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2735 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2738 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 273B _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 273F _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2742 _ 8B. 55, EC
        add     edx, 4                                  ; 2745 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2748 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 274C _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 274F _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2752 _ 83. 45, EC, 01
?_118:  mov     eax, dword [ebp-14H]                    ; 2756 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2759 _ 3B. 45, 10
        jl      ?_117                                   ; 275C _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 275E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2761 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2764 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2767 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 276A _ 89. 54 88, 04
        jmp     ?_122                                   ; 276E _ EB, 72

?_119:  cmp     dword [ebp-0CH], 0                      ; 2770 _ 83. 7D, F4, 00
        jns     ?_122                                   ; 2774 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2776 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2779 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 277C _ 89. 45, F0
        jmp     ?_121                                   ; 277F _ EB, 3A

?_120:  mov     eax, dword [ebp-10H]                    ; 2781 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2784 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2787 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 278A _ 8B. 55, F0
        add     edx, 4                                  ; 278D _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2790 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2794 _ 8B. 45, 08
        add     ecx, 4                                  ; 2797 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 279A _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 279E _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 27A1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27A4 _ 8B. 45, 08
        add     edx, 4                                  ; 27A7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 27AA _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 27AE _ 8B. 55, F0
        add     edx, 1                                  ; 27B1 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 27B4 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 27B7 _ 83. 6D, F0, 01
?_121:  mov     eax, dword [ebp-10H]                    ; 27BB _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 27BE _ 3B. 45, 10
        jge     ?_120                                   ; 27C1 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 27C3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27C6 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 27C9 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 27CC _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 27CF _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 27D3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27D6 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 27D9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27DC _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27DF _ 89. 50, 10
?_122:  mov     eax, dword [ebp+0CH]                    ; 27E2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27E5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27E8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27EB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27EE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27F1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27F4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 27F7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27FA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 27FD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2800 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2803 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2806 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2809 _ 8B. 40, 0C
        sub     esp, 8                                  ; 280C _ 83. EC, 08
        push    dword [ebp+10H]                         ; 280F _ FF. 75, 10
        push    ebx                                     ; 2812 _ 53
        push    ecx                                     ; 2813 _ 51
        push    edx                                     ; 2814 _ 52
        push    eax                                     ; 2815 _ 50
        push    dword [ebp+8H]                          ; 2816 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2819 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 281E _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2821 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2824 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2827 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 282A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 282D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2830 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2833 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2836 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2839 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 283C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 283F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2842 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2845 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2848 _ 8B. 40, 0C
        sub     esp, 4                                  ; 284B _ 83. EC, 04
        push    dword [ebp+10H]                         ; 284E _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2851 _ FF. 75, 10
        push    ebx                                     ; 2854 _ 53
        push    ecx                                     ; 2855 _ 51
        push    edx                                     ; 2856 _ 52
        push    eax                                     ; 2857 _ 50
        push    dword [ebp+8H]                          ; 2858 _ FF. 75, 08
        call    sheet_refresh_new                       ; 285B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2860 _ 83. C4, 20
?_123:  nop                                             ; 2863 _ 90
        lea     esp, [ebp-8H]                           ; 2864 _ 8D. 65, F8
        pop     ebx                                     ; 2867 _ 5B
        pop     esi                                     ; 2868 _ 5E
        pop     ebp                                     ; 2869 _ 5D
        ret                                             ; 286A _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 286B _ 55
        mov     ebp, esp                                ; 286C _ 89. E5
        push    edi                                     ; 286E _ 57
        push    esi                                     ; 286F _ 56
        push    ebx                                     ; 2870 _ 53
        sub     esp, 28                                 ; 2871 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2874 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2877 _ 8B. 40, 18
        test    eax, eax                                ; 287A _ 85. C0
        js      ?_124                                   ; 287C _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 287E _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2881 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2884 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2887 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 288A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 288D _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2890 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2893 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2896 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2899 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 289C _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 289F _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 28A2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28A5 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 28A8 _ 8B. 45, 14
        add     edx, eax                                ; 28AB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28AD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28B0 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 28B3 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 28B6 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 28B9 _ 03. 45, E4
        sub     esp, 4                                  ; 28BC _ 83. EC, 04
        push    ebx                                     ; 28BF _ 53
        push    ecx                                     ; 28C0 _ 51
        push    edi                                     ; 28C1 _ 57
        push    esi                                     ; 28C2 _ 56
        push    edx                                     ; 28C3 _ 52
        push    eax                                     ; 28C4 _ 50
        push    dword [ebp+8H]                          ; 28C5 _ FF. 75, 08
        call    sheet_refresh_new                       ; 28C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28CD _ 83. C4, 20
?_124:  mov     eax, 0                                  ; 28D0 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 28D5 _ 8D. 65, F4
        pop     ebx                                     ; 28D8 _ 5B
        pop     esi                                     ; 28D9 _ 5E
        pop     edi                                     ; 28DA _ 5F
        pop     ebp                                     ; 28DB _ 5D
        ret                                             ; 28DC _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 28DD _ 55
        mov     ebp, esp                                ; 28DE _ 89. E5
        push    esi                                     ; 28E0 _ 56
        push    ebx                                     ; 28E1 _ 53
        sub     esp, 16                                 ; 28E2 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 28E5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28E8 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 28EB _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 28EE _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 28F1 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 28F4 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 28F7 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 28FA _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 28FD _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2900 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2903 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2906 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2909 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 290C _ 8B. 40, 18
        test    eax, eax                                ; 290F _ 85. C0
        js      ?_125                                   ; 2911 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2917 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 291A _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 291D _ 8B. 45, F4
        add     edx, eax                                ; 2920 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2922 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2925 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2928 _ 8B. 45, F0
        add     eax, ecx                                ; 292B _ 01. C8
        sub     esp, 8                                  ; 292D _ 83. EC, 08
        push    0                                       ; 2930 _ 6A, 00
        push    edx                                     ; 2932 _ 52
        push    eax                                     ; 2933 _ 50
        push    dword [ebp-0CH]                         ; 2934 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2937 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 293A _ FF. 75, 08
        call    sheet_refreshmap                        ; 293D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2942 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2945 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2948 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 294B _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 294E _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2951 _ 8B. 55, 14
        add     ecx, edx                                ; 2954 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2956 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2959 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 295C _ 8B. 55, 10
        add     edx, ebx                                ; 295F _ 01. DA
        sub     esp, 8                                  ; 2961 _ 83. EC, 08
        push    eax                                     ; 2964 _ 50
        push    ecx                                     ; 2965 _ 51
        push    edx                                     ; 2966 _ 52
        push    dword [ebp+14H]                         ; 2967 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 296A _ FF. 75, 10
        push    dword [ebp+8H]                          ; 296D _ FF. 75, 08
        call    sheet_refreshmap                        ; 2970 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2975 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2978 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 297B _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 297E _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2981 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2984 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2987 _ 8B. 45, F4
        add     edx, eax                                ; 298A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 298C _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 298F _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2992 _ 8B. 45, F0
        add     eax, ebx                                ; 2995 _ 01. D8
        sub     esp, 4                                  ; 2997 _ 83. EC, 04
        push    ecx                                     ; 299A _ 51
        push    0                                       ; 299B _ 6A, 00
        push    edx                                     ; 299D _ 52
        push    eax                                     ; 299E _ 50
        push    dword [ebp-0CH]                         ; 299F _ FF. 75, F4
        push    dword [ebp-10H]                         ; 29A2 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 29A5 _ FF. 75, 08
        call    sheet_refresh_new                       ; 29A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29AD _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 29B0 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 29B3 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 29B6 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 29B9 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 29BC _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 29BF _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 29C2 _ 8B. 4D, 14
        add     ebx, ecx                                ; 29C5 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 29C7 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 29CA _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 29CD _ 8B. 4D, 10
        add     ecx, esi                                ; 29D0 _ 01. F1
        sub     esp, 4                                  ; 29D2 _ 83. EC, 04
        push    edx                                     ; 29D5 _ 52
        push    eax                                     ; 29D6 _ 50
        push    ebx                                     ; 29D7 _ 53
        push    ecx                                     ; 29D8 _ 51
        push    dword [ebp+14H]                         ; 29D9 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 29DC _ FF. 75, 10
        push    dword [ebp+8H]                          ; 29DF _ FF. 75, 08
        call    sheet_refresh_new                       ; 29E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29E7 _ 83. C4, 20
?_125:  nop                                             ; 29EA _ 90
        lea     esp, [ebp-8H]                           ; 29EB _ 8D. 65, F8
        pop     ebx                                     ; 29EE _ 5B
        pop     esi                                     ; 29EF _ 5E
        pop     ebp                                     ; 29F0 _ 5D
        ret                                             ; 29F1 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 29F2 _ 55
        mov     ebp, esp                                ; 29F3 _ 89. E5
        sub     esp, 48                                 ; 29F5 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 29F8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29FB _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 29FD _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2A00 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2A03 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2A06 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2A09 _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 2A0D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2A0F _ C7. 45, 0C, 00000000
?_126:  cmp     dword [ebp+10H], 8                      ; 2A16 _ 83. 7D, 10, 08
        jg      ?_127                                   ; 2A1A _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2A1C _ C7. 45, 10, 00000000
?_127:  mov     eax, dword [ebp+8H]                     ; 2A23 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A26 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2A29 _ 39. 45, 14
        jle     ?_128                                   ; 2A2C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A2E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A31 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2A34 _ 89. 45, 14
?_128:  mov     eax, dword [ebp+8H]                     ; 2A37 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A3A _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2A3D _ 39. 45, 18
        jle     ?_129                                   ; 2A40 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A42 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A45 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2A48 _ 89. 45, 18
?_129:  mov     eax, dword [ebp+1CH]                    ; 2A4B _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2A4E _ 89. 45, DC
        jmp     ?_136                                   ; 2A51 _ E9, 00000118

?_130:  mov     eax, dword [ebp+8H]                     ; 2A56 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2A59 _ 8B. 55, DC
        add     edx, 4                                  ; 2A5C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A5F _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2A63 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2A66 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2A69 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2A6B _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2A6E _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2A71 _ 8B. 55, 08
        add     edx, 1044                               ; 2A74 _ 81. C2, 00000414
        sub     eax, edx                                ; 2A7A _ 29. D0
        sar     eax, 5                                  ; 2A7C _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2A7F _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2A82 _ C7. 45, E0, 00000000
        jmp     ?_135                                   ; 2A89 _ E9, 000000CD

?_131:  mov     eax, dword [ebp-10H]                    ; 2A8E _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2A91 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2A94 _ 8B. 45, E0
        add     eax, edx                                ; 2A97 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2A99 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2A9C _ C7. 45, E4, 00000000
        jmp     ?_134                                   ; 2AA3 _ E9, 000000A0

?_132:  mov     eax, dword [ebp-10H]                    ; 2AA8 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2AAB _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2AAE _ 8B. 45, E4
        add     eax, edx                                ; 2AB1 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2AB3 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2AB6 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2AB9 _ 3B. 45, FC
        jg      ?_133                                   ; 2ABC _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2AC2 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2AC5 _ 3B. 45, 14
        jge     ?_133                                   ; 2AC8 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2ACA _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2ACD _ 3B. 45, F8
        jg      ?_133                                   ; 2AD0 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2AD2 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2AD5 _ 3B. 45, 18
        jge     ?_133                                   ; 2AD8 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2ADA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2ADD _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2AE0 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2AE4 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2AE6 _ 8B. 45, E4
        add     eax, edx                                ; 2AE9 _ 01. D0
        mov     edx, eax                                ; 2AEB _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2AED _ 8B. 45, F4
        add     eax, edx                                ; 2AF0 _ 01. D0
        movzx   eax, byte [eax]                         ; 2AF2 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2AF5 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2AF8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AFB _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2AFE _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B02 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B04 _ 8B. 45, FC
        add     eax, edx                                ; 2B07 _ 01. D0
        mov     edx, eax                                ; 2B09 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2B0B _ 8B. 45, EC
        add     eax, edx                                ; 2B0E _ 01. D0
        movzx   eax, byte [eax]                         ; 2B10 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2B13 _ 38. 45, DA
        jnz     ?_133                                   ; 2B16 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2B18 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2B1C _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2B1F _ 8B. 40, 14
        cmp     edx, eax                                ; 2B22 _ 39. C2
        jz      ?_133                                   ; 2B24 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2B26 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B29 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2B2C _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B30 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B32 _ 8B. 45, FC
        add     eax, edx                                ; 2B35 _ 01. D0
        mov     edx, eax                                ; 2B37 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2B39 _ 8B. 45, E8
        add     edx, eax                                ; 2B3C _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2B3E _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2B42 _ 88. 02
?_133:  add     dword [ebp-1CH], 1                      ; 2B44 _ 83. 45, E4, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 2B48 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B4B _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2B4E _ 39. 45, E4
        jl      ?_132                                   ; 2B51 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2B57 _ 83. 45, E0, 01
?_135:  mov     eax, dword [ebp-10H]                    ; 2B5B _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2B5E _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2B61 _ 39. 45, E0
        jl      ?_131                                   ; 2B64 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2B6A _ 83. 45, DC, 01
?_136:  mov     eax, dword [ebp-24H]                    ; 2B6E _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2B71 _ 3B. 45, 20
        jle     ?_130                                   ; 2B74 _ 0F 8E, FFFFFEDC
        nop                                             ; 2B7A _ 90
        leave                                           ; 2B7B _ C9
        ret                                             ; 2B7C _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2B7D _ 55
        mov     ebp, esp                                ; 2B7E _ 89. E5
        sub     esp, 64                                 ; 2B80 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B83 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B86 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2B89 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2B8C _ 83. 7D, 0C, 00
        jns     ?_137                                   ; 2B90 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2B92 _ C7. 45, 0C, 00000000
?_137:  mov     eax, dword [ebp+8H]                     ; 2B99 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B9C _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2B9F _ 39. 45, 0C
        jle     ?_138                                   ; 2BA2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BA4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BA7 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2BAA _ 89. 45, 0C
?_138:  cmp     dword [ebp+10H], 0                      ; 2BAD _ 83. 7D, 10, 00
        jns     ?_139                                   ; 2BB1 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2BB3 _ C7. 45, 10, 00000000
?_139:  mov     eax, dword [ebp+8H]                     ; 2BBA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BBD _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2BC0 _ 39. 45, 10
        jle     ?_140                                   ; 2BC3 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BC5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BC8 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2BCB _ 89. 45, 10
?_140:  mov     eax, dword [ebp+1CH]                    ; 2BCE _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2BD1 _ 89. 45, E0
        jmp     ?_151                                   ; 2BD4 _ E9, 00000140

?_141:  mov     eax, dword [ebp+8H]                     ; 2BD9 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2BDC _ 8B. 55, E0
        add     edx, 4                                  ; 2BDF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BE2 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2BE6 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2BE9 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2BEC _ 8B. 55, 08
        add     edx, 1044                               ; 2BEF _ 81. C2, 00000414
        sub     eax, edx                                ; 2BF5 _ 29. D0
        sar     eax, 5                                  ; 2BF7 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2BFA _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2BFD _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2C00 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2C02 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2C05 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2C08 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2C0B _ 8B. 55, 0C
        sub     edx, eax                                ; 2C0E _ 29. C2
        mov     eax, edx                                ; 2C10 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2C12 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2C15 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2C18 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2C1B _ 8B. 55, 10
        sub     edx, eax                                ; 2C1E _ 29. C2
        mov     eax, edx                                ; 2C20 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2C22 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2C25 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2C28 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2C2B _ 8B. 55, 14
        sub     edx, eax                                ; 2C2E _ 29. C2
        mov     eax, edx                                ; 2C30 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2C32 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2C35 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2C38 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2C3B _ 8B. 55, 18
        sub     edx, eax                                ; 2C3E _ 29. C2
        mov     eax, edx                                ; 2C40 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2C42 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2C45 _ 83. 7D, D0, 00
        jns     ?_142                                   ; 2C49 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2C4B _ C7. 45, D0, 00000000
?_142:  cmp     dword [ebp-2CH], 0                      ; 2C52 _ 83. 7D, D4, 00
        jns     ?_143                                   ; 2C56 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2C58 _ C7. 45, D4, 00000000
?_143:  mov     eax, dword [ebp-10H]                    ; 2C5F _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C62 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2C65 _ 39. 45, D8
        jle     ?_144                                   ; 2C68 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2C6A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C6D _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2C70 _ 89. 45, D8
?_144:  mov     eax, dword [ebp-10H]                    ; 2C73 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2C76 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2C79 _ 39. 45, DC
        jle     ?_145                                   ; 2C7C _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2C7E _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2C81 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2C84 _ 89. 45, DC
?_145:  mov     eax, dword [ebp-2CH]                    ; 2C87 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2C8A _ 89. 45, E4
        jmp     ?_150                                   ; 2C8D _ EB, 7A

?_146:  mov     eax, dword [ebp-10H]                    ; 2C8F _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2C92 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2C95 _ 8B. 45, E4
        add     eax, edx                                ; 2C98 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2C9A _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2C9D _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2CA0 _ 89. 45, E8
        jmp     ?_149                                   ; 2CA3 _ EB, 58

?_147:  mov     eax, dword [ebp-10H]                    ; 2CA5 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2CA8 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2CAB _ 8B. 45, E8
        add     eax, edx                                ; 2CAE _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2CB0 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2CB3 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2CB6 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2CB9 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2CBD _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2CBF _ 8B. 45, E8
        add     eax, edx                                ; 2CC2 _ 01. D0
        mov     edx, eax                                ; 2CC4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2CC6 _ 8B. 45, F4
        add     eax, edx                                ; 2CC9 _ 01. D0
        movzx   eax, byte [eax]                         ; 2CCB _ 0F B6. 00
        movzx   edx, al                                 ; 2CCE _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2CD1 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2CD4 _ 8B. 40, 14
        cmp     edx, eax                                ; 2CD7 _ 39. C2
        jz      ?_148                                   ; 2CD9 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2CDB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2CDE _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2CE1 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2CE5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2CE7 _ 8B. 45, FC
        add     eax, edx                                ; 2CEA _ 01. D0
        mov     edx, eax                                ; 2CEC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2CEE _ 8B. 45, EC
        add     edx, eax                                ; 2CF1 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2CF3 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2CF7 _ 88. 02
?_148:  add     dword [ebp-18H], 1                      ; 2CF9 _ 83. 45, E8, 01
?_149:  mov     eax, dword [ebp-18H]                    ; 2CFD _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2D00 _ 3B. 45, D8
        jl      ?_147                                   ; 2D03 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2D05 _ 83. 45, E4, 01
?_150:  mov     eax, dword [ebp-1CH]                    ; 2D09 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2D0C _ 3B. 45, DC
        jl      ?_146                                   ; 2D0F _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2D15 _ 83. 45, E0, 01
?_151:  mov     eax, dword [ebp+8H]                     ; 2D19 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D1C _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2D1F _ 39. 45, E0
        jle     ?_141                                   ; 2D22 _ 0F 8E, FFFFFEB1
        nop                                             ; 2D28 _ 90
        leave                                           ; 2D29 _ C9
        ret                                             ; 2D2A _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2D2B _ 55
        mov     ebp, esp                                ; 2D2C _ 89. E5
        sub     esp, 24                                 ; 2D2E _ 83. EC, 18
        sub     esp, 8                                  ; 2D31 _ 83. EC, 08
        push    52                                      ; 2D34 _ 6A, 34
        push    67                                      ; 2D36 _ 6A, 43
        call    io_out8                                 ; 2D38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D3D _ 83. C4, 10
        sub     esp, 8                                  ; 2D40 _ 83. EC, 08
        push    156                                     ; 2D43 _ 68, 0000009C
        push    64                                      ; 2D48 _ 6A, 40
        call    io_out8                                 ; 2D4A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D4F _ 83. C4, 10
        sub     esp, 8                                  ; 2D52 _ 83. EC, 08
        push    46                                      ; 2D55 _ 6A, 2E
        push    64                                      ; 2D57 _ 6A, 40
        call    io_out8                                 ; 2D59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D5E _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2D61 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2D6B _ C7. 45, F4, 00000000
        jmp     ?_153                                   ; 2D72 _ EB, 26

?_152:  mov     eax, dword [ebp-0CH]                    ; 2D74 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D77 _ C1. E0, 04
        add     eax, ?_214                              ; 2D7A _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 2D7F _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2D85 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D88 _ C1. E0, 04
        add     eax, ?_215                              ; 2D8B _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 2D90 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2D96 _ 83. 45, F4, 01
?_153:  cmp     dword [ebp-0CH], 499                    ; 2D9A _ 81. 7D, F4, 000001F3
        jle     ?_152                                   ; 2DA1 _ 7E, D1
        nop                                             ; 2DA3 _ 90
        leave                                           ; 2DA4 _ C9
        ret                                             ; 2DA5 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2DA6 _ 55
        mov     ebp, esp                                ; 2DA7 _ 89. E5
        sub     esp, 16                                 ; 2DA9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2DAC _ C7. 45, FC, 00000000
        jmp     ?_156                                   ; 2DB3 _ EB, 36

?_154:  mov     eax, dword [ebp-4H]                     ; 2DB5 _ 8B. 45, FC
        shl     eax, 4                                  ; 2DB8 _ C1. E0, 04
        add     eax, ?_214                              ; 2DBB _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 2DC0 _ 8B. 00
        test    eax, eax                                ; 2DC2 _ 85. C0
        jnz     ?_155                                   ; 2DC4 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2DC6 _ 8B. 45, FC
        shl     eax, 4                                  ; 2DC9 _ C1. E0, 04
        add     eax, ?_214                              ; 2DCC _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2DD1 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2DD7 _ 8B. 45, FC
        shl     eax, 4                                  ; 2DDA _ C1. E0, 04
        add     eax, timerctl                           ; 2DDD _ 05, 00000280(d)
        add     eax, 4                                  ; 2DE2 _ 83. C0, 04
        jmp     ?_157                                   ; 2DE5 _ EB, 12

?_155:  add     dword [ebp-4H], 1                       ; 2DE7 _ 83. 45, FC, 01
?_156:  cmp     dword [ebp-4H], 499                     ; 2DEB _ 81. 7D, FC, 000001F3
        jle     ?_154                                   ; 2DF2 _ 7E, C1
        mov     eax, 0                                  ; 2DF4 _ B8, 00000000
?_157:  leave                                           ; 2DF9 _ C9
        ret                                             ; 2DFA _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2DFB _ 55
        mov     ebp, esp                                ; 2DFC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2DFE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2E01 _ C7. 40, 04, 00000000
        nop                                             ; 2E08 _ 90
        pop     ebp                                     ; 2E09 _ 5D
        ret                                             ; 2E0A _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2E0B _ 55
        mov     ebp, esp                                ; 2E0C _ 89. E5
        sub     esp, 4                                  ; 2E0E _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2E11 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2E14 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E17 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E1A _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2E1D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2E20 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2E23 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2E27 _ 88. 50, 0C
        nop                                             ; 2E2A _ 90
        leave                                           ; 2E2B _ C9
        ret                                             ; 2E2C _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2E2D _ 55
        mov     ebp, esp                                ; 2E2E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E30 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E33 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2E36 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E38 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2E3B _ C7. 40, 04, 00000002
        nop                                             ; 2E42 _ 90
        pop     ebp                                     ; 2E43 _ 5D
        ret                                             ; 2E44 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 2E45 _ 55
        mov     ebp, esp                                ; 2E46 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E48 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E4B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2E4E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E50 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2E53 _ C7. 40, 04, 00000002
        nop                                             ; 2E5A _ 90
        pop     ebp                                     ; 2E5B _ 5D
        ret                                             ; 2E5C _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2E5D _ 55
        mov     ebp, esp                                ; 2E5E _ 89. E5
        mov     eax, timerctl                           ; 2E60 _ B8, 00000280(d)
        pop     ebp                                     ; 2E65 _ 5D
        ret                                             ; 2E66 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2E67 _ 55
        mov     ebp, esp                                ; 2E68 _ 89. E5
        push    ebx                                     ; 2E6A _ 53
        sub     esp, 20                                 ; 2E6B _ 83. EC, 14
        sub     esp, 8                                  ; 2E6E _ 83. EC, 08
        push    32                                      ; 2E71 _ 6A, 20
        push    32                                      ; 2E73 _ 6A, 20
        call    io_out8                                 ; 2E75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2E7A _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2E7D _ A1, 00000280(d)
        add     eax, 1                                  ; 2E82 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2E85 _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 2E8A _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 2E91 _ C7. 45, F4, 00000000
        jmp     ?_161                                   ; 2E98 _ E9, 000000AD

?_158:  mov     eax, dword [ebp-0CH]                    ; 2E9D _ 8B. 45, F4
        shl     eax, 4                                  ; 2EA0 _ C1. E0, 04
        add     eax, ?_214                              ; 2EA3 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 2EA8 _ 8B. 00
        cmp     eax, 2                                  ; 2EAA _ 83. F8, 02
        jne     ?_159                                   ; 2EAD _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 2EB3 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EB6 _ C1. E0, 04
        add     eax, ?_213                              ; 2EB9 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 2EBE _ 8B. 00
        lea     edx, [eax-1H]                           ; 2EC0 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2EC3 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EC6 _ C1. E0, 04
        add     eax, ?_213                              ; 2EC9 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 2ECE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2ED0 _ 8B. 45, F4
        shl     eax, 4                                  ; 2ED3 _ C1. E0, 04
        add     eax, ?_213                              ; 2ED6 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 2EDB _ 8B. 00
        test    eax, eax                                ; 2EDD _ 85. C0
        jnz     ?_159                                   ; 2EDF _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 2EE1 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EE4 _ C1. E0, 04
        add     eax, ?_214                              ; 2EE7 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2EEC _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2EF2 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EF5 _ C1. E0, 04
        add     eax, ?_216                              ; 2EF8 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 2EFD _ 0F B6. 00
        movzx   edx, al                                 ; 2F00 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2F03 _ 8B. 45, F4
        shl     eax, 4                                  ; 2F06 _ C1. E0, 04
        add     eax, ?_215                              ; 2F09 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 2F0E _ 8B. 00
        sub     esp, 8                                  ; 2F10 _ 83. EC, 08
        push    edx                                     ; 2F13 _ 52
        push    eax                                     ; 2F14 _ 50
        call    fifo8_put                               ; 2F15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F1A _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2F1D _ 8B. 45, F4
        shl     eax, 4                                  ; 2F20 _ C1. E0, 04
        add     eax, timerctl                           ; 2F23 _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 2F28 _ 8D. 58, 04
        call    getTaskTimer                            ; 2F2B _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 2F30 _ 39. C3
        jnz     ?_159                                   ; 2F32 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 2F34 _ C7. 45, F0, 00000001
?_159:  cmp     dword [ebp-10H], 1                      ; 2F3B _ 83. 7D, F0, 01
        jnz     ?_160                                   ; 2F3F _ 75, 05
        call    task_switch                             ; 2F41 _ E8, FFFFFFFC(rel)
?_160:  add     dword [ebp-0CH], 1                      ; 2F46 _ 83. 45, F4, 01
?_161:  cmp     dword [ebp-0CH], 499                    ; 2F4A _ 81. 7D, F4, 000001F3
        jle     ?_158                                   ; 2F51 _ 0F 8E, FFFFFF46
        nop                                             ; 2F57 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2F58 _ 8B. 5D, FC
        leave                                           ; 2F5B _ C9
        ret                                             ; 2F5C _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2F5D _ 55
        mov     ebp, esp                                ; 2F5E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F60 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F63 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2F66 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2F69 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F6C _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2F6F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F71 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F74 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2F77 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2F7A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2F7D _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2F84 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2F87 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2F8E _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2F91 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2F98 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2F9B _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 2F9E _ 89. 50, 18
        nop                                             ; 2FA1 _ 90
        pop     ebp                                     ; 2FA2 _ 5D
        ret                                             ; 2FA3 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2FA4 _ 55
        mov     ebp, esp                                ; 2FA5 _ 89. E5
        sub     esp, 24                                 ; 2FA7 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2FAA _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 2FAD _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 2FB0 _ 83. 7D, 08, 00
        jnz     ?_162                                   ; 2FB4 _ 75, 0A
        mov     eax, 4294967295                         ; 2FB6 _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2FBB _ E9, 0000009C

?_162:  mov     eax, dword [ebp+8H]                     ; 2FC0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2FC3 _ 8B. 40, 10
        test    eax, eax                                ; 2FC6 _ 85. C0
        jnz     ?_163                                   ; 2FC8 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2FCA _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2FCD _ 8B. 40, 14
        or      eax, 01H                                ; 2FD0 _ 83. C8, 01
        mov     edx, eax                                ; 2FD3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FD5 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2FD8 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2FDB _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2FE0 _ EB, 7A

?_163:  mov     eax, dword [ebp+8H]                     ; 2FE2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2FE5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2FE7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FEA _ 8B. 40, 08
        add     edx, eax                                ; 2FED _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 2FEF _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 2FF3 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2FF5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FF8 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2FFB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FFE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3001 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3004 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3007 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 300A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 300D _ 8B. 40, 0C
        cmp     edx, eax                                ; 3010 _ 39. C2
        jl      ?_164                                   ; 3012 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3014 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3017 _ C7. 40, 08, 00000000
?_164:  mov     eax, dword [ebp+8H]                     ; 301E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3021 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3024 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3027 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 302A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 302D _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3030 _ 8B. 40, 18
        test    eax, eax                                ; 3033 _ 85. C0
        jz      ?_165                                   ; 3035 _ 74, 20
        mov     eax, dword [ebp+8H]                     ; 3037 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 303A _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 303D _ 8B. 40, 04
        cmp     eax, 2                                  ; 3040 _ 83. F8, 02
        jz      ?_165                                   ; 3043 _ 74, 12
        mov     eax, dword [ebp+8H]                     ; 3045 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3048 _ 8B. 40, 18
        sub     esp, 12                                 ; 304B _ 83. EC, 0C
        push    eax                                     ; 304E _ 50
        call    task_run                                ; 304F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3054 _ 83. C4, 10
?_165:  mov     eax, 1                                  ; 3057 _ B8, 00000001
?_166:  leave                                           ; 305C _ C9
        ret                                             ; 305D _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 305E _ 55
        mov     ebp, esp                                ; 305F _ 89. E5
        sub     esp, 16                                 ; 3061 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3064 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3067 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 306A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 306D _ 8B. 40, 0C
        cmp     edx, eax                                ; 3070 _ 39. C2
        jnz     ?_167                                   ; 3072 _ 75, 07
        mov     eax, 4294967295                         ; 3074 _ B8, FFFFFFFF
        jmp     ?_169                                   ; 3079 _ EB, 51

?_167:  mov     eax, dword [ebp+8H]                     ; 307B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 307E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3080 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3083 _ 8B. 40, 04
        add     eax, edx                                ; 3086 _ 01. D0
        movzx   eax, byte [eax]                         ; 3088 _ 0F B6. 00
        movzx   eax, al                                 ; 308B _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 308E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3091 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3094 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3097 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 309A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 309D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30A0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30A3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30A6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30A9 _ 8B. 40, 0C
        cmp     edx, eax                                ; 30AC _ 39. C2
        jl      ?_168                                   ; 30AE _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 30B0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30B3 _ C7. 40, 04, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 30BA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30BD _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 30C0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30C3 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 30C6 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 30C9 _ 8B. 45, FC
?_169:  leave                                           ; 30CC _ C9
        ret                                             ; 30CD _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 30CE _ 55
        mov     ebp, esp                                ; 30CF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30D1 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 30D4 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 30D7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30DA _ 8B. 40, 10
        sub     edx, eax                                ; 30DD _ 29. C2
        mov     eax, edx                                ; 30DF _ 89. D0
        pop     ebp                                     ; 30E1 _ 5D
        ret                                             ; 30E2 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 30E3 _ 55
        mov     ebp, esp                                ; 30E4 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 30E6 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_170                                   ; 30ED _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 30EF _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 30F6 _ 8B. 45, 0C
        shr     eax, 12                                 ; 30F9 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 30FC _ 89. 45, 0C
?_170:  mov     eax, dword [ebp+0CH]                    ; 30FF _ 8B. 45, 0C
        mov     edx, eax                                ; 3102 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3104 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3107 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 310A _ 8B. 45, 10
        mov     edx, eax                                ; 310D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 310F _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3112 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3116 _ 8B. 45, 10
        sar     eax, 16                                 ; 3119 _ C1. F8, 10
        mov     edx, eax                                ; 311C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 311E _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3121 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3124 _ 8B. 45, 14
        mov     edx, eax                                ; 3127 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3129 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 312C _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 312F _ 8B. 45, 0C
        shr     eax, 16                                 ; 3132 _ C1. E8, 10
        and     eax, 0FH                                ; 3135 _ 83. E0, 0F
        mov     edx, eax                                ; 3138 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 313A _ 8B. 45, 14
        sar     eax, 8                                  ; 313D _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3140 _ 83. E0, F0
        or      eax, edx                                ; 3143 _ 09. D0
        mov     edx, eax                                ; 3145 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3147 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 314A _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 314D _ 8B. 45, 10
        shr     eax, 24                                 ; 3150 _ C1. E8, 18
        mov     edx, eax                                ; 3153 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3155 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3158 _ 88. 50, 07
        nop                                             ; 315B _ 90
        pop     ebp                                     ; 315C _ 5D
        ret                                             ; 315D _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 315E _ 55
        mov     ebp, esp                                ; 315F _ 89. E5
        mov     eax, dword [task_timer]                 ; 3161 _ A1, 000021C4(d)
        pop     ebp                                     ; 3166 _ 5D
        ret                                             ; 3167 _ C3
; getTaskTimer End of function

task_init:; Function begin
        push    ebp                                     ; 3168 _ 55
        mov     ebp, esp                                ; 3169 _ 89. E5
        sub     esp, 24                                 ; 316B _ 83. EC, 18
        call    get_addr_gdt                            ; 316E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3173 _ 89. 45, F0
        sub     esp, 8                                  ; 3176 _ 83. EC, 08
        push    588                                     ; 3179 _ 68, 0000024C
        push    dword [ebp+8H]                          ; 317E _ FF. 75, 08
        call    memman_alloc_4K                         ; 3181 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3186 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3189 _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 318E _ C7. 45, EC, 00000000
        jmp     ?_172                                   ; 3195 _ EB, 73

?_171:  mov     edx, dword [taskctl]                    ; 3197 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 319D _ 8B. 45, EC
        imul    eax, eax, 112                           ; 31A0 _ 6B. C0, 70
        add     eax, edx                                ; 31A3 _ 01. D0
        add     eax, 32                                 ; 31A5 _ 83. C0, 20
        mov     dword [eax], 0                          ; 31A8 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 31AE _ 8B. 45, EC
        add     eax, 7                                  ; 31B1 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 31B4 _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 31BA _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 31C1 _ 8B. 45, EC
        imul    eax, eax, 112                           ; 31C4 _ 6B. C0, 70
        add     eax, ecx                                ; 31C7 _ 01. C8
        add     eax, 28                                 ; 31C9 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 31CC _ 89. 10
        mov     eax, dword [taskctl]                    ; 31CE _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 31D3 _ 8B. 55, EC
        imul    edx, edx, 112                           ; 31D6 _ 6B. D2, 70
        add     edx, 16                                 ; 31D9 _ 83. C2, 10
        add     eax, edx                                ; 31DC _ 01. D0
        add     eax, 20                                 ; 31DE _ 83. C0, 14
        mov     ecx, eax                                ; 31E1 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 31E3 _ 8B. 45, EC
        add     eax, 7                                  ; 31E6 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 31E9 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 31F0 _ 8B. 45, F0
        add     eax, edx                                ; 31F3 _ 01. D0
        push    137                                     ; 31F5 _ 68, 00000089
        push    ecx                                     ; 31FA _ 51
        push    103                                     ; 31FB _ 6A, 67
        push    eax                                     ; 31FD _ 50
        call    set_segmdesc                            ; 31FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3203 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3206 _ 83. 45, EC, 01
?_172:  cmp     dword [ebp-14H], 4                      ; 320A _ 83. 7D, EC, 04
        jle     ?_171                                   ; 320E _ 7E, 87
        call    task_alloc                              ; 3210 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3215 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3218 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 321B _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 3222 _ A1, 000021C8(d)
        mov     dword [eax], 1                          ; 3227 _ C7. 00, 00000001
        mov     eax, dword [taskctl]                    ; 322D _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3232 _ C7. 40, 04, 00000000
        mov     eax, dword [taskctl]                    ; 3239 _ A1, 000021C8(d)
        mov     edx, dword [ebp-0CH]                    ; 323E _ 8B. 55, F4
        mov     dword [eax+8H], edx                     ; 3241 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3244 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3247 _ 8B. 00
        sub     esp, 12                                 ; 3249 _ 83. EC, 0C
        push    eax                                     ; 324C _ 50
        call    load_tr                                 ; 324D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3252 _ 83. C4, 10
        call    timer_alloc                             ; 3255 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 325A _ A3, 000021C4(d)
        mov     eax, dword [task_timer]                 ; 325F _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3264 _ 83. EC, 08
        push    100                                     ; 3267 _ 6A, 64
        push    eax                                     ; 3269 _ 50
        call    timer_setTime                           ; 326A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 326F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3272 _ 8B. 45, F4
        leave                                           ; 3275 _ C9
        ret                                             ; 3276 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3277 _ 55
        mov     ebp, esp                                ; 3278 _ 89. E5
        sub     esp, 16                                 ; 327A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 327D _ C7. 45, F8, 00000000
        jmp     ?_175                                   ; 3284 _ E9, 000000E1

?_173:  mov     edx, dword [taskctl]                    ; 3289 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 328F _ 8B. 45, F8
        imul    eax, eax, 112                           ; 3292 _ 6B. C0, 70
        add     eax, edx                                ; 3295 _ 01. D0
        add     eax, 32                                 ; 3297 _ 83. C0, 20
        mov     eax, dword [eax]                        ; 329A _ 8B. 00
        test    eax, eax                                ; 329C _ 85. C0
        jne     ?_174                                   ; 329E _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 32A4 _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 32A9 _ 8B. 55, F8
        imul    edx, edx, 112                           ; 32AC _ 6B. D2, 70
        add     edx, 16                                 ; 32AF _ 83. C2, 10
        add     eax, edx                                ; 32B2 _ 01. D0
        add     eax, 12                                 ; 32B4 _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 32B7 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 32BA _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 32BD _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 32C4 _ 8B. 45, FC
        mov     dword [eax+2CH], 514                    ; 32C7 _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-4H]                     ; 32CE _ 8B. 45, FC
        mov     dword [eax+30H], 0                      ; 32D1 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-4H]                     ; 32D8 _ 8B. 45, FC
        mov     dword [eax+34H], 0                      ; 32DB _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-4H]                     ; 32E2 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 32E5 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 32EC _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 32EF _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 32F6 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 32F9 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-8H]                     ; 3300 _ 8B. 45, F8
        add     eax, 1                                  ; 3303 _ 83. C0, 01
        shl     eax, 9                                  ; 3306 _ C1. E0, 09
        mov     edx, eax                                ; 3309 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 330B _ 8B. 45, FC
        mov     dword [eax+40H], edx                    ; 330E _ 89. 50, 40
        mov     eax, dword [ebp-4H]                     ; 3311 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3314 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 331B _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 331E _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3325 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3328 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 332F _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3332 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3339 _ 8B. 45, FC
        mov     dword [eax+60H], 0                      ; 333C _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-4H]                     ; 3343 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 3346 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 334D _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3350 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3357 _ 8B. 45, FC
        mov     dword [eax+6CH], 1073741824             ; 335A _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-4H]                     ; 3361 _ 8B. 45, FC
        jmp     ?_176                                   ; 3364 _ EB, 13

?_174:  add     dword [ebp-8H], 1                       ; 3366 _ 83. 45, F8, 01
?_175:  cmp     dword [ebp-8H], 4                       ; 336A _ 83. 7D, F8, 04
        jle     ?_173                                   ; 336E _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3374 _ B8, 00000000
?_176:  leave                                           ; 3379 _ C9
        ret                                             ; 337A _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 337B _ 55
        mov     ebp, esp                                ; 337C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 337E _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3381 _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 3388 _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 338D _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx]                        ; 3393 _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 3395 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3398 _ 89. 4C 90, 08
        mov     eax, dword [taskctl]                    ; 339C _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 33A1 _ 8B. 10
        add     edx, 1                                  ; 33A3 _ 83. C2, 01
        mov     dword [eax], edx                        ; 33A6 _ 89. 10
        nop                                             ; 33A8 _ 90
        pop     ebp                                     ; 33A9 _ 5D
        ret                                             ; 33AA _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 33AB _ 55
        mov     ebp, esp                                ; 33AC _ 89. E5
        sub     esp, 8                                  ; 33AE _ 83. EC, 08
        mov     eax, dword [task_timer]                 ; 33B1 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 33B6 _ 83. EC, 08
        push    100                                     ; 33B9 _ 6A, 64
        push    eax                                     ; 33BB _ 50
        call    timer_setTime                           ; 33BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 33C1 _ 83. C4, 10
        mov     eax, dword [taskctl]                    ; 33C4 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 33C9 _ 8B. 00
        cmp     eax, 1                                  ; 33CB _ 83. F8, 01
        jle     ?_178                                   ; 33CE _ 7E, 50
        mov     eax, dword [taskctl]                    ; 33D0 _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 33D5 _ 8B. 50, 04
        add     edx, 1                                  ; 33D8 _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 33DB _ 89. 50, 04
        mov     eax, dword [taskctl]                    ; 33DE _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 33E3 _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 33E6 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 33EB _ 8B. 00
        cmp     edx, eax                                ; 33ED _ 39. C2
        jnz     ?_177                                   ; 33EF _ 75, 0C
        mov     eax, dword [taskctl]                    ; 33F1 _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 33F6 _ C7. 40, 04, 00000000
?_177:  mov     eax, dword [taskctl]                    ; 33FD _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 3402 _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx+4H]                     ; 3408 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 340B _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 340F _ 8B. 00
        sub     esp, 8                                  ; 3411 _ 83. EC, 08
        push    eax                                     ; 3414 _ 50
        push    0                                       ; 3415 _ 6A, 00
        call    farjmp                                  ; 3417 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 341C _ 83. C4, 10
        nop                                             ; 341F _ 90
?_178:  nop                                             ; 3420 _ 90
        leave                                           ; 3421 _ C9
        ret                                             ; 3422 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3423 _ 55
        mov     ebp, esp                                ; 3424 _ 89. E5
        sub     esp, 24                                 ; 3426 _ 83. EC, 18
        mov     byte [ebp-0DH], 0                       ; 3429 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 342D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3430 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3433 _ 83. F8, 02
        jnz     ?_179                                   ; 3436 _ 75, 1B
        mov     eax, dword [taskctl]                    ; 3438 _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 343D _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx+4H]                     ; 3443 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3446 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 344A _ 39. 45, 08
        jnz     ?_179                                   ; 344D _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 344F _ C6. 45, F3, 01
?_179:  mov     dword [ebp-0CH], 0                      ; 3453 _ C7. 45, F4, 00000000
        jmp     ?_181                                   ; 345A _ EB, 15

?_180:  mov     eax, dword [taskctl]                    ; 345C _ A1, 000021C8(d)
        mov     edx, dword [ebp-0CH]                    ; 3461 _ 8B. 55, F4
        mov     eax, dword [eax+edx*4+8H]               ; 3464 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3468 _ 39. 45, 08
        jz      ?_182                                   ; 346B _ 74, 12
        add     dword [ebp-0CH], 1                      ; 346D _ 83. 45, F4, 01
?_181:  mov     eax, dword [taskctl]                    ; 3471 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 3476 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 3478 _ 39. 45, F4
        jl      ?_180                                   ; 347B _ 7C, DF
        jmp     ?_183                                   ; 347D _ EB, 01

?_182:  nop                                             ; 347F _ 90
?_183:  mov     eax, dword [taskctl]                    ; 3480 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 3485 _ 8B. 10
        sub     edx, 1                                  ; 3487 _ 83. EA, 01
        mov     dword [eax], edx                        ; 348A _ 89. 10
        mov     eax, dword [taskctl]                    ; 348C _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 3491 _ 8B. 40, 04
        cmp     dword [ebp-0CH], eax                    ; 3494 _ 39. 45, F4
        jge     ?_185                                   ; 3497 _ 7D, 30
        mov     eax, dword [taskctl]                    ; 3499 _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 349E _ 8B. 50, 04
        sub     edx, 1                                  ; 34A1 _ 83. EA, 01
        mov     dword [eax+4H], edx                     ; 34A4 _ 89. 50, 04
        jmp     ?_185                                   ; 34A7 _ EB, 20

?_184:  mov     edx, dword [taskctl]                    ; 34A9 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-0CH]                    ; 34AF _ 8B. 45, F4
        lea     ecx, [eax+1H]                           ; 34B2 _ 8D. 48, 01
        mov     eax, dword [taskctl]                    ; 34B5 _ A1, 000021C8(d)
        mov     ecx, dword [edx+ecx*4+8H]               ; 34BA _ 8B. 4C 8A, 08
        mov     edx, dword [ebp-0CH]                    ; 34BE _ 8B. 55, F4
        mov     dword [eax+edx*4+8H], ecx               ; 34C1 _ 89. 4C 90, 08
        add     dword [ebp-0CH], 1                      ; 34C5 _ 83. 45, F4, 01
?_185:  mov     eax, dword [taskctl]                    ; 34C9 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 34CE _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 34D0 _ 39. 45, F4
        jl      ?_184                                   ; 34D3 _ 7C, D4
        mov     eax, dword [ebp+8H]                     ; 34D5 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 34D8 _ C7. 40, 04, 00000001
        cmp     byte [ebp-0DH], 0                       ; 34DF _ 80. 7D, F3, 00
        jz      ?_187                                   ; 34E3 _ 74, 41
        mov     eax, dword [taskctl]                    ; 34E5 _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 34EA _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 34ED _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 34F2 _ 8B. 00
        cmp     edx, eax                                ; 34F4 _ 39. C2
        jl      ?_186                                   ; 34F6 _ 7C, 0C
        mov     eax, dword [taskctl]                    ; 34F8 _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 34FD _ C7. 40, 04, 00000000
?_186:  mov     eax, dword [taskctl]                    ; 3504 _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 3509 _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx+4H]                     ; 350F _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3512 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3516 _ 8B. 00
        sub     esp, 8                                  ; 3518 _ 83. EC, 08
        push    eax                                     ; 351B _ 50
        push    0                                       ; 351C _ 6A, 00
        call    farjmp                                  ; 351E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3523 _ 83. C4, 10
?_187:  nop                                             ; 3526 _ 90
        leave                                           ; 3527 _ C9
        ret                                             ; 3528 _ C3
; task_sleep End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3529 _ 55
        mov     ebp, esp                                ; 352A _ 89. E5
        mov     eax, dword [taskctl]                    ; 352C _ A1, 000021C8(d)
        pop     ebp                                     ; 3531 _ 5D
        ret                                             ; 3532 _ C3
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

task_b.2244:                                            ; oword
        resd    1                                       ; 0238

?_209:  resd    1                                       ; 023C

?_210:  resd    2                                       ; 0240

cnt.2255: resd  1                                       ; 0248

line.2258:                                              ; dword
        resd    1                                       ; 024C

str.2400:                                               ; byte
        resb    1                                       ; 0250

?_211:  resb    9                                       ; 0251

?_212:  resb    2                                       ; 025A

line.2433:                                              ; dword
        resd    1                                       ; 025C

pos.2432: resd  8                                       ; 0260

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_213:                                                  ; byte
        resb    4                                       ; 0284

?_214:                                                  ; byte
        resb    4                                       ; 0288

?_215:                                                  ; byte
        resb    4                                       ; 028C

?_216:                                                  ; byte
        resb    7988                                    ; 0290

task_timer:                                             ; dword
        resd    1                                       ; 21C4

taskctl: resd   1                                       ; 21C8


