; Disassembly of file: ckernel.o
; Sun May 16 23:25:02 2021
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
        movzx   eax, word [?_218]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-60H], eax                    ; 0034 _ 89. 45, A0
        movzx   eax, word [?_219]                       ; 0037 _ 0F B7. 05, 00000006(d)
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
        push    1                                       ; 02DB _ 6A, 01
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
        mov     dword [task_a.2273], eax                ; 0353 _ A3, 00000234(d)
        mov     eax, dword [task_a.2273]                ; 0358 _ A1, 00000234(d)
        mov     dword [?_220], eax                      ; 035D _ A3, 00000020(d)
        call    launch_console                          ; 0362 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-71H], 0                       ; 0367 _ C6. 45, 8F, 00
        mov     dword [ebp-70H], 7                      ; 036B _ C7. 45, 90, 00000007
        mov     dword [ebp-6CH], 0                      ; 0372 _ C7. 45, 94, 00000000
        mov     edx, dword [sheet_win]                  ; 0379 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 037F _ A1, 00000224(d)
        sub     esp, 8                                  ; 0384 _ 83. EC, 08
        push    ?_204                                   ; 0387 _ 68, 00000008(d)
        push    10                                      ; 038C _ 6A, 0A
        push    63                                      ; 038E _ 6A, 3F
        push    8                                       ; 0390 _ 6A, 08
        push    edx                                     ; 0392 _ 52
        push    eax                                     ; 0393 _ 50
        call    showString                              ; 0394 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0399 _ 83. C4, 20
        mov     dword [ebp-68H], 0                      ; 039C _ C7. 45, 98, 00000000
?_001:  call    io_sti                                  ; 03A3 _ E8, FFFFFFFC(rel)
        call    io_cli                                  ; 03A8 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03AD _ 83. EC, 0C
        push    keyInfo                                 ; 03B0 _ 68, 00000008(d)
        call    fifo8_status                            ; 03B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03BA _ 83. C4, 10
        mov     ebx, eax                                ; 03BD _ 89. C3
        sub     esp, 12                                 ; 03BF _ 83. EC, 0C
        push    mouseInfo                               ; 03C2 _ 68, 00000024(d)
        call    fifo8_status                            ; 03C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03CC _ 83. C4, 10
        add     ebx, eax                                ; 03CF _ 01. C3
        sub     esp, 12                                 ; 03D1 _ 83. EC, 0C
        push    timerInfo                               ; 03D4 _ 68, 00000200(d)
        call    fifo8_status                            ; 03D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03DE _ 83. C4, 10
        add     eax, ebx                                ; 03E1 _ 01. D8
        test    eax, eax                                ; 03E3 _ 85. C0
        jnz     ?_002                                   ; 03E5 _ 75, 07
        call    io_sti                                  ; 03E7 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 03EC _ EB, B5

?_002:  sub     esp, 12                                 ; 03EE _ 83. EC, 0C
        push    keyInfo                                 ; 03F1 _ 68, 00000008(d)
        call    fifo8_status                            ; 03F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FB _ 83. C4, 10
        test    eax, eax                                ; 03FE _ 85. C0
        je      ?_008                                   ; 0400 _ 0F 84, 00000317
        call    io_sti                                  ; 0406 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 040B _ 83. EC, 0C
        push    keyInfo                                 ; 040E _ 68, 00000008(d)
        call    fifo8_get                               ; 0413 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0418 _ 83. C4, 10
        mov     byte [ebp-71H], al                      ; 041B _ 88. 45, 8F
        cmp     byte [ebp-71H], 28                      ; 041E _ 80. 7D, 8F, 1C
        jnz     ?_003                                   ; 0422 _ 75, 59
        mov     ebx, dword [cnt.2274]                   ; 0424 _ 8B. 1D, 00000238(d)
        mov     eax, dword [sheet_back]                 ; 042A _ A1, 0000022C(d)
        mov     ecx, dword [eax]                        ; 042F _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 0431 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0437 _ A1, 00000224(d)
        sub     esp, 4                                  ; 043C _ 83. EC, 04
        push    7                                       ; 043F _ 6A, 07
        push    dword [ebp-60H]                         ; 0441 _ FF. 75, A0
        push    ebx                                     ; 0444 _ 53
        push    ecx                                     ; 0445 _ 51
        push    dword [ebp-48H]                         ; 0446 _ FF. 75, B8
        push    edx                                     ; 0449 _ 52
        push    eax                                     ; 044A _ 50
        call    showMemInfo                             ; 044B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0450 _ 83. C4, 20
        mov     eax, dword [cnt.2274]                   ; 0453 _ A1, 00000238(d)
        add     eax, 1                                  ; 0458 _ 83. C0, 01
        mov     dword [cnt.2274], eax                   ; 045B _ A3, 00000238(d)
        mov     eax, dword [cnt.2274]                   ; 0460 _ A1, 00000238(d)
        cmp     dword [ebp-44H], eax                    ; 0465 _ 39. 45, BC
        jg      ?_001                                   ; 0468 _ 0F 8F, FFFFFF35
        mov     dword [cnt.2274], 0                     ; 046E _ C7. 05, 00000238(d), 00000000
        jmp     ?_001                                   ; 0478 _ E9, FFFFFF26

?_003:  movzx   eax, byte [ebp-71H]                     ; 047D _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0481 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 0488 _ 84. C0
        jz      ?_004                                   ; 048A _ 74, 18
        cmp     byte [ebp-71H], 15                      ; 048C _ 80. 7D, 8F, 0F
        jbe     ?_004                                   ; 0490 _ 76, 12
        cmp     byte [ebp-71H], 83                      ; 0492 _ 80. 7D, 8F, 53
        ja      ?_004                                   ; 0496 _ 77, 0C
        mov     eax, dword [line.2277]                  ; 0498 _ A1, 0000023C(d)
        cmp     eax, 142                                ; 049D _ 3D, 0000008E
        jle     ?_005                                   ; 04A2 _ 7E, 18
?_004:  cmp     byte [ebp-71H], 14                      ; 04A4 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 04A8 _ 0F 85, FFFFFEF5
        mov     eax, dword [line.2277]                  ; 04AE _ A1, 0000023C(d)
        cmp     eax, 7                                  ; 04B3 _ 83. F8, 07
        jle     ?_001                                   ; 04B6 _ 0F 8E, FFFFFEE7
?_005:  movzx   eax, byte [ebp-71H]                     ; 04BC _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 04C0 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 04C7 _ 84. C0
        je      ?_007                                   ; 04C9 _ 0F 84, 00000128
        cmp     byte [ebp-71H], 15                      ; 04CF _ 80. 7D, 8F, 0F
        jbe     ?_007                                   ; 04D3 _ 0F 86, 0000011E
        cmp     byte [ebp-71H], 83                      ; 04D9 _ 80. 7D, 8F, 53
        ja      ?_007                                   ; 04DD _ 0F 87, 00000114
        mov     eax, dword [line.2277]                  ; 04E3 _ A1, 0000023C(d)
        cmp     eax, 142                                ; 04E8 _ 3D, 0000008E
        jg      ?_007                                   ; 04ED _ 0F 8F, 00000104
        mov     eax, dword [pos.2278]                   ; 04F3 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 04F8 _ 8D. 78, 28
        mov     eax, dword [line.2277]                  ; 04FB _ A1, 0000023C(d)
        lea     esi, [eax+10H]                          ; 0500 _ 8D. 70, 10
        mov     eax, dword [pos.2278]                   ; 0503 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0508 _ 8D. 58, 1A
        mov     eax, dword [line.2277]                  ; 050B _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 0510 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 0513 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0518 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 051B _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 0520 _ 8B. 00
        sub     esp, 4                                  ; 0522 _ 83. EC, 04
        push    edi                                     ; 0525 _ 57
        push    esi                                     ; 0526 _ 56
        push    ebx                                     ; 0527 _ 53
        push    ecx                                     ; 0528 _ 51
        push    7                                       ; 0529 _ 6A, 07
        push    edx                                     ; 052B _ 52
        push    eax                                     ; 052C _ 50
        call    boxfill8                                ; 052D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0532 _ 83. C4, 20
        mov     eax, dword [pos.2278]                   ; 0535 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 053A _ 8D. 78, 2A
        mov     eax, dword [line.2277]                  ; 053D _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 0542 _ 8D. 70, 12
        mov     eax, dword [pos.2278]                   ; 0545 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 054A _ 8D. 58, 1A
        mov     eax, dword [line.2277]                  ; 054D _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 0552 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0555 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 055B _ A1, 00000224(d)
        sub     esp, 8                                  ; 0560 _ 83. EC, 08
        push    edi                                     ; 0563 _ 57
        push    esi                                     ; 0564 _ 56
        push    ebx                                     ; 0565 _ 53
        push    ecx                                     ; 0566 _ 51
        push    edx                                     ; 0567 _ 52
        push    eax                                     ; 0568 _ 50
        call    sheet_refresh                           ; 0569 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 056E _ 83. C4, 20
        movzx   eax, byte [ebp-71H]                     ; 0571 _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0575 _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 057C _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 057F _ C6. 45, E3, 00
        mov     eax, dword [pos.2278]                   ; 0583 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0588 _ 8D. 70, 1A
        mov     eax, dword [line.2277]                  ; 058B _ A1, 0000023C(d)
        lea     ebx, [eax+0AH]                          ; 0590 _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 0593 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0599 _ A1, 00000224(d)
        sub     esp, 8                                  ; 059E _ 83. EC, 08
        lea     ecx, [ebp-1EH]                          ; 05A1 _ 8D. 4D, E2
        push    ecx                                     ; 05A4 _ 51
        push    0                                       ; 05A5 _ 6A, 00
        push    esi                                     ; 05A7 _ 56
        push    ebx                                     ; 05A8 _ 53
        push    edx                                     ; 05A9 _ 52
        push    eax                                     ; 05AA _ 50
        call    showString                              ; 05AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05B0 _ 83. C4, 20
        mov     eax, dword [line.2277]                  ; 05B3 _ A1, 0000023C(d)
        add     eax, 8                                  ; 05B8 _ 83. C0, 08
        mov     dword [line.2277], eax                  ; 05BB _ A3, 0000023C(d)
        mov     eax, dword [sheet_win]                  ; 05C0 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 05C5 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 05C8 _ 8D. 50, F0
        mov     eax, dword [line.2277]                  ; 05CB _ A1, 0000023C(d)
        cmp     edx, eax                                ; 05D0 _ 39. C2
        jg      ?_006                                   ; 05D2 _ 7F, 17
        mov     eax, dword [pos.2278]                   ; 05D4 _ A1, 00000074(d)
        add     eax, 16                                 ; 05D9 _ 83. C0, 10
        mov     dword [pos.2278], eax                   ; 05DC _ A3, 00000074(d)
        mov     dword [line.2277], 0                    ; 05E1 _ C7. 05, 0000023C(d), 00000000
?_006:  mov     dword [ebp-68H], 0                      ; 05EB _ C7. 45, 98, 00000000
        jmp     ?_014                                   ; 05F2 _ E9, 0000030D

?_007:  cmp     byte [ebp-71H], 14                      ; 05F7 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 05FB _ 0F 85, FFFFFDA2
        mov     eax, dword [line.2277]                  ; 0601 _ A1, 0000023C(d)
        cmp     eax, 7                                  ; 0606 _ 83. F8, 07
        jle     ?_001                                   ; 0609 _ 0F 8E, FFFFFD94
        mov     eax, dword [pos.2278]                   ; 060F _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0614 _ 8D. 78, 28
        mov     eax, dword [line.2277]                  ; 0617 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 061C _ 8D. 70, 12
        mov     eax, dword [pos.2278]                   ; 061F _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0624 _ 8D. 58, 1A
        mov     eax, dword [line.2277]                  ; 0627 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 062C _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 062F _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 0634 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0637 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 063C _ 8B. 00
        sub     esp, 4                                  ; 063E _ 83. EC, 04
        push    edi                                     ; 0641 _ 57
        push    esi                                     ; 0642 _ 56
        push    ebx                                     ; 0643 _ 53
        push    ecx                                     ; 0644 _ 51
        push    7                                       ; 0645 _ 6A, 07
        push    edx                                     ; 0647 _ 52
        push    eax                                     ; 0648 _ 50
        call    boxfill8                                ; 0649 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 064E _ 83. C4, 20
        mov     eax, dword [pos.2278]                   ; 0651 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0656 _ 8D. 78, 2A
        mov     eax, dword [line.2277]                  ; 0659 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 065E _ 8D. 70, 12
        mov     eax, dword [pos.2278]                   ; 0661 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0666 _ 8D. 58, 1A
        mov     eax, dword [line.2277]                  ; 0669 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 066E _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 0671 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0677 _ A1, 00000224(d)
        sub     esp, 8                                  ; 067C _ 83. EC, 08
        push    edi                                     ; 067F _ 57
        push    esi                                     ; 0680 _ 56
        push    ebx                                     ; 0681 _ 53
        push    ecx                                     ; 0682 _ 51
        push    edx                                     ; 0683 _ 52
        push    eax                                     ; 0684 _ 50
        call    sheet_refresh                           ; 0685 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 068A _ 83. C4, 20
        mov     eax, dword [line.2277]                  ; 068D _ A1, 0000023C(d)
        sub     eax, 8                                  ; 0692 _ 83. E8, 08
        mov     dword [line.2277], eax                  ; 0695 _ A3, 0000023C(d)
        mov     eax, dword [pos.2278]                   ; 069A _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 069F _ 8D. 78, 28
        mov     eax, dword [line.2277]                  ; 06A2 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 06A7 _ 8D. 70, 12
        mov     eax, dword [pos.2278]                   ; 06AA _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06AF _ 8D. 58, 1A
        mov     eax, dword [line.2277]                  ; 06B2 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 06B7 _ 8D. 48, 0A
        mov     eax, dword [sheet_win]                  ; 06BA _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 06BF _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 06C2 _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 06C7 _ 8B. 00
        sub     esp, 4                                  ; 06C9 _ 83. EC, 04
        push    edi                                     ; 06CC _ 57
        push    esi                                     ; 06CD _ 56
        push    ebx                                     ; 06CE _ 53
        push    ecx                                     ; 06CF _ 51
        push    7                                       ; 06D0 _ 6A, 07
        push    edx                                     ; 06D2 _ 52
        push    eax                                     ; 06D3 _ 50
        call    boxfill8                                ; 06D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06D9 _ 83. C4, 20
        mov     eax, dword [pos.2278]                   ; 06DC _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 06E1 _ 8D. 78, 2A
        mov     eax, dword [line.2277]                  ; 06E4 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 06E9 _ 8D. 70, 12
        mov     eax, dword [pos.2278]                   ; 06EC _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06F1 _ 8D. 58, 1A
        mov     eax, dword [line.2277]                  ; 06F4 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 06F9 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 06FC _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 0702 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0707 _ 83. EC, 08
        push    edi                                     ; 070A _ 57
        push    esi                                     ; 070B _ 56
        push    ebx                                     ; 070C _ 53
        push    ecx                                     ; 070D _ 51
        push    edx                                     ; 070E _ 52
        push    eax                                     ; 070F _ 50
        call    sheet_refresh                           ; 0710 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0715 _ 83. C4, 20
        jmp     ?_001                                   ; 0718 _ E9, FFFFFC86

?_008:  sub     esp, 12                                 ; 071D _ 83. EC, 0C
        push    mouseInfo                               ; 0720 _ 68, 00000024(d)
        call    fifo8_status                            ; 0725 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 072A _ 83. C4, 10
        test    eax, eax                                ; 072D _ 85. C0
        jz      ?_009                                   ; 072F _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 0731 _ 8B. 0D, 00000230(d)
        mov     edx, dword [sheet_back]                 ; 0737 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 073D _ A1, 00000224(d)
        sub     esp, 4                                  ; 0742 _ 83. EC, 04
        push    ecx                                     ; 0745 _ 51
        push    edx                                     ; 0746 _ 52
        push    eax                                     ; 0747 _ 50
        call    showMouseInfo                           ; 0748 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 074D _ 83. C4, 10
        jmp     ?_001                                   ; 0750 _ E9, FFFFFC4E

?_009:  sub     esp, 12                                 ; 0755 _ 83. EC, 0C
        push    timerInfo                               ; 0758 _ 68, 00000200(d)
        call    fifo8_status                            ; 075D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0762 _ 83. C4, 10
        test    eax, eax                                ; 0765 _ 85. C0
        je      ?_001                                   ; 0767 _ 0F 84, FFFFFC36
        call    io_sti                                  ; 076D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0772 _ 83. EC, 0C
        push    timerInfo                               ; 0775 _ 68, 00000200(d)
        call    fifo8_get                               ; 077A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 077F _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0782 _ 89. 45, CC
        cmp     dword [ebp-34H], 10                     ; 0785 _ 83. 7D, CC, 0A
        jnz     ?_010                                   ; 0789 _ 75, 73
        mov     edx, dword [sheet_back]                 ; 078B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0791 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0796 _ 83. EC, 08
        push    ?_205                                   ; 0799 _ 68, 0000001E(d)
        push    7                                       ; 079E _ 6A, 07
        push    160                                     ; 07A0 _ 68, 000000A0
        push    dword [ebp-6CH]                         ; 07A5 _ FF. 75, 94
        push    edx                                     ; 07A8 _ 52
        push    eax                                     ; 07A9 _ 50
        call    showString                              ; 07AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07AF _ 83. C4, 20
        sub     esp, 8                                  ; 07B2 _ 83. EC, 08
        push    100                                     ; 07B5 _ 6A, 64
        push    dword [ebp-54H]                         ; 07B7 _ FF. 75, AC
        call    timer_setTime                           ; 07BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07BF _ 83. C4, 10
        add     dword [ebp-6CH], 8                      ; 07C2 _ 83. 45, 94, 08
        add     dword [ebp-68H], 1                      ; 07C6 _ 83. 45, 98, 01
        cmp     dword [ebp-6CH], 39                     ; 07CA _ 83. 7D, 94, 27
        jle     ?_001                                   ; 07CE _ 0F 8E, FFFFFBCF
        cmp     dword [ebp-68H], 5                      ; 07D4 _ 83. 7D, 98, 05
        jne     ?_001                                   ; 07D8 _ 0F 85, FFFFFBC5
        call    io_cli                                  ; 07DE _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_a.2273]                ; 07E3 _ A1, 00000234(d)
        sub     esp, 12                                 ; 07E8 _ 83. EC, 0C
        push    eax                                     ; 07EB _ 50
        call    task_sleep                              ; 07EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07F1 _ 83. C4, 10
        call    io_sti                                  ; 07F4 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 07F9 _ E9, FFFFFBA5

?_010:  cmp     dword [ebp-34H], 2                      ; 07FE _ 83. 7D, CC, 02
        jnz     ?_011                                   ; 0802 _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0804 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 080A _ A1, 00000224(d)
        sub     esp, 8                                  ; 080F _ 83. EC, 08
        push    ?_206                                   ; 0812 _ 68, 00000020(d)
        push    7                                       ; 0817 _ 6A, 07
        push    32                                      ; 0819 _ 6A, 20
        push    0                                       ; 081B _ 6A, 00
        push    edx                                     ; 081D _ 52
        push    eax                                     ; 081E _ 50
        call    showString                              ; 081F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0824 _ 83. C4, 20
        jmp     ?_001                                   ; 0827 _ E9, FFFFFB77

?_011:  cmp     dword [ebp-34H], 0                      ; 082C _ 83. 7D, CC, 00
        jz      ?_012                                   ; 0830 _ 74, 1E
        sub     esp, 4                                  ; 0832 _ 83. EC, 04
        push    0                                       ; 0835 _ 6A, 00
        push    timerInfo                               ; 0837 _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 083C _ FF. 75, B4
        call    timer_init                              ; 083F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0844 _ 83. C4, 10
        mov     dword [ebp-70H], 0                      ; 0847 _ C7. 45, 90, 00000000
        jmp     ?_013                                   ; 084E _ EB, 1C

?_012:  sub     esp, 4                                  ; 0850 _ 83. EC, 04
        push    1                                       ; 0853 _ 6A, 01
        push    timerInfo                               ; 0855 _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 085A _ FF. 75, B4
        call    timer_init                              ; 085D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0862 _ 83. C4, 10
        mov     dword [ebp-70H], 7                      ; 0865 _ C7. 45, 90, 00000007
?_013:  sub     esp, 8                                  ; 086C _ 83. EC, 08
        push    50                                      ; 086F _ 6A, 32
        push    dword [ebp-4CH]                         ; 0871 _ FF. 75, B4
        call    timer_setTime                           ; 0874 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0879 _ 83. C4, 10
        mov     eax, dword [pos.2278]                   ; 087C _ A1, 00000074(d)
        add     eax, 40                                 ; 0881 _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0884 _ 89. 45, 84
        mov     eax, dword [line.2277]                  ; 0887 _ A1, 0000023C(d)
        lea     edi, [eax+10H]                          ; 088C _ 8D. 78, 10
        mov     eax, dword [pos.2278]                   ; 088F _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0894 _ 8D. 70, 1A
        mov     eax, dword [line.2277]                  ; 0897 _ A1, 0000023C(d)
        lea     ebx, [eax+0AH]                          ; 089C _ 8D. 58, 0A
        mov     eax, dword [ebp-70H]                    ; 089F _ 8B. 45, 90
        movzx   ecx, al                                 ; 08A2 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 08A5 _ A1, 00000228(d)
        mov     edx, dword [eax+4H]                     ; 08AA _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 08AD _ A1, 00000228(d)
        mov     eax, dword [eax]                        ; 08B2 _ 8B. 00
        sub     esp, 4                                  ; 08B4 _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 08B7 _ FF. 75, 84
        push    edi                                     ; 08BA _ 57
        push    esi                                     ; 08BB _ 56
        push    ebx                                     ; 08BC _ 53
        push    ecx                                     ; 08BD _ 51
        push    edx                                     ; 08BE _ 52
        push    eax                                     ; 08BF _ 50
        call    boxfill8                                ; 08C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08C5 _ 83. C4, 20
        mov     eax, dword [pos.2278]                   ; 08C8 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 08CD _ 8D. 78, 2A
        mov     eax, dword [line.2277]                  ; 08D0 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 08D5 _ 8D. 70, 12
        mov     eax, dword [pos.2278]                   ; 08D8 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 08DD _ 8D. 58, 1A
        mov     eax, dword [line.2277]                  ; 08E0 _ A1, 0000023C(d)
        lea     ecx, [eax+0AH]                          ; 08E5 _ 8D. 48, 0A
        mov     edx, dword [sheet_win]                  ; 08E8 _ 8B. 15, 00000228(d)
        mov     eax, dword [shtctl]                     ; 08EE _ A1, 00000224(d)
        sub     esp, 8                                  ; 08F3 _ 83. EC, 08
        push    edi                                     ; 08F6 _ 57
        push    esi                                     ; 08F7 _ 56
        push    ebx                                     ; 08F8 _ 53
        push    ecx                                     ; 08F9 _ 51
        push    edx                                     ; 08FA _ 52
        push    eax                                     ; 08FB _ 50
        call    sheet_refresh                           ; 08FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0901 _ 83. C4, 20
?_014:  jmp     ?_001                                   ; 0904 _ E9, FFFFFA9A
; CMain End of function

launch_console:; Function begin
        push    ebp                                     ; 0909 _ 55
        mov     ebp, esp                                ; 090A _ 89. E5
        sub     esp, 24                                 ; 090C _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 090F _ A1, 00000224(d)
        sub     esp, 12                                 ; 0914 _ 83. EC, 0C
        push    eax                                     ; 0917 _ 50
        call    sheet_alloc                             ; 0918 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 091D _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0920 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0923 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0928 _ 83. EC, 08
        push    46080                                   ; 092B _ 68, 0000B400
        push    eax                                     ; 0930 _ 50
        call    memman_alloc_4K                         ; 0931 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0936 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0939 _ 89. 45, EC
        sub     esp, 12                                 ; 093C _ 83. EC, 0C
        push    99                                      ; 093F _ 6A, 63
        push    180                                     ; 0941 _ 68, 000000B4
        push    256                                     ; 0946 _ 68, 00000100
        push    dword [ebp-14H]                         ; 094B _ FF. 75, EC
        push    dword [ebp-18H]                         ; 094E _ FF. 75, E8
        call    sheet_setbuf                            ; 0951 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0956 _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0959 _ A1, 00000224(d)
        sub     esp, 4                                  ; 095E _ 83. EC, 04
        push    ?_207                                   ; 0961 _ 68, 00000027(d)
        push    dword [ebp-18H]                         ; 0966 _ FF. 75, E8
        push    eax                                     ; 0969 _ 50
        call    make_window8                            ; 096A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 096F _ 83. C4, 10
        sub     esp, 8                                  ; 0972 _ 83. EC, 08
        push    0                                       ; 0975 _ 6A, 00
        push    144                                     ; 0977 _ 68, 00000090
        push    240                                     ; 097C _ 68, 000000F0
        push    28                                      ; 0981 _ 6A, 1C
        push    8                                       ; 0983 _ 6A, 08
        push    dword [ebp-18H]                         ; 0985 _ FF. 75, E8
        call    make_textbox8                           ; 0988 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 098D _ 83. C4, 20
        call    task_alloc                              ; 0990 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0995 _ 89. 45, F0
        call    get_code32_addr                         ; 0998 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 099D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 09A0 _ 8B. 45, F0
        mov     dword [eax+70H], 0                      ; 09A3 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-10H]                    ; 09AA _ 8B. 45, F0
        mov     dword [eax+74H], 1073741824             ; 09AD _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-0CH]                    ; 09B4 _ 8B. 45, F4
        neg     eax                                     ; 09B7 _ F7. D8
        add     eax, console_task                       ; 09B9 _ 05, 00000000(d)
        mov     edx, eax                                ; 09BE _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 09C0 _ 8B. 45, F0
        mov     dword [eax+30H], edx                    ; 09C3 _ 89. 50, 30
        mov     eax, dword [ebp-10H]                    ; 09C6 _ 8B. 45, F0
        mov     dword [eax+58H], 0                      ; 09C9 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-10H]                    ; 09D0 _ 8B. 45, F0
        mov     dword [eax+5CH], 8                      ; 09D3 _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp-10H]                    ; 09DA _ 8B. 45, F0
        mov     dword [eax+60H], 32                     ; 09DD _ C7. 40, 60, 00000020
        mov     eax, dword [ebp-10H]                    ; 09E4 _ 8B. 45, F0
        mov     dword [eax+64H], 24                     ; 09E7 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp-10H]                    ; 09EE _ 8B. 45, F0
        mov     dword [eax+68H], 0                      ; 09F1 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-10H]                    ; 09F8 _ 8B. 45, F0
        mov     dword [eax+6CH], 16                     ; 09FB _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp-10H]                    ; 0A02 _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0A05 _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 0A08 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0A0B _ 8B. 45, F0
        mov     dword [eax+48H], edx                    ; 0A0E _ 89. 50, 48
        mov     eax, dword [ebp-10H]                    ; 0A11 _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0A14 _ 8B. 40, 48
        add     eax, 4                                  ; 0A17 _ 83. C0, 04
        mov     edx, eax                                ; 0A1A _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0A1C _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0A1F _ 89. 02
        sub     esp, 4                                  ; 0A21 _ 83. EC, 04
        push    5                                       ; 0A24 _ 6A, 05
        push    1                                       ; 0A26 _ 6A, 01
        push    dword [ebp-10H]                         ; 0A28 _ FF. 75, F0
        call    task_run                                ; 0A2B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A30 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0A33 _ A1, 00000224(d)
        push    16                                      ; 0A38 _ 6A, 10
        push    350                                     ; 0A3A _ 68, 0000015E
        push    dword [ebp-18H]                         ; 0A3F _ FF. 75, E8
        push    eax                                     ; 0A42 _ 50
        call    sheet_slide                             ; 0A43 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A48 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0A4B _ A1, 00000224(d)
        sub     esp, 4                                  ; 0A50 _ 83. EC, 04
        push    2                                       ; 0A53 _ 6A, 02
        push    dword [ebp-18H]                         ; 0A55 _ FF. 75, E8
        push    eax                                     ; 0A58 _ 50
        call    sheet_level_updown                      ; 0A59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A5E _ 83. C4, 10
        nop                                             ; 0A61 _ 90
        leave                                           ; 0A62 _ C9
        ret                                             ; 0A63 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0A64 _ 55
        mov     ebp, esp                                ; 0A65 _ 89. E5
        push    ebx                                     ; 0A67 _ 53
        sub     esp, 212                                ; 0A68 _ 81. EC, 000000D4
        mov     eax, dword [ebp+8H]                     ; 0A6E _ 8B. 45, 08
        mov     dword [ebp-0CCH], eax                   ; 0A71 _ 89. 85, FFFFFF34
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0A77 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0A7D _ 89. 45, F4
        xor     eax, eax                                ; 0A80 _ 31. C0
        call    task_now                                ; 0A82 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B8H], eax                   ; 0A87 _ 89. 85, FFFFFF48
        mov     dword [ebp-0B4H], 8                     ; 0A8D _ C7. 85, FFFFFF4C, 00000008
        mov     dword [ebp-0BCH], 0                     ; 0A97 _ C7. 85, FFFFFF44, 00000000
        push    dword [ebp-0B8H]                        ; 0AA1 _ FF. B5, FFFFFF48
        lea     eax, [ebp-8CH]                          ; 0AA7 _ 8D. 85, FFFFFF74
        push    eax                                     ; 0AAD _ 50
        push    128                                     ; 0AAE _ 68, 00000080
        lea     eax, [ebp-0A8H]                         ; 0AB3 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0AB9 _ 50
        call    fifo8_init                              ; 0ABA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ABF _ 83. C4, 10
        call    timer_alloc                             ; 0AC2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B0H], eax                   ; 0AC7 _ 89. 85, FFFFFF50
        sub     esp, 4                                  ; 0ACD _ 83. EC, 04
        push    1                                       ; 0AD0 _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0AD2 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0AD8 _ 50
        push    dword [ebp-0B0H]                        ; 0AD9 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0ADF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AE4 _ 83. C4, 10
        sub     esp, 8                                  ; 0AE7 _ 83. EC, 08
        push    50                                      ; 0AEA _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0AEC _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0AF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AF7 _ 83. C4, 10
        mov     dword [ebp-0ACH], 0                     ; 0AFA _ C7. 85, FFFFFF54, 00000000
?_015:  call    io_cli                                  ; 0B04 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0B09 _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 0B0C _ 8D. 85, FFFFFF58
        push    eax                                     ; 0B12 _ 50
        call    fifo8_status                            ; 0B13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B18 _ 83. C4, 10
        test    eax, eax                                ; 0B1B _ 85. C0
        jnz     ?_016                                   ; 0B1D _ 75, 07
        call    io_sti                                  ; 0B1F _ E8, FFFFFFFC(rel)
        jmp     ?_015                                   ; 0B24 _ EB, DE

?_016:  sub     esp, 12                                 ; 0B26 _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 0B29 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0B2F _ 50
        call    fifo8_get                               ; 0B30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B35 _ 83. C4, 10
        mov     dword [ebp-0ACH], eax                   ; 0B38 _ 89. 85, FFFFFF54
        call    io_sti                                  ; 0B3E _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-0ACH], 1                     ; 0B43 _ 83. BD, FFFFFF54, 01
        jg      ?_015                                   ; 0B4A _ 7F, B8
        cmp     dword [ebp-0ACH], 1                     ; 0B4C _ 83. BD, FFFFFF54, 01
        jnz     ?_017                                   ; 0B53 _ 75, 26
        sub     esp, 4                                  ; 0B55 _ 83. EC, 04
        push    0                                       ; 0B58 _ 6A, 00
        lea     eax, [ebp-0A8H]                         ; 0B5A _ 8D. 85, FFFFFF58
        push    eax                                     ; 0B60 _ 50
        push    dword [ebp-0B0H]                        ; 0B61 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0B67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B6C _ 83. C4, 10
        mov     dword [ebp-0BCH], 7                     ; 0B6F _ C7. 85, FFFFFF44, 00000007
        jmp     ?_018                                   ; 0B79 _ EB, 2D

?_017:  cmp     dword [ebp-0ACH], 0                     ; 0B7B _ 83. BD, FFFFFF54, 00
        jnz     ?_018                                   ; 0B82 _ 75, 24
        sub     esp, 4                                  ; 0B84 _ 83. EC, 04
        push    1                                       ; 0B87 _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0B89 _ 8D. 85, FFFFFF58
        push    eax                                     ; 0B8F _ 50
        push    dword [ebp-0B0H]                        ; 0B90 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0B96 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B9B _ 83. C4, 10
        mov     dword [ebp-0BCH], 0                     ; 0B9E _ C7. 85, FFFFFF44, 00000000
?_018:  sub     esp, 8                                  ; 0BA8 _ 83. EC, 08
        push    50                                      ; 0BAB _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0BAD _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0BB3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BB8 _ 83. C4, 10
        mov     eax, dword [ebp-0B4H]                   ; 0BBB _ 8B. 85, FFFFFF4C
        lea     ebx, [eax+6H]                           ; 0BC1 _ 8D. 58, 06
        mov     eax, dword [ebp-0BCH]                   ; 0BC4 _ 8B. 85, FFFFFF44
        movzx   ecx, al                                 ; 0BCA _ 0F B6. C8
        mov     eax, dword [ebp-0CCH]                   ; 0BCD _ 8B. 85, FFFFFF34
        mov     edx, dword [eax+4H]                     ; 0BD3 _ 8B. 50, 04
        mov     eax, dword [ebp-0CCH]                   ; 0BD6 _ 8B. 85, FFFFFF34
        mov     eax, dword [eax]                        ; 0BDC _ 8B. 00
        sub     esp, 4                                  ; 0BDE _ 83. EC, 04
        push    43                                      ; 0BE1 _ 6A, 2B
        push    ebx                                     ; 0BE3 _ 53
        push    28                                      ; 0BE4 _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0BE6 _ FF. B5, FFFFFF4C
        push    ecx                                     ; 0BEC _ 51
        push    edx                                     ; 0BED _ 52
        push    eax                                     ; 0BEE _ 50
        call    boxfill8                                ; 0BEF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BF4 _ 83. C4, 20
        mov     eax, dword [ebp-0B4H]                   ; 0BF7 _ 8B. 85, FFFFFF4C
        lea     edx, [eax+8H]                           ; 0BFD _ 8D. 50, 08
        mov     eax, dword [shtctl]                     ; 0C00 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0C05 _ 83. EC, 08
        push    44                                      ; 0C08 _ 6A, 2C
        push    edx                                     ; 0C0A _ 52
        push    28                                      ; 0C0B _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0C0D _ FF. B5, FFFFFF4C
        push    dword [ebp-0CCH]                        ; 0C13 _ FF. B5, FFFFFF34
        push    eax                                     ; 0C19 _ 50
        call    sheet_refresh                           ; 0C1A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C1F _ 83. C4, 20
        jmp     ?_015                                   ; 0C22 _ E9, FFFFFEDD
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 0C27 _ 55
        mov     ebp, esp                                ; 0C28 _ 89. E5
        sub     esp, 88                                 ; 0C2A _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 0C2D _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 0C30 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0C33 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0C39 _ 89. 45, F4
        xor     eax, eax                                ; 0C3C _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0C3E _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C44 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0C49 _ 83. EC, 08
        push    ?_208                                   ; 0C4C _ 68, 00000030(d)
        push    7                                       ; 0C51 _ 6A, 07
        push    144                                     ; 0C53 _ 68, 00000090
        push    0                                       ; 0C58 _ 6A, 00
        push    edx                                     ; 0C5A _ 52
        push    eax                                     ; 0C5B _ 50
        call    showString                              ; 0C5C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C61 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 0C64 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0C6B _ C7. 45, C8, 00000000
        push    0                                       ; 0C72 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0C74 _ 8D. 45, EC
        push    eax                                     ; 0C77 _ 50
        push    8                                       ; 0C78 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0C7A _ 8D. 45, D0
        push    eax                                     ; 0C7D _ 50
        call    fifo8_init                              ; 0C7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C83 _ 83. C4, 10
        call    timer_alloc                             ; 0C86 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0C8B _ 89. 45, C4
        sub     esp, 4                                  ; 0C8E _ 83. EC, 04
        push    123                                     ; 0C91 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0C93 _ 8D. 45, D0
        push    eax                                     ; 0C96 _ 50
        push    dword [ebp-3CH]                         ; 0C97 _ FF. 75, C4
        call    timer_init                              ; 0C9A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C9F _ 83. C4, 10
        sub     esp, 8                                  ; 0CA2 _ 83. EC, 08
        push    100                                     ; 0CA5 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0CA7 _ FF. 75, C4
        call    timer_setTime                           ; 0CAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAF _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 0CB2 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 0CB9 _ C7. 45, C0, 00000000
?_019:  add     dword [ebp-40H], 1                      ; 0CC0 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 0CC4 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 0CC7 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 0CCA _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 0CCD _ 8B. 00
        sub     esp, 4                                  ; 0CCF _ 83. EC, 04
        push    38                                      ; 0CD2 _ 6A, 26
        push    100                                     ; 0CD4 _ 6A, 64
        push    23                                      ; 0CD6 _ 6A, 17
        push    8                                       ; 0CD8 _ 6A, 08
        push    8                                       ; 0CDA _ 6A, 08
        push    edx                                     ; 0CDC _ 52
        push    eax                                     ; 0CDD _ 50
        call    boxfill8                                ; 0CDE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CE3 _ 83. C4, 20
        sub     esp, 12                                 ; 0CE6 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 0CE9 _ FF. 75, C0
        call    intToHexStr                             ; 0CEC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CF1 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0CF4 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 0CF7 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0CFC _ 83. EC, 08
        push    dword [ebp-34H]                         ; 0CFF _ FF. 75, CC
        push    10                                      ; 0D02 _ 6A, 0A
        push    23                                      ; 0D04 _ 6A, 17
        push    8                                       ; 0D06 _ 6A, 08
        push    dword [ebp-4CH]                         ; 0D08 _ FF. 75, B4
        push    eax                                     ; 0D0B _ 50
        call    showString                              ; 0D0C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D11 _ 83. C4, 20
        call    io_cli                                  ; 0D14 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D19 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0D1C _ 8D. 45, D0
        push    eax                                     ; 0D1F _ 50
        call    fifo8_status                            ; 0D20 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D25 _ 83. C4, 10
        test    eax, eax                                ; 0D28 _ 85. C0
        jnz     ?_020                                   ; 0D2A _ 75, 07
        call    io_sti                                  ; 0D2C _ E8, FFFFFFFC(rel)
        jmp     ?_019                                   ; 0D31 _ EB, 8D

?_020:  sub     esp, 12                                 ; 0D33 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0D36 _ 8D. 45, D0
        push    eax                                     ; 0D39 _ 50
        call    fifo8_get                               ; 0D3A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3F _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0D42 _ 89. 45, C8
        call    io_sti                                  ; 0D45 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 0D4A _ 83. 7D, C8, 7B
        jne     ?_019                                   ; 0D4E _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 0D54 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0D5A _ A1, 00000224(d)
        sub     esp, 8                                  ; 0D5F _ 83. EC, 08
        push    ?_209                                   ; 0D62 _ 68, 0000003D(d)
        push    7                                       ; 0D67 _ 6A, 07
        push    176                                     ; 0D69 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 0D6E _ FF. 75, BC
        push    edx                                     ; 0D71 _ 52
        push    eax                                     ; 0D72 _ 50
        call    showString                              ; 0D73 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D78 _ 83. C4, 20
        sub     esp, 8                                  ; 0D7B _ 83. EC, 08
        push    100                                     ; 0D7E _ 6A, 64
        push    dword [ebp-3CH]                         ; 0D80 _ FF. 75, C4
        call    timer_setTime                           ; 0D83 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D88 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 0D8B _ 83. 45, BC, 08
        jmp     ?_019                                   ; 0D8F _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0D94 _ 55
        mov     ebp, esp                                ; 0D95 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D97 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0D9A _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0DA0 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0DA3 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0DA9 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0DAC _ 66: C7. 40, 06, 01E0
        nop                                             ; 0DB2 _ 90
        pop     ebp                                     ; 0DB3 _ 5D
        ret                                             ; 0DB4 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0DB5 _ 55
        mov     ebp, esp                                ; 0DB6 _ 89. E5
        push    ebx                                     ; 0DB8 _ 53
        sub     esp, 36                                 ; 0DB9 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0DBC _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0DBF _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0DC2 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0DC5 _ 89. 45, F4
        jmp     ?_022                                   ; 0DC8 _ EB, 3E

?_021:  mov     eax, dword [ebp+1CH]                    ; 0DCA _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0DCD _ 0F B6. 00
        movzx   eax, al                                 ; 0DD0 _ 0F B6. C0
        shl     eax, 4                                  ; 0DD3 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0DD6 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0DDC _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0DE0 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0DE3 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0DE6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0DE9 _ 8B. 00
        sub     esp, 8                                  ; 0DEB _ 83. EC, 08
        push    ebx                                     ; 0DEE _ 53
        push    ecx                                     ; 0DEF _ 51
        push    dword [ebp+14H]                         ; 0DF0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0DF3 _ FF. 75, 10
        push    edx                                     ; 0DF6 _ 52
        push    eax                                     ; 0DF7 _ 50
        call    showFont8                               ; 0DF8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DFD _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0E00 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0E04 _ 83. 45, 1C, 01
?_022:  mov     eax, dword [ebp+1CH]                    ; 0E08 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0E0B _ 0F B6. 00
        test    al, al                                  ; 0E0E _ 84. C0
        jnz     ?_021                                   ; 0E10 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0E12 _ 8B. 45, 14
        add     eax, 16                                 ; 0E15 _ 83. C0, 10
        sub     esp, 8                                  ; 0E18 _ 83. EC, 08
        push    eax                                     ; 0E1B _ 50
        push    dword [ebp+10H]                         ; 0E1C _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0E1F _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0E22 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0E25 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E28 _ FF. 75, 08
        call    sheet_refresh                           ; 0E2B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E30 _ 83. C4, 20
        nop                                             ; 0E33 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0E34 _ 8B. 5D, FC
        leave                                           ; 0E37 _ C9
        ret                                             ; 0E38 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0E39 _ 55
        mov     ebp, esp                                ; 0E3A _ 89. E5
        push    ebx                                     ; 0E3C _ 53
        sub     esp, 4                                  ; 0E3D _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0E40 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0E43 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0E46 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0E49 _ 83. E8, 01
        sub     esp, 4                                  ; 0E4C _ 83. EC, 04
        push    edx                                     ; 0E4F _ 52
        push    eax                                     ; 0E50 _ 50
        push    0                                       ; 0E51 _ 6A, 00
        push    0                                       ; 0E53 _ 6A, 00
        push    14                                      ; 0E55 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0E57 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E5A _ FF. 75, 08
        call    boxfill8                                ; 0E5D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E62 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E65 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0E68 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0E6B _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0E6E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0E71 _ 8B. 45, 10
        sub     eax, 24                                 ; 0E74 _ 83. E8, 18
        sub     esp, 4                                  ; 0E77 _ 83. EC, 04
        push    ecx                                     ; 0E7A _ 51
        push    edx                                     ; 0E7B _ 52
        push    eax                                     ; 0E7C _ 50
        push    0                                       ; 0E7D _ 6A, 00
        push    8                                       ; 0E7F _ 6A, 08
        push    dword [ebp+0CH]                         ; 0E81 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E84 _ FF. 75, 08
        call    boxfill8                                ; 0E87 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E8C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E8F _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0E92 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0E95 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0E98 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0E9B _ 8B. 45, 10
        sub     eax, 23                                 ; 0E9E _ 83. E8, 17
        sub     esp, 4                                  ; 0EA1 _ 83. EC, 04
        push    ecx                                     ; 0EA4 _ 51
        push    edx                                     ; 0EA5 _ 52
        push    eax                                     ; 0EA6 _ 50
        push    0                                       ; 0EA7 _ 6A, 00
        push    7                                       ; 0EA9 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0EAB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EAE _ FF. 75, 08
        call    boxfill8                                ; 0EB1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EB6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EB9 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0EBC _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0EBF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0EC2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0EC5 _ 8B. 45, 10
        sub     eax, 22                                 ; 0EC8 _ 83. E8, 16
        sub     esp, 4                                  ; 0ECB _ 83. EC, 04
        push    ecx                                     ; 0ECE _ 51
        push    edx                                     ; 0ECF _ 52
        push    eax                                     ; 0ED0 _ 50
        push    0                                       ; 0ED1 _ 6A, 00
        push    8                                       ; 0ED3 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0ED5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0ED8 _ FF. 75, 08
        call    boxfill8                                ; 0EDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EE0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EE3 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0EE6 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0EE9 _ 8B. 45, 10
        sub     eax, 20                                 ; 0EEC _ 83. E8, 14
        sub     esp, 4                                  ; 0EEF _ 83. EC, 04
        push    edx                                     ; 0EF2 _ 52
        push    51                                      ; 0EF3 _ 6A, 33
        push    eax                                     ; 0EF5 _ 50
        push    10                                      ; 0EF6 _ 6A, 0A
        push    7                                       ; 0EF8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0EFA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EFD _ FF. 75, 08
        call    boxfill8                                ; 0F00 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F05 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F08 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0F0B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0F0E _ 8B. 45, 10
        sub     eax, 20                                 ; 0F11 _ 83. E8, 14
        sub     esp, 4                                  ; 0F14 _ 83. EC, 04
        push    edx                                     ; 0F17 _ 52
        push    9                                       ; 0F18 _ 6A, 09
        push    eax                                     ; 0F1A _ 50
        push    9                                       ; 0F1B _ 6A, 09
        push    7                                       ; 0F1D _ 6A, 07
        push    dword [ebp+0CH]                         ; 0F1F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F22 _ FF. 75, 08
        call    boxfill8                                ; 0F25 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F2A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F2D _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0F30 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0F33 _ 8B. 45, 10
        sub     eax, 4                                  ; 0F36 _ 83. E8, 04
        sub     esp, 4                                  ; 0F39 _ 83. EC, 04
        push    edx                                     ; 0F3C _ 52
        push    50                                      ; 0F3D _ 6A, 32
        push    eax                                     ; 0F3F _ 50
        push    10                                      ; 0F40 _ 6A, 0A
        push    15                                      ; 0F42 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0F44 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F47 _ FF. 75, 08
        call    boxfill8                                ; 0F4A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F4F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F52 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0F55 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0F58 _ 8B. 45, 10
        sub     eax, 19                                 ; 0F5B _ 83. E8, 13
        sub     esp, 4                                  ; 0F5E _ 83. EC, 04
        push    edx                                     ; 0F61 _ 52
        push    50                                      ; 0F62 _ 6A, 32
        push    eax                                     ; 0F64 _ 50
        push    50                                      ; 0F65 _ 6A, 32
        push    15                                      ; 0F67 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0F69 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F6C _ FF. 75, 08
        call    boxfill8                                ; 0F6F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F74 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F77 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F7A _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0F7D _ 8B. 45, 10
        sub     eax, 3                                  ; 0F80 _ 83. E8, 03
        sub     esp, 4                                  ; 0F83 _ 83. EC, 04
        push    edx                                     ; 0F86 _ 52
        push    50                                      ; 0F87 _ 6A, 32
        push    eax                                     ; 0F89 _ 50
        push    10                                      ; 0F8A _ 6A, 0A
        push    0                                       ; 0F8C _ 6A, 00
        push    dword [ebp+0CH]                         ; 0F8E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F91 _ FF. 75, 08
        call    boxfill8                                ; 0F94 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F99 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F9C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F9F _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0FA2 _ 8B. 45, 10
        sub     eax, 20                                 ; 0FA5 _ 83. E8, 14
        sub     esp, 4                                  ; 0FA8 _ 83. EC, 04
        push    edx                                     ; 0FAB _ 52
        push    51                                      ; 0FAC _ 6A, 33
        push    eax                                     ; 0FAE _ 50
        push    51                                      ; 0FAF _ 6A, 33
        push    0                                       ; 0FB1 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0FB3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FB6 _ FF. 75, 08
        call    boxfill8                                ; 0FB9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FBE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FC1 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0FC4 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0FC7 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0FCA _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0FCD _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FD0 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0FD3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0FD6 _ 83. E8, 2F
        sub     esp, 4                                  ; 0FD9 _ 83. EC, 04
        push    ebx                                     ; 0FDC _ 53
        push    ecx                                     ; 0FDD _ 51
        push    edx                                     ; 0FDE _ 52
        push    eax                                     ; 0FDF _ 50
        push    15                                      ; 0FE0 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0FE2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FE5 _ FF. 75, 08
        call    boxfill8                                ; 0FE8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FED _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FF0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FF3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FF6 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0FF9 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0FFC _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FFF _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1002 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1005 _ 83. E8, 2F
        sub     esp, 4                                  ; 1008 _ 83. EC, 04
        push    ebx                                     ; 100B _ 53
        push    ecx                                     ; 100C _ 51
        push    edx                                     ; 100D _ 52
        push    eax                                     ; 100E _ 50
        push    15                                      ; 100F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1011 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1014 _ FF. 75, 08
        call    boxfill8                                ; 1017 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 101C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 101F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1022 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1025 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1028 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 102B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 102E _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1031 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1034 _ 83. E8, 2F
        sub     esp, 4                                  ; 1037 _ 83. EC, 04
        push    ebx                                     ; 103A _ 53
        push    ecx                                     ; 103B _ 51
        push    edx                                     ; 103C _ 52
        push    eax                                     ; 103D _ 50
        push    7                                       ; 103E _ 6A, 07
        push    dword [ebp+0CH]                         ; 1040 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1043 _ FF. 75, 08
        call    boxfill8                                ; 1046 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 104B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 104E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1051 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1054 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1057 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 105A _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 105D _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1060 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1063 _ 83. E8, 03
        sub     esp, 4                                  ; 1066 _ 83. EC, 04
        push    ebx                                     ; 1069 _ 53
        push    ecx                                     ; 106A _ 51
        push    edx                                     ; 106B _ 52
        push    eax                                     ; 106C _ 50
        push    7                                       ; 106D _ 6A, 07
        push    dword [ebp+0CH]                         ; 106F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1072 _ FF. 75, 08
        call    boxfill8                                ; 1075 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 107A _ 83. C4, 20
        nop                                             ; 107D _ 90
        mov     ebx, dword [ebp-4H]                     ; 107E _ 8B. 5D, FC
        leave                                           ; 1081 _ C9
        ret                                             ; 1082 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1083 _ 55
        mov     ebp, esp                                ; 1084 _ 89. E5
        sub     esp, 24                                 ; 1086 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1089 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 108E _ 89. 45, EC
        movzx   eax, word [?_218]                       ; 1091 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1098 _ 98
        mov     dword [ebp-10H], eax                    ; 1099 _ 89. 45, F0
        movzx   eax, word [?_219]                       ; 109C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 10A3 _ 98
        mov     dword [ebp-0CH], eax                    ; 10A4 _ 89. 45, F4
        sub     esp, 4                                  ; 10A7 _ 83. EC, 04
        push    table_rgb.2338                          ; 10AA _ 68, 00000080(d)
        push    15                                      ; 10AF _ 6A, 0F
        push    0                                       ; 10B1 _ 6A, 00
        call    set_palette                             ; 10B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B8 _ 83. C4, 10
        nop                                             ; 10BB _ 90
        leave                                           ; 10BC _ C9
        ret                                             ; 10BD _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 10BE _ 55
        mov     ebp, esp                                ; 10BF _ 89. E5
        sub     esp, 24                                 ; 10C1 _ 83. EC, 18
        call    io_load_eflags                          ; 10C4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 10C9 _ 89. 45, F4
        call    io_cli                                  ; 10CC _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 10D1 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 10D4 _ FF. 75, 08
        push    968                                     ; 10D7 _ 68, 000003C8
        call    io_out8                                 ; 10DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10E1 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 10E4 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 10E7 _ 89. 45, F0
        jmp     ?_024                                   ; 10EA _ EB, 65

?_023:  mov     eax, dword [ebp+10H]                    ; 10EC _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 10EF _ 0F B6. 00
        shr     al, 2                                   ; 10F2 _ C0. E8, 02
        movzx   eax, al                                 ; 10F5 _ 0F B6. C0
        sub     esp, 8                                  ; 10F8 _ 83. EC, 08
        push    eax                                     ; 10FB _ 50
        push    969                                     ; 10FC _ 68, 000003C9
        call    io_out8                                 ; 1101 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1106 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1109 _ 8B. 45, 10
        add     eax, 1                                  ; 110C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 110F _ 0F B6. 00
        shr     al, 2                                   ; 1112 _ C0. E8, 02
        movzx   eax, al                                 ; 1115 _ 0F B6. C0
        sub     esp, 8                                  ; 1118 _ 83. EC, 08
        push    eax                                     ; 111B _ 50
        push    969                                     ; 111C _ 68, 000003C9
        call    io_out8                                 ; 1121 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1126 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1129 _ 8B. 45, 10
        add     eax, 2                                  ; 112C _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 112F _ 0F B6. 00
        shr     al, 2                                   ; 1132 _ C0. E8, 02
        movzx   eax, al                                 ; 1135 _ 0F B6. C0
        sub     esp, 8                                  ; 1138 _ 83. EC, 08
        push    eax                                     ; 113B _ 50
        push    969                                     ; 113C _ 68, 000003C9
        call    io_out8                                 ; 1141 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1146 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1149 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 114D _ 83. 45, F0, 01
?_024:  mov     eax, dword [ebp-10H]                    ; 1151 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1154 _ 3B. 45, 0C
        jle     ?_023                                   ; 1157 _ 7E, 93
        sub     esp, 12                                 ; 1159 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 115C _ FF. 75, F4
        call    io_store_eflags                         ; 115F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1164 _ 83. C4, 10
        nop                                             ; 1167 _ 90
        leave                                           ; 1168 _ C9
        ret                                             ; 1169 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 116A _ 55
        mov     ebp, esp                                ; 116B _ 89. E5
        sub     esp, 20                                 ; 116D _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1170 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1173 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1176 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1179 _ 89. 45, FC
        jmp     ?_028                                   ; 117C _ EB, 33

?_025:  mov     eax, dword [ebp+14H]                    ; 117E _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1181 _ 89. 45, F8
        jmp     ?_027                                   ; 1184 _ EB, 1F

?_026:  mov     eax, dword [ebp-4H]                     ; 1186 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1189 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 118D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 118F _ 8B. 45, F8
        add     eax, edx                                ; 1192 _ 01. D0
        mov     edx, eax                                ; 1194 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1196 _ 8B. 45, 08
        add     edx, eax                                ; 1199 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 119B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 119F _ 88. 02
        add     dword [ebp-8H], 1                       ; 11A1 _ 83. 45, F8, 01
?_027:  mov     eax, dword [ebp-8H]                     ; 11A5 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 11A8 _ 3B. 45, 1C
        jle     ?_026                                   ; 11AB _ 7E, D9
        add     dword [ebp-4H], 1                       ; 11AD _ 83. 45, FC, 01
?_028:  mov     eax, dword [ebp-4H]                     ; 11B1 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 11B4 _ 3B. 45, 20
        jle     ?_025                                   ; 11B7 _ 7E, C5
        nop                                             ; 11B9 _ 90
        leave                                           ; 11BA _ C9
        ret                                             ; 11BB _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 11BC _ 55
        mov     ebp, esp                                ; 11BD _ 89. E5
        push    edi                                     ; 11BF _ 57
        push    esi                                     ; 11C0 _ 56
        push    ebx                                     ; 11C1 _ 53
        sub     esp, 16                                 ; 11C2 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 11C5 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 11C8 _ 8B. 45, 14
        add     eax, edx                                ; 11CB _ 01. D0
        mov     dword [ebp-14H], eax                    ; 11CD _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 11D0 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 11D3 _ 8B. 45, 18
        add     eax, edx                                ; 11D6 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 11D8 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 11DB _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 11DE _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 11E1 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 11E4 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 11E7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 11EA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 11ED _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 11F0 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 11F3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 11F6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11F9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 11FC _ 8B. 00
        push    edi                                     ; 11FE _ 57
        push    esi                                     ; 11FF _ 56
        push    ebx                                     ; 1200 _ 53
        push    ecx                                     ; 1201 _ 51
        push    15                                      ; 1202 _ 6A, 0F
        push    edx                                     ; 1204 _ 52
        push    eax                                     ; 1205 _ 50
        call    boxfill8                                ; 1206 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 120B _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 120E _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1211 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1214 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1217 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 121A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 121D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1220 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1223 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1226 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1229 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 122C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 122F _ 8B. 00
        push    edi                                     ; 1231 _ 57
        push    esi                                     ; 1232 _ 56
        push    ebx                                     ; 1233 _ 53
        push    ecx                                     ; 1234 _ 51
        push    15                                      ; 1235 _ 6A, 0F
        push    edx                                     ; 1237 _ 52
        push    eax                                     ; 1238 _ 50
        call    boxfill8                                ; 1239 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 123E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1241 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1244 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1247 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 124A _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 124D _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1250 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1253 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1256 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1259 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 125C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 125F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1262 _ 8B. 00
        push    edi                                     ; 1264 _ 57
        push    esi                                     ; 1265 _ 56
        push    ebx                                     ; 1266 _ 53
        push    ecx                                     ; 1267 _ 51
        push    7                                       ; 1268 _ 6A, 07
        push    edx                                     ; 126A _ 52
        push    eax                                     ; 126B _ 50
        call    boxfill8                                ; 126C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1271 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1274 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1277 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 127A _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 127D _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1280 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1283 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1286 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1289 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 128C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 128F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1292 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1295 _ 8B. 00
        push    edi                                     ; 1297 _ 57
        push    esi                                     ; 1298 _ 56
        push    ebx                                     ; 1299 _ 53
        push    ecx                                     ; 129A _ 51
        push    7                                       ; 129B _ 6A, 07
        push    edx                                     ; 129D _ 52
        push    eax                                     ; 129E _ 50
        call    boxfill8                                ; 129F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12A4 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 12A7 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 12AA _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 12AD _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 12B0 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 12B3 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 12B6 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 12B9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12BC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12BF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12C2 _ 8B. 00
        push    esi                                     ; 12C4 _ 56
        push    dword [ebp-14H]                         ; 12C5 _ FF. 75, EC
        push    ebx                                     ; 12C8 _ 53
        push    ecx                                     ; 12C9 _ 51
        push    0                                       ; 12CA _ 6A, 00
        push    edx                                     ; 12CC _ 52
        push    eax                                     ; 12CD _ 50
        call    boxfill8                                ; 12CE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12D3 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 12D6 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 12D9 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 12DC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 12DF _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 12E2 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 12E5 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 12E8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12EB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12EE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12F1 _ 8B. 00
        push    dword [ebp-10H]                         ; 12F3 _ FF. 75, F0
        push    esi                                     ; 12F6 _ 56
        push    ebx                                     ; 12F7 _ 53
        push    ecx                                     ; 12F8 _ 51
        push    0                                       ; 12F9 _ 6A, 00
        push    edx                                     ; 12FB _ 52
        push    eax                                     ; 12FC _ 50
        call    boxfill8                                ; 12FD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1302 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1305 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1308 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 130B _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 130E _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1311 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1314 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1317 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 131A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 131D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1320 _ 8B. 00
        push    esi                                     ; 1322 _ 56
        push    dword [ebp-14H]                         ; 1323 _ FF. 75, EC
        push    ebx                                     ; 1326 _ 53
        push    ecx                                     ; 1327 _ 51
        push    8                                       ; 1328 _ 6A, 08
        push    edx                                     ; 132A _ 52
        push    eax                                     ; 132B _ 50
        call    boxfill8                                ; 132C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1331 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1334 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1337 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 133A _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 133D _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1340 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1343 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1346 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1349 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 134C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 134F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1352 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1355 _ 8B. 00
        push    edi                                     ; 1357 _ 57
        push    esi                                     ; 1358 _ 56
        push    ebx                                     ; 1359 _ 53
        push    ecx                                     ; 135A _ 51
        push    8                                       ; 135B _ 6A, 08
        push    edx                                     ; 135D _ 52
        push    eax                                     ; 135E _ 50
        call    boxfill8                                ; 135F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1364 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1367 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 136A _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 136D _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1370 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1373 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1376 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1379 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 137C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 137F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1382 _ 8B. 00
        push    dword [ebp-10H]                         ; 1384 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1387 _ FF. 75, EC
        push    esi                                     ; 138A _ 56
        push    ebx                                     ; 138B _ 53
        push    ecx                                     ; 138C _ 51
        push    edx                                     ; 138D _ 52
        push    eax                                     ; 138E _ 50
        call    boxfill8                                ; 138F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1394 _ 83. C4, 1C
        nop                                             ; 1397 _ 90
        lea     esp, [ebp-0CH]                          ; 1398 _ 8D. 65, F4
        pop     ebx                                     ; 139B _ 5B
        pop     esi                                     ; 139C _ 5E
        pop     edi                                     ; 139D _ 5F
        pop     ebp                                     ; 139E _ 5D
        ret                                             ; 139F _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 13A0 _ 55
        mov     ebp, esp                                ; 13A1 _ 89. E5
        sub     esp, 20                                 ; 13A3 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 13A6 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 13A9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 13AC _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 13B3 _ E9, 0000016C

?_029:  mov     edx, dword [ebp-4H]                     ; 13B8 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 13BB _ 8B. 45, 1C
        add     eax, edx                                ; 13BE _ 01. D0
        movzx   eax, byte [eax]                         ; 13C0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 13C3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 13C6 _ 80. 7D, FB, 00
        jns     ?_030                                   ; 13CA _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 13CC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13CF _ 8B. 45, FC
        add     eax, edx                                ; 13D2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13D4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 13D8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 13DA _ 8B. 45, 10
        add     eax, edx                                ; 13DD _ 01. D0
        mov     edx, eax                                ; 13DF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13E1 _ 8B. 45, 08
        add     edx, eax                                ; 13E4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13E6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13EA _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 13EC _ 0F BE. 45, FB
        and     eax, 40H                                ; 13F0 _ 83. E0, 40
        test    eax, eax                                ; 13F3 _ 85. C0
        jz      ?_031                                   ; 13F5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 13F7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13FA _ 8B. 45, FC
        add     eax, edx                                ; 13FD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13FF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1403 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1405 _ 8B. 45, 10
        add     eax, edx                                ; 1408 _ 01. D0
        lea     edx, [eax+1H]                           ; 140A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 140D _ 8B. 45, 08
        add     edx, eax                                ; 1410 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1412 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1416 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1418 _ 0F BE. 45, FB
        and     eax, 20H                                ; 141C _ 83. E0, 20
        test    eax, eax                                ; 141F _ 85. C0
        jz      ?_032                                   ; 1421 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1423 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1426 _ 8B. 45, FC
        add     eax, edx                                ; 1429 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 142B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 142F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1431 _ 8B. 45, 10
        add     eax, edx                                ; 1434 _ 01. D0
        lea     edx, [eax+2H]                           ; 1436 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1439 _ 8B. 45, 08
        add     edx, eax                                ; 143C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 143E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1442 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1444 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1448 _ 83. E0, 10
        test    eax, eax                                ; 144B _ 85. C0
        jz      ?_033                                   ; 144D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 144F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1452 _ 8B. 45, FC
        add     eax, edx                                ; 1455 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1457 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 145B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 145D _ 8B. 45, 10
        add     eax, edx                                ; 1460 _ 01. D0
        lea     edx, [eax+3H]                           ; 1462 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1465 _ 8B. 45, 08
        add     edx, eax                                ; 1468 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 146A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 146E _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 1470 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1474 _ 83. E0, 08
        test    eax, eax                                ; 1477 _ 85. C0
        jz      ?_034                                   ; 1479 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 147B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 147E _ 8B. 45, FC
        add     eax, edx                                ; 1481 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1483 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1487 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1489 _ 8B. 45, 10
        add     eax, edx                                ; 148C _ 01. D0
        lea     edx, [eax+4H]                           ; 148E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1491 _ 8B. 45, 08
        add     edx, eax                                ; 1494 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1496 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 149A _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 149C _ 0F BE. 45, FB
        and     eax, 04H                                ; 14A0 _ 83. E0, 04
        test    eax, eax                                ; 14A3 _ 85. C0
        jz      ?_035                                   ; 14A5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14A7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14AA _ 8B. 45, FC
        add     eax, edx                                ; 14AD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14AF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14B3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14B5 _ 8B. 45, 10
        add     eax, edx                                ; 14B8 _ 01. D0
        lea     edx, [eax+5H]                           ; 14BA _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 14BD _ 8B. 45, 08
        add     edx, eax                                ; 14C0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14C2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14C6 _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 14C8 _ 0F BE. 45, FB
        and     eax, 02H                                ; 14CC _ 83. E0, 02
        test    eax, eax                                ; 14CF _ 85. C0
        jz      ?_036                                   ; 14D1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14D3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14D6 _ 8B. 45, FC
        add     eax, edx                                ; 14D9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14DB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14DF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14E1 _ 8B. 45, 10
        add     eax, edx                                ; 14E4 _ 01. D0
        lea     edx, [eax+6H]                           ; 14E6 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 14E9 _ 8B. 45, 08
        add     edx, eax                                ; 14EC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14EE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14F2 _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 14F4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 14F8 _ 83. E0, 01
        test    eax, eax                                ; 14FB _ 85. C0
        jz      ?_037                                   ; 14FD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14FF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1502 _ 8B. 45, FC
        add     eax, edx                                ; 1505 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1507 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 150B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 150D _ 8B. 45, 10
        add     eax, edx                                ; 1510 _ 01. D0
        lea     edx, [eax+7H]                           ; 1512 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1515 _ 8B. 45, 08
        add     edx, eax                                ; 1518 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 151A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 151E _ 88. 02
?_037:  add     dword [ebp-4H], 1                       ; 1520 _ 83. 45, FC, 01
?_038:  cmp     dword [ebp-4H], 15                      ; 1524 _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 1528 _ 0F 8E, FFFFFE8A
        nop                                             ; 152E _ 90
        leave                                           ; 152F _ C9
        ret                                             ; 1530 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1531 _ 55
        mov     ebp, esp                                ; 1532 _ 89. E5
        sub     esp, 20                                 ; 1534 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1537 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 153A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 153D _ C7. 45, FC, 00000000
        jmp     ?_045                                   ; 1544 _ E9, 000000B1

?_039:  mov     dword [ebp-8H], 0                       ; 1549 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 1550 _ E9, 00000097

?_040:  mov     eax, dword [ebp-4H]                     ; 1555 _ 8B. 45, FC
        shl     eax, 4                                  ; 1558 _ C1. E0, 04
        mov     edx, eax                                ; 155B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 155D _ 8B. 45, F8
        add     eax, edx                                ; 1560 _ 01. D0
        add     eax, cursor.2393                        ; 1562 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1567 _ 0F B6. 00
        cmp     al, 42                                  ; 156A _ 3C, 2A
        jnz     ?_041                                   ; 156C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 156E _ 8B. 45, FC
        shl     eax, 4                                  ; 1571 _ C1. E0, 04
        mov     edx, eax                                ; 1574 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1576 _ 8B. 45, F8
        add     eax, edx                                ; 1579 _ 01. D0
        mov     edx, eax                                ; 157B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 157D _ 8B. 45, 08
        add     eax, edx                                ; 1580 _ 01. D0
        mov     byte [eax], 0                           ; 1582 _ C6. 00, 00
?_041:  mov     eax, dword [ebp-4H]                     ; 1585 _ 8B. 45, FC
        shl     eax, 4                                  ; 1588 _ C1. E0, 04
        mov     edx, eax                                ; 158B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 158D _ 8B. 45, F8
        add     eax, edx                                ; 1590 _ 01. D0
        add     eax, cursor.2393                        ; 1592 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1597 _ 0F B6. 00
        cmp     al, 79                                  ; 159A _ 3C, 4F
        jnz     ?_042                                   ; 159C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 159E _ 8B. 45, FC
        shl     eax, 4                                  ; 15A1 _ C1. E0, 04
        mov     edx, eax                                ; 15A4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15A6 _ 8B. 45, F8
        add     eax, edx                                ; 15A9 _ 01. D0
        mov     edx, eax                                ; 15AB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15AD _ 8B. 45, 08
        add     eax, edx                                ; 15B0 _ 01. D0
        mov     byte [eax], 7                           ; 15B2 _ C6. 00, 07
?_042:  mov     eax, dword [ebp-4H]                     ; 15B5 _ 8B. 45, FC
        shl     eax, 4                                  ; 15B8 _ C1. E0, 04
        mov     edx, eax                                ; 15BB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15BD _ 8B. 45, F8
        add     eax, edx                                ; 15C0 _ 01. D0
        add     eax, cursor.2393                        ; 15C2 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 15C7 _ 0F B6. 00
        cmp     al, 46                                  ; 15CA _ 3C, 2E
        jnz     ?_043                                   ; 15CC _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 15CE _ 8B. 45, FC
        shl     eax, 4                                  ; 15D1 _ C1. E0, 04
        mov     edx, eax                                ; 15D4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15D6 _ 8B. 45, F8
        add     eax, edx                                ; 15D9 _ 01. D0
        mov     edx, eax                                ; 15DB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15DD _ 8B. 45, 08
        add     edx, eax                                ; 15E0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15E2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15E6 _ 88. 02
?_043:  add     dword [ebp-8H], 1                       ; 15E8 _ 83. 45, F8, 01
?_044:  cmp     dword [ebp-8H], 15                      ; 15EC _ 83. 7D, F8, 0F
        jle     ?_040                                   ; 15F0 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 15F6 _ 83. 45, FC, 01
?_045:  cmp     dword [ebp-4H], 15                      ; 15FA _ 83. 7D, FC, 0F
        jle     ?_039                                   ; 15FE _ 0F 8E, FFFFFF45
        nop                                             ; 1604 _ 90
        leave                                           ; 1605 _ C9
        ret                                             ; 1606 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1607 _ 55
        mov     ebp, esp                                ; 1608 _ 89. E5
        push    ebx                                     ; 160A _ 53
        sub     esp, 16                                 ; 160B _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 160E _ C7. 45, F8, 00000000
        jmp     ?_049                                   ; 1615 _ EB, 50

?_046:  mov     dword [ebp-0CH], 0                      ; 1617 _ C7. 45, F4, 00000000
        jmp     ?_048                                   ; 161E _ EB, 3B

?_047:  mov     eax, dword [ebp-8H]                     ; 1620 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1623 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1627 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1629 _ 8B. 45, F4
        add     eax, edx                                ; 162C _ 01. D0
        mov     edx, eax                                ; 162E _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1630 _ 8B. 45, 20
        add     eax, edx                                ; 1633 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1635 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1638 _ 8B. 55, F8
        add     edx, ecx                                ; 163B _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 163D _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1641 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1644 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1647 _ 01. D9
        add     edx, ecx                                ; 1649 _ 01. CA
        mov     ecx, edx                                ; 164B _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 164D _ 8B. 55, 08
        add     edx, ecx                                ; 1650 _ 01. CA
        movzx   eax, byte [eax]                         ; 1652 _ 0F B6. 00
        mov     byte [edx], al                          ; 1655 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1657 _ 83. 45, F4, 01
?_048:  mov     eax, dword [ebp-0CH]                    ; 165B _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 165E _ 3B. 45, 10
        jl      ?_047                                   ; 1661 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1663 _ 83. 45, F8, 01
?_049:  mov     eax, dword [ebp-8H]                     ; 1667 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 166A _ 3B. 45, 14
        jl      ?_046                                   ; 166D _ 7C, A8
        nop                                             ; 166F _ 90
        add     esp, 16                                 ; 1670 _ 83. C4, 10
        pop     ebx                                     ; 1673 _ 5B
        pop     ebp                                     ; 1674 _ 5D
        ret                                             ; 1675 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1676 _ 55
        mov     ebp, esp                                ; 1677 _ 89. E5
        sub     esp, 24                                 ; 1679 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 167C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1681 _ 89. 45, EC
        movzx   eax, word [?_218]                       ; 1684 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 168B _ 98
        mov     dword [ebp-10H], eax                    ; 168C _ 89. 45, F0
        movzx   eax, word [?_219]                       ; 168F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1696 _ 98
        mov     dword [ebp-0CH], eax                    ; 1697 _ 89. 45, F4
        sub     esp, 8                                  ; 169A _ 83. EC, 08
        push    32                                      ; 169D _ 6A, 20
        push    32                                      ; 169F _ 6A, 20
        call    io_out8                                 ; 16A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16A6 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 16A9 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 16AD _ 83. EC, 0C
        push    96                                      ; 16B0 _ 6A, 60
        call    io_in8                                  ; 16B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16B7 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 16BA _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 16BD _ 0F B6. 45, EB
        sub     esp, 8                                  ; 16C1 _ 83. EC, 08
        push    eax                                     ; 16C4 _ 50
        push    keyInfo                                 ; 16C5 _ 68, 00000008(d)
        call    fifo8_put                               ; 16CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16CF _ 83. C4, 10
        nop                                             ; 16D2 _ 90
        leave                                           ; 16D3 _ C9
        ret                                             ; 16D4 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 16D5 _ 55
        mov     ebp, esp                                ; 16D6 _ 89. E5
        sub     esp, 40                                 ; 16D8 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 16DB _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 16DE _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 16E1 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 16E5 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 16E8 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 16EB _ 0F BE. 45, F7
        sub     esp, 12                                 ; 16EF _ 83. EC, 0C
        push    eax                                     ; 16F2 _ 50
        call    charToVal                               ; 16F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16F8 _ 83. C4, 10
        mov     byte [?_217], al                        ; 16FB _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1700 _ 0F B6. 45, E4
        shr     al, 4                                   ; 1704 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1707 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 170A _ 0F B6. 45, E4
        movsx   eax, al                                 ; 170E _ 0F BE. C0
        sub     esp, 12                                 ; 1711 _ 83. EC, 0C
        push    eax                                     ; 1714 _ 50
        call    charToVal                               ; 1715 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 171A _ 83. C4, 10
        mov     byte [?_216], al                        ; 171D _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1722 _ B8, 00000000(d)
        leave                                           ; 1727 _ C9
        ret                                             ; 1728 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1729 _ 55
        mov     ebp, esp                                ; 172A _ 89. E5
        sub     esp, 4                                  ; 172C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 172F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1732 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1735 _ 80. 7D, FC, 09
        jle     ?_050                                   ; 1739 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 173B _ 0F B6. 45, FC
        add     eax, 55                                 ; 173F _ 83. C0, 37
        jmp     ?_051                                   ; 1742 _ EB, 07

?_050:  movzx   eax, byte [ebp-4H]                      ; 1744 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1748 _ 83. C0, 30
?_051:  leave                                           ; 174B _ C9
        ret                                             ; 174C _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 174D _ 55
        mov     ebp, esp                                ; 174E _ 89. E5
        sub     esp, 16                                 ; 1750 _ 83. EC, 10
        mov     byte [str.2436], 48                     ; 1753 _ C6. 05, 00000250(d), 30
        mov     byte [?_222], 120                       ; 175A _ C6. 05, 00000251(d), 78
        mov     byte [?_223], 0                         ; 1761 _ C6. 05, 0000025A(d), 00
        mov     dword [ebp-0CH], 2                      ; 1768 _ C7. 45, F4, 00000002
        jmp     ?_053                                   ; 176F _ EB, 0F

?_052:  mov     eax, dword [ebp-0CH]                    ; 1771 _ 8B. 45, F4
        add     eax, str.2436                           ; 1774 _ 05, 00000250(d)
        mov     byte [eax], 48                          ; 1779 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 177C _ 83. 45, F4, 01
?_053:  cmp     dword [ebp-0CH], 9                      ; 1780 _ 83. 7D, F4, 09
        jle     ?_052                                   ; 1784 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1786 _ C7. 45, F8, 00000009
        jmp     ?_056                                   ; 178D _ EB, 48

?_054:  mov     eax, dword [ebp+8H]                     ; 178F _ 8B. 45, 08
        and     eax, 0FH                                ; 1792 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1795 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1798 _ 8B. 45, 08
        shr     eax, 4                                  ; 179B _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 179E _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 17A1 _ 83. 7D, FC, 09
        jle     ?_055                                   ; 17A5 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 17A7 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 17AA _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 17AD _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 17B0 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 17B3 _ 89. 55, F8
        mov     edx, ecx                                ; 17B6 _ 89. CA
        mov     byte [str.2436+eax], dl                 ; 17B8 _ 88. 90, 00000250(d)
        jmp     ?_056                                   ; 17BE _ EB, 17

?_055:  mov     eax, dword [ebp-4H]                     ; 17C0 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 17C3 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 17C6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 17C9 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 17CC _ 89. 55, F8
        mov     edx, ecx                                ; 17CF _ 89. CA
        mov     byte [str.2436+eax], dl                 ; 17D1 _ 88. 90, 00000250(d)
?_056:  cmp     dword [ebp-8H], 1                       ; 17D7 _ 83. 7D, F8, 01
        jle     ?_057                                   ; 17DB _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 17DD _ 83. 7D, 08, 00
        jnz     ?_054                                   ; 17E1 _ 75, AC
?_057:  mov     eax, str.2436                           ; 17E3 _ B8, 00000250(d)
        leave                                           ; 17E8 _ C9
        ret                                             ; 17E9 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 17EA _ 55
        mov     ebp, esp                                ; 17EB _ 89. E5
        sub     esp, 8                                  ; 17ED _ 83. EC, 08
?_058:  sub     esp, 12                                 ; 17F0 _ 83. EC, 0C
        push    100                                     ; 17F3 _ 6A, 64
        call    io_in8                                  ; 17F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17FA _ 83. C4, 10
        movsx   eax, al                                 ; 17FD _ 0F BE. C0
        and     eax, 02H                                ; 1800 _ 83. E0, 02
        test    eax, eax                                ; 1803 _ 85. C0
        jz      ?_059                                   ; 1805 _ 74, 02
        jmp     ?_058                                   ; 1807 _ EB, E7

?_059:  nop                                             ; 1809 _ 90
        nop                                             ; 180A _ 90
        leave                                           ; 180B _ C9
        ret                                             ; 180C _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 180D _ 55
        mov     ebp, esp                                ; 180E _ 89. E5
        sub     esp, 8                                  ; 1810 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1813 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1818 _ 83. EC, 08
        push    96                                      ; 181B _ 6A, 60
        push    100                                     ; 181D _ 6A, 64
        call    io_out8                                 ; 181F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1824 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1827 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 182C _ 83. EC, 08
        push    71                                      ; 182F _ 6A, 47
        push    96                                      ; 1831 _ 6A, 60
        call    io_out8                                 ; 1833 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1838 _ 83. C4, 10
        nop                                             ; 183B _ 90
        leave                                           ; 183C _ C9
        ret                                             ; 183D _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 183E _ 55
        mov     ebp, esp                                ; 183F _ 89. E5
        sub     esp, 8                                  ; 1841 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1844 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1849 _ 83. EC, 08
        push    212                                     ; 184C _ 68, 000000D4
        push    100                                     ; 1851 _ 6A, 64
        call    io_out8                                 ; 1853 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1858 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 185B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1860 _ 83. EC, 08
        push    244                                     ; 1863 _ 68, 000000F4
        push    96                                      ; 1868 _ 6A, 60
        call    io_out8                                 ; 186A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 186F _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1872 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1875 _ C6. 40, 03, 00
        nop                                             ; 1879 _ 90
        leave                                           ; 187A _ C9
        ret                                             ; 187B _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 187C _ 55
        mov     ebp, esp                                ; 187D _ 89. E5
        sub     esp, 24                                 ; 187F _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1882 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1886 _ 83. EC, 08
        push    32                                      ; 1889 _ 6A, 20
        push    160                                     ; 188B _ 68, 000000A0
        call    io_out8                                 ; 1890 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1895 _ 83. C4, 10
        sub     esp, 8                                  ; 1898 _ 83. EC, 08
        push    32                                      ; 189B _ 6A, 20
        push    32                                      ; 189D _ 6A, 20
        call    io_out8                                 ; 189F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18A4 _ 83. C4, 10
        sub     esp, 12                                 ; 18A7 _ 83. EC, 0C
        push    96                                      ; 18AA _ 6A, 60
        call    io_in8                                  ; 18AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18B1 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 18B4 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 18B7 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 18BB _ 83. EC, 08
        push    eax                                     ; 18BE _ 50
        push    mouseInfo                               ; 18BF _ 68, 00000024(d)
        call    fifo8_put                               ; 18C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18C9 _ 83. C4, 10
        nop                                             ; 18CC _ 90
        leave                                           ; 18CD _ C9
        ret                                             ; 18CE _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 18CF _ 55
        mov     ebp, esp                                ; 18D0 _ 89. E5
        sub     esp, 40                                 ; 18D2 _ 83. EC, 28
        call    io_sti                                  ; 18D5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 18DA _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 18DF _ 89. 45, E8
        movzx   eax, word [?_218]                       ; 18E2 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 18E9 _ 98
        mov     dword [ebp-14H], eax                    ; 18EA _ 89. 45, EC
        movzx   eax, word [?_219]                       ; 18ED _ 0F B7. 05, 00000006(d)
        cwde                                            ; 18F4 _ 98
        mov     dword [ebp-10H], eax                    ; 18F5 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 18F8 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 18FC _ 83. EC, 0C
        push    keyInfo                                 ; 18FF _ 68, 00000008(d)
        call    fifo8_get                               ; 1904 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1909 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 190C _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 190F _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1913 _ 83. EC, 0C
        push    eax                                     ; 1916 _ 50
        call    charToHex                               ; 1917 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 191C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 191F _ 89. 45, F4
        mov     edx, dword [line.2469]                  ; 1922 _ 8B. 15, 0000025C(d)
        mov     eax, dword [pos.2468]                   ; 1928 _ A1, 00000260(d)
        sub     esp, 8                                  ; 192D _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1930 _ FF. 75, F4
        push    7                                       ; 1933 _ 6A, 07
        push    edx                                     ; 1935 _ 52
        push    eax                                     ; 1936 _ 50
        push    dword [ebp+0CH]                         ; 1937 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 193A _ FF. 75, 08
        call    showString                              ; 193D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1942 _ 83. C4, 20
        mov     eax, dword [pos.2468]                   ; 1945 _ A1, 00000260(d)
        add     eax, 32                                 ; 194A _ 83. C0, 20
        mov     dword [pos.2468], eax                   ; 194D _ A3, 00000260(d)
        mov     eax, dword [pos.2468]                   ; 1952 _ A1, 00000260(d)
        cmp     dword [ebp-14H], eax                    ; 1957 _ 39. 45, EC
        jnz     ?_062                                   ; 195A _ 75, 28
        mov     eax, dword [line.2469]                  ; 195C _ A1, 0000025C(d)
        cmp     dword [ebp-10H], eax                    ; 1961 _ 39. 45, F0
        jz      ?_060                                   ; 1964 _ 74, 0A
        mov     eax, dword [line.2469]                  ; 1966 _ A1, 0000025C(d)
        add     eax, 16                                 ; 196B _ 83. C0, 10
        jmp     ?_061                                   ; 196E _ EB, 05

?_060:  mov     eax, 0                                  ; 1970 _ B8, 00000000
?_061:  mov     dword [line.2469], eax                  ; 1975 _ A3, 0000025C(d)
        mov     dword [pos.2468], 0                     ; 197A _ C7. 05, 00000260(d), 00000000
?_062:  nop                                             ; 1984 _ 90
        leave                                           ; 1985 _ C9
        ret                                             ; 1986 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1987 _ 55
        mov     ebp, esp                                ; 1988 _ 89. E5
        sub     esp, 24                                 ; 198A _ 83. EC, 18
        call    io_sti                                  ; 198D _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1992 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1996 _ 83. EC, 0C
        push    mouseInfo                               ; 1999 _ 68, 00000024(d)
        call    fifo8_get                               ; 199E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19A3 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 19A6 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 19A9 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 19AD _ 83. EC, 08
        push    eax                                     ; 19B0 _ 50
        push    mouse_move                              ; 19B1 _ 68, 000000E0(d)
        call    mouse_decode                            ; 19B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19BB _ 83. C4, 10
        test    eax, eax                                ; 19BE _ 85. C0
        jz      ?_063                                   ; 19C0 _ 74, 60
        sub     esp, 4                                  ; 19C2 _ 83. EC, 04
        push    mouse_move                              ; 19C5 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 19CA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19CD _ FF. 75, 08
        call    computeMousePos                         ; 19D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19D5 _ 83. C4, 10
        mov     edx, dword [my]                         ; 19D8 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 19DE _ A1, 000000F0(d)
        push    edx                                     ; 19E3 _ 52
        push    eax                                     ; 19E4 _ 50
        push    dword [ebp+10H]                         ; 19E5 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 19E8 _ FF. 75, 08
        call    sheet_slide                             ; 19EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19F0 _ 83. C4, 10
        mov     eax, dword [?_221]                      ; 19F3 _ A1, 000000EC(d)
        and     eax, 01H                                ; 19F8 _ 83. E0, 01
        test    eax, eax                                ; 19FB _ 85. C0
        jz      ?_063                                   ; 19FD _ 74, 23
        mov     eax, dword [my]                         ; 19FF _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1A04 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1A07 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1A0C _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1A0F _ A1, 00000228(d)
        push    ecx                                     ; 1A14 _ 51
        push    edx                                     ; 1A15 _ 52
        push    eax                                     ; 1A16 _ 50
        push    dword [ebp+8H]                          ; 1A17 _ FF. 75, 08
        call    sheet_slide                             ; 1A1A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A1F _ 83. C4, 10
?_063:  nop                                             ; 1A22 _ 90
        leave                                           ; 1A23 _ C9
        ret                                             ; 1A24 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1A25 _ 55
        mov     ebp, esp                                ; 1A26 _ 89. E5
        sub     esp, 4                                  ; 1A28 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1A2B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1A2E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1A31 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A34 _ 0F B6. 40, 03
        test    al, al                                  ; 1A38 _ 84. C0
        jnz     ?_065                                   ; 1A3A _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1A3C _ 80. 7D, FC, FA
        jnz     ?_064                                   ; 1A40 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1A42 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1A45 _ C6. 40, 03, 01
?_064:  mov     eax, 0                                  ; 1A49 _ B8, 00000000
        jmp     ?_072                                   ; 1A4E _ E9, 0000010C

?_065:  mov     eax, dword [ebp+8H]                     ; 1A53 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A56 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1A5A _ 3C, 01
        jnz     ?_067                                   ; 1A5C _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1A5E _ 0F B6. 45, FC
        or      eax, 37H                                ; 1A62 _ 83. C8, 37
        cmp     al, 63                                  ; 1A65 _ 3C, 3F
        jnz     ?_066                                   ; 1A67 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1A69 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1A6C _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1A70 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1A72 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1A75 _ C6. 40, 03, 02
?_066:  mov     eax, 0                                  ; 1A79 _ B8, 00000000
        jmp     ?_072                                   ; 1A7E _ E9, 000000DC

?_067:  mov     eax, dword [ebp+8H]                     ; 1A83 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A86 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1A8A _ 3C, 02
        jnz     ?_068                                   ; 1A8C _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1A8E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1A91 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1A95 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A98 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1A9B _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1A9F _ B8, 00000000
        jmp     ?_072                                   ; 1AA4 _ E9, 000000B6

?_068:  mov     eax, dword [ebp+8H]                     ; 1AA9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1AAC _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1AB0 _ 3C, 03
        jne     ?_071                                   ; 1AB2 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1AB8 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1ABB _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1ABF _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1AC2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1AC5 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1AC9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1ACC _ 0F B6. 00
        movzx   eax, al                                 ; 1ACF _ 0F B6. C0
        and     eax, 07H                                ; 1AD2 _ 83. E0, 07
        mov     edx, eax                                ; 1AD5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1AD7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1ADA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1ADD _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1AE0 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1AE4 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1AE7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1AEA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AED _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1AF0 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1AF4 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1AF7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1AFA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1AFD _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1B00 _ 0F B6. 00
        movzx   eax, al                                 ; 1B03 _ 0F B6. C0
        and     eax, 10H                                ; 1B06 _ 83. E0, 10
        test    eax, eax                                ; 1B09 _ 85. C0
        jz      ?_069                                   ; 1B0B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1B0D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1B10 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1B13 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1B18 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B1A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1B1D _ 89. 50, 04
?_069:  mov     eax, dword [ebp+8H]                     ; 1B20 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1B23 _ 0F B6. 00
        movzx   eax, al                                 ; 1B26 _ 0F B6. C0
        and     eax, 20H                                ; 1B29 _ 83. E0, 20
        test    eax, eax                                ; 1B2C _ 85. C0
        jz      ?_070                                   ; 1B2E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1B30 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1B33 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1B36 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1B3B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B3D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1B40 _ 89. 50, 08
?_070:  mov     eax, dword [ebp+8H]                     ; 1B43 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1B46 _ 8B. 40, 08
        neg     eax                                     ; 1B49 _ F7. D8
        mov     edx, eax                                ; 1B4B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B4D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1B50 _ 89. 50, 08
        mov     eax, 1                                  ; 1B53 _ B8, 00000001
        jmp     ?_072                                   ; 1B58 _ EB, 05

?_071:  mov     eax, 4294967295                         ; 1B5A _ B8, FFFFFFFF
?_072:  leave                                           ; 1B5F _ C9
        ret                                             ; 1B60 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1B61 _ 55
        mov     ebp, esp                                ; 1B62 _ 89. E5
        sub     esp, 16                                 ; 1B64 _ 83. EC, 10
        movzx   eax, word [?_218]                       ; 1B67 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1B6E _ 98
        mov     dword [ebp-8H], eax                     ; 1B6F _ 89. 45, F8
        movzx   eax, word [?_219]                       ; 1B72 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1B79 _ 98
        mov     dword [ebp-4H], eax                     ; 1B7A _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1B7D _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1B80 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1B83 _ A1, 000000F0(d)
        add     eax, edx                                ; 1B88 _ 01. D0
        mov     dword [mx], eax                         ; 1B8A _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1B8F _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1B92 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1B95 _ A1, 000000F4(d)
        add     eax, edx                                ; 1B9A _ 01. D0
        mov     dword [my], eax                         ; 1B9C _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1BA1 _ A1, 000000F0(d)
        test    eax, eax                                ; 1BA6 _ 85. C0
        jns     ?_073                                   ; 1BA8 _ 79, 0A
        mov     dword [mx], 0                           ; 1BAA _ C7. 05, 000000F0(d), 00000000
?_073:  mov     eax, dword [my]                         ; 1BB4 _ A1, 000000F4(d)
        test    eax, eax                                ; 1BB9 _ 85. C0
        jns     ?_074                                   ; 1BBB _ 79, 0A
        mov     dword [my], 0                           ; 1BBD _ C7. 05, 000000F4(d), 00000000
?_074:  mov     eax, dword [ebp-8H]                     ; 1BC7 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1BCA _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1BCD _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1BD2 _ 39. C2
        jge     ?_075                                   ; 1BD4 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1BD6 _ 8B. 45, F8
        sub     eax, 9                                  ; 1BD9 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1BDC _ A3, 000000F0(d)
?_075:  mov     eax, dword [ebp-4H]                     ; 1BE1 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1BE4 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1BE7 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1BEC _ 39. C2
        jge     ?_076                                   ; 1BEE _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1BF0 _ 8B. 45, FC
        sub     eax, 1                                  ; 1BF3 _ 83. E8, 01
        mov     dword [my], eax                         ; 1BF6 _ A3, 000000F4(d)
?_076:  nop                                             ; 1BFB _ 90
        leave                                           ; 1BFC _ C9
        ret                                             ; 1BFD _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1BFE _ 55
        mov     ebp, esp                                ; 1BFF _ 89. E5
        sub     esp, 56                                 ; 1C01 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1C04 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1C0B _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1C12 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1C19 _ C7. 45, DC, 00000050
        push    100                                     ; 1C20 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1C22 _ FF. 75, 1C
        push    0                                       ; 1C25 _ 6A, 00
        push    0                                       ; 1C27 _ 6A, 00
        push    14                                      ; 1C29 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1C2B _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1C2E _ FF. 75, 14
        call    boxfill8                                ; 1C31 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C36 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1C39 _ 8B. 45, 20
        movsx   eax, al                                 ; 1C3C _ 0F BE. C0
        sub     esp, 8                                  ; 1C3F _ 83. EC, 08
        push    ?_210                                   ; 1C42 _ 68, 0000003F(d)
        push    eax                                     ; 1C47 _ 50
        push    dword [ebp-2CH]                         ; 1C48 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1C4B _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1C4E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C51 _ FF. 75, 08
        call    showString                              ; 1C54 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C59 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1C5C _ 8B. 45, 18
        sub     esp, 12                                 ; 1C5F _ 83. EC, 0C
        push    eax                                     ; 1C62 _ 50
        call    intToHexStr                             ; 1C63 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C68 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1C6B _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1C6E _ 8B. 45, 20
        movsx   eax, al                                 ; 1C71 _ 0F BE. C0
        sub     esp, 8                                  ; 1C74 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1C77 _ FF. 75, E0
        push    eax                                     ; 1C7A _ 50
        push    dword [ebp-2CH]                         ; 1C7B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1C7E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1C81 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C84 _ FF. 75, 08
        call    showString                              ; 1C87 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C8C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1C8F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1C93 _ 8B. 45, 20
        movsx   eax, al                                 ; 1C96 _ 0F BE. C0
        sub     esp, 8                                  ; 1C99 _ 83. EC, 08
        push    ?_211                                   ; 1C9C _ 68, 00000049(d)
        push    eax                                     ; 1CA1 _ 50
        push    dword [ebp-2CH]                         ; 1CA2 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1CA5 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1CA8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CAB _ FF. 75, 08
        call    showString                              ; 1CAE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CB3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1CB6 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1CB9 _ 8B. 00
        sub     esp, 12                                 ; 1CBB _ 83. EC, 0C
        push    eax                                     ; 1CBE _ 50
        call    intToHexStr                             ; 1CBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC4 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1CC7 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1CCA _ 8B. 45, 20
        movsx   eax, al                                 ; 1CCD _ 0F BE. C0
        sub     esp, 8                                  ; 1CD0 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1CD3 _ FF. 75, E4
        push    eax                                     ; 1CD6 _ 50
        push    dword [ebp-2CH]                         ; 1CD7 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1CDA _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1CDD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CE0 _ FF. 75, 08
        call    showString                              ; 1CE3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CE8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1CEB _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1CEF _ 8B. 45, 20
        movsx   eax, al                                 ; 1CF2 _ 0F BE. C0
        sub     esp, 8                                  ; 1CF5 _ 83. EC, 08
        push    ?_212                                   ; 1CF8 _ 68, 00000057(d)
        push    eax                                     ; 1CFD _ 50
        push    dword [ebp-2CH]                         ; 1CFE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D01 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D04 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D07 _ FF. 75, 08
        call    showString                              ; 1D0A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D0F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1D12 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1D15 _ 8B. 40, 04
        sub     esp, 12                                 ; 1D18 _ 83. EC, 0C
        push    eax                                     ; 1D1B _ 50
        call    intToHexStr                             ; 1D1C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D21 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1D24 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1D27 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D2A _ 0F BE. C0
        sub     esp, 8                                  ; 1D2D _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1D30 _ FF. 75, E8
        push    eax                                     ; 1D33 _ 50
        push    dword [ebp-2CH]                         ; 1D34 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D37 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D3A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D3D _ FF. 75, 08
        call    showString                              ; 1D40 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D45 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D48 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D4C _ 8B. 45, 20
        movsx   eax, al                                 ; 1D4F _ 0F BE. C0
        sub     esp, 8                                  ; 1D52 _ 83. EC, 08
        push    ?_213                                   ; 1D55 _ 68, 00000066(d)
        push    eax                                     ; 1D5A _ 50
        push    dword [ebp-2CH]                         ; 1D5B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D5E _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D61 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D64 _ FF. 75, 08
        call    showString                              ; 1D67 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D6C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1D6F _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1D72 _ 8B. 40, 08
        sub     esp, 12                                 ; 1D75 _ 83. EC, 0C
        push    eax                                     ; 1D78 _ 50
        call    intToHexStr                             ; 1D79 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D7E _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1D81 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1D84 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D87 _ 0F BE. C0
        sub     esp, 8                                  ; 1D8A _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1D8D _ FF. 75, EC
        push    eax                                     ; 1D90 _ 50
        push    dword [ebp-2CH]                         ; 1D91 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D94 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D97 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D9A _ FF. 75, 08
        call    showString                              ; 1D9D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DA2 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DA5 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1DA9 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DAC _ 0F BE. C0
        sub     esp, 8                                  ; 1DAF _ 83. EC, 08
        push    ?_214                                   ; 1DB2 _ 68, 00000072(d)
        push    eax                                     ; 1DB7 _ 50
        push    dword [ebp-2CH]                         ; 1DB8 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1DBB _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1DBE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DC1 _ FF. 75, 08
        call    showString                              ; 1DC4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DC9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DCC _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1DCF _ 8B. 40, 0C
        sub     esp, 12                                 ; 1DD2 _ 83. EC, 0C
        push    eax                                     ; 1DD5 _ 50
        call    intToHexStr                             ; 1DD6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DDB _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1DDE _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1DE1 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DE4 _ 0F BE. C0
        sub     esp, 8                                  ; 1DE7 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1DEA _ FF. 75, F0
        push    eax                                     ; 1DED _ 50
        push    dword [ebp-2CH]                         ; 1DEE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DF1 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DF4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DF7 _ FF. 75, 08
        call    showString                              ; 1DFA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DFF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E02 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E06 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E09 _ 0F BE. C0
        sub     esp, 8                                  ; 1E0C _ 83. EC, 08
        push    ?_215                                   ; 1E0F _ 68, 0000007F(d)
        push    eax                                     ; 1E14 _ 50
        push    dword [ebp-2CH]                         ; 1E15 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E18 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E1B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E1E _ FF. 75, 08
        call    showString                              ; 1E21 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E26 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E29 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1E2C _ 8B. 40, 10
        sub     esp, 12                                 ; 1E2F _ 83. EC, 0C
        push    eax                                     ; 1E32 _ 50
        call    intToHexStr                             ; 1E33 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E38 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1E3B _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1E3E _ 8B. 45, 20
        movsx   eax, al                                 ; 1E41 _ 0F BE. C0
        sub     esp, 8                                  ; 1E44 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1E47 _ FF. 75, F4
        push    eax                                     ; 1E4A _ 50
        push    dword [ebp-2CH]                         ; 1E4B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E4E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E51 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E54 _ FF. 75, 08
        call    showString                              ; 1E57 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E5C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E5F _ 83. 45, D4, 10
        nop                                             ; 1E63 _ 90
        leave                                           ; 1E64 _ C9
        ret                                             ; 1E65 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1E66 _ 55
        mov     ebp, esp                                ; 1E67 _ 89. E5
        sub     esp, 24                                 ; 1E69 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 1E6C _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1E6F _ 0F AF. 45, 14
        mov     edx, eax                                ; 1E73 _ 89. C2
        mov     eax, dword [memman]                     ; 1E75 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1E7A _ 83. EC, 08
        push    edx                                     ; 1E7D _ 52
        push    eax                                     ; 1E7E _ 50
        call    memman_alloc_4K                         ; 1E7F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E84 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1E87 _ 89. 45, F0
        sub     esp, 12                                 ; 1E8A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1E8D _ FF. 75, 08
        call    sheet_alloc                             ; 1E90 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E95 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1E98 _ 89. 45, F4
        sub     esp, 12                                 ; 1E9B _ 83. EC, 0C
        push    99                                      ; 1E9E _ 6A, 63
        push    dword [ebp+14H]                         ; 1EA0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1EA3 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 1EA6 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1EA9 _ FF. 75, F4
        call    sheet_setbuf                            ; 1EAC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EB1 _ 83. C4, 20
        sub     esp, 4                                  ; 1EB4 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1EB7 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1EBA _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1EBD _ FF. 75, 08
        call    make_window8                            ; 1EC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EC5 _ 83. C4, 10
        sub     esp, 8                                  ; 1EC8 _ 83. EC, 08
        push    7                                       ; 1ECB _ 6A, 07
        push    16                                      ; 1ECD _ 6A, 10
        push    150                                     ; 1ECF _ 68, 00000096
        push    42                                      ; 1ED4 _ 6A, 2A
        push    10                                      ; 1ED6 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 1ED8 _ FF. 75, F4
        call    make_textbox8                           ; 1EDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EE0 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 1EE3 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1EE6 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1EE9 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1EEC _ FF. 75, 08
        call    sheet_slide                             ; 1EEF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EF4 _ 83. C4, 10
        sub     esp, 4                                  ; 1EF7 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 1EFA _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1EFD _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1F00 _ FF. 75, 08
        call    sheet_level_updown                      ; 1F03 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F08 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1F0B _ 8B. 45, F4
        leave                                           ; 1F0E _ C9
        ret                                             ; 1F0F _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 1F10 _ 55
        mov     ebp, esp                                ; 1F11 _ 89. E5
        sub     esp, 24                                 ; 1F13 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 1F16 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 1F19 _ 0F AF. 45, 20
        mov     edx, eax                                ; 1F1D _ 89. C2
        mov     eax, dword [memman]                     ; 1F1F _ A1, 00000008(d)
        sub     esp, 8                                  ; 1F24 _ 83. EC, 08
        push    edx                                     ; 1F27 _ 52
        push    eax                                     ; 1F28 _ 50
        call    memman_alloc_4K                         ; 1F29 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F2E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1F31 _ 89. 45, F0
        sub     esp, 12                                 ; 1F34 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1F37 _ FF. 75, 08
        call    sheet_alloc                             ; 1F3A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F3F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F42 _ 89. 45, F4
        sub     esp, 12                                 ; 1F45 _ 83. EC, 0C
        push    99                                      ; 1F48 _ 6A, 63
        push    dword [ebp+20H]                         ; 1F4A _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 1F4D _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 1F50 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1F53 _ FF. 75, F4
        call    sheet_setbuf                            ; 1F56 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F5B _ 83. C4, 20
        sub     esp, 4                                  ; 1F5E _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1F61 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1F64 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1F67 _ FF. 75, 08
        call    make_window8                            ; 1F6A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F6F _ 83. C4, 10
        call    task_alloc                              ; 1F72 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 1F77 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F7A _ 8B. 45, 0C
        mov     dword [eax+70H], 0                      ; 1F7D _ C7. 40, 70, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1F84 _ 8B. 45, 0C
        mov     dword [eax+74H], 1073741824             ; 1F87 _ C7. 40, 74, 40000000
        call    get_code32_addr                         ; 1F8E _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 1F93 _ F7. D8
        add     eax, task_b_main                        ; 1F95 _ 05, 00000000(d)
        mov     edx, eax                                ; 1F9A _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 1F9C _ 8B. 45, 0C
        mov     dword [eax+30H], edx                    ; 1F9F _ 89. 50, 30
        mov     eax, dword [ebp+0CH]                    ; 1FA2 _ 8B. 45, 0C
        mov     dword [eax+58H], 0                      ; 1FA5 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1FAC _ 8B. 45, 0C
        mov     dword [eax+5CH], 8                      ; 1FAF _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1FB6 _ 8B. 45, 0C
        mov     dword [eax+60H], 32                     ; 1FB9 _ C7. 40, 60, 00000020
        mov     eax, dword [ebp+0CH]                    ; 1FC0 _ 8B. 45, 0C
        mov     dword [eax+64H], 24                     ; 1FC3 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1FCA _ 8B. 45, 0C
        mov     dword [eax+68H], 0                      ; 1FCD _ C7. 40, 68, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1FD4 _ 8B. 45, 0C
        mov     dword [eax+6CH], 16                     ; 1FD7 _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp+0CH]                    ; 1FDE _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 1FE1 _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 1FE4 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 1FE7 _ 8B. 45, 0C
        mov     dword [eax+48H], edx                    ; 1FEA _ 89. 50, 48
        mov     eax, dword [ebp+0CH]                    ; 1FED _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 1FF0 _ 8B. 40, 48
        add     eax, 4                                  ; 1FF3 _ 83. C0, 04
        mov     edx, eax                                ; 1FF6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1FF8 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 1FFB _ 89. 02
        sub     esp, 4                                  ; 1FFD _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2000 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2003 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2006 _ FF. 75, 0C
        call    task_run                                ; 2009 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 200E _ 83. C4, 10
        push    dword [ebp+28H]                         ; 2011 _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2014 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2017 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 201A _ FF. 75, 08
        call    sheet_slide                             ; 201D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2022 _ 83. C4, 10
        sub     esp, 4                                  ; 2025 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2028 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 202B _ FF. 75, F4
        push    dword [ebp+8H]                          ; 202E _ FF. 75, 08
        call    sheet_level_updown                      ; 2031 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2036 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2039 _ 8B. 45, F4
        leave                                           ; 203C _ C9
        ret                                             ; 203D _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 203E _ 55
        mov     ebp, esp                                ; 203F _ 89. E5
        push    ebx                                     ; 2041 _ 53
        sub     esp, 36                                 ; 2042 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 2045 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2048 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 204B _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 204E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2051 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2054 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2057 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 205A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 205D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2060 _ 8B. 00
        push    0                                       ; 2062 _ 6A, 00
        push    edx                                     ; 2064 _ 52
        push    0                                       ; 2065 _ 6A, 00
        push    0                                       ; 2067 _ 6A, 00
        push    8                                       ; 2069 _ 6A, 08
        push    dword [ebp-10H]                         ; 206B _ FF. 75, F0
        push    eax                                     ; 206E _ 50
        call    boxfill8                                ; 206F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2074 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2077 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 207A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 207D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2080 _ 8B. 00
        push    1                                       ; 2082 _ 6A, 01
        push    edx                                     ; 2084 _ 52
        push    1                                       ; 2085 _ 6A, 01
        push    1                                       ; 2087 _ 6A, 01
        push    7                                       ; 2089 _ 6A, 07
        push    dword [ebp-10H]                         ; 208B _ FF. 75, F0
        push    eax                                     ; 208E _ 50
        call    boxfill8                                ; 208F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2094 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2097 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 209A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 209D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20A0 _ 8B. 00
        push    edx                                     ; 20A2 _ 52
        push    0                                       ; 20A3 _ 6A, 00
        push    0                                       ; 20A5 _ 6A, 00
        push    0                                       ; 20A7 _ 6A, 00
        push    8                                       ; 20A9 _ 6A, 08
        push    dword [ebp-10H]                         ; 20AB _ FF. 75, F0
        push    eax                                     ; 20AE _ 50
        call    boxfill8                                ; 20AF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20B4 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20B7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 20BA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20BD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20C0 _ 8B. 00
        push    edx                                     ; 20C2 _ 52
        push    1                                       ; 20C3 _ 6A, 01
        push    1                                       ; 20C5 _ 6A, 01
        push    1                                       ; 20C7 _ 6A, 01
        push    7                                       ; 20C9 _ 6A, 07
        push    dword [ebp-10H]                         ; 20CB _ FF. 75, F0
        push    eax                                     ; 20CE _ 50
        call    boxfill8                                ; 20CF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20D4 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20D7 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 20DA _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 20DD _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 20E0 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 20E3 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 20E6 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 20E9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20EC _ 8B. 00
        push    ebx                                     ; 20EE _ 53
        push    ecx                                     ; 20EF _ 51
        push    1                                       ; 20F0 _ 6A, 01
        push    edx                                     ; 20F2 _ 52
        push    15                                      ; 20F3 _ 6A, 0F
        push    dword [ebp-10H]                         ; 20F5 _ FF. 75, F0
        push    eax                                     ; 20F8 _ 50
        call    boxfill8                                ; 20F9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20FE _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2101 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2104 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2107 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 210A _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 210D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2110 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2113 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2116 _ 8B. 00
        push    ebx                                     ; 2118 _ 53
        push    ecx                                     ; 2119 _ 51
        push    0                                       ; 211A _ 6A, 00
        push    edx                                     ; 211C _ 52
        push    0                                       ; 211D _ 6A, 00
        push    dword [ebp-10H]                         ; 211F _ FF. 75, F0
        push    eax                                     ; 2122 _ 50
        call    boxfill8                                ; 2123 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2128 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 212B _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 212E _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2131 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2134 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2137 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 213A _ 8B. 00
        push    ecx                                     ; 213C _ 51
        push    edx                                     ; 213D _ 52
        push    2                                       ; 213E _ 6A, 02
        push    2                                       ; 2140 _ 6A, 02
        push    8                                       ; 2142 _ 6A, 08
        push    dword [ebp-10H]                         ; 2144 _ FF. 75, F0
        push    eax                                     ; 2147 _ 50
        call    boxfill8                                ; 2148 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 214D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2150 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2153 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2156 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2159 _ 8B. 00
        push    20                                      ; 215B _ 6A, 14
        push    edx                                     ; 215D _ 52
        push    3                                       ; 215E _ 6A, 03
        push    3                                       ; 2160 _ 6A, 03
        push    12                                      ; 2162 _ 6A, 0C
        push    dword [ebp-10H]                         ; 2164 _ FF. 75, F0
        push    eax                                     ; 2167 _ 50
        call    boxfill8                                ; 2168 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 216D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2170 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2173 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2176 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2179 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 217C _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 217F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2182 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2185 _ 8B. 00
        push    ebx                                     ; 2187 _ 53
        push    ecx                                     ; 2188 _ 51
        push    edx                                     ; 2189 _ 52
        push    1                                       ; 218A _ 6A, 01
        push    15                                      ; 218C _ 6A, 0F
        push    dword [ebp-10H]                         ; 218E _ FF. 75, F0
        push    eax                                     ; 2191 _ 50
        call    boxfill8                                ; 2192 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2197 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 219A _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 219D _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 21A0 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 21A3 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 21A6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21A9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 21AC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 21AF _ 8B. 00
        push    ebx                                     ; 21B1 _ 53
        push    ecx                                     ; 21B2 _ 51
        push    edx                                     ; 21B3 _ 52
        push    0                                       ; 21B4 _ 6A, 00
        push    0                                       ; 21B6 _ 6A, 00
        push    dword [ebp-10H]                         ; 21B8 _ FF. 75, F0
        push    eax                                     ; 21BB _ 50
        call    boxfill8                                ; 21BC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21C1 _ 83. C4, 1C
        sub     esp, 8                                  ; 21C4 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 21C7 _ FF. 75, 10
        push    7                                       ; 21CA _ 6A, 07
        push    4                                       ; 21CC _ 6A, 04
        push    8                                       ; 21CE _ 6A, 08
        push    dword [ebp+0CH]                         ; 21D0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21D3 _ FF. 75, 08
        call    showString                              ; 21D6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21DB _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 21DE _ C7. 45, E8, 00000000
        jmp     ?_083                                   ; 21E5 _ EB, 7D

?_077:  mov     dword [ebp-14H], 0                      ; 21E7 _ C7. 45, EC, 00000000
        jmp     ?_082                                   ; 21EE _ EB, 6A

?_078:  mov     eax, dword [ebp-18H]                    ; 21F0 _ 8B. 45, E8
        shl     eax, 4                                  ; 21F3 _ C1. E0, 04
        mov     edx, eax                                ; 21F6 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 21F8 _ 8B. 45, EC
        add     eax, edx                                ; 21FB _ 01. D0
        add     eax, closebtn.2536                      ; 21FD _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 2202 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 2205 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 2208 _ 80. 7D, E7, 40
        jnz     ?_079                                   ; 220C _ 75, 06
        mov     byte [ebp-19H], 0                       ; 220E _ C6. 45, E7, 00
        jmp     ?_081                                   ; 2212 _ EB, 16

?_079:  cmp     byte [ebp-19H], 36                      ; 2214 _ 80. 7D, E7, 24
        jnz     ?_080                                   ; 2218 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 221A _ C6. 45, E7, 0F
        jmp     ?_081                                   ; 221E _ EB, 0A

?_080:  cmp     byte [ebp-19H], 81                      ; 2220 _ 80. 7D, E7, 51
        jnz     ?_081                                   ; 2224 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 2226 _ C6. 45, E7, 08
?_081:  mov     eax, dword [ebp+0CH]                    ; 222A _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 222D _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 222F _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 2232 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 2235 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2238 _ 8B. 40, 04
        imul    ecx, eax                                ; 223B _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 223E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2241 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 2244 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 2247 _ 8B. 45, EC
        add     eax, ebx                                ; 224A _ 01. D8
        add     eax, ecx                                ; 224C _ 01. C8
        add     edx, eax                                ; 224E _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 2250 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 2254 _ 88. 02
        add     dword [ebp-14H], 1                      ; 2256 _ 83. 45, EC, 01
?_082:  cmp     dword [ebp-14H], 15                     ; 225A _ 83. 7D, EC, 0F
        jle     ?_078                                   ; 225E _ 7E, 90
        add     dword [ebp-18H], 1                      ; 2260 _ 83. 45, E8, 01
?_083:  cmp     dword [ebp-18H], 13                     ; 2264 _ 83. 7D, E8, 0D
        jle     ?_077                                   ; 2268 _ 0F 8E, FFFFFF79
        nop                                             ; 226E _ 90
        mov     ebx, dword [ebp-4H]                     ; 226F _ 8B. 5D, FC
        leave                                           ; 2272 _ C9
        ret                                             ; 2273 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2274 _ 55
        mov     ebp, esp                                ; 2275 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2277 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 227A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2280 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2283 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 228A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 228D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2294 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2297 _ C7. 40, 0C, 00000000
        nop                                             ; 229E _ 90
        pop     ebp                                     ; 229F _ 5D
        ret                                             ; 22A0 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 22A1 _ 55
        mov     ebp, esp                                ; 22A2 _ 89. E5
        sub     esp, 16                                 ; 22A4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22A7 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 22AE _ C7. 45, FC, 00000000
        jmp     ?_085                                   ; 22B5 _ EB, 14

?_084:  mov     eax, dword [ebp+8H]                     ; 22B7 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 22BA _ 8B. 55, FC
        add     edx, 2                                  ; 22BD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22C0 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 22C4 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 22C7 _ 83. 45, FC, 01
?_085:  mov     eax, dword [ebp+8H]                     ; 22CB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22CE _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 22D0 _ 39. 45, FC
        jl      ?_084                                   ; 22D3 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 22D5 _ 8B. 45, F8
        leave                                           ; 22D8 _ C9
        ret                                             ; 22D9 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 22DA _ 55
        mov     ebp, esp                                ; 22DB _ 89. E5
        sub     esp, 16                                 ; 22DD _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22E0 _ C7. 45, F8, 00000000
        jmp     ?_089                                   ; 22E7 _ E9, 00000085

?_086:  mov     eax, dword [ebp+8H]                     ; 22EC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22EF _ 8B. 55, F8
        add     edx, 2                                  ; 22F2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22F5 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 22F9 _ 39. 45, 0C
        ja      ?_088                                   ; 22FC _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 22FE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2301 _ 8B. 55, F8
        add     edx, 2                                  ; 2304 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2307 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 230A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 230D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2310 _ 8B. 55, F8
        add     edx, 2                                  ; 2313 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2316 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2319 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 231C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 231F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2322 _ 8B. 55, F8
        add     edx, 2                                  ; 2325 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2328 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 232B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 232E _ 8B. 55, F8
        add     edx, 2                                  ; 2331 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2334 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2338 _ 2B. 45, 0C
        mov     edx, eax                                ; 233B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 233D _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2340 _ 8B. 4D, F8
        add     ecx, 2                                  ; 2343 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2346 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 234A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 234D _ 8B. 55, F8
        add     edx, 2                                  ; 2350 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2353 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2357 _ 85. C0
        jnz     ?_087                                   ; 2359 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 235B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 235E _ 8B. 00
        lea     edx, [eax-1H]                           ; 2360 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2363 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2366 _ 89. 10
?_087:  mov     eax, dword [ebp-4H]                     ; 2368 _ 8B. 45, FC
        jmp     ?_090                                   ; 236B _ EB, 17

?_088:  add     dword [ebp-8H], 1                       ; 236D _ 83. 45, F8, 01
?_089:  mov     eax, dword [ebp+8H]                     ; 2371 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2374 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2376 _ 39. 45, F8
        jl      ?_086                                   ; 2379 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 237F _ B8, 00000000
?_090:  leave                                           ; 2384 _ C9
        ret                                             ; 2385 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2386 _ 55
        mov     ebp, esp                                ; 2387 _ 89. E5
        sub     esp, 16                                 ; 2389 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 238C _ 8B. 45, 0C
        add     eax, 4095                               ; 238F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2394 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2399 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 239C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 239F _ FF. 75, 08
        call    memman_alloc_FF                         ; 23A2 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 23A7 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 23AA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 23AD _ 8B. 45, FC
        leave                                           ; 23B0 _ C9
        ret                                             ; 23B1 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 23B2 _ 55
        mov     ebp, esp                                ; 23B3 _ 89. E5
        push    ebx                                     ; 23B5 _ 53
        sub     esp, 16                                 ; 23B6 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 23B9 _ C7. 45, F4, 00000000
        jmp     ?_092                                   ; 23C0 _ EB, 15

?_091:  mov     eax, dword [ebp+8H]                     ; 23C2 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 23C5 _ 8B. 55, F4
        add     edx, 2                                  ; 23C8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 23CB _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 23CE _ 39. 45, 0C
        jc      ?_093                                   ; 23D1 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 23D3 _ 83. 45, F4, 01
?_092:  mov     eax, dword [ebp+8H]                     ; 23D7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23DA _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 23DC _ 39. 45, F4
        jl      ?_091                                   ; 23DF _ 7C, E1
        jmp     ?_094                                   ; 23E1 _ EB, 01

?_093:  nop                                             ; 23E3 _ 90
?_094:  cmp     dword [ebp-0CH], 0                      ; 23E4 _ 83. 7D, F4, 00
        jle     ?_096                                   ; 23E8 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 23EE _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23F1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23F4 _ 8B. 45, 08
        add     edx, 2                                  ; 23F7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 23FA _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 23FD _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2400 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2403 _ 8B. 45, 08
        add     ecx, 2                                  ; 2406 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2409 _ 8B. 44 C8, 04
        add     eax, edx                                ; 240D _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 240F _ 39. 45, 0C
        jne     ?_096                                   ; 2412 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2418 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 241B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 241E _ 8B. 45, 08
        add     edx, 2                                  ; 2421 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2424 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2428 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 242B _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 242E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2431 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2434 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2437 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 243A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 243E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2441 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2443 _ 39. 45, F4
        jge     ?_095                                   ; 2446 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2448 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 244B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 244E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2451 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2454 _ 8B. 55, F4
        add     edx, 2                                  ; 2457 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 245A _ 8B. 04 D0
        cmp     ecx, eax                                ; 245D _ 39. C1
        jnz     ?_095                                   ; 245F _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2461 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2464 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2467 _ 8B. 45, 08
        add     edx, 2                                  ; 246A _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 246D _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2471 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2474 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2477 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 247A _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 247E _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2481 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2484 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2487 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 248A _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 248D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2491 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2494 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2496 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2499 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 249C _ 89. 10
?_095:  mov     eax, 0                                  ; 249E _ B8, 00000000
        jmp     ?_102                                   ; 24A3 _ E9, 0000011C

?_096:  mov     eax, dword [ebp+8H]                     ; 24A8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24AB _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 24AD _ 39. 45, F4
        jge     ?_097                                   ; 24B0 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 24B2 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 24B5 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24B8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24BB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24BE _ 8B. 55, F4
        add     edx, 2                                  ; 24C1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 24C4 _ 8B. 04 D0
        cmp     ecx, eax                                ; 24C7 _ 39. C1
        jnz     ?_097                                   ; 24C9 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 24CB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24CE _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 24D1 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 24D4 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 24D7 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 24DA _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24DD _ 8B. 55, F4
        add     edx, 2                                  ; 24E0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 24E3 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 24E7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24EA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24ED _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24F0 _ 8B. 55, F4
        add     edx, 2                                  ; 24F3 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 24F6 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 24FA _ B8, 00000000
        jmp     ?_102                                   ; 24FF _ E9, 000000C0

?_097:  mov     eax, dword [ebp+8H]                     ; 2504 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2507 _ 8B. 00
        cmp     eax, 4095                               ; 2509 _ 3D, 00000FFF
        jg      ?_101                                   ; 250E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2514 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2517 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2519 _ 89. 45, F8
        jmp     ?_099                                   ; 251C _ EB, 28

?_098:  mov     eax, dword [ebp-8H]                     ; 251E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2521 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2524 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2527 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 252A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 252D _ 8B. 45, 08
        add     edx, 2                                  ; 2530 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2533 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2536 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2538 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 253B _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 253E _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2542 _ 83. 6D, F8, 01
?_099:  mov     eax, dword [ebp-8H]                     ; 2546 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2549 _ 3B. 45, F4
        jg      ?_098                                   ; 254C _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 254E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2551 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2553 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2556 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2559 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 255B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 255E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2561 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2564 _ 8B. 00
        cmp     edx, eax                                ; 2566 _ 39. C2
        jge     ?_100                                   ; 2568 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 256A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 256D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 256F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2572 _ 89. 50, 04
?_100:  mov     eax, dword [ebp+8H]                     ; 2575 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2578 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 257B _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 257E _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2581 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2584 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2587 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 258A _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 258D _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2590 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2594 _ B8, 00000000
        jmp     ?_102                                   ; 2599 _ EB, 29

?_101:  mov     eax, dword [ebp+8H]                     ; 259B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 259E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 25A1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25A4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 25A7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 25AA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 25AD _ 8B. 40, 08
        mov     edx, eax                                ; 25B0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 25B2 _ 8B. 45, 10
        add     eax, edx                                ; 25B5 _ 01. D0
        mov     edx, eax                                ; 25B7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 25B9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 25BC _ 89. 50, 08
        mov     eax, 4294967295                         ; 25BF _ B8, FFFFFFFF
?_102:  add     esp, 16                                 ; 25C4 _ 83. C4, 10
        pop     ebx                                     ; 25C7 _ 5B
        pop     ebp                                     ; 25C8 _ 5D
        ret                                             ; 25C9 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 25CA _ 55
        mov     ebp, esp                                ; 25CB _ 89. E5
        sub     esp, 16                                 ; 25CD _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 25D0 _ 8B. 45, 10
        add     eax, 4095                               ; 25D3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 25D8 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 25DD _ 89. 45, 10
        push    dword [ebp+10H]                         ; 25E0 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 25E3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25E6 _ FF. 75, 08
        call    memman_free                             ; 25E9 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 25EE _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 25F1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 25F4 _ 8B. 45, FC
        leave                                           ; 25F7 _ C9
        ret                                             ; 25F8 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 25F9 _ 55
        mov     ebp, esp                                ; 25FA _ 89. E5
        sub     esp, 24                                 ; 25FC _ 83. EC, 18
        sub     esp, 8                                  ; 25FF _ 83. EC, 08
        push    9232                                    ; 2602 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2607 _ FF. 75, 08
        call    memman_alloc_4K                         ; 260A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 260F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2612 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2615 _ 83. 7D, F4, 00
        jnz     ?_103                                   ; 2619 _ 75, 0A
        mov     eax, 0                                  ; 261B _ B8, 00000000
        jmp     ?_107                                   ; 2620 _ E9, 0000009A

?_103:  mov     eax, dword [ebp+10H]                    ; 2625 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2628 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 262C _ 83. EC, 08
        push    eax                                     ; 262F _ 50
        push    dword [ebp+8H]                          ; 2630 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2633 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2638 _ 83. C4, 10
        mov     edx, eax                                ; 263B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 263D _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2640 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2643 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2646 _ 8B. 40, 04
        test    eax, eax                                ; 2649 _ 85. C0
        jnz     ?_104                                   ; 264B _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 264D _ 8B. 45, F4
        sub     esp, 4                                  ; 2650 _ 83. EC, 04
        push    9232                                    ; 2653 _ 68, 00002410
        push    eax                                     ; 2658 _ 50
        push    dword [ebp+8H]                          ; 2659 _ FF. 75, 08
        call    memman_free_4K                          ; 265C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2661 _ 83. C4, 10
        mov     eax, 0                                  ; 2664 _ B8, 00000000
        jmp     ?_107                                   ; 2669 _ EB, 54

?_104:  mov     eax, dword [ebp-0CH]                    ; 266B _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 266E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2671 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2673 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2676 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2679 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 267C _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 267F _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2682 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2685 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2688 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 268F _ C7. 45, F0, 00000000
        jmp     ?_106                                   ; 2696 _ EB, 1B

?_105:  mov     eax, dword [ebp-0CH]                    ; 2698 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 269B _ 8B. 55, F0
        add     edx, 33                                 ; 269E _ 83. C2, 21
        shl     edx, 5                                  ; 26A1 _ C1. E2, 05
        add     eax, edx                                ; 26A4 _ 01. D0
        add     eax, 16                                 ; 26A6 _ 83. C0, 10
        mov     dword [eax], 0                          ; 26A9 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 26AF _ 83. 45, F0, 01
?_106:  cmp     dword [ebp-10H], 255                    ; 26B3 _ 81. 7D, F0, 000000FF
        jle     ?_105                                   ; 26BA _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 26BC _ 8B. 45, F4
?_107:  leave                                           ; 26BF _ C9
        ret                                             ; 26C0 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 26C1 _ 55
        mov     ebp, esp                                ; 26C2 _ 89. E5
        sub     esp, 16                                 ; 26C4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 26C7 _ C7. 45, F8, 00000000
        jmp     ?_110                                   ; 26CE _ EB, 4B

?_108:  mov     eax, dword [ebp+8H]                     ; 26D0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26D3 _ 8B. 55, F8
        add     edx, 33                                 ; 26D6 _ 83. C2, 21
        shl     edx, 5                                  ; 26D9 _ C1. E2, 05
        add     eax, edx                                ; 26DC _ 01. D0
        add     eax, 16                                 ; 26DE _ 83. C0, 10
        mov     eax, dword [eax]                        ; 26E1 _ 8B. 00
        test    eax, eax                                ; 26E3 _ 85. C0
        jnz     ?_109                                   ; 26E5 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 26E7 _ 8B. 45, F8
        shl     eax, 5                                  ; 26EA _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 26ED _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 26F3 _ 8B. 45, 08
        add     eax, edx                                ; 26F6 _ 01. D0
        add     eax, 4                                  ; 26F8 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 26FB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 26FE _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2701 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2708 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 270B _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2712 _ 8B. 45, FC
        jmp     ?_111                                   ; 2715 _ EB, 12

?_109:  add     dword [ebp-8H], 1                       ; 2717 _ 83. 45, F8, 01
?_110:  cmp     dword [ebp-8H], 255                     ; 271B _ 81. 7D, F8, 000000FF
        jle     ?_108                                   ; 2722 _ 7E, AC
        mov     eax, 0                                  ; 2724 _ B8, 00000000
?_111:  leave                                           ; 2729 _ C9
        ret                                             ; 272A _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 272B _ 55
        mov     ebp, esp                                ; 272C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 272E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2731 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2734 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2736 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2739 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 273C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 273F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2742 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2745 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2748 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 274B _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 274E _ 89. 50, 14
        nop                                             ; 2751 _ 90
        pop     ebp                                     ; 2752 _ 5D
        ret                                             ; 2753 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2754 _ 55
        mov     ebp, esp                                ; 2755 _ 89. E5
        push    esi                                     ; 2757 _ 56
        push    ebx                                     ; 2758 _ 53
        sub     esp, 32                                 ; 2759 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 275C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 275F _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2762 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2765 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2768 _ 8B. 40, 10
        add     eax, 1                                  ; 276B _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 276E _ 39. 45, 10
        jle     ?_112                                   ; 2771 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2773 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2776 _ 8B. 40, 10
        add     eax, 1                                  ; 2779 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 277C _ 89. 45, 10
?_112:  cmp     dword [ebp+10H], -1                     ; 277F _ 83. 7D, 10, FF
        jge     ?_113                                   ; 2783 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2785 _ C7. 45, 10, FFFFFFFF
?_113:  mov     eax, dword [ebp+0CH]                    ; 278C _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 278F _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2792 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2795 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2798 _ 3B. 45, 10
        jle     ?_120                                   ; 279B _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 27A1 _ 83. 7D, 10, 00
        js      ?_116                                   ; 27A5 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 27AB _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 27AE _ 89. 45, E4
        jmp     ?_115                                   ; 27B1 _ EB, 34

?_114:  mov     eax, dword [ebp-1CH]                    ; 27B3 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 27B6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27B9 _ 8B. 45, 08
        add     edx, 4                                  ; 27BC _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 27BF _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 27C3 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 27C6 _ 8B. 4D, E4
        add     ecx, 4                                  ; 27C9 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 27CC _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 27D0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 27D3 _ 8B. 55, E4
        add     edx, 4                                  ; 27D6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 27D9 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 27DD _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 27E0 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 27E3 _ 83. 6D, E4, 01
?_115:  mov     eax, dword [ebp-1CH]                    ; 27E7 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 27EA _ 3B. 45, 10
        jg      ?_114                                   ; 27ED _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 27EF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27F2 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 27F5 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 27F8 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 27FB _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 27FF _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2802 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2805 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2808 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 280B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 280E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2811 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2814 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2817 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 281A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 281D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2820 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2823 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2826 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2829 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 282C _ 8B. 40, 0C
        sub     esp, 8                                  ; 282F _ 83. EC, 08
        push    esi                                     ; 2832 _ 56
        push    ebx                                     ; 2833 _ 53
        push    ecx                                     ; 2834 _ 51
        push    edx                                     ; 2835 _ 52
        push    eax                                     ; 2836 _ 50
        push    dword [ebp+8H]                          ; 2837 _ FF. 75, 08
        call    sheet_refreshmap                        ; 283A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 283F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2842 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2845 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2848 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 284B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 284E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2851 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2854 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2857 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 285A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 285D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2860 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2863 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2866 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2869 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 286C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 286F _ 8B. 40, 0C
        sub     esp, 4                                  ; 2872 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2875 _ FF. 75, F4
        push    esi                                     ; 2878 _ 56
        push    ebx                                     ; 2879 _ 53
        push    ecx                                     ; 287A _ 51
        push    edx                                     ; 287B _ 52
        push    eax                                     ; 287C _ 50
        push    dword [ebp+8H]                          ; 287D _ FF. 75, 08
        call    sheet_refresh_new                       ; 2880 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2885 _ 83. C4, 20
        jmp     ?_127                                   ; 2888 _ E9, 00000244

?_116:  mov     eax, dword [ebp+8H]                     ; 288D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2890 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2893 _ 39. 45, F4
        jge     ?_119                                   ; 2896 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2898 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 289B _ 89. 45, E8
        jmp     ?_118                                   ; 289E _ EB, 34

?_117:  mov     eax, dword [ebp-18H]                    ; 28A0 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 28A3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 28A6 _ 8B. 45, 08
        add     edx, 4                                  ; 28A9 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 28AC _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 28B0 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 28B3 _ 8B. 4D, E8
        add     ecx, 4                                  ; 28B6 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 28B9 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 28BD _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 28C0 _ 8B. 55, E8
        add     edx, 4                                  ; 28C3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 28C6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 28CA _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 28CD _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 28D0 _ 83. 45, E8, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 28D4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28D7 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 28DA _ 39. 45, E8
        jl      ?_117                                   ; 28DD _ 7C, C1
?_119:  mov     eax, dword [ebp+8H]                     ; 28DF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28E2 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 28E5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28E8 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 28EB _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28EE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28F1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28F4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28F7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28FA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28FD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2900 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2903 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2906 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2909 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 290C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 290F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2912 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2915 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2918 _ 83. EC, 08
        push    0                                       ; 291B _ 6A, 00
        push    ebx                                     ; 291D _ 53
        push    ecx                                     ; 291E _ 51
        push    edx                                     ; 291F _ 52
        push    eax                                     ; 2920 _ 50
        push    dword [ebp+8H]                          ; 2921 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2924 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2929 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 292C _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 292F _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2932 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2935 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2938 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 293B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 293E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2941 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2944 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2947 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 294A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 294D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2950 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2953 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2956 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2959 _ 8B. 40, 0C
        sub     esp, 4                                  ; 295C _ 83. EC, 04
        push    esi                                     ; 295F _ 56
        push    0                                       ; 2960 _ 6A, 00
        push    ebx                                     ; 2962 _ 53
        push    ecx                                     ; 2963 _ 51
        push    edx                                     ; 2964 _ 52
        push    eax                                     ; 2965 _ 50
        push    dword [ebp+8H]                          ; 2966 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2969 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 296E _ 83. C4, 20
        jmp     ?_127                                   ; 2971 _ E9, 0000015B

?_120:  mov     eax, dword [ebp-0CH]                    ; 2976 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2979 _ 3B. 45, 10
        jge     ?_127                                   ; 297C _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2982 _ 83. 7D, F4, 00
        js      ?_123                                   ; 2986 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2988 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 298B _ 89. 45, EC
        jmp     ?_122                                   ; 298E _ EB, 34

?_121:  mov     eax, dword [ebp-14H]                    ; 2990 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2993 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2996 _ 8B. 45, 08
        add     edx, 4                                  ; 2999 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 299C _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 29A0 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 29A3 _ 8B. 4D, EC
        add     ecx, 4                                  ; 29A6 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 29A9 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 29AD _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 29B0 _ 8B. 55, EC
        add     edx, 4                                  ; 29B3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29B6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 29BA _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 29BD _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 29C0 _ 83. 45, EC, 01
?_122:  mov     eax, dword [ebp-14H]                    ; 29C4 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 29C7 _ 3B. 45, 10
        jl      ?_121                                   ; 29CA _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 29CC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 29CF _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 29D2 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 29D5 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 29D8 _ 89. 54 88, 04
        jmp     ?_126                                   ; 29DC _ EB, 72

?_123:  cmp     dword [ebp-0CH], 0                      ; 29DE _ 83. 7D, F4, 00
        jns     ?_126                                   ; 29E2 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 29E4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 29E7 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 29EA _ 89. 45, F0
        jmp     ?_125                                   ; 29ED _ EB, 3A

?_124:  mov     eax, dword [ebp-10H]                    ; 29EF _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 29F2 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 29F5 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 29F8 _ 8B. 55, F0
        add     edx, 4                                  ; 29FB _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 29FE _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2A02 _ 8B. 45, 08
        add     ecx, 4                                  ; 2A05 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2A08 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2A0C _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2A0F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A12 _ 8B. 45, 08
        add     edx, 4                                  ; 2A15 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A18 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2A1C _ 8B. 55, F0
        add     edx, 1                                  ; 2A1F _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2A22 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2A25 _ 83. 6D, F0, 01
?_125:  mov     eax, dword [ebp-10H]                    ; 2A29 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2A2C _ 3B. 45, 10
        jge     ?_124                                   ; 2A2F _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2A31 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2A34 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2A37 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2A3A _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2A3D _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2A41 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A44 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2A47 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A4A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2A4D _ 89. 50, 10
?_126:  mov     eax, dword [ebp+0CH]                    ; 2A50 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A53 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A56 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A59 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A5C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A5F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A62 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A65 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A68 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A6B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A6E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A71 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A74 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A77 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2A7A _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2A7D _ FF. 75, 10
        push    ebx                                     ; 2A80 _ 53
        push    ecx                                     ; 2A81 _ 51
        push    edx                                     ; 2A82 _ 52
        push    eax                                     ; 2A83 _ 50
        push    dword [ebp+8H]                          ; 2A84 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2A87 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A8C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A8F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A92 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A95 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A98 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A9B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A9E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2AA1 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2AA4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2AA7 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2AAA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2AAD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AB0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2AB3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2AB6 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2AB9 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2ABC _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2ABF _ FF. 75, 10
        push    ebx                                     ; 2AC2 _ 53
        push    ecx                                     ; 2AC3 _ 51
        push    edx                                     ; 2AC4 _ 52
        push    eax                                     ; 2AC5 _ 50
        push    dword [ebp+8H]                          ; 2AC6 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2AC9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2ACE _ 83. C4, 20
?_127:  nop                                             ; 2AD1 _ 90
        lea     esp, [ebp-8H]                           ; 2AD2 _ 8D. 65, F8
        pop     ebx                                     ; 2AD5 _ 5B
        pop     esi                                     ; 2AD6 _ 5E
        pop     ebp                                     ; 2AD7 _ 5D
        ret                                             ; 2AD8 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2AD9 _ 55
        mov     ebp, esp                                ; 2ADA _ 89. E5
        push    edi                                     ; 2ADC _ 57
        push    esi                                     ; 2ADD _ 56
        push    ebx                                     ; 2ADE _ 53
        sub     esp, 28                                 ; 2ADF _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2AE2 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2AE5 _ 8B. 40, 18
        test    eax, eax                                ; 2AE8 _ 85. C0
        js      ?_128                                   ; 2AEA _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2AEC _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2AEF _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2AF2 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2AF5 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2AF8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AFB _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2AFE _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2B01 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2B04 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2B07 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2B0A _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2B0D _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2B10 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B13 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2B16 _ 8B. 45, 14
        add     edx, eax                                ; 2B19 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B1B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B1E _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2B21 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2B24 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2B27 _ 03. 45, E4
        sub     esp, 4                                  ; 2B2A _ 83. EC, 04
        push    ebx                                     ; 2B2D _ 53
        push    ecx                                     ; 2B2E _ 51
        push    edi                                     ; 2B2F _ 57
        push    esi                                     ; 2B30 _ 56
        push    edx                                     ; 2B31 _ 52
        push    eax                                     ; 2B32 _ 50
        push    dword [ebp+8H]                          ; 2B33 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2B36 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B3B _ 83. C4, 20
?_128:  mov     eax, 0                                  ; 2B3E _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2B43 _ 8D. 65, F4
        pop     ebx                                     ; 2B46 _ 5B
        pop     esi                                     ; 2B47 _ 5E
        pop     edi                                     ; 2B48 _ 5F
        pop     ebp                                     ; 2B49 _ 5D
        ret                                             ; 2B4A _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2B4B _ 55
        mov     ebp, esp                                ; 2B4C _ 89. E5
        push    esi                                     ; 2B4E _ 56
        push    ebx                                     ; 2B4F _ 53
        sub     esp, 16                                 ; 2B50 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2B53 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B56 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2B59 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2B5C _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2B5F _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2B62 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2B65 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2B68 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2B6B _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2B6E _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2B71 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2B74 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B77 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B7A _ 8B. 40, 18
        test    eax, eax                                ; 2B7D _ 85. C0
        js      ?_129                                   ; 2B7F _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2B85 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2B88 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B8B _ 8B. 45, F4
        add     edx, eax                                ; 2B8E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B90 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2B93 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2B96 _ 8B. 45, F0
        add     eax, ecx                                ; 2B99 _ 01. C8
        sub     esp, 8                                  ; 2B9B _ 83. EC, 08
        push    0                                       ; 2B9E _ 6A, 00
        push    edx                                     ; 2BA0 _ 52
        push    eax                                     ; 2BA1 _ 50
        push    dword [ebp-0CH]                         ; 2BA2 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2BA5 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2BA8 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2BAB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BB0 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BB3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BB6 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2BB9 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2BBC _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2BBF _ 8B. 55, 14
        add     ecx, edx                                ; 2BC2 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2BC4 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2BC7 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2BCA _ 8B. 55, 10
        add     edx, ebx                                ; 2BCD _ 01. DA
        sub     esp, 8                                  ; 2BCF _ 83. EC, 08
        push    eax                                     ; 2BD2 _ 50
        push    ecx                                     ; 2BD3 _ 51
        push    edx                                     ; 2BD4 _ 52
        push    dword [ebp+14H]                         ; 2BD5 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2BD8 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2BDB _ FF. 75, 08
        call    sheet_refreshmap                        ; 2BDE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BE3 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BE6 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BE9 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2BEC _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2BEF _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2BF2 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2BF5 _ 8B. 45, F4
        add     edx, eax                                ; 2BF8 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2BFA _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2BFD _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2C00 _ 8B. 45, F0
        add     eax, ebx                                ; 2C03 _ 01. D8
        sub     esp, 4                                  ; 2C05 _ 83. EC, 04
        push    ecx                                     ; 2C08 _ 51
        push    0                                       ; 2C09 _ 6A, 00
        push    edx                                     ; 2C0B _ 52
        push    eax                                     ; 2C0C _ 50
        push    dword [ebp-0CH]                         ; 2C0D _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2C10 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2C13 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C16 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C1B _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2C1E _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2C21 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2C24 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C27 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2C2A _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2C2D _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2C30 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2C33 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2C35 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2C38 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2C3B _ 8B. 4D, 10
        add     ecx, esi                                ; 2C3E _ 01. F1
        sub     esp, 4                                  ; 2C40 _ 83. EC, 04
        push    edx                                     ; 2C43 _ 52
        push    eax                                     ; 2C44 _ 50
        push    ebx                                     ; 2C45 _ 53
        push    ecx                                     ; 2C46 _ 51
        push    dword [ebp+14H]                         ; 2C47 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2C4A _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2C4D _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C50 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C55 _ 83. C4, 20
?_129:  nop                                             ; 2C58 _ 90
        lea     esp, [ebp-8H]                           ; 2C59 _ 8D. 65, F8
        pop     ebx                                     ; 2C5C _ 5B
        pop     esi                                     ; 2C5D _ 5E
        pop     ebp                                     ; 2C5E _ 5D
        ret                                             ; 2C5F _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2C60 _ 55
        mov     ebp, esp                                ; 2C61 _ 89. E5
        sub     esp, 48                                 ; 2C63 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2C66 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C69 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2C6B _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2C6E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C71 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2C74 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2C77 _ 83. 7D, 0C, 00
        jns     ?_130                                   ; 2C7B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2C7D _ C7. 45, 0C, 00000000
?_130:  cmp     dword [ebp+10H], 8                      ; 2C84 _ 83. 7D, 10, 08
        jg      ?_131                                   ; 2C88 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2C8A _ C7. 45, 10, 00000000
?_131:  mov     eax, dword [ebp+8H]                     ; 2C91 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C94 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2C97 _ 39. 45, 14
        jle     ?_132                                   ; 2C9A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C9C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C9F _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2CA2 _ 89. 45, 14
?_132:  mov     eax, dword [ebp+8H]                     ; 2CA5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2CA8 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2CAB _ 39. 45, 18
        jle     ?_133                                   ; 2CAE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2CB0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2CB3 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2CB6 _ 89. 45, 18
?_133:  mov     eax, dword [ebp+1CH]                    ; 2CB9 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2CBC _ 89. 45, DC
        jmp     ?_140                                   ; 2CBF _ E9, 00000118

?_134:  mov     eax, dword [ebp+8H]                     ; 2CC4 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2CC7 _ 8B. 55, DC
        add     edx, 4                                  ; 2CCA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CCD _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2CD1 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2CD4 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2CD7 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2CD9 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2CDC _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2CDF _ 8B. 55, 08
        add     edx, 1044                               ; 2CE2 _ 81. C2, 00000414
        sub     eax, edx                                ; 2CE8 _ 29. D0
        sar     eax, 5                                  ; 2CEA _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2CED _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2CF0 _ C7. 45, E0, 00000000
        jmp     ?_139                                   ; 2CF7 _ E9, 000000CD

?_135:  mov     eax, dword [ebp-10H]                    ; 2CFC _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2CFF _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2D02 _ 8B. 45, E0
        add     eax, edx                                ; 2D05 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2D07 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2D0A _ C7. 45, E4, 00000000
        jmp     ?_138                                   ; 2D11 _ E9, 000000A0

?_136:  mov     eax, dword [ebp-10H]                    ; 2D16 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2D19 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2D1C _ 8B. 45, E4
        add     eax, edx                                ; 2D1F _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2D21 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2D24 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2D27 _ 3B. 45, FC
        jg      ?_137                                   ; 2D2A _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2D30 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2D33 _ 3B. 45, 14
        jge     ?_137                                   ; 2D36 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2D38 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2D3B _ 3B. 45, F8
        jg      ?_137                                   ; 2D3E _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2D40 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2D43 _ 3B. 45, 18
        jge     ?_137                                   ; 2D46 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2D48 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D4B _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2D4E _ 0F AF. 45, E0
        mov     edx, eax                                ; 2D52 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2D54 _ 8B. 45, E4
        add     eax, edx                                ; 2D57 _ 01. D0
        mov     edx, eax                                ; 2D59 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2D5B _ 8B. 45, F4
        add     eax, edx                                ; 2D5E _ 01. D0
        movzx   eax, byte [eax]                         ; 2D60 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2D63 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2D66 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D69 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D6C _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D70 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D72 _ 8B. 45, FC
        add     eax, edx                                ; 2D75 _ 01. D0
        mov     edx, eax                                ; 2D77 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2D79 _ 8B. 45, EC
        add     eax, edx                                ; 2D7C _ 01. D0
        movzx   eax, byte [eax]                         ; 2D7E _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2D81 _ 38. 45, DA
        jnz     ?_137                                   ; 2D84 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2D86 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2D8A _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2D8D _ 8B. 40, 14
        cmp     edx, eax                                ; 2D90 _ 39. C2
        jz      ?_137                                   ; 2D92 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2D94 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D97 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D9A _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D9E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2DA0 _ 8B. 45, FC
        add     eax, edx                                ; 2DA3 _ 01. D0
        mov     edx, eax                                ; 2DA5 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2DA7 _ 8B. 45, E8
        add     edx, eax                                ; 2DAA _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2DAC _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2DB0 _ 88. 02
?_137:  add     dword [ebp-1CH], 1                      ; 2DB2 _ 83. 45, E4, 01
?_138:  mov     eax, dword [ebp-10H]                    ; 2DB6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2DB9 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2DBC _ 39. 45, E4
        jl      ?_136                                   ; 2DBF _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2DC5 _ 83. 45, E0, 01
?_139:  mov     eax, dword [ebp-10H]                    ; 2DC9 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2DCC _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2DCF _ 39. 45, E0
        jl      ?_135                                   ; 2DD2 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2DD8 _ 83. 45, DC, 01
?_140:  mov     eax, dword [ebp-24H]                    ; 2DDC _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2DDF _ 3B. 45, 20
        jle     ?_134                                   ; 2DE2 _ 0F 8E, FFFFFEDC
        nop                                             ; 2DE8 _ 90
        leave                                           ; 2DE9 _ C9
        ret                                             ; 2DEA _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2DEB _ 55
        mov     ebp, esp                                ; 2DEC _ 89. E5
        sub     esp, 64                                 ; 2DEE _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2DF1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2DF4 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2DF7 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2DFA _ 83. 7D, 0C, 00
        jns     ?_141                                   ; 2DFE _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2E00 _ C7. 45, 0C, 00000000
?_141:  mov     eax, dword [ebp+8H]                     ; 2E07 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E0A _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2E0D _ 39. 45, 0C
        jle     ?_142                                   ; 2E10 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2E12 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E15 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2E18 _ 89. 45, 0C
?_142:  cmp     dword [ebp+10H], 0                      ; 2E1B _ 83. 7D, 10, 00
        jns     ?_143                                   ; 2E1F _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2E21 _ C7. 45, 10, 00000000
?_143:  mov     eax, dword [ebp+8H]                     ; 2E28 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E2B _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2E2E _ 39. 45, 10
        jle     ?_144                                   ; 2E31 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2E33 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E36 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2E39 _ 89. 45, 10
?_144:  mov     eax, dword [ebp+1CH]                    ; 2E3C _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2E3F _ 89. 45, E0
        jmp     ?_155                                   ; 2E42 _ E9, 00000140

?_145:  mov     eax, dword [ebp+8H]                     ; 2E47 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2E4A _ 8B. 55, E0
        add     edx, 4                                  ; 2E4D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E50 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2E54 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2E57 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2E5A _ 8B. 55, 08
        add     edx, 1044                               ; 2E5D _ 81. C2, 00000414
        sub     eax, edx                                ; 2E63 _ 29. D0
        sar     eax, 5                                  ; 2E65 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2E68 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2E6B _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2E6E _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2E70 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2E73 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E76 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2E79 _ 8B. 55, 0C
        sub     edx, eax                                ; 2E7C _ 29. C2
        mov     eax, edx                                ; 2E7E _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2E80 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2E83 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E86 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2E89 _ 8B. 55, 10
        sub     edx, eax                                ; 2E8C _ 29. C2
        mov     eax, edx                                ; 2E8E _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2E90 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2E93 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E96 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2E99 _ 8B. 55, 14
        sub     edx, eax                                ; 2E9C _ 29. C2
        mov     eax, edx                                ; 2E9E _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2EA0 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2EA3 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2EA6 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2EA9 _ 8B. 55, 18
        sub     edx, eax                                ; 2EAC _ 29. C2
        mov     eax, edx                                ; 2EAE _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2EB0 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2EB3 _ 83. 7D, D0, 00
        jns     ?_146                                   ; 2EB7 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2EB9 _ C7. 45, D0, 00000000
?_146:  cmp     dword [ebp-2CH], 0                      ; 2EC0 _ 83. 7D, D4, 00
        jns     ?_147                                   ; 2EC4 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2EC6 _ C7. 45, D4, 00000000
?_147:  mov     eax, dword [ebp-10H]                    ; 2ECD _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2ED0 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2ED3 _ 39. 45, D8
        jle     ?_148                                   ; 2ED6 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2ED8 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2EDB _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2EDE _ 89. 45, D8
?_148:  mov     eax, dword [ebp-10H]                    ; 2EE1 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2EE4 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2EE7 _ 39. 45, DC
        jle     ?_149                                   ; 2EEA _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2EEC _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2EEF _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2EF2 _ 89. 45, DC
?_149:  mov     eax, dword [ebp-2CH]                    ; 2EF5 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2EF8 _ 89. 45, E4
        jmp     ?_154                                   ; 2EFB _ EB, 7A

?_150:  mov     eax, dword [ebp-10H]                    ; 2EFD _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2F00 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2F03 _ 8B. 45, E4
        add     eax, edx                                ; 2F06 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2F08 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2F0B _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2F0E _ 89. 45, E8
        jmp     ?_153                                   ; 2F11 _ EB, 58

?_151:  mov     eax, dword [ebp-10H]                    ; 2F13 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2F16 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2F19 _ 8B. 45, E8
        add     eax, edx                                ; 2F1C _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2F1E _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2F21 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2F24 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2F27 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2F2B _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2F2D _ 8B. 45, E8
        add     eax, edx                                ; 2F30 _ 01. D0
        mov     edx, eax                                ; 2F32 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2F34 _ 8B. 45, F4
        add     eax, edx                                ; 2F37 _ 01. D0
        movzx   eax, byte [eax]                         ; 2F39 _ 0F B6. 00
        movzx   edx, al                                 ; 2F3C _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2F3F _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2F42 _ 8B. 40, 14
        cmp     edx, eax                                ; 2F45 _ 39. C2
        jz      ?_152                                   ; 2F47 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2F49 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F4C _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2F4F _ 0F AF. 45, F8
        mov     edx, eax                                ; 2F53 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2F55 _ 8B. 45, FC
        add     eax, edx                                ; 2F58 _ 01. D0
        mov     edx, eax                                ; 2F5A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2F5C _ 8B. 45, EC
        add     edx, eax                                ; 2F5F _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2F61 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2F65 _ 88. 02
?_152:  add     dword [ebp-18H], 1                      ; 2F67 _ 83. 45, E8, 01
?_153:  mov     eax, dword [ebp-18H]                    ; 2F6B _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2F6E _ 3B. 45, D8
        jl      ?_151                                   ; 2F71 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2F73 _ 83. 45, E4, 01
?_154:  mov     eax, dword [ebp-1CH]                    ; 2F77 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2F7A _ 3B. 45, DC
        jl      ?_150                                   ; 2F7D _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2F83 _ 83. 45, E0, 01
?_155:  mov     eax, dword [ebp+8H]                     ; 2F87 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F8A _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2F8D _ 39. 45, E0
        jle     ?_145                                   ; 2F90 _ 0F 8E, FFFFFEB1
        nop                                             ; 2F96 _ 90
        leave                                           ; 2F97 _ C9
        ret                                             ; 2F98 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2F99 _ 55
        mov     ebp, esp                                ; 2F9A _ 89. E5
        sub     esp, 24                                 ; 2F9C _ 83. EC, 18
        sub     esp, 8                                  ; 2F9F _ 83. EC, 08
        push    52                                      ; 2FA2 _ 6A, 34
        push    67                                      ; 2FA4 _ 6A, 43
        call    io_out8                                 ; 2FA6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FAB _ 83. C4, 10
        sub     esp, 8                                  ; 2FAE _ 83. EC, 08
        push    156                                     ; 2FB1 _ 68, 0000009C
        push    64                                      ; 2FB6 _ 6A, 40
        call    io_out8                                 ; 2FB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FBD _ 83. C4, 10
        sub     esp, 8                                  ; 2FC0 _ 83. EC, 08
        push    46                                      ; 2FC3 _ 6A, 2E
        push    64                                      ; 2FC5 _ 6A, 40
        call    io_out8                                 ; 2FC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FCC _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2FCF _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2FD9 _ C7. 45, F4, 00000000
        jmp     ?_157                                   ; 2FE0 _ EB, 26

?_156:  mov     eax, dword [ebp-0CH]                    ; 2FE2 _ 8B. 45, F4
        shl     eax, 4                                  ; 2FE5 _ C1. E0, 04
        add     eax, ?_225                              ; 2FE8 _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 2FED _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2FF3 _ 8B. 45, F4
        shl     eax, 4                                  ; 2FF6 _ C1. E0, 04
        add     eax, ?_226                              ; 2FF9 _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 2FFE _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3004 _ 83. 45, F4, 01
?_157:  cmp     dword [ebp-0CH], 499                    ; 3008 _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 300F _ 7E, D1
        nop                                             ; 3011 _ 90
        leave                                           ; 3012 _ C9
        ret                                             ; 3013 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3014 _ 55
        mov     ebp, esp                                ; 3015 _ 89. E5
        sub     esp, 16                                 ; 3017 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 301A _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 3021 _ EB, 36

?_158:  mov     eax, dword [ebp-4H]                     ; 3023 _ 8B. 45, FC
        shl     eax, 4                                  ; 3026 _ C1. E0, 04
        add     eax, ?_225                              ; 3029 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 302E _ 8B. 00
        test    eax, eax                                ; 3030 _ 85. C0
        jnz     ?_159                                   ; 3032 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3034 _ 8B. 45, FC
        shl     eax, 4                                  ; 3037 _ C1. E0, 04
        add     eax, ?_225                              ; 303A _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 303F _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3045 _ 8B. 45, FC
        shl     eax, 4                                  ; 3048 _ C1. E0, 04
        add     eax, timerctl                           ; 304B _ 05, 00000280(d)
        add     eax, 4                                  ; 3050 _ 83. C0, 04
        jmp     ?_161                                   ; 3053 _ EB, 12

?_159:  add     dword [ebp-4H], 1                       ; 3055 _ 83. 45, FC, 01
?_160:  cmp     dword [ebp-4H], 499                     ; 3059 _ 81. 7D, FC, 000001F3
        jle     ?_158                                   ; 3060 _ 7E, C1
        mov     eax, 0                                  ; 3062 _ B8, 00000000
?_161:  leave                                           ; 3067 _ C9
        ret                                             ; 3068 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3069 _ 55
        mov     ebp, esp                                ; 306A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 306C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 306F _ C7. 40, 04, 00000000
        nop                                             ; 3076 _ 90
        pop     ebp                                     ; 3077 _ 5D
        ret                                             ; 3078 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3079 _ 55
        mov     ebp, esp                                ; 307A _ 89. E5
        sub     esp, 4                                  ; 307C _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 307F _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3082 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3085 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3088 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 308B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 308E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3091 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3095 _ 88. 50, 0C
        nop                                             ; 3098 _ 90
        leave                                           ; 3099 _ C9
        ret                                             ; 309A _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 309B _ 55
        mov     ebp, esp                                ; 309C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 309E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30A1 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 30A4 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30A6 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 30A9 _ C7. 40, 04, 00000002
        nop                                             ; 30B0 _ 90
        pop     ebp                                     ; 30B1 _ 5D
        ret                                             ; 30B2 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 30B3 _ 55
        mov     ebp, esp                                ; 30B4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30B6 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30B9 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 30BC _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30BE _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 30C1 _ C7. 40, 04, 00000002
        nop                                             ; 30C8 _ 90
        pop     ebp                                     ; 30C9 _ 5D
        ret                                             ; 30CA _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 30CB _ 55
        mov     ebp, esp                                ; 30CC _ 89. E5
        mov     eax, timerctl                           ; 30CE _ B8, 00000280(d)
        pop     ebp                                     ; 30D3 _ 5D
        ret                                             ; 30D4 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 30D5 _ 55
        mov     ebp, esp                                ; 30D6 _ 89. E5
        push    ebx                                     ; 30D8 _ 53
        sub     esp, 20                                 ; 30D9 _ 83. EC, 14
        sub     esp, 8                                  ; 30DC _ 83. EC, 08
        push    32                                      ; 30DF _ 6A, 20
        push    32                                      ; 30E1 _ 6A, 20
        call    io_out8                                 ; 30E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30E8 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 30EB _ A1, 00000280(d)
        add     eax, 1                                  ; 30F0 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 30F3 _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 30F8 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 30FF _ C7. 45, F4, 00000000
        jmp     ?_165                                   ; 3106 _ E9, 000000AD

?_162:  mov     eax, dword [ebp-0CH]                    ; 310B _ 8B. 45, F4
        shl     eax, 4                                  ; 310E _ C1. E0, 04
        add     eax, ?_225                              ; 3111 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 3116 _ 8B. 00
        cmp     eax, 2                                  ; 3118 _ 83. F8, 02
        jne     ?_163                                   ; 311B _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 3121 _ 8B. 45, F4
        shl     eax, 4                                  ; 3124 _ C1. E0, 04
        add     eax, ?_224                              ; 3127 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 312C _ 8B. 00
        lea     edx, [eax-1H]                           ; 312E _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3131 _ 8B. 45, F4
        shl     eax, 4                                  ; 3134 _ C1. E0, 04
        add     eax, ?_224                              ; 3137 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 313C _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 313E _ 8B. 45, F4
        shl     eax, 4                                  ; 3141 _ C1. E0, 04
        add     eax, ?_224                              ; 3144 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 3149 _ 8B. 00
        test    eax, eax                                ; 314B _ 85. C0
        jnz     ?_163                                   ; 314D _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 314F _ 8B. 45, F4
        shl     eax, 4                                  ; 3152 _ C1. E0, 04
        add     eax, ?_225                              ; 3155 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 315A _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3160 _ 8B. 45, F4
        shl     eax, 4                                  ; 3163 _ C1. E0, 04
        add     eax, ?_227                              ; 3166 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 316B _ 0F B6. 00
        movzx   edx, al                                 ; 316E _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3171 _ 8B. 45, F4
        shl     eax, 4                                  ; 3174 _ C1. E0, 04
        add     eax, ?_226                              ; 3177 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 317C _ 8B. 00
        sub     esp, 8                                  ; 317E _ 83. EC, 08
        push    edx                                     ; 3181 _ 52
        push    eax                                     ; 3182 _ 50
        call    fifo8_put                               ; 3183 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3188 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 318B _ 8B. 45, F4
        shl     eax, 4                                  ; 318E _ C1. E0, 04
        add     eax, timerctl                           ; 3191 _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 3196 _ 8D. 58, 04
        call    getTaskTimer                            ; 3199 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 319E _ 39. C3
        jnz     ?_163                                   ; 31A0 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 31A2 _ C7. 45, F0, 00000001
?_163:  cmp     dword [ebp-10H], 1                      ; 31A9 _ 83. 7D, F0, 01
        jnz     ?_164                                   ; 31AD _ 75, 05
        call    task_switch                             ; 31AF _ E8, FFFFFFFC(rel)
?_164:  add     dword [ebp-0CH], 1                      ; 31B4 _ 83. 45, F4, 01
?_165:  cmp     dword [ebp-0CH], 499                    ; 31B8 _ 81. 7D, F4, 000001F3
        jle     ?_162                                   ; 31BF _ 0F 8E, FFFFFF46
        nop                                             ; 31C5 _ 90
        mov     ebx, dword [ebp-4H]                     ; 31C6 _ 8B. 5D, FC
        leave                                           ; 31C9 _ C9
        ret                                             ; 31CA _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 31CB _ 55
        mov     ebp, esp                                ; 31CC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31CE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 31D1 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 31D4 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 31D7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 31DA _ 8B. 55, 10
        mov     dword [eax], edx                        ; 31DD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 31DF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 31E2 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 31E5 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 31E8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 31EB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 31F2 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31F5 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 31FC _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 31FF _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3206 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3209 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 320C _ 89. 50, 18
        nop                                             ; 320F _ 90
        pop     ebp                                     ; 3210 _ 5D
        ret                                             ; 3211 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3212 _ 55
        mov     ebp, esp                                ; 3213 _ 89. E5
        sub     esp, 24                                 ; 3215 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3218 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 321B _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 321E _ 83. 7D, 08, 00
        jnz     ?_166                                   ; 3222 _ 75, 0A
        mov     eax, 4294967295                         ; 3224 _ B8, FFFFFFFF
        jmp     ?_170                                   ; 3229 _ E9, 000000A0

?_166:  mov     eax, dword [ebp+8H]                     ; 322E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3231 _ 8B. 40, 10
        test    eax, eax                                ; 3234 _ 85. C0
        jnz     ?_167                                   ; 3236 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3238 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 323B _ 8B. 40, 14
        or      eax, 01H                                ; 323E _ 83. C8, 01
        mov     edx, eax                                ; 3241 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3243 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3246 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3249 _ B8, FFFFFFFF
        jmp     ?_170                                   ; 324E _ EB, 7E

?_167:  mov     eax, dword [ebp+8H]                     ; 3250 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3253 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3255 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3258 _ 8B. 40, 08
        add     edx, eax                                ; 325B _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 325D _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3261 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3263 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3266 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3269 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 326C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 326F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3272 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3275 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3278 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 327B _ 8B. 40, 0C
        cmp     edx, eax                                ; 327E _ 39. C2
        jl      ?_168                                   ; 3280 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3282 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3285 _ C7. 40, 08, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 328C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 328F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3292 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3295 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3298 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 329B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 329E _ 8B. 40, 18
        test    eax, eax                                ; 32A1 _ 85. C0
        jz      ?_169                                   ; 32A3 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 32A5 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 32A8 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 32AB _ 8B. 40, 04
        cmp     eax, 2                                  ; 32AE _ 83. F8, 02
        jz      ?_169                                   ; 32B1 _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 32B3 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 32B6 _ 8B. 40, 18
        sub     esp, 4                                  ; 32B9 _ 83. EC, 04
        push    0                                       ; 32BC _ 6A, 00
        push    0                                       ; 32BE _ 6A, 00
        push    eax                                     ; 32C0 _ 50
        call    task_run                                ; 32C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 32C6 _ 83. C4, 10
?_169:  mov     eax, 1                                  ; 32C9 _ B8, 00000001
?_170:  leave                                           ; 32CE _ C9
        ret                                             ; 32CF _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 32D0 _ 55
        mov     ebp, esp                                ; 32D1 _ 89. E5
        sub     esp, 16                                 ; 32D3 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 32D6 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 32D9 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 32DC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32DF _ 8B. 40, 0C
        cmp     edx, eax                                ; 32E2 _ 39. C2
        jnz     ?_171                                   ; 32E4 _ 75, 07
        mov     eax, 4294967295                         ; 32E6 _ B8, FFFFFFFF
        jmp     ?_173                                   ; 32EB _ EB, 51

?_171:  mov     eax, dword [ebp+8H]                     ; 32ED _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 32F0 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 32F2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 32F5 _ 8B. 40, 04
        add     eax, edx                                ; 32F8 _ 01. D0
        movzx   eax, byte [eax]                         ; 32FA _ 0F B6. 00
        movzx   eax, al                                 ; 32FD _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3300 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3303 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3306 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3309 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 330C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 330F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3312 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3315 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3318 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 331B _ 8B. 40, 0C
        cmp     edx, eax                                ; 331E _ 39. C2
        jl      ?_172                                   ; 3320 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3322 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3325 _ C7. 40, 04, 00000000
?_172:  mov     eax, dword [ebp+8H]                     ; 332C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 332F _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3332 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3335 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3338 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 333B _ 8B. 45, FC
?_173:  leave                                           ; 333E _ C9
        ret                                             ; 333F _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3340 _ 55
        mov     ebp, esp                                ; 3341 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3343 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3346 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3349 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 334C _ 8B. 40, 10
        sub     edx, eax                                ; 334F _ 29. C2
        mov     eax, edx                                ; 3351 _ 89. D0
        pop     ebp                                     ; 3353 _ 5D
        ret                                             ; 3354 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3355 _ 55
        mov     ebp, esp                                ; 3356 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3358 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_174                                   ; 335F _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3361 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3368 _ 8B. 45, 0C
        shr     eax, 12                                 ; 336B _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 336E _ 89. 45, 0C
?_174:  mov     eax, dword [ebp+0CH]                    ; 3371 _ 8B. 45, 0C
        mov     edx, eax                                ; 3374 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3376 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3379 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 337C _ 8B. 45, 10
        mov     edx, eax                                ; 337F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3381 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3384 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3388 _ 8B. 45, 10
        sar     eax, 16                                 ; 338B _ C1. F8, 10
        mov     edx, eax                                ; 338E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3390 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3393 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3396 _ 8B. 45, 14
        mov     edx, eax                                ; 3399 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 339B _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 339E _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 33A1 _ 8B. 45, 0C
        shr     eax, 16                                 ; 33A4 _ C1. E8, 10
        and     eax, 0FH                                ; 33A7 _ 83. E0, 0F
        mov     edx, eax                                ; 33AA _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 33AC _ 8B. 45, 14
        sar     eax, 8                                  ; 33AF _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 33B2 _ 83. E0, F0
        or      eax, edx                                ; 33B5 _ 09. D0
        mov     edx, eax                                ; 33B7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 33B9 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 33BC _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 33BF _ 8B. 45, 10
        shr     eax, 24                                 ; 33C2 _ C1. E8, 18
        mov     edx, eax                                ; 33C5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 33C7 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 33CA _ 88. 50, 07
        nop                                             ; 33CD _ 90
        pop     ebp                                     ; 33CE _ 5D
        ret                                             ; 33CF _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 33D0 _ 55
        mov     ebp, esp                                ; 33D1 _ 89. E5
        mov     eax, dword [task_timer]                 ; 33D3 _ A1, 000021C4(d)
        pop     ebp                                     ; 33D8 _ 5D
        ret                                             ; 33D9 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 33DA _ 55
        mov     ebp, esp                                ; 33DB _ 89. E5
        sub     esp, 16                                 ; 33DD _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 33E0 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 33E6 _ 8B. 55, 08
        mov     eax, edx                                ; 33E9 _ 89. D0
        shl     eax, 2                                  ; 33EB _ C1. E0, 02
        add     eax, edx                                ; 33EE _ 01. D0
        shl     eax, 2                                  ; 33F0 _ C1. E0, 02
        add     eax, ecx                                ; 33F3 _ 01. C8
        add     eax, 8                                  ; 33F5 _ 83. C0, 08
        mov     dword [eax], 0                          ; 33F8 _ C7. 00, 00000000
        mov     ecx, dword [taskctl]                    ; 33FE _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 3404 _ 8B. 55, 08
        mov     eax, edx                                ; 3407 _ 89. D0
        shl     eax, 2                                  ; 3409 _ C1. E0, 02
        add     eax, edx                                ; 340C _ 01. D0
        shl     eax, 2                                  ; 340E _ C1. E0, 02
        add     eax, ecx                                ; 3411 _ 01. C8
        add     eax, 12                                 ; 3413 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3416 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 341C _ C7. 45, FC, 00000000
        jmp     ?_176                                   ; 3423 _ EB, 21

?_175:  mov     ecx, dword [taskctl]                    ; 3425 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 342B _ 8B. 55, FC
        mov     eax, edx                                ; 342E _ 89. D0
        add     eax, eax                                ; 3430 _ 01. C0
        add     eax, edx                                ; 3432 _ 01. D0
        shl     eax, 3                                  ; 3434 _ C1. E0, 03
        add     eax, ecx                                ; 3437 _ 01. C8
        add     eax, 16                                 ; 3439 _ 83. C0, 10
        mov     dword [eax], 0                          ; 343C _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3442 _ 83. 45, FC, 01
?_176:  cmp     dword [ebp-4H], 2                       ; 3446 _ 83. 7D, FC, 02
        jle     ?_175                                   ; 344A _ 7E, D9
        nop                                             ; 344C _ 90
        leave                                           ; 344D _ C9
        ret                                             ; 344E _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 344F _ 55
        mov     ebp, esp                                ; 3450 _ 89. E5
        sub     esp, 24                                 ; 3452 _ 83. EC, 18
        call    get_addr_gdt                            ; 3455 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 345A _ 89. 45, F0
        sub     esp, 8                                  ; 345D _ 83. EC, 08
        push    668                                     ; 3460 _ 68, 0000029C
        push    dword [ebp+8H]                          ; 3465 _ FF. 75, 08
        call    memman_alloc_4K                         ; 3468 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 346D _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3470 _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 3475 _ C7. 45, EC, 00000000
        jmp     ?_178                                   ; 347C _ EB, 73

?_177:  mov     edx, dword [taskctl]                    ; 347E _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 3484 _ 8B. 45, EC
        imul    eax, eax, 120                           ; 3487 _ 6B. C0, 78
        add     eax, edx                                ; 348A _ 01. D0
        add     eax, 72                                 ; 348C _ 83. C0, 48
        mov     dword [eax], 0                          ; 348F _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3495 _ 8B. 45, EC
        add     eax, 7                                  ; 3498 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 349B _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 34A1 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 34A8 _ 8B. 45, EC
        imul    eax, eax, 120                           ; 34AB _ 6B. C0, 78
        add     eax, ecx                                ; 34AE _ 01. C8
        add     eax, 68                                 ; 34B0 _ 83. C0, 44
        mov     dword [eax], edx                        ; 34B3 _ 89. 10
        mov     eax, dword [taskctl]                    ; 34B5 _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 34BA _ 8B. 55, EC
        imul    edx, edx, 120                           ; 34BD _ 6B. D2, 78
        add     edx, 80                                 ; 34C0 _ 83. C2, 50
        add     eax, edx                                ; 34C3 _ 01. D0
        add     eax, 4                                  ; 34C5 _ 83. C0, 04
        mov     ecx, eax                                ; 34C8 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 34CA _ 8B. 45, EC
        add     eax, 7                                  ; 34CD _ 83. C0, 07
        lea     edx, [eax*8]                            ; 34D0 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 34D7 _ 8B. 45, F0
        add     eax, edx                                ; 34DA _ 01. D0
        push    137                                     ; 34DC _ 68, 00000089
        push    ecx                                     ; 34E1 _ 51
        push    103                                     ; 34E2 _ 6A, 67
        push    eax                                     ; 34E4 _ 50
        call    set_segmdesc                            ; 34E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 34EA _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 34ED _ 83. 45, EC, 01
?_178:  cmp     dword [ebp-14H], 4                      ; 34F1 _ 83. 7D, EC, 04
        jle     ?_177                                   ; 34F5 _ 7E, 87
        call    task_alloc                              ; 34F7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 34FC _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 34FF _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3502 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3509 _ 8B. 45, F4
        mov     dword [eax+8H], 100                     ; 350C _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-0CH]                    ; 3513 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3516 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 351D _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3520 _ FF. 75, F4
        call    task_add                                ; 3523 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3528 _ 83. C4, 10
        call    task_switchsub                          ; 352B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3530 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3533 _ 8B. 00
        sub     esp, 12                                 ; 3535 _ 83. EC, 0C
        push    eax                                     ; 3538 _ 50
        call    load_tr                                 ; 3539 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 353E _ 83. C4, 10
        call    timer_alloc                             ; 3541 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3546 _ A3, 000021C4(d)
        mov     eax, dword [ebp-0CH]                    ; 354B _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 354E _ 8B. 40, 08
        mov     edx, eax                                ; 3551 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3553 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3558 _ 83. EC, 08
        push    edx                                     ; 355B _ 52
        push    eax                                     ; 355C _ 50
        call    timer_setTime                           ; 355D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3562 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3565 _ 8B. 45, F4
        leave                                           ; 3568 _ C9
        ret                                             ; 3569 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 356A _ 55
        mov     ebp, esp                                ; 356B _ 89. E5
        sub     esp, 16                                 ; 356D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3570 _ C7. 45, F8, 00000000
        jmp     ?_181                                   ; 3577 _ E9, 000000E1

?_179:  mov     edx, dword [taskctl]                    ; 357C _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 3582 _ 8B. 45, F8
        imul    eax, eax, 120                           ; 3585 _ 6B. C0, 78
        add     eax, edx                                ; 3588 _ 01. D0
        add     eax, 72                                 ; 358A _ 83. C0, 48
        mov     eax, dword [eax]                        ; 358D _ 8B. 00
        test    eax, eax                                ; 358F _ 85. C0
        jne     ?_180                                   ; 3591 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3597 _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 359C _ 8B. 55, F8
        imul    edx, edx, 120                           ; 359F _ 6B. D2, 78
        add     edx, 64                                 ; 35A2 _ 83. C2, 40
        add     eax, edx                                ; 35A5 _ 01. D0
        add     eax, 4                                  ; 35A7 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 35AA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 35AD _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 35B0 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 35B7 _ 8B. 45, FC
        mov     dword [eax+34H], 514                    ; 35BA _ C7. 40, 34, 00000202
        mov     eax, dword [ebp-4H]                     ; 35C1 _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 35C4 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 35CB _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 35CE _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 35D5 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 35D8 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 35DF _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 35E2 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 35E9 _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 35EC _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 35F3 _ 8B. 45, F8
        add     eax, 1                                  ; 35F6 _ 83. C0, 01
        shl     eax, 9                                  ; 35F9 _ C1. E0, 09
        mov     edx, eax                                ; 35FC _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 35FE _ 8B. 45, FC
        mov     dword [eax+48H], edx                    ; 3601 _ 89. 50, 48
        mov     eax, dword [ebp-4H]                     ; 3604 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3607 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 360E _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3611 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3618 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 361B _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3622 _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 3625 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 362C _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 362F _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3636 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3639 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3640 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3643 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 364A _ 8B. 45, FC
        mov     dword [eax+74H], 1073741824             ; 364D _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-4H]                     ; 3654 _ 8B. 45, FC
        jmp     ?_182                                   ; 3657 _ EB, 13

?_180:  add     dword [ebp-8H], 1                       ; 3659 _ 83. 45, F8, 01
?_181:  cmp     dword [ebp-8H], 4                       ; 365D _ 83. 7D, F8, 04
        jle     ?_179                                   ; 3661 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3667 _ B8, 00000000
?_182:  leave                                           ; 366C _ C9
        ret                                             ; 366D _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 366E _ 55
        mov     ebp, esp                                ; 366F _ 89. E5
        sub     esp, 8                                  ; 3671 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3674 _ 83. 7D, 0C, 00
        jns     ?_183                                   ; 3678 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 367A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 367D _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3680 _ 89. 45, 0C
?_183:  cmp     dword [ebp+10H], 0                      ; 3683 _ 83. 7D, 10, 00
        jle     ?_184                                   ; 3687 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3689 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 368C _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 368F _ 89. 50, 08
?_184:  mov     eax, dword [ebp+8H]                     ; 3692 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3695 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3698 _ 83. F8, 02
        jnz     ?_185                                   ; 369B _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 369D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36A0 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 36A3 _ 39. 45, 0C
        jz      ?_185                                   ; 36A6 _ 74, 0E
        sub     esp, 12                                 ; 36A8 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 36AB _ FF. 75, 08
        call    task_remove                             ; 36AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36B3 _ 83. C4, 10
?_185:  mov     eax, dword [ebp+8H]                     ; 36B6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 36B9 _ 8B. 40, 04
        cmp     eax, 2                                  ; 36BC _ 83. F8, 02
        jz      ?_186                                   ; 36BF _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 36C1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 36C4 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 36C7 _ 89. 50, 0C
        sub     esp, 12                                 ; 36CA _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 36CD _ FF. 75, 08
        call    task_add                                ; 36D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36D5 _ 83. C4, 10
?_186:  mov     eax, dword [taskctl]                    ; 36D8 _ A1, 000021C8(d)
        mov     dword [eax+4H], 1                       ; 36DD _ C7. 40, 04, 00000001
        nop                                             ; 36E4 _ 90
        leave                                           ; 36E5 _ C9
        ret                                             ; 36E6 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 36E7 _ 55
        mov     ebp, esp                                ; 36E8 _ 89. E5
        sub     esp, 24                                 ; 36EA _ 83. EC, 18
        mov     ecx, dword [taskctl]                    ; 36ED _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 36F3 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 36F8 _ 8B. 10
        mov     eax, edx                                ; 36FA _ 89. D0
        shl     eax, 2                                  ; 36FC _ C1. E0, 02
        add     eax, edx                                ; 36FF _ 01. D0
        shl     eax, 2                                  ; 3701 _ C1. E0, 02
        add     eax, ecx                                ; 3704 _ 01. C8
        add     eax, 8                                  ; 3706 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3709 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 370C _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 370F _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3712 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3715 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3719 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 371C _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 371F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3722 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3725 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3728 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 372B _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 372E _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3731 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3734 _ 8B. 00
        cmp     edx, eax                                ; 3736 _ 39. C2
        jnz     ?_187                                   ; 3738 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 373A _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 373D _ C7. 40, 04, 00000000
?_187:  mov     eax, dword [taskctl]                    ; 3744 _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 3749 _ 8B. 40, 04
        test    eax, eax                                ; 374C _ 85. C0
        jz      ?_188                                   ; 374E _ 74, 24
        call    task_switchsub                          ; 3750 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [taskctl]                    ; 3755 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 375B _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 3760 _ 8B. 10
        mov     eax, edx                                ; 3762 _ 89. D0
        shl     eax, 2                                  ; 3764 _ C1. E0, 02
        add     eax, edx                                ; 3767 _ 01. D0
        shl     eax, 2                                  ; 3769 _ C1. E0, 02
        add     eax, ecx                                ; 376C _ 01. C8
        add     eax, 8                                  ; 376E _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3771 _ 89. 45, EC
?_188:  mov     eax, dword [ebp-14H]                    ; 3774 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3777 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 377A _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 377D _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3781 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3784 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3787 _ 8B. 40, 08
        mov     edx, eax                                ; 378A _ 89. C2
        mov     eax, dword [task_timer]                 ; 378C _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3791 _ 83. EC, 08
        push    edx                                     ; 3794 _ 52
        push    eax                                     ; 3795 _ 50
        call    timer_setTime                           ; 3796 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 379B _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 379E _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 37A1 _ 3B. 45, F0
        jz      ?_189                                   ; 37A4 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 37A6 _ 83. 7D, F4, 00
        jz      ?_189                                   ; 37AA _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 37AC _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 37AF _ 8B. 00
        sub     esp, 8                                  ; 37B1 _ 83. EC, 08
        push    eax                                     ; 37B4 _ 50
        push    0                                       ; 37B5 _ 6A, 00
        call    farjmp                                  ; 37B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 37BC _ 83. C4, 10
        nop                                             ; 37BF _ 90
?_189:  nop                                             ; 37C0 _ 90
        leave                                           ; 37C1 _ C9
        ret                                             ; 37C2 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 37C3 _ 55
        mov     ebp, esp                                ; 37C4 _ 89. E5
        sub     esp, 24                                 ; 37C6 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 37C9 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 37D0 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 37D4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 37D7 _ 8B. 40, 04
        cmp     eax, 2                                  ; 37DA _ 83. F8, 02
        jnz     ?_190                                   ; 37DD _ 75, 4C
        call    task_now                                ; 37DF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 37E4 _ 89. 45, F4
        sub     esp, 12                                 ; 37E7 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 37EA _ FF. 75, 08
        call    task_remove                             ; 37ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 37F2 _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 37F5 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 37F9 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 37FC _ 3B. 45, F4
        jnz     ?_190                                   ; 37FF _ 75, 2A
        call    task_switchsub                          ; 3801 _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3806 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 380B _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 380E _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3812 _ 83. 7D, F4, 00
        jz      ?_190                                   ; 3816 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3818 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 381B _ 8B. 00
        sub     esp, 8                                  ; 381D _ 83. EC, 08
        push    eax                                     ; 3820 _ 50
        push    0                                       ; 3821 _ 6A, 00
        call    farjmp                                  ; 3823 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3828 _ 83. C4, 10
?_190:  movsx   eax, byte [ebp-0DH]                     ; 382B _ 0F BE. 45, F3
        leave                                           ; 382F _ C9
        ret                                             ; 3830 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3831 _ 55
        mov     ebp, esp                                ; 3832 _ 89. E5
        sub     esp, 16                                 ; 3834 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3837 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 383D _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 3842 _ 8B. 10
        mov     eax, edx                                ; 3844 _ 89. D0
        shl     eax, 2                                  ; 3846 _ C1. E0, 02
        add     eax, edx                                ; 3849 _ 01. D0
        shl     eax, 2                                  ; 384B _ C1. E0, 02
        add     eax, ecx                                ; 384E _ 01. C8
        add     eax, 8                                  ; 3850 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3853 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3856 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3859 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 385C _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 385F _ 8B. 44 90, 08
        leave                                           ; 3863 _ C9
        ret                                             ; 3864 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3865 _ 55
        mov     ebp, esp                                ; 3866 _ 89. E5
        sub     esp, 16                                 ; 3868 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 386B _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 3871 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3874 _ 8B. 50, 0C
        mov     eax, edx                                ; 3877 _ 89. D0
        shl     eax, 2                                  ; 3879 _ C1. E0, 02
        add     eax, edx                                ; 387C _ 01. D0
        shl     eax, 2                                  ; 387E _ C1. E0, 02
        add     eax, ecx                                ; 3881 _ 01. C8
        add     eax, 8                                  ; 3883 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3886 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3889 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 388C _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 388E _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3891 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3894 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3898 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 389B _ 8B. 00
        lea     edx, [eax+1H]                           ; 389D _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 38A0 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 38A3 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 38A5 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 38A8 _ C7. 40, 04, 00000002
        nop                                             ; 38AF _ 90
        leave                                           ; 38B0 _ C9
        ret                                             ; 38B1 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 38B2 _ 55
        mov     ebp, esp                                ; 38B3 _ 89. E5
        sub     esp, 16                                 ; 38B5 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 38B8 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 38BE _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 38C1 _ 8B. 50, 0C
        mov     eax, edx                                ; 38C4 _ 89. D0
        shl     eax, 2                                  ; 38C6 _ C1. E0, 02
        add     eax, edx                                ; 38C9 _ 01. D0
        shl     eax, 2                                  ; 38CB _ C1. E0, 02
        add     eax, ecx                                ; 38CE _ 01. C8
        add     eax, 8                                  ; 38D0 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 38D3 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 38D6 _ C7. 45, F8, 00000000
        jmp     ?_193                                   ; 38DD _ EB, 23

?_191:  mov     eax, dword [ebp-4H]                     ; 38DF _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 38E2 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 38E5 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 38E9 _ 39. 45, 08
        jnz     ?_192                                   ; 38EC _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 38EE _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 38F1 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 38F4 _ C7. 44 90, 08, 00000000
        jmp     ?_194                                   ; 38FC _ EB, 0E

?_192:  add     dword [ebp-8H], 1                       ; 38FE _ 83. 45, F8, 01
?_193:  mov     eax, dword [ebp-4H]                     ; 3902 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3905 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3907 _ 39. 45, F8
        jl      ?_191                                   ; 390A _ 7C, D3
?_194:  mov     eax, dword [ebp-4H]                     ; 390C _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 390F _ 8B. 00
        lea     edx, [eax-1H]                           ; 3911 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3914 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3917 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3919 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 391C _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 391F _ 39. 45, F8
        jge     ?_195                                   ; 3922 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3924 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3927 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 392A _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 392D _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3930 _ 89. 50, 04
?_195:  mov     eax, dword [ebp-4H]                     ; 3933 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3936 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3939 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 393C _ 8B. 00
        cmp     edx, eax                                ; 393E _ 39. C2
        jl      ?_196                                   ; 3940 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3942 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3945 _ C7. 40, 04, 00000000
?_196:  mov     eax, dword [ebp+8H]                     ; 394C _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 394F _ C7. 40, 04, 00000001
        jmp     ?_198                                   ; 3956 _ EB, 1B

?_197:  mov     eax, dword [ebp-8H]                     ; 3958 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 395B _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 395E _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3961 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3965 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3968 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 396B _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 396F _ 83. 45, F8, 01
?_198:  mov     eax, dword [ebp-4H]                     ; 3973 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3976 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3978 _ 39. 45, F8
        jl      ?_197                                   ; 397B _ 7C, DB
        nop                                             ; 397D _ 90
        leave                                           ; 397E _ C9
        ret                                             ; 397F _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3980 _ 55
        mov     ebp, esp                                ; 3981 _ 89. E5
        sub     esp, 16                                 ; 3983 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3986 _ C7. 45, FC, 00000000
        jmp     ?_200                                   ; 398D _ EB, 22

?_199:  mov     ecx, dword [taskctl]                    ; 398F _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3995 _ 8B. 55, FC
        mov     eax, edx                                ; 3998 _ 89. D0
        shl     eax, 2                                  ; 399A _ C1. E0, 02
        add     eax, edx                                ; 399D _ 01. D0
        shl     eax, 2                                  ; 399F _ C1. E0, 02
        add     eax, ecx                                ; 39A2 _ 01. C8
        add     eax, 8                                  ; 39A4 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 39A7 _ 8B. 00
        test    eax, eax                                ; 39A9 _ 85. C0
        jg      ?_201                                   ; 39AB _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 39AD _ 83. 45, FC, 01
?_200:  cmp     dword [ebp-4H], 2                       ; 39B1 _ 83. 7D, FC, 02
        jle     ?_199                                   ; 39B5 _ 7E, D8
        jmp     ?_202                                   ; 39B7 _ EB, 01

?_201:  nop                                             ; 39B9 _ 90
?_202:  mov     eax, dword [taskctl]                    ; 39BA _ A1, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 39BF _ 8B. 55, FC
        mov     dword [eax], edx                        ; 39C2 _ 89. 10
        mov     eax, dword [taskctl]                    ; 39C4 _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 39C9 _ C7. 40, 04, 00000000
        nop                                             ; 39D0 _ 90
        leave                                           ; 39D1 _ C9
        ret                                             ; 39D2 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 39D3 _ 55
        mov     ebp, esp                                ; 39D4 _ 89. E5
        mov     eax, dword [taskctl]                    ; 39D6 _ A1, 000021C8(d)
        pop     ebp                                     ; 39DB _ 5D
        ret                                             ; 39DC _ C3
; getTaskctl End of function



?_203:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_204:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_205:                                                  ; byte
        db 41H, 00H                                     ; 001E _ A.

?_206:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0020 _ 3[sec].

?_207:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 0027 _ Terminal
        db 00H                                          ; 002F _ .

?_208:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0030 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0038 _ sk B.

?_209:                                                  ; byte
        db 42H, 00H                                     ; 003D _ B.

?_210:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 003F _ Page is:
        db 20H, 00H                                     ; 0047 _  .

?_211:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0049 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0051 _ Low: .

?_212:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0057 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 005F _ High: .

?_213:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0066 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 006E _ w: .

?_214:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0072 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 007A _ gh: .

?_215:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 007F _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_216:  db 00H                                          ; 0002 _ .

?_217:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2278: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2338:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2393:                                            ; byte
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

closebtn.2536:                                          ; byte
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

?_218:  resw    1                                       ; 0004

?_219:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

?_220:  resd    1                                       ; 0020

mouseInfo:                                              ; byte
        resb    28                                      ; 0024

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_221:  resd    1                                       ; 00EC

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

task_a.2273:                                            ; dword
        resd    1                                       ; 0234

cnt.2274: resd  1                                       ; 0238

line.2277:                                              ; dword
        resd    1                                       ; 023C

task_b.2263:                                            ; oword
        resb    16                                      ; 0240

str.2436:                                               ; byte
        resb    1                                       ; 0250

?_222:  resb    9                                       ; 0251

?_223:  resb    2                                       ; 025A

line.2469:                                              ; dword
        resd    1                                       ; 025C

pos.2468: resd  8                                       ; 0260

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_224:                                                  ; byte
        resb    4                                       ; 0284

?_225:                                                  ; byte
        resb    4                                       ; 0288

?_226:                                                  ; byte
        resb    4                                       ; 028C

?_227:                                                  ; byte
        resb    7988                                    ; 0290

task_timer:                                             ; dword
        resd    1                                       ; 21C4

taskctl: resd   1                                       ; 21C8


