; Disassembly of file: ckernel.o
; Sun May 16 22:27:50 2021
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
        movzx   eax, word [?_221]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-60H], eax                    ; 0034 _ 89. 45, A0
        movzx   eax, word [?_222]                       ; 0037 _ 0F B7. 05, 00000006(d)
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
        push    ?_203                                   ; 02EE _ 68, 00000000(d)
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
        mov     dword [task_a.2270], eax                ; 0353 _ A3, 00000234(d)
        mov     eax, dword [task_a.2270]                ; 0358 _ A1, 00000234(d)
        mov     dword [?_223], eax                      ; 035D _ A3, 00000020(d)
        mov     edx, dword [task_b.2260]                ; 0362 _ 8B. 15, 00000238(d)
        mov     eax, dword [shtctl]                     ; 0368 _ A1, 00000224(d)
        sub     esp, 8                                  ; 036D _ 83. EC, 08
        push    2                                       ; 0370 _ 6A, 02
        push    30                                      ; 0372 _ 6A, 1E
        push    150                                     ; 0374 _ 68, 00000096
        push    50                                      ; 0379 _ 6A, 32
        push    150                                     ; 037B _ 68, 00000096
        push    ?_204                                   ; 0380 _ 68, 00000008(d)
        push    5                                       ; 0385 _ 6A, 05
        push    1                                       ; 0387 _ 6A, 01
        push    edx                                     ; 0389 _ 52
        push    eax                                     ; 038A _ 50
        call    messageBoxToTask                        ; 038B _ E8, FFFFFFFC(rel)
        add     esp, 48                                 ; 0390 _ 83. C4, 30
        mov     dword [ebp-30H], eax                    ; 0393 _ 89. 45, D0
        mov     edx, dword [?_225]                      ; 0396 _ 8B. 15, 0000023C(d)
        mov     eax, dword [shtctl]                     ; 039C _ A1, 00000224(d)
        sub     esp, 8                                  ; 03A1 _ 83. EC, 08
        push    2                                       ; 03A4 _ 6A, 02
        push    30                                      ; 03A6 _ 6A, 1E
        push    300                                     ; 03A8 _ 68, 0000012C
        push    50                                      ; 03AD _ 6A, 32
        push    150                                     ; 03AF _ 68, 00000096
        push    ?_205                                   ; 03B4 _ 68, 0000000E(d)
        push    5                                       ; 03B9 _ 6A, 05
        push    1                                       ; 03BB _ 6A, 01
        push    edx                                     ; 03BD _ 52
        push    eax                                     ; 03BE _ 50
        call    messageBoxToTask                        ; 03BF _ E8, FFFFFFFC(rel)
        add     esp, 48                                 ; 03C4 _ 83. C4, 30
        mov     dword [ebp-2CH], eax                    ; 03C7 _ 89. 45, D4
        mov     edx, dword [?_226]                      ; 03CA _ 8B. 15, 00000240(d)
        mov     eax, dword [shtctl]                     ; 03D0 _ A1, 00000224(d)
        sub     esp, 8                                  ; 03D5 _ 83. EC, 08
        push    1                                       ; 03D8 _ 6A, 01
        push    30                                      ; 03DA _ 6A, 1E
        push    450                                     ; 03DC _ 68, 000001C2
        push    50                                      ; 03E1 _ 6A, 32
        push    150                                     ; 03E3 _ 68, 00000096
        push    ?_206                                   ; 03E8 _ 68, 00000014(d)
        push    5                                       ; 03ED _ 6A, 05
        push    1                                       ; 03EF _ 6A, 01
        push    edx                                     ; 03F1 _ 52
        push    eax                                     ; 03F2 _ 50
        call    messageBoxToTask                        ; 03F3 _ E8, FFFFFFFC(rel)
        add     esp, 48                                 ; 03F8 _ 83. C4, 30
        mov     dword [ebp-28H], eax                    ; 03FB _ 89. 45, D8
        mov     byte [ebp-71H], 0                       ; 03FE _ C6. 45, 8F, 00
        mov     dword [ebp-70H], 7                      ; 0402 _ C7. 45, 90, 00000007
        mov     dword [ebp-6CH], 0                      ; 0409 _ C7. 45, 94, 00000000
        mov     edx, dword [sheet_win]                  ; 0410 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0416 _ A1, 00000224(d)
        sub     esp, 8                                  ; 041B _ 83. EC, 08
        push    ?_207                                   ; 041E _ 68, 0000001A(d)
        push    10                                      ; 0423 _ 6A, 0A
        push    63                                      ; 0425 _ 6A, 3F
        push    8                                       ; 0427 _ 6A, 08
        push    edx                                     ; 0429 _ 52
        push    eax                                     ; 042A _ 50
        call    showString                              ; 042B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0430 _ 83. C4, 20
        mov     dword [ebp-68H], 0                      ; 0433 _ C7. 45, 98, 00000000
?_001:  call    io_sti                                  ; 043A _ E8, FFFFFFFC(rel)
        call    io_cli                                  ; 043F _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0444 _ 83. EC, 0C
        push    keyInfo                                 ; 0447 _ 68, 00000008(d)
        call    fifo8_status                            ; 044C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0451 _ 83. C4, 10
        mov     ebx, eax                                ; 0454 _ 89. C3
        sub     esp, 12                                 ; 0456 _ 83. EC, 0C
        push    mouseInfo                               ; 0459 _ 68, 00000024(d)
        call    fifo8_status                            ; 045E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0463 _ 83. C4, 10
        add     ebx, eax                                ; 0466 _ 01. C3
        sub     esp, 12                                 ; 0468 _ 83. EC, 0C
        push    timerInfo                               ; 046B _ 68, 00000200(d)
        call    fifo8_status                            ; 0470 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0475 _ 83. C4, 10
        add     eax, ebx                                ; 0478 _ 01. D8
        test    eax, eax                                ; 047A _ 85. C0
        jnz     ?_002                                   ; 047C _ 75, 07
        call    io_sti                                  ; 047E _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0483 _ EB, B5

?_002:  sub     esp, 12                                 ; 0485 _ 83. EC, 0C
        push    keyInfo                                 ; 0488 _ 68, 00000008(d)
        call    fifo8_status                            ; 048D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0492 _ 83. C4, 10
        test    eax, eax                                ; 0495 _ 85. C0
        je      ?_008                                   ; 0497 _ 0F 84, 00000317
        call    io_sti                                  ; 049D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 04A2 _ 83. EC, 0C
        push    keyInfo                                 ; 04A5 _ 68, 00000008(d)
        call    fifo8_get                               ; 04AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04AF _ 83. C4, 10
        mov     byte [ebp-71H], al                      ; 04B2 _ 88. 45, 8F
        cmp     byte [ebp-71H], 28                      ; 04B5 _ 80. 7D, 8F, 1C
        jnz     ?_003                                   ; 04B9 _ 75, 59
        mov     ebx, dword [cnt.2271]                   ; 04BB _ 8B. 1D, 00000248(d)
        mov     eax, dword [sheet_back]                 ; 04C1 _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 04C6 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 04C8 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04CE _ A1, 00000224(d)
        sub     esp, 4                                  ; 04D3 _ 83. EC, 04
        push    7                                       ; 04D6 _ 6A, 07
        push    dword [ebp-60H]                         ; 04D8 _ FF. 75, A0
        push    ebx                                     ; 04DB _ 53
        push    ecx                                     ; 04DC _ 51
        push    dword [ebp-48H]                         ; 04DD _ FF. 75, B8
        push    edx                                     ; 04E0 _ 52
        push    eax                                     ; 04E1 _ 50
        call    showMemInfo                             ; 04E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04E7 _ 83. C4, 20
        mov     eax, dword [cnt.2271]                   ; 04EA _ A1, 00000248(d)
        add     eax, 1                                  ; 04EF _ 83. C0, 01
        mov     dword [cnt.2271], eax                   ; 04F2 _ A3, 00000248(d)
        mov     eax, dword [cnt.2271]                   ; 04F7 _ A1, 00000248(d)
        cmp     dword [ebp-44H], eax                    ; 04FC _ 39. 45, BC
        jg      ?_001                                   ; 04FF _ 0F 8F, FFFFFF35
        mov     dword [cnt.2271], 0                     ; 0505 _ C7. 05, 00000248(d), 00000000
        jmp     ?_001                                   ; 050F _ E9, FFFFFF26

?_003:  movzx   eax, byte [ebp-71H]                     ; 0514 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0518 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 051F _ 84. C0
        jz      ?_004                                   ; 0521 _ 74, 18
        cmp     byte [ebp-71H], 15                      ; 0523 _ 80. 7D, 8F, 0F
        jbe     ?_004                                   ; 0527 _ 76, 12
        cmp     byte [ebp-71H], 83                      ; 0529 _ 80. 7D, 8F, 53
        ja      ?_004                                   ; 052D _ 77, 0C
        mov     eax, dword [line.2274]                  ; 052F _ A1, 0000024C(d)
        cmp     eax, 142                                ; 0534 _ 3D, 0000008E
        jle     ?_005                                   ; 0539 _ 7E, 18
?_004:  cmp     byte [ebp-71H], 14                      ; 053B _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 053F _ 0F 85, FFFFFEF5
        mov     eax, dword [line.2274]                  ; 0545 _ A1, 0000024C(d)
        cmp     eax, 7                                  ; 054A _ 83. F8, 07
        jle     ?_001                                   ; 054D _ 0F 8E, FFFFFEE7
?_005:  movzx   eax, byte [ebp-71H]                     ; 0553 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0557 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 055E _ 84. C0
        je      ?_007                                   ; 0560 _ 0F 84, 00000128
        cmp     byte [ebp-71H], 15                      ; 0566 _ 80. 7D, 8F, 0F
        jbe     ?_007                                   ; 056A _ 0F 86, 0000011E
        cmp     byte [ebp-71H], 83                      ; 0570 _ 80. 7D, 8F, 53
        ja      ?_007                                   ; 0574 _ 0F 87, 00000114
        mov     eax, dword [line.2274]                  ; 057A _ A1, 0000024C(d)
        cmp     eax, 142                                ; 057F _ 3D, 0000008E
        jg      ?_007                                   ; 0584 _ 0F 8F, 00000104
        mov     eax, dword [pos.2275]                   ; 058A _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 058F _ 8D. 78, 28
        mov     eax, dword [line.2274]                  ; 0592 _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 0597 _ 8D. 70, 10
        mov     eax, dword [pos.2275]                   ; 059A _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 059F _ 8D. 58, 1A
        mov     eax, dword [line.2274]                  ; 05A2 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 05A7 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 05AA _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 05AF _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 05B2 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 05B7 _ 8B. 00
        sub     esp, 4                                  ; 05B9 _ 83. EC, 04
        push    edi                                     ; 05BC _ 57
        push    esi                                     ; 05BD _ 56
        push    ebx                                     ; 05BE _ 53
        push    ecx                                     ; 05BF _ 51
        push    7                                       ; 05C0 _ 6A, 07
        push    edx                                     ; 05C2 _ 52
        push    eax                                     ; 05C3 _ 50
        call    boxfill8                                ; 05C4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05C9 _ 83. C4, 20
        mov     eax, dword [pos.2275]                   ; 05CC _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 05D1 _ 8D. 78, 2A
        mov     eax, dword [line.2274]                  ; 05D4 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 05D9 _ 8D. 70, 12
        mov     eax, dword [pos.2275]                   ; 05DC _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05E1 _ 8D. 58, 1A
        mov     eax, dword [line.2274]                  ; 05E4 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 05E9 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 05EC _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 05F2 _ A1, 00000224(d)
        sub     esp, 8                                  ; 05F7 _ 83. EC, 08
        push    edi                                     ; 05FA _ 57
        push    esi                                     ; 05FB _ 56
        push    ebx                                     ; 05FC _ 53
        push    ecx                                     ; 05FD _ 51
        push    edx                                     ; 05FE _ 52
        push    eax                                     ; 05FF _ 50
        call    sheet_refresh                           ; 0600 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0605 _ 83. C4, 20
        movzx   eax, byte [ebp-71H]                     ; 0608 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 060C _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0613 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0616 _ C6. 45, E3, 00
        mov     eax, dword [pos.2275]                   ; 061A _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 061F _ 8D. 70, 1A
        mov     eax, dword [line.2274]                  ; 0622 _ A1, 0000024C(d)
        lea     ebx, [eax+0AH]                          ; 0627 _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 062A _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0630 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0635 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0638 _ 8D. 4D, E2
        push    ecx                                     ; 063B _ 51
        push    0                                       ; 063C _ 6A, 00
        push    esi                                     ; 063E _ 56
        push    ebx                                     ; 063F _ 53
        push    edx                                     ; 0640 _ 52
        push    eax                                     ; 0641 _ 50
        call    showString                              ; 0642 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0647 _ 83. C4, 20
        mov     eax, dword [line.2274]                  ; 064A _ A1, 0000024C(d)
        add     eax, 8                                  ; 064F _ 83. C0, 08
        mov     dword [line.2274], eax                  ; 0652 _ A3, 0000024C(d)
        mov     eax, dword [sheet_win]                  ; 0657 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 065C _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 065F _ 8D. 50, F0
        mov     eax, dword [line.2274]                  ; 0662 _ A1, 0000024C(d)
        cmp     edx, eax                                ; 0667 _ 39. C2
        jg      ?_006                                   ; 0669 _ 7F, 17
        mov     eax, dword [pos.2275]                   ; 066B _ A1, 00000074(d)
        add     eax, 16                                 ; 0670 _ 83. C0, 10
        mov     dword [pos.2275], eax                   ; 0673 _ A3, 00000074(d)
        mov     dword [line.2274], 0                    ; 0678 _ C7. 05, 0000024C(d), 00000000
?_006:  mov     dword [ebp-68H], 0                      ; 0682 _ C7. 45, 98, 00000000
        jmp     ?_014                                   ; 0689 _ E9, 0000030D

?_007:  cmp     byte [ebp-71H], 14                      ; 068E _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 0692 _ 0F 85, FFFFFDA2
        mov     eax, dword [line.2274]                  ; 0698 _ A1, 0000024C(d)
        cmp     eax, 7                                  ; 069D _ 83. F8, 07
        jle     ?_001                                   ; 06A0 _ 0F 8E, FFFFFD94
        mov     eax, dword [pos.2275]                   ; 06A6 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06AB _ 8D. 78, 28
        mov     eax, dword [line.2274]                  ; 06AE _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 06B3 _ 8D. 70, 12
        mov     eax, dword [pos.2275]                   ; 06B6 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06BB _ 8D. 58, 1A
        mov     eax, dword [line.2274]                  ; 06BE _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 06C3 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 06C6 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 06CB _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 06CE _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 06D3 _ 8B. 00
        sub     esp, 4                                  ; 06D5 _ 83. EC, 04
        push    edi                                     ; 06D8 _ 57
        push    esi                                     ; 06D9 _ 56
        push    ebx                                     ; 06DA _ 53
        push    ecx                                     ; 06DB _ 51
        push    7                                       ; 06DC _ 6A, 07
        push    edx                                     ; 06DE _ 52
        push    eax                                     ; 06DF _ 50
        call    boxfill8                                ; 06E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06E5 _ 83. C4, 20
        mov     eax, dword [pos.2275]                   ; 06E8 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 06ED _ 8D. 78, 2A
        mov     eax, dword [line.2274]                  ; 06F0 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 06F5 _ 8D. 70, 12
        mov     eax, dword [pos.2275]                   ; 06F8 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06FD _ 8D. 58, 1A
        mov     eax, dword [line.2274]                  ; 0700 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 0705 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0708 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 070E _ A1, 00000224(d)
        sub     esp, 8                                  ; 0713 _ 83. EC, 08
        push    edi                                     ; 0716 _ 57
        push    esi                                     ; 0717 _ 56
        push    ebx                                     ; 0718 _ 53
        push    ecx                                     ; 0719 _ 51
        push    edx                                     ; 071A _ 52
        push    eax                                     ; 071B _ 50
        call    sheet_refresh                           ; 071C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0721 _ 83. C4, 20
        mov     eax, dword [line.2274]                  ; 0724 _ A1, 0000024C(d)
        sub     eax, 8                                  ; 0729 _ 83. E8, 08
        mov     dword [line.2274], eax                  ; 072C _ A3, 0000024C(d)
        mov     eax, dword [pos.2275]                   ; 0731 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0736 _ 8D. 78, 28
        mov     eax, dword [line.2274]                  ; 0739 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 073E _ 8D. 70, 12
        mov     eax, dword [pos.2275]                   ; 0741 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0746 _ 8D. 58, 1A
        mov     eax, dword [line.2274]                  ; 0749 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 074E _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 0751 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0756 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0759 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 075E _ 8B. 00
        sub     esp, 4                                  ; 0760 _ 83. EC, 04
        push    edi                                     ; 0763 _ 57
        push    esi                                     ; 0764 _ 56
        push    ebx                                     ; 0765 _ 53
        push    ecx                                     ; 0766 _ 51
        push    7                                       ; 0767 _ 6A, 07
        push    edx                                     ; 0769 _ 52
        push    eax                                     ; 076A _ 50
        call    boxfill8                                ; 076B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0770 _ 83. C4, 20
        mov     eax, dword [pos.2275]                   ; 0773 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0778 _ 8D. 78, 2A
        mov     eax, dword [line.2274]                  ; 077B _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 0780 _ 8D. 70, 12
        mov     eax, dword [pos.2275]                   ; 0783 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0788 _ 8D. 58, 1A
        mov     eax, dword [line.2274]                  ; 078B _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 0790 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0793 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0799 _ A1, 00000224(d)
        sub     esp, 8                                  ; 079E _ 83. EC, 08
        push    edi                                     ; 07A1 _ 57
        push    esi                                     ; 07A2 _ 56
        push    ebx                                     ; 07A3 _ 53
        push    ecx                                     ; 07A4 _ 51
        push    edx                                     ; 07A5 _ 52
        push    eax                                     ; 07A6 _ 50
        call    sheet_refresh                           ; 07A7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07AC _ 83. C4, 20
        jmp     ?_001                                   ; 07AF _ E9, FFFFFC86

?_008:  sub     esp, 12                                 ; 07B4 _ 83. EC, 0C
        push    mouseInfo                               ; 07B7 _ 68, 00000024(d)
        call    fifo8_status                            ; 07BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C1 _ 83. C4, 10
        test    eax, eax                                ; 07C4 _ 85. C0
        jz      ?_009                                   ; 07C6 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 07C8 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 07CE _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 07D4 _ A1, 00000224(d)
        sub     esp, 4                                  ; 07D9 _ 83. EC, 04
        push    ecx                                     ; 07DC _ 51
        push    edx                                     ; 07DD _ 52
        push    eax                                     ; 07DE _ 50
        call    showMouseInfo                           ; 07DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07E4 _ 83. C4, 10
        jmp     ?_001                                   ; 07E7 _ E9, FFFFFC4E

?_009:  sub     esp, 12                                 ; 07EC _ 83. EC, 0C
        push    timerInfo                               ; 07EF _ 68, 00000200(d)
        call    fifo8_status                            ; 07F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07F9 _ 83. C4, 10
        test    eax, eax                                ; 07FC _ 85. C0
        je      ?_001                                   ; 07FE _ 0F 84, FFFFFC36
        call    io_sti                                  ; 0804 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0809 _ 83. EC, 0C
        push    timerInfo                               ; 080C _ 68, 00000200(d)
        call    fifo8_get                               ; 0811 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0816 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0819 _ 89. 45, CC
        cmp     dword [ebp-34H], 10                     ; 081C _ 83. 7D, CC, 0A
        jnz     ?_010                                   ; 0820 _ 75, 73
        mov     edx, dword [sheet_back]                 ; 0822 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0828 _ A1, 00000224(d)
        sub     esp, 8                                  ; 082D _ 83. EC, 08
        push    ?_208                                   ; 0830 _ 68, 00000030(d)
        push    7                                       ; 0835 _ 6A, 07
        push    160                                     ; 0837 _ 68, 000000A0
        push    dword [ebp-6CH]                         ; 083C _ FF. 75, 94
        push    edx                                     ; 083F _ 52
        push    eax                                     ; 0840 _ 50
        call    showString                              ; 0841 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0846 _ 83. C4, 20
        sub     esp, 8                                  ; 0849 _ 83. EC, 08
        push    100                                     ; 084C _ 6A, 64
        push    dword [ebp-54H]                         ; 084E _ FF. 75, AC
        call    timer_setTime                           ; 0851 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0856 _ 83. C4, 10
        add     dword [ebp-6CH], 8                      ; 0859 _ 83. 45, 94, 08
        add     dword [ebp-68H], 1                      ; 085D _ 83. 45, 98, 01
        cmp     dword [ebp-6CH], 39                     ; 0861 _ 83. 7D, 94, 27
        jle     ?_001                                   ; 0865 _ 0F 8E, FFFFFBCF
        cmp     dword [ebp-68H], 5                      ; 086B _ 83. 7D, 98, 05
        jne     ?_001                                   ; 086F _ 0F 85, FFFFFBC5
        call    io_cli                                  ; 0875 _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2270]                ; 087A _ A1, 00000234(d)
        sub     esp, 12                                 ; 087F _ 83. EC, 0C
        push    eax                                     ; 0882 _ 50
        call    task_sleep                              ; 0883 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0888 _ 83. C4, 10
        call    io_sti                                  ; 088B _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0890 _ E9, FFFFFBA5

?_010:  cmp     dword [ebp-34H], 2                      ; 0895 _ 83. 7D, CC, 02
        jnz     ?_011                                   ; 0899 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 089B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 08A1 _ A1, 00000224(d)
        sub     esp, 8                                  ; 08A6 _ 83. EC, 08
        push    ?_209                                   ; 08A9 _ 68, 00000032(d)
        push    7                                       ; 08AE _ 6A, 07
        push    32                                      ; 08B0 _ 6A, 20
        push    0                                       ; 08B2 _ 6A, 00
        push    edx                                     ; 08B4 _ 52
        push    eax                                     ; 08B5 _ 50
        call    showString                              ; 08B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08BB _ 83. C4, 20
        jmp     ?_001                                   ; 08BE _ E9, FFFFFB77

?_011:  cmp     dword [ebp-34H], 0                      ; 08C3 _ 83. 7D, CC, 00
        jz      ?_012                                   ; 08C7 _ 74, 1E
        sub     esp, 4                                  ; 08C9 _ 83. EC, 04
        push    0                                       ; 08CC _ 6A, 00
        push    timerInfo                               ; 08CE _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 08D3 _ FF. 75, B4
        call    timer_init                              ; 08D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08DB _ 83. C4, 10
        mov     dword [ebp-70H], 0                      ; 08DE _ C7. 45, 90, 00000000
        jmp     ?_013                                   ; 08E5 _ EB, 1C

?_012:  sub     esp, 4                                  ; 08E7 _ 83. EC, 04
        push    1                                       ; 08EA _ 6A, 01
        push    timerInfo                               ; 08EC _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 08F1 _ FF. 75, B4
        call    timer_init                              ; 08F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08F9 _ 83. C4, 10
        mov     dword [ebp-70H], 7                      ; 08FC _ C7. 45, 90, 00000007
?_013:  sub     esp, 8                                  ; 0903 _ 83. EC, 08
        push    50                                      ; 0906 _ 6A, 32
        push    dword [ebp-4CH]                         ; 0908 _ FF. 75, B4
        call    timer_setTime                           ; 090B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0910 _ 83. C4, 10
        mov     eax, dword [pos.2275]                   ; 0913 _ A1, 00000074(d)
        add     eax, 40                                 ; 0918 _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 091B _ 89. 45, 84
        mov     eax, dword [line.2274]                  ; 091E _ A1, 0000024C(d)
        lea     edi, [eax+10H]                          ; 0923 _ 8D. 78, 10
        mov     eax, dword [pos.2275]                   ; 0926 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 092B _ 8D. 70, 1A
        mov     eax, dword [line.2274]                  ; 092E _ A1, 0000024C(d)
        lea     ebx, [eax+0AH]                          ; 0933 _ 8D. 58, 0A
        mov     eax, dword [ebp-70H]                    ; 0936 _ 8B. 45, 90
        movzx   ecx, al                                 ; 0939 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 093C _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0941 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0944 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0949 _ 8B. 00
        sub     esp, 4                                  ; 094B _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 094E _ FF. 75, 84
        push    edi                                     ; 0951 _ 57
        push    esi                                     ; 0952 _ 56
        push    ebx                                     ; 0953 _ 53
        push    ecx                                     ; 0954 _ 51
        push    edx                                     ; 0955 _ 52
        push    eax                                     ; 0956 _ 50
        call    boxfill8                                ; 0957 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 095C _ 83. C4, 20
        mov     eax, dword [pos.2275]                   ; 095F _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0964 _ 8D. 78, 2A
        mov     eax, dword [line.2274]                  ; 0967 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 096C _ 8D. 70, 12
        mov     eax, dword [pos.2275]                   ; 096F _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0974 _ 8D. 58, 1A
        mov     eax, dword [line.2274]                  ; 0977 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 097C _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 097F _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0985 _ A1, 00000224(d)
        sub     esp, 8                                  ; 098A _ 83. EC, 08
        push    edi                                     ; 098D _ 57
        push    esi                                     ; 098E _ 56
        push    ebx                                     ; 098F _ 53
        push    ecx                                     ; 0990 _ 51
        push    edx                                     ; 0991 _ 52
        push    eax                                     ; 0992 _ 50
        call    sheet_refresh                           ; 0993 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0998 _ 83. C4, 20
?_014:  jmp     ?_001                                   ; 099B _ E9, FFFFFA9A
; CMain End of function

console_task:; Function begin
        push    ebp                                     ; 09A0 _ 55
        mov     ebp, esp                                ; 09A1 _ 89. E5
        push    ebx                                     ; 09A3 _ 53
        sub     esp, 212                                ; 09A4 _ 81. EC, 000000D4
        mov     eax, dword [ebp+8H]                     ; 09AA _ 8B. 45, 08
        mov     dword [ebp-0CCH], eax                   ; 09AD _ 89. 85, FFFFFF34
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 09B3 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 09B9 _ 89. 45, F4
        xor     eax, eax                                ; 09BC _ 31. C0
        call    task_now                                ; 09BE _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B8H], eax                   ; 09C3 _ 89. 85, FFFFFF48
        mov     dword [ebp-0B4H], 8                     ; 09C9 _ C7. 85, FFFFFF4C, 00000008
        mov     dword [ebp-0BCH], 0                     ; 09D3 _ C7. 85, FFFFFF44, 00000000
        push    dword [ebp-0B8H]                        ; 09DD _ FF. B5, FFFFFF48
        lea     eax, [ebp-8CH]                          ; 09E3 _ 8D. 85, FFFFFF74
        push    eax                                     ; 09E9 _ 50
        push    128                                     ; 09EA _ 68, 00000080
        lea     eax, [ebp-0A8H]                         ; 09EF _ 8D. 85, FFFFFF58
        push    eax                                     ; 09F5 _ 50
        call    fifo8_init                              ; 09F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09FB _ 83. C4, 10
        call    timer_alloc                             ; 09FE _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B0H], eax                   ; 0A03 _ 89. 85, FFFFFF50
        sub     esp, 4                                  ; 0A09 _ 83. EC, 04
        push    1                                       ; 0A0C _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0A0E _ 8D. 85, FFFFFF58
        push    eax                                     ; 0A14 _ 50
        push    dword [ebp-0B0H]                        ; 0A15 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0A1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A20 _ 83. C4, 10
        sub     esp, 8                                  ; 0A23 _ 83. EC, 08
        push    50                                      ; 0A26 _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0A28 _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0A2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A33 _ 83. C4, 10
        mov     dword [ebp-0ACH], 0                     ; 0A36 _ C7. 85, FFFFFF54, 00000000
?_015:  call    io_cli                                  ; 0A40 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0A45 _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 0A48 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0A4E _ 50
        call    fifo8_status                            ; 0A4F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A54 _ 83. C4, 10
        test    eax, eax                                ; 0A57 _ 85. C0
        jnz     ?_016                                   ; 0A59 _ 75, 07
        call    io_sti                                  ; 0A5B _ E8, FFFFFFFC(rel)
        jmp     ?_015                                   ; 0A60 _ EB, DE

?_016:  sub     esp, 12                                 ; 0A62 _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 0A65 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0A6B _ 50
        call    fifo8_get                               ; 0A6C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A71 _ 83. C4, 10
        mov     dword [ebp-0ACH], eax                   ; 0A74 _ 89. 85, FFFFFF54
        call    io_sti                                  ; 0A7A _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-0ACH], 1                     ; 0A7F _ 83. BD, FFFFFF54, 01
        jg      ?_015                                   ; 0A86 _ 7F, B8
        cmp     dword [ebp-0ACH], 1                     ; 0A88 _ 83. BD, FFFFFF54, 01
        jnz     ?_017                                   ; 0A8F _ 75, 26
        sub     esp, 4                                  ; 0A91 _ 83. EC, 04
        push    0                                       ; 0A94 _ 6A, 00
        lea     eax, [ebp-0A8H]                         ; 0A96 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0A9C _ 50
        push    dword [ebp-0B0H]                        ; 0A9D _ FF. B5, FFFFFF50
        call    timer_init                              ; 0AA3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AA8 _ 83. C4, 10
        mov     dword [ebp-0BCH], 7                     ; 0AAB _ C7. 85, FFFFFF44, 00000007
        jmp     ?_018                                   ; 0AB5 _ EB, 2D

?_017:  cmp     dword [ebp-0ACH], 0                     ; 0AB7 _ 83. BD, FFFFFF54, 00
        jnz     ?_018                                   ; 0ABE _ 75, 24
        sub     esp, 4                                  ; 0AC0 _ 83. EC, 04
        push    1                                       ; 0AC3 _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0AC5 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0ACB _ 50
        push    dword [ebp-0B0H]                        ; 0ACC _ FF. B5, FFFFFF50
        call    timer_init                              ; 0AD2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AD7 _ 83. C4, 10
        mov     dword [ebp-0BCH], 0                     ; 0ADA _ C7. 85, FFFFFF44, 00000000
?_018:  sub     esp, 8                                  ; 0AE4 _ 83. EC, 08
        push    50                                      ; 0AE7 _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0AE9 _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0AEF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AF4 _ 83. C4, 10
        mov     eax, dword [ebp-0B4H]                   ; 0AF7 _ 8B. 85, FFFFFF4C
        lea     ebx, [eax+7H]                           ; 0AFD _ 8D. 58, 07
        mov     eax, dword [ebp-0BCH]                   ; 0B00 _ 8B. 85, FFFFFF44
        movzx   ecx, al                                 ; 0B06 _ 0F B6. C8
        mov     eax, dword [ebp-0CCH]                   ; 0B09 _ 8B. 85, FFFFFF34
        mov     edx, dword [eax+4H]                     ; 0B0F _ 8B. 50, 04
        mov     eax, dword [ebp-0CCH]                   ; 0B12 _ 8B. 85, FFFFFF34
        mov     eax, dword [eax]                        ; 0B18 _ 8B. 00
        sub     esp, 4                                  ; 0B1A _ 83. EC, 04
        push    43                                      ; 0B1D _ 6A, 2B
        push    ebx                                     ; 0B1F _ 53
        push    28                                      ; 0B20 _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0B22 _ FF. B5, FFFFFF4C
        push    ecx                                     ; 0B28 _ 51
        push    edx                                     ; 0B29 _ 52
        push    eax                                     ; 0B2A _ 50
        call    boxfill8                                ; 0B2B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B30 _ 83. C4, 20
        mov     eax, dword [ebp-0B4H]                   ; 0B33 _ 8B. 85, FFFFFF4C
        lea     edx, [eax+8H]                           ; 0B39 _ 8D. 50, 08
        mov     eax, dword [shtctl]                     ; 0B3C _ A1, 00000224(d)
        sub     esp, 8                                  ; 0B41 _ 83. EC, 08
        push    44                                      ; 0B44 _ 6A, 2C
        push    edx                                     ; 0B46 _ 52
        push    28                                      ; 0B47 _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0B49 _ FF. B5, FFFFFF4C
        push    dword [ebp-0CCH]                        ; 0B4F _ FF. B5, FFFFFF34
        push    eax                                     ; 0B55 _ 50
        call    sheet_refresh                           ; 0B56 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B5B _ 83. C4, 20
        jmp     ?_015                                   ; 0B5E _ E9, FFFFFEDD
; console_task End of function

launch_console:; Function begin
        push    ebp                                     ; 0B63 _ 55
        mov     ebp, esp                                ; 0B64 _ 89. E5
        sub     esp, 24                                 ; 0B66 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0B69 _ A1, 00000224(d)
        sub     esp, 12                                 ; 0B6E _ 83. EC, 0C
        push    eax                                     ; 0B71 _ 50
        call    sheet_alloc                             ; 0B72 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B77 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0B7A _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0B7D _ A1, 00000008(d)
        sub     esp, 8                                  ; 0B82 _ 83. EC, 08
        push    46080                                   ; 0B85 _ 68, 0000B400
        push    eax                                     ; 0B8A _ 50
        call    memman_alloc_4K                         ; 0B8B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B90 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0B93 _ 89. 45, EC
        sub     esp, 12                                 ; 0B96 _ 83. EC, 0C
        push    99                                      ; 0B99 _ 6A, 63
        push    180                                     ; 0B9B _ 68, 000000B4
        push    256                                     ; 0BA0 _ 68, 00000100
        push    dword [ebp-14H]                         ; 0BA5 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0BA8 _ FF. 75, E8
        call    sheet_setbuf                            ; 0BAB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BB0 _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0BB3 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0BB8 _ 83. EC, 04
        push    ?_210                                   ; 0BBB _ 68, 00000039(d)
        push    dword [ebp-18H]                         ; 0BC0 _ FF. 75, E8
        push    eax                                     ; 0BC3 _ 50
        call    make_window8                            ; 0BC4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BC9 _ 83. C4, 10
        sub     esp, 8                                  ; 0BCC _ 83. EC, 08
        push    0                                       ; 0BCF _ 6A, 00
        push    144                                     ; 0BD1 _ 68, 00000090
        push    240                                     ; 0BD6 _ 68, 000000F0
        push    28                                      ; 0BDB _ 6A, 1C
        push    8                                       ; 0BDD _ 6A, 08
        push    dword [ebp-18H]                         ; 0BDF _ FF. 75, E8
        call    make_textbox8                           ; 0BE2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BE7 _ 83. C4, 20
        call    task_alloc                              ; 0BEA _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0BEF _ 89. 45, F0
        call    get_code32_addr                         ; 0BF2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0BF7 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0BFA _ 8B. 45, F0
        mov     dword [eax+70H], 0                      ; 0BFD _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-10H]                    ; 0C04 _ 8B. 45, F0
        mov     dword [eax+74H], 1073741824             ; 0C07 _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0C0E _ 8B. 45, F4
        neg     eax                                     ; 0C11 _ F7. D8
        add     eax, console_task                       ; 0C13 _ 05, 00000000(d)
        mov     edx, eax                                ; 0C18 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0C1A _ 8B. 45, F0
        mov     dword [eax+30H], edx                    ; 0C1D _ 89. 50, 30
        mov     eax, dword [ebp-10H]                    ; 0C20 _ 8B. 45, F0
        mov     dword [eax+58H], 0                      ; 0C23 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-10H]                    ; 0C2A _ 8B. 45, F0
        mov     dword [eax+5CH], 8                      ; 0C2D _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp-10H]                    ; 0C34 _ 8B. 45, F0
        mov     dword [eax+60H], 32                     ; 0C37 _ C7. 40, 60, 00000020
        mov     eax, dword [ebp-10H]                    ; 0C3E _ 8B. 45, F0
        mov     dword [eax+64H], 24                     ; 0C41 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp-10H]                    ; 0C48 _ 8B. 45, F0
        mov     dword [eax+68H], 0                      ; 0C4B _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-10H]                    ; 0C52 _ 8B. 45, F0
        mov     dword [eax+6CH], 16                     ; 0C55 _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp-10H]                    ; 0C5C _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0C5F _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 0C62 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0C65 _ 8B. 45, F0
        mov     dword [eax+48H], edx                    ; 0C68 _ 89. 50, 48
        mov     eax, dword [ebp-10H]                    ; 0C6B _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0C6E _ 8B. 40, 48
        add     eax, 4                                  ; 0C71 _ 83. C0, 04
        mov     edx, eax                                ; 0C74 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0C76 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0C79 _ 89. 02
        sub     esp, 4                                  ; 0C7B _ 83. EC, 04
        push    5                                       ; 0C7E _ 6A, 05
        push    1                                       ; 0C80 _ 6A, 01
        push    dword [ebp-10H]                         ; 0C82 _ FF. 75, F0
        call    task_run                                ; 0C85 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C8A _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C8D _ A1, 00000224(d)
        push    16                                      ; 0C92 _ 6A, 10
        push    32                                      ; 0C94 _ 6A, 20
        push    dword [ebp-18H]                         ; 0C96 _ FF. 75, E8
        push    eax                                     ; 0C99 _ 50
        call    sheet_slide                             ; 0C9A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C9F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0CA2 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0CA7 _ 83. EC, 04
        push    1                                       ; 0CAA _ 6A, 01
        push    dword [ebp-18H]                         ; 0CAC _ FF. 75, E8
        push    eax                                     ; 0CAF _ 50
        call    sheet_level_updown                      ; 0CB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB5 _ 83. C4, 10
        nop                                             ; 0CB8 _ 90
        leave                                           ; 0CB9 _ C9
        ret                                             ; 0CBA _ C3
; launch_console End of function

task_b_main:; Function begin
        push    ebp                                     ; 0CBB _ 55
        mov     ebp, esp                                ; 0CBC _ 89. E5
        sub     esp, 88                                 ; 0CBE _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 0CC1 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 0CC4 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0CC7 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0CCD _ 89. 45, F4
        xor     eax, eax                                ; 0CD0 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0CD2 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0CD8 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0CDD _ 83. EC, 08
        push    ?_211                                   ; 0CE0 _ 68, 00000042(d)
        push    7                                       ; 0CE5 _ 6A, 07
        push    144                                     ; 0CE7 _ 68, 00000090
        push    0                                       ; 0CEC _ 6A, 00
        push    edx                                     ; 0CEE _ 52
        push    eax                                     ; 0CEF _ 50
        call    showString                              ; 0CF0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CF5 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 0CF8 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0CFF _ C7. 45, C8, 00000000
        push    0                                       ; 0D06 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0D08 _ 8D. 45, EC
        push    eax                                     ; 0D0B _ 50
        push    8                                       ; 0D0C _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0D0E _ 8D. 45, D0
        push    eax                                     ; 0D11 _ 50
        call    fifo8_init                              ; 0D12 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D17 _ 83. C4, 10
        call    timer_alloc                             ; 0D1A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0D1F _ 89. 45, C4
        sub     esp, 4                                  ; 0D22 _ 83. EC, 04
        push    123                                     ; 0D25 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0D27 _ 8D. 45, D0
        push    eax                                     ; 0D2A _ 50
        push    dword [ebp-3CH]                         ; 0D2B _ FF. 75, C4
        call    timer_init                              ; 0D2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D33 _ 83. C4, 10
        sub     esp, 8                                  ; 0D36 _ 83. EC, 08
        push    100                                     ; 0D39 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0D3B _ FF. 75, C4
        call    timer_setTime                           ; 0D3E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D43 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 0D46 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 0D4D _ C7. 45, C0, 00000000
?_019:  add     dword [ebp-40H], 1                      ; 0D54 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 0D58 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 0D5B _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 0D5E _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 0D61 _ 8B. 00
        sub     esp, 4                                  ; 0D63 _ 83. EC, 04
        push    38                                      ; 0D66 _ 6A, 26
        push    100                                     ; 0D68 _ 6A, 64
        push    23                                      ; 0D6A _ 6A, 17
        push    8                                       ; 0D6C _ 6A, 08
        push    8                                       ; 0D6E _ 6A, 08
        push    edx                                     ; 0D70 _ 52
        push    eax                                     ; 0D71 _ 50
        call    boxfill8                                ; 0D72 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D77 _ 83. C4, 20
        sub     esp, 12                                 ; 0D7A _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 0D7D _ FF. 75, C0
        call    intToHexStr                             ; 0D80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D85 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0D88 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 0D8B _ A1, 00000224(d)
        sub     esp, 8                                  ; 0D90 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 0D93 _ FF. 75, CC
        push    10                                      ; 0D96 _ 6A, 0A
        push    23                                      ; 0D98 _ 6A, 17
        push    8                                       ; 0D9A _ 6A, 08
        push    dword [ebp-4CH]                         ; 0D9C _ FF. 75, B4
        push    eax                                     ; 0D9F _ 50
        call    showString                              ; 0DA0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DA5 _ 83. C4, 20
        call    io_cli                                  ; 0DA8 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0DAD _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0DB0 _ 8D. 45, D0
        push    eax                                     ; 0DB3 _ 50
        call    fifo8_status                            ; 0DB4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB9 _ 83. C4, 10
        test    eax, eax                                ; 0DBC _ 85. C0
        jnz     ?_020                                   ; 0DBE _ 75, 07
        call    io_sti                                  ; 0DC0 _ E8, FFFFFFFC(rel)
        jmp     ?_019                                   ; 0DC5 _ EB, 8D

?_020:  sub     esp, 12                                 ; 0DC7 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0DCA _ 8D. 45, D0
        push    eax                                     ; 0DCD _ 50
        call    fifo8_get                               ; 0DCE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DD3 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0DD6 _ 89. 45, C8
        call    io_sti                                  ; 0DD9 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 0DDE _ 83. 7D, C8, 7B
        jne     ?_019                                   ; 0DE2 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 0DE8 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0DEE _ A1, 00000224(d)
        sub     esp, 8                                  ; 0DF3 _ 83. EC, 08
        push    ?_212                                   ; 0DF6 _ 68, 0000004F(d)
        push    7                                       ; 0DFB _ 6A, 07
        push    176                                     ; 0DFD _ 68, 000000B0
        push    dword [ebp-44H]                         ; 0E02 _ FF. 75, BC
        push    edx                                     ; 0E05 _ 52
        push    eax                                     ; 0E06 _ 50
        call    showString                              ; 0E07 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E0C _ 83. C4, 20
        sub     esp, 8                                  ; 0E0F _ 83. EC, 08
        push    100                                     ; 0E12 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0E14 _ FF. 75, C4
        call    timer_setTime                           ; 0E17 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E1C _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 0E1F _ 83. 45, BC, 08
        jmp     ?_019                                   ; 0E23 _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0E28 _ 55
        mov     ebp, esp                                ; 0E29 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E2B _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0E2E _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0E34 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0E37 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0E3D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0E40 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0E46 _ 90
        pop     ebp                                     ; 0E47 _ 5D
        ret                                             ; 0E48 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0E49 _ 55
        mov     ebp, esp                                ; 0E4A _ 89. E5
        push    ebx                                     ; 0E4C _ 53
        sub     esp, 36                                 ; 0E4D _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0E50 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0E53 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0E56 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0E59 _ 89. 45, F4
        jmp     ?_022                                   ; 0E5C _ EB, 3E

?_021:  mov     eax, dword [ebp+1CH]                    ; 0E5E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0E61 _ 0F B6. 00
        movzx   eax, al                                 ; 0E64 _ 0F B6. C0
        shl     eax, 4                                  ; 0E67 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0E6A _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0E70 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0E74 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0E77 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0E7A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0E7D _ 8B. 00
        sub     esp, 8                                  ; 0E7F _ 83. EC, 08
        push    ebx                                     ; 0E82 _ 53
        push    ecx                                     ; 0E83 _ 51
        push    dword [ebp+14H]                         ; 0E84 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0E87 _ FF. 75, 10
        push    edx                                     ; 0E8A _ 52
        push    eax                                     ; 0E8B _ 50
        call    showFont8                               ; 0E8C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E91 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0E94 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0E98 _ 83. 45, 1C, 01
?_022:  mov     eax, dword [ebp+1CH]                    ; 0E9C _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0E9F _ 0F B6. 00
        test    al, al                                  ; 0EA2 _ 84. C0
        jnz     ?_021                                   ; 0EA4 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0EA6 _ 8B. 45, 14
        add     eax, 16                                 ; 0EA9 _ 83. C0, 10
        sub     esp, 8                                  ; 0EAC _ 83. EC, 08
        push    eax                                     ; 0EAF _ 50
        push    dword [ebp+10H]                         ; 0EB0 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0EB3 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0EB6 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0EB9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EBC _ FF. 75, 08
        call    sheet_refresh                           ; 0EBF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EC4 _ 83. C4, 20
        nop                                             ; 0EC7 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0EC8 _ 8B. 5D, FC
        leave                                           ; 0ECB _ C9
        ret                                             ; 0ECC _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0ECD _ 55
        mov     ebp, esp                                ; 0ECE _ 89. E5
        push    ebx                                     ; 0ED0 _ 53
        sub     esp, 4                                  ; 0ED1 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0ED4 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0ED7 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0EDA _ 8B. 45, 0C
        sub     eax, 1                                  ; 0EDD _ 83. E8, 01
        sub     esp, 4                                  ; 0EE0 _ 83. EC, 04
        push    edx                                     ; 0EE3 _ 52
        push    eax                                     ; 0EE4 _ 50
        push    0                                       ; 0EE5 _ 6A, 00
        push    0                                       ; 0EE7 _ 6A, 00
        push    14                                      ; 0EE9 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0EEB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EEE _ FF. 75, 08
        call    boxfill8                                ; 0EF1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EF6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EF9 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0EFC _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0EFF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F02 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F05 _ 8B. 45, 10
        sub     eax, 24                                 ; 0F08 _ 83. E8, 18
        sub     esp, 4                                  ; 0F0B _ 83. EC, 04
        push    ecx                                     ; 0F0E _ 51
        push    edx                                     ; 0F0F _ 52
        push    eax                                     ; 0F10 _ 50
        push    0                                       ; 0F11 _ 6A, 00
        push    8                                       ; 0F13 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0F15 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F18 _ FF. 75, 08
        call    boxfill8                                ; 0F1B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F20 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F23 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0F26 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0F29 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F2C _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F2F _ 8B. 45, 10
        sub     eax, 23                                 ; 0F32 _ 83. E8, 17
        sub     esp, 4                                  ; 0F35 _ 83. EC, 04
        push    ecx                                     ; 0F38 _ 51
        push    edx                                     ; 0F39 _ 52
        push    eax                                     ; 0F3A _ 50
        push    0                                       ; 0F3B _ 6A, 00
        push    7                                       ; 0F3D _ 6A, 07
        push    dword [ebp+0CH]                         ; 0F3F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F42 _ FF. 75, 08
        call    boxfill8                                ; 0F45 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F4A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F4D _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0F50 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0F53 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0F56 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0F59 _ 8B. 45, 10
        sub     eax, 22                                 ; 0F5C _ 83. E8, 16
        sub     esp, 4                                  ; 0F5F _ 83. EC, 04
        push    ecx                                     ; 0F62 _ 51
        push    edx                                     ; 0F63 _ 52
        push    eax                                     ; 0F64 _ 50
        push    0                                       ; 0F65 _ 6A, 00
        push    8                                       ; 0F67 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0F69 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F6C _ FF. 75, 08
        call    boxfill8                                ; 0F6F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F74 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F77 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0F7A _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0F7D _ 8B. 45, 10
        sub     eax, 20                                 ; 0F80 _ 83. E8, 14
        sub     esp, 4                                  ; 0F83 _ 83. EC, 04
        push    edx                                     ; 0F86 _ 52
        push    51                                      ; 0F87 _ 6A, 33
        push    eax                                     ; 0F89 _ 50
        push    10                                      ; 0F8A _ 6A, 0A
        push    7                                       ; 0F8C _ 6A, 07
        push    dword [ebp+0CH]                         ; 0F8E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F91 _ FF. 75, 08
        call    boxfill8                                ; 0F94 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F99 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F9C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0F9F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0FA2 _ 8B. 45, 10
        sub     eax, 20                                 ; 0FA5 _ 83. E8, 14
        sub     esp, 4                                  ; 0FA8 _ 83. EC, 04
        push    edx                                     ; 0FAB _ 52
        push    9                                       ; 0FAC _ 6A, 09
        push    eax                                     ; 0FAE _ 50
        push    9                                       ; 0FAF _ 6A, 09
        push    7                                       ; 0FB1 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0FB3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FB6 _ FF. 75, 08
        call    boxfill8                                ; 0FB9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FBE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FC1 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0FC4 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0FC7 _ 8B. 45, 10
        sub     eax, 4                                  ; 0FCA _ 83. E8, 04
        sub     esp, 4                                  ; 0FCD _ 83. EC, 04
        push    edx                                     ; 0FD0 _ 52
        push    50                                      ; 0FD1 _ 6A, 32
        push    eax                                     ; 0FD3 _ 50
        push    10                                      ; 0FD4 _ 6A, 0A
        push    15                                      ; 0FD6 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0FD8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FDB _ FF. 75, 08
        call    boxfill8                                ; 0FDE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FE3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FE6 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0FE9 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0FEC _ 8B. 45, 10
        sub     eax, 19                                 ; 0FEF _ 83. E8, 13
        sub     esp, 4                                  ; 0FF2 _ 83. EC, 04
        push    edx                                     ; 0FF5 _ 52
        push    50                                      ; 0FF6 _ 6A, 32
        push    eax                                     ; 0FF8 _ 50
        push    50                                      ; 0FF9 _ 6A, 32
        push    15                                      ; 0FFB _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0FFD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1000 _ FF. 75, 08
        call    boxfill8                                ; 1003 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1008 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 100B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 100E _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1011 _ 8B. 45, 10
        sub     eax, 3                                  ; 1014 _ 83. E8, 03
        sub     esp, 4                                  ; 1017 _ 83. EC, 04
        push    edx                                     ; 101A _ 52
        push    50                                      ; 101B _ 6A, 32
        push    eax                                     ; 101D _ 50
        push    10                                      ; 101E _ 6A, 0A
        push    0                                       ; 1020 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1022 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1025 _ FF. 75, 08
        call    boxfill8                                ; 1028 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 102D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1030 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1033 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1036 _ 8B. 45, 10
        sub     eax, 20                                 ; 1039 _ 83. E8, 14
        sub     esp, 4                                  ; 103C _ 83. EC, 04
        push    edx                                     ; 103F _ 52
        push    51                                      ; 1040 _ 6A, 33
        push    eax                                     ; 1042 _ 50
        push    51                                      ; 1043 _ 6A, 33
        push    0                                       ; 1045 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1047 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 104A _ FF. 75, 08
        call    boxfill8                                ; 104D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1052 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1055 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 1058 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 105B _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 105E _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1061 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1064 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1067 _ 8B. 45, 0C
        sub     eax, 47                                 ; 106A _ 83. E8, 2F
        sub     esp, 4                                  ; 106D _ 83. EC, 04
        push    ebx                                     ; 1070 _ 53
        push    ecx                                     ; 1071 _ 51
        push    edx                                     ; 1072 _ 52
        push    eax                                     ; 1073 _ 50
        push    15                                      ; 1074 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1076 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1079 _ FF. 75, 08
        call    boxfill8                                ; 107C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1081 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1084 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1087 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 108A _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 108D _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1090 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1093 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1096 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1099 _ 83. E8, 2F
        sub     esp, 4                                  ; 109C _ 83. EC, 04
        push    ebx                                     ; 109F _ 53
        push    ecx                                     ; 10A0 _ 51
        push    edx                                     ; 10A1 _ 52
        push    eax                                     ; 10A2 _ 50
        push    15                                      ; 10A3 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 10A5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10A8 _ FF. 75, 08
        call    boxfill8                                ; 10AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10B0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10B3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 10B6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 10B9 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 10BC _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 10BF _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 10C2 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 10C5 _ 8B. 45, 0C
        sub     eax, 47                                 ; 10C8 _ 83. E8, 2F
        sub     esp, 4                                  ; 10CB _ 83. EC, 04
        push    ebx                                     ; 10CE _ 53
        push    ecx                                     ; 10CF _ 51
        push    edx                                     ; 10D0 _ 52
        push    eax                                     ; 10D1 _ 50
        push    7                                       ; 10D2 _ 6A, 07
        push    dword [ebp+0CH]                         ; 10D4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10D7 _ FF. 75, 08
        call    boxfill8                                ; 10DA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10DF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10E2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 10E5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 10E8 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 10EB _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 10EE _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 10F1 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 10F4 _ 8B. 45, 0C
        sub     eax, 3                                  ; 10F7 _ 83. E8, 03
        sub     esp, 4                                  ; 10FA _ 83. EC, 04
        push    ebx                                     ; 10FD _ 53
        push    ecx                                     ; 10FE _ 51
        push    edx                                     ; 10FF _ 52
        push    eax                                     ; 1100 _ 50
        push    7                                       ; 1101 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1103 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1106 _ FF. 75, 08
        call    boxfill8                                ; 1109 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 110E _ 83. C4, 20
        nop                                             ; 1111 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1112 _ 8B. 5D, FC
        leave                                           ; 1115 _ C9
        ret                                             ; 1116 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1117 _ 55
        mov     ebp, esp                                ; 1118 _ 89. E5
        sub     esp, 24                                 ; 111A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 111D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1122 _ 89. 45, EC
        movzx   eax, word [?_221]                       ; 1125 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 112C _ 98
        mov     dword [ebp-10H], eax                    ; 112D _ 89. 45, F0
        movzx   eax, word [?_222]                       ; 1130 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1137 _ 98
        mov     dword [ebp-0CH], eax                    ; 1138 _ 89. 45, F4
        sub     esp, 4                                  ; 113B _ 83. EC, 04
        push    table_rgb.2335                          ; 113E _ 68, 00000080(d)
        push    15                                      ; 1143 _ 6A, 0F
        push    0                                       ; 1145 _ 6A, 00
        call    set_palette                             ; 1147 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 114C _ 83. C4, 10
        nop                                             ; 114F _ 90
        leave                                           ; 1150 _ C9
        ret                                             ; 1151 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1152 _ 55
        mov     ebp, esp                                ; 1153 _ 89. E5
        sub     esp, 24                                 ; 1155 _ 83. EC, 18
        call    io_load_eflags                          ; 1158 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 115D _ 89. 45, F4
        call    io_cli                                  ; 1160 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1165 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1168 _ FF. 75, 08
        push    968                                     ; 116B _ 68, 000003C8
        call    io_out8                                 ; 1170 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1175 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1178 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 117B _ 89. 45, F0
        jmp     ?_024                                   ; 117E _ EB, 65

?_023:  mov     eax, dword [ebp+10H]                    ; 1180 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1183 _ 0F B6. 00
        shr     al, 2                                   ; 1186 _ C0. E8, 02
        movzx   eax, al                                 ; 1189 _ 0F B6. C0
        sub     esp, 8                                  ; 118C _ 83. EC, 08
        push    eax                                     ; 118F _ 50
        push    969                                     ; 1190 _ 68, 000003C9
        call    io_out8                                 ; 1195 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 119A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 119D _ 8B. 45, 10
        add     eax, 1                                  ; 11A0 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 11A3 _ 0F B6. 00
        shr     al, 2                                   ; 11A6 _ C0. E8, 02
        movzx   eax, al                                 ; 11A9 _ 0F B6. C0
        sub     esp, 8                                  ; 11AC _ 83. EC, 08
        push    eax                                     ; 11AF _ 50
        push    969                                     ; 11B0 _ 68, 000003C9
        call    io_out8                                 ; 11B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11BA _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 11BD _ 8B. 45, 10
        add     eax, 2                                  ; 11C0 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 11C3 _ 0F B6. 00
        shr     al, 2                                   ; 11C6 _ C0. E8, 02
        movzx   eax, al                                 ; 11C9 _ 0F B6. C0
        sub     esp, 8                                  ; 11CC _ 83. EC, 08
        push    eax                                     ; 11CF _ 50
        push    969                                     ; 11D0 _ 68, 000003C9
        call    io_out8                                 ; 11D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11DA _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 11DD _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 11E1 _ 83. 45, F0, 01
?_024:  mov     eax, dword [ebp-10H]                    ; 11E5 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 11E8 _ 3B. 45, 0C
        jle     ?_023                                   ; 11EB _ 7E, 93
        sub     esp, 12                                 ; 11ED _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 11F0 _ FF. 75, F4
        call    io_store_eflags                         ; 11F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11F8 _ 83. C4, 10
        nop                                             ; 11FB _ 90
        leave                                           ; 11FC _ C9
        ret                                             ; 11FD _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 11FE _ 55
        mov     ebp, esp                                ; 11FF _ 89. E5
        sub     esp, 20                                 ; 1201 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1204 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1207 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 120A _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 120D _ 89. 45, FC
        jmp     ?_028                                   ; 1210 _ EB, 33

?_025:  mov     eax, dword [ebp+14H]                    ; 1212 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1215 _ 89. 45, F8
        jmp     ?_027                                   ; 1218 _ EB, 1F

?_026:  mov     eax, dword [ebp-4H]                     ; 121A _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 121D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1221 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1223 _ 8B. 45, F8
        add     eax, edx                                ; 1226 _ 01. D0
        mov     edx, eax                                ; 1228 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 122A _ 8B. 45, 08
        add     edx, eax                                ; 122D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 122F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1233 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1235 _ 83. 45, F8, 01
?_027:  mov     eax, dword [ebp-8H]                     ; 1239 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 123C _ 3B. 45, 1C
        jle     ?_026                                   ; 123F _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1241 _ 83. 45, FC, 01
?_028:  mov     eax, dword [ebp-4H]                     ; 1245 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1248 _ 3B. 45, 20
        jle     ?_025                                   ; 124B _ 7E, C5
        nop                                             ; 124D _ 90
        leave                                           ; 124E _ C9
        ret                                             ; 124F _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1250 _ 55
        mov     ebp, esp                                ; 1251 _ 89. E5
        push    edi                                     ; 1253 _ 57
        push    esi                                     ; 1254 _ 56
        push    ebx                                     ; 1255 _ 53
        sub     esp, 16                                 ; 1256 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1259 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 125C _ 8B. 45, 14
        add     eax, edx                                ; 125F _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1261 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1264 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1267 _ 8B. 45, 18
        add     eax, edx                                ; 126A _ 01. D0
        mov     dword [ebp-10H], eax                    ; 126C _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 126F _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1272 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1275 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1278 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 127B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 127E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1281 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1284 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1287 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 128A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 128D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1290 _ 8B. 00
        push    edi                                     ; 1292 _ 57
        push    esi                                     ; 1293 _ 56
        push    ebx                                     ; 1294 _ 53
        push    ecx                                     ; 1295 _ 51
        push    15                                      ; 1296 _ 6A, 0F
        push    edx                                     ; 1298 _ 52
        push    eax                                     ; 1299 _ 50
        call    boxfill8                                ; 129A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 129F _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 12A2 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 12A5 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 12A8 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 12AB _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 12AE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 12B1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 12B4 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 12B7 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 12BA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12BD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12C3 _ 8B. 00
        push    edi                                     ; 12C5 _ 57
        push    esi                                     ; 12C6 _ 56
        push    ebx                                     ; 12C7 _ 53
        push    ecx                                     ; 12C8 _ 51
        push    15                                      ; 12C9 _ 6A, 0F
        push    edx                                     ; 12CB _ 52
        push    eax                                     ; 12CC _ 50
        call    boxfill8                                ; 12CD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12D2 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 12D5 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 12D8 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 12DB _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 12DE _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 12E1 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 12E4 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 12E7 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 12EA _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 12ED _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12F0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12F3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12F6 _ 8B. 00
        push    edi                                     ; 12F8 _ 57
        push    esi                                     ; 12F9 _ 56
        push    ebx                                     ; 12FA _ 53
        push    ecx                                     ; 12FB _ 51
        push    7                                       ; 12FC _ 6A, 07
        push    edx                                     ; 12FE _ 52
        push    eax                                     ; 12FF _ 50
        call    boxfill8                                ; 1300 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1305 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1308 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 130B _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 130E _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1311 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1314 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1317 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 131A _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 131D _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1320 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1323 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1326 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1329 _ 8B. 00
        push    edi                                     ; 132B _ 57
        push    esi                                     ; 132C _ 56
        push    ebx                                     ; 132D _ 53
        push    ecx                                     ; 132E _ 51
        push    7                                       ; 132F _ 6A, 07
        push    edx                                     ; 1331 _ 52
        push    eax                                     ; 1332 _ 50
        call    boxfill8                                ; 1333 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1338 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 133B _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 133E _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1341 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1344 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1347 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 134A _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 134D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1350 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1353 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1356 _ 8B. 00
        push    esi                                     ; 1358 _ 56
        push    dword [ebp-14H]                         ; 1359 _ FF. 75, EC
        push    ebx                                     ; 135C _ 53
        push    ecx                                     ; 135D _ 51
        push    0                                       ; 135E _ 6A, 00
        push    edx                                     ; 1360 _ 52
        push    eax                                     ; 1361 _ 50
        call    boxfill8                                ; 1362 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1367 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 136A _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 136D _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1370 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1373 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1376 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1379 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 137C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 137F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1382 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1385 _ 8B. 00
        push    dword [ebp-10H]                         ; 1387 _ FF. 75, F0
        push    esi                                     ; 138A _ 56
        push    ebx                                     ; 138B _ 53
        push    ecx                                     ; 138C _ 51
        push    0                                       ; 138D _ 6A, 00
        push    edx                                     ; 138F _ 52
        push    eax                                     ; 1390 _ 50
        call    boxfill8                                ; 1391 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1396 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1399 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 139C _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 139F _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 13A2 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 13A5 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 13A8 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 13AB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13AE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13B1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13B4 _ 8B. 00
        push    esi                                     ; 13B6 _ 56
        push    dword [ebp-14H]                         ; 13B7 _ FF. 75, EC
        push    ebx                                     ; 13BA _ 53
        push    ecx                                     ; 13BB _ 51
        push    8                                       ; 13BC _ 6A, 08
        push    edx                                     ; 13BE _ 52
        push    eax                                     ; 13BF _ 50
        call    boxfill8                                ; 13C0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13C5 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 13C8 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 13CB _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 13CE _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 13D1 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 13D4 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 13D7 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 13DA _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 13DD _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 13E0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 13E3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 13E6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13E9 _ 8B. 00
        push    edi                                     ; 13EB _ 57
        push    esi                                     ; 13EC _ 56
        push    ebx                                     ; 13ED _ 53
        push    ecx                                     ; 13EE _ 51
        push    8                                       ; 13EF _ 6A, 08
        push    edx                                     ; 13F1 _ 52
        push    eax                                     ; 13F2 _ 50
        call    boxfill8                                ; 13F3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 13F8 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 13FB _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 13FE _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1401 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1404 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1407 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 140A _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 140D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1410 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1413 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1416 _ 8B. 00
        push    dword [ebp-10H]                         ; 1418 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 141B _ FF. 75, EC
        push    esi                                     ; 141E _ 56
        push    ebx                                     ; 141F _ 53
        push    ecx                                     ; 1420 _ 51
        push    edx                                     ; 1421 _ 52
        push    eax                                     ; 1422 _ 50
        call    boxfill8                                ; 1423 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1428 _ 83. C4, 1C
        nop                                             ; 142B _ 90
        lea     esp, [ebp-0CH]                          ; 142C _ 8D. 65, F4
        pop     ebx                                     ; 142F _ 5B
        pop     esi                                     ; 1430 _ 5E
        pop     edi                                     ; 1431 _ 5F
        pop     ebp                                     ; 1432 _ 5D
        ret                                             ; 1433 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1434 _ 55
        mov     ebp, esp                                ; 1435 _ 89. E5
        sub     esp, 20                                 ; 1437 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 143A _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 143D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1440 _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 1447 _ E9, 0000016C

?_029:  mov     edx, dword [ebp-4H]                     ; 144C _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 144F _ 8B. 45, 1C
        add     eax, edx                                ; 1452 _ 01. D0
        movzx   eax, byte [eax]                         ; 1454 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1457 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 145A _ 80. 7D, FB, 00
        jns     ?_030                                   ; 145E _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1460 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1463 _ 8B. 45, FC
        add     eax, edx                                ; 1466 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1468 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 146C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 146E _ 8B. 45, 10
        add     eax, edx                                ; 1471 _ 01. D0
        mov     edx, eax                                ; 1473 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1475 _ 8B. 45, 08
        add     edx, eax                                ; 1478 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 147A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 147E _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 1480 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1484 _ 83. E0, 40
        test    eax, eax                                ; 1487 _ 85. C0
        jz      ?_031                                   ; 1489 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 148B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 148E _ 8B. 45, FC
        add     eax, edx                                ; 1491 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1493 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1497 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1499 _ 8B. 45, 10
        add     eax, edx                                ; 149C _ 01. D0
        lea     edx, [eax+1H]                           ; 149E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 14A1 _ 8B. 45, 08
        add     edx, eax                                ; 14A4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14A6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14AA _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 14AC _ 0F BE. 45, FB
        and     eax, 20H                                ; 14B0 _ 83. E0, 20
        test    eax, eax                                ; 14B3 _ 85. C0
        jz      ?_032                                   ; 14B5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14B7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14BA _ 8B. 45, FC
        add     eax, edx                                ; 14BD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14BF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14C3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14C5 _ 8B. 45, 10
        add     eax, edx                                ; 14C8 _ 01. D0
        lea     edx, [eax+2H]                           ; 14CA _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 14CD _ 8B. 45, 08
        add     edx, eax                                ; 14D0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14D2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14D6 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 14D8 _ 0F BE. 45, FB
        and     eax, 10H                                ; 14DC _ 83. E0, 10
        test    eax, eax                                ; 14DF _ 85. C0
        jz      ?_033                                   ; 14E1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14E3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14E6 _ 8B. 45, FC
        add     eax, edx                                ; 14E9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14EB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14EF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14F1 _ 8B. 45, 10
        add     eax, edx                                ; 14F4 _ 01. D0
        lea     edx, [eax+3H]                           ; 14F6 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 14F9 _ 8B. 45, 08
        add     edx, eax                                ; 14FC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14FE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1502 _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 1504 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1508 _ 83. E0, 08
        test    eax, eax                                ; 150B _ 85. C0
        jz      ?_034                                   ; 150D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 150F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1512 _ 8B. 45, FC
        add     eax, edx                                ; 1515 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1517 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 151B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 151D _ 8B. 45, 10
        add     eax, edx                                ; 1520 _ 01. D0
        lea     edx, [eax+4H]                           ; 1522 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1525 _ 8B. 45, 08
        add     edx, eax                                ; 1528 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 152A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 152E _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1530 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1534 _ 83. E0, 04
        test    eax, eax                                ; 1537 _ 85. C0
        jz      ?_035                                   ; 1539 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 153B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 153E _ 8B. 45, FC
        add     eax, edx                                ; 1541 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1543 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1547 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1549 _ 8B. 45, 10
        add     eax, edx                                ; 154C _ 01. D0
        lea     edx, [eax+5H]                           ; 154E _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1551 _ 8B. 45, 08
        add     edx, eax                                ; 1554 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1556 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 155A _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 155C _ 0F BE. 45, FB
        and     eax, 02H                                ; 1560 _ 83. E0, 02
        test    eax, eax                                ; 1563 _ 85. C0
        jz      ?_036                                   ; 1565 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1567 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 156A _ 8B. 45, FC
        add     eax, edx                                ; 156D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 156F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1573 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1575 _ 8B. 45, 10
        add     eax, edx                                ; 1578 _ 01. D0
        lea     edx, [eax+6H]                           ; 157A _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 157D _ 8B. 45, 08
        add     edx, eax                                ; 1580 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1582 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1586 _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 1588 _ 0F BE. 45, FB
        and     eax, 01H                                ; 158C _ 83. E0, 01
        test    eax, eax                                ; 158F _ 85. C0
        jz      ?_037                                   ; 1591 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1593 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1596 _ 8B. 45, FC
        add     eax, edx                                ; 1599 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 159B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 159F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15A1 _ 8B. 45, 10
        add     eax, edx                                ; 15A4 _ 01. D0
        lea     edx, [eax+7H]                           ; 15A6 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 15A9 _ 8B. 45, 08
        add     edx, eax                                ; 15AC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15AE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15B2 _ 88. 02
?_037:  add     dword [ebp-4H], 1                       ; 15B4 _ 83. 45, FC, 01
?_038:  cmp     dword [ebp-4H], 15                      ; 15B8 _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 15BC _ 0F 8E, FFFFFE8A
        nop                                             ; 15C2 _ 90
        leave                                           ; 15C3 _ C9
        ret                                             ; 15C4 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 15C5 _ 55
        mov     ebp, esp                                ; 15C6 _ 89. E5
        sub     esp, 20                                 ; 15C8 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 15CB _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 15CE _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 15D1 _ C7. 45, FC, 00000000
        jmp     ?_045                                   ; 15D8 _ E9, 000000B1

?_039:  mov     dword [ebp-8H], 0                       ; 15DD _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 15E4 _ E9, 00000097

?_040:  mov     eax, dword [ebp-4H]                     ; 15E9 _ 8B. 45, FC
        shl     eax, 4                                  ; 15EC _ C1. E0, 04
        mov     edx, eax                                ; 15EF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15F1 _ 8B. 45, F8
        add     eax, edx                                ; 15F4 _ 01. D0
        add     eax, cursor.2390                        ; 15F6 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 15FB _ 0F B6. 00
        cmp     al, 42                                  ; 15FE _ 3C, 2A
        jnz     ?_041                                   ; 1600 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1602 _ 8B. 45, FC
        shl     eax, 4                                  ; 1605 _ C1. E0, 04
        mov     edx, eax                                ; 1608 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 160A _ 8B. 45, F8
        add     eax, edx                                ; 160D _ 01. D0
        mov     edx, eax                                ; 160F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1611 _ 8B. 45, 08
        add     eax, edx                                ; 1614 _ 01. D0
        mov     byte [eax], 0                           ; 1616 _ C6. 00, 00
?_041:  mov     eax, dword [ebp-4H]                     ; 1619 _ 8B. 45, FC
        shl     eax, 4                                  ; 161C _ C1. E0, 04
        mov     edx, eax                                ; 161F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1621 _ 8B. 45, F8
        add     eax, edx                                ; 1624 _ 01. D0
        add     eax, cursor.2390                        ; 1626 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 162B _ 0F B6. 00
        cmp     al, 79                                  ; 162E _ 3C, 4F
        jnz     ?_042                                   ; 1630 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1632 _ 8B. 45, FC
        shl     eax, 4                                  ; 1635 _ C1. E0, 04
        mov     edx, eax                                ; 1638 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 163A _ 8B. 45, F8
        add     eax, edx                                ; 163D _ 01. D0
        mov     edx, eax                                ; 163F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1641 _ 8B. 45, 08
        add     eax, edx                                ; 1644 _ 01. D0
        mov     byte [eax], 7                           ; 1646 _ C6. 00, 07
?_042:  mov     eax, dword [ebp-4H]                     ; 1649 _ 8B. 45, FC
        shl     eax, 4                                  ; 164C _ C1. E0, 04
        mov     edx, eax                                ; 164F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1651 _ 8B. 45, F8
        add     eax, edx                                ; 1654 _ 01. D0
        add     eax, cursor.2390                        ; 1656 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 165B _ 0F B6. 00
        cmp     al, 46                                  ; 165E _ 3C, 2E
        jnz     ?_043                                   ; 1660 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1662 _ 8B. 45, FC
        shl     eax, 4                                  ; 1665 _ C1. E0, 04
        mov     edx, eax                                ; 1668 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 166A _ 8B. 45, F8
        add     eax, edx                                ; 166D _ 01. D0
        mov     edx, eax                                ; 166F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1671 _ 8B. 45, 08
        add     edx, eax                                ; 1674 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1676 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 167A _ 88. 02
?_043:  add     dword [ebp-8H], 1                       ; 167C _ 83. 45, F8, 01
?_044:  cmp     dword [ebp-8H], 15                      ; 1680 _ 83. 7D, F8, 0F
        jle     ?_040                                   ; 1684 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 168A _ 83. 45, FC, 01
?_045:  cmp     dword [ebp-4H], 15                      ; 168E _ 83. 7D, FC, 0F
        jle     ?_039                                   ; 1692 _ 0F 8E, FFFFFF45
        nop                                             ; 1698 _ 90
        leave                                           ; 1699 _ C9
        ret                                             ; 169A _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 169B _ 55
        mov     ebp, esp                                ; 169C _ 89. E5
        push    ebx                                     ; 169E _ 53
        sub     esp, 16                                 ; 169F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 16A2 _ C7. 45, F8, 00000000
        jmp     ?_049                                   ; 16A9 _ EB, 50

?_046:  mov     dword [ebp-0CH], 0                      ; 16AB _ C7. 45, F4, 00000000
        jmp     ?_048                                   ; 16B2 _ EB, 3B

?_047:  mov     eax, dword [ebp-8H]                     ; 16B4 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 16B7 _ 0F AF. 45, 24
        mov     edx, eax                                ; 16BB _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 16BD _ 8B. 45, F4
        add     eax, edx                                ; 16C0 _ 01. D0
        mov     edx, eax                                ; 16C2 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 16C4 _ 8B. 45, 20
        add     eax, edx                                ; 16C7 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 16C9 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 16CC _ 8B. 55, F8
        add     edx, ecx                                ; 16CF _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 16D1 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 16D5 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 16D8 _ 8B. 4D, F4
        add     ecx, ebx                                ; 16DB _ 01. D9
        add     edx, ecx                                ; 16DD _ 01. CA
        mov     ecx, edx                                ; 16DF _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 16E1 _ 8B. 55, 08
        add     edx, ecx                                ; 16E4 _ 01. CA
        movzx   eax, byte [eax]                         ; 16E6 _ 0F B6. 00
        mov     byte [edx], al                          ; 16E9 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 16EB _ 83. 45, F4, 01
?_048:  mov     eax, dword [ebp-0CH]                    ; 16EF _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 16F2 _ 3B. 45, 10
        jl      ?_047                                   ; 16F5 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 16F7 _ 83. 45, F8, 01
?_049:  mov     eax, dword [ebp-8H]                     ; 16FB _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 16FE _ 3B. 45, 14
        jl      ?_046                                   ; 1701 _ 7C, A8
        nop                                             ; 1703 _ 90
        add     esp, 16                                 ; 1704 _ 83. C4, 10
        pop     ebx                                     ; 1707 _ 5B
        pop     ebp                                     ; 1708 _ 5D
        ret                                             ; 1709 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 170A _ 55
        mov     ebp, esp                                ; 170B _ 89. E5
        sub     esp, 24                                 ; 170D _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1710 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1715 _ 89. 45, EC
        movzx   eax, word [?_221]                       ; 1718 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 171F _ 98
        mov     dword [ebp-10H], eax                    ; 1720 _ 89. 45, F0
        movzx   eax, word [?_222]                       ; 1723 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 172A _ 98
        mov     dword [ebp-0CH], eax                    ; 172B _ 89. 45, F4
        sub     esp, 8                                  ; 172E _ 83. EC, 08
        push    32                                      ; 1731 _ 6A, 20
        push    32                                      ; 1733 _ 6A, 20
        call    io_out8                                 ; 1735 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 173A _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 173D _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1741 _ 83. EC, 0C
        push    96                                      ; 1744 _ 6A, 60
        call    io_in8                                  ; 1746 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 174B _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 174E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1751 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1755 _ 83. EC, 08
        push    eax                                     ; 1758 _ 50
        push    keyInfo                                 ; 1759 _ 68, 00000008(d)
        call    fifo8_put                               ; 175E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1763 _ 83. C4, 10
        nop                                             ; 1766 _ 90
        leave                                           ; 1767 _ C9
        ret                                             ; 1768 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1769 _ 55
        mov     ebp, esp                                ; 176A _ 89. E5
        sub     esp, 40                                 ; 176C _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 176F _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1772 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1775 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1779 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 177C _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 177F _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1783 _ 83. EC, 0C
        push    eax                                     ; 1786 _ 50
        call    charToVal                               ; 1787 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 178C _ 83. C4, 10
        mov     byte [?_220], al                        ; 178F _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1794 _ 0F B6. 45, E4
        shr     al, 4                                   ; 1798 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 179B _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 179E _ 0F B6. 45, E4
        movsx   eax, al                                 ; 17A2 _ 0F BE. C0
        sub     esp, 12                                 ; 17A5 _ 83. EC, 0C
        push    eax                                     ; 17A8 _ 50
        call    charToVal                               ; 17A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17AE _ 83. C4, 10
        mov     byte [?_219], al                        ; 17B1 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 17B6 _ B8, 00000000(d)
        leave                                           ; 17BB _ C9
        ret                                             ; 17BC _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 17BD _ 55
        mov     ebp, esp                                ; 17BE _ 89. E5
        sub     esp, 4                                  ; 17C0 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 17C3 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 17C6 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 17C9 _ 80. 7D, FC, 09
        jle     ?_050                                   ; 17CD _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 17CF _ 0F B6. 45, FC
        add     eax, 55                                 ; 17D3 _ 83. C0, 37
        jmp     ?_051                                   ; 17D6 _ EB, 07

?_050:  movzx   eax, byte [ebp-4H]                      ; 17D8 _ 0F B6. 45, FC
        add     eax, 48                                 ; 17DC _ 83. C0, 30
?_051:  leave                                           ; 17DF _ C9
        ret                                             ; 17E0 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 17E1 _ 55
        mov     ebp, esp                                ; 17E2 _ 89. E5
        sub     esp, 16                                 ; 17E4 _ 83. EC, 10
        mov     byte [str.2433], 48                     ; 17E7 _ C6. 05, 00000250(d), 30
        mov     byte [?_227], 120                       ; 17EE _ C6. 05, 00000251(d), 78
        mov     byte [?_228], 0                         ; 17F5 _ C6. 05, 0000025A(d), 00
        mov     dword [ebp-0CH], 2                      ; 17FC _ C7. 45, F4, 00000002
        jmp     ?_053                                   ; 1803 _ EB, 0F

?_052:  mov     eax, dword [ebp-0CH]                    ; 1805 _ 8B. 45, F4
        add     eax, str.2433                           ; 1808 _ 05, 00000250(d)
        mov     byte [eax], 48                          ; 180D _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1810 _ 83. 45, F4, 01
?_053:  cmp     dword [ebp-0CH], 9                      ; 1814 _ 83. 7D, F4, 09
        jle     ?_052                                   ; 1818 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 181A _ C7. 45, F8, 00000009
        jmp     ?_056                                   ; 1821 _ EB, 48

?_054:  mov     eax, dword [ebp+8H]                     ; 1823 _ 8B. 45, 08
        and     eax, 0FH                                ; 1826 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1829 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 182C _ 8B. 45, 08
        shr     eax, 4                                  ; 182F _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1832 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1835 _ 83. 7D, FC, 09
        jle     ?_055                                   ; 1839 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 183B _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 183E _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1841 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1844 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1847 _ 89. 55, F8
        mov     edx, ecx                                ; 184A _ 89. CA
        mov     byte [str.2433+eax], dl                 ; 184C _ 88. 90, 00000250(d)
        jmp     ?_056                                   ; 1852 _ EB, 17

?_055:  mov     eax, dword [ebp-4H]                     ; 1854 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1857 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 185A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 185D _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1860 _ 89. 55, F8
        mov     edx, ecx                                ; 1863 _ 89. CA
        mov     byte [str.2433+eax], dl                 ; 1865 _ 88. 90, 00000250(d)
?_056:  cmp     dword [ebp-8H], 1                       ; 186B _ 83. 7D, F8, 01
        jle     ?_057                                   ; 186F _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1871 _ 83. 7D, 08, 00
        jnz     ?_054                                   ; 1875 _ 75, AC
?_057:  mov     eax, str.2433                           ; 1877 _ B8, 00000250(d)
        leave                                           ; 187C _ C9
        ret                                             ; 187D _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 187E _ 55
        mov     ebp, esp                                ; 187F _ 89. E5
        sub     esp, 8                                  ; 1881 _ 83. EC, 08
?_058:  sub     esp, 12                                 ; 1884 _ 83. EC, 0C
        push    100                                     ; 1887 _ 6A, 64
        call    io_in8                                  ; 1889 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 188E _ 83. C4, 10
        movsx   eax, al                                 ; 1891 _ 0F BE. C0
        and     eax, 02H                                ; 1894 _ 83. E0, 02
        test    eax, eax                                ; 1897 _ 85. C0
        jz      ?_059                                   ; 1899 _ 74, 02
        jmp     ?_058                                   ; 189B _ EB, E7

?_059:  nop                                             ; 189D _ 90
        nop                                             ; 189E _ 90
        leave                                           ; 189F _ C9
        ret                                             ; 18A0 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 18A1 _ 55
        mov     ebp, esp                                ; 18A2 _ 89. E5
        sub     esp, 8                                  ; 18A4 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 18A7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 18AC _ 83. EC, 08
        push    96                                      ; 18AF _ 6A, 60
        push    100                                     ; 18B1 _ 6A, 64
        call    io_out8                                 ; 18B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18B8 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 18BB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 18C0 _ 83. EC, 08
        push    71                                      ; 18C3 _ 6A, 47
        push    96                                      ; 18C5 _ 6A, 60
        call    io_out8                                 ; 18C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18CC _ 83. C4, 10
        nop                                             ; 18CF _ 90
        leave                                           ; 18D0 _ C9
        ret                                             ; 18D1 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 18D2 _ 55
        mov     ebp, esp                                ; 18D3 _ 89. E5
        sub     esp, 8                                  ; 18D5 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 18D8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 18DD _ 83. EC, 08
        push    212                                     ; 18E0 _ 68, 000000D4
        push    100                                     ; 18E5 _ 6A, 64
        call    io_out8                                 ; 18E7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18EC _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 18EF _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 18F4 _ 83. EC, 08
        push    244                                     ; 18F7 _ 68, 000000F4
        push    96                                      ; 18FC _ 6A, 60
        call    io_out8                                 ; 18FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1903 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1906 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1909 _ C6. 40, 03, 00
        nop                                             ; 190D _ 90
        leave                                           ; 190E _ C9
        ret                                             ; 190F _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1910 _ 55
        mov     ebp, esp                                ; 1911 _ 89. E5
        sub     esp, 24                                 ; 1913 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1916 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 191A _ 83. EC, 08
        push    32                                      ; 191D _ 6A, 20
        push    160                                     ; 191F _ 68, 000000A0
        call    io_out8                                 ; 1924 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1929 _ 83. C4, 10
        sub     esp, 8                                  ; 192C _ 83. EC, 08
        push    32                                      ; 192F _ 6A, 20
        push    32                                      ; 1931 _ 6A, 20
        call    io_out8                                 ; 1933 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1938 _ 83. C4, 10
        sub     esp, 12                                 ; 193B _ 83. EC, 0C
        push    96                                      ; 193E _ 6A, 60
        call    io_in8                                  ; 1940 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1945 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1948 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 194B _ 0F B6. 45, F7
        sub     esp, 8                                  ; 194F _ 83. EC, 08
        push    eax                                     ; 1952 _ 50
        push    mouseInfo                               ; 1953 _ 68, 00000024(d)
        call    fifo8_put                               ; 1958 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 195D _ 83. C4, 10
        nop                                             ; 1960 _ 90
        leave                                           ; 1961 _ C9
        ret                                             ; 1962 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1963 _ 55
        mov     ebp, esp                                ; 1964 _ 89. E5
        sub     esp, 40                                 ; 1966 _ 83. EC, 28
        call    io_sti                                  ; 1969 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 196E _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 1973 _ 89. 45, E8
        movzx   eax, word [?_221]                       ; 1976 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 197D _ 98
        mov     dword [ebp-14H], eax                    ; 197E _ 89. 45, EC
        movzx   eax, word [?_222]                       ; 1981 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1988 _ 98
        mov     dword [ebp-10H], eax                    ; 1989 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 198C _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1990 _ 83. EC, 0C
        push    keyInfo                                 ; 1993 _ 68, 00000008(d)
        call    fifo8_get                               ; 1998 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 199D _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 19A0 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 19A3 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 19A7 _ 83. EC, 0C
        push    eax                                     ; 19AA _ 50
        call    charToHex                               ; 19AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19B0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 19B3 _ 89. 45, F4
        mov     edx, dword [line.2466]                  ; 19B6 _ 8B. 15, 0000025C(d)
        mov     eax, dword [pos.2465]                   ; 19BC _ A1, 00000260(d)
        sub     esp, 8                                  ; 19C1 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 19C4 _ FF. 75, F4
        push    7                                       ; 19C7 _ 6A, 07
        push    edx                                     ; 19C9 _ 52
        push    eax                                     ; 19CA _ 50
        push    dword [ebp+0CH]                         ; 19CB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19CE _ FF. 75, 08
        call    showString                              ; 19D1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19D6 _ 83. C4, 20
        mov     eax, dword [pos.2465]                   ; 19D9 _ A1, 00000260(d)
        add     eax, 32                                 ; 19DE _ 83. C0, 20
        mov     dword [pos.2465], eax                   ; 19E1 _ A3, 00000260(d)
        mov     eax, dword [pos.2465]                   ; 19E6 _ A1, 00000260(d)
        cmp     dword [ebp-14H], eax                    ; 19EB _ 39. 45, EC
        jnz     ?_062                                   ; 19EE _ 75, 28
        mov     eax, dword [line.2466]                  ; 19F0 _ A1, 0000025C(d)
        cmp     dword [ebp-10H], eax                    ; 19F5 _ 39. 45, F0
        jz      ?_060                                   ; 19F8 _ 74, 0A
        mov     eax, dword [line.2466]                  ; 19FA _ A1, 0000025C(d)
        add     eax, 16                                 ; 19FF _ 83. C0, 10
        jmp     ?_061                                   ; 1A02 _ EB, 05

?_060:  mov     eax, 0                                  ; 1A04 _ B8, 00000000
?_061:  mov     dword [line.2466], eax                  ; 1A09 _ A3, 0000025C(d)
        mov     dword [pos.2465], 0                     ; 1A0E _ C7. 05, 00000260(d), 00000000
?_062:  nop                                             ; 1A18 _ 90
        leave                                           ; 1A19 _ C9
        ret                                             ; 1A1A _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1A1B _ 55
        mov     ebp, esp                                ; 1A1C _ 89. E5
        sub     esp, 24                                 ; 1A1E _ 83. EC, 18
        call    io_sti                                  ; 1A21 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1A26 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1A2A _ 83. EC, 0C
        push    mouseInfo                               ; 1A2D _ 68, 00000024(d)
        call    fifo8_get                               ; 1A32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A37 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1A3A _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1A3D _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1A41 _ 83. EC, 08
        push    eax                                     ; 1A44 _ 50
        push    mouse_move                              ; 1A45 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1A4A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A4F _ 83. C4, 10
        test    eax, eax                                ; 1A52 _ 85. C0
        jz      ?_063                                   ; 1A54 _ 74, 60
        sub     esp, 4                                  ; 1A56 _ 83. EC, 04
        push    mouse_move                              ; 1A59 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1A5E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A61 _ FF. 75, 08
        call    computeMousePos                         ; 1A64 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A69 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1A6C _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1A72 _ A1, 000000F0(d)
        push    edx                                     ; 1A77 _ 52
        push    eax                                     ; 1A78 _ 50
        push    dword [ebp+10H]                         ; 1A79 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1A7C _ FF. 75, 08
        call    sheet_slide                             ; 1A7F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A84 _ 83. C4, 10
        mov     eax, dword [?_224]                      ; 1A87 _ A1, 000000EC(d)
        and     eax, 01H                                ; 1A8C _ 83. E0, 01
        test    eax, eax                                ; 1A8F _ 85. C0
        jz      ?_063                                   ; 1A91 _ 74, 23
        mov     eax, dword [my]                         ; 1A93 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1A98 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1A9B _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1AA0 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1AA3 _ A1, 00000228(d)
        push    ecx                                     ; 1AA8 _ 51
        push    edx                                     ; 1AA9 _ 52
        push    eax                                     ; 1AAA _ 50
        push    dword [ebp+8H]                          ; 1AAB _ FF. 75, 08
        call    sheet_slide                             ; 1AAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AB3 _ 83. C4, 10
?_063:  nop                                             ; 1AB6 _ 90
        leave                                           ; 1AB7 _ C9
        ret                                             ; 1AB8 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1AB9 _ 55
        mov     ebp, esp                                ; 1ABA _ 89. E5
        sub     esp, 4                                  ; 1ABC _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1ABF _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1AC2 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1AC5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1AC8 _ 0F B6. 40, 03
        test    al, al                                  ; 1ACC _ 84. C0
        jnz     ?_065                                   ; 1ACE _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1AD0 _ 80. 7D, FC, FA
        jnz     ?_064                                   ; 1AD4 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1AD6 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1AD9 _ C6. 40, 03, 01
?_064:  mov     eax, 0                                  ; 1ADD _ B8, 00000000
        jmp     ?_072                                   ; 1AE2 _ E9, 0000010C

?_065:  mov     eax, dword [ebp+8H]                     ; 1AE7 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1AEA _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1AEE _ 3C, 01
        jnz     ?_067                                   ; 1AF0 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1AF2 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1AF6 _ 83. C8, 37
        cmp     al, 63                                  ; 1AF9 _ 3C, 3F
        jnz     ?_066                                   ; 1AFB _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1AFD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B00 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1B04 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1B06 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1B09 _ C6. 40, 03, 02
?_066:  mov     eax, 0                                  ; 1B0D _ B8, 00000000
        jmp     ?_072                                   ; 1B12 _ E9, 000000DC

?_067:  mov     eax, dword [ebp+8H]                     ; 1B17 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B1A _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1B1E _ 3C, 02
        jnz     ?_068                                   ; 1B20 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1B22 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B25 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1B29 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B2C _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1B2F _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1B33 _ B8, 00000000
        jmp     ?_072                                   ; 1B38 _ E9, 000000B6

?_068:  mov     eax, dword [ebp+8H]                     ; 1B3D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B40 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1B44 _ 3C, 03
        jne     ?_071                                   ; 1B46 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1B4C _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1B4F _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1B53 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1B56 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1B59 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1B5D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1B60 _ 0F B6. 00
        movzx   eax, al                                 ; 1B63 _ 0F B6. C0
        and     eax, 07H                                ; 1B66 _ 83. E0, 07
        mov     edx, eax                                ; 1B69 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B6B _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1B6E _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1B71 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1B74 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1B78 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1B7B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1B7E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B81 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1B84 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1B88 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1B8B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1B8E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1B91 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1B94 _ 0F B6. 00
        movzx   eax, al                                 ; 1B97 _ 0F B6. C0
        and     eax, 10H                                ; 1B9A _ 83. E0, 10
        test    eax, eax                                ; 1B9D _ 85. C0
        jz      ?_069                                   ; 1B9F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1BA1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1BA4 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1BA7 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1BAC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BAE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1BB1 _ 89. 50, 04
?_069:  mov     eax, dword [ebp+8H]                     ; 1BB4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1BB7 _ 0F B6. 00
        movzx   eax, al                                 ; 1BBA _ 0F B6. C0
        and     eax, 20H                                ; 1BBD _ 83. E0, 20
        test    eax, eax                                ; 1BC0 _ 85. C0
        jz      ?_070                                   ; 1BC2 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1BC4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1BC7 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1BCA _ 0D, FFFFFF00
        mov     edx, eax                                ; 1BCF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BD1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1BD4 _ 89. 50, 08
?_070:  mov     eax, dword [ebp+8H]                     ; 1BD7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1BDA _ 8B. 40, 08
        neg     eax                                     ; 1BDD _ F7. D8
        mov     edx, eax                                ; 1BDF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BE1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1BE4 _ 89. 50, 08
        mov     eax, 1                                  ; 1BE7 _ B8, 00000001
        jmp     ?_072                                   ; 1BEC _ EB, 05

?_071:  mov     eax, 4294967295                         ; 1BEE _ B8, FFFFFFFF
?_072:  leave                                           ; 1BF3 _ C9
        ret                                             ; 1BF4 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1BF5 _ 55
        mov     ebp, esp                                ; 1BF6 _ 89. E5
        sub     esp, 16                                 ; 1BF8 _ 83. EC, 10
        movzx   eax, word [?_221]                       ; 1BFB _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1C02 _ 98
        mov     dword [ebp-8H], eax                     ; 1C03 _ 89. 45, F8
        movzx   eax, word [?_222]                       ; 1C06 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1C0D _ 98
        mov     dword [ebp-4H], eax                     ; 1C0E _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1C11 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1C14 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1C17 _ A1, 000000F0(d)
        add     eax, edx                                ; 1C1C _ 01. D0
        mov     dword [mx], eax                         ; 1C1E _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1C23 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1C26 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1C29 _ A1, 000000F4(d)
        add     eax, edx                                ; 1C2E _ 01. D0
        mov     dword [my], eax                         ; 1C30 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1C35 _ A1, 000000F0(d)
        test    eax, eax                                ; 1C3A _ 85. C0
        jns     ?_073                                   ; 1C3C _ 79, 0A
        mov     dword [mx], 0                           ; 1C3E _ C7. 05, 000000F0(d), 00000000
?_073:  mov     eax, dword [my]                         ; 1C48 _ A1, 000000F4(d)
        test    eax, eax                                ; 1C4D _ 85. C0
        jns     ?_074                                   ; 1C4F _ 79, 0A
        mov     dword [my], 0                           ; 1C51 _ C7. 05, 000000F4(d), 00000000
?_074:  mov     eax, dword [ebp-8H]                     ; 1C5B _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1C5E _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1C61 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1C66 _ 39. C2
        jge     ?_075                                   ; 1C68 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1C6A _ 8B. 45, F8
        sub     eax, 9                                  ; 1C6D _ 83. E8, 09
        mov     dword [mx], eax                         ; 1C70 _ A3, 000000F0(d)
?_075:  mov     eax, dword [ebp-4H]                     ; 1C75 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1C78 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1C7B _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1C80 _ 39. C2
        jge     ?_076                                   ; 1C82 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1C84 _ 8B. 45, FC
        sub     eax, 1                                  ; 1C87 _ 83. E8, 01
        mov     dword [my], eax                         ; 1C8A _ A3, 000000F4(d)
?_076:  nop                                             ; 1C8F _ 90
        leave                                           ; 1C90 _ C9
        ret                                             ; 1C91 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1C92 _ 55
        mov     ebp, esp                                ; 1C93 _ 89. E5
        sub     esp, 56                                 ; 1C95 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1C98 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1C9F _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1CA6 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1CAD _ C7. 45, DC, 00000050
        push    100                                     ; 1CB4 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1CB6 _ FF. 75, 1C
        push    0                                       ; 1CB9 _ 6A, 00
        push    0                                       ; 1CBB _ 6A, 00
        push    14                                      ; 1CBD _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1CBF _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1CC2 _ FF. 75, 14
        call    boxfill8                                ; 1CC5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CCA _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1CCD _ 8B. 45, 20
        movsx   eax, al                                 ; 1CD0 _ 0F BE. C0
        sub     esp, 8                                  ; 1CD3 _ 83. EC, 08
        push    ?_213                                   ; 1CD6 _ 68, 00000051(d)
        push    eax                                     ; 1CDB _ 50
        push    dword [ebp-2CH]                         ; 1CDC _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1CDF _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1CE2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CE5 _ FF. 75, 08
        call    showString                              ; 1CE8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CED _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1CF0 _ 8B. 45, 18
        sub     esp, 12                                 ; 1CF3 _ 83. EC, 0C
        push    eax                                     ; 1CF6 _ 50
        call    intToHexStr                             ; 1CF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CFC _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1CFF _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1D02 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D05 _ 0F BE. C0
        sub     esp, 8                                  ; 1D08 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1D0B _ FF. 75, E0
        push    eax                                     ; 1D0E _ 50
        push    dword [ebp-2CH]                         ; 1D0F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D12 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D15 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D18 _ FF. 75, 08
        call    showString                              ; 1D1B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D20 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D23 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D27 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D2A _ 0F BE. C0
        sub     esp, 8                                  ; 1D2D _ 83. EC, 08
        push    ?_214                                   ; 1D30 _ 68, 0000005B(d)
        push    eax                                     ; 1D35 _ 50
        push    dword [ebp-2CH]                         ; 1D36 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D39 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D3C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D3F _ FF. 75, 08
        call    showString                              ; 1D42 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D47 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1D4A _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1D4D _ 8B. 00
        sub     esp, 12                                 ; 1D4F _ 83. EC, 0C
        push    eax                                     ; 1D52 _ 50
        call    intToHexStr                             ; 1D53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D58 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1D5B _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1D5E _ 8B. 45, 20
        movsx   eax, al                                 ; 1D61 _ 0F BE. C0
        sub     esp, 8                                  ; 1D64 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1D67 _ FF. 75, E4
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
        push    ?_215                                   ; 1D8C _ 68, 00000069(d)
        push    eax                                     ; 1D91 _ 50
        push    dword [ebp-2CH]                         ; 1D92 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D95 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D98 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D9B _ FF. 75, 08
        call    showString                              ; 1D9E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DA3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DA6 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1DA9 _ 8B. 40, 04
        sub     esp, 12                                 ; 1DAC _ 83. EC, 0C
        push    eax                                     ; 1DAF _ 50
        call    intToHexStr                             ; 1DB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB5 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1DB8 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1DBB _ 8B. 45, 20
        movsx   eax, al                                 ; 1DBE _ 0F BE. C0
        sub     esp, 8                                  ; 1DC1 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1DC4 _ FF. 75, E8
        push    eax                                     ; 1DC7 _ 50
        push    dword [ebp-2CH]                         ; 1DC8 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DCB _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DCE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DD1 _ FF. 75, 08
        call    showString                              ; 1DD4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DD9 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DDC _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1DE0 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DE3 _ 0F BE. C0
        sub     esp, 8                                  ; 1DE6 _ 83. EC, 08
        push    ?_216                                   ; 1DE9 _ 68, 00000078(d)
        push    eax                                     ; 1DEE _ 50
        push    dword [ebp-2CH]                         ; 1DEF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1DF2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1DF5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DF8 _ FF. 75, 08
        call    showString                              ; 1DFB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E00 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E03 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1E06 _ 8B. 40, 08
        sub     esp, 12                                 ; 1E09 _ 83. EC, 0C
        push    eax                                     ; 1E0C _ 50
        call    intToHexStr                             ; 1E0D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E12 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1E15 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1E18 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E1B _ 0F BE. C0
        sub     esp, 8                                  ; 1E1E _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1E21 _ FF. 75, EC
        push    eax                                     ; 1E24 _ 50
        push    dword [ebp-2CH]                         ; 1E25 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E28 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E2B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E2E _ FF. 75, 08
        call    showString                              ; 1E31 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E36 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E39 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E3D _ 8B. 45, 20
        movsx   eax, al                                 ; 1E40 _ 0F BE. C0
        sub     esp, 8                                  ; 1E43 _ 83. EC, 08
        push    ?_217                                   ; 1E46 _ 68, 00000084(d)
        push    eax                                     ; 1E4B _ 50
        push    dword [ebp-2CH]                         ; 1E4C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E4F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E52 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E55 _ FF. 75, 08
        call    showString                              ; 1E58 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E5D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E60 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1E63 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1E66 _ 83. EC, 0C
        push    eax                                     ; 1E69 _ 50
        call    intToHexStr                             ; 1E6A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E6F _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1E72 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1E75 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E78 _ 0F BE. C0
        sub     esp, 8                                  ; 1E7B _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1E7E _ FF. 75, F0
        push    eax                                     ; 1E81 _ 50
        push    dword [ebp-2CH]                         ; 1E82 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E85 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E88 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E8B _ FF. 75, 08
        call    showString                              ; 1E8E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E93 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E96 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E9A _ 8B. 45, 20
        movsx   eax, al                                 ; 1E9D _ 0F BE. C0
        sub     esp, 8                                  ; 1EA0 _ 83. EC, 08
        push    ?_218                                   ; 1EA3 _ 68, 00000091(d)
        push    eax                                     ; 1EA8 _ 50
        push    dword [ebp-2CH]                         ; 1EA9 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1EAC _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1EAF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EB2 _ FF. 75, 08
        call    showString                              ; 1EB5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EBA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1EBD _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1EC0 _ 8B. 40, 10
        sub     esp, 12                                 ; 1EC3 _ 83. EC, 0C
        push    eax                                     ; 1EC6 _ 50
        call    intToHexStr                             ; 1EC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ECC _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1ECF _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1ED2 _ 8B. 45, 20
        movsx   eax, al                                 ; 1ED5 _ 0F BE. C0
        sub     esp, 8                                  ; 1ED8 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1EDB _ FF. 75, F4
        push    eax                                     ; 1EDE _ 50
        push    dword [ebp-2CH]                         ; 1EDF _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1EE2 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1EE5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1EE8 _ FF. 75, 08
        call    showString                              ; 1EEB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EF0 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1EF3 _ 83. 45, D4, 10
        nop                                             ; 1EF7 _ 90
        leave                                           ; 1EF8 _ C9
        ret                                             ; 1EF9 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1EFA _ 55
        mov     ebp, esp                                ; 1EFB _ 89. E5
        sub     esp, 24                                 ; 1EFD _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 1F00 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1F03 _ 0F AF. 45, 14
        mov     edx, eax                                ; 1F07 _ 89. C2
        mov     eax, dword [memman]                     ; 1F09 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1F0E _ 83. EC, 08
        push    edx                                     ; 1F11 _ 52
        push    eax                                     ; 1F12 _ 50
        call    memman_alloc_4K                         ; 1F13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F18 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1F1B _ 89. 45, F0
        sub     esp, 12                                 ; 1F1E _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1F21 _ FF. 75, 08
        call    sheet_alloc                             ; 1F24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F29 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F2C _ 89. 45, F4
        sub     esp, 12                                 ; 1F2F _ 83. EC, 0C
        push    99                                      ; 1F32 _ 6A, 63
        push    dword [ebp+14H]                         ; 1F34 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1F37 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 1F3A _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1F3D _ FF. 75, F4
        call    sheet_setbuf                            ; 1F40 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F45 _ 83. C4, 20
        sub     esp, 4                                  ; 1F48 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1F4B _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1F4E _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1F51 _ FF. 75, 08
        call    make_window8                            ; 1F54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F59 _ 83. C4, 10
        sub     esp, 8                                  ; 1F5C _ 83. EC, 08
        push    7                                       ; 1F5F _ 6A, 07
        push    16                                      ; 1F61 _ 6A, 10
        push    150                                     ; 1F63 _ 68, 00000096
        push    42                                      ; 1F68 _ 6A, 2A
        push    10                                      ; 1F6A _ 6A, 0A
        push    dword [ebp-0CH]                         ; 1F6C _ FF. 75, F4
        call    make_textbox8                           ; 1F6F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F74 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 1F77 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1F7A _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1F7D _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1F80 _ FF. 75, 08
        call    sheet_slide                             ; 1F83 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F88 _ 83. C4, 10
        sub     esp, 4                                  ; 1F8B _ 83. EC, 04
        push    dword [ebp+20H]                         ; 1F8E _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1F91 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1F94 _ FF. 75, 08
        call    sheet_level_updown                      ; 1F97 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F9C _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1F9F _ 8B. 45, F4
        leave                                           ; 1FA2 _ C9
        ret                                             ; 1FA3 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 1FA4 _ 55
        mov     ebp, esp                                ; 1FA5 _ 89. E5
        sub     esp, 24                                 ; 1FA7 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 1FAA _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 1FAD _ 0F AF. 45, 20
        mov     edx, eax                                ; 1FB1 _ 89. C2
        mov     eax, dword [memman]                     ; 1FB3 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1FB8 _ 83. EC, 08
        push    edx                                     ; 1FBB _ 52
        push    eax                                     ; 1FBC _ 50
        call    memman_alloc_4K                         ; 1FBD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FC2 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1FC5 _ 89. 45, F0
        sub     esp, 12                                 ; 1FC8 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1FCB _ FF. 75, 08
        call    sheet_alloc                             ; 1FCE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FD3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1FD6 _ 89. 45, F4
        sub     esp, 12                                 ; 1FD9 _ 83. EC, 0C
        push    99                                      ; 1FDC _ 6A, 63
        push    dword [ebp+20H]                         ; 1FDE _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 1FE1 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 1FE4 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1FE7 _ FF. 75, F4
        call    sheet_setbuf                            ; 1FEA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FEF _ 83. C4, 20
        sub     esp, 4                                  ; 1FF2 _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1FF5 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1FF8 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1FFB _ FF. 75, 08
        call    make_window8                            ; 1FFE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2003 _ 83. C4, 10
        call    task_alloc                              ; 2006 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 200B _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 200E _ 8B. 45, 0C
        mov     dword [eax+70H], 0                      ; 2011 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2018 _ 8B. 45, 0C
        mov     dword [eax+74H], 1073741824             ; 201B _ C7. 40, 74, 40000000
        call    get_code32_addr                         ; 2022 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 2027 _ F7. D8
        add     eax, task_b_main                        ; 2029 _ 05, 00000000(d)
        mov     edx, eax                                ; 202E _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 2030 _ 8B. 45, 0C
        mov     dword [eax+30H], edx                    ; 2033 _ 89. 50, 30
        mov     eax, dword [ebp+0CH]                    ; 2036 _ 8B. 45, 0C
        mov     dword [eax+58H], 0                      ; 2039 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2040 _ 8B. 45, 0C
        mov     dword [eax+5CH], 8                      ; 2043 _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp+0CH]                    ; 204A _ 8B. 45, 0C
        mov     dword [eax+60H], 32                     ; 204D _ C7. 40, 60, 00000020
        mov     eax, dword [ebp+0CH]                    ; 2054 _ 8B. 45, 0C
        mov     dword [eax+64H], 24                     ; 2057 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp+0CH]                    ; 205E _ 8B. 45, 0C
        mov     dword [eax+68H], 0                      ; 2061 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2068 _ 8B. 45, 0C
        mov     dword [eax+6CH], 16                     ; 206B _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2072 _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 2075 _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 2078 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 207B _ 8B. 45, 0C
        mov     dword [eax+48H], edx                    ; 207E _ 89. 50, 48
        mov     eax, dword [ebp+0CH]                    ; 2081 _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 2084 _ 8B. 40, 48
        add     eax, 4                                  ; 2087 _ 83. C0, 04
        mov     edx, eax                                ; 208A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 208C _ 8B. 45, F4
        mov     dword [edx], eax                        ; 208F _ 89. 02
        sub     esp, 4                                  ; 2091 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2094 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2097 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 209A _ FF. 75, 0C
        call    task_run                                ; 209D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20A2 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 20A5 _ FF. 75, 28
        push    dword [ebp+24H]                         ; 20A8 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 20AB _ FF. 75, F4
        push    dword [ebp+8H]                          ; 20AE _ FF. 75, 08
        call    sheet_slide                             ; 20B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20B6 _ 83. C4, 10
        sub     esp, 4                                  ; 20B9 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 20BC _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 20BF _ FF. 75, F4
        push    dword [ebp+8H]                          ; 20C2 _ FF. 75, 08
        call    sheet_level_updown                      ; 20C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20CA _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 20CD _ 8B. 45, F4
        leave                                           ; 20D0 _ C9
        ret                                             ; 20D1 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 20D2 _ 55
        mov     ebp, esp                                ; 20D3 _ 89. E5
        push    ebx                                     ; 20D5 _ 53
        sub     esp, 36                                 ; 20D6 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 20D9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 20DC _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 20DF _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 20E2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 20E5 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 20E8 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 20EB _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 20EE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20F1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20F4 _ 8B. 00
        push    0                                       ; 20F6 _ 6A, 00
        push    edx                                     ; 20F8 _ 52
        push    0                                       ; 20F9 _ 6A, 00
        push    0                                       ; 20FB _ 6A, 00
        push    8                                       ; 20FD _ 6A, 08
        push    dword [ebp-10H]                         ; 20FF _ FF. 75, F0
        push    eax                                     ; 2102 _ 50
        call    boxfill8                                ; 2103 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2108 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 210B _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 210E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2111 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2114 _ 8B. 00
        push    1                                       ; 2116 _ 6A, 01
        push    edx                                     ; 2118 _ 52
        push    1                                       ; 2119 _ 6A, 01
        push    1                                       ; 211B _ 6A, 01
        push    7                                       ; 211D _ 6A, 07
        push    dword [ebp-10H]                         ; 211F _ FF. 75, F0
        push    eax                                     ; 2122 _ 50
        call    boxfill8                                ; 2123 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2128 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 212B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 212E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2131 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2134 _ 8B. 00
        push    edx                                     ; 2136 _ 52
        push    0                                       ; 2137 _ 6A, 00
        push    0                                       ; 2139 _ 6A, 00
        push    0                                       ; 213B _ 6A, 00
        push    8                                       ; 213D _ 6A, 08
        push    dword [ebp-10H]                         ; 213F _ FF. 75, F0
        push    eax                                     ; 2142 _ 50
        call    boxfill8                                ; 2143 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2148 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 214B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 214E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2151 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2154 _ 8B. 00
        push    edx                                     ; 2156 _ 52
        push    1                                       ; 2157 _ 6A, 01
        push    1                                       ; 2159 _ 6A, 01
        push    1                                       ; 215B _ 6A, 01
        push    7                                       ; 215D _ 6A, 07
        push    dword [ebp-10H]                         ; 215F _ FF. 75, F0
        push    eax                                     ; 2162 _ 50
        call    boxfill8                                ; 2163 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2168 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 216B _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 216E _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2171 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2174 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2177 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 217A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 217D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2180 _ 8B. 00
        push    ebx                                     ; 2182 _ 53
        push    ecx                                     ; 2183 _ 51
        push    1                                       ; 2184 _ 6A, 01
        push    edx                                     ; 2186 _ 52
        push    15                                      ; 2187 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2189 _ FF. 75, F0
        push    eax                                     ; 218C _ 50
        call    boxfill8                                ; 218D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2192 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2195 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2198 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 219B _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 219E _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 21A1 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 21A4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 21A7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 21AA _ 8B. 00
        push    ebx                                     ; 21AC _ 53
        push    ecx                                     ; 21AD _ 51
        push    0                                       ; 21AE _ 6A, 00
        push    edx                                     ; 21B0 _ 52
        push    0                                       ; 21B1 _ 6A, 00
        push    dword [ebp-10H]                         ; 21B3 _ FF. 75, F0
        push    eax                                     ; 21B6 _ 50
        call    boxfill8                                ; 21B7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21BC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 21BF _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 21C2 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 21C5 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 21C8 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 21CB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 21CE _ 8B. 00
        push    ecx                                     ; 21D0 _ 51
        push    edx                                     ; 21D1 _ 52
        push    2                                       ; 21D2 _ 6A, 02
        push    2                                       ; 21D4 _ 6A, 02
        push    8                                       ; 21D6 _ 6A, 08
        push    dword [ebp-10H]                         ; 21D8 _ FF. 75, F0
        push    eax                                     ; 21DB _ 50
        call    boxfill8                                ; 21DC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21E1 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 21E4 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 21E7 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 21EA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 21ED _ 8B. 00
        push    20                                      ; 21EF _ 6A, 14
        push    edx                                     ; 21F1 _ 52
        push    3                                       ; 21F2 _ 6A, 03
        push    3                                       ; 21F4 _ 6A, 03
        push    12                                      ; 21F6 _ 6A, 0C
        push    dword [ebp-10H]                         ; 21F8 _ FF. 75, F0
        push    eax                                     ; 21FB _ 50
        call    boxfill8                                ; 21FC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2201 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2204 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2207 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 220A _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 220D _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2210 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2213 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2216 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2219 _ 8B. 00
        push    ebx                                     ; 221B _ 53
        push    ecx                                     ; 221C _ 51
        push    edx                                     ; 221D _ 52
        push    1                                       ; 221E _ 6A, 01
        push    15                                      ; 2220 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2222 _ FF. 75, F0
        push    eax                                     ; 2225 _ 50
        call    boxfill8                                ; 2226 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 222B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 222E _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2231 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2234 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2237 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 223A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 223D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2240 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2243 _ 8B. 00
        push    ebx                                     ; 2245 _ 53
        push    ecx                                     ; 2246 _ 51
        push    edx                                     ; 2247 _ 52
        push    0                                       ; 2248 _ 6A, 00
        push    0                                       ; 224A _ 6A, 00
        push    dword [ebp-10H]                         ; 224C _ FF. 75, F0
        push    eax                                     ; 224F _ 50
        call    boxfill8                                ; 2250 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2255 _ 83. C4, 1C
        sub     esp, 8                                  ; 2258 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 225B _ FF. 75, 10
        push    7                                       ; 225E _ 6A, 07
        push    4                                       ; 2260 _ 6A, 04
        push    8                                       ; 2262 _ 6A, 08
        push    dword [ebp+0CH]                         ; 2264 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2267 _ FF. 75, 08
        call    showString                              ; 226A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 226F _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 2272 _ C7. 45, E8, 00000000
        jmp     ?_083                                   ; 2279 _ EB, 7D

?_077:  mov     dword [ebp-14H], 0                      ; 227B _ C7. 45, EC, 00000000
        jmp     ?_082                                   ; 2282 _ EB, 6A

?_078:  mov     eax, dword [ebp-18H]                    ; 2284 _ 8B. 45, E8
        shl     eax, 4                                  ; 2287 _ C1. E0, 04
        mov     edx, eax                                ; 228A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 228C _ 8B. 45, EC
        add     eax, edx                                ; 228F _ 01. D0
        add     eax, closebtn.2533                      ; 2291 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 2296 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 2299 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 229C _ 80. 7D, E7, 40
        jnz     ?_079                                   ; 22A0 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 22A2 _ C6. 45, E7, 00
        jmp     ?_081                                   ; 22A6 _ EB, 16

?_079:  cmp     byte [ebp-19H], 36                      ; 22A8 _ 80. 7D, E7, 24
        jnz     ?_080                                   ; 22AC _ 75, 06
        mov     byte [ebp-19H], 15                      ; 22AE _ C6. 45, E7, 0F
        jmp     ?_081                                   ; 22B2 _ EB, 0A

?_080:  cmp     byte [ebp-19H], 81                      ; 22B4 _ 80. 7D, E7, 51
        jnz     ?_081                                   ; 22B8 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 22BA _ C6. 45, E7, 08
?_081:  mov     eax, dword [ebp+0CH]                    ; 22BE _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 22C1 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 22C3 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 22C6 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 22C9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 22CC _ 8B. 40, 04
        imul    ecx, eax                                ; 22CF _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 22D2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 22D5 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 22D8 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 22DB _ 8B. 45, EC
        add     eax, ebx                                ; 22DE _ 01. D8
        add     eax, ecx                                ; 22E0 _ 01. C8
        add     edx, eax                                ; 22E2 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 22E4 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 22E8 _ 88. 02
        add     dword [ebp-14H], 1                      ; 22EA _ 83. 45, EC, 01
?_082:  cmp     dword [ebp-14H], 15                     ; 22EE _ 83. 7D, EC, 0F
        jle     ?_078                                   ; 22F2 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 22F4 _ 83. 45, E8, 01
?_083:  cmp     dword [ebp-18H], 13                     ; 22F8 _ 83. 7D, E8, 0D
        jle     ?_077                                   ; 22FC _ 0F 8E, FFFFFF79
        nop                                             ; 2302 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2303 _ 8B. 5D, FC
        leave                                           ; 2306 _ C9
        ret                                             ; 2307 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2308 _ 55
        mov     ebp, esp                                ; 2309 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 230B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 230E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2314 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2317 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 231E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2321 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2328 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 232B _ C7. 40, 0C, 00000000
        nop                                             ; 2332 _ 90
        pop     ebp                                     ; 2333 _ 5D
        ret                                             ; 2334 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2335 _ 55
        mov     ebp, esp                                ; 2336 _ 89. E5
        sub     esp, 16                                 ; 2338 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 233B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2342 _ C7. 45, FC, 00000000
        jmp     ?_085                                   ; 2349 _ EB, 14

?_084:  mov     eax, dword [ebp+8H]                     ; 234B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 234E _ 8B. 55, FC
        add     edx, 2                                  ; 2351 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2354 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2358 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 235B _ 83. 45, FC, 01
?_085:  mov     eax, dword [ebp+8H]                     ; 235F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2362 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2364 _ 39. 45, FC
        jl      ?_084                                   ; 2367 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2369 _ 8B. 45, F8
        leave                                           ; 236C _ C9
        ret                                             ; 236D _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 236E _ 55
        mov     ebp, esp                                ; 236F _ 89. E5
        sub     esp, 16                                 ; 2371 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2374 _ C7. 45, F8, 00000000
        jmp     ?_089                                   ; 237B _ E9, 00000085

?_086:  mov     eax, dword [ebp+8H]                     ; 2380 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2383 _ 8B. 55, F8
        add     edx, 2                                  ; 2386 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2389 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 238D _ 39. 45, 0C
        ja      ?_088                                   ; 2390 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2392 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2395 _ 8B. 55, F8
        add     edx, 2                                  ; 2398 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 239B _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 239E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 23A1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 23A4 _ 8B. 55, F8
        add     edx, 2                                  ; 23A7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 23AA _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 23AD _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 23B0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 23B3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 23B6 _ 8B. 55, F8
        add     edx, 2                                  ; 23B9 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 23BC _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 23BF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 23C2 _ 8B. 55, F8
        add     edx, 2                                  ; 23C5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 23C8 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 23CC _ 2B. 45, 0C
        mov     edx, eax                                ; 23CF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 23D1 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 23D4 _ 8B. 4D, F8
        add     ecx, 2                                  ; 23D7 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 23DA _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 23DE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 23E1 _ 8B. 55, F8
        add     edx, 2                                  ; 23E4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 23E7 _ 8B. 44 D0, 04
        test    eax, eax                                ; 23EB _ 85. C0
        jnz     ?_087                                   ; 23ED _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 23EF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23F2 _ 8B. 00
        lea     edx, [eax-1H]                           ; 23F4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23F7 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 23FA _ 89. 10
?_087:  mov     eax, dword [ebp-4H]                     ; 23FC _ 8B. 45, FC
        jmp     ?_090                                   ; 23FF _ EB, 17

?_088:  add     dword [ebp-8H], 1                       ; 2401 _ 83. 45, F8, 01
?_089:  mov     eax, dword [ebp+8H]                     ; 2405 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2408 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 240A _ 39. 45, F8
        jl      ?_086                                   ; 240D _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2413 _ B8, 00000000
?_090:  leave                                           ; 2418 _ C9
        ret                                             ; 2419 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 241A _ 55
        mov     ebp, esp                                ; 241B _ 89. E5
        sub     esp, 16                                 ; 241D _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2420 _ 8B. 45, 0C
        add     eax, 4095                               ; 2423 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2428 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 242D _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2430 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2433 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2436 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 243B _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 243E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2441 _ 8B. 45, FC
        leave                                           ; 2444 _ C9
        ret                                             ; 2445 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2446 _ 55
        mov     ebp, esp                                ; 2447 _ 89. E5
        push    ebx                                     ; 2449 _ 53
        sub     esp, 16                                 ; 244A _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 244D _ C7. 45, F4, 00000000
        jmp     ?_092                                   ; 2454 _ EB, 15

?_091:  mov     eax, dword [ebp+8H]                     ; 2456 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2459 _ 8B. 55, F4
        add     edx, 2                                  ; 245C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 245F _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2462 _ 39. 45, 0C
        jc      ?_093                                   ; 2465 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2467 _ 83. 45, F4, 01
?_092:  mov     eax, dword [ebp+8H]                     ; 246B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 246E _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2470 _ 39. 45, F4
        jl      ?_091                                   ; 2473 _ 7C, E1
        jmp     ?_094                                   ; 2475 _ EB, 01

?_093:  nop                                             ; 2477 _ 90
?_094:  cmp     dword [ebp-0CH], 0                      ; 2478 _ 83. 7D, F4, 00
        jle     ?_096                                   ; 247C _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2482 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2485 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2488 _ 8B. 45, 08
        add     edx, 2                                  ; 248B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 248E _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2491 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2494 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2497 _ 8B. 45, 08
        add     ecx, 2                                  ; 249A _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 249D _ 8B. 44 C8, 04
        add     eax, edx                                ; 24A1 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 24A3 _ 39. 45, 0C
        jne     ?_096                                   ; 24A6 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 24AC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 24AF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24B2 _ 8B. 45, 08
        add     edx, 2                                  ; 24B5 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 24B8 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 24BC _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 24BF _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 24C2 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24C5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24C8 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 24CB _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 24CE _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 24D2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24D5 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 24D7 _ 39. 45, F4
        jge     ?_095                                   ; 24DA _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 24DC _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 24DF _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24E2 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24E5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24E8 _ 8B. 55, F4
        add     edx, 2                                  ; 24EB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 24EE _ 8B. 04 D0
        cmp     ecx, eax                                ; 24F1 _ 39. C1
        jnz     ?_095                                   ; 24F3 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 24F5 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 24F8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24FB _ 8B. 45, 08
        add     edx, 2                                  ; 24FE _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2501 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2505 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2508 _ 8B. 4D, F4
        add     ecx, 2                                  ; 250B _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 250E _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2512 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2515 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2518 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 251B _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 251E _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2521 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2525 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2528 _ 8B. 00
        lea     edx, [eax-1H]                           ; 252A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 252D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2530 _ 89. 10
?_095:  mov     eax, 0                                  ; 2532 _ B8, 00000000
        jmp     ?_102                                   ; 2537 _ E9, 0000011C

?_096:  mov     eax, dword [ebp+8H]                     ; 253C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 253F _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2541 _ 39. 45, F4
        jge     ?_097                                   ; 2544 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2546 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2549 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 254C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 254F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2552 _ 8B. 55, F4
        add     edx, 2                                  ; 2555 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2558 _ 8B. 04 D0
        cmp     ecx, eax                                ; 255B _ 39. C1
        jnz     ?_097                                   ; 255D _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 255F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2562 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2565 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2568 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 256B _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 256E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2571 _ 8B. 55, F4
        add     edx, 2                                  ; 2574 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2577 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 257B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 257E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2581 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2584 _ 8B. 55, F4
        add     edx, 2                                  ; 2587 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 258A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 258E _ B8, 00000000
        jmp     ?_102                                   ; 2593 _ E9, 000000C0

?_097:  mov     eax, dword [ebp+8H]                     ; 2598 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 259B _ 8B. 00
        cmp     eax, 4095                               ; 259D _ 3D, 00000FFF
        jg      ?_101                                   ; 25A2 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 25A8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25AB _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 25AD _ 89. 45, F8
        jmp     ?_099                                   ; 25B0 _ EB, 28

?_098:  mov     eax, dword [ebp-8H]                     ; 25B2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 25B5 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 25B8 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 25BB _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 25BE _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 25C1 _ 8B. 45, 08
        add     edx, 2                                  ; 25C4 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 25C7 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 25CA _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 25CC _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 25CF _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 25D2 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 25D6 _ 83. 6D, F8, 01
?_099:  mov     eax, dword [ebp-8H]                     ; 25DA _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 25DD _ 3B. 45, F4
        jg      ?_098                                   ; 25E0 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 25E2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25E5 _ 8B. 00
        lea     edx, [eax+1H]                           ; 25E7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25EA _ 8B. 45, 08
        mov     dword [eax], edx                        ; 25ED _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 25EF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 25F2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 25F5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25F8 _ 8B. 00
        cmp     edx, eax                                ; 25FA _ 39. C2
        jge     ?_100                                   ; 25FC _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 25FE _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2601 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2603 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2606 _ 89. 50, 04
?_100:  mov     eax, dword [ebp+8H]                     ; 2609 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 260C _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 260F _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2612 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2615 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2618 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 261B _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 261E _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2621 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2624 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2628 _ B8, 00000000
        jmp     ?_102                                   ; 262D _ EB, 29

?_101:  mov     eax, dword [ebp+8H]                     ; 262F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2632 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2635 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2638 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 263B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 263E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2641 _ 8B. 40, 08
        mov     edx, eax                                ; 2644 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2646 _ 8B. 45, 10
        add     eax, edx                                ; 2649 _ 01. D0
        mov     edx, eax                                ; 264B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 264D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2650 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2653 _ B8, FFFFFFFF
?_102:  add     esp, 16                                 ; 2658 _ 83. C4, 10
        pop     ebx                                     ; 265B _ 5B
        pop     ebp                                     ; 265C _ 5D
        ret                                             ; 265D _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 265E _ 55
        mov     ebp, esp                                ; 265F _ 89. E5
        sub     esp, 16                                 ; 2661 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2664 _ 8B. 45, 10
        add     eax, 4095                               ; 2667 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 266C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2671 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2674 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2677 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 267A _ FF. 75, 08
        call    memman_free                             ; 267D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2682 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2685 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2688 _ 8B. 45, FC
        leave                                           ; 268B _ C9
        ret                                             ; 268C _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 268D _ 55
        mov     ebp, esp                                ; 268E _ 89. E5
        sub     esp, 24                                 ; 2690 _ 83. EC, 18
        sub     esp, 8                                  ; 2693 _ 83. EC, 08
        push    9232                                    ; 2696 _ 68, 00002410
        push    dword [ebp+8H]                          ; 269B _ FF. 75, 08
        call    memman_alloc_4K                         ; 269E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26A3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 26A6 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 26A9 _ 83. 7D, F4, 00
        jnz     ?_103                                   ; 26AD _ 75, 0A
        mov     eax, 0                                  ; 26AF _ B8, 00000000
        jmp     ?_107                                   ; 26B4 _ E9, 0000009A

?_103:  mov     eax, dword [ebp+10H]                    ; 26B9 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 26BC _ 0F AF. 45, 14
        sub     esp, 8                                  ; 26C0 _ 83. EC, 08
        push    eax                                     ; 26C3 _ 50
        push    dword [ebp+8H]                          ; 26C4 _ FF. 75, 08
        call    memman_alloc_4K                         ; 26C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26CC _ 83. C4, 10
        mov     edx, eax                                ; 26CF _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 26D1 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 26D4 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 26D7 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 26DA _ 8B. 40, 04
        test    eax, eax                                ; 26DD _ 85. C0
        jnz     ?_104                                   ; 26DF _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 26E1 _ 8B. 45, F4
        sub     esp, 4                                  ; 26E4 _ 83. EC, 04
        push    9232                                    ; 26E7 _ 68, 00002410
        push    eax                                     ; 26EC _ 50
        push    dword [ebp+8H]                          ; 26ED _ FF. 75, 08
        call    memman_free_4K                          ; 26F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26F5 _ 83. C4, 10
        mov     eax, 0                                  ; 26F8 _ B8, 00000000
        jmp     ?_107                                   ; 26FD _ EB, 54

?_104:  mov     eax, dword [ebp-0CH]                    ; 26FF _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2702 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2705 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2707 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 270A _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 270D _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2710 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2713 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2716 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2719 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 271C _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2723 _ C7. 45, F0, 00000000
        jmp     ?_106                                   ; 272A _ EB, 1B

?_105:  mov     eax, dword [ebp-0CH]                    ; 272C _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 272F _ 8B. 55, F0
        add     edx, 33                                 ; 2732 _ 83. C2, 21
        shl     edx, 5                                  ; 2735 _ C1. E2, 05
        add     eax, edx                                ; 2738 _ 01. D0
        add     eax, 16                                 ; 273A _ 83. C0, 10
        mov     dword [eax], 0                          ; 273D _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2743 _ 83. 45, F0, 01
?_106:  cmp     dword [ebp-10H], 255                    ; 2747 _ 81. 7D, F0, 000000FF
        jle     ?_105                                   ; 274E _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2750 _ 8B. 45, F4
?_107:  leave                                           ; 2753 _ C9
        ret                                             ; 2754 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2755 _ 55
        mov     ebp, esp                                ; 2756 _ 89. E5
        sub     esp, 16                                 ; 2758 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 275B _ C7. 45, F8, 00000000
        jmp     ?_110                                   ; 2762 _ EB, 4B

?_108:  mov     eax, dword [ebp+8H]                     ; 2764 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2767 _ 8B. 55, F8
        add     edx, 33                                 ; 276A _ 83. C2, 21
        shl     edx, 5                                  ; 276D _ C1. E2, 05
        add     eax, edx                                ; 2770 _ 01. D0
        add     eax, 16                                 ; 2772 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2775 _ 8B. 00
        test    eax, eax                                ; 2777 _ 85. C0
        jnz     ?_109                                   ; 2779 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 277B _ 8B. 45, F8
        shl     eax, 5                                  ; 277E _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2781 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2787 _ 8B. 45, 08
        add     eax, edx                                ; 278A _ 01. D0
        add     eax, 4                                  ; 278C _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 278F _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2792 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2795 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 279C _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 279F _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 27A6 _ 8B. 45, FC
        jmp     ?_111                                   ; 27A9 _ EB, 12

?_109:  add     dword [ebp-8H], 1                       ; 27AB _ 83. 45, F8, 01
?_110:  cmp     dword [ebp-8H], 255                     ; 27AF _ 81. 7D, F8, 000000FF
        jle     ?_108                                   ; 27B6 _ 7E, AC
        mov     eax, 0                                  ; 27B8 _ B8, 00000000
?_111:  leave                                           ; 27BD _ C9
        ret                                             ; 27BE _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 27BF _ 55
        mov     ebp, esp                                ; 27C0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 27C2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 27C5 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 27C8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 27CA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27CD _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 27D0 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27D3 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 27D6 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 27D9 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 27DC _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 27DF _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 27E2 _ 89. 50, 14
        nop                                             ; 27E5 _ 90
        pop     ebp                                     ; 27E6 _ 5D
        ret                                             ; 27E7 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 27E8 _ 55
        mov     ebp, esp                                ; 27E9 _ 89. E5
        push    esi                                     ; 27EB _ 56
        push    ebx                                     ; 27EC _ 53
        sub     esp, 32                                 ; 27ED _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 27F0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 27F3 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 27F6 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 27F9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27FC _ 8B. 40, 10
        add     eax, 1                                  ; 27FF _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2802 _ 39. 45, 10
        jle     ?_112                                   ; 2805 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2807 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 280A _ 8B. 40, 10
        add     eax, 1                                  ; 280D _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2810 _ 89. 45, 10
?_112:  cmp     dword [ebp+10H], -1                     ; 2813 _ 83. 7D, 10, FF
        jge     ?_113                                   ; 2817 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2819 _ C7. 45, 10, FFFFFFFF
?_113:  mov     eax, dword [ebp+0CH]                    ; 2820 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2823 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2826 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2829 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 282C _ 3B. 45, 10
        jle     ?_120                                   ; 282F _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2835 _ 83. 7D, 10, 00
        js      ?_116                                   ; 2839 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 283F _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2842 _ 89. 45, E4
        jmp     ?_115                                   ; 2845 _ EB, 34

?_114:  mov     eax, dword [ebp-1CH]                    ; 2847 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 284A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 284D _ 8B. 45, 08
        add     edx, 4                                  ; 2850 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2853 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2857 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 285A _ 8B. 4D, E4
        add     ecx, 4                                  ; 285D _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2860 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2864 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2867 _ 8B. 55, E4
        add     edx, 4                                  ; 286A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 286D _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2871 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2874 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2877 _ 83. 6D, E4, 01
?_115:  mov     eax, dword [ebp-1CH]                    ; 287B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 287E _ 3B. 45, 10
        jg      ?_114                                   ; 2881 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2883 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2886 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2889 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 288C _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 288F _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2893 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2896 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2899 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 289C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 289F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28A2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28A5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28A8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28AB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28AE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28B1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28B4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 28B7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28BA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28BD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28C0 _ 8B. 40, 0C
        sub     esp, 8                                  ; 28C3 _ 83. EC, 08
        push    esi                                     ; 28C6 _ 56
        push    ebx                                     ; 28C7 _ 53
        push    ecx                                     ; 28C8 _ 51
        push    edx                                     ; 28C9 _ 52
        push    eax                                     ; 28CA _ 50
        push    dword [ebp+8H]                          ; 28CB _ FF. 75, 08
        call    sheet_refreshmap                        ; 28CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28D3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 28D6 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 28D9 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 28DC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28DF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28E2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28E5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28E8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28EB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28EE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28F1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28F4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 28F7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 28FA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28FD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2900 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2903 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2906 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2909 _ FF. 75, F4
        push    esi                                     ; 290C _ 56
        push    ebx                                     ; 290D _ 53
        push    ecx                                     ; 290E _ 51
        push    edx                                     ; 290F _ 52
        push    eax                                     ; 2910 _ 50
        push    dword [ebp+8H]                          ; 2911 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2914 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2919 _ 83. C4, 20
        jmp     ?_127                                   ; 291C _ E9, 00000244

?_116:  mov     eax, dword [ebp+8H]                     ; 2921 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2924 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2927 _ 39. 45, F4
        jge     ?_119                                   ; 292A _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 292C _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 292F _ 89. 45, E8
        jmp     ?_118                                   ; 2932 _ EB, 34

?_117:  mov     eax, dword [ebp-18H]                    ; 2934 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2937 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 293A _ 8B. 45, 08
        add     edx, 4                                  ; 293D _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2940 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2944 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2947 _ 8B. 4D, E8
        add     ecx, 4                                  ; 294A _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 294D _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2951 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2954 _ 8B. 55, E8
        add     edx, 4                                  ; 2957 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 295A _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 295E _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2961 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2964 _ 83. 45, E8, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 2968 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 296B _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 296E _ 39. 45, E8
        jl      ?_117                                   ; 2971 _ 7C, C1
?_119:  mov     eax, dword [ebp+8H]                     ; 2973 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2976 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2979 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 297C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 297F _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2982 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2985 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2988 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 298B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 298E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2991 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2994 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2997 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 299A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 299D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 29A0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29A3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29A6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 29A9 _ 8B. 40, 0C
        sub     esp, 8                                  ; 29AC _ 83. EC, 08
        push    0                                       ; 29AF _ 6A, 00
        push    ebx                                     ; 29B1 _ 53
        push    ecx                                     ; 29B2 _ 51
        push    edx                                     ; 29B3 _ 52
        push    eax                                     ; 29B4 _ 50
        push    dword [ebp+8H]                          ; 29B5 _ FF. 75, 08
        call    sheet_refreshmap                        ; 29B8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29BD _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 29C0 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 29C3 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 29C6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29C9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29CC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 29CF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 29D2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 29D5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 29D8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 29DB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 29DE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 29E1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 29E4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29E7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 29EA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 29ED _ 8B. 40, 0C
        sub     esp, 4                                  ; 29F0 _ 83. EC, 04
        push    esi                                     ; 29F3 _ 56
        push    0                                       ; 29F4 _ 6A, 00
        push    ebx                                     ; 29F6 _ 53
        push    ecx                                     ; 29F7 _ 51
        push    edx                                     ; 29F8 _ 52
        push    eax                                     ; 29F9 _ 50
        push    dword [ebp+8H]                          ; 29FA _ FF. 75, 08
        call    sheet_refresh_new                       ; 29FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A02 _ 83. C4, 20
        jmp     ?_127                                   ; 2A05 _ E9, 0000015B

?_120:  mov     eax, dword [ebp-0CH]                    ; 2A0A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2A0D _ 3B. 45, 10
        jge     ?_127                                   ; 2A10 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2A16 _ 83. 7D, F4, 00
        js      ?_123                                   ; 2A1A _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2A1C _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2A1F _ 89. 45, EC
        jmp     ?_122                                   ; 2A22 _ EB, 34

?_121:  mov     eax, dword [ebp-14H]                    ; 2A24 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2A27 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A2A _ 8B. 45, 08
        add     edx, 4                                  ; 2A2D _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2A30 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2A34 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2A37 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2A3A _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2A3D _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2A41 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2A44 _ 8B. 55, EC
        add     edx, 4                                  ; 2A47 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A4A _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2A4E _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2A51 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2A54 _ 83. 45, EC, 01
?_122:  mov     eax, dword [ebp-14H]                    ; 2A58 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2A5B _ 3B. 45, 10
        jl      ?_121                                   ; 2A5E _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2A60 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2A63 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2A66 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2A69 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2A6C _ 89. 54 88, 04
        jmp     ?_126                                   ; 2A70 _ EB, 72

?_123:  cmp     dword [ebp-0CH], 0                      ; 2A72 _ 83. 7D, F4, 00
        jns     ?_126                                   ; 2A76 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2A78 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A7B _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2A7E _ 89. 45, F0
        jmp     ?_125                                   ; 2A81 _ EB, 3A

?_124:  mov     eax, dword [ebp-10H]                    ; 2A83 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2A86 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2A89 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2A8C _ 8B. 55, F0
        add     edx, 4                                  ; 2A8F _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2A92 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2A96 _ 8B. 45, 08
        add     ecx, 4                                  ; 2A99 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2A9C _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2AA0 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2AA3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2AA6 _ 8B. 45, 08
        add     edx, 4                                  ; 2AA9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2AAC _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2AB0 _ 8B. 55, F0
        add     edx, 1                                  ; 2AB3 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2AB6 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2AB9 _ 83. 6D, F0, 01
?_125:  mov     eax, dword [ebp-10H]                    ; 2ABD _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2AC0 _ 3B. 45, 10
        jge     ?_124                                   ; 2AC3 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2AC5 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2AC8 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2ACB _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2ACE _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2AD1 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2AD5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2AD8 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2ADB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2ADE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2AE1 _ 89. 50, 10
?_126:  mov     eax, dword [ebp+0CH]                    ; 2AE4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AE7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2AEA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2AED _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2AF0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2AF3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2AF6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2AF9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2AFC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2AFF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2B02 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B05 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B08 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B0B _ 8B. 40, 0C
        sub     esp, 8                                  ; 2B0E _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2B11 _ FF. 75, 10
        push    ebx                                     ; 2B14 _ 53
        push    ecx                                     ; 2B15 _ 51
        push    edx                                     ; 2B16 _ 52
        push    eax                                     ; 2B17 _ 50
        push    dword [ebp+8H]                          ; 2B18 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2B1B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B20 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2B23 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B26 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B29 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2B2C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2B2F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2B32 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2B35 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2B38 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2B3B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2B3E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2B41 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B44 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B47 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B4A _ 8B. 40, 0C
        sub     esp, 4                                  ; 2B4D _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2B50 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2B53 _ FF. 75, 10
        push    ebx                                     ; 2B56 _ 53
        push    ecx                                     ; 2B57 _ 51
        push    edx                                     ; 2B58 _ 52
        push    eax                                     ; 2B59 _ 50
        push    dword [ebp+8H]                          ; 2B5A _ FF. 75, 08
        call    sheet_refresh_new                       ; 2B5D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B62 _ 83. C4, 20
?_127:  nop                                             ; 2B65 _ 90
        lea     esp, [ebp-8H]                           ; 2B66 _ 8D. 65, F8
        pop     ebx                                     ; 2B69 _ 5B
        pop     esi                                     ; 2B6A _ 5E
        pop     ebp                                     ; 2B6B _ 5D
        ret                                             ; 2B6C _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2B6D _ 55
        mov     ebp, esp                                ; 2B6E _ 89. E5
        push    edi                                     ; 2B70 _ 57
        push    esi                                     ; 2B71 _ 56
        push    ebx                                     ; 2B72 _ 53
        sub     esp, 28                                 ; 2B73 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2B76 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B79 _ 8B. 40, 18
        test    eax, eax                                ; 2B7C _ 85. C0
        js      ?_128                                   ; 2B7E _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2B80 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2B83 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2B86 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2B89 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2B8C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B8F _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2B92 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2B95 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2B98 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2B9B _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2B9E _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2BA1 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2BA4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2BA7 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2BAA _ 8B. 45, 14
        add     edx, eax                                ; 2BAD _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2BAF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2BB2 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2BB5 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2BB8 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2BBB _ 03. 45, E4
        sub     esp, 4                                  ; 2BBE _ 83. EC, 04
        push    ebx                                     ; 2BC1 _ 53
        push    ecx                                     ; 2BC2 _ 51
        push    edi                                     ; 2BC3 _ 57
        push    esi                                     ; 2BC4 _ 56
        push    edx                                     ; 2BC5 _ 52
        push    eax                                     ; 2BC6 _ 50
        push    dword [ebp+8H]                          ; 2BC7 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2BCA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BCF _ 83. C4, 20
?_128:  mov     eax, 0                                  ; 2BD2 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2BD7 _ 8D. 65, F4
        pop     ebx                                     ; 2BDA _ 5B
        pop     esi                                     ; 2BDB _ 5E
        pop     edi                                     ; 2BDC _ 5F
        pop     ebp                                     ; 2BDD _ 5D
        ret                                             ; 2BDE _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2BDF _ 55
        mov     ebp, esp                                ; 2BE0 _ 89. E5
        push    esi                                     ; 2BE2 _ 56
        push    ebx                                     ; 2BE3 _ 53
        sub     esp, 16                                 ; 2BE4 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2BE7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2BEA _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2BED _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2BF0 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2BF3 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2BF6 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2BF9 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2BFC _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2BFF _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C02 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2C05 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2C08 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C0B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C0E _ 8B. 40, 18
        test    eax, eax                                ; 2C11 _ 85. C0
        js      ?_129                                   ; 2C13 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2C19 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2C1C _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2C1F _ 8B. 45, F4
        add     edx, eax                                ; 2C22 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2C24 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2C27 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2C2A _ 8B. 45, F0
        add     eax, ecx                                ; 2C2D _ 01. C8
        sub     esp, 8                                  ; 2C2F _ 83. EC, 08
        push    0                                       ; 2C32 _ 6A, 00
        push    edx                                     ; 2C34 _ 52
        push    eax                                     ; 2C35 _ 50
        push    dword [ebp-0CH]                         ; 2C36 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2C39 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2C3C _ FF. 75, 08
        call    sheet_refreshmap                        ; 2C3F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C44 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2C47 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C4A _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2C4D _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2C50 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2C53 _ 8B. 55, 14
        add     ecx, edx                                ; 2C56 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2C58 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2C5B _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2C5E _ 8B. 55, 10
        add     edx, ebx                                ; 2C61 _ 01. DA
        sub     esp, 8                                  ; 2C63 _ 83. EC, 08
        push    eax                                     ; 2C66 _ 50
        push    ecx                                     ; 2C67 _ 51
        push    edx                                     ; 2C68 _ 52
        push    dword [ebp+14H]                         ; 2C69 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2C6C _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2C6F _ FF. 75, 08
        call    sheet_refreshmap                        ; 2C72 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C77 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2C7A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C7D _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2C80 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2C83 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2C86 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2C89 _ 8B. 45, F4
        add     edx, eax                                ; 2C8C _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2C8E _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2C91 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2C94 _ 8B. 45, F0
        add     eax, ebx                                ; 2C97 _ 01. D8
        sub     esp, 4                                  ; 2C99 _ 83. EC, 04
        push    ecx                                     ; 2C9C _ 51
        push    0                                       ; 2C9D _ 6A, 00
        push    edx                                     ; 2C9F _ 52
        push    eax                                     ; 2CA0 _ 50
        push    dword [ebp-0CH]                         ; 2CA1 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2CA4 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2CA7 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2CAA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2CAF _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2CB2 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2CB5 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2CB8 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2CBB _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2CBE _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2CC1 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2CC4 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2CC7 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2CC9 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2CCC _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2CCF _ 8B. 4D, 10
        add     ecx, esi                                ; 2CD2 _ 01. F1
        sub     esp, 4                                  ; 2CD4 _ 83. EC, 04
        push    edx                                     ; 2CD7 _ 52
        push    eax                                     ; 2CD8 _ 50
        push    ebx                                     ; 2CD9 _ 53
        push    ecx                                     ; 2CDA _ 51
        push    dword [ebp+14H]                         ; 2CDB _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2CDE _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2CE1 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2CE4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2CE9 _ 83. C4, 20
?_129:  nop                                             ; 2CEC _ 90
        lea     esp, [ebp-8H]                           ; 2CED _ 8D. 65, F8
        pop     ebx                                     ; 2CF0 _ 5B
        pop     esi                                     ; 2CF1 _ 5E
        pop     ebp                                     ; 2CF2 _ 5D
        ret                                             ; 2CF3 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2CF4 _ 55
        mov     ebp, esp                                ; 2CF5 _ 89. E5
        sub     esp, 48                                 ; 2CF7 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2CFA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2CFD _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2CFF _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2D02 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2D05 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2D08 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2D0B _ 83. 7D, 0C, 00
        jns     ?_130                                   ; 2D0F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2D11 _ C7. 45, 0C, 00000000
?_130:  cmp     dword [ebp+10H], 8                      ; 2D18 _ 83. 7D, 10, 08
        jg      ?_131                                   ; 2D1C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2D1E _ C7. 45, 10, 00000000
?_131:  mov     eax, dword [ebp+8H]                     ; 2D25 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D28 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2D2B _ 39. 45, 14
        jle     ?_132                                   ; 2D2E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2D30 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D33 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2D36 _ 89. 45, 14
?_132:  mov     eax, dword [ebp+8H]                     ; 2D39 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D3C _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2D3F _ 39. 45, 18
        jle     ?_133                                   ; 2D42 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2D44 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D47 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2D4A _ 89. 45, 18
?_133:  mov     eax, dword [ebp+1CH]                    ; 2D4D _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2D50 _ 89. 45, DC
        jmp     ?_140                                   ; 2D53 _ E9, 00000118

?_134:  mov     eax, dword [ebp+8H]                     ; 2D58 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2D5B _ 8B. 55, DC
        add     edx, 4                                  ; 2D5E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D61 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2D65 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2D68 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2D6B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2D6D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2D70 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2D73 _ 8B. 55, 08
        add     edx, 1044                               ; 2D76 _ 81. C2, 00000414
        sub     eax, edx                                ; 2D7C _ 29. D0
        sar     eax, 5                                  ; 2D7E _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2D81 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2D84 _ C7. 45, E0, 00000000
        jmp     ?_139                                   ; 2D8B _ E9, 000000CD

?_135:  mov     eax, dword [ebp-10H]                    ; 2D90 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2D93 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2D96 _ 8B. 45, E0
        add     eax, edx                                ; 2D99 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2D9B _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2D9E _ C7. 45, E4, 00000000
        jmp     ?_138                                   ; 2DA5 _ E9, 000000A0

?_136:  mov     eax, dword [ebp-10H]                    ; 2DAA _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2DAD _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2DB0 _ 8B. 45, E4
        add     eax, edx                                ; 2DB3 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2DB5 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2DB8 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2DBB _ 3B. 45, FC
        jg      ?_137                                   ; 2DBE _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2DC4 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2DC7 _ 3B. 45, 14
        jge     ?_137                                   ; 2DCA _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2DCC _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2DCF _ 3B. 45, F8
        jg      ?_137                                   ; 2DD2 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2DD4 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2DD7 _ 3B. 45, 18
        jge     ?_137                                   ; 2DDA _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2DDC _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2DDF _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2DE2 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2DE6 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2DE8 _ 8B. 45, E4
        add     eax, edx                                ; 2DEB _ 01. D0
        mov     edx, eax                                ; 2DED _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2DEF _ 8B. 45, F4
        add     eax, edx                                ; 2DF2 _ 01. D0
        movzx   eax, byte [eax]                         ; 2DF4 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2DF7 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2DFA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DFD _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2E00 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2E04 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2E06 _ 8B. 45, FC
        add     eax, edx                                ; 2E09 _ 01. D0
        mov     edx, eax                                ; 2E0B _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2E0D _ 8B. 45, EC
        add     eax, edx                                ; 2E10 _ 01. D0
        movzx   eax, byte [eax]                         ; 2E12 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2E15 _ 38. 45, DA
        jnz     ?_137                                   ; 2E18 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2E1A _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2E1E _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2E21 _ 8B. 40, 14
        cmp     edx, eax                                ; 2E24 _ 39. C2
        jz      ?_137                                   ; 2E26 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2E28 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E2B _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2E2E _ 0F AF. 45, F8
        mov     edx, eax                                ; 2E32 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2E34 _ 8B. 45, FC
        add     eax, edx                                ; 2E37 _ 01. D0
        mov     edx, eax                                ; 2E39 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2E3B _ 8B. 45, E8
        add     edx, eax                                ; 2E3E _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2E40 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2E44 _ 88. 02
?_137:  add     dword [ebp-1CH], 1                      ; 2E46 _ 83. 45, E4, 01
?_138:  mov     eax, dword [ebp-10H]                    ; 2E4A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2E4D _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2E50 _ 39. 45, E4
        jl      ?_136                                   ; 2E53 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2E59 _ 83. 45, E0, 01
?_139:  mov     eax, dword [ebp-10H]                    ; 2E5D _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2E60 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2E63 _ 39. 45, E0
        jl      ?_135                                   ; 2E66 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2E6C _ 83. 45, DC, 01
?_140:  mov     eax, dword [ebp-24H]                    ; 2E70 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2E73 _ 3B. 45, 20
        jle     ?_134                                   ; 2E76 _ 0F 8E, FFFFFEDC
        nop                                             ; 2E7C _ 90
        leave                                           ; 2E7D _ C9
        ret                                             ; 2E7E _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2E7F _ 55
        mov     ebp, esp                                ; 2E80 _ 89. E5
        sub     esp, 64                                 ; 2E82 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2E85 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2E88 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2E8B _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2E8E _ 83. 7D, 0C, 00
        jns     ?_141                                   ; 2E92 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2E94 _ C7. 45, 0C, 00000000
?_141:  mov     eax, dword [ebp+8H]                     ; 2E9B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E9E _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2EA1 _ 39. 45, 0C
        jle     ?_142                                   ; 2EA4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2EA6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2EA9 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2EAC _ 89. 45, 0C
?_142:  cmp     dword [ebp+10H], 0                      ; 2EAF _ 83. 7D, 10, 00
        jns     ?_143                                   ; 2EB3 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2EB5 _ C7. 45, 10, 00000000
?_143:  mov     eax, dword [ebp+8H]                     ; 2EBC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2EBF _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2EC2 _ 39. 45, 10
        jle     ?_144                                   ; 2EC5 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2EC7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2ECA _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2ECD _ 89. 45, 10
?_144:  mov     eax, dword [ebp+1CH]                    ; 2ED0 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2ED3 _ 89. 45, E0
        jmp     ?_155                                   ; 2ED6 _ E9, 00000140

?_145:  mov     eax, dword [ebp+8H]                     ; 2EDB _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2EDE _ 8B. 55, E0
        add     edx, 4                                  ; 2EE1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2EE4 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2EE8 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2EEB _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2EEE _ 8B. 55, 08
        add     edx, 1044                               ; 2EF1 _ 81. C2, 00000414
        sub     eax, edx                                ; 2EF7 _ 29. D0
        sar     eax, 5                                  ; 2EF9 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2EFC _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2EFF _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2F02 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2F04 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2F07 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2F0A _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2F0D _ 8B. 55, 0C
        sub     edx, eax                                ; 2F10 _ 29. C2
        mov     eax, edx                                ; 2F12 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2F14 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2F17 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2F1A _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2F1D _ 8B. 55, 10
        sub     edx, eax                                ; 2F20 _ 29. C2
        mov     eax, edx                                ; 2F22 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2F24 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2F27 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2F2A _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2F2D _ 8B. 55, 14
        sub     edx, eax                                ; 2F30 _ 29. C2
        mov     eax, edx                                ; 2F32 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2F34 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2F37 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2F3A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2F3D _ 8B. 55, 18
        sub     edx, eax                                ; 2F40 _ 29. C2
        mov     eax, edx                                ; 2F42 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2F44 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2F47 _ 83. 7D, D0, 00
        jns     ?_146                                   ; 2F4B _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2F4D _ C7. 45, D0, 00000000
?_146:  cmp     dword [ebp-2CH], 0                      ; 2F54 _ 83. 7D, D4, 00
        jns     ?_147                                   ; 2F58 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2F5A _ C7. 45, D4, 00000000
?_147:  mov     eax, dword [ebp-10H]                    ; 2F61 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2F64 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2F67 _ 39. 45, D8
        jle     ?_148                                   ; 2F6A _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2F6C _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2F6F _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2F72 _ 89. 45, D8
?_148:  mov     eax, dword [ebp-10H]                    ; 2F75 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2F78 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2F7B _ 39. 45, DC
        jle     ?_149                                   ; 2F7E _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2F80 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2F83 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2F86 _ 89. 45, DC
?_149:  mov     eax, dword [ebp-2CH]                    ; 2F89 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2F8C _ 89. 45, E4
        jmp     ?_154                                   ; 2F8F _ EB, 7A

?_150:  mov     eax, dword [ebp-10H]                    ; 2F91 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2F94 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2F97 _ 8B. 45, E4
        add     eax, edx                                ; 2F9A _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2F9C _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2F9F _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2FA2 _ 89. 45, E8
        jmp     ?_153                                   ; 2FA5 _ EB, 58

?_151:  mov     eax, dword [ebp-10H]                    ; 2FA7 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2FAA _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2FAD _ 8B. 45, E8
        add     eax, edx                                ; 2FB0 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2FB2 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2FB5 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2FB8 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2FBB _ 0F AF. 45, E4
        mov     edx, eax                                ; 2FBF _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2FC1 _ 8B. 45, E8
        add     eax, edx                                ; 2FC4 _ 01. D0
        mov     edx, eax                                ; 2FC6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2FC8 _ 8B. 45, F4
        add     eax, edx                                ; 2FCB _ 01. D0
        movzx   eax, byte [eax]                         ; 2FCD _ 0F B6. 00
        movzx   edx, al                                 ; 2FD0 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2FD3 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2FD6 _ 8B. 40, 14
        cmp     edx, eax                                ; 2FD9 _ 39. C2
        jz      ?_152                                   ; 2FDB _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2FDD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FE0 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2FE3 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2FE7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2FE9 _ 8B. 45, FC
        add     eax, edx                                ; 2FEC _ 01. D0
        mov     edx, eax                                ; 2FEE _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2FF0 _ 8B. 45, EC
        add     edx, eax                                ; 2FF3 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2FF5 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2FF9 _ 88. 02
?_152:  add     dword [ebp-18H], 1                      ; 2FFB _ 83. 45, E8, 01
?_153:  mov     eax, dword [ebp-18H]                    ; 2FFF _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 3002 _ 3B. 45, D8
        jl      ?_151                                   ; 3005 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3007 _ 83. 45, E4, 01
?_154:  mov     eax, dword [ebp-1CH]                    ; 300B _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 300E _ 3B. 45, DC
        jl      ?_150                                   ; 3011 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 3017 _ 83. 45, E0, 01
?_155:  mov     eax, dword [ebp+8H]                     ; 301B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 301E _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3021 _ 39. 45, E0
        jle     ?_145                                   ; 3024 _ 0F 8E, FFFFFEB1
        nop                                             ; 302A _ 90
        leave                                           ; 302B _ C9
        ret                                             ; 302C _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 302D _ 55
        mov     ebp, esp                                ; 302E _ 89. E5
        sub     esp, 24                                 ; 3030 _ 83. EC, 18
        sub     esp, 8                                  ; 3033 _ 83. EC, 08
        push    52                                      ; 3036 _ 6A, 34
        push    67                                      ; 3038 _ 6A, 43
        call    io_out8                                 ; 303A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 303F _ 83. C4, 10
        sub     esp, 8                                  ; 3042 _ 83. EC, 08
        push    156                                     ; 3045 _ 68, 0000009C
        push    64                                      ; 304A _ 6A, 40
        call    io_out8                                 ; 304C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3051 _ 83. C4, 10
        sub     esp, 8                                  ; 3054 _ 83. EC, 08
        push    46                                      ; 3057 _ 6A, 2E
        push    64                                      ; 3059 _ 6A, 40
        call    io_out8                                 ; 305B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3060 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3063 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 306D _ C7. 45, F4, 00000000
        jmp     ?_157                                   ; 3074 _ EB, 26

?_156:  mov     eax, dword [ebp-0CH]                    ; 3076 _ 8B. 45, F4
        shl     eax, 4                                  ; 3079 _ C1. E0, 04
        add     eax, ?_230                              ; 307C _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 3081 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3087 _ 8B. 45, F4
        shl     eax, 4                                  ; 308A _ C1. E0, 04
        add     eax, ?_231                              ; 308D _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 3092 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3098 _ 83. 45, F4, 01
?_157:  cmp     dword [ebp-0CH], 499                    ; 309C _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 30A3 _ 7E, D1
        nop                                             ; 30A5 _ 90
        leave                                           ; 30A6 _ C9
        ret                                             ; 30A7 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 30A8 _ 55
        mov     ebp, esp                                ; 30A9 _ 89. E5
        sub     esp, 16                                 ; 30AB _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 30AE _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 30B5 _ EB, 36

?_158:  mov     eax, dword [ebp-4H]                     ; 30B7 _ 8B. 45, FC
        shl     eax, 4                                  ; 30BA _ C1. E0, 04
        add     eax, ?_230                              ; 30BD _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 30C2 _ 8B. 00
        test    eax, eax                                ; 30C4 _ 85. C0
        jnz     ?_159                                   ; 30C6 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 30C8 _ 8B. 45, FC
        shl     eax, 4                                  ; 30CB _ C1. E0, 04
        add     eax, ?_230                              ; 30CE _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 30D3 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 30D9 _ 8B. 45, FC
        shl     eax, 4                                  ; 30DC _ C1. E0, 04
        add     eax, timerctl                           ; 30DF _ 05, 00000280(d)
        add     eax, 4                                  ; 30E4 _ 83. C0, 04
        jmp     ?_161                                   ; 30E7 _ EB, 12

?_159:  add     dword [ebp-4H], 1                       ; 30E9 _ 83. 45, FC, 01
?_160:  cmp     dword [ebp-4H], 499                     ; 30ED _ 81. 7D, FC, 000001F3
        jle     ?_158                                   ; 30F4 _ 7E, C1
        mov     eax, 0                                  ; 30F6 _ B8, 00000000
?_161:  leave                                           ; 30FB _ C9
        ret                                             ; 30FC _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 30FD _ 55
        mov     ebp, esp                                ; 30FE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3100 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3103 _ C7. 40, 04, 00000000
        nop                                             ; 310A _ 90
        pop     ebp                                     ; 310B _ 5D
        ret                                             ; 310C _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 310D _ 55
        mov     ebp, esp                                ; 310E _ 89. E5
        sub     esp, 4                                  ; 3110 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3113 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3116 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3119 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 311C _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 311F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3122 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3125 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3129 _ 88. 50, 0C
        nop                                             ; 312C _ 90
        leave                                           ; 312D _ C9
        ret                                             ; 312E _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 312F _ 55
        mov     ebp, esp                                ; 3130 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3132 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3135 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3138 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 313A _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 313D _ C7. 40, 04, 00000002
        nop                                             ; 3144 _ 90
        pop     ebp                                     ; 3145 _ 5D
        ret                                             ; 3146 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3147 _ 55
        mov     ebp, esp                                ; 3148 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 314A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 314D _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3150 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3152 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3155 _ C7. 40, 04, 00000002
        nop                                             ; 315C _ 90
        pop     ebp                                     ; 315D _ 5D
        ret                                             ; 315E _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 315F _ 55
        mov     ebp, esp                                ; 3160 _ 89. E5
        mov     eax, timerctl                           ; 3162 _ B8, 00000280(d)
        pop     ebp                                     ; 3167 _ 5D
        ret                                             ; 3168 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3169 _ 55
        mov     ebp, esp                                ; 316A _ 89. E5
        push    ebx                                     ; 316C _ 53
        sub     esp, 20                                 ; 316D _ 83. EC, 14
        sub     esp, 8                                  ; 3170 _ 83. EC, 08
        push    32                                      ; 3173 _ 6A, 20
        push    32                                      ; 3175 _ 6A, 20
        call    io_out8                                 ; 3177 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 317C _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 317F _ A1, 00000280(d)
        add     eax, 1                                  ; 3184 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3187 _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 318C _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3193 _ C7. 45, F4, 00000000
        jmp     ?_165                                   ; 319A _ E9, 000000AD

?_162:  mov     eax, dword [ebp-0CH]                    ; 319F _ 8B. 45, F4
        shl     eax, 4                                  ; 31A2 _ C1. E0, 04
        add     eax, ?_230                              ; 31A5 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 31AA _ 8B. 00
        cmp     eax, 2                                  ; 31AC _ 83. F8, 02
        jne     ?_163                                   ; 31AF _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 31B5 _ 8B. 45, F4
        shl     eax, 4                                  ; 31B8 _ C1. E0, 04
        add     eax, ?_229                              ; 31BB _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 31C0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 31C2 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 31C5 _ 8B. 45, F4
        shl     eax, 4                                  ; 31C8 _ C1. E0, 04
        add     eax, ?_229                              ; 31CB _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 31D0 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 31D2 _ 8B. 45, F4
        shl     eax, 4                                  ; 31D5 _ C1. E0, 04
        add     eax, ?_229                              ; 31D8 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 31DD _ 8B. 00
        test    eax, eax                                ; 31DF _ 85. C0
        jnz     ?_163                                   ; 31E1 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 31E3 _ 8B. 45, F4
        shl     eax, 4                                  ; 31E6 _ C1. E0, 04
        add     eax, ?_230                              ; 31E9 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 31EE _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 31F4 _ 8B. 45, F4
        shl     eax, 4                                  ; 31F7 _ C1. E0, 04
        add     eax, ?_232                              ; 31FA _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 31FF _ 0F B6. 00
        movzx   edx, al                                 ; 3202 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3205 _ 8B. 45, F4
        shl     eax, 4                                  ; 3208 _ C1. E0, 04
        add     eax, ?_231                              ; 320B _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 3210 _ 8B. 00
        sub     esp, 8                                  ; 3212 _ 83. EC, 08
        push    edx                                     ; 3215 _ 52
        push    eax                                     ; 3216 _ 50
        call    fifo8_put                               ; 3217 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 321C _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 321F _ 8B. 45, F4
        shl     eax, 4                                  ; 3222 _ C1. E0, 04
        add     eax, timerctl                           ; 3225 _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 322A _ 8D. 58, 04
        call    getTaskTimer                            ; 322D _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3232 _ 39. C3
        jnz     ?_163                                   ; 3234 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3236 _ C7. 45, F0, 00000001
?_163:  cmp     dword [ebp-10H], 1                      ; 323D _ 83. 7D, F0, 01
        jnz     ?_164                                   ; 3241 _ 75, 05
        call    task_switch                             ; 3243 _ E8, FFFFFFFC(rel)
?_164:  add     dword [ebp-0CH], 1                      ; 3248 _ 83. 45, F4, 01
?_165:  cmp     dword [ebp-0CH], 499                    ; 324C _ 81. 7D, F4, 000001F3
        jle     ?_162                                   ; 3253 _ 0F 8E, FFFFFF46
        nop                                             ; 3259 _ 90
        mov     ebx, dword [ebp-4H]                     ; 325A _ 8B. 5D, FC
        leave                                           ; 325D _ C9
        ret                                             ; 325E _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 325F _ 55
        mov     ebp, esp                                ; 3260 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3262 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3265 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3268 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 326B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 326E _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3271 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3273 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3276 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3279 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 327C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 327F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3286 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3289 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3290 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3293 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 329A _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 329D _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 32A0 _ 89. 50, 18
        nop                                             ; 32A3 _ 90
        pop     ebp                                     ; 32A4 _ 5D
        ret                                             ; 32A5 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 32A6 _ 55
        mov     ebp, esp                                ; 32A7 _ 89. E5
        sub     esp, 24                                 ; 32A9 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 32AC _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 32AF _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 32B2 _ 83. 7D, 08, 00
        jnz     ?_166                                   ; 32B6 _ 75, 0A
        mov     eax, 4294967295                         ; 32B8 _ B8, FFFFFFFF
        jmp     ?_170                                   ; 32BD _ E9, 000000A0

?_166:  mov     eax, dword [ebp+8H]                     ; 32C2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 32C5 _ 8B. 40, 10
        test    eax, eax                                ; 32C8 _ 85. C0
        jnz     ?_167                                   ; 32CA _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 32CC _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 32CF _ 8B. 40, 14
        or      eax, 01H                                ; 32D2 _ 83. C8, 01
        mov     edx, eax                                ; 32D5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32D7 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 32DA _ 89. 50, 14
        mov     eax, 4294967295                         ; 32DD _ B8, FFFFFFFF
        jmp     ?_170                                   ; 32E2 _ EB, 7E

?_167:  mov     eax, dword [ebp+8H]                     ; 32E4 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 32E7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 32E9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 32EC _ 8B. 40, 08
        add     edx, eax                                ; 32EF _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 32F1 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 32F5 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 32F7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 32FA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 32FD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3300 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3303 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3306 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3309 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 330C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 330F _ 8B. 40, 0C
        cmp     edx, eax                                ; 3312 _ 39. C2
        jl      ?_168                                   ; 3314 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3316 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3319 _ C7. 40, 08, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 3320 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3323 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3326 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3329 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 332C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 332F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3332 _ 8B. 40, 18
        test    eax, eax                                ; 3335 _ 85. C0
        jz      ?_169                                   ; 3337 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3339 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 333C _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 333F _ 8B. 40, 04
        cmp     eax, 2                                  ; 3342 _ 83. F8, 02
        jz      ?_169                                   ; 3345 _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3347 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 334A _ 8B. 40, 18
        sub     esp, 4                                  ; 334D _ 83. EC, 04
        push    0                                       ; 3350 _ 6A, 00
        push    0                                       ; 3352 _ 6A, 00
        push    eax                                     ; 3354 _ 50
        call    task_run                                ; 3355 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 335A _ 83. C4, 10
?_169:  mov     eax, 1                                  ; 335D _ B8, 00000001
?_170:  leave                                           ; 3362 _ C9
        ret                                             ; 3363 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3364 _ 55
        mov     ebp, esp                                ; 3365 _ 89. E5
        sub     esp, 16                                 ; 3367 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 336A _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 336D _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3370 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3373 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3376 _ 39. C2
        jnz     ?_171                                   ; 3378 _ 75, 07
        mov     eax, 4294967295                         ; 337A _ B8, FFFFFFFF
        jmp     ?_173                                   ; 337F _ EB, 51

?_171:  mov     eax, dword [ebp+8H]                     ; 3381 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3384 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3386 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3389 _ 8B. 40, 04
        add     eax, edx                                ; 338C _ 01. D0
        movzx   eax, byte [eax]                         ; 338E _ 0F B6. 00
        movzx   eax, al                                 ; 3391 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3394 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3397 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 339A _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 339D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 33A0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 33A3 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 33A6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 33A9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 33AC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 33AF _ 8B. 40, 0C
        cmp     edx, eax                                ; 33B2 _ 39. C2
        jl      ?_172                                   ; 33B4 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 33B6 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 33B9 _ C7. 40, 04, 00000000
?_172:  mov     eax, dword [ebp+8H]                     ; 33C0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 33C3 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 33C6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 33C9 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 33CC _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 33CF _ 8B. 45, FC
?_173:  leave                                           ; 33D2 _ C9
        ret                                             ; 33D3 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 33D4 _ 55
        mov     ebp, esp                                ; 33D5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 33D7 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 33DA _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 33DD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 33E0 _ 8B. 40, 10
        sub     edx, eax                                ; 33E3 _ 29. C2
        mov     eax, edx                                ; 33E5 _ 89. D0
        pop     ebp                                     ; 33E7 _ 5D
        ret                                             ; 33E8 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 33E9 _ 55
        mov     ebp, esp                                ; 33EA _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 33EC _ 81. 7D, 0C, 000FFFFF
        jbe     ?_174                                   ; 33F3 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 33F5 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 33FC _ 8B. 45, 0C
        shr     eax, 12                                 ; 33FF _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3402 _ 89. 45, 0C
?_174:  mov     eax, dword [ebp+0CH]                    ; 3405 _ 8B. 45, 0C
        mov     edx, eax                                ; 3408 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 340A _ 8B. 45, 08
        mov     word [eax], dx                          ; 340D _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3410 _ 8B. 45, 10
        mov     edx, eax                                ; 3413 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3415 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3418 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 341C _ 8B. 45, 10
        sar     eax, 16                                 ; 341F _ C1. F8, 10
        mov     edx, eax                                ; 3422 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3424 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3427 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 342A _ 8B. 45, 14
        mov     edx, eax                                ; 342D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 342F _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3432 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3435 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3438 _ C1. E8, 10
        and     eax, 0FH                                ; 343B _ 83. E0, 0F
        mov     edx, eax                                ; 343E _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3440 _ 8B. 45, 14
        sar     eax, 8                                  ; 3443 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3446 _ 83. E0, F0
        or      eax, edx                                ; 3449 _ 09. D0
        mov     edx, eax                                ; 344B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 344D _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3450 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3453 _ 8B. 45, 10
        shr     eax, 24                                 ; 3456 _ C1. E8, 18
        mov     edx, eax                                ; 3459 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 345B _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 345E _ 88. 50, 07
        nop                                             ; 3461 _ 90
        pop     ebp                                     ; 3462 _ 5D
        ret                                             ; 3463 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3464 _ 55
        mov     ebp, esp                                ; 3465 _ 89. E5
        mov     eax, dword [task_timer]                 ; 3467 _ A1, 000021C4(d)
        pop     ebp                                     ; 346C _ 5D
        ret                                             ; 346D _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 346E _ 55
        mov     ebp, esp                                ; 346F _ 89. E5
        sub     esp, 16                                 ; 3471 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3474 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 347A _ 8B. 55, 08
        mov     eax, edx                                ; 347D _ 89. D0
        shl     eax, 2                                  ; 347F _ C1. E0, 02
        add     eax, edx                                ; 3482 _ 01. D0
        shl     eax, 2                                  ; 3484 _ C1. E0, 02
        add     eax, ecx                                ; 3487 _ 01. C8
        add     eax, 8                                  ; 3489 _ 83. C0, 08
        mov     dword [eax], 0                          ; 348C _ C7. 00, 00000000
        mov     ecx, dword [taskctl]                    ; 3492 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 3498 _ 8B. 55, 08
        mov     eax, edx                                ; 349B _ 89. D0
        shl     eax, 2                                  ; 349D _ C1. E0, 02
        add     eax, edx                                ; 34A0 _ 01. D0
        shl     eax, 2                                  ; 34A2 _ C1. E0, 02
        add     eax, ecx                                ; 34A5 _ 01. C8
        add     eax, 12                                 ; 34A7 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 34AA _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 34B0 _ C7. 45, FC, 00000000
        jmp     ?_176                                   ; 34B7 _ EB, 21

?_175:  mov     ecx, dword [taskctl]                    ; 34B9 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 34BF _ 8B. 55, FC
        mov     eax, edx                                ; 34C2 _ 89. D0
        add     eax, eax                                ; 34C4 _ 01. C0
        add     eax, edx                                ; 34C6 _ 01. D0
        shl     eax, 3                                  ; 34C8 _ C1. E0, 03
        add     eax, ecx                                ; 34CB _ 01. C8
        add     eax, 16                                 ; 34CD _ 83. C0, 10
        mov     dword [eax], 0                          ; 34D0 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 34D6 _ 83. 45, FC, 01
?_176:  cmp     dword [ebp-4H], 2                       ; 34DA _ 83. 7D, FC, 02
        jle     ?_175                                   ; 34DE _ 7E, D9
        nop                                             ; 34E0 _ 90
        leave                                           ; 34E1 _ C9
        ret                                             ; 34E2 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 34E3 _ 55
        mov     ebp, esp                                ; 34E4 _ 89. E5
        sub     esp, 24                                 ; 34E6 _ 83. EC, 18
        call    get_addr_gdt                            ; 34E9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 34EE _ 89. 45, F0
        sub     esp, 8                                  ; 34F1 _ 83. EC, 08
        push    668                                     ; 34F4 _ 68, 0000029C
        push    dword [ebp+8H]                          ; 34F9 _ FF. 75, 08
        call    memman_alloc_4K                         ; 34FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3501 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3504 _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 3509 _ C7. 45, EC, 00000000
        jmp     ?_178                                   ; 3510 _ EB, 73

?_177:  mov     edx, dword [taskctl]                    ; 3512 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 3518 _ 8B. 45, EC
        imul    eax, eax, 120                           ; 351B _ 6B. C0, 78
        add     eax, edx                                ; 351E _ 01. D0
        add     eax, 72                                 ; 3520 _ 83. C0, 48
        mov     dword [eax], 0                          ; 3523 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3529 _ 8B. 45, EC
        add     eax, 7                                  ; 352C _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 352F _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 3535 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 353C _ 8B. 45, EC
        imul    eax, eax, 120                           ; 353F _ 6B. C0, 78
        add     eax, ecx                                ; 3542 _ 01. C8
        add     eax, 68                                 ; 3544 _ 83. C0, 44
        mov     dword [eax], edx                        ; 3547 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3549 _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 354E _ 8B. 55, EC
        imul    edx, edx, 120                           ; 3551 _ 6B. D2, 78
        add     edx, 80                                 ; 3554 _ 83. C2, 50
        add     eax, edx                                ; 3557 _ 01. D0
        add     eax, 4                                  ; 3559 _ 83. C0, 04
        mov     ecx, eax                                ; 355C _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 355E _ 8B. 45, EC
        add     eax, 7                                  ; 3561 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3564 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 356B _ 8B. 45, F0
        add     eax, edx                                ; 356E _ 01. D0
        push    137                                     ; 3570 _ 68, 00000089
        push    ecx                                     ; 3575 _ 51
        push    103                                     ; 3576 _ 6A, 67
        push    eax                                     ; 3578 _ 50
        call    set_segmdesc                            ; 3579 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 357E _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3581 _ 83. 45, EC, 01
?_178:  cmp     dword [ebp-14H], 4                      ; 3585 _ 83. 7D, EC, 04
        jle     ?_177                                   ; 3589 _ 7E, 87
        call    task_alloc                              ; 358B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3590 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3593 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3596 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 359D _ 8B. 45, F4
        mov     dword [eax+8H], 100                     ; 35A0 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-0CH]                    ; 35A7 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 35AA _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 35B1 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 35B4 _ FF. 75, F4
        call    task_add                                ; 35B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 35BC _ 83. C4, 10
        call    task_switchsub                          ; 35BF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 35C4 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 35C7 _ 8B. 00
        sub     esp, 12                                 ; 35C9 _ 83. EC, 0C
        push    eax                                     ; 35CC _ 50
        call    load_tr                                 ; 35CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 35D2 _ 83. C4, 10
        call    timer_alloc                             ; 35D5 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 35DA _ A3, 000021C4(d)
        mov     eax, dword [ebp-0CH]                    ; 35DF _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 35E2 _ 8B. 40, 08
        mov     edx, eax                                ; 35E5 _ 89. C2
        mov     eax, dword [task_timer]                 ; 35E7 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 35EC _ 83. EC, 08
        push    edx                                     ; 35EF _ 52
        push    eax                                     ; 35F0 _ 50
        call    timer_setTime                           ; 35F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 35F6 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 35F9 _ 8B. 45, F4
        leave                                           ; 35FC _ C9
        ret                                             ; 35FD _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 35FE _ 55
        mov     ebp, esp                                ; 35FF _ 89. E5
        sub     esp, 16                                 ; 3601 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3604 _ C7. 45, F8, 00000000
        jmp     ?_181                                   ; 360B _ E9, 000000E1

?_179:  mov     edx, dword [taskctl]                    ; 3610 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 3616 _ 8B. 45, F8
        imul    eax, eax, 120                           ; 3619 _ 6B. C0, 78
        add     eax, edx                                ; 361C _ 01. D0
        add     eax, 72                                 ; 361E _ 83. C0, 48
        mov     eax, dword [eax]                        ; 3621 _ 8B. 00
        test    eax, eax                                ; 3623 _ 85. C0
        jne     ?_180                                   ; 3625 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 362B _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 3630 _ 8B. 55, F8
        imul    edx, edx, 120                           ; 3633 _ 6B. D2, 78
        add     edx, 64                                 ; 3636 _ 83. C2, 40
        add     eax, edx                                ; 3639 _ 01. D0
        add     eax, 4                                  ; 363B _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 363E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3641 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3644 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 364B _ 8B. 45, FC
        mov     dword [eax+34H], 514                    ; 364E _ C7. 40, 34, 00000202
        mov     eax, dword [ebp-4H]                     ; 3655 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 3658 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 365F _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3662 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3669 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 366C _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3673 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3676 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 367D _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 3680 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3687 _ 8B. 45, F8
        add     eax, 1                                  ; 368A _ 83. C0, 01
        shl     eax, 9                                  ; 368D _ C1. E0, 09
        mov     edx, eax                                ; 3690 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3692 _ 8B. 45, FC
        mov     dword [eax+48H], edx                    ; 3695 _ 89. 50, 48
        mov     eax, dword [ebp-4H]                     ; 3698 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 369B _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 36A2 _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 36A5 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 36AC _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 36AF _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 36B6 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 36B9 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 36C0 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 36C3 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 36CA _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 36CD _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 36D4 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 36D7 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 36DE _ 8B. 45, FC
        mov     dword [eax+74H], 1073741824             ; 36E1 _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-4H]                     ; 36E8 _ 8B. 45, FC
        jmp     ?_182                                   ; 36EB _ EB, 13

?_180:  add     dword [ebp-8H], 1                       ; 36ED _ 83. 45, F8, 01
?_181:  cmp     dword [ebp-8H], 4                       ; 36F1 _ 83. 7D, F8, 04
        jle     ?_179                                   ; 36F5 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 36FB _ B8, 00000000
?_182:  leave                                           ; 3700 _ C9
        ret                                             ; 3701 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3702 _ 55
        mov     ebp, esp                                ; 3703 _ 89. E5
        sub     esp, 8                                  ; 3705 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3708 _ 83. 7D, 0C, 00
        jns     ?_183                                   ; 370C _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 370E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3711 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3714 _ 89. 45, 0C
?_183:  cmp     dword [ebp+10H], 0                      ; 3717 _ 83. 7D, 10, 00
        jle     ?_184                                   ; 371B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 371D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3720 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3723 _ 89. 50, 08
?_184:  mov     eax, dword [ebp+8H]                     ; 3726 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3729 _ 8B. 40, 04
        cmp     eax, 2                                  ; 372C _ 83. F8, 02
        jnz     ?_185                                   ; 372F _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3731 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3734 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3737 _ 39. 45, 0C
        jz      ?_185                                   ; 373A _ 74, 0E
        sub     esp, 12                                 ; 373C _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 373F _ FF. 75, 08
        call    task_remove                             ; 3742 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3747 _ 83. C4, 10
?_185:  mov     eax, dword [ebp+8H]                     ; 374A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 374D _ 8B. 40, 04
        cmp     eax, 2                                  ; 3750 _ 83. F8, 02
        jz      ?_186                                   ; 3753 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3755 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3758 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 375B _ 89. 50, 0C
        sub     esp, 12                                 ; 375E _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3761 _ FF. 75, 08
        call    task_add                                ; 3764 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3769 _ 83. C4, 10
?_186:  mov     eax, dword [taskctl]                    ; 376C _ A1, 000021C8(d)
        mov     dword [eax+4H], 1                       ; 3771 _ C7. 40, 04, 00000001
        nop                                             ; 3778 _ 90
        leave                                           ; 3779 _ C9
        ret                                             ; 377A _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 377B _ 55
        mov     ebp, esp                                ; 377C _ 89. E5
        sub     esp, 24                                 ; 377E _ 83. EC, 18
        mov     ecx, dword [taskctl]                    ; 3781 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3787 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 378C _ 8B. 10
        mov     eax, edx                                ; 378E _ 89. D0
        shl     eax, 2                                  ; 3790 _ C1. E0, 02
        add     eax, edx                                ; 3793 _ 01. D0
        shl     eax, 2                                  ; 3795 _ C1. E0, 02
        add     eax, ecx                                ; 3798 _ 01. C8
        add     eax, 8                                  ; 379A _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 379D _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 37A0 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 37A3 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 37A6 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 37A9 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 37AD _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 37B0 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 37B3 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 37B6 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 37B9 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 37BC _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 37BF _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 37C2 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 37C5 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 37C8 _ 8B. 00
        cmp     edx, eax                                ; 37CA _ 39. C2
        jnz     ?_187                                   ; 37CC _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 37CE _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 37D1 _ C7. 40, 04, 00000000
?_187:  mov     eax, dword [taskctl]                    ; 37D8 _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 37DD _ 8B. 40, 04
        test    eax, eax                                ; 37E0 _ 85. C0
        jz      ?_188                                   ; 37E2 _ 74, 24
        call    task_switchsub                          ; 37E4 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [taskctl]                    ; 37E9 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 37EF _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 37F4 _ 8B. 10
        mov     eax, edx                                ; 37F6 _ 89. D0
        shl     eax, 2                                  ; 37F8 _ C1. E0, 02
        add     eax, edx                                ; 37FB _ 01. D0
        shl     eax, 2                                  ; 37FD _ C1. E0, 02
        add     eax, ecx                                ; 3800 _ 01. C8
        add     eax, 8                                  ; 3802 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3805 _ 89. 45, EC
?_188:  mov     eax, dword [ebp-14H]                    ; 3808 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 380B _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 380E _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3811 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3815 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3818 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 381B _ 8B. 40, 08
        mov     edx, eax                                ; 381E _ 89. C2
        mov     eax, dword [task_timer]                 ; 3820 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3825 _ 83. EC, 08
        push    edx                                     ; 3828 _ 52
        push    eax                                     ; 3829 _ 50
        call    timer_setTime                           ; 382A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 382F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3832 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3835 _ 3B. 45, F0
        jz      ?_189                                   ; 3838 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 383A _ 83. 7D, F4, 00
        jz      ?_189                                   ; 383E _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3840 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3843 _ 8B. 00
        sub     esp, 8                                  ; 3845 _ 83. EC, 08
        push    eax                                     ; 3848 _ 50
        push    0                                       ; 3849 _ 6A, 00
        call    farjmp                                  ; 384B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3850 _ 83. C4, 10
        nop                                             ; 3853 _ 90
?_189:  nop                                             ; 3854 _ 90
        leave                                           ; 3855 _ C9
        ret                                             ; 3856 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3857 _ 55
        mov     ebp, esp                                ; 3858 _ 89. E5
        sub     esp, 24                                 ; 385A _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 385D _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3864 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3868 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 386B _ 8B. 40, 04
        cmp     eax, 2                                  ; 386E _ 83. F8, 02
        jnz     ?_190                                   ; 3871 _ 75, 4C
        call    task_now                                ; 3873 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3878 _ 89. 45, F4
        sub     esp, 12                                 ; 387B _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 387E _ FF. 75, 08
        call    task_remove                             ; 3881 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3886 _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3889 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 388D _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3890 _ 3B. 45, F4
        jnz     ?_190                                   ; 3893 _ 75, 2A
        call    task_switchsub                          ; 3895 _ E8, FFFFFFFC(rel)
        call    task_now                                ; 389A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 389F _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 38A2 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 38A6 _ 83. 7D, F4, 00
        jz      ?_190                                   ; 38AA _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 38AC _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 38AF _ 8B. 00
        sub     esp, 8                                  ; 38B1 _ 83. EC, 08
        push    eax                                     ; 38B4 _ 50
        push    0                                       ; 38B5 _ 6A, 00
        call    farjmp                                  ; 38B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38BC _ 83. C4, 10
?_190:  movsx   eax, byte [ebp-0DH]                     ; 38BF _ 0F BE. 45, F3
        leave                                           ; 38C3 _ C9
        ret                                             ; 38C4 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 38C5 _ 55
        mov     ebp, esp                                ; 38C6 _ 89. E5
        sub     esp, 16                                 ; 38C8 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 38CB _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 38D1 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 38D6 _ 8B. 10
        mov     eax, edx                                ; 38D8 _ 89. D0
        shl     eax, 2                                  ; 38DA _ C1. E0, 02
        add     eax, edx                                ; 38DD _ 01. D0
        shl     eax, 2                                  ; 38DF _ C1. E0, 02
        add     eax, ecx                                ; 38E2 _ 01. C8
        add     eax, 8                                  ; 38E4 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 38E7 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 38EA _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 38ED _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 38F0 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 38F3 _ 8B. 44 90, 08
        leave                                           ; 38F7 _ C9
        ret                                             ; 38F8 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 38F9 _ 55
        mov     ebp, esp                                ; 38FA _ 89. E5
        sub     esp, 16                                 ; 38FC _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 38FF _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3905 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3908 _ 8B. 50, 0C
        mov     eax, edx                                ; 390B _ 89. D0
        shl     eax, 2                                  ; 390D _ C1. E0, 02
        add     eax, edx                                ; 3910 _ 01. D0
        shl     eax, 2                                  ; 3912 _ C1. E0, 02
        add     eax, ecx                                ; 3915 _ 01. C8
        add     eax, 8                                  ; 3917 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 391A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 391D _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3920 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3922 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3925 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3928 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 392C _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 392F _ 8B. 00
        lea     edx, [eax+1H]                           ; 3931 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3934 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3937 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3939 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 393C _ C7. 40, 04, 00000002
        nop                                             ; 3943 _ 90
        leave                                           ; 3944 _ C9
        ret                                             ; 3945 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3946 _ 55
        mov     ebp, esp                                ; 3947 _ 89. E5
        sub     esp, 16                                 ; 3949 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 394C _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3952 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3955 _ 8B. 50, 0C
        mov     eax, edx                                ; 3958 _ 89. D0
        shl     eax, 2                                  ; 395A _ C1. E0, 02
        add     eax, edx                                ; 395D _ 01. D0
        shl     eax, 2                                  ; 395F _ C1. E0, 02
        add     eax, ecx                                ; 3962 _ 01. C8
        add     eax, 8                                  ; 3964 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3967 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 396A _ C7. 45, F8, 00000000
        jmp     ?_193                                   ; 3971 _ EB, 23

?_191:  mov     eax, dword [ebp-4H]                     ; 3973 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3976 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3979 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 397D _ 39. 45, 08
        jnz     ?_192                                   ; 3980 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3982 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3985 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3988 _ C7. 44 90, 08, 00000000
        jmp     ?_194                                   ; 3990 _ EB, 0E

?_192:  add     dword [ebp-8H], 1                       ; 3992 _ 83. 45, F8, 01
?_193:  mov     eax, dword [ebp-4H]                     ; 3996 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3999 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 399B _ 39. 45, F8
        jl      ?_191                                   ; 399E _ 7C, D3
?_194:  mov     eax, dword [ebp-4H]                     ; 39A0 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 39A3 _ 8B. 00
        lea     edx, [eax-1H]                           ; 39A5 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 39A8 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 39AB _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 39AD _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 39B0 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 39B3 _ 39. 45, F8
        jge     ?_195                                   ; 39B6 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 39B8 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 39BB _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 39BE _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 39C1 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 39C4 _ 89. 50, 04
?_195:  mov     eax, dword [ebp-4H]                     ; 39C7 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 39CA _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 39CD _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 39D0 _ 8B. 00
        cmp     edx, eax                                ; 39D2 _ 39. C2
        jl      ?_196                                   ; 39D4 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 39D6 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 39D9 _ C7. 40, 04, 00000000
?_196:  mov     eax, dword [ebp+8H]                     ; 39E0 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 39E3 _ C7. 40, 04, 00000001
        jmp     ?_198                                   ; 39EA _ EB, 1B

?_197:  mov     eax, dword [ebp-8H]                     ; 39EC _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 39EF _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 39F2 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 39F5 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 39F9 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 39FC _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 39FF _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3A03 _ 83. 45, F8, 01
?_198:  mov     eax, dword [ebp-4H]                     ; 3A07 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3A0A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3A0C _ 39. 45, F8
        jl      ?_197                                   ; 3A0F _ 7C, DB
        nop                                             ; 3A11 _ 90
        leave                                           ; 3A12 _ C9
        ret                                             ; 3A13 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3A14 _ 55
        mov     ebp, esp                                ; 3A15 _ 89. E5
        sub     esp, 16                                 ; 3A17 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3A1A _ C7. 45, FC, 00000000
        jmp     ?_200                                   ; 3A21 _ EB, 22

?_199:  mov     ecx, dword [taskctl]                    ; 3A23 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3A29 _ 8B. 55, FC
        mov     eax, edx                                ; 3A2C _ 89. D0
        shl     eax, 2                                  ; 3A2E _ C1. E0, 02
        add     eax, edx                                ; 3A31 _ 01. D0
        shl     eax, 2                                  ; 3A33 _ C1. E0, 02
        add     eax, ecx                                ; 3A36 _ 01. C8
        add     eax, 8                                  ; 3A38 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3A3B _ 8B. 00
        test    eax, eax                                ; 3A3D _ 85. C0
        jg      ?_201                                   ; 3A3F _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3A41 _ 83. 45, FC, 01
?_200:  cmp     dword [ebp-4H], 2                       ; 3A45 _ 83. 7D, FC, 02
        jle     ?_199                                   ; 3A49 _ 7E, D8
        jmp     ?_202                                   ; 3A4B _ EB, 01

?_201:  nop                                             ; 3A4D _ 90
?_202:  mov     eax, dword [taskctl]                    ; 3A4E _ A1, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3A53 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3A56 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3A58 _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3A5D _ C7. 40, 04, 00000000
        nop                                             ; 3A64 _ 90
        leave                                           ; 3A65 _ C9
        ret                                             ; 3A66 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3A67 _ 55
        mov     ebp, esp                                ; 3A68 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3A6A _ A1, 000021C8(d)
        pop     ebp                                     ; 3A6F _ 5D
        ret                                             ; 3A70 _ C3
; getTaskctl End of function



?_203:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_204:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 31H, 00H                 ; 0008 _ Task1.

?_205:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 32H, 00H                 ; 000E _ Task2.

?_206:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 33H, 00H                 ; 0014 _ Task3.

?_207:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 001A _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0022 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 002A _ herry.

?_208:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_209:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_210:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 0039 _ Terminal
        db 00H                                          ; 0041 _ .

?_211:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0042 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 004A _ sk B.

?_212:                                                  ; byte
        db 42H, 00H                                     ; 004F _ B.

?_213:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0051 _ Page is:
        db 20H, 00H                                     ; 0059 _  .

?_214:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 005B _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0063 _ Low: .

?_215:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0069 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0071 _ High: .

?_216:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0078 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0080 _ w: .

?_217:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0084 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 008C _ gh: .

?_218:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0091 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_219:  db 00H                                          ; 0002 _ .

?_220:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2275: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2335:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2390:                                            ; byte
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

closebtn.2533:                                          ; byte
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

?_221:  resw    1                                       ; 0004

?_222:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

?_223:  resd    1                                       ; 0020

mouseInfo:                                              ; byte
        resb    28                                      ; 0024

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_224:  resd    1                                       ; 00EC

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

task_a.2270:                                            ; dword
        resd    1                                       ; 0234

task_b.2260:                                            ; oword
        resd    1                                       ; 0238

?_225:  resd    1                                       ; 023C

?_226:  resd    2                                       ; 0240

cnt.2271: resd  1                                       ; 0248

line.2274:                                              ; dword
        resd    1                                       ; 024C

str.2433:                                               ; byte
        resb    1                                       ; 0250

?_227:  resb    9                                       ; 0251

?_228:  resb    2                                       ; 025A

line.2466:                                              ; dword
        resd    1                                       ; 025C

pos.2465: resd  8                                       ; 0260

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


