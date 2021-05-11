; Disassembly of file: ckernel.o
; Tue May 11 15:20:38 2021
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
        movzx   eax, word [?_206]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-60H], eax                    ; 0034 _ 89. 45, A0
        movzx   eax, word [?_207]                       ; 0037 _ 0F B7. 05, 00000006(d)
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
        push    ?_189                                   ; 02EE _ 68, 00000000(d)
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
        mov     dword [task_a.2257], eax                ; 0353 _ A3, 00000234(d)
        mov     eax, dword [task_a.2257]                ; 0358 _ A1, 00000234(d)
        mov     dword [?_208], eax                      ; 035D _ A3, 00000020(d)
        mov     edx, dword [task_b.2247]                ; 0362 _ 8B. 15, 00000238(d)
        mov     eax, dword [shtctl]                     ; 0368 _ A1, 00000224(d)
        sub     esp, 12                                 ; 036D _ 83. EC, 0C
        push    3                                       ; 0370 _ 6A, 03
        push    30                                      ; 0372 _ 6A, 1E
        push    150                                     ; 0374 _ 68, 00000096
        push    50                                      ; 0379 _ 6A, 32
        push    150                                     ; 037B _ 68, 00000096
        push    ?_190                                   ; 0380 _ 68, 00000008(d)
        push    5                                       ; 0385 _ 6A, 05
        push    edx                                     ; 0387 _ 52
        push    eax                                     ; 0388 _ 50
        call    messageBoxToTask                        ; 0389 _ E8, FFFFFFFC(rel)
        add     esp, 48                                 ; 038E _ 83. C4, 30
        mov     dword [ebp-30H], eax                    ; 0391 _ 89. 45, D0
        mov     edx, dword [?_210]                      ; 0394 _ 8B. 15, 0000023C(d)
        mov     eax, dword [shtctl]                     ; 039A _ A1, 00000224(d)
        sub     esp, 12                                 ; 039F _ 83. EC, 0C
        push    2                                       ; 03A2 _ 6A, 02
        push    30                                      ; 03A4 _ 6A, 1E
        push    300                                     ; 03A6 _ 68, 0000012C
        push    50                                      ; 03AB _ 6A, 32
        push    150                                     ; 03AD _ 68, 00000096
        push    ?_191                                   ; 03B2 _ 68, 0000000E(d)
        push    10                                      ; 03B7 _ 6A, 0A
        push    edx                                     ; 03B9 _ 52
        push    eax                                     ; 03BA _ 50
        call    messageBoxToTask                        ; 03BB _ E8, FFFFFFFC(rel)
        add     esp, 48                                 ; 03C0 _ 83. C4, 30
        mov     dword [ebp-2CH], eax                    ; 03C3 _ 89. 45, D4
        mov     edx, dword [?_211]                      ; 03C6 _ 8B. 15, 00000240(d)
        mov     eax, dword [shtctl]                     ; 03CC _ A1, 00000224(d)
        sub     esp, 12                                 ; 03D1 _ 83. EC, 0C
        push    1                                       ; 03D4 _ 6A, 01
        push    30                                      ; 03D6 _ 6A, 1E
        push    450                                     ; 03D8 _ 68, 000001C2
        push    50                                      ; 03DD _ 6A, 32
        push    150                                     ; 03DF _ 68, 00000096
        push    ?_192                                   ; 03E4 _ 68, 00000014(d)
        push    20                                      ; 03E9 _ 6A, 14
        push    edx                                     ; 03EB _ 52
        push    eax                                     ; 03EC _ 50
        call    messageBoxToTask                        ; 03ED _ E8, FFFFFFFC(rel)
        add     esp, 48                                 ; 03F2 _ 83. C4, 30
        mov     dword [ebp-28H], eax                    ; 03F5 _ 89. 45, D8
        call    getTaskctl                              ; 03F8 _ E8, FFFFFFFC(rel)
        mov     eax, dword [eax]                        ; 03FD _ 8B. 00
        sub     esp, 12                                 ; 03FF _ 83. EC, 0C
        push    eax                                     ; 0402 _ 50
        call    intToHexStr                             ; 0403 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0408 _ 83. C4, 10
        mov     ecx, eax                                ; 040B _ 89. C1
        mov     edx, dword [sheet_back]                 ; 040D _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0413 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0418 _ 83. EC, 08
        push    ecx                                     ; 041B _ 51
        push    7                                       ; 041C _ 6A, 07
        push    0                                       ; 041E _ 6A, 00
        push    0                                       ; 0420 _ 6A, 00
        push    edx                                     ; 0422 _ 52
        push    eax                                     ; 0423 _ 50
        call    showString                              ; 0424 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0429 _ 83. C4, 20
        mov     byte [ebp-71H], 0                       ; 042C _ C6. 45, 8F, 00
        mov     dword [ebp-70H], 7                      ; 0430 _ C7. 45, 90, 00000007
        mov     dword [ebp-6CH], 0                      ; 0437 _ C7. 45, 94, 00000000
        mov     edx, dword [sheet_win]                  ; 043E _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0444 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0449 _ 83. EC, 08
        push    ?_193                                   ; 044C _ 68, 0000001A(d)
        push    10                                      ; 0451 _ 6A, 0A
        push    63                                      ; 0453 _ 6A, 3F
        push    8                                       ; 0455 _ 6A, 08
        push    edx                                     ; 0457 _ 52
        push    eax                                     ; 0458 _ 50
        call    showString                              ; 0459 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 045E _ 83. C4, 20
        mov     dword [ebp-68H], 0                      ; 0461 _ C7. 45, 98, 00000000
?_001:  call    io_sti                                  ; 0468 _ E8, FFFFFFFC(rel)
        call    io_cli                                  ; 046D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0472 _ 83. EC, 0C
        push    keyInfo                                 ; 0475 _ 68, 00000008(d)
        call    fifo8_status                            ; 047A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 047F _ 83. C4, 10
        mov     ebx, eax                                ; 0482 _ 89. C3
        sub     esp, 12                                 ; 0484 _ 83. EC, 0C
        push    mouseInfo                               ; 0487 _ 68, 00000024(d)
        call    fifo8_status                            ; 048C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0491 _ 83. C4, 10
        add     ebx, eax                                ; 0494 _ 01. C3
        sub     esp, 12                                 ; 0496 _ 83. EC, 0C
        push    timerInfo                               ; 0499 _ 68, 00000200(d)
        call    fifo8_status                            ; 049E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04A3 _ 83. C4, 10
        add     eax, ebx                                ; 04A6 _ 01. D8
        test    eax, eax                                ; 04A8 _ 85. C0
        jnz     ?_002                                   ; 04AA _ 75, 07
        call    io_sti                                  ; 04AC _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04B1 _ EB, B5

?_002:  sub     esp, 12                                 ; 04B3 _ 83. EC, 0C
        push    keyInfo                                 ; 04B6 _ 68, 00000008(d)
        call    fifo8_status                            ; 04BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04C0 _ 83. C4, 10
        test    eax, eax                                ; 04C3 _ 85. C0
        je      ?_008                                   ; 04C5 _ 0F 84, 00000317
        call    io_sti                                  ; 04CB _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 04D0 _ 83. EC, 0C
        push    keyInfo                                 ; 04D3 _ 68, 00000008(d)
        call    fifo8_get                               ; 04D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DD _ 83. C4, 10
        mov     byte [ebp-71H], al                      ; 04E0 _ 88. 45, 8F
        cmp     byte [ebp-71H], 28                      ; 04E3 _ 80. 7D, 8F, 1C
        jnz     ?_003                                   ; 04E7 _ 75, 59
        mov     ebx, dword [cnt.2258]                   ; 04E9 _ 8B. 1D, 00000248(d)
        mov     eax, dword [sheet_back]                 ; 04EF _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 04F4 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 04F6 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 04FC _ A1, 00000224(d)
        sub     esp, 4                                  ; 0501 _ 83. EC, 04
        push    7                                       ; 0504 _ 6A, 07
        push    dword [ebp-60H]                         ; 0506 _ FF. 75, A0
        push    ebx                                     ; 0509 _ 53
        push    ecx                                     ; 050A _ 51
        push    dword [ebp-48H]                         ; 050B _ FF. 75, B8
        push    edx                                     ; 050E _ 52
        push    eax                                     ; 050F _ 50
        call    showMemInfo                             ; 0510 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0515 _ 83. C4, 20
        mov     eax, dword [cnt.2258]                   ; 0518 _ A1, 00000248(d)
        add     eax, 1                                  ; 051D _ 83. C0, 01
        mov     dword [cnt.2258], eax                   ; 0520 _ A3, 00000248(d)
        mov     eax, dword [cnt.2258]                   ; 0525 _ A1, 00000248(d)
        cmp     dword [ebp-44H], eax                    ; 052A _ 39. 45, BC
        jg      ?_001                                   ; 052D _ 0F 8F, FFFFFF35
        mov     dword [cnt.2258], 0                     ; 0533 _ C7. 05, 00000248(d), 00000000
        jmp     ?_001                                   ; 053D _ E9, FFFFFF26

?_003:  movzx   eax, byte [ebp-71H]                     ; 0542 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0546 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 054D _ 84. C0
        jz      ?_004                                   ; 054F _ 74, 18
        cmp     byte [ebp-71H], 15                      ; 0551 _ 80. 7D, 8F, 0F
        jbe     ?_004                                   ; 0555 _ 76, 12
        cmp     byte [ebp-71H], 83                      ; 0557 _ 80. 7D, 8F, 53
        ja      ?_004                                   ; 055B _ 77, 0C
        mov     eax, dword [line.2261]                  ; 055D _ A1, 0000024C(d)
        cmp     eax, 142                                ; 0562 _ 3D, 0000008E
        jle     ?_005                                   ; 0567 _ 7E, 18
?_004:  cmp     byte [ebp-71H], 14                      ; 0569 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 056D _ 0F 85, FFFFFEF5
        mov     eax, dword [line.2261]                  ; 0573 _ A1, 0000024C(d)
        cmp     eax, 7                                  ; 0578 _ 83. F8, 07
        jle     ?_001                                   ; 057B _ 0F 8E, FFFFFEE7
?_005:  movzx   eax, byte [ebp-71H]                     ; 0581 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0585 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 058C _ 84. C0
        je      ?_007                                   ; 058E _ 0F 84, 00000128
        cmp     byte [ebp-71H], 15                      ; 0594 _ 80. 7D, 8F, 0F
        jbe     ?_007                                   ; 0598 _ 0F 86, 0000011E
        cmp     byte [ebp-71H], 83                      ; 059E _ 80. 7D, 8F, 53
        ja      ?_007                                   ; 05A2 _ 0F 87, 00000114
        mov     eax, dword [line.2261]                  ; 05A8 _ A1, 0000024C(d)
        cmp     eax, 142                                ; 05AD _ 3D, 0000008E
        jg      ?_007                                   ; 05B2 _ 0F 8F, 00000104
        mov     eax, dword [pos.2262]                   ; 05B8 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 05BD _ 8D. 78, 28
        mov     eax, dword [line.2261]                  ; 05C0 _ A1, 0000024C(d)
        lea     esi, [eax+10H]                          ; 05C5 _ 8D. 70, 10
        mov     eax, dword [pos.2262]                   ; 05C8 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05CD _ 8D. 58, 1A
        mov     eax, dword [line.2261]                  ; 05D0 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 05D5 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 05D8 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 05DD _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 05E0 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 05E5 _ 8B. 00
        sub     esp, 4                                  ; 05E7 _ 83. EC, 04
        push    edi                                     ; 05EA _ 57
        push    esi                                     ; 05EB _ 56
        push    ebx                                     ; 05EC _ 53
        push    ecx                                     ; 05ED _ 51
        push    7                                       ; 05EE _ 6A, 07
        push    edx                                     ; 05F0 _ 52
        push    eax                                     ; 05F1 _ 50
        call    boxfill8                                ; 05F2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F7 _ 83. C4, 20
        mov     eax, dword [pos.2262]                   ; 05FA _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 05FF _ 8D. 78, 2A
        mov     eax, dword [line.2261]                  ; 0602 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 0607 _ 8D. 70, 12
        mov     eax, dword [pos.2262]                   ; 060A _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 060F _ 8D. 58, 1A
        mov     eax, dword [line.2261]                  ; 0612 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 0617 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 061A _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0620 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0625 _ 83. EC, 08
        push    edi                                     ; 0628 _ 57
        push    esi                                     ; 0629 _ 56
        push    ebx                                     ; 062A _ 53
        push    ecx                                     ; 062B _ 51
        push    edx                                     ; 062C _ 52
        push    eax                                     ; 062D _ 50
        call    sheet_refresh                           ; 062E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0633 _ 83. C4, 20
        movzx   eax, byte [ebp-71H]                     ; 0636 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 063A _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0641 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0644 _ C6. 45, E3, 00
        mov     eax, dword [pos.2262]                   ; 0648 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 064D _ 8D. 70, 1A
        mov     eax, dword [line.2261]                  ; 0650 _ A1, 0000024C(d)
        lea     ebx, [eax+0AH]                          ; 0655 _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 0658 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 065E _ A1, 00000224(d)
        sub     esp, 8                                  ; 0663 _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 0666 _ 8D. 4D, E2
        push    ecx                                     ; 0669 _ 51
        push    0                                       ; 066A _ 6A, 00
        push    esi                                     ; 066C _ 56
        push    ebx                                     ; 066D _ 53
        push    edx                                     ; 066E _ 52
        push    eax                                     ; 066F _ 50
        call    showString                              ; 0670 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0675 _ 83. C4, 20
        mov     eax, dword [line.2261]                  ; 0678 _ A1, 0000024C(d)
        add     eax, 8                                  ; 067D _ 83. C0, 08
        mov     dword [line.2261], eax                  ; 0680 _ A3, 0000024C(d)
        mov     eax, dword [sheet_win]                  ; 0685 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 068A _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 068D _ 8D. 50, F0
        mov     eax, dword [line.2261]                  ; 0690 _ A1, 0000024C(d)
        cmp     edx, eax                                ; 0695 _ 39. C2
        jg      ?_006                                   ; 0697 _ 7F, 17
        mov     eax, dword [pos.2262]                   ; 0699 _ A1, 00000074(d)
        add     eax, 16                                 ; 069E _ 83. C0, 10
        mov     dword [pos.2262], eax                   ; 06A1 _ A3, 00000074(d)
        mov     dword [line.2261], 0                    ; 06A6 _ C7. 05, 0000024C(d), 00000000
?_006:  mov     dword [ebp-68H], 0                      ; 06B0 _ C7. 45, 98, 00000000
        jmp     ?_014                                   ; 06B7 _ E9, 0000030D

?_007:  cmp     byte [ebp-71H], 14                      ; 06BC _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 06C0 _ 0F 85, FFFFFDA2
        mov     eax, dword [line.2261]                  ; 06C6 _ A1, 0000024C(d)
        cmp     eax, 7                                  ; 06CB _ 83. F8, 07
        jle     ?_001                                   ; 06CE _ 0F 8E, FFFFFD94
        mov     eax, dword [pos.2262]                   ; 06D4 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 06D9 _ 8D. 78, 28
        mov     eax, dword [line.2261]                  ; 06DC _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 06E1 _ 8D. 70, 12
        mov     eax, dword [pos.2262]                   ; 06E4 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06E9 _ 8D. 58, 1A
        mov     eax, dword [line.2261]                  ; 06EC _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 06F1 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 06F4 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 06F9 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 06FC _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0701 _ 8B. 00
        sub     esp, 4                                  ; 0703 _ 83. EC, 04
        push    edi                                     ; 0706 _ 57
        push    esi                                     ; 0707 _ 56
        push    ebx                                     ; 0708 _ 53
        push    ecx                                     ; 0709 _ 51
        push    7                                       ; 070A _ 6A, 07
        push    edx                                     ; 070C _ 52
        push    eax                                     ; 070D _ 50
        call    boxfill8                                ; 070E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0713 _ 83. C4, 20
        mov     eax, dword [pos.2262]                   ; 0716 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 071B _ 8D. 78, 2A
        mov     eax, dword [line.2261]                  ; 071E _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 0723 _ 8D. 70, 12
        mov     eax, dword [pos.2262]                   ; 0726 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 072B _ 8D. 58, 1A
        mov     eax, dword [line.2261]                  ; 072E _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 0733 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0736 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 073C _ A1, 00000224(d)
        sub     esp, 8                                  ; 0741 _ 83. EC, 08
        push    edi                                     ; 0744 _ 57
        push    esi                                     ; 0745 _ 56
        push    ebx                                     ; 0746 _ 53
        push    ecx                                     ; 0747 _ 51
        push    edx                                     ; 0748 _ 52
        push    eax                                     ; 0749 _ 50
        call    sheet_refresh                           ; 074A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 074F _ 83. C4, 20
        mov     eax, dword [line.2261]                  ; 0752 _ A1, 0000024C(d)
        sub     eax, 8                                  ; 0757 _ 83. E8, 08
        mov     dword [line.2261], eax                  ; 075A _ A3, 0000024C(d)
        mov     eax, dword [pos.2262]                   ; 075F _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0764 _ 8D. 78, 28
        mov     eax, dword [line.2261]                  ; 0767 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 076C _ 8D. 70, 12
        mov     eax, dword [pos.2262]                   ; 076F _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0774 _ 8D. 58, 1A
        mov     eax, dword [line.2261]                  ; 0777 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 077C _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 077F _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0784 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0787 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 078C _ 8B. 00
        sub     esp, 4                                  ; 078E _ 83. EC, 04
        push    edi                                     ; 0791 _ 57
        push    esi                                     ; 0792 _ 56
        push    ebx                                     ; 0793 _ 53
        push    ecx                                     ; 0794 _ 51
        push    7                                       ; 0795 _ 6A, 07
        push    edx                                     ; 0797 _ 52
        push    eax                                     ; 0798 _ 50
        call    boxfill8                                ; 0799 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 079E _ 83. C4, 20
        mov     eax, dword [pos.2262]                   ; 07A1 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 07A6 _ 8D. 78, 2A
        mov     eax, dword [line.2261]                  ; 07A9 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 07AE _ 8D. 70, 12
        mov     eax, dword [pos.2262]                   ; 07B1 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 07B6 _ 8D. 58, 1A
        mov     eax, dword [line.2261]                  ; 07B9 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 07BE _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 07C1 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 07C7 _ A1, 00000224(d)
        sub     esp, 8                                  ; 07CC _ 83. EC, 08
        push    edi                                     ; 07CF _ 57
        push    esi                                     ; 07D0 _ 56
        push    ebx                                     ; 07D1 _ 53
        push    ecx                                     ; 07D2 _ 51
        push    edx                                     ; 07D3 _ 52
        push    eax                                     ; 07D4 _ 50
        call    sheet_refresh                           ; 07D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07DA _ 83. C4, 20
        jmp     ?_001                                   ; 07DD _ E9, FFFFFC86

?_008:  sub     esp, 12                                 ; 07E2 _ 83. EC, 0C
        push    mouseInfo                               ; 07E5 _ 68, 00000024(d)
        call    fifo8_status                            ; 07EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07EF _ 83. C4, 10
        test    eax, eax                                ; 07F2 _ 85. C0
        jz      ?_009                                   ; 07F4 _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 07F6 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 07FC _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0802 _ A1, 00000224(d)
        sub     esp, 4                                  ; 0807 _ 83. EC, 04
        push    ecx                                     ; 080A _ 51
        push    edx                                     ; 080B _ 52
        push    eax                                     ; 080C _ 50
        call    showMouseInfo                           ; 080D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0812 _ 83. C4, 10
        jmp     ?_001                                   ; 0815 _ E9, FFFFFC4E

?_009:  sub     esp, 12                                 ; 081A _ 83. EC, 0C
        push    timerInfo                               ; 081D _ 68, 00000200(d)
        call    fifo8_status                            ; 0822 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0827 _ 83. C4, 10
        test    eax, eax                                ; 082A _ 85. C0
        je      ?_001                                   ; 082C _ 0F 84, FFFFFC36
        call    io_sti                                  ; 0832 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0837 _ 83. EC, 0C
        push    timerInfo                               ; 083A _ 68, 00000200(d)
        call    fifo8_get                               ; 083F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0844 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0847 _ 89. 45, CC
        cmp     dword [ebp-34H], 10                     ; 084A _ 83. 7D, CC, 0A
        jnz     ?_010                                   ; 084E _ 75, 73
        mov     edx, dword [sheet_back]                 ; 0850 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0856 _ A1, 00000224(d)
        sub     esp, 8                                  ; 085B _ 83. EC, 08
        push    ?_194                                   ; 085E _ 68, 00000030(d)
        push    7                                       ; 0863 _ 6A, 07
        push    160                                     ; 0865 _ 68, 000000A0
        push    dword [ebp-6CH]                         ; 086A _ FF. 75, 94
        push    edx                                     ; 086D _ 52
        push    eax                                     ; 086E _ 50
        call    showString                              ; 086F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0874 _ 83. C4, 20
        sub     esp, 8                                  ; 0877 _ 83. EC, 08
        push    100                                     ; 087A _ 6A, 64
        push    dword [ebp-54H]                         ; 087C _ FF. 75, AC
        call    timer_setTime                           ; 087F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0884 _ 83. C4, 10
        add     dword [ebp-6CH], 8                      ; 0887 _ 83. 45, 94, 08
        add     dword [ebp-68H], 1                      ; 088B _ 83. 45, 98, 01
        cmp     dword [ebp-6CH], 39                     ; 088F _ 83. 7D, 94, 27
        jle     ?_001                                   ; 0893 _ 0F 8E, FFFFFBCF
        cmp     dword [ebp-68H], 5                      ; 0899 _ 83. 7D, 98, 05
        jne     ?_001                                   ; 089D _ 0F 85, FFFFFBC5
        call    io_cli                                  ; 08A3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2257]                ; 08A8 _ A1, 00000234(d)
        sub     esp, 12                                 ; 08AD _ 83. EC, 0C
        push    eax                                     ; 08B0 _ 50
        call    task_sleep                              ; 08B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08B6 _ 83. C4, 10
        call    io_sti                                  ; 08B9 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 08BE _ E9, FFFFFBA5

?_010:  cmp     dword [ebp-34H], 2                      ; 08C3 _ 83. 7D, CC, 02
        jnz     ?_011                                   ; 08C7 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 08C9 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 08CF _ A1, 00000224(d)
        sub     esp, 8                                  ; 08D4 _ 83. EC, 08
        push    ?_195                                   ; 08D7 _ 68, 00000032(d)
        push    7                                       ; 08DC _ 6A, 07
        push    32                                      ; 08DE _ 6A, 20
        push    0                                       ; 08E0 _ 6A, 00
        push    edx                                     ; 08E2 _ 52
        push    eax                                     ; 08E3 _ 50
        call    showString                              ; 08E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08E9 _ 83. C4, 20
        jmp     ?_001                                   ; 08EC _ E9, FFFFFB77

?_011:  cmp     dword [ebp-34H], 0                      ; 08F1 _ 83. 7D, CC, 00
        jz      ?_012                                   ; 08F5 _ 74, 1E
        sub     esp, 4                                  ; 08F7 _ 83. EC, 04
        push    0                                       ; 08FA _ 6A, 00
        push    timerInfo                               ; 08FC _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 0901 _ FF. 75, B4
        call    timer_init                              ; 0904 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0909 _ 83. C4, 10
        mov     dword [ebp-70H], 0                      ; 090C _ C7. 45, 90, 00000000
        jmp     ?_013                                   ; 0913 _ EB, 1C

?_012:  sub     esp, 4                                  ; 0915 _ 83. EC, 04
        push    1                                       ; 0918 _ 6A, 01
        push    timerInfo                               ; 091A _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 091F _ FF. 75, B4
        call    timer_init                              ; 0922 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0927 _ 83. C4, 10
        mov     dword [ebp-70H], 7                      ; 092A _ C7. 45, 90, 00000007
?_013:  sub     esp, 8                                  ; 0931 _ 83. EC, 08
        push    50                                      ; 0934 _ 6A, 32
        push    dword [ebp-4CH]                         ; 0936 _ FF. 75, B4
        call    timer_setTime                           ; 0939 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 093E _ 83. C4, 10
        mov     eax, dword [pos.2262]                   ; 0941 _ A1, 00000074(d)
        add     eax, 40                                 ; 0946 _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0949 _ 89. 45, 84
        mov     eax, dword [line.2261]                  ; 094C _ A1, 0000024C(d)
        lea     edi, [eax+10H]                          ; 0951 _ 8D. 78, 10
        mov     eax, dword [pos.2262]                   ; 0954 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0959 _ 8D. 70, 1A
        mov     eax, dword [line.2261]                  ; 095C _ A1, 0000024C(d)
        lea     ebx, [eax+0AH]                          ; 0961 _ 8D. 58, 0A
        mov     eax, dword [ebp-70H]                    ; 0964 _ 8B. 45, 90
        movzx   ecx, al                                 ; 0967 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 096A _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 096F _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0972 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0977 _ 8B. 00
        sub     esp, 4                                  ; 0979 _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 097C _ FF. 75, 84
        push    edi                                     ; 097F _ 57
        push    esi                                     ; 0980 _ 56
        push    ebx                                     ; 0981 _ 53
        push    ecx                                     ; 0982 _ 51
        push    edx                                     ; 0983 _ 52
        push    eax                                     ; 0984 _ 50
        call    boxfill8                                ; 0985 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 098A _ 83. C4, 20
        mov     eax, dword [pos.2262]                   ; 098D _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0992 _ 8D. 78, 2A
        mov     eax, dword [line.2261]                  ; 0995 _ A1, 0000024C(d)
        lea     esi, [eax+12H]                          ; 099A _ 8D. 70, 12
        mov     eax, dword [pos.2262]                   ; 099D _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 09A2 _ 8D. 58, 1A
        mov     eax, dword [line.2261]                  ; 09A5 _ A1, 0000024C(d)
        lea     ecx, [eax+0AH]                          ; 09AA _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 09AD _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 09B3 _ A1, 00000224(d)
        sub     esp, 8                                  ; 09B8 _ 83. EC, 08
        push    edi                                     ; 09BB _ 57
        push    esi                                     ; 09BC _ 56
        push    ebx                                     ; 09BD _ 53
        push    ecx                                     ; 09BE _ 51
        push    edx                                     ; 09BF _ 52
        push    eax                                     ; 09C0 _ 50
        call    sheet_refresh                           ; 09C1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09C6 _ 83. C4, 20
?_014:  jmp     ?_001                                   ; 09C9 _ E9, FFFFFA9A
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 09CE _ 55
        mov     ebp, esp                                ; 09CF _ 89. E5
        sub     esp, 88                                 ; 09D1 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 09D4 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 09D7 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 09DA _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 09E0 _ 89. 45, F4
        xor     eax, eax                                ; 09E3 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 09E5 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 09EB _ A1, 00000224(d)
        sub     esp, 8                                  ; 09F0 _ 83. EC, 08
        push    ?_196                                   ; 09F3 _ 68, 00000039(d)
        push    7                                       ; 09F8 _ 6A, 07
        push    144                                     ; 09FA _ 68, 00000090
        push    0                                       ; 09FF _ 6A, 00
        push    edx                                     ; 0A01 _ 52
        push    eax                                     ; 0A02 _ 50
        call    showString                              ; 0A03 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A08 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 0A0B _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0A12 _ C7. 45, C8, 00000000
        push    0                                       ; 0A19 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0A1B _ 8D. 45, EC
        push    eax                                     ; 0A1E _ 50
        push    8                                       ; 0A1F _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0A21 _ 8D. 45, D0
        push    eax                                     ; 0A24 _ 50
        call    fifo8_init                              ; 0A25 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A2A _ 83. C4, 10
        call    timer_alloc                             ; 0A2D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0A32 _ 89. 45, C4
        sub     esp, 4                                  ; 0A35 _ 83. EC, 04
        push    123                                     ; 0A38 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0A3A _ 8D. 45, D0
        push    eax                                     ; 0A3D _ 50
        push    dword [ebp-3CH]                         ; 0A3E _ FF. 75, C4
        call    timer_init                              ; 0A41 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A46 _ 83. C4, 10
        sub     esp, 8                                  ; 0A49 _ 83. EC, 08
        push    100                                     ; 0A4C _ 6A, 64
        push    dword [ebp-3CH]                         ; 0A4E _ FF. 75, C4
        call    timer_setTime                           ; 0A51 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A56 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 0A59 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 0A60 _ C7. 45, C0, 00000000
?_015:  add     dword [ebp-40H], 1                      ; 0A67 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 0A6B _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 0A6E _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 0A71 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 0A74 _ 8B. 00
        sub     esp, 4                                  ; 0A76 _ 83. EC, 04
        push    38                                      ; 0A79 _ 6A, 26
        push    100                                     ; 0A7B _ 6A, 64
        push    23                                      ; 0A7D _ 6A, 17
        push    8                                       ; 0A7F _ 6A, 08
        push    8                                       ; 0A81 _ 6A, 08
        push    edx                                     ; 0A83 _ 52
        push    eax                                     ; 0A84 _ 50
        call    boxfill8                                ; 0A85 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A8A _ 83. C4, 20
        sub     esp, 12                                 ; 0A8D _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 0A90 _ FF. 75, C0
        call    intToHexStr                             ; 0A93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A98 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0A9B _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 0A9E _ A1, 00000224(d)
        sub     esp, 8                                  ; 0AA3 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 0AA6 _ FF. 75, CC
        push    10                                      ; 0AA9 _ 6A, 0A
        push    23                                      ; 0AAB _ 6A, 17
        push    8                                       ; 0AAD _ 6A, 08
        push    dword [ebp-4CH]                         ; 0AAF _ FF. 75, B4
        push    eax                                     ; 0AB2 _ 50
        call    showString                              ; 0AB3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AB8 _ 83. C4, 20
        call    io_cli                                  ; 0ABB _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0AC0 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0AC3 _ 8D. 45, D0
        push    eax                                     ; 0AC6 _ 50
        call    fifo8_status                            ; 0AC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ACC _ 83. C4, 10
        test    eax, eax                                ; 0ACF _ 85. C0
        jnz     ?_016                                   ; 0AD1 _ 75, 07
        call    io_sti                                  ; 0AD3 _ E8, FFFFFFFC(rel)
        jmp     ?_015                                   ; 0AD8 _ EB, 8D

?_016:  sub     esp, 12                                 ; 0ADA _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0ADD _ 8D. 45, D0
        push    eax                                     ; 0AE0 _ 50
        call    fifo8_get                               ; 0AE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AE6 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0AE9 _ 89. 45, C8
        call    io_sti                                  ; 0AEC _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 0AF1 _ 83. 7D, C8, 7B
        jne     ?_015                                   ; 0AF5 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 0AFB _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0B01 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0B06 _ 83. EC, 08
        push    ?_197                                   ; 0B09 _ 68, 00000046(d)
        push    7                                       ; 0B0E _ 6A, 07
        push    176                                     ; 0B10 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 0B15 _ FF. 75, BC
        push    edx                                     ; 0B18 _ 52
        push    eax                                     ; 0B19 _ 50
        call    showString                              ; 0B1A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B1F _ 83. C4, 20
        sub     esp, 8                                  ; 0B22 _ 83. EC, 08
        push    100                                     ; 0B25 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0B27 _ FF. 75, C4
        call    timer_setTime                           ; 0B2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B2F _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 0B32 _ 83. 45, BC, 08
        jmp     ?_015                                   ; 0B36 _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0B3B _ 55
        mov     ebp, esp                                ; 0B3C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0B3E _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0B41 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0B47 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0B4A _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0B50 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0B53 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0B59 _ 90
        pop     ebp                                     ; 0B5A _ 5D
        ret                                             ; 0B5B _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0B5C _ 55
        mov     ebp, esp                                ; 0B5D _ 89. E5
        push    ebx                                     ; 0B5F _ 53
        sub     esp, 36                                 ; 0B60 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0B63 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0B66 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0B69 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0B6C _ 89. 45, F4
        jmp     ?_018                                   ; 0B6F _ EB, 3E

?_017:  mov     eax, dword [ebp+1CH]                    ; 0B71 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B74 _ 0F B6. 00
        movzx   eax, al                                 ; 0B77 _ 0F B6. C0
        shl     eax, 4                                  ; 0B7A _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0B7D _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0B83 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0B87 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0B8A _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0B8D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0B90 _ 8B. 00
        sub     esp, 8                                  ; 0B92 _ 83. EC, 08
        push    ebx                                     ; 0B95 _ 53
        push    ecx                                     ; 0B96 _ 51
        push    dword [ebp+14H]                         ; 0B97 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B9A _ FF. 75, 10
        push    edx                                     ; 0B9D _ 52
        push    eax                                     ; 0B9E _ 50
        call    showFont8                               ; 0B9F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BA4 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0BA7 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0BAB _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 0BAF _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0BB2 _ 0F B6. 00
        test    al, al                                  ; 0BB5 _ 84. C0
        jnz     ?_017                                   ; 0BB7 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0BB9 _ 8B. 45, 14
        add     eax, 16                                 ; 0BBC _ 83. C0, 10
        sub     esp, 8                                  ; 0BBF _ 83. EC, 08
        push    eax                                     ; 0BC2 _ 50
        push    dword [ebp+10H]                         ; 0BC3 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0BC6 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0BC9 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0BCC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BCF _ FF. 75, 08
        call    sheet_refresh                           ; 0BD2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BD7 _ 83. C4, 20
        nop                                             ; 0BDA _ 90
        mov     ebx, dword [ebp-4H]                     ; 0BDB _ 8B. 5D, FC
        leave                                           ; 0BDE _ C9
        ret                                             ; 0BDF _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0BE0 _ 55
        mov     ebp, esp                                ; 0BE1 _ 89. E5
        push    ebx                                     ; 0BE3 _ 53
        sub     esp, 4                                  ; 0BE4 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0BE7 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0BEA _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0BED _ 8B. 45, 0C
        sub     eax, 1                                  ; 0BF0 _ 83. E8, 01
        sub     esp, 4                                  ; 0BF3 _ 83. EC, 04
        push    edx                                     ; 0BF6 _ 52
        push    eax                                     ; 0BF7 _ 50
        push    0                                       ; 0BF8 _ 6A, 00
        push    0                                       ; 0BFA _ 6A, 00
        push    14                                      ; 0BFC _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0BFE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C01 _ FF. 75, 08
        call    boxfill8                                ; 0C04 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C09 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C0C _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0C0F _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0C12 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C15 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C18 _ 8B. 45, 10
        sub     eax, 24                                 ; 0C1B _ 83. E8, 18
        sub     esp, 4                                  ; 0C1E _ 83. EC, 04
        push    ecx                                     ; 0C21 _ 51
        push    edx                                     ; 0C22 _ 52
        push    eax                                     ; 0C23 _ 50
        push    0                                       ; 0C24 _ 6A, 00
        push    8                                       ; 0C26 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0C28 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C2B _ FF. 75, 08
        call    boxfill8                                ; 0C2E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C33 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C36 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0C39 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0C3C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C3F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C42 _ 8B. 45, 10
        sub     eax, 23                                 ; 0C45 _ 83. E8, 17
        sub     esp, 4                                  ; 0C48 _ 83. EC, 04
        push    ecx                                     ; 0C4B _ 51
        push    edx                                     ; 0C4C _ 52
        push    eax                                     ; 0C4D _ 50
        push    0                                       ; 0C4E _ 6A, 00
        push    7                                       ; 0C50 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0C52 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C55 _ FF. 75, 08
        call    boxfill8                                ; 0C58 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C5D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C60 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0C63 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0C66 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C69 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C6C _ 8B. 45, 10
        sub     eax, 22                                 ; 0C6F _ 83. E8, 16
        sub     esp, 4                                  ; 0C72 _ 83. EC, 04
        push    ecx                                     ; 0C75 _ 51
        push    edx                                     ; 0C76 _ 52
        push    eax                                     ; 0C77 _ 50
        push    0                                       ; 0C78 _ 6A, 00
        push    8                                       ; 0C7A _ 6A, 08
        push    dword [ebp+0CH]                         ; 0C7C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C7F _ FF. 75, 08
        call    boxfill8                                ; 0C82 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C87 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0C8A _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0C8D _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0C90 _ 8B. 45, 10
        sub     eax, 20                                 ; 0C93 _ 83. E8, 14
        sub     esp, 4                                  ; 0C96 _ 83. EC, 04
        push    edx                                     ; 0C99 _ 52
        push    51                                      ; 0C9A _ 6A, 33
        push    eax                                     ; 0C9C _ 50
        push    10                                      ; 0C9D _ 6A, 0A
        push    7                                       ; 0C9F _ 6A, 07
        push    dword [ebp+0CH]                         ; 0CA1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CA4 _ FF. 75, 08
        call    boxfill8                                ; 0CA7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CAC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CAF _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CB2 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CB5 _ 8B. 45, 10
        sub     eax, 20                                 ; 0CB8 _ 83. E8, 14
        sub     esp, 4                                  ; 0CBB _ 83. EC, 04
        push    edx                                     ; 0CBE _ 52
        push    9                                       ; 0CBF _ 6A, 09
        push    eax                                     ; 0CC1 _ 50
        push    9                                       ; 0CC2 _ 6A, 09
        push    7                                       ; 0CC4 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0CC6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CC9 _ FF. 75, 08
        call    boxfill8                                ; 0CCC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CD1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CD4 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0CD7 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0CDA _ 8B. 45, 10
        sub     eax, 4                                  ; 0CDD _ 83. E8, 04
        sub     esp, 4                                  ; 0CE0 _ 83. EC, 04
        push    edx                                     ; 0CE3 _ 52
        push    50                                      ; 0CE4 _ 6A, 32
        push    eax                                     ; 0CE6 _ 50
        push    10                                      ; 0CE7 _ 6A, 0A
        push    15                                      ; 0CE9 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0CEB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0CEE _ FF. 75, 08
        call    boxfill8                                ; 0CF1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CF6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0CF9 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0CFC _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0CFF _ 8B. 45, 10
        sub     eax, 19                                 ; 0D02 _ 83. E8, 13
        sub     esp, 4                                  ; 0D05 _ 83. EC, 04
        push    edx                                     ; 0D08 _ 52
        push    50                                      ; 0D09 _ 6A, 32
        push    eax                                     ; 0D0B _ 50
        push    50                                      ; 0D0C _ 6A, 32
        push    15                                      ; 0D0E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D10 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D13 _ FF. 75, 08
        call    boxfill8                                ; 0D16 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D1B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D1E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D21 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D24 _ 8B. 45, 10
        sub     eax, 3                                  ; 0D27 _ 83. E8, 03
        sub     esp, 4                                  ; 0D2A _ 83. EC, 04
        push    edx                                     ; 0D2D _ 52
        push    50                                      ; 0D2E _ 6A, 32
        push    eax                                     ; 0D30 _ 50
        push    10                                      ; 0D31 _ 6A, 0A
        push    0                                       ; 0D33 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0D35 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D38 _ FF. 75, 08
        call    boxfill8                                ; 0D3B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D40 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D43 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0D46 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0D49 _ 8B. 45, 10
        sub     eax, 20                                 ; 0D4C _ 83. E8, 14
        sub     esp, 4                                  ; 0D4F _ 83. EC, 04
        push    edx                                     ; 0D52 _ 52
        push    51                                      ; 0D53 _ 6A, 33
        push    eax                                     ; 0D55 _ 50
        push    51                                      ; 0D56 _ 6A, 33
        push    0                                       ; 0D58 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0D5A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D5D _ FF. 75, 08
        call    boxfill8                                ; 0D60 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D65 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D68 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0D6B _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0D6E _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D71 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D74 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0D77 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0D7A _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D7D _ 83. E8, 2F
        sub     esp, 4                                  ; 0D80 _ 83. EC, 04
        push    ebx                                     ; 0D83 _ 53
        push    ecx                                     ; 0D84 _ 51
        push    edx                                     ; 0D85 _ 52
        push    eax                                     ; 0D86 _ 50
        push    15                                      ; 0D87 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D89 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D8C _ FF. 75, 08
        call    boxfill8                                ; 0D8F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D94 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0D97 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D9A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D9D _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0DA0 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0DA3 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0DA6 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0DA9 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0DAC _ 83. E8, 2F
        sub     esp, 4                                  ; 0DAF _ 83. EC, 04
        push    ebx                                     ; 0DB2 _ 53
        push    ecx                                     ; 0DB3 _ 51
        push    edx                                     ; 0DB4 _ 52
        push    eax                                     ; 0DB5 _ 50
        push    15                                      ; 0DB6 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0DB8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DBB _ FF. 75, 08
        call    boxfill8                                ; 0DBE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DC3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DC6 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DC9 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DCC _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0DCF _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0DD2 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DD5 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0DD8 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0DDB _ 83. E8, 2F
        sub     esp, 4                                  ; 0DDE _ 83. EC, 04
        push    ebx                                     ; 0DE1 _ 53
        push    ecx                                     ; 0DE2 _ 51
        push    edx                                     ; 0DE3 _ 52
        push    eax                                     ; 0DE4 _ 50
        push    7                                       ; 0DE5 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0DE7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DEA _ FF. 75, 08
        call    boxfill8                                ; 0DED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DF2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0DF5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DF8 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DFB _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0DFE _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0E01 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0E04 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0E07 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0E0A _ 83. E8, 03
        sub     esp, 4                                  ; 0E0D _ 83. EC, 04
        push    ebx                                     ; 0E10 _ 53
        push    ecx                                     ; 0E11 _ 51
        push    edx                                     ; 0E12 _ 52
        push    eax                                     ; 0E13 _ 50
        push    7                                       ; 0E14 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0E16 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E19 _ FF. 75, 08
        call    boxfill8                                ; 0E1C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E21 _ 83. C4, 20
        nop                                             ; 0E24 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0E25 _ 8B. 5D, FC
        leave                                           ; 0E28 _ C9
        ret                                             ; 0E29 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0E2A _ 55
        mov     ebp, esp                                ; 0E2B _ 89. E5
        sub     esp, 24                                 ; 0E2D _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E30 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E35 _ 89. 45, EC
        movzx   eax, word [?_206]                       ; 0E38 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E3F _ 98
        mov     dword [ebp-10H], eax                    ; 0E40 _ 89. 45, F0
        movzx   eax, word [?_207]                       ; 0E43 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E4A _ 98
        mov     dword [ebp-0CH], eax                    ; 0E4B _ 89. 45, F4
        sub     esp, 4                                  ; 0E4E _ 83. EC, 04
        push    table_rgb.2305                          ; 0E51 _ 68, 00000080(d)
        push    15                                      ; 0E56 _ 6A, 0F
        push    0                                       ; 0E58 _ 6A, 00
        call    set_palette                             ; 0E5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E5F _ 83. C4, 10
        nop                                             ; 0E62 _ 90
        leave                                           ; 0E63 _ C9
        ret                                             ; 0E64 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0E65 _ 55
        mov     ebp, esp                                ; 0E66 _ 89. E5
        sub     esp, 24                                 ; 0E68 _ 83. EC, 18
        call    io_load_eflags                          ; 0E6B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0E70 _ 89. 45, F4
        call    io_cli                                  ; 0E73 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0E78 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0E7B _ FF. 75, 08
        push    968                                     ; 0E7E _ 68, 000003C8
        call    io_out8                                 ; 0E83 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E88 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0E8B _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0E8E _ 89. 45, F0
        jmp     ?_020                                   ; 0E91 _ EB, 65

?_019:  mov     eax, dword [ebp+10H]                    ; 0E93 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0E96 _ 0F B6. 00
        shr     al, 2                                   ; 0E99 _ C0. E8, 02
        movzx   eax, al                                 ; 0E9C _ 0F B6. C0
        sub     esp, 8                                  ; 0E9F _ 83. EC, 08
        push    eax                                     ; 0EA2 _ 50
        push    969                                     ; 0EA3 _ 68, 000003C9
        call    io_out8                                 ; 0EA8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EAD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0EB0 _ 8B. 45, 10
        add     eax, 1                                  ; 0EB3 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0EB6 _ 0F B6. 00
        shr     al, 2                                   ; 0EB9 _ C0. E8, 02
        movzx   eax, al                                 ; 0EBC _ 0F B6. C0
        sub     esp, 8                                  ; 0EBF _ 83. EC, 08
        push    eax                                     ; 0EC2 _ 50
        push    969                                     ; 0EC3 _ 68, 000003C9
        call    io_out8                                 ; 0EC8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ECD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0ED0 _ 8B. 45, 10
        add     eax, 2                                  ; 0ED3 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0ED6 _ 0F B6. 00
        shr     al, 2                                   ; 0ED9 _ C0. E8, 02
        movzx   eax, al                                 ; 0EDC _ 0F B6. C0
        sub     esp, 8                                  ; 0EDF _ 83. EC, 08
        push    eax                                     ; 0EE2 _ 50
        push    969                                     ; 0EE3 _ 68, 000003C9
        call    io_out8                                 ; 0EE8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EED _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0EF0 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0EF4 _ 83. 45, F0, 01
?_020:  mov     eax, dword [ebp-10H]                    ; 0EF8 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0EFB _ 3B. 45, 0C
        jle     ?_019                                   ; 0EFE _ 7E, 93
        sub     esp, 12                                 ; 0F00 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0F03 _ FF. 75, F4
        call    io_store_eflags                         ; 0F06 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F0B _ 83. C4, 10
        nop                                             ; 0F0E _ 90
        leave                                           ; 0F0F _ C9
        ret                                             ; 0F10 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0F11 _ 55
        mov     ebp, esp                                ; 0F12 _ 89. E5
        sub     esp, 20                                 ; 0F14 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0F17 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0F1A _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0F1D _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0F20 _ 89. 45, FC
        jmp     ?_024                                   ; 0F23 _ EB, 33

?_021:  mov     eax, dword [ebp+14H]                    ; 0F25 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0F28 _ 89. 45, F8
        jmp     ?_023                                   ; 0F2B _ EB, 1F

?_022:  mov     eax, dword [ebp-4H]                     ; 0F2D _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0F30 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F34 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F36 _ 8B. 45, F8
        add     eax, edx                                ; 0F39 _ 01. D0
        mov     edx, eax                                ; 0F3B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F3D _ 8B. 45, 08
        add     edx, eax                                ; 0F40 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F42 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F46 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0F48 _ 83. 45, F8, 01
?_023:  mov     eax, dword [ebp-8H]                     ; 0F4C _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0F4F _ 3B. 45, 1C
        jle     ?_022                                   ; 0F52 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0F54 _ 83. 45, FC, 01
?_024:  mov     eax, dword [ebp-4H]                     ; 0F58 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0F5B _ 3B. 45, 20
        jle     ?_021                                   ; 0F5E _ 7E, C5
        nop                                             ; 0F60 _ 90
        leave                                           ; 0F61 _ C9
        ret                                             ; 0F62 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0F63 _ 55
        mov     ebp, esp                                ; 0F64 _ 89. E5
        push    edi                                     ; 0F66 _ 57
        push    esi                                     ; 0F67 _ 56
        push    ebx                                     ; 0F68 _ 53
        sub     esp, 16                                 ; 0F69 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0F6C _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0F6F _ 8B. 45, 14
        add     eax, edx                                ; 0F72 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0F74 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0F77 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0F7A _ 8B. 45, 18
        add     eax, edx                                ; 0F7D _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0F7F _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0F82 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0F85 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0F88 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0F8B _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0F8E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F91 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F94 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0F97 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0F9A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F9D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FA0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FA3 _ 8B. 00
        push    edi                                     ; 0FA5 _ 57
        push    esi                                     ; 0FA6 _ 56
        push    ebx                                     ; 0FA7 _ 53
        push    ecx                                     ; 0FA8 _ 51
        push    15                                      ; 0FA9 _ 6A, 0F
        push    edx                                     ; 0FAB _ 52
        push    eax                                     ; 0FAC _ 50
        call    boxfill8                                ; 0FAD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FB2 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FB5 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0FB8 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0FBB _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0FBE _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0FC1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FC4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FC7 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FCA _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0FCD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FD0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FD3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FD6 _ 8B. 00
        push    edi                                     ; 0FD8 _ 57
        push    esi                                     ; 0FD9 _ 56
        push    ebx                                     ; 0FDA _ 53
        push    ecx                                     ; 0FDB _ 51
        push    15                                      ; 0FDC _ 6A, 0F
        push    edx                                     ; 0FDE _ 52
        push    eax                                     ; 0FDF _ 50
        call    boxfill8                                ; 0FE0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FE5 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0FE8 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0FEB _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0FEE _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0FF1 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0FF4 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 0FF7 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 0FFA _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0FFD _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1000 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1003 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1006 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1009 _ 8B. 00
        push    edi                                     ; 100B _ 57
        push    esi                                     ; 100C _ 56
        push    ebx                                     ; 100D _ 53
        push    ecx                                     ; 100E _ 51
        push    7                                       ; 100F _ 6A, 07
        push    edx                                     ; 1011 _ 52
        push    eax                                     ; 1012 _ 50
        call    boxfill8                                ; 1013 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1018 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 101B _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 101E _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1021 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1024 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1027 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 102A _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 102D _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1030 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1033 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1036 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1039 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 103C _ 8B. 00
        push    edi                                     ; 103E _ 57
        push    esi                                     ; 103F _ 56
        push    ebx                                     ; 1040 _ 53
        push    ecx                                     ; 1041 _ 51
        push    7                                       ; 1042 _ 6A, 07
        push    edx                                     ; 1044 _ 52
        push    eax                                     ; 1045 _ 50
        call    boxfill8                                ; 1046 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 104B _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 104E _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1051 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1054 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1057 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 105A _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 105D _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1060 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1063 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1066 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1069 _ 8B. 00
        push    esi                                     ; 106B _ 56
        push    dword [ebp-14H]                         ; 106C _ FF. 75, EC
        push    ebx                                     ; 106F _ 53
        push    ecx                                     ; 1070 _ 51
        push    0                                       ; 1071 _ 6A, 00
        push    edx                                     ; 1073 _ 52
        push    eax                                     ; 1074 _ 50
        call    boxfill8                                ; 1075 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 107A _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 107D _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1080 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1083 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1086 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1089 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 108C _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 108F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1092 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1095 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1098 _ 8B. 00
        push    dword [ebp-10H]                         ; 109A _ FF. 75, F0
        push    esi                                     ; 109D _ 56
        push    ebx                                     ; 109E _ 53
        push    ecx                                     ; 109F _ 51
        push    0                                       ; 10A0 _ 6A, 00
        push    edx                                     ; 10A2 _ 52
        push    eax                                     ; 10A3 _ 50
        call    boxfill8                                ; 10A4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10A9 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 10AC _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 10AF _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 10B2 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 10B5 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 10B8 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 10BB _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 10BE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 10C1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10C4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10C7 _ 8B. 00
        push    esi                                     ; 10C9 _ 56
        push    dword [ebp-14H]                         ; 10CA _ FF. 75, EC
        push    ebx                                     ; 10CD _ 53
        push    ecx                                     ; 10CE _ 51
        push    8                                       ; 10CF _ 6A, 08
        push    edx                                     ; 10D1 _ 52
        push    eax                                     ; 10D2 _ 50
        call    boxfill8                                ; 10D3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10D8 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 10DB _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 10DE _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 10E1 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 10E4 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 10E7 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 10EA _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 10ED _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 10F0 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 10F3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 10F6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10F9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10FC _ 8B. 00
        push    edi                                     ; 10FE _ 57
        push    esi                                     ; 10FF _ 56
        push    ebx                                     ; 1100 _ 53
        push    ecx                                     ; 1101 _ 51
        push    8                                       ; 1102 _ 6A, 08
        push    edx                                     ; 1104 _ 52
        push    eax                                     ; 1105 _ 50
        call    boxfill8                                ; 1106 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 110B _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 110E _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1111 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1114 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1117 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 111A _ 8B. 45, 1C
        movzx   ecx, al                                 ; 111D _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1120 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1123 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1126 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1129 _ 8B. 00
        push    dword [ebp-10H]                         ; 112B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 112E _ FF. 75, EC
        push    esi                                     ; 1131 _ 56
        push    ebx                                     ; 1132 _ 53
        push    ecx                                     ; 1133 _ 51
        push    edx                                     ; 1134 _ 52
        push    eax                                     ; 1135 _ 50
        call    boxfill8                                ; 1136 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 113B _ 83. C4, 1C
        nop                                             ; 113E _ 90
        lea     esp, [ebp-0CH]                          ; 113F _ 8D. 65, F4
        pop     ebx                                     ; 1142 _ 5B
        pop     esi                                     ; 1143 _ 5E
        pop     edi                                     ; 1144 _ 5F
        pop     ebp                                     ; 1145 _ 5D
        ret                                             ; 1146 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1147 _ 55
        mov     ebp, esp                                ; 1148 _ 89. E5
        sub     esp, 20                                 ; 114A _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 114D _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1150 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1153 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 115A _ E9, 0000016C

?_025:  mov     edx, dword [ebp-4H]                     ; 115F _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1162 _ 8B. 45, 1C
        add     eax, edx                                ; 1165 _ 01. D0
        movzx   eax, byte [eax]                         ; 1167 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 116A _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 116D _ 80. 7D, FB, 00
        jns     ?_026                                   ; 1171 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1173 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1176 _ 8B. 45, FC
        add     eax, edx                                ; 1179 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 117B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 117F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1181 _ 8B. 45, 10
        add     eax, edx                                ; 1184 _ 01. D0
        mov     edx, eax                                ; 1186 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1188 _ 8B. 45, 08
        add     edx, eax                                ; 118B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 118D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1191 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1193 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1197 _ 83. E0, 40
        test    eax, eax                                ; 119A _ 85. C0
        jz      ?_027                                   ; 119C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 119E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11A1 _ 8B. 45, FC
        add     eax, edx                                ; 11A4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11A6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11AA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11AC _ 8B. 45, 10
        add     eax, edx                                ; 11AF _ 01. D0
        lea     edx, [eax+1H]                           ; 11B1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 11B4 _ 8B. 45, 08
        add     edx, eax                                ; 11B7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11B9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11BD _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 11BF _ 0F BE. 45, FB
        and     eax, 20H                                ; 11C3 _ 83. E0, 20
        test    eax, eax                                ; 11C6 _ 85. C0
        jz      ?_028                                   ; 11C8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11CA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11CD _ 8B. 45, FC
        add     eax, edx                                ; 11D0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11D2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11D6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11D8 _ 8B. 45, 10
        add     eax, edx                                ; 11DB _ 01. D0
        lea     edx, [eax+2H]                           ; 11DD _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 11E0 _ 8B. 45, 08
        add     edx, eax                                ; 11E3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11E5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11E9 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 11EB _ 0F BE. 45, FB
        and     eax, 10H                                ; 11EF _ 83. E0, 10
        test    eax, eax                                ; 11F2 _ 85. C0
        jz      ?_029                                   ; 11F4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 11F6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11F9 _ 8B. 45, FC
        add     eax, edx                                ; 11FC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11FE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1202 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1204 _ 8B. 45, 10
        add     eax, edx                                ; 1207 _ 01. D0
        lea     edx, [eax+3H]                           ; 1209 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 120C _ 8B. 45, 08
        add     edx, eax                                ; 120F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1211 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1215 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1217 _ 0F BE. 45, FB
        and     eax, 08H                                ; 121B _ 83. E0, 08
        test    eax, eax                                ; 121E _ 85. C0
        jz      ?_030                                   ; 1220 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1222 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1225 _ 8B. 45, FC
        add     eax, edx                                ; 1228 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 122A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 122E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1230 _ 8B. 45, 10
        add     eax, edx                                ; 1233 _ 01. D0
        lea     edx, [eax+4H]                           ; 1235 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1238 _ 8B. 45, 08
        add     edx, eax                                ; 123B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 123D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1241 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 1243 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1247 _ 83. E0, 04
        test    eax, eax                                ; 124A _ 85. C0
        jz      ?_031                                   ; 124C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 124E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1251 _ 8B. 45, FC
        add     eax, edx                                ; 1254 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1256 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 125A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 125C _ 8B. 45, 10
        add     eax, edx                                ; 125F _ 01. D0
        lea     edx, [eax+5H]                           ; 1261 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1264 _ 8B. 45, 08
        add     edx, eax                                ; 1267 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1269 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 126D _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 126F _ 0F BE. 45, FB
        and     eax, 02H                                ; 1273 _ 83. E0, 02
        test    eax, eax                                ; 1276 _ 85. C0
        jz      ?_032                                   ; 1278 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 127A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 127D _ 8B. 45, FC
        add     eax, edx                                ; 1280 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1282 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1286 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1288 _ 8B. 45, 10
        add     eax, edx                                ; 128B _ 01. D0
        lea     edx, [eax+6H]                           ; 128D _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1290 _ 8B. 45, 08
        add     edx, eax                                ; 1293 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1295 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1299 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 129B _ 0F BE. 45, FB
        and     eax, 01H                                ; 129F _ 83. E0, 01
        test    eax, eax                                ; 12A2 _ 85. C0
        jz      ?_033                                   ; 12A4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 12A6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 12A9 _ 8B. 45, FC
        add     eax, edx                                ; 12AC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12AE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 12B2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 12B4 _ 8B. 45, 10
        add     eax, edx                                ; 12B7 _ 01. D0
        lea     edx, [eax+7H]                           ; 12B9 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 12BC _ 8B. 45, 08
        add     edx, eax                                ; 12BF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12C1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12C5 _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 12C7 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 12CB _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 12CF _ 0F 8E, FFFFFE8A
        nop                                             ; 12D5 _ 90
        leave                                           ; 12D6 _ C9
        ret                                             ; 12D7 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 12D8 _ 55
        mov     ebp, esp                                ; 12D9 _ 89. E5
        sub     esp, 20                                 ; 12DB _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 12DE _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 12E1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 12E4 _ C7. 45, FC, 00000000
        jmp     ?_041                                   ; 12EB _ E9, 000000B1

?_035:  mov     dword [ebp-8H], 0                       ; 12F0 _ C7. 45, F8, 00000000
        jmp     ?_040                                   ; 12F7 _ E9, 00000097

?_036:  mov     eax, dword [ebp-4H]                     ; 12FC _ 8B. 45, FC
        shl     eax, 4                                  ; 12FF _ C1. E0, 04
        mov     edx, eax                                ; 1302 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1304 _ 8B. 45, F8
        add     eax, edx                                ; 1307 _ 01. D0
        add     eax, cursor.2360                        ; 1309 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 130E _ 0F B6. 00
        cmp     al, 42                                  ; 1311 _ 3C, 2A
        jnz     ?_037                                   ; 1313 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1315 _ 8B. 45, FC
        shl     eax, 4                                  ; 1318 _ C1. E0, 04
        mov     edx, eax                                ; 131B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 131D _ 8B. 45, F8
        add     eax, edx                                ; 1320 _ 01. D0
        mov     edx, eax                                ; 1322 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1324 _ 8B. 45, 08
        add     eax, edx                                ; 1327 _ 01. D0
        mov     byte [eax], 0                           ; 1329 _ C6. 00, 00
?_037:  mov     eax, dword [ebp-4H]                     ; 132C _ 8B. 45, FC
        shl     eax, 4                                  ; 132F _ C1. E0, 04
        mov     edx, eax                                ; 1332 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1334 _ 8B. 45, F8
        add     eax, edx                                ; 1337 _ 01. D0
        add     eax, cursor.2360                        ; 1339 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 133E _ 0F B6. 00
        cmp     al, 79                                  ; 1341 _ 3C, 4F
        jnz     ?_038                                   ; 1343 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1345 _ 8B. 45, FC
        shl     eax, 4                                  ; 1348 _ C1. E0, 04
        mov     edx, eax                                ; 134B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 134D _ 8B. 45, F8
        add     eax, edx                                ; 1350 _ 01. D0
        mov     edx, eax                                ; 1352 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1354 _ 8B. 45, 08
        add     eax, edx                                ; 1357 _ 01. D0
        mov     byte [eax], 7                           ; 1359 _ C6. 00, 07
?_038:  mov     eax, dword [ebp-4H]                     ; 135C _ 8B. 45, FC
        shl     eax, 4                                  ; 135F _ C1. E0, 04
        mov     edx, eax                                ; 1362 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1364 _ 8B. 45, F8
        add     eax, edx                                ; 1367 _ 01. D0
        add     eax, cursor.2360                        ; 1369 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 136E _ 0F B6. 00
        cmp     al, 46                                  ; 1371 _ 3C, 2E
        jnz     ?_039                                   ; 1373 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1375 _ 8B. 45, FC
        shl     eax, 4                                  ; 1378 _ C1. E0, 04
        mov     edx, eax                                ; 137B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 137D _ 8B. 45, F8
        add     eax, edx                                ; 1380 _ 01. D0
        mov     edx, eax                                ; 1382 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1384 _ 8B. 45, 08
        add     edx, eax                                ; 1387 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1389 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 138D _ 88. 02
?_039:  add     dword [ebp-8H], 1                       ; 138F _ 83. 45, F8, 01
?_040:  cmp     dword [ebp-8H], 15                      ; 1393 _ 83. 7D, F8, 0F
        jle     ?_036                                   ; 1397 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 139D _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 15                      ; 13A1 _ 83. 7D, FC, 0F
        jle     ?_035                                   ; 13A5 _ 0F 8E, FFFFFF45
        nop                                             ; 13AB _ 90
        leave                                           ; 13AC _ C9
        ret                                             ; 13AD _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 13AE _ 55
        mov     ebp, esp                                ; 13AF _ 89. E5
        push    ebx                                     ; 13B1 _ 53
        sub     esp, 16                                 ; 13B2 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 13B5 _ C7. 45, F8, 00000000
        jmp     ?_045                                   ; 13BC _ EB, 50

?_042:  mov     dword [ebp-0CH], 0                      ; 13BE _ C7. 45, F4, 00000000
        jmp     ?_044                                   ; 13C5 _ EB, 3B

?_043:  mov     eax, dword [ebp-8H]                     ; 13C7 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 13CA _ 0F AF. 45, 24
        mov     edx, eax                                ; 13CE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 13D0 _ 8B. 45, F4
        add     eax, edx                                ; 13D3 _ 01. D0
        mov     edx, eax                                ; 13D5 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 13D7 _ 8B. 45, 20
        add     eax, edx                                ; 13DA _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 13DC _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 13DF _ 8B. 55, F8
        add     edx, ecx                                ; 13E2 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 13E4 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 13E8 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 13EB _ 8B. 4D, F4
        add     ecx, ebx                                ; 13EE _ 01. D9
        add     edx, ecx                                ; 13F0 _ 01. CA
        mov     ecx, edx                                ; 13F2 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 13F4 _ 8B. 55, 08
        add     edx, ecx                                ; 13F7 _ 01. CA
        movzx   eax, byte [eax]                         ; 13F9 _ 0F B6. 00
        mov     byte [edx], al                          ; 13FC _ 88. 02
        add     dword [ebp-0CH], 1                      ; 13FE _ 83. 45, F4, 01
?_044:  mov     eax, dword [ebp-0CH]                    ; 1402 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1405 _ 3B. 45, 10
        jl      ?_043                                   ; 1408 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 140A _ 83. 45, F8, 01
?_045:  mov     eax, dword [ebp-8H]                     ; 140E _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1411 _ 3B. 45, 14
        jl      ?_042                                   ; 1414 _ 7C, A8
        nop                                             ; 1416 _ 90
        add     esp, 16                                 ; 1417 _ 83. C4, 10
        pop     ebx                                     ; 141A _ 5B
        pop     ebp                                     ; 141B _ 5D
        ret                                             ; 141C _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 141D _ 55
        mov     ebp, esp                                ; 141E _ 89. E5
        sub     esp, 24                                 ; 1420 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1423 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1428 _ 89. 45, EC
        movzx   eax, word [?_206]                       ; 142B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1432 _ 98
        mov     dword [ebp-10H], eax                    ; 1433 _ 89. 45, F0
        movzx   eax, word [?_207]                       ; 1436 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 143D _ 98
        mov     dword [ebp-0CH], eax                    ; 143E _ 89. 45, F4
        sub     esp, 8                                  ; 1441 _ 83. EC, 08
        push    32                                      ; 1444 _ 6A, 20
        push    32                                      ; 1446 _ 6A, 20
        call    io_out8                                 ; 1448 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 144D _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1450 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1454 _ 83. EC, 0C
        push    96                                      ; 1457 _ 6A, 60
        call    io_in8                                  ; 1459 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 145E _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1461 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1464 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1468 _ 83. EC, 08
        push    eax                                     ; 146B _ 50
        push    keyInfo                                 ; 146C _ 68, 00000008(d)
        call    fifo8_put                               ; 1471 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1476 _ 83. C4, 10
        nop                                             ; 1479 _ 90
        leave                                           ; 147A _ C9
        ret                                             ; 147B _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 147C _ 55
        mov     ebp, esp                                ; 147D _ 89. E5
        sub     esp, 40                                 ; 147F _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1482 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1485 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1488 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 148C _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 148F _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1492 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1496 _ 83. EC, 0C
        push    eax                                     ; 1499 _ 50
        call    charToVal                               ; 149A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 149F _ 83. C4, 10
        mov     byte [?_205], al                        ; 14A2 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 14A7 _ 0F B6. 45, E4
        shr     al, 4                                   ; 14AB _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 14AE _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 14B1 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 14B5 _ 0F BE. C0
        sub     esp, 12                                 ; 14B8 _ 83. EC, 0C
        push    eax                                     ; 14BB _ 50
        call    charToVal                               ; 14BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14C1 _ 83. C4, 10
        mov     byte [?_204], al                        ; 14C4 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 14C9 _ B8, 00000000(d)
        leave                                           ; 14CE _ C9
        ret                                             ; 14CF _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 14D0 _ 55
        mov     ebp, esp                                ; 14D1 _ 89. E5
        sub     esp, 4                                  ; 14D3 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 14D6 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 14D9 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 14DC _ 80. 7D, FC, 09
        jle     ?_046                                   ; 14E0 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 14E2 _ 0F B6. 45, FC
        add     eax, 55                                 ; 14E6 _ 83. C0, 37
        jmp     ?_047                                   ; 14E9 _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 14EB _ 0F B6. 45, FC
        add     eax, 48                                 ; 14EF _ 83. C0, 30
?_047:  leave                                           ; 14F2 _ C9
        ret                                             ; 14F3 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 14F4 _ 55
        mov     ebp, esp                                ; 14F5 _ 89. E5
        sub     esp, 16                                 ; 14F7 _ 83. EC, 10
        mov     byte [str.2403], 48                     ; 14FA _ C6. 05, 00000250(d), 30
        mov     byte [?_212], 120                       ; 1501 _ C6. 05, 00000251(d), 78
        mov     byte [?_213], 0                         ; 1508 _ C6. 05, 0000025A(d), 00
        mov     dword [ebp-0CH], 2                      ; 150F _ C7. 45, F4, 00000002
        jmp     ?_049                                   ; 1516 _ EB, 0F

?_048:  mov     eax, dword [ebp-0CH]                    ; 1518 _ 8B. 45, F4
        add     eax, str.2403                           ; 151B _ 05, 00000250(d)
        mov     byte [eax], 48                          ; 1520 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1523 _ 83. 45, F4, 01
?_049:  cmp     dword [ebp-0CH], 9                      ; 1527 _ 83. 7D, F4, 09
        jle     ?_048                                   ; 152B _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 152D _ C7. 45, F8, 00000009
        jmp     ?_052                                   ; 1534 _ EB, 48

?_050:  mov     eax, dword [ebp+8H]                     ; 1536 _ 8B. 45, 08
        and     eax, 0FH                                ; 1539 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 153C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 153F _ 8B. 45, 08
        shr     eax, 4                                  ; 1542 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1545 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1548 _ 83. 7D, FC, 09
        jle     ?_051                                   ; 154C _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 154E _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1551 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1554 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1557 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 155A _ 89. 55, F8
        mov     edx, ecx                                ; 155D _ 89. CA
        mov     byte [str.2403+eax], dl                 ; 155F _ 88. 90, 00000250(d)
        jmp     ?_052                                   ; 1565 _ EB, 17

?_051:  mov     eax, dword [ebp-4H]                     ; 1567 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 156A _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 156D _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1570 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1573 _ 89. 55, F8
        mov     edx, ecx                                ; 1576 _ 89. CA
        mov     byte [str.2403+eax], dl                 ; 1578 _ 88. 90, 00000250(d)
?_052:  cmp     dword [ebp-8H], 1                       ; 157E _ 83. 7D, F8, 01
        jle     ?_053                                   ; 1582 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1584 _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 1588 _ 75, AC
?_053:  mov     eax, str.2403                           ; 158A _ B8, 00000250(d)
        leave                                           ; 158F _ C9
        ret                                             ; 1590 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1591 _ 55
        mov     ebp, esp                                ; 1592 _ 89. E5
        sub     esp, 8                                  ; 1594 _ 83. EC, 08
?_054:  sub     esp, 12                                 ; 1597 _ 83. EC, 0C
        push    100                                     ; 159A _ 6A, 64
        call    io_in8                                  ; 159C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15A1 _ 83. C4, 10
        movsx   eax, al                                 ; 15A4 _ 0F BE. C0
        and     eax, 02H                                ; 15A7 _ 83. E0, 02
        test    eax, eax                                ; 15AA _ 85. C0
        jz      ?_055                                   ; 15AC _ 74, 02
        jmp     ?_054                                   ; 15AE _ EB, E7

?_055:  nop                                             ; 15B0 _ 90
        nop                                             ; 15B1 _ 90
        leave                                           ; 15B2 _ C9
        ret                                             ; 15B3 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 15B4 _ 55
        mov     ebp, esp                                ; 15B5 _ 89. E5
        sub     esp, 8                                  ; 15B7 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 15BA _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15BF _ 83. EC, 08
        push    96                                      ; 15C2 _ 6A, 60
        push    100                                     ; 15C4 _ 6A, 64
        call    io_out8                                 ; 15C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15CB _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 15CE _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15D3 _ 83. EC, 08
        push    71                                      ; 15D6 _ 6A, 47
        push    96                                      ; 15D8 _ 6A, 60
        call    io_out8                                 ; 15DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15DF _ 83. C4, 10
        nop                                             ; 15E2 _ 90
        leave                                           ; 15E3 _ C9
        ret                                             ; 15E4 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 15E5 _ 55
        mov     ebp, esp                                ; 15E6 _ 89. E5
        sub     esp, 8                                  ; 15E8 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 15EB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 15F0 _ 83. EC, 08
        push    212                                     ; 15F3 _ 68, 000000D4
        push    100                                     ; 15F8 _ 6A, 64
        call    io_out8                                 ; 15FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15FF _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1602 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1607 _ 83. EC, 08
        push    244                                     ; 160A _ 68, 000000F4
        push    96                                      ; 160F _ 6A, 60
        call    io_out8                                 ; 1611 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1616 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1619 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 161C _ C6. 40, 03, 00
        nop                                             ; 1620 _ 90
        leave                                           ; 1621 _ C9
        ret                                             ; 1622 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1623 _ 55
        mov     ebp, esp                                ; 1624 _ 89. E5
        sub     esp, 24                                 ; 1626 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1629 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 162D _ 83. EC, 08
        push    32                                      ; 1630 _ 6A, 20
        push    160                                     ; 1632 _ 68, 000000A0
        call    io_out8                                 ; 1637 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 163C _ 83. C4, 10
        sub     esp, 8                                  ; 163F _ 83. EC, 08
        push    32                                      ; 1642 _ 6A, 20
        push    32                                      ; 1644 _ 6A, 20
        call    io_out8                                 ; 1646 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 164B _ 83. C4, 10
        sub     esp, 12                                 ; 164E _ 83. EC, 0C
        push    96                                      ; 1651 _ 6A, 60
        call    io_in8                                  ; 1653 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1658 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 165B _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 165E _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1662 _ 83. EC, 08
        push    eax                                     ; 1665 _ 50
        push    mouseInfo                               ; 1666 _ 68, 00000024(d)
        call    fifo8_put                               ; 166B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1670 _ 83. C4, 10
        nop                                             ; 1673 _ 90
        leave                                           ; 1674 _ C9
        ret                                             ; 1675 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1676 _ 55
        mov     ebp, esp                                ; 1677 _ 89. E5
        sub     esp, 40                                 ; 1679 _ 83. EC, 28
        call    io_sti                                  ; 167C _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1681 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 1686 _ 89. 45, E8
        movzx   eax, word [?_206]                       ; 1689 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1690 _ 98
        mov     dword [ebp-14H], eax                    ; 1691 _ 89. 45, EC
        movzx   eax, word [?_207]                       ; 1694 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 169B _ 98
        mov     dword [ebp-10H], eax                    ; 169C _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 169F _ C6. 45, E7, 00
        sub     esp, 12                                 ; 16A3 _ 83. EC, 0C
        push    keyInfo                                 ; 16A6 _ 68, 00000008(d)
        call    fifo8_get                               ; 16AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16B0 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 16B3 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 16B6 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 16BA _ 83. EC, 0C
        push    eax                                     ; 16BD _ 50
        call    charToHex                               ; 16BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16C3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 16C6 _ 89. 45, F4
        mov     edx, dword [line.2436]                  ; 16C9 _ 8B. 15, 0000025C(d)
        mov     eax, dword [pos.2435]                   ; 16CF _ A1, 00000260(d)
        sub     esp, 8                                  ; 16D4 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 16D7 _ FF. 75, F4
        push    7                                       ; 16DA _ 6A, 07
        push    edx                                     ; 16DC _ 52
        push    eax                                     ; 16DD _ 50
        push    dword [ebp+0CH]                         ; 16DE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16E1 _ FF. 75, 08
        call    showString                              ; 16E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16E9 _ 83. C4, 20
        mov     eax, dword [pos.2435]                   ; 16EC _ A1, 00000260(d)
        add     eax, 32                                 ; 16F1 _ 83. C0, 20
        mov     dword [pos.2435], eax                   ; 16F4 _ A3, 00000260(d)
        mov     eax, dword [pos.2435]                   ; 16F9 _ A1, 00000260(d)
        cmp     dword [ebp-14H], eax                    ; 16FE _ 39. 45, EC
        jnz     ?_058                                   ; 1701 _ 75, 28
        mov     eax, dword [line.2436]                  ; 1703 _ A1, 0000025C(d)
        cmp     dword [ebp-10H], eax                    ; 1708 _ 39. 45, F0
        jz      ?_056                                   ; 170B _ 74, 0A
        mov     eax, dword [line.2436]                  ; 170D _ A1, 0000025C(d)
        add     eax, 16                                 ; 1712 _ 83. C0, 10
        jmp     ?_057                                   ; 1715 _ EB, 05

?_056:  mov     eax, 0                                  ; 1717 _ B8, 00000000
?_057:  mov     dword [line.2436], eax                  ; 171C _ A3, 0000025C(d)
        mov     dword [pos.2435], 0                     ; 1721 _ C7. 05, 00000260(d), 00000000
?_058:  nop                                             ; 172B _ 90
        leave                                           ; 172C _ C9
        ret                                             ; 172D _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 172E _ 55
        mov     ebp, esp                                ; 172F _ 89. E5
        sub     esp, 24                                 ; 1731 _ 83. EC, 18
        call    io_sti                                  ; 1734 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1739 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 173D _ 83. EC, 0C
        push    mouseInfo                               ; 1740 _ 68, 00000024(d)
        call    fifo8_get                               ; 1745 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 174A _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 174D _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1750 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1754 _ 83. EC, 08
        push    eax                                     ; 1757 _ 50
        push    mouse_move                              ; 1758 _ 68, 000000E0(d)
        call    mouse_decode                            ; 175D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1762 _ 83. C4, 10
        test    eax, eax                                ; 1765 _ 85. C0
        jz      ?_059                                   ; 1767 _ 74, 60
        sub     esp, 4                                  ; 1769 _ 83. EC, 04
        push    mouse_move                              ; 176C _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1771 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1774 _ FF. 75, 08
        call    computeMousePos                         ; 1777 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 177C _ 83. C4, 10
        mov     edx, dword [my]                         ; 177F _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 1785 _ A1, 000000F0(d)
        push    edx                                     ; 178A _ 52
        push    eax                                     ; 178B _ 50
        push    dword [ebp+10H]                         ; 178C _ FF. 75, 10
        push    dword [ebp+8H]                          ; 178F _ FF. 75, 08
        call    sheet_slide                             ; 1792 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1797 _ 83. C4, 10
        mov     eax, dword [?_209]                      ; 179A _ A1, 000000EC(d)
        and     eax, 01H                                ; 179F _ 83. E0, 01
        test    eax, eax                                ; 17A2 _ 85. C0
        jz      ?_059                                   ; 17A4 _ 74, 23
        mov     eax, dword [my]                         ; 17A6 _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 17AB _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 17AE _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 17B3 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 17B6 _ A1, 00000228(d)
        push    ecx                                     ; 17BB _ 51
        push    edx                                     ; 17BC _ 52
        push    eax                                     ; 17BD _ 50
        push    dword [ebp+8H]                          ; 17BE _ FF. 75, 08
        call    sheet_slide                             ; 17C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17C6 _ 83. C4, 10
?_059:  nop                                             ; 17C9 _ 90
        leave                                           ; 17CA _ C9
        ret                                             ; 17CB _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 17CC _ 55
        mov     ebp, esp                                ; 17CD _ 89. E5
        sub     esp, 4                                  ; 17CF _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 17D2 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 17D5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 17D8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17DB _ 0F B6. 40, 03
        test    al, al                                  ; 17DF _ 84. C0
        jnz     ?_061                                   ; 17E1 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 17E3 _ 80. 7D, FC, FA
        jnz     ?_060                                   ; 17E7 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 17E9 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 17EC _ C6. 40, 03, 01
?_060:  mov     eax, 0                                  ; 17F0 _ B8, 00000000
        jmp     ?_068                                   ; 17F5 _ E9, 0000010C

?_061:  mov     eax, dword [ebp+8H]                     ; 17FA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17FD _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1801 _ 3C, 01
        jnz     ?_063                                   ; 1803 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1805 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1809 _ 83. C8, 37
        cmp     al, 63                                  ; 180C _ 3C, 3F
        jnz     ?_062                                   ; 180E _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1810 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1813 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1817 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1819 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 181C _ C6. 40, 03, 02
?_062:  mov     eax, 0                                  ; 1820 _ B8, 00000000
        jmp     ?_068                                   ; 1825 _ E9, 000000DC

?_063:  mov     eax, dword [ebp+8H]                     ; 182A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 182D _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1831 _ 3C, 02
        jnz     ?_064                                   ; 1833 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1835 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1838 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 183C _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 183F _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1842 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1846 _ B8, 00000000
        jmp     ?_068                                   ; 184B _ E9, 000000B6

?_064:  mov     eax, dword [ebp+8H]                     ; 1850 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1853 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1857 _ 3C, 03
        jne     ?_067                                   ; 1859 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 185F _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1862 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1866 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1869 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 186C _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1870 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1873 _ 0F B6. 00
        movzx   eax, al                                 ; 1876 _ 0F B6. C0
        and     eax, 07H                                ; 1879 _ 83. E0, 07
        mov     edx, eax                                ; 187C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 187E _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1881 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1884 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1887 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 188B _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 188E _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1891 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1894 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1897 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 189B _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 189E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18A1 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 18A4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18A7 _ 0F B6. 00
        movzx   eax, al                                 ; 18AA _ 0F B6. C0
        and     eax, 10H                                ; 18AD _ 83. E0, 10
        test    eax, eax                                ; 18B0 _ 85. C0
        jz      ?_065                                   ; 18B2 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 18B4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 18B7 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 18BA _ 0D, FFFFFF00
        mov     edx, eax                                ; 18BF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18C1 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 18C4 _ 89. 50, 04
?_065:  mov     eax, dword [ebp+8H]                     ; 18C7 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 18CA _ 0F B6. 00
        movzx   eax, al                                 ; 18CD _ 0F B6. C0
        and     eax, 20H                                ; 18D0 _ 83. E0, 20
        test    eax, eax                                ; 18D3 _ 85. C0
        jz      ?_066                                   ; 18D5 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 18D7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18DA _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 18DD _ 0D, FFFFFF00
        mov     edx, eax                                ; 18E2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18E4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18E7 _ 89. 50, 08
?_066:  mov     eax, dword [ebp+8H]                     ; 18EA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18ED _ 8B. 40, 08
        neg     eax                                     ; 18F0 _ F7. D8
        mov     edx, eax                                ; 18F2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18F4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18F7 _ 89. 50, 08
        mov     eax, 1                                  ; 18FA _ B8, 00000001
        jmp     ?_068                                   ; 18FF _ EB, 05

?_067:  mov     eax, 4294967295                         ; 1901 _ B8, FFFFFFFF
?_068:  leave                                           ; 1906 _ C9
        ret                                             ; 1907 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1908 _ 55
        mov     ebp, esp                                ; 1909 _ 89. E5
        sub     esp, 16                                 ; 190B _ 83. EC, 10
        movzx   eax, word [?_206]                       ; 190E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1915 _ 98
        mov     dword [ebp-8H], eax                     ; 1916 _ 89. 45, F8
        movzx   eax, word [?_207]                       ; 1919 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1920 _ 98
        mov     dword [ebp-4H], eax                     ; 1921 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1924 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1927 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 192A _ A1, 000000F0(d)
        add     eax, edx                                ; 192F _ 01. D0
        mov     dword [mx], eax                         ; 1931 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1936 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1939 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 193C _ A1, 000000F4(d)
        add     eax, edx                                ; 1941 _ 01. D0
        mov     dword [my], eax                         ; 1943 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1948 _ A1, 000000F0(d)
        test    eax, eax                                ; 194D _ 85. C0
        jns     ?_069                                   ; 194F _ 79, 0A
        mov     dword [mx], 0                           ; 1951 _ C7. 05, 000000F0(d), 00000000
?_069:  mov     eax, dword [my]                         ; 195B _ A1, 000000F4(d)
        test    eax, eax                                ; 1960 _ 85. C0
        jns     ?_070                                   ; 1962 _ 79, 0A
        mov     dword [my], 0                           ; 1964 _ C7. 05, 000000F4(d), 00000000
?_070:  mov     eax, dword [ebp-8H]                     ; 196E _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1971 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1974 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1979 _ 39. C2
        jge     ?_071                                   ; 197B _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 197D _ 8B. 45, F8
        sub     eax, 9                                  ; 1980 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1983 _ A3, 000000F0(d)
?_071:  mov     eax, dword [ebp-4H]                     ; 1988 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 198B _ 8D. 50, FF
        mov     eax, dword [my]                         ; 198E _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1993 _ 39. C2
        jge     ?_072                                   ; 1995 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1997 _ 8B. 45, FC
        sub     eax, 1                                  ; 199A _ 83. E8, 01
        mov     dword [my], eax                         ; 199D _ A3, 000000F4(d)
?_072:  nop                                             ; 19A2 _ 90
        leave                                           ; 19A3 _ C9
        ret                                             ; 19A4 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 19A5 _ 55
        mov     ebp, esp                                ; 19A6 _ 89. E5
        sub     esp, 56                                 ; 19A8 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 19AB _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 19B2 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 19B9 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 19C0 _ C7. 45, DC, 00000050
        push    100                                     ; 19C7 _ 6A, 64
        push    dword [ebp+1CH]                         ; 19C9 _ FF. 75, 1C
        push    0                                       ; 19CC _ 6A, 00
        push    0                                       ; 19CE _ 6A, 00
        push    14                                      ; 19D0 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 19D2 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 19D5 _ FF. 75, 14
        call    boxfill8                                ; 19D8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19DD _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 19E0 _ 8B. 45, 20
        movsx   eax, al                                 ; 19E3 _ 0F BE. C0
        sub     esp, 8                                  ; 19E6 _ 83. EC, 08
        push    ?_198                                   ; 19E9 _ 68, 00000048(d)
        push    eax                                     ; 19EE _ 50
        push    dword [ebp-2CH]                         ; 19EF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 19F2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 19F5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19F8 _ FF. 75, 08
        call    showString                              ; 19FB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A00 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1A03 _ 8B. 45, 18
        sub     esp, 12                                 ; 1A06 _ 83. EC, 0C
        push    eax                                     ; 1A09 _ 50
        call    intToHexStr                             ; 1A0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A0F _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1A12 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1A15 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A18 _ 0F BE. C0
        sub     esp, 8                                  ; 1A1B _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1A1E _ FF. 75, E0
        push    eax                                     ; 1A21 _ 50
        push    dword [ebp-2CH]                         ; 1A22 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A25 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A28 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A2B _ FF. 75, 08
        call    showString                              ; 1A2E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A33 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A36 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A3A _ 8B. 45, 20
        movsx   eax, al                                 ; 1A3D _ 0F BE. C0
        sub     esp, 8                                  ; 1A40 _ 83. EC, 08
        push    ?_199                                   ; 1A43 _ 68, 00000052(d)
        push    eax                                     ; 1A48 _ 50
        push    dword [ebp-2CH]                         ; 1A49 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1A4C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1A4F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A52 _ FF. 75, 08
        call    showString                              ; 1A55 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A5A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A5D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1A60 _ 8B. 00
        sub     esp, 12                                 ; 1A62 _ 83. EC, 0C
        push    eax                                     ; 1A65 _ 50
        call    intToHexStr                             ; 1A66 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A6B _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1A6E _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1A71 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A74 _ 0F BE. C0
        sub     esp, 8                                  ; 1A77 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1A7A _ FF. 75, E4
        push    eax                                     ; 1A7D _ 50
        push    dword [ebp-2CH]                         ; 1A7E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1A81 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1A84 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A87 _ FF. 75, 08
        call    showString                              ; 1A8A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A8F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1A92 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1A96 _ 8B. 45, 20
        movsx   eax, al                                 ; 1A99 _ 0F BE. C0
        sub     esp, 8                                  ; 1A9C _ 83. EC, 08
        push    ?_200                                   ; 1A9F _ 68, 00000060(d)
        push    eax                                     ; 1AA4 _ 50
        push    dword [ebp-2CH]                         ; 1AA5 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1AA8 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1AAB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AAE _ FF. 75, 08
        call    showString                              ; 1AB1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AB6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1AB9 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1ABC _ 8B. 40, 04
        sub     esp, 12                                 ; 1ABF _ 83. EC, 0C
        push    eax                                     ; 1AC2 _ 50
        call    intToHexStr                             ; 1AC3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AC8 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1ACB _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1ACE _ 8B. 45, 20
        movsx   eax, al                                 ; 1AD1 _ 0F BE. C0
        sub     esp, 8                                  ; 1AD4 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1AD7 _ FF. 75, E8
        push    eax                                     ; 1ADA _ 50
        push    dword [ebp-2CH]                         ; 1ADB _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1ADE _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1AE1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AE4 _ FF. 75, 08
        call    showString                              ; 1AE7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1AEC _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1AEF _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1AF3 _ 8B. 45, 20
        movsx   eax, al                                 ; 1AF6 _ 0F BE. C0
        sub     esp, 8                                  ; 1AF9 _ 83. EC, 08
        push    ?_201                                   ; 1AFC _ 68, 0000006F(d)
        push    eax                                     ; 1B01 _ 50
        push    dword [ebp-2CH]                         ; 1B02 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B05 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B08 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B0B _ FF. 75, 08
        call    showString                              ; 1B0E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B13 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B16 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1B19 _ 8B. 40, 08
        sub     esp, 12                                 ; 1B1C _ 83. EC, 0C
        push    eax                                     ; 1B1F _ 50
        call    intToHexStr                             ; 1B20 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B25 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1B28 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1B2B _ 8B. 45, 20
        movsx   eax, al                                 ; 1B2E _ 0F BE. C0
        sub     esp, 8                                  ; 1B31 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1B34 _ FF. 75, EC
        push    eax                                     ; 1B37 _ 50
        push    dword [ebp-2CH]                         ; 1B38 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B3B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B3E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B41 _ FF. 75, 08
        call    showString                              ; 1B44 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B49 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1B4C _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1B50 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B53 _ 0F BE. C0
        sub     esp, 8                                  ; 1B56 _ 83. EC, 08
        push    ?_202                                   ; 1B59 _ 68, 0000007B(d)
        push    eax                                     ; 1B5E _ 50
        push    dword [ebp-2CH]                         ; 1B5F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1B62 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1B65 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B68 _ FF. 75, 08
        call    showString                              ; 1B6B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B70 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1B73 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1B76 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1B79 _ 83. EC, 0C
        push    eax                                     ; 1B7C _ 50
        call    intToHexStr                             ; 1B7D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B82 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1B85 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1B88 _ 8B. 45, 20
        movsx   eax, al                                 ; 1B8B _ 0F BE. C0
        sub     esp, 8                                  ; 1B8E _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1B91 _ FF. 75, F0
        push    eax                                     ; 1B94 _ 50
        push    dword [ebp-2CH]                         ; 1B95 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1B98 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1B9B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B9E _ FF. 75, 08
        call    showString                              ; 1BA1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BA6 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1BA9 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1BAD _ 8B. 45, 20
        movsx   eax, al                                 ; 1BB0 _ 0F BE. C0
        sub     esp, 8                                  ; 1BB3 _ 83. EC, 08
        push    ?_203                                   ; 1BB6 _ 68, 00000088(d)
        push    eax                                     ; 1BBB _ 50
        push    dword [ebp-2CH]                         ; 1BBC _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1BBF _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1BC2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BC5 _ FF. 75, 08
        call    showString                              ; 1BC8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BCD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1BD0 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1BD3 _ 8B. 40, 10
        sub     esp, 12                                 ; 1BD6 _ 83. EC, 0C
        push    eax                                     ; 1BD9 _ 50
        call    intToHexStr                             ; 1BDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BDF _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1BE2 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1BE5 _ 8B. 45, 20
        movsx   eax, al                                 ; 1BE8 _ 0F BE. C0
        sub     esp, 8                                  ; 1BEB _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1BEE _ FF. 75, F4
        push    eax                                     ; 1BF1 _ 50
        push    dword [ebp-2CH]                         ; 1BF2 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1BF5 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1BF8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BFB _ FF. 75, 08
        call    showString                              ; 1BFE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C03 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1C06 _ 83. 45, D4, 10
        nop                                             ; 1C0A _ 90
        leave                                           ; 1C0B _ C9
        ret                                             ; 1C0C _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1C0D _ 55
        mov     ebp, esp                                ; 1C0E _ 89. E5
        sub     esp, 24                                 ; 1C10 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 1C13 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1C16 _ 0F AF. 45, 14
        mov     edx, eax                                ; 1C1A _ 89. C2
        mov     eax, dword [memman]                     ; 1C1C _ A1, 00000008(d)
        sub     esp, 8                                  ; 1C21 _ 83. EC, 08
        push    edx                                     ; 1C24 _ 52
        push    eax                                     ; 1C25 _ 50
        call    memman_alloc_4K                         ; 1C26 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C2B _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1C2E _ 89. 45, F0
        sub     esp, 12                                 ; 1C31 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1C34 _ FF. 75, 08
        call    sheet_alloc                             ; 1C37 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C3C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1C3F _ 89. 45, F4
        sub     esp, 12                                 ; 1C42 _ 83. EC, 0C
        push    99                                      ; 1C45 _ 6A, 63
        push    dword [ebp+14H]                         ; 1C47 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1C4A _ FF. 75, 10
        push    dword [ebp-10H]                         ; 1C4D _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1C50 _ FF. 75, F4
        call    sheet_setbuf                            ; 1C53 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C58 _ 83. C4, 20
        sub     esp, 4                                  ; 1C5B _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1C5E _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1C61 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C64 _ FF. 75, 08
        call    make_window8                            ; 1C67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C6C _ 83. C4, 10
        sub     esp, 8                                  ; 1C6F _ 83. EC, 08
        push    7                                       ; 1C72 _ 6A, 07
        push    16                                      ; 1C74 _ 6A, 10
        push    150                                     ; 1C76 _ 68, 00000096
        push    42                                      ; 1C7B _ 6A, 2A
        push    10                                      ; 1C7D _ 6A, 0A
        push    dword [ebp-0CH]                         ; 1C7F _ FF. 75, F4
        call    make_textbox8                           ; 1C82 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C87 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 1C8A _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1C8D _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1C90 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1C93 _ FF. 75, 08
        call    sheet_slide                             ; 1C96 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C9B _ 83. C4, 10
        sub     esp, 4                                  ; 1C9E _ 83. EC, 04
        push    dword [ebp+20H]                         ; 1CA1 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1CA4 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1CA7 _ FF. 75, 08
        call    sheet_level_updown                      ; 1CAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CAF _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1CB2 _ 8B. 45, F4
        leave                                           ; 1CB5 _ C9
        ret                                             ; 1CB6 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 1CB7 _ 55
        mov     ebp, esp                                ; 1CB8 _ 89. E5
        sub     esp, 24                                 ; 1CBA _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 1CBD _ 8B. 45, 18
        imul    eax, dword [ebp+1CH]                    ; 1CC0 _ 0F AF. 45, 1C
        mov     edx, eax                                ; 1CC4 _ 89. C2
        mov     eax, dword [memman]                     ; 1CC6 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1CCB _ 83. EC, 08
        push    edx                                     ; 1CCE _ 52
        push    eax                                     ; 1CCF _ 50
        call    memman_alloc_4K                         ; 1CD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CD5 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1CD8 _ 89. 45, F0
        sub     esp, 12                                 ; 1CDB _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1CDE _ FF. 75, 08
        call    sheet_alloc                             ; 1CE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CE6 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1CE9 _ 89. 45, F4
        sub     esp, 12                                 ; 1CEC _ 83. EC, 0C
        push    99                                      ; 1CEF _ 6A, 63
        push    dword [ebp+1CH]                         ; 1CF1 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1CF4 _ FF. 75, 18
        push    dword [ebp-10H]                         ; 1CF7 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1CFA _ FF. 75, F4
        call    sheet_setbuf                            ; 1CFD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D02 _ 83. C4, 20
        sub     esp, 4                                  ; 1D05 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 1D08 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 1D0B _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1D0E _ FF. 75, 08
        call    make_window8                            ; 1D11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D16 _ 83. C4, 10
        call    task_alloc                              ; 1D19 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 1D1E _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D21 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 1D24 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D2B _ 8B. 45, 0C
        mov     dword [eax+70H], 1073741824             ; 1D2E _ C7. 40, 70, 40000000
        call    get_code32_addr                         ; 1D35 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 1D3A _ F7. D8
        add     eax, task_b_main                        ; 1D3C _ 05, 00000000(d)
        mov     edx, eax                                ; 1D41 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 1D43 _ 8B. 45, 0C
        mov     dword [eax+2CH], edx                    ; 1D46 _ 89. 50, 2C
        mov     eax, dword [ebp+0CH]                    ; 1D49 _ 8B. 45, 0C
        mov     dword [eax+54H], 0                      ; 1D4C _ C7. 40, 54, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D53 _ 8B. 45, 0C
        mov     dword [eax+58H], 8                      ; 1D56 _ C7. 40, 58, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1D5D _ 8B. 45, 0C
        mov     dword [eax+5CH], 32                     ; 1D60 _ C7. 40, 5C, 00000020
        mov     eax, dword [ebp+0CH]                    ; 1D67 _ 8B. 45, 0C
        mov     dword [eax+60H], 24                     ; 1D6A _ C7. 40, 60, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1D71 _ 8B. 45, 0C
        mov     dword [eax+64H], 0                      ; 1D74 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D7B _ 8B. 45, 0C
        mov     dword [eax+68H], 16                     ; 1D7E _ C7. 40, 68, 00000010
        mov     eax, dword [ebp+0CH]                    ; 1D85 _ 8B. 45, 0C
        mov     eax, dword [eax+44H]                    ; 1D88 _ 8B. 40, 44
        lea     edx, [eax-8H]                           ; 1D8B _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 1D8E _ 8B. 45, 0C
        mov     dword [eax+44H], edx                    ; 1D91 _ 89. 50, 44
        mov     eax, dword [ebp+0CH]                    ; 1D94 _ 8B. 45, 0C
        mov     eax, dword [eax+44H]                    ; 1D97 _ 8B. 40, 44
        add     eax, 4                                  ; 1D9A _ 83. C0, 04
        mov     edx, eax                                ; 1D9D _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1D9F _ 8B. 45, F4
        mov     dword [edx], eax                        ; 1DA2 _ 89. 02
        sub     esp, 8                                  ; 1DA4 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1DA7 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1DAA _ FF. 75, 0C
        call    task_run                                ; 1DAD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB2 _ 83. C4, 10
        push    dword [ebp+24H]                         ; 1DB5 _ FF. 75, 24
        push    dword [ebp+20H]                         ; 1DB8 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1DBB _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1DBE _ FF. 75, 08
        call    sheet_slide                             ; 1DC1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DC6 _ 83. C4, 10
        sub     esp, 4                                  ; 1DC9 _ 83. EC, 04
        push    dword [ebp+28H]                         ; 1DCC _ FF. 75, 28
        push    dword [ebp-0CH]                         ; 1DCF _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1DD2 _ FF. 75, 08
        call    sheet_level_updown                      ; 1DD5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DDA _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1DDD _ 8B. 45, F4
        leave                                           ; 1DE0 _ C9
        ret                                             ; 1DE1 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 1DE2 _ 55
        mov     ebp, esp                                ; 1DE3 _ 89. E5
        push    ebx                                     ; 1DE5 _ 53
        sub     esp, 36                                 ; 1DE6 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1DE9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DEC _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1DEF _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1DF2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DF5 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1DF8 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1DFB _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1DFE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E01 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E04 _ 8B. 00
        push    0                                       ; 1E06 _ 6A, 00
        push    edx                                     ; 1E08 _ 52
        push    0                                       ; 1E09 _ 6A, 00
        push    0                                       ; 1E0B _ 6A, 00
        push    8                                       ; 1E0D _ 6A, 08
        push    dword [ebp-10H]                         ; 1E0F _ FF. 75, F0
        push    eax                                     ; 1E12 _ 50
        call    boxfill8                                ; 1E13 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E18 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1E1B _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1E1E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E21 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E24 _ 8B. 00
        push    1                                       ; 1E26 _ 6A, 01
        push    edx                                     ; 1E28 _ 52
        push    1                                       ; 1E29 _ 6A, 01
        push    1                                       ; 1E2B _ 6A, 01
        push    7                                       ; 1E2D _ 6A, 07
        push    dword [ebp-10H]                         ; 1E2F _ FF. 75, F0
        push    eax                                     ; 1E32 _ 50
        call    boxfill8                                ; 1E33 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E38 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E3B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1E3E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E41 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E44 _ 8B. 00
        push    edx                                     ; 1E46 _ 52
        push    0                                       ; 1E47 _ 6A, 00
        push    0                                       ; 1E49 _ 6A, 00
        push    0                                       ; 1E4B _ 6A, 00
        push    8                                       ; 1E4D _ 6A, 08
        push    dword [ebp-10H]                         ; 1E4F _ FF. 75, F0
        push    eax                                     ; 1E52 _ 50
        call    boxfill8                                ; 1E53 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E58 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E5B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1E5E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1E61 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E64 _ 8B. 00
        push    edx                                     ; 1E66 _ 52
        push    1                                       ; 1E67 _ 6A, 01
        push    1                                       ; 1E69 _ 6A, 01
        push    1                                       ; 1E6B _ 6A, 01
        push    7                                       ; 1E6D _ 6A, 07
        push    dword [ebp-10H]                         ; 1E6F _ FF. 75, F0
        push    eax                                     ; 1E72 _ 50
        call    boxfill8                                ; 1E73 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1E78 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1E7B _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1E7E _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1E81 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1E84 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1E87 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1E8A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1E8D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E90 _ 8B. 00
        push    ebx                                     ; 1E92 _ 53
        push    ecx                                     ; 1E93 _ 51
        push    1                                       ; 1E94 _ 6A, 01
        push    edx                                     ; 1E96 _ 52
        push    15                                      ; 1E97 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1E99 _ FF. 75, F0
        push    eax                                     ; 1E9C _ 50
        call    boxfill8                                ; 1E9D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EA2 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1EA5 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1EA8 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1EAB _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1EAE _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1EB1 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1EB4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1EB7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EBA _ 8B. 00
        push    ebx                                     ; 1EBC _ 53
        push    ecx                                     ; 1EBD _ 51
        push    0                                       ; 1EBE _ 6A, 00
        push    edx                                     ; 1EC0 _ 52
        push    0                                       ; 1EC1 _ 6A, 00
        push    dword [ebp-10H]                         ; 1EC3 _ FF. 75, F0
        push    eax                                     ; 1EC6 _ 50
        call    boxfill8                                ; 1EC7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1ECC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1ECF _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1ED2 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1ED5 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1ED8 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1EDB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EDE _ 8B. 00
        push    ecx                                     ; 1EE0 _ 51
        push    edx                                     ; 1EE1 _ 52
        push    2                                       ; 1EE2 _ 6A, 02
        push    2                                       ; 1EE4 _ 6A, 02
        push    8                                       ; 1EE6 _ 6A, 08
        push    dword [ebp-10H]                         ; 1EE8 _ FF. 75, F0
        push    eax                                     ; 1EEB _ 50
        call    boxfill8                                ; 1EEC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1EF1 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1EF4 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1EF7 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1EFA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1EFD _ 8B. 00
        push    20                                      ; 1EFF _ 6A, 14
        push    edx                                     ; 1F01 _ 52
        push    3                                       ; 1F02 _ 6A, 03
        push    3                                       ; 1F04 _ 6A, 03
        push    12                                      ; 1F06 _ 6A, 0C
        push    dword [ebp-10H]                         ; 1F08 _ FF. 75, F0
        push    eax                                     ; 1F0B _ 50
        call    boxfill8                                ; 1F0C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F11 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F14 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1F17 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1F1A _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1F1D _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1F20 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1F23 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1F26 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F29 _ 8B. 00
        push    ebx                                     ; 1F2B _ 53
        push    ecx                                     ; 1F2C _ 51
        push    edx                                     ; 1F2D _ 52
        push    1                                       ; 1F2E _ 6A, 01
        push    15                                      ; 1F30 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1F32 _ FF. 75, F0
        push    eax                                     ; 1F35 _ 50
        call    boxfill8                                ; 1F36 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F3B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1F3E _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1F41 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1F44 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1F47 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1F4A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1F4D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1F50 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1F53 _ 8B. 00
        push    ebx                                     ; 1F55 _ 53
        push    ecx                                     ; 1F56 _ 51
        push    edx                                     ; 1F57 _ 52
        push    0                                       ; 1F58 _ 6A, 00
        push    0                                       ; 1F5A _ 6A, 00
        push    dword [ebp-10H]                         ; 1F5C _ FF. 75, F0
        push    eax                                     ; 1F5F _ 50
        call    boxfill8                                ; 1F60 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1F65 _ 83. C4, 1C
        sub     esp, 8                                  ; 1F68 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1F6B _ FF. 75, 10
        push    7                                       ; 1F6E _ 6A, 07
        push    4                                       ; 1F70 _ 6A, 04
        push    8                                       ; 1F72 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1F74 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F77 _ FF. 75, 08
        call    showString                              ; 1F7A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F7F _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1F82 _ C7. 45, E8, 00000000
        jmp     ?_079                                   ; 1F89 _ EB, 7D

?_073:  mov     dword [ebp-14H], 0                      ; 1F8B _ C7. 45, EC, 00000000
        jmp     ?_078                                   ; 1F92 _ EB, 6A

?_074:  mov     eax, dword [ebp-18H]                    ; 1F94 _ 8B. 45, E8
        shl     eax, 4                                  ; 1F97 _ C1. E0, 04
        mov     edx, eax                                ; 1F9A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1F9C _ 8B. 45, EC
        add     eax, edx                                ; 1F9F _ 01. D0
        add     eax, closebtn.2502                      ; 1FA1 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1FA6 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1FA9 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1FAC _ 80. 7D, E7, 40
        jnz     ?_075                                   ; 1FB0 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1FB2 _ C6. 45, E7, 00
        jmp     ?_077                                   ; 1FB6 _ EB, 16

?_075:  cmp     byte [ebp-19H], 36                      ; 1FB8 _ 80. 7D, E7, 24
        jnz     ?_076                                   ; 1FBC _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1FBE _ C6. 45, E7, 0F
        jmp     ?_077                                   ; 1FC2 _ EB, 0A

?_076:  cmp     byte [ebp-19H], 81                      ; 1FC4 _ 80. 7D, E7, 51
        jnz     ?_077                                   ; 1FC8 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1FCA _ C6. 45, E7, 08
?_077:  mov     eax, dword [ebp+0CH]                    ; 1FCE _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1FD1 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1FD3 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1FD6 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1FD9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FDC _ 8B. 40, 04
        imul    ecx, eax                                ; 1FDF _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1FE2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1FE5 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1FE8 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1FEB _ 8B. 45, EC
        add     eax, ebx                                ; 1FEE _ 01. D8
        add     eax, ecx                                ; 1FF0 _ 01. C8
        add     edx, eax                                ; 1FF2 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1FF4 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1FF8 _ 88. 02
        add     dword [ebp-14H], 1                      ; 1FFA _ 83. 45, EC, 01
?_078:  cmp     dword [ebp-14H], 15                     ; 1FFE _ 83. 7D, EC, 0F
        jle     ?_074                                   ; 2002 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 2004 _ 83. 45, E8, 01
?_079:  cmp     dword [ebp-18H], 13                     ; 2008 _ 83. 7D, E8, 0D
        jle     ?_073                                   ; 200C _ 0F 8E, FFFFFF79
        nop                                             ; 2012 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2013 _ 8B. 5D, FC
        leave                                           ; 2016 _ C9
        ret                                             ; 2017 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2018 _ 55
        mov     ebp, esp                                ; 2019 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 201B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 201E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2024 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2027 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 202E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2031 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2038 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 203B _ C7. 40, 0C, 00000000
        nop                                             ; 2042 _ 90
        pop     ebp                                     ; 2043 _ 5D
        ret                                             ; 2044 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2045 _ 55
        mov     ebp, esp                                ; 2046 _ 89. E5
        sub     esp, 16                                 ; 2048 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 204B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2052 _ C7. 45, FC, 00000000
        jmp     ?_081                                   ; 2059 _ EB, 14

?_080:  mov     eax, dword [ebp+8H]                     ; 205B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 205E _ 8B. 55, FC
        add     edx, 2                                  ; 2061 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2064 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2068 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 206B _ 83. 45, FC, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 206F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2072 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2074 _ 39. 45, FC
        jl      ?_080                                   ; 2077 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2079 _ 8B. 45, F8
        leave                                           ; 207C _ C9
        ret                                             ; 207D _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 207E _ 55
        mov     ebp, esp                                ; 207F _ 89. E5
        sub     esp, 16                                 ; 2081 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2084 _ C7. 45, F8, 00000000
        jmp     ?_085                                   ; 208B _ E9, 00000085

?_082:  mov     eax, dword [ebp+8H]                     ; 2090 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2093 _ 8B. 55, F8
        add     edx, 2                                  ; 2096 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2099 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 209D _ 39. 45, 0C
        ja      ?_084                                   ; 20A0 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 20A2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20A5 _ 8B. 55, F8
        add     edx, 2                                  ; 20A8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 20AB _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 20AE _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 20B1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20B4 _ 8B. 55, F8
        add     edx, 2                                  ; 20B7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 20BA _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 20BD _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 20C0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20C3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20C6 _ 8B. 55, F8
        add     edx, 2                                  ; 20C9 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 20CC _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 20CF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20D2 _ 8B. 55, F8
        add     edx, 2                                  ; 20D5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20D8 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 20DC _ 2B. 45, 0C
        mov     edx, eax                                ; 20DF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 20E1 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 20E4 _ 8B. 4D, F8
        add     ecx, 2                                  ; 20E7 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 20EA _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 20EE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20F1 _ 8B. 55, F8
        add     edx, 2                                  ; 20F4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20F7 _ 8B. 44 D0, 04
        test    eax, eax                                ; 20FB _ 85. C0
        jnz     ?_083                                   ; 20FD _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 20FF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2102 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2104 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2107 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 210A _ 89. 10
?_083:  mov     eax, dword [ebp-4H]                     ; 210C _ 8B. 45, FC
        jmp     ?_086                                   ; 210F _ EB, 17

?_084:  add     dword [ebp-8H], 1                       ; 2111 _ 83. 45, F8, 01
?_085:  mov     eax, dword [ebp+8H]                     ; 2115 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2118 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 211A _ 39. 45, F8
        jl      ?_082                                   ; 211D _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2123 _ B8, 00000000
?_086:  leave                                           ; 2128 _ C9
        ret                                             ; 2129 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 212A _ 55
        mov     ebp, esp                                ; 212B _ 89. E5
        sub     esp, 16                                 ; 212D _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2130 _ 8B. 45, 0C
        add     eax, 4095                               ; 2133 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2138 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 213D _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2140 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2143 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2146 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 214B _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 214E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2151 _ 8B. 45, FC
        leave                                           ; 2154 _ C9
        ret                                             ; 2155 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2156 _ 55
        mov     ebp, esp                                ; 2157 _ 89. E5
        push    ebx                                     ; 2159 _ 53
        sub     esp, 16                                 ; 215A _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 215D _ C7. 45, F4, 00000000
        jmp     ?_088                                   ; 2164 _ EB, 15

?_087:  mov     eax, dword [ebp+8H]                     ; 2166 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2169 _ 8B. 55, F4
        add     edx, 2                                  ; 216C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 216F _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2172 _ 39. 45, 0C
        jc      ?_089                                   ; 2175 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2177 _ 83. 45, F4, 01
?_088:  mov     eax, dword [ebp+8H]                     ; 217B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 217E _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2180 _ 39. 45, F4
        jl      ?_087                                   ; 2183 _ 7C, E1
        jmp     ?_090                                   ; 2185 _ EB, 01

?_089:  nop                                             ; 2187 _ 90
?_090:  cmp     dword [ebp-0CH], 0                      ; 2188 _ 83. 7D, F4, 00
        jle     ?_092                                   ; 218C _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2192 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2195 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2198 _ 8B. 45, 08
        add     edx, 2                                  ; 219B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 219E _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 21A1 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 21A4 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 21A7 _ 8B. 45, 08
        add     ecx, 2                                  ; 21AA _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 21AD _ 8B. 44 C8, 04
        add     eax, edx                                ; 21B1 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 21B3 _ 39. 45, 0C
        jne     ?_092                                   ; 21B6 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 21BC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21BF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21C2 _ 8B. 45, 08
        add     edx, 2                                  ; 21C5 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 21C8 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 21CC _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 21CF _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 21D2 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21D5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21D8 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 21DB _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 21DE _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 21E2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21E5 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 21E7 _ 39. 45, F4
        jge     ?_091                                   ; 21EA _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 21EC _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 21EF _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21F2 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21F5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 21F8 _ 8B. 55, F4
        add     edx, 2                                  ; 21FB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 21FE _ 8B. 04 D0
        cmp     ecx, eax                                ; 2201 _ 39. C1
        jnz     ?_091                                   ; 2203 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2205 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2208 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 220B _ 8B. 45, 08
        add     edx, 2                                  ; 220E _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2211 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2215 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2218 _ 8B. 4D, F4
        add     ecx, 2                                  ; 221B _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 221E _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2222 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2225 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2228 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 222B _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 222E _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2231 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2235 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2238 _ 8B. 00
        lea     edx, [eax-1H]                           ; 223A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 223D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2240 _ 89. 10
?_091:  mov     eax, 0                                  ; 2242 _ B8, 00000000
        jmp     ?_098                                   ; 2247 _ E9, 0000011C

?_092:  mov     eax, dword [ebp+8H]                     ; 224C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 224F _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2251 _ 39. 45, F4
        jge     ?_093                                   ; 2254 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2256 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2259 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 225C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 225F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2262 _ 8B. 55, F4
        add     edx, 2                                  ; 2265 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2268 _ 8B. 04 D0
        cmp     ecx, eax                                ; 226B _ 39. C1
        jnz     ?_093                                   ; 226D _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 226F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2272 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2275 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2278 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 227B _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 227E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2281 _ 8B. 55, F4
        add     edx, 2                                  ; 2284 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2287 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 228B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 228E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2291 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2294 _ 8B. 55, F4
        add     edx, 2                                  ; 2297 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 229A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 229E _ B8, 00000000
        jmp     ?_098                                   ; 22A3 _ E9, 000000C0

?_093:  mov     eax, dword [ebp+8H]                     ; 22A8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22AB _ 8B. 00
        cmp     eax, 4095                               ; 22AD _ 3D, 00000FFF
        jg      ?_097                                   ; 22B2 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 22B8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22BB _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 22BD _ 89. 45, F8
        jmp     ?_095                                   ; 22C0 _ EB, 28

?_094:  mov     eax, dword [ebp-8H]                     ; 22C2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 22C5 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 22C8 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 22CB _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 22CE _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 22D1 _ 8B. 45, 08
        add     edx, 2                                  ; 22D4 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 22D7 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 22DA _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 22DC _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 22DF _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 22E2 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 22E6 _ 83. 6D, F8, 01
?_095:  mov     eax, dword [ebp-8H]                     ; 22EA _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 22ED _ 3B. 45, F4
        jg      ?_094                                   ; 22F0 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 22F2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22F5 _ 8B. 00
        lea     edx, [eax+1H]                           ; 22F7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 22FA _ 8B. 45, 08
        mov     dword [eax], edx                        ; 22FD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 22FF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2302 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2305 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2308 _ 8B. 00
        cmp     edx, eax                                ; 230A _ 39. C2
        jge     ?_096                                   ; 230C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 230E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2311 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2313 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2316 _ 89. 50, 04
?_096:  mov     eax, dword [ebp+8H]                     ; 2319 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 231C _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 231F _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2322 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2325 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2328 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 232B _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 232E _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2331 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2334 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2338 _ B8, 00000000
        jmp     ?_098                                   ; 233D _ EB, 29

?_097:  mov     eax, dword [ebp+8H]                     ; 233F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2342 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2345 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2348 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 234B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 234E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2351 _ 8B. 40, 08
        mov     edx, eax                                ; 2354 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2356 _ 8B. 45, 10
        add     eax, edx                                ; 2359 _ 01. D0
        mov     edx, eax                                ; 235B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 235D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2360 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2363 _ B8, FFFFFFFF
?_098:  add     esp, 16                                 ; 2368 _ 83. C4, 10
        pop     ebx                                     ; 236B _ 5B
        pop     ebp                                     ; 236C _ 5D
        ret                                             ; 236D _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 236E _ 55
        mov     ebp, esp                                ; 236F _ 89. E5
        sub     esp, 16                                 ; 2371 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2374 _ 8B. 45, 10
        add     eax, 4095                               ; 2377 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 237C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2381 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2384 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2387 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 238A _ FF. 75, 08
        call    memman_free                             ; 238D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2392 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2395 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2398 _ 8B. 45, FC
        leave                                           ; 239B _ C9
        ret                                             ; 239C _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 239D _ 55
        mov     ebp, esp                                ; 239E _ 89. E5
        sub     esp, 24                                 ; 23A0 _ 83. EC, 18
        sub     esp, 8                                  ; 23A3 _ 83. EC, 08
        push    9232                                    ; 23A6 _ 68, 00002410
        push    dword [ebp+8H]                          ; 23AB _ FF. 75, 08
        call    memman_alloc_4K                         ; 23AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23B3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 23B6 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 23B9 _ 83. 7D, F4, 00
        jnz     ?_099                                   ; 23BD _ 75, 0A
        mov     eax, 0                                  ; 23BF _ B8, 00000000
        jmp     ?_103                                   ; 23C4 _ E9, 0000009A

?_099:  mov     eax, dword [ebp+10H]                    ; 23C9 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 23CC _ 0F AF. 45, 14
        sub     esp, 8                                  ; 23D0 _ 83. EC, 08
        push    eax                                     ; 23D3 _ 50
        push    dword [ebp+8H]                          ; 23D4 _ FF. 75, 08
        call    memman_alloc_4K                         ; 23D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23DC _ 83. C4, 10
        mov     edx, eax                                ; 23DF _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 23E1 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 23E4 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 23E7 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 23EA _ 8B. 40, 04
        test    eax, eax                                ; 23ED _ 85. C0
        jnz     ?_100                                   ; 23EF _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 23F1 _ 8B. 45, F4
        sub     esp, 4                                  ; 23F4 _ 83. EC, 04
        push    9232                                    ; 23F7 _ 68, 00002410
        push    eax                                     ; 23FC _ 50
        push    dword [ebp+8H]                          ; 23FD _ FF. 75, 08
        call    memman_free_4K                          ; 2400 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2405 _ 83. C4, 10
        mov     eax, 0                                  ; 2408 _ B8, 00000000
        jmp     ?_103                                   ; 240D _ EB, 54

?_100:  mov     eax, dword [ebp-0CH]                    ; 240F _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2412 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2415 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2417 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 241A _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 241D _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2420 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2423 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2426 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2429 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 242C _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2433 _ C7. 45, F0, 00000000
        jmp     ?_102                                   ; 243A _ EB, 1B

?_101:  mov     eax, dword [ebp-0CH]                    ; 243C _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 243F _ 8B. 55, F0
        add     edx, 33                                 ; 2442 _ 83. C2, 21
        shl     edx, 5                                  ; 2445 _ C1. E2, 05
        add     eax, edx                                ; 2448 _ 01. D0
        add     eax, 16                                 ; 244A _ 83. C0, 10
        mov     dword [eax], 0                          ; 244D _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2453 _ 83. 45, F0, 01
?_102:  cmp     dword [ebp-10H], 255                    ; 2457 _ 81. 7D, F0, 000000FF
        jle     ?_101                                   ; 245E _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2460 _ 8B. 45, F4
?_103:  leave                                           ; 2463 _ C9
        ret                                             ; 2464 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2465 _ 55
        mov     ebp, esp                                ; 2466 _ 89. E5
        sub     esp, 16                                 ; 2468 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 246B _ C7. 45, F8, 00000000
        jmp     ?_106                                   ; 2472 _ EB, 4B

?_104:  mov     eax, dword [ebp+8H]                     ; 2474 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2477 _ 8B. 55, F8
        add     edx, 33                                 ; 247A _ 83. C2, 21
        shl     edx, 5                                  ; 247D _ C1. E2, 05
        add     eax, edx                                ; 2480 _ 01. D0
        add     eax, 16                                 ; 2482 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2485 _ 8B. 00
        test    eax, eax                                ; 2487 _ 85. C0
        jnz     ?_105                                   ; 2489 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 248B _ 8B. 45, F8
        shl     eax, 5                                  ; 248E _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2491 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2497 _ 8B. 45, 08
        add     eax, edx                                ; 249A _ 01. D0
        add     eax, 4                                  ; 249C _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 249F _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 24A2 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 24A5 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 24AC _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 24AF _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 24B6 _ 8B. 45, FC
        jmp     ?_107                                   ; 24B9 _ EB, 12

?_105:  add     dword [ebp-8H], 1                       ; 24BB _ 83. 45, F8, 01
?_106:  cmp     dword [ebp-8H], 255                     ; 24BF _ 81. 7D, F8, 000000FF
        jle     ?_104                                   ; 24C6 _ 7E, AC
        mov     eax, 0                                  ; 24C8 _ B8, 00000000
?_107:  leave                                           ; 24CD _ C9
        ret                                             ; 24CE _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 24CF _ 55
        mov     ebp, esp                                ; 24D0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 24D2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 24D5 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 24D8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 24DA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 24DD _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 24E0 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 24E3 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 24E6 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 24E9 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 24EC _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 24EF _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 24F2 _ 89. 50, 14
        nop                                             ; 24F5 _ 90
        pop     ebp                                     ; 24F6 _ 5D
        ret                                             ; 24F7 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 24F8 _ 55
        mov     ebp, esp                                ; 24F9 _ 89. E5
        push    esi                                     ; 24FB _ 56
        push    ebx                                     ; 24FC _ 53
        sub     esp, 32                                 ; 24FD _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2500 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2503 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2506 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2509 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 250C _ 8B. 40, 10
        add     eax, 1                                  ; 250F _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2512 _ 39. 45, 10
        jle     ?_108                                   ; 2515 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2517 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 251A _ 8B. 40, 10
        add     eax, 1                                  ; 251D _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2520 _ 89. 45, 10
?_108:  cmp     dword [ebp+10H], -1                     ; 2523 _ 83. 7D, 10, FF
        jge     ?_109                                   ; 2527 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2529 _ C7. 45, 10, FFFFFFFF
?_109:  mov     eax, dword [ebp+0CH]                    ; 2530 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2533 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2536 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2539 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 253C _ 3B. 45, 10
        jle     ?_116                                   ; 253F _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2545 _ 83. 7D, 10, 00
        js      ?_112                                   ; 2549 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 254F _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2552 _ 89. 45, E4
        jmp     ?_111                                   ; 2555 _ EB, 34

?_110:  mov     eax, dword [ebp-1CH]                    ; 2557 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 255A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 255D _ 8B. 45, 08
        add     edx, 4                                  ; 2560 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2563 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2567 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 256A _ 8B. 4D, E4
        add     ecx, 4                                  ; 256D _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2570 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2574 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2577 _ 8B. 55, E4
        add     edx, 4                                  ; 257A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 257D _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2581 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2584 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2587 _ 83. 6D, E4, 01
?_111:  mov     eax, dword [ebp-1CH]                    ; 258B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 258E _ 3B. 45, 10
        jg      ?_110                                   ; 2591 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2593 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2596 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2599 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 259C _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 259F _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 25A3 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 25A6 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 25A9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25AC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25AF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25B2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25B5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25B8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25BB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25BE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25C1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25C4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25C7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25CA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25CD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25D0 _ 8B. 40, 0C
        sub     esp, 8                                  ; 25D3 _ 83. EC, 08
        push    esi                                     ; 25D6 _ 56
        push    ebx                                     ; 25D7 _ 53
        push    ecx                                     ; 25D8 _ 51
        push    edx                                     ; 25D9 _ 52
        push    eax                                     ; 25DA _ 50
        push    dword [ebp+8H]                          ; 25DB _ FF. 75, 08
        call    sheet_refreshmap                        ; 25DE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25E3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 25E6 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 25E9 _ 8D. 70, 01
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
        push    dword [ebp-0CH]                         ; 2619 _ FF. 75, F4
        push    esi                                     ; 261C _ 56
        push    ebx                                     ; 261D _ 53
        push    ecx                                     ; 261E _ 51
        push    edx                                     ; 261F _ 52
        push    eax                                     ; 2620 _ 50
        push    dword [ebp+8H]                          ; 2621 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2624 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2629 _ 83. C4, 20
        jmp     ?_123                                   ; 262C _ E9, 00000244

?_112:  mov     eax, dword [ebp+8H]                     ; 2631 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2634 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2637 _ 39. 45, F4
        jge     ?_115                                   ; 263A _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 263C _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 263F _ 89. 45, E8
        jmp     ?_114                                   ; 2642 _ EB, 34

?_113:  mov     eax, dword [ebp-18H]                    ; 2644 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2647 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 264A _ 8B. 45, 08
        add     edx, 4                                  ; 264D _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2650 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2654 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2657 _ 8B. 4D, E8
        add     ecx, 4                                  ; 265A _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 265D _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2661 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2664 _ 8B. 55, E8
        add     edx, 4                                  ; 2667 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 266A _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 266E _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2671 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2674 _ 83. 45, E8, 01
?_114:  mov     eax, dword [ebp+8H]                     ; 2678 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 267B _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 267E _ 39. 45, E8
        jl      ?_113                                   ; 2681 _ 7C, C1
?_115:  mov     eax, dword [ebp+8H]                     ; 2683 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2686 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2689 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 268C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 268F _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2692 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2695 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2698 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 269B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 269E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26A1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26A4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26A7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26AA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 26AD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 26B0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26B3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26B6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26B9 _ 8B. 40, 0C
        sub     esp, 8                                  ; 26BC _ 83. EC, 08
        push    0                                       ; 26BF _ 6A, 00
        push    ebx                                     ; 26C1 _ 53
        push    ecx                                     ; 26C2 _ 51
        push    edx                                     ; 26C3 _ 52
        push    eax                                     ; 26C4 _ 50
        push    dword [ebp+8H]                          ; 26C5 _ FF. 75, 08
        call    sheet_refreshmap                        ; 26C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26CD _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 26D0 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 26D3 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 26D6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26D9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26DC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 26DF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 26E2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26E5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26E8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26EB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26EE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 26F1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 26F4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26F7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26FA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26FD _ 8B. 40, 0C
        sub     esp, 4                                  ; 2700 _ 83. EC, 04
        push    esi                                     ; 2703 _ 56
        push    0                                       ; 2704 _ 6A, 00
        push    ebx                                     ; 2706 _ 53
        push    ecx                                     ; 2707 _ 51
        push    edx                                     ; 2708 _ 52
        push    eax                                     ; 2709 _ 50
        push    dword [ebp+8H]                          ; 270A _ FF. 75, 08
        call    sheet_refresh_new                       ; 270D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2712 _ 83. C4, 20
        jmp     ?_123                                   ; 2715 _ E9, 0000015B

?_116:  mov     eax, dword [ebp-0CH]                    ; 271A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 271D _ 3B. 45, 10
        jge     ?_123                                   ; 2720 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2726 _ 83. 7D, F4, 00
        js      ?_119                                   ; 272A _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 272C _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 272F _ 89. 45, EC
        jmp     ?_118                                   ; 2732 _ EB, 34

?_117:  mov     eax, dword [ebp-14H]                    ; 2734 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2737 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 273A _ 8B. 45, 08
        add     edx, 4                                  ; 273D _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2740 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2744 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2747 _ 8B. 4D, EC
        add     ecx, 4                                  ; 274A _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 274D _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2751 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2754 _ 8B. 55, EC
        add     edx, 4                                  ; 2757 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 275A _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 275E _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2761 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2764 _ 83. 45, EC, 01
?_118:  mov     eax, dword [ebp-14H]                    ; 2768 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 276B _ 3B. 45, 10
        jl      ?_117                                   ; 276E _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2770 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2773 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2776 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2779 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 277C _ 89. 54 88, 04
        jmp     ?_122                                   ; 2780 _ EB, 72

?_119:  cmp     dword [ebp-0CH], 0                      ; 2782 _ 83. 7D, F4, 00
        jns     ?_122                                   ; 2786 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2788 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 278B _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 278E _ 89. 45, F0
        jmp     ?_121                                   ; 2791 _ EB, 3A

?_120:  mov     eax, dword [ebp-10H]                    ; 2793 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2796 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2799 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 279C _ 8B. 55, F0
        add     edx, 4                                  ; 279F _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 27A2 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 27A6 _ 8B. 45, 08
        add     ecx, 4                                  ; 27A9 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 27AC _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 27B0 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 27B3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27B6 _ 8B. 45, 08
        add     edx, 4                                  ; 27B9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 27BC _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 27C0 _ 8B. 55, F0
        add     edx, 1                                  ; 27C3 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 27C6 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 27C9 _ 83. 6D, F0, 01
?_121:  mov     eax, dword [ebp-10H]                    ; 27CD _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 27D0 _ 3B. 45, 10
        jge     ?_120                                   ; 27D3 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 27D5 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27D8 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 27DB _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 27DE _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 27E1 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 27E5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27E8 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 27EB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27EE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27F1 _ 89. 50, 10
?_122:  mov     eax, dword [ebp+0CH]                    ; 27F4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27F7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27FA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27FD _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2800 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2803 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2806 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2809 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 280C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 280F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2812 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2815 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2818 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 281B _ 8B. 40, 0C
        sub     esp, 8                                  ; 281E _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2821 _ FF. 75, 10
        push    ebx                                     ; 2824 _ 53
        push    ecx                                     ; 2825 _ 51
        push    edx                                     ; 2826 _ 52
        push    eax                                     ; 2827 _ 50
        push    dword [ebp+8H]                          ; 2828 _ FF. 75, 08
        call    sheet_refreshmap                        ; 282B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2830 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2833 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2836 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2839 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 283C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 283F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2842 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2845 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2848 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 284B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 284E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2851 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2854 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2857 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 285A _ 8B. 40, 0C
        sub     esp, 4                                  ; 285D _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2860 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2863 _ FF. 75, 10
        push    ebx                                     ; 2866 _ 53
        push    ecx                                     ; 2867 _ 51
        push    edx                                     ; 2868 _ 52
        push    eax                                     ; 2869 _ 50
        push    dword [ebp+8H]                          ; 286A _ FF. 75, 08
        call    sheet_refresh_new                       ; 286D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2872 _ 83. C4, 20
?_123:  nop                                             ; 2875 _ 90
        lea     esp, [ebp-8H]                           ; 2876 _ 8D. 65, F8
        pop     ebx                                     ; 2879 _ 5B
        pop     esi                                     ; 287A _ 5E
        pop     ebp                                     ; 287B _ 5D
        ret                                             ; 287C _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 287D _ 55
        mov     ebp, esp                                ; 287E _ 89. E5
        push    edi                                     ; 2880 _ 57
        push    esi                                     ; 2881 _ 56
        push    ebx                                     ; 2882 _ 53
        sub     esp, 28                                 ; 2883 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2886 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2889 _ 8B. 40, 18
        test    eax, eax                                ; 288C _ 85. C0
        js      ?_124                                   ; 288E _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2890 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2893 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2896 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2899 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 289C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 289F _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 28A2 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 28A5 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 28A8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28AB _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 28AE _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 28B1 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 28B4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28B7 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 28BA _ 8B. 45, 14
        add     edx, eax                                ; 28BD _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 28BF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28C2 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 28C5 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 28C8 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 28CB _ 03. 45, E4
        sub     esp, 4                                  ; 28CE _ 83. EC, 04
        push    ebx                                     ; 28D1 _ 53
        push    ecx                                     ; 28D2 _ 51
        push    edi                                     ; 28D3 _ 57
        push    esi                                     ; 28D4 _ 56
        push    edx                                     ; 28D5 _ 52
        push    eax                                     ; 28D6 _ 50
        push    dword [ebp+8H]                          ; 28D7 _ FF. 75, 08
        call    sheet_refresh_new                       ; 28DA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28DF _ 83. C4, 20
?_124:  mov     eax, 0                                  ; 28E2 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 28E7 _ 8D. 65, F4
        pop     ebx                                     ; 28EA _ 5B
        pop     esi                                     ; 28EB _ 5E
        pop     edi                                     ; 28EC _ 5F
        pop     ebp                                     ; 28ED _ 5D
        ret                                             ; 28EE _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 28EF _ 55
        mov     ebp, esp                                ; 28F0 _ 89. E5
        push    esi                                     ; 28F2 _ 56
        push    ebx                                     ; 28F3 _ 53
        sub     esp, 16                                 ; 28F4 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 28F7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28FA _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 28FD _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2900 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2903 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2906 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2909 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 290C _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 290F _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2912 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2915 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2918 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 291B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 291E _ 8B. 40, 18
        test    eax, eax                                ; 2921 _ 85. C0
        js      ?_125                                   ; 2923 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2929 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 292C _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 292F _ 8B. 45, F4
        add     edx, eax                                ; 2932 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2934 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2937 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 293A _ 8B. 45, F0
        add     eax, ecx                                ; 293D _ 01. C8
        sub     esp, 8                                  ; 293F _ 83. EC, 08
        push    0                                       ; 2942 _ 6A, 00
        push    edx                                     ; 2944 _ 52
        push    eax                                     ; 2945 _ 50
        push    dword [ebp-0CH]                         ; 2946 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2949 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 294C _ FF. 75, 08
        call    sheet_refreshmap                        ; 294F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2954 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2957 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 295A _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 295D _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2960 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2963 _ 8B. 55, 14
        add     ecx, edx                                ; 2966 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2968 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 296B _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 296E _ 8B. 55, 10
        add     edx, ebx                                ; 2971 _ 01. DA
        sub     esp, 8                                  ; 2973 _ 83. EC, 08
        push    eax                                     ; 2976 _ 50
        push    ecx                                     ; 2977 _ 51
        push    edx                                     ; 2978 _ 52
        push    dword [ebp+14H]                         ; 2979 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 297C _ FF. 75, 10
        push    dword [ebp+8H]                          ; 297F _ FF. 75, 08
        call    sheet_refreshmap                        ; 2982 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2987 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 298A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 298D _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2990 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2993 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2996 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2999 _ 8B. 45, F4
        add     edx, eax                                ; 299C _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 299E _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 29A1 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 29A4 _ 8B. 45, F0
        add     eax, ebx                                ; 29A7 _ 01. D8
        sub     esp, 4                                  ; 29A9 _ 83. EC, 04
        push    ecx                                     ; 29AC _ 51
        push    0                                       ; 29AD _ 6A, 00
        push    edx                                     ; 29AF _ 52
        push    eax                                     ; 29B0 _ 50
        push    dword [ebp-0CH]                         ; 29B1 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 29B4 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 29B7 _ FF. 75, 08
        call    sheet_refresh_new                       ; 29BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29BF _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 29C2 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 29C5 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 29C8 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 29CB _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 29CE _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 29D1 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 29D4 _ 8B. 4D, 14
        add     ebx, ecx                                ; 29D7 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 29D9 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 29DC _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 29DF _ 8B. 4D, 10
        add     ecx, esi                                ; 29E2 _ 01. F1
        sub     esp, 4                                  ; 29E4 _ 83. EC, 04
        push    edx                                     ; 29E7 _ 52
        push    eax                                     ; 29E8 _ 50
        push    ebx                                     ; 29E9 _ 53
        push    ecx                                     ; 29EA _ 51
        push    dword [ebp+14H]                         ; 29EB _ FF. 75, 14
        push    dword [ebp+10H]                         ; 29EE _ FF. 75, 10
        push    dword [ebp+8H]                          ; 29F1 _ FF. 75, 08
        call    sheet_refresh_new                       ; 29F4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29F9 _ 83. C4, 20
?_125:  nop                                             ; 29FC _ 90
        lea     esp, [ebp-8H]                           ; 29FD _ 8D. 65, F8
        pop     ebx                                     ; 2A00 _ 5B
        pop     esi                                     ; 2A01 _ 5E
        pop     ebp                                     ; 2A02 _ 5D
        ret                                             ; 2A03 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2A04 _ 55
        mov     ebp, esp                                ; 2A05 _ 89. E5
        sub     esp, 48                                 ; 2A07 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2A0A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A0D _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2A0F _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2A12 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2A15 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2A18 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2A1B _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 2A1F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2A21 _ C7. 45, 0C, 00000000
?_126:  cmp     dword [ebp+10H], 8                      ; 2A28 _ 83. 7D, 10, 08
        jg      ?_127                                   ; 2A2C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2A2E _ C7. 45, 10, 00000000
?_127:  mov     eax, dword [ebp+8H]                     ; 2A35 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A38 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2A3B _ 39. 45, 14
        jle     ?_128                                   ; 2A3E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A40 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A43 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2A46 _ 89. 45, 14
?_128:  mov     eax, dword [ebp+8H]                     ; 2A49 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A4C _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2A4F _ 39. 45, 18
        jle     ?_129                                   ; 2A52 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2A54 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A57 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2A5A _ 89. 45, 18
?_129:  mov     eax, dword [ebp+1CH]                    ; 2A5D _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2A60 _ 89. 45, DC
        jmp     ?_136                                   ; 2A63 _ E9, 00000118

?_130:  mov     eax, dword [ebp+8H]                     ; 2A68 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2A6B _ 8B. 55, DC
        add     edx, 4                                  ; 2A6E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A71 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2A75 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2A78 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2A7B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2A7D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2A80 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2A83 _ 8B. 55, 08
        add     edx, 1044                               ; 2A86 _ 81. C2, 00000414
        sub     eax, edx                                ; 2A8C _ 29. D0
        sar     eax, 5                                  ; 2A8E _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2A91 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2A94 _ C7. 45, E0, 00000000
        jmp     ?_135                                   ; 2A9B _ E9, 000000CD

?_131:  mov     eax, dword [ebp-10H]                    ; 2AA0 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2AA3 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2AA6 _ 8B. 45, E0
        add     eax, edx                                ; 2AA9 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2AAB _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2AAE _ C7. 45, E4, 00000000
        jmp     ?_134                                   ; 2AB5 _ E9, 000000A0

?_132:  mov     eax, dword [ebp-10H]                    ; 2ABA _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2ABD _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2AC0 _ 8B. 45, E4
        add     eax, edx                                ; 2AC3 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2AC5 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2AC8 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2ACB _ 3B. 45, FC
        jg      ?_133                                   ; 2ACE _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2AD4 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2AD7 _ 3B. 45, 14
        jge     ?_133                                   ; 2ADA _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2ADC _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2ADF _ 3B. 45, F8
        jg      ?_133                                   ; 2AE2 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2AE4 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2AE7 _ 3B. 45, 18
        jge     ?_133                                   ; 2AEA _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2AEC _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2AEF _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2AF2 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2AF6 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2AF8 _ 8B. 45, E4
        add     eax, edx                                ; 2AFB _ 01. D0
        mov     edx, eax                                ; 2AFD _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2AFF _ 8B. 45, F4
        add     eax, edx                                ; 2B02 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B04 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2B07 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2B0A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B0D _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2B10 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B14 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B16 _ 8B. 45, FC
        add     eax, edx                                ; 2B19 _ 01. D0
        mov     edx, eax                                ; 2B1B _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2B1D _ 8B. 45, EC
        add     eax, edx                                ; 2B20 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B22 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2B25 _ 38. 45, DA
        jnz     ?_133                                   ; 2B28 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2B2A _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2B2E _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2B31 _ 8B. 40, 14
        cmp     edx, eax                                ; 2B34 _ 39. C2
        jz      ?_133                                   ; 2B36 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2B38 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B3B _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2B3E _ 0F AF. 45, F8
        mov     edx, eax                                ; 2B42 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B44 _ 8B. 45, FC
        add     eax, edx                                ; 2B47 _ 01. D0
        mov     edx, eax                                ; 2B49 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2B4B _ 8B. 45, E8
        add     edx, eax                                ; 2B4E _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2B50 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2B54 _ 88. 02
?_133:  add     dword [ebp-1CH], 1                      ; 2B56 _ 83. 45, E4, 01
?_134:  mov     eax, dword [ebp-10H]                    ; 2B5A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2B5D _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2B60 _ 39. 45, E4
        jl      ?_132                                   ; 2B63 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2B69 _ 83. 45, E0, 01
?_135:  mov     eax, dword [ebp-10H]                    ; 2B6D _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2B70 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2B73 _ 39. 45, E0
        jl      ?_131                                   ; 2B76 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2B7C _ 83. 45, DC, 01
?_136:  mov     eax, dword [ebp-24H]                    ; 2B80 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2B83 _ 3B. 45, 20
        jle     ?_130                                   ; 2B86 _ 0F 8E, FFFFFEDC
        nop                                             ; 2B8C _ 90
        leave                                           ; 2B8D _ C9
        ret                                             ; 2B8E _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2B8F _ 55
        mov     ebp, esp                                ; 2B90 _ 89. E5
        sub     esp, 64                                 ; 2B92 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B95 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B98 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2B9B _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2B9E _ 83. 7D, 0C, 00
        jns     ?_137                                   ; 2BA2 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2BA4 _ C7. 45, 0C, 00000000
?_137:  mov     eax, dword [ebp+8H]                     ; 2BAB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BAE _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2BB1 _ 39. 45, 0C
        jle     ?_138                                   ; 2BB4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BB6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BB9 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2BBC _ 89. 45, 0C
?_138:  cmp     dword [ebp+10H], 0                      ; 2BBF _ 83. 7D, 10, 00
        jns     ?_139                                   ; 2BC3 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2BC5 _ C7. 45, 10, 00000000
?_139:  mov     eax, dword [ebp+8H]                     ; 2BCC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BCF _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2BD2 _ 39. 45, 10
        jle     ?_140                                   ; 2BD5 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2BD7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BDA _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2BDD _ 89. 45, 10
?_140:  mov     eax, dword [ebp+1CH]                    ; 2BE0 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2BE3 _ 89. 45, E0
        jmp     ?_151                                   ; 2BE6 _ E9, 00000140

?_141:  mov     eax, dword [ebp+8H]                     ; 2BEB _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2BEE _ 8B. 55, E0
        add     edx, 4                                  ; 2BF1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BF4 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2BF8 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2BFB _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2BFE _ 8B. 55, 08
        add     edx, 1044                               ; 2C01 _ 81. C2, 00000414
        sub     eax, edx                                ; 2C07 _ 29. D0
        sar     eax, 5                                  ; 2C09 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2C0C _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2C0F _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2C12 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2C14 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2C17 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2C1A _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2C1D _ 8B. 55, 0C
        sub     edx, eax                                ; 2C20 _ 29. C2
        mov     eax, edx                                ; 2C22 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2C24 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2C27 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2C2A _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2C2D _ 8B. 55, 10
        sub     edx, eax                                ; 2C30 _ 29. C2
        mov     eax, edx                                ; 2C32 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2C34 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2C37 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2C3A _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2C3D _ 8B. 55, 14
        sub     edx, eax                                ; 2C40 _ 29. C2
        mov     eax, edx                                ; 2C42 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2C44 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2C47 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2C4A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2C4D _ 8B. 55, 18
        sub     edx, eax                                ; 2C50 _ 29. C2
        mov     eax, edx                                ; 2C52 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2C54 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2C57 _ 83. 7D, D0, 00
        jns     ?_142                                   ; 2C5B _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2C5D _ C7. 45, D0, 00000000
?_142:  cmp     dword [ebp-2CH], 0                      ; 2C64 _ 83. 7D, D4, 00
        jns     ?_143                                   ; 2C68 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2C6A _ C7. 45, D4, 00000000
?_143:  mov     eax, dword [ebp-10H]                    ; 2C71 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C74 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2C77 _ 39. 45, D8
        jle     ?_144                                   ; 2C7A _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2C7C _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C7F _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2C82 _ 89. 45, D8
?_144:  mov     eax, dword [ebp-10H]                    ; 2C85 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2C88 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2C8B _ 39. 45, DC
        jle     ?_145                                   ; 2C8E _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2C90 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2C93 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2C96 _ 89. 45, DC
?_145:  mov     eax, dword [ebp-2CH]                    ; 2C99 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2C9C _ 89. 45, E4
        jmp     ?_150                                   ; 2C9F _ EB, 7A

?_146:  mov     eax, dword [ebp-10H]                    ; 2CA1 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2CA4 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2CA7 _ 8B. 45, E4
        add     eax, edx                                ; 2CAA _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2CAC _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2CAF _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2CB2 _ 89. 45, E8
        jmp     ?_149                                   ; 2CB5 _ EB, 58

?_147:  mov     eax, dword [ebp-10H]                    ; 2CB7 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2CBA _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2CBD _ 8B. 45, E8
        add     eax, edx                                ; 2CC0 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2CC2 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2CC5 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2CC8 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2CCB _ 0F AF. 45, E4
        mov     edx, eax                                ; 2CCF _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2CD1 _ 8B. 45, E8
        add     eax, edx                                ; 2CD4 _ 01. D0
        mov     edx, eax                                ; 2CD6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2CD8 _ 8B. 45, F4
        add     eax, edx                                ; 2CDB _ 01. D0
        movzx   eax, byte [eax]                         ; 2CDD _ 0F B6. 00
        movzx   edx, al                                 ; 2CE0 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2CE3 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2CE6 _ 8B. 40, 14
        cmp     edx, eax                                ; 2CE9 _ 39. C2
        jz      ?_148                                   ; 2CEB _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2CED _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2CF0 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2CF3 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2CF7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2CF9 _ 8B. 45, FC
        add     eax, edx                                ; 2CFC _ 01. D0
        mov     edx, eax                                ; 2CFE _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2D00 _ 8B. 45, EC
        add     edx, eax                                ; 2D03 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2D05 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2D09 _ 88. 02
?_148:  add     dword [ebp-18H], 1                      ; 2D0B _ 83. 45, E8, 01
?_149:  mov     eax, dword [ebp-18H]                    ; 2D0F _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2D12 _ 3B. 45, D8
        jl      ?_147                                   ; 2D15 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2D17 _ 83. 45, E4, 01
?_150:  mov     eax, dword [ebp-1CH]                    ; 2D1B _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2D1E _ 3B. 45, DC
        jl      ?_146                                   ; 2D21 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2D27 _ 83. 45, E0, 01
?_151:  mov     eax, dword [ebp+8H]                     ; 2D2B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D2E _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2D31 _ 39. 45, E0
        jle     ?_141                                   ; 2D34 _ 0F 8E, FFFFFEB1
        nop                                             ; 2D3A _ 90
        leave                                           ; 2D3B _ C9
        ret                                             ; 2D3C _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2D3D _ 55
        mov     ebp, esp                                ; 2D3E _ 89. E5
        sub     esp, 24                                 ; 2D40 _ 83. EC, 18
        sub     esp, 8                                  ; 2D43 _ 83. EC, 08
        push    52                                      ; 2D46 _ 6A, 34
        push    67                                      ; 2D48 _ 6A, 43
        call    io_out8                                 ; 2D4A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D4F _ 83. C4, 10
        sub     esp, 8                                  ; 2D52 _ 83. EC, 08
        push    156                                     ; 2D55 _ 68, 0000009C
        push    64                                      ; 2D5A _ 6A, 40
        call    io_out8                                 ; 2D5C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D61 _ 83. C4, 10
        sub     esp, 8                                  ; 2D64 _ 83. EC, 08
        push    46                                      ; 2D67 _ 6A, 2E
        push    64                                      ; 2D69 _ 6A, 40
        call    io_out8                                 ; 2D6B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2D70 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2D73 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2D7D _ C7. 45, F4, 00000000
        jmp     ?_153                                   ; 2D84 _ EB, 26

?_152:  mov     eax, dword [ebp-0CH]                    ; 2D86 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D89 _ C1. E0, 04
        add     eax, ?_215                              ; 2D8C _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 2D91 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2D97 _ 8B. 45, F4
        shl     eax, 4                                  ; 2D9A _ C1. E0, 04
        add     eax, ?_216                              ; 2D9D _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 2DA2 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2DA8 _ 83. 45, F4, 01
?_153:  cmp     dword [ebp-0CH], 499                    ; 2DAC _ 81. 7D, F4, 000001F3
        jle     ?_152                                   ; 2DB3 _ 7E, D1
        nop                                             ; 2DB5 _ 90
        leave                                           ; 2DB6 _ C9
        ret                                             ; 2DB7 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2DB8 _ 55
        mov     ebp, esp                                ; 2DB9 _ 89. E5
        sub     esp, 16                                 ; 2DBB _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2DBE _ C7. 45, FC, 00000000
        jmp     ?_156                                   ; 2DC5 _ EB, 36

?_154:  mov     eax, dword [ebp-4H]                     ; 2DC7 _ 8B. 45, FC
        shl     eax, 4                                  ; 2DCA _ C1. E0, 04
        add     eax, ?_215                              ; 2DCD _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 2DD2 _ 8B. 00
        test    eax, eax                                ; 2DD4 _ 85. C0
        jnz     ?_155                                   ; 2DD6 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2DD8 _ 8B. 45, FC
        shl     eax, 4                                  ; 2DDB _ C1. E0, 04
        add     eax, ?_215                              ; 2DDE _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2DE3 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2DE9 _ 8B. 45, FC
        shl     eax, 4                                  ; 2DEC _ C1. E0, 04
        add     eax, timerctl                           ; 2DEF _ 05, 00000280(d)
        add     eax, 4                                  ; 2DF4 _ 83. C0, 04
        jmp     ?_157                                   ; 2DF7 _ EB, 12

?_155:  add     dword [ebp-4H], 1                       ; 2DF9 _ 83. 45, FC, 01
?_156:  cmp     dword [ebp-4H], 499                     ; 2DFD _ 81. 7D, FC, 000001F3
        jle     ?_154                                   ; 2E04 _ 7E, C1
        mov     eax, 0                                  ; 2E06 _ B8, 00000000
?_157:  leave                                           ; 2E0B _ C9
        ret                                             ; 2E0C _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2E0D _ 55
        mov     ebp, esp                                ; 2E0E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E10 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2E13 _ C7. 40, 04, 00000000
        nop                                             ; 2E1A _ 90
        pop     ebp                                     ; 2E1B _ 5D
        ret                                             ; 2E1C _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2E1D _ 55
        mov     ebp, esp                                ; 2E1E _ 89. E5
        sub     esp, 4                                  ; 2E20 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2E23 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2E26 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E29 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E2C _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2E2F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2E32 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2E35 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2E39 _ 88. 50, 0C
        nop                                             ; 2E3C _ 90
        leave                                           ; 2E3D _ C9
        ret                                             ; 2E3E _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2E3F _ 55
        mov     ebp, esp                                ; 2E40 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E42 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E45 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2E48 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E4A _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2E4D _ C7. 40, 04, 00000002
        nop                                             ; 2E54 _ 90
        pop     ebp                                     ; 2E55 _ 5D
        ret                                             ; 2E56 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 2E57 _ 55
        mov     ebp, esp                                ; 2E58 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E5A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E5D _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2E60 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E62 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2E65 _ C7. 40, 04, 00000002
        nop                                             ; 2E6C _ 90
        pop     ebp                                     ; 2E6D _ 5D
        ret                                             ; 2E6E _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2E6F _ 55
        mov     ebp, esp                                ; 2E70 _ 89. E5
        mov     eax, timerctl                           ; 2E72 _ B8, 00000280(d)
        pop     ebp                                     ; 2E77 _ 5D
        ret                                             ; 2E78 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2E79 _ 55
        mov     ebp, esp                                ; 2E7A _ 89. E5
        push    ebx                                     ; 2E7C _ 53
        sub     esp, 20                                 ; 2E7D _ 83. EC, 14
        sub     esp, 8                                  ; 2E80 _ 83. EC, 08
        push    32                                      ; 2E83 _ 6A, 20
        push    32                                      ; 2E85 _ 6A, 20
        call    io_out8                                 ; 2E87 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2E8C _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2E8F _ A1, 00000280(d)
        add     eax, 1                                  ; 2E94 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2E97 _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 2E9C _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 2EA3 _ C7. 45, F4, 00000000
        jmp     ?_161                                   ; 2EAA _ E9, 000000AD

?_158:  mov     eax, dword [ebp-0CH]                    ; 2EAF _ 8B. 45, F4
        shl     eax, 4                                  ; 2EB2 _ C1. E0, 04
        add     eax, ?_215                              ; 2EB5 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 2EBA _ 8B. 00
        cmp     eax, 2                                  ; 2EBC _ 83. F8, 02
        jne     ?_159                                   ; 2EBF _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 2EC5 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EC8 _ C1. E0, 04
        add     eax, ?_214                              ; 2ECB _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 2ED0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2ED2 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2ED5 _ 8B. 45, F4
        shl     eax, 4                                  ; 2ED8 _ C1. E0, 04
        add     eax, ?_214                              ; 2EDB _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 2EE0 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2EE2 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EE5 _ C1. E0, 04
        add     eax, ?_214                              ; 2EE8 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 2EED _ 8B. 00
        test    eax, eax                                ; 2EEF _ 85. C0
        jnz     ?_159                                   ; 2EF1 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 2EF3 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EF6 _ C1. E0, 04
        add     eax, ?_215                              ; 2EF9 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2EFE _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2F04 _ 8B. 45, F4
        shl     eax, 4                                  ; 2F07 _ C1. E0, 04
        add     eax, ?_217                              ; 2F0A _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 2F0F _ 0F B6. 00
        movzx   edx, al                                 ; 2F12 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2F15 _ 8B. 45, F4
        shl     eax, 4                                  ; 2F18 _ C1. E0, 04
        add     eax, ?_216                              ; 2F1B _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 2F20 _ 8B. 00
        sub     esp, 8                                  ; 2F22 _ 83. EC, 08
        push    edx                                     ; 2F25 _ 52
        push    eax                                     ; 2F26 _ 50
        call    fifo8_put                               ; 2F27 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2F2C _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2F2F _ 8B. 45, F4
        shl     eax, 4                                  ; 2F32 _ C1. E0, 04
        add     eax, timerctl                           ; 2F35 _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 2F3A _ 8D. 58, 04
        call    getTaskTimer                            ; 2F3D _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 2F42 _ 39. C3
        jnz     ?_159                                   ; 2F44 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 2F46 _ C7. 45, F0, 00000001
?_159:  cmp     dword [ebp-10H], 1                      ; 2F4D _ 83. 7D, F0, 01
        jnz     ?_160                                   ; 2F51 _ 75, 05
        call    task_switch                             ; 2F53 _ E8, FFFFFFFC(rel)
?_160:  add     dword [ebp-0CH], 1                      ; 2F58 _ 83. 45, F4, 01
?_161:  cmp     dword [ebp-0CH], 499                    ; 2F5C _ 81. 7D, F4, 000001F3
        jle     ?_158                                   ; 2F63 _ 0F 8E, FFFFFF46
        nop                                             ; 2F69 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2F6A _ 8B. 5D, FC
        leave                                           ; 2F6D _ C9
        ret                                             ; 2F6E _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2F6F _ 55
        mov     ebp, esp                                ; 2F70 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F72 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F75 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2F78 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2F7B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F7E _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2F81 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F83 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F86 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2F89 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2F8C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2F8F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2F96 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2F99 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2FA0 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2FA3 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2FAA _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2FAD _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 2FB0 _ 89. 50, 18
        nop                                             ; 2FB3 _ 90
        pop     ebp                                     ; 2FB4 _ 5D
        ret                                             ; 2FB5 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2FB6 _ 55
        mov     ebp, esp                                ; 2FB7 _ 89. E5
        sub     esp, 24                                 ; 2FB9 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2FBC _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 2FBF _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 2FC2 _ 83. 7D, 08, 00
        jnz     ?_162                                   ; 2FC6 _ 75, 0A
        mov     eax, 4294967295                         ; 2FC8 _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2FCD _ E9, 0000009E

?_162:  mov     eax, dword [ebp+8H]                     ; 2FD2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2FD5 _ 8B. 40, 10
        test    eax, eax                                ; 2FD8 _ 85. C0
        jnz     ?_163                                   ; 2FDA _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2FDC _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2FDF _ 8B. 40, 14
        or      eax, 01H                                ; 2FE2 _ 83. C8, 01
        mov     edx, eax                                ; 2FE5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FE7 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2FEA _ 89. 50, 14
        mov     eax, 4294967295                         ; 2FED _ B8, FFFFFFFF
        jmp     ?_166                                   ; 2FF2 _ EB, 7C

?_163:  mov     eax, dword [ebp+8H]                     ; 2FF4 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2FF7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2FF9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FFC _ 8B. 40, 08
        add     edx, eax                                ; 2FFF _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3001 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3005 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3007 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 300A _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 300D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3010 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3013 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3016 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3019 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 301C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 301F _ 8B. 40, 0C
        cmp     edx, eax                                ; 3022 _ 39. C2
        jl      ?_164                                   ; 3024 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3026 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3029 _ C7. 40, 08, 00000000
?_164:  mov     eax, dword [ebp+8H]                     ; 3030 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3033 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3036 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3039 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 303C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 303F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3042 _ 8B. 40, 18
        test    eax, eax                                ; 3045 _ 85. C0
        jz      ?_165                                   ; 3047 _ 74, 22
        mov     eax, dword [ebp+8H]                     ; 3049 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 304C _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 304F _ 8B. 40, 04
        cmp     eax, 2                                  ; 3052 _ 83. F8, 02
        jz      ?_165                                   ; 3055 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 3057 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 305A _ 8B. 40, 18
        sub     esp, 8                                  ; 305D _ 83. EC, 08
        push    0                                       ; 3060 _ 6A, 00
        push    eax                                     ; 3062 _ 50
        call    task_run                                ; 3063 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3068 _ 83. C4, 10
?_165:  mov     eax, 1                                  ; 306B _ B8, 00000001
?_166:  leave                                           ; 3070 _ C9
        ret                                             ; 3071 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3072 _ 55
        mov     ebp, esp                                ; 3073 _ 89. E5
        sub     esp, 16                                 ; 3075 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3078 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 307B _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 307E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3081 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3084 _ 39. C2
        jnz     ?_167                                   ; 3086 _ 75, 07
        mov     eax, 4294967295                         ; 3088 _ B8, FFFFFFFF
        jmp     ?_169                                   ; 308D _ EB, 51

?_167:  mov     eax, dword [ebp+8H]                     ; 308F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3092 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3094 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3097 _ 8B. 40, 04
        add     eax, edx                                ; 309A _ 01. D0
        movzx   eax, byte [eax]                         ; 309C _ 0F B6. 00
        movzx   eax, al                                 ; 309F _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 30A2 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 30A5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 30A8 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 30AB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30AE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 30B1 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30B4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30B7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30BA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30BD _ 8B. 40, 0C
        cmp     edx, eax                                ; 30C0 _ 39. C2
        jl      ?_168                                   ; 30C2 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 30C4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30C7 _ C7. 40, 04, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 30CE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30D1 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 30D4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30D7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 30DA _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 30DD _ 8B. 45, FC
?_169:  leave                                           ; 30E0 _ C9
        ret                                             ; 30E1 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 30E2 _ 55
        mov     ebp, esp                                ; 30E3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30E5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 30E8 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 30EB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30EE _ 8B. 40, 10
        sub     edx, eax                                ; 30F1 _ 29. C2
        mov     eax, edx                                ; 30F3 _ 89. D0
        pop     ebp                                     ; 30F5 _ 5D
        ret                                             ; 30F6 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 30F7 _ 55
        mov     ebp, esp                                ; 30F8 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 30FA _ 81. 7D, 0C, 000FFFFF
        jbe     ?_170                                   ; 3101 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3103 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 310A _ 8B. 45, 0C
        shr     eax, 12                                 ; 310D _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3110 _ 89. 45, 0C
?_170:  mov     eax, dword [ebp+0CH]                    ; 3113 _ 8B. 45, 0C
        mov     edx, eax                                ; 3116 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3118 _ 8B. 45, 08
        mov     word [eax], dx                          ; 311B _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 311E _ 8B. 45, 10
        mov     edx, eax                                ; 3121 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3123 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3126 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 312A _ 8B. 45, 10
        sar     eax, 16                                 ; 312D _ C1. F8, 10
        mov     edx, eax                                ; 3130 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3132 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3135 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3138 _ 8B. 45, 14
        mov     edx, eax                                ; 313B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 313D _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3140 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3143 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3146 _ C1. E8, 10
        and     eax, 0FH                                ; 3149 _ 83. E0, 0F
        mov     edx, eax                                ; 314C _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 314E _ 8B. 45, 14
        sar     eax, 8                                  ; 3151 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3154 _ 83. E0, F0
        or      eax, edx                                ; 3157 _ 09. D0
        mov     edx, eax                                ; 3159 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 315B _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 315E _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3161 _ 8B. 45, 10
        shr     eax, 24                                 ; 3164 _ C1. E8, 18
        mov     edx, eax                                ; 3167 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3169 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 316C _ 88. 50, 07
        nop                                             ; 316F _ 90
        pop     ebp                                     ; 3170 _ 5D
        ret                                             ; 3171 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3172 _ 55
        mov     ebp, esp                                ; 3173 _ 89. E5
        mov     eax, dword [task_timer]                 ; 3175 _ A1, 000021C4(d)
        pop     ebp                                     ; 317A _ 5D
        ret                                             ; 317B _ C3
; getTaskTimer End of function

task_init:; Function begin
        push    ebp                                     ; 317C _ 55
        mov     ebp, esp                                ; 317D _ 89. E5
        sub     esp, 24                                 ; 317F _ 83. EC, 18
        call    get_addr_gdt                            ; 3182 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3187 _ 89. 45, F0
        sub     esp, 8                                  ; 318A _ 83. EC, 08
        push    588                                     ; 318D _ 68, 0000024C
        push    dword [ebp+8H]                          ; 3192 _ FF. 75, 08
        call    memman_alloc_4K                         ; 3195 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 319A _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 319D _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 31A2 _ C7. 45, EC, 00000000
        jmp     ?_172                                   ; 31A9 _ EB, 73

?_171:  mov     edx, dword [taskctl]                    ; 31AB _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 31B1 _ 8B. 45, EC
        imul    eax, eax, 116                           ; 31B4 _ 6B. C0, 74
        add     eax, edx                                ; 31B7 _ 01. D0
        add     eax, 32                                 ; 31B9 _ 83. C0, 20
        mov     dword [eax], 0                          ; 31BC _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 31C2 _ 8B. 45, EC
        add     eax, 7                                  ; 31C5 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 31C8 _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 31CE _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 31D5 _ 8B. 45, EC
        imul    eax, eax, 116                           ; 31D8 _ 6B. C0, 74
        add     eax, ecx                                ; 31DB _ 01. C8
        add     eax, 28                                 ; 31DD _ 83. C0, 1C
        mov     dword [eax], edx                        ; 31E0 _ 89. 10
        mov     eax, dword [taskctl]                    ; 31E2 _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 31E7 _ 8B. 55, EC
        imul    edx, edx, 116                           ; 31EA _ 6B. D2, 74
        add     edx, 16                                 ; 31ED _ 83. C2, 10
        add     eax, edx                                ; 31F0 _ 01. D0
        add     eax, 24                                 ; 31F2 _ 83. C0, 18
        mov     ecx, eax                                ; 31F5 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 31F7 _ 8B. 45, EC
        add     eax, 7                                  ; 31FA _ 83. C0, 07
        lea     edx, [eax*8]                            ; 31FD _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3204 _ 8B. 45, F0
        add     eax, edx                                ; 3207 _ 01. D0
        push    137                                     ; 3209 _ 68, 00000089
        push    ecx                                     ; 320E _ 51
        push    103                                     ; 320F _ 6A, 67
        push    eax                                     ; 3211 _ 50
        call    set_segmdesc                            ; 3212 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3217 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 321A _ 83. 45, EC, 01
?_172:  cmp     dword [ebp-14H], 4                      ; 321E _ 83. 7D, EC, 04
        jle     ?_171                                   ; 3222 _ 7E, 87
        call    task_alloc                              ; 3224 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3229 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 322C _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 322F _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3236 _ 8B. 45, F4
        mov     dword [eax+8H], 100                     ; 3239 _ C7. 40, 08, 00000064
        mov     eax, dword [taskctl]                    ; 3240 _ A1, 000021C8(d)
        mov     dword [eax], 1                          ; 3245 _ C7. 00, 00000001
        mov     eax, dword [taskctl]                    ; 324B _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3250 _ C7. 40, 04, 00000000
        mov     eax, dword [taskctl]                    ; 3257 _ A1, 000021C8(d)
        mov     edx, dword [ebp-0CH]                    ; 325C _ 8B. 55, F4
        mov     dword [eax+8H], edx                     ; 325F _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3262 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3265 _ 8B. 00
        sub     esp, 12                                 ; 3267 _ 83. EC, 0C
        push    eax                                     ; 326A _ 50
        call    load_tr                                 ; 326B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3270 _ 83. C4, 10
        call    timer_alloc                             ; 3273 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3278 _ A3, 000021C4(d)
        mov     eax, dword [task_timer]                 ; 327D _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3282 _ 83. EC, 08
        push    100                                     ; 3285 _ 6A, 64
        push    eax                                     ; 3287 _ 50
        call    timer_setTime                           ; 3288 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 328D _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3290 _ 8B. 45, F4
        leave                                           ; 3293 _ C9
        ret                                             ; 3294 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3295 _ 55
        mov     ebp, esp                                ; 3296 _ 89. E5
        sub     esp, 16                                 ; 3298 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 329B _ C7. 45, F8, 00000000
        jmp     ?_175                                   ; 32A2 _ E9, 000000E1

?_173:  mov     edx, dword [taskctl]                    ; 32A7 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 32AD _ 8B. 45, F8
        imul    eax, eax, 116                           ; 32B0 _ 6B. C0, 74
        add     eax, edx                                ; 32B3 _ 01. D0
        add     eax, 32                                 ; 32B5 _ 83. C0, 20
        mov     eax, dword [eax]                        ; 32B8 _ 8B. 00
        test    eax, eax                                ; 32BA _ 85. C0
        jne     ?_174                                   ; 32BC _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 32C2 _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 32C7 _ 8B. 55, F8
        imul    edx, edx, 116                           ; 32CA _ 6B. D2, 74
        add     edx, 16                                 ; 32CD _ 83. C2, 10
        add     eax, edx                                ; 32D0 _ 01. D0
        add     eax, 12                                 ; 32D2 _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 32D5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 32D8 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 32DB _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 32E2 _ 8B. 45, FC
        mov     dword [eax+30H], 514                    ; 32E5 _ C7. 40, 30, 00000202
        mov     eax, dword [ebp-4H]                     ; 32EC _ 8B. 45, FC
        mov     dword [eax+34H], 0                      ; 32EF _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-4H]                     ; 32F6 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 32F9 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 3300 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3303 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 330A _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 330D _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3314 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3317 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-8H]                     ; 331E _ 8B. 45, F8
        add     eax, 1                                  ; 3321 _ 83. C0, 01
        shl     eax, 9                                  ; 3324 _ C1. E0, 09
        mov     edx, eax                                ; 3327 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3329 _ 8B. 45, FC
        mov     dword [eax+44H], edx                    ; 332C _ 89. 50, 44
        mov     eax, dword [ebp-4H]                     ; 332F _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 3332 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3339 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 333C _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 3343 _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3346 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 334D _ 8B. 45, FC
        mov     dword [eax+60H], 0                      ; 3350 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-4H]                     ; 3357 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 335A _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 3361 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3364 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 336B _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 336E _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3375 _ 8B. 45, FC
        mov     dword [eax+70H], 1073741824             ; 3378 _ C7. 40, 70, 40000000
        mov     eax, dword [ebp-4H]                     ; 337F _ 8B. 45, FC
        jmp     ?_176                                   ; 3382 _ EB, 13

?_174:  add     dword [ebp-8H], 1                       ; 3384 _ 83. 45, F8, 01
?_175:  cmp     dword [ebp-8H], 4                       ; 3388 _ 83. 7D, F8, 04
        jle     ?_173                                   ; 338C _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3392 _ B8, 00000000
?_176:  leave                                           ; 3397 _ C9
        ret                                             ; 3398 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3399 _ 55
        mov     ebp, esp                                ; 339A _ 89. E5
        cmp     dword [ebp+0CH], 0                      ; 339C _ 83. 7D, 0C, 00
        jle     ?_177                                   ; 33A0 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 33A2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 33A5 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 33A8 _ 89. 50, 08
?_177:  mov     eax, dword [ebp+8H]                     ; 33AB _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 33AE _ C7. 40, 04, 00000002
        mov     eax, dword [taskctl]                    ; 33B5 _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 33BA _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx]                        ; 33C0 _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 33C2 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 33C5 _ 89. 4C 90, 08
        mov     eax, dword [taskctl]                    ; 33C9 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 33CE _ 8B. 10
        add     edx, 1                                  ; 33D0 _ 83. C2, 01
        mov     dword [eax], edx                        ; 33D3 _ 89. 10
        nop                                             ; 33D5 _ 90
        pop     ebp                                     ; 33D6 _ 5D
        ret                                             ; 33D7 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 33D8 _ 55
        mov     ebp, esp                                ; 33D9 _ 89. E5
        sub     esp, 8                                  ; 33DB _ 83. EC, 08
        mov     eax, dword [taskctl]                    ; 33DE _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 33E3 _ 8B. 00
        cmp     eax, 1                                  ; 33E5 _ 83. F8, 01
        jle     ?_179                                   ; 33E8 _ 7E, 79
        mov     eax, dword [taskctl]                    ; 33EA _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 33EF _ 8B. 50, 04
        add     edx, 1                                  ; 33F2 _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 33F5 _ 89. 50, 04
        mov     eax, dword [taskctl]                    ; 33F8 _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 33FD _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 3400 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 3405 _ 8B. 00
        cmp     edx, eax                                ; 3407 _ 39. C2
        jnz     ?_178                                   ; 3409 _ 75, 0C
        mov     eax, dword [taskctl]                    ; 340B _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3410 _ C7. 40, 04, 00000000
?_178:  mov     eax, dword [taskctl]                    ; 3417 _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 341C _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx+4H]                     ; 3422 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3425 _ 8B. 44 90, 08
        mov     eax, dword [eax+8H]                     ; 3429 _ 8B. 40, 08
        mov     edx, eax                                ; 342C _ 89. C2
        mov     eax, dword [task_timer]                 ; 342E _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3433 _ 83. EC, 08
        push    edx                                     ; 3436 _ 52
        push    eax                                     ; 3437 _ 50
        call    timer_setTime                           ; 3438 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 343D _ 83. C4, 10
        mov     eax, dword [taskctl]                    ; 3440 _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 3445 _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx+4H]                     ; 344B _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 344E _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3452 _ 8B. 00
        sub     esp, 8                                  ; 3454 _ 83. EC, 08
        push    eax                                     ; 3457 _ 50
        push    0                                       ; 3458 _ 6A, 00
        call    farjmp                                  ; 345A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 345F _ 83. C4, 10
        nop                                             ; 3462 _ 90
?_179:  nop                                             ; 3463 _ 90
        leave                                           ; 3464 _ C9
        ret                                             ; 3465 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3466 _ 55
        mov     ebp, esp                                ; 3467 _ 89. E5
        sub     esp, 24                                 ; 3469 _ 83. EC, 18
        mov     byte [ebp-0DH], 0                       ; 346C _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3470 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3473 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3476 _ 83. F8, 02
        jnz     ?_180                                   ; 3479 _ 75, 1B
        mov     eax, dword [taskctl]                    ; 347B _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 3480 _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx+4H]                     ; 3486 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3489 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 348D _ 39. 45, 08
        jnz     ?_180                                   ; 3490 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3492 _ C6. 45, F3, 01
?_180:  mov     dword [ebp-0CH], 0                      ; 3496 _ C7. 45, F4, 00000000
        jmp     ?_182                                   ; 349D _ EB, 15

?_181:  mov     eax, dword [taskctl]                    ; 349F _ A1, 000021C8(d)
        mov     edx, dword [ebp-0CH]                    ; 34A4 _ 8B. 55, F4
        mov     eax, dword [eax+edx*4+8H]               ; 34A7 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 34AB _ 39. 45, 08
        jz      ?_183                                   ; 34AE _ 74, 12
        add     dword [ebp-0CH], 1                      ; 34B0 _ 83. 45, F4, 01
?_182:  mov     eax, dword [taskctl]                    ; 34B4 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 34B9 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 34BB _ 39. 45, F4
        jl      ?_181                                   ; 34BE _ 7C, DF
        jmp     ?_184                                   ; 34C0 _ EB, 01

?_183:  nop                                             ; 34C2 _ 90
?_184:  mov     eax, dword [taskctl]                    ; 34C3 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 34C8 _ 8B. 10
        sub     edx, 1                                  ; 34CA _ 83. EA, 01
        mov     dword [eax], edx                        ; 34CD _ 89. 10
        mov     eax, dword [taskctl]                    ; 34CF _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 34D4 _ 8B. 40, 04
        cmp     dword [ebp-0CH], eax                    ; 34D7 _ 39. 45, F4
        jge     ?_186                                   ; 34DA _ 7D, 30
        mov     eax, dword [taskctl]                    ; 34DC _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 34E1 _ 8B. 50, 04
        sub     edx, 1                                  ; 34E4 _ 83. EA, 01
        mov     dword [eax+4H], edx                     ; 34E7 _ 89. 50, 04
        jmp     ?_186                                   ; 34EA _ EB, 20

?_185:  mov     edx, dword [taskctl]                    ; 34EC _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-0CH]                    ; 34F2 _ 8B. 45, F4
        lea     ecx, [eax+1H]                           ; 34F5 _ 8D. 48, 01
        mov     eax, dword [taskctl]                    ; 34F8 _ A1, 000021C8(d)
        mov     ecx, dword [edx+ecx*4+8H]               ; 34FD _ 8B. 4C 8A, 08
        mov     edx, dword [ebp-0CH]                    ; 3501 _ 8B. 55, F4
        mov     dword [eax+edx*4+8H], ecx               ; 3504 _ 89. 4C 90, 08
        add     dword [ebp-0CH], 1                      ; 3508 _ 83. 45, F4, 01
?_186:  mov     eax, dword [taskctl]                    ; 350C _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 3511 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 3513 _ 39. 45, F4
        jl      ?_185                                   ; 3516 _ 7C, D4
        mov     eax, dword [ebp+8H]                     ; 3518 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 351B _ C7. 40, 04, 00000001
        cmp     byte [ebp-0DH], 0                       ; 3522 _ 80. 7D, F3, 00
        jz      ?_188                                   ; 3526 _ 74, 41
        mov     eax, dword [taskctl]                    ; 3528 _ A1, 000021C8(d)
        mov     edx, dword [eax+4H]                     ; 352D _ 8B. 50, 04
        mov     eax, dword [taskctl]                    ; 3530 _ A1, 000021C8(d)
        mov     eax, dword [eax]                        ; 3535 _ 8B. 00
        cmp     edx, eax                                ; 3537 _ 39. C2
        jl      ?_187                                   ; 3539 _ 7C, 0C
        mov     eax, dword [taskctl]                    ; 353B _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 3540 _ C7. 40, 04, 00000000
?_187:  mov     eax, dword [taskctl]                    ; 3547 _ A1, 000021C8(d)
        mov     edx, dword [taskctl]                    ; 354C _ 8B. 15, 000021C8(d)
        mov     edx, dword [edx+4H]                     ; 3552 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3555 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3559 _ 8B. 00
        sub     esp, 8                                  ; 355B _ 83. EC, 08
        push    eax                                     ; 355E _ 50
        push    0                                       ; 355F _ 6A, 00
        call    farjmp                                  ; 3561 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3566 _ 83. C4, 10
?_188:  nop                                             ; 3569 _ 90
        leave                                           ; 356A _ C9
        ret                                             ; 356B _ C3
; task_sleep End of function

getTaskctl:; Function begin
        push    ebp                                     ; 356C _ 55
        mov     ebp, esp                                ; 356D _ 89. E5
        mov     eax, dword [taskctl]                    ; 356F _ A1, 000021C8(d)
        pop     ebp                                     ; 3574 _ 5D
        ret                                             ; 3575 _ C3
; getTaskctl End of function



?_189:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_190:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 31H, 00H                 ; 0008 _ Task1.

?_191:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 32H, 00H                 ; 000E _ Task2.

?_192:                                                  ; byte
        db 54H, 61H, 73H, 6BH, 33H, 00H                 ; 0014 _ Task3.

?_193:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 001A _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0022 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 002A _ herry.

?_194:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_195:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_196:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0039 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0041 _ sk B.

?_197:                                                  ; byte
        db 42H, 00H                                     ; 0046 _ B.

?_198:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0048 _ Page is:
        db 20H, 00H                                     ; 0050 _  .

?_199:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0052 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 005A _ Low: .

?_200:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0060 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0068 _ High: .

?_201:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 006F _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0077 _ w: .

?_202:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 007B _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0083 _ gh: .

?_203:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0088 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_204:  db 00H                                          ; 0002 _ .

?_205:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2262: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2305:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2360:                                            ; byte
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

closebtn.2502:                                          ; byte
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

?_206:  resw    1                                       ; 0004

?_207:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

?_208:  resd    1                                       ; 0020

mouseInfo:                                              ; byte
        resb    28                                      ; 0024

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_209:  resd    1                                       ; 00EC

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

task_a.2257:                                            ; dword
        resd    1                                       ; 0234

task_b.2247:                                            ; oword
        resd    1                                       ; 0238

?_210:  resd    1                                       ; 023C

?_211:  resd    2                                       ; 0240

cnt.2258: resd  1                                       ; 0248

line.2261:                                              ; dword
        resd    1                                       ; 024C

str.2403:                                               ; byte
        resb    1                                       ; 0250

?_212:  resb    9                                       ; 0251

?_213:  resb    2                                       ; 025A

line.2436:                                              ; dword
        resd    1                                       ; 025C

pos.2435: resd  8                                       ; 0260

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_214:                                                  ; byte
        resb    4                                       ; 0284

?_215:                                                  ; byte
        resb    4                                       ; 0288

?_216:                                                  ; byte
        resb    4                                       ; 028C

?_217:                                                  ; byte
        resb    7988                                    ; 0290

task_timer:                                             ; dword
        resd    1                                       ; 21C4

taskctl: resd   1                                       ; 21C8


