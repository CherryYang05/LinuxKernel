; Disassembly of file: ckernel.o
; Sun May 16 22:38:13 2021
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
        mov     dword [task_a.2271], eax                ; 0353 _ A3, 00000234(d)
        mov     eax, dword [task_a.2271]                ; 0358 _ A1, 00000234(d)
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
        mov     ebx, dword [cnt.2272]                   ; 0424 _ 8B. 1D, 00000238(d)
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
        mov     eax, dword [cnt.2272]                   ; 0453 _ A1, 00000238(d)
        add     eax, 1                                  ; 0458 _ 83. C0, 01
        mov     dword [cnt.2272], eax                   ; 045B _ A3, 00000238(d)
        mov     eax, dword [cnt.2272]                   ; 0460 _ A1, 00000238(d)
        cmp     dword [ebp-44H], eax                    ; 0465 _ 39. 45, BC
        jg      ?_001                                   ; 0468 _ 0F 8F, FFFFFF35
        mov     dword [cnt.2272], 0                     ; 046E _ C7. 05, 00000238(d), 00000000
        jmp     ?_001                                   ; 0478 _ E9, FFFFFF26

?_003:  movzx   eax, byte [ebp-71H]                     ; 047D _ 0F B6. 45, 8F
        movzx   eax, byte [keytable+eax]                ; 0481 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 0488 _ 84. C0
        jz      ?_004                                   ; 048A _ 74, 18
        cmp     byte [ebp-71H], 15                      ; 048C _ 80. 7D, 8F, 0F
        jbe     ?_004                                   ; 0490 _ 76, 12
        cmp     byte [ebp-71H], 83                      ; 0492 _ 80. 7D, 8F, 53
        ja      ?_004                                   ; 0496 _ 77, 0C
        mov     eax, dword [line.2275]                  ; 0498 _ A1, 0000023C(d)
        cmp     eax, 142                                ; 049D _ 3D, 0000008E
        jle     ?_005                                   ; 04A2 _ 7E, 18
?_004:  cmp     byte [ebp-71H], 14                      ; 04A4 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 04A8 _ 0F 85, FFFFFEF5
        mov     eax, dword [line.2275]                  ; 04AE _ A1, 0000023C(d)
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
        mov     eax, dword [line.2275]                  ; 04E3 _ A1, 0000023C(d)
        cmp     eax, 142                                ; 04E8 _ 3D, 0000008E
        jg      ?_007                                   ; 04ED _ 0F 8F, 00000104
        mov     eax, dword [pos.2276]                   ; 04F3 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 04F8 _ 8D. 78, 28
        mov     eax, dword [line.2275]                  ; 04FB _ A1, 0000023C(d)
        lea     esi, [eax+10H]                          ; 0500 _ 8D. 70, 10
        mov     eax, dword [pos.2276]                   ; 0503 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0508 _ 8D. 58, 1A
        mov     eax, dword [line.2275]                  ; 050B _ A1, 0000023C(d)
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
        mov     eax, dword [pos.2276]                   ; 0535 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 053A _ 8D. 78, 2A
        mov     eax, dword [line.2275]                  ; 053D _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 0542 _ 8D. 70, 12
        mov     eax, dword [pos.2276]                   ; 0545 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 054A _ 8D. 58, 1A
        mov     eax, dword [line.2275]                  ; 054D _ A1, 0000023C(d)
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
        mov     eax, dword [pos.2276]                   ; 0583 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0588 _ 8D. 70, 1A
        mov     eax, dword [line.2275]                  ; 058B _ A1, 0000023C(d)
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
        mov     eax, dword [line.2275]                  ; 05B3 _ A1, 0000023C(d)
        add     eax, 8                                  ; 05B8 _ 83. C0, 08
        mov     dword [line.2275], eax                  ; 05BB _ A3, 0000023C(d)
        mov     eax, dword [sheet_win]                  ; 05C0 _ A1, 00000228(d)
        mov     eax, dword [eax+4H]                     ; 05C5 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 05C8 _ 8D. 50, F0
        mov     eax, dword [line.2275]                  ; 05CB _ A1, 0000023C(d)
        cmp     edx, eax                                ; 05D0 _ 39. C2
        jg      ?_006                                   ; 05D2 _ 7F, 17
        mov     eax, dword [pos.2276]                   ; 05D4 _ A1, 00000074(d)
        add     eax, 16                                 ; 05D9 _ 83. C0, 10
        mov     dword [pos.2276], eax                   ; 05DC _ A3, 00000074(d)
        mov     dword [line.2275], 0                    ; 05E1 _ C7. 05, 0000023C(d), 00000000
?_006:  mov     dword [ebp-68H], 0                      ; 05EB _ C7. 45, 98, 00000000
        jmp     ?_014                                   ; 05F2 _ E9, 0000030D

?_007:  cmp     byte [ebp-71H], 14                      ; 05F7 _ 80. 7D, 8F, 0E
        jne     ?_001                                   ; 05FB _ 0F 85, FFFFFDA2
        mov     eax, dword [line.2275]                  ; 0601 _ A1, 0000023C(d)
        cmp     eax, 7                                  ; 0606 _ 83. F8, 07
        jle     ?_001                                   ; 0609 _ 0F 8E, FFFFFD94
        mov     eax, dword [pos.2276]                   ; 060F _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0614 _ 8D. 78, 28
        mov     eax, dword [line.2275]                  ; 0617 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 061C _ 8D. 70, 12
        mov     eax, dword [pos.2276]                   ; 061F _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0624 _ 8D. 58, 1A
        mov     eax, dword [line.2275]                  ; 0627 _ A1, 0000023C(d)
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
        mov     eax, dword [pos.2276]                   ; 0651 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 0656 _ 8D. 78, 2A
        mov     eax, dword [line.2275]                  ; 0659 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 065E _ 8D. 70, 12
        mov     eax, dword [pos.2276]                   ; 0661 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 0666 _ 8D. 58, 1A
        mov     eax, dword [line.2275]                  ; 0669 _ A1, 0000023C(d)
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
        mov     eax, dword [line.2275]                  ; 068D _ A1, 0000023C(d)
        sub     eax, 8                                  ; 0692 _ 83. E8, 08
        mov     dword [line.2275], eax                  ; 0695 _ A3, 0000023C(d)
        mov     eax, dword [pos.2276]                   ; 069A _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 069F _ 8D. 78, 28
        mov     eax, dword [line.2275]                  ; 06A2 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 06A7 _ 8D. 70, 12
        mov     eax, dword [pos.2276]                   ; 06AA _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06AF _ 8D. 58, 1A
        mov     eax, dword [line.2275]                  ; 06B2 _ A1, 0000023C(d)
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
        mov     eax, dword [pos.2276]                   ; 06DC _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 06E1 _ 8D. 78, 2A
        mov     eax, dword [line.2275]                  ; 06E4 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 06E9 _ 8D. 70, 12
        mov     eax, dword [pos.2276]                   ; 06EC _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 06F1 _ 8D. 58, 1A
        mov     eax, dword [line.2275]                  ; 06F4 _ A1, 0000023C(d)
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
        mov     eax, dword [task_a.2271]                ; 07E3 _ A1, 00000234(d)
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
        mov     eax, dword [pos.2276]                   ; 087C _ A1, 00000074(d)
        add     eax, 40                                 ; 0881 _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0884 _ 89. 45, 84
        mov     eax, dword [line.2275]                  ; 0887 _ A1, 0000023C(d)
        lea     edi, [eax+10H]                          ; 088C _ 8D. 78, 10
        mov     eax, dword [pos.2276]                   ; 088F _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 0894 _ 8D. 70, 1A
        mov     eax, dword [line.2275]                  ; 0897 _ A1, 0000023C(d)
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
        mov     eax, dword [pos.2276]                   ; 08C8 _ A1, 00000074(d)
        lea     edi, [eax+2AH]                          ; 08CD _ 8D. 78, 2A
        mov     eax, dword [line.2275]                  ; 08D0 _ A1, 0000023C(d)
        lea     esi, [eax+12H]                          ; 08D5 _ 8D. 70, 12
        mov     eax, dword [pos.2276]                   ; 08D8 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 08DD _ 8D. 58, 1A
        mov     eax, dword [line.2275]                  ; 08E0 _ A1, 0000023C(d)
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

console_task:; Function begin
        push    ebp                                     ; 0909 _ 55
        mov     ebp, esp                                ; 090A _ 89. E5
        push    ebx                                     ; 090C _ 53
        sub     esp, 212                                ; 090D _ 81. EC, 000000D4
        mov     eax, dword [ebp+8H]                     ; 0913 _ 8B. 45, 08
        mov     dword [ebp-0CCH], eax                   ; 0916 _ 89. 85, FFFFFF34
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 091C _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0922 _ 89. 45, F4
        xor     eax, eax                                ; 0925 _ 31. C0
        call    task_now                                ; 0927 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B8H], eax                   ; 092C _ 89. 85, FFFFFF48
        mov     dword [ebp-0B4H], 8                     ; 0932 _ C7. 85, FFFFFF4C, 00000008
        mov     dword [ebp-0BCH], 0                     ; 093C _ C7. 85, FFFFFF44, 00000000
        push    dword [ebp-0B8H]                        ; 0946 _ FF. B5, FFFFFF48
        lea     eax, [ebp-8CH]                          ; 094C _ 8D. 85, FFFFFF74
        push    eax                                     ; 0952 _ 50
        push    128                                     ; 0953 _ 68, 00000080
        lea     eax, [ebp-0A8H]                         ; 0958 _ 8D. 85, FFFFFF58
        push    eax                                     ; 095E _ 50
        call    fifo8_init                              ; 095F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0964 _ 83. C4, 10
        call    timer_alloc                             ; 0967 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B0H], eax                   ; 096C _ 89. 85, FFFFFF50
        sub     esp, 4                                  ; 0972 _ 83. EC, 04
        push    1                                       ; 0975 _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0977 _ 8D. 85, FFFFFF58
        push    eax                                     ; 097D _ 50
        push    dword [ebp-0B0H]                        ; 097E _ FF. B5, FFFFFF50
        call    timer_init                              ; 0984 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0989 _ 83. C4, 10
        sub     esp, 8                                  ; 098C _ 83. EC, 08
        push    50                                      ; 098F _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0991 _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0997 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 099C _ 83. C4, 10
        mov     dword [ebp-0ACH], 0                     ; 099F _ C7. 85, FFFFFF54, 00000000
?_015:  call    io_cli                                  ; 09A9 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 09AE _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 09B1 _ 8D. 85, FFFFFF58
        push    eax                                     ; 09B7 _ 50
        call    fifo8_status                            ; 09B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09BD _ 83. C4, 10
        test    eax, eax                                ; 09C0 _ 85. C0
        jnz     ?_016                                   ; 09C2 _ 75, 07
        call    io_sti                                  ; 09C4 _ E8, FFFFFFFC(rel)
        jmp     ?_015                                   ; 09C9 _ EB, DE

?_016:  sub     esp, 12                                 ; 09CB _ 83. EC, 0C
        lea     eax, [ebp-0A8H]                         ; 09CE _ 8D. 85, FFFFFF58
        push    eax                                     ; 09D4 _ 50
        call    fifo8_get                               ; 09D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09DA _ 83. C4, 10
        mov     dword [ebp-0ACH], eax                   ; 09DD _ 89. 85, FFFFFF54
        call    io_sti                                  ; 09E3 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-0ACH], 1                     ; 09E8 _ 83. BD, FFFFFF54, 01
        jg      ?_015                                   ; 09EF _ 7F, B8
        cmp     dword [ebp-0ACH], 1                     ; 09F1 _ 83. BD, FFFFFF54, 01
        jnz     ?_017                                   ; 09F8 _ 75, 26
        sub     esp, 4                                  ; 09FA _ 83. EC, 04
        push    0                                       ; 09FD _ 6A, 00
        lea     eax, [ebp-0A8H]                         ; 09FF _ 8D. 85, FFFFFF58
        push    eax                                     ; 0A05 _ 50
        push    dword [ebp-0B0H]                        ; 0A06 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0A0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A11 _ 83. C4, 10
        mov     dword [ebp-0BCH], 7                     ; 0A14 _ C7. 85, FFFFFF44, 00000007
        jmp     ?_018                                   ; 0A1E _ EB, 2D

?_017:  cmp     dword [ebp-0ACH], 0                     ; 0A20 _ 83. BD, FFFFFF54, 00
        jnz     ?_018                                   ; 0A27 _ 75, 24
        sub     esp, 4                                  ; 0A29 _ 83. EC, 04
        push    1                                       ; 0A2C _ 6A, 01
        lea     eax, [ebp-0A8H]                         ; 0A2E _ 8D. 85, FFFFFF58
        push    eax                                     ; 0A34 _ 50
        push    dword [ebp-0B0H]                        ; 0A35 _ FF. B5, FFFFFF50
        call    timer_init                              ; 0A3B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A40 _ 83. C4, 10
        mov     dword [ebp-0BCH], 0                     ; 0A43 _ C7. 85, FFFFFF44, 00000000
?_018:  sub     esp, 8                                  ; 0A4D _ 83. EC, 08
        push    50                                      ; 0A50 _ 6A, 32
        push    dword [ebp-0B0H]                        ; 0A52 _ FF. B5, FFFFFF50
        call    timer_setTime                           ; 0A58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A5D _ 83. C4, 10
        mov     eax, dword [ebp-0B4H]                   ; 0A60 _ 8B. 85, FFFFFF4C
        lea     ebx, [eax+6H]                           ; 0A66 _ 8D. 58, 06
        mov     eax, dword [ebp-0BCH]                   ; 0A69 _ 8B. 85, FFFFFF44
        movzx   ecx, al                                 ; 0A6F _ 0F B6. C8
        mov     eax, dword [ebp-0CCH]                   ; 0A72 _ 8B. 85, FFFFFF34
        mov     edx, dword [eax+4H]                     ; 0A78 _ 8B. 50, 04
        mov     eax, dword [ebp-0CCH]                   ; 0A7B _ 8B. 85, FFFFFF34
        mov     eax, dword [eax]                        ; 0A81 _ 8B. 00
        sub     esp, 4                                  ; 0A83 _ 83. EC, 04
        push    43                                      ; 0A86 _ 6A, 2B
        push    ebx                                     ; 0A88 _ 53
        push    28                                      ; 0A89 _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0A8B _ FF. B5, FFFFFF4C
        push    ecx                                     ; 0A91 _ 51
        push    edx                                     ; 0A92 _ 52
        push    eax                                     ; 0A93 _ 50
        call    boxfill8                                ; 0A94 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A99 _ 83. C4, 20
        mov     eax, dword [ebp-0B4H]                   ; 0A9C _ 8B. 85, FFFFFF4C
        lea     edx, [eax+8H]                           ; 0AA2 _ 8D. 50, 08
        mov     eax, dword [shtctl]                     ; 0AA5 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0AAA _ 83. EC, 08
        push    44                                      ; 0AAD _ 6A, 2C
        push    edx                                     ; 0AAF _ 52
        push    28                                      ; 0AB0 _ 6A, 1C
        push    dword [ebp-0B4H]                        ; 0AB2 _ FF. B5, FFFFFF4C
        push    dword [ebp-0CCH]                        ; 0AB8 _ FF. B5, FFFFFF34
        push    eax                                     ; 0ABE _ 50
        call    sheet_refresh                           ; 0ABF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AC4 _ 83. C4, 20
        jmp     ?_015                                   ; 0AC7 _ E9, FFFFFEDD
; console_task End of function

launch_console:; Function begin
        push    ebp                                     ; 0ACC _ 55
        mov     ebp, esp                                ; 0ACD _ 89. E5
        sub     esp, 24                                 ; 0ACF _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0AD2 _ A1, 00000224(d)
        sub     esp, 12                                 ; 0AD7 _ 83. EC, 0C
        push    eax                                     ; 0ADA _ 50
        call    sheet_alloc                             ; 0ADB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AE0 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0AE3 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0AE6 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0AEB _ 83. EC, 08
        push    46080                                   ; 0AEE _ 68, 0000B400
        push    eax                                     ; 0AF3 _ 50
        call    memman_alloc_4K                         ; 0AF4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AF9 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0AFC _ 89. 45, EC
        sub     esp, 12                                 ; 0AFF _ 83. EC, 0C
        push    99                                      ; 0B02 _ 6A, 63
        push    180                                     ; 0B04 _ 68, 000000B4
        push    256                                     ; 0B09 _ 68, 00000100
        push    dword [ebp-14H]                         ; 0B0E _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0B11 _ FF. 75, E8
        call    sheet_setbuf                            ; 0B14 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B19 _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0B1C _ A1, 00000224(d)
        sub     esp, 4                                  ; 0B21 _ 83. EC, 04
        push    ?_207                                   ; 0B24 _ 68, 00000027(d)
        push    dword [ebp-18H]                         ; 0B29 _ FF. 75, E8
        push    eax                                     ; 0B2C _ 50
        call    make_window8                            ; 0B2D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B32 _ 83. C4, 10
        sub     esp, 8                                  ; 0B35 _ 83. EC, 08
        push    0                                       ; 0B38 _ 6A, 00
        push    144                                     ; 0B3A _ 68, 00000090
        push    240                                     ; 0B3F _ 68, 000000F0
        push    28                                      ; 0B44 _ 6A, 1C
        push    8                                       ; 0B46 _ 6A, 08
        push    dword [ebp-18H]                         ; 0B48 _ FF. 75, E8
        call    make_textbox8                           ; 0B4B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B50 _ 83. C4, 20
        call    task_alloc                              ; 0B53 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0B58 _ 89. 45, F0
        call    get_code32_addr                         ; 0B5B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0B60 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0B63 _ 8B. 45, F0
        mov     dword [eax+70H], 0                      ; 0B66 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-10H]                    ; 0B6D _ 8B. 45, F0
        mov     dword [eax+74H], 1073741824             ; 0B70 _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0B77 _ 8B. 45, F4
        neg     eax                                     ; 0B7A _ F7. D8
        add     eax, console_task                       ; 0B7C _ 05, 00000000(d)
        mov     edx, eax                                ; 0B81 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0B83 _ 8B. 45, F0
        mov     dword [eax+30H], edx                    ; 0B86 _ 89. 50, 30
        mov     eax, dword [ebp-10H]                    ; 0B89 _ 8B. 45, F0
        mov     dword [eax+58H], 0                      ; 0B8C _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-10H]                    ; 0B93 _ 8B. 45, F0
        mov     dword [eax+5CH], 8                      ; 0B96 _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp-10H]                    ; 0B9D _ 8B. 45, F0
        mov     dword [eax+60H], 32                     ; 0BA0 _ C7. 40, 60, 00000020
        mov     eax, dword [ebp-10H]                    ; 0BA7 _ 8B. 45, F0
        mov     dword [eax+64H], 24                     ; 0BAA _ C7. 40, 64, 00000018
        mov     eax, dword [ebp-10H]                    ; 0BB1 _ 8B. 45, F0
        mov     dword [eax+68H], 0                      ; 0BB4 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BBB _ 8B. 45, F0
        mov     dword [eax+6CH], 16                     ; 0BBE _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp-10H]                    ; 0BC5 _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0BC8 _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 0BCB _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0BCE _ 8B. 45, F0
        mov     dword [eax+48H], edx                    ; 0BD1 _ 89. 50, 48
        mov     eax, dword [ebp-10H]                    ; 0BD4 _ 8B. 45, F0
        mov     eax, dword [eax+48H]                    ; 0BD7 _ 8B. 40, 48
        add     eax, 4                                  ; 0BDA _ 83. C0, 04
        mov     edx, eax                                ; 0BDD _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0BDF _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0BE2 _ 89. 02
        sub     esp, 4                                  ; 0BE4 _ 83. EC, 04
        push    5                                       ; 0BE7 _ 6A, 05
        push    1                                       ; 0BE9 _ 6A, 01
        push    dword [ebp-10H]                         ; 0BEB _ FF. 75, F0
        call    task_run                                ; 0BEE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BF3 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0BF6 _ A1, 00000224(d)
        push    16                                      ; 0BFB _ 6A, 10
        push    32                                      ; 0BFD _ 6A, 20
        push    dword [ebp-18H]                         ; 0BFF _ FF. 75, E8
        push    eax                                     ; 0C02 _ 50
        call    sheet_slide                             ; 0C03 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C08 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C0B _ A1, 00000224(d)
        sub     esp, 4                                  ; 0C10 _ 83. EC, 04
        push    2                                       ; 0C13 _ 6A, 02
        push    dword [ebp-18H]                         ; 0C15 _ FF. 75, E8
        push    eax                                     ; 0C18 _ 50
        call    sheet_level_updown                      ; 0C19 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C1E _ 83. C4, 10
        nop                                             ; 0C21 _ 90
        leave                                           ; 0C22 _ C9
        ret                                             ; 0C23 _ C3
; launch_console End of function

task_b_main:; Function begin
        push    ebp                                     ; 0C24 _ 55
        mov     ebp, esp                                ; 0C25 _ 89. E5
        sub     esp, 88                                 ; 0C27 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 0C2A _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 0C2D _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0C30 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0C36 _ 89. 45, F4
        xor     eax, eax                                ; 0C39 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0C3B _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0C41 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0C46 _ 83. EC, 08
        push    ?_208                                   ; 0C49 _ 68, 00000030(d)
        push    7                                       ; 0C4E _ 6A, 07
        push    144                                     ; 0C50 _ 68, 00000090
        push    0                                       ; 0C55 _ 6A, 00
        push    edx                                     ; 0C57 _ 52
        push    eax                                     ; 0C58 _ 50
        call    showString                              ; 0C59 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C5E _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 0C61 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 0C68 _ C7. 45, C8, 00000000
        push    0                                       ; 0C6F _ 6A, 00
        lea     eax, [ebp-14H]                          ; 0C71 _ 8D. 45, EC
        push    eax                                     ; 0C74 _ 50
        push    8                                       ; 0C75 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 0C77 _ 8D. 45, D0
        push    eax                                     ; 0C7A _ 50
        call    fifo8_init                              ; 0C7B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C80 _ 83. C4, 10
        call    timer_alloc                             ; 0C83 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0C88 _ 89. 45, C4
        sub     esp, 4                                  ; 0C8B _ 83. EC, 04
        push    123                                     ; 0C8E _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 0C90 _ 8D. 45, D0
        push    eax                                     ; 0C93 _ 50
        push    dword [ebp-3CH]                         ; 0C94 _ FF. 75, C4
        call    timer_init                              ; 0C97 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C9C _ 83. C4, 10
        sub     esp, 8                                  ; 0C9F _ 83. EC, 08
        push    100                                     ; 0CA2 _ 6A, 64
        push    dword [ebp-3CH]                         ; 0CA4 _ FF. 75, C4
        call    timer_setTime                           ; 0CA7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAC _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 0CAF _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 0CB6 _ C7. 45, C0, 00000000
?_019:  add     dword [ebp-40H], 1                      ; 0CBD _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 0CC1 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 0CC4 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 0CC7 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 0CCA _ 8B. 00
        sub     esp, 4                                  ; 0CCC _ 83. EC, 04
        push    38                                      ; 0CCF _ 6A, 26
        push    100                                     ; 0CD1 _ 6A, 64
        push    23                                      ; 0CD3 _ 6A, 17
        push    8                                       ; 0CD5 _ 6A, 08
        push    8                                       ; 0CD7 _ 6A, 08
        push    edx                                     ; 0CD9 _ 52
        push    eax                                     ; 0CDA _ 50
        call    boxfill8                                ; 0CDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CE0 _ 83. C4, 20
        sub     esp, 12                                 ; 0CE3 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 0CE6 _ FF. 75, C0
        call    intToHexStr                             ; 0CE9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CEE _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 0CF1 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 0CF4 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0CF9 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 0CFC _ FF. 75, CC
        push    10                                      ; 0CFF _ 6A, 0A
        push    23                                      ; 0D01 _ 6A, 17
        push    8                                       ; 0D03 _ 6A, 08
        push    dword [ebp-4CH]                         ; 0D05 _ FF. 75, B4
        push    eax                                     ; 0D08 _ 50
        call    showString                              ; 0D09 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D0E _ 83. C4, 20
        call    io_cli                                  ; 0D11 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D16 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0D19 _ 8D. 45, D0
        push    eax                                     ; 0D1C _ 50
        call    fifo8_status                            ; 0D1D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D22 _ 83. C4, 10
        test    eax, eax                                ; 0D25 _ 85. C0
        jnz     ?_020                                   ; 0D27 _ 75, 07
        call    io_sti                                  ; 0D29 _ E8, FFFFFFFC(rel)
        jmp     ?_019                                   ; 0D2E _ EB, 8D

?_020:  sub     esp, 12                                 ; 0D30 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 0D33 _ 8D. 45, D0
        push    eax                                     ; 0D36 _ 50
        call    fifo8_get                               ; 0D37 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3C _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0D3F _ 89. 45, C8
        call    io_sti                                  ; 0D42 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 0D47 _ 83. 7D, C8, 7B
        jne     ?_019                                   ; 0D4B _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 0D51 _ 8B. 15, 0000022C(d)
        mov     eax, dword [shtctl]                     ; 0D57 _ A1, 00000224(d)
        sub     esp, 8                                  ; 0D5C _ 83. EC, 08
        push    ?_209                                   ; 0D5F _ 68, 0000003D(d)
        push    7                                       ; 0D64 _ 6A, 07
        push    176                                     ; 0D66 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 0D6B _ FF. 75, BC
        push    edx                                     ; 0D6E _ 52
        push    eax                                     ; 0D6F _ 50
        call    showString                              ; 0D70 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D75 _ 83. C4, 20
        sub     esp, 8                                  ; 0D78 _ 83. EC, 08
        push    100                                     ; 0D7B _ 6A, 64
        push    dword [ebp-3CH]                         ; 0D7D _ FF. 75, C4
        call    timer_setTime                           ; 0D80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D85 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 0D88 _ 83. 45, BC, 08
        jmp     ?_019                                   ; 0D8C _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0D91 _ 55
        mov     ebp, esp                                ; 0D92 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D94 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0D97 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0D9D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0DA0 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0DA6 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0DA9 _ 66: C7. 40, 06, 01E0
        nop                                             ; 0DAF _ 90
        pop     ebp                                     ; 0DB0 _ 5D
        ret                                             ; 0DB1 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0DB2 _ 55
        mov     ebp, esp                                ; 0DB3 _ 89. E5
        push    ebx                                     ; 0DB5 _ 53
        sub     esp, 36                                 ; 0DB6 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0DB9 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0DBC _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0DBF _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0DC2 _ 89. 45, F4
        jmp     ?_022                                   ; 0DC5 _ EB, 3E

?_021:  mov     eax, dword [ebp+1CH]                    ; 0DC7 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0DCA _ 0F B6. 00
        movzx   eax, al                                 ; 0DCD _ 0F B6. C0
        shl     eax, 4                                  ; 0DD0 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0DD3 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0DD9 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0DDD _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0DE0 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0DE3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0DE6 _ 8B. 00
        sub     esp, 8                                  ; 0DE8 _ 83. EC, 08
        push    ebx                                     ; 0DEB _ 53
        push    ecx                                     ; 0DEC _ 51
        push    dword [ebp+14H]                         ; 0DED _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0DF0 _ FF. 75, 10
        push    edx                                     ; 0DF3 _ 52
        push    eax                                     ; 0DF4 _ 50
        call    showFont8                               ; 0DF5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DFA _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0DFD _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0E01 _ 83. 45, 1C, 01
?_022:  mov     eax, dword [ebp+1CH]                    ; 0E05 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0E08 _ 0F B6. 00
        test    al, al                                  ; 0E0B _ 84. C0
        jnz     ?_021                                   ; 0E0D _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0E0F _ 8B. 45, 14
        add     eax, 16                                 ; 0E12 _ 83. C0, 10
        sub     esp, 8                                  ; 0E15 _ 83. EC, 08
        push    eax                                     ; 0E18 _ 50
        push    dword [ebp+10H]                         ; 0E19 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0E1C _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0E1F _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0E22 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E25 _ FF. 75, 08
        call    sheet_refresh                           ; 0E28 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E2D _ 83. C4, 20
        nop                                             ; 0E30 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0E31 _ 8B. 5D, FC
        leave                                           ; 0E34 _ C9
        ret                                             ; 0E35 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0E36 _ 55
        mov     ebp, esp                                ; 0E37 _ 89. E5
        push    ebx                                     ; 0E39 _ 53
        sub     esp, 4                                  ; 0E3A _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0E3D _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0E40 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0E43 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0E46 _ 83. E8, 01
        sub     esp, 4                                  ; 0E49 _ 83. EC, 04
        push    edx                                     ; 0E4C _ 52
        push    eax                                     ; 0E4D _ 50
        push    0                                       ; 0E4E _ 6A, 00
        push    0                                       ; 0E50 _ 6A, 00
        push    14                                      ; 0E52 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0E54 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E57 _ FF. 75, 08
        call    boxfill8                                ; 0E5A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E5F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E62 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0E65 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0E68 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0E6B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0E6E _ 8B. 45, 10
        sub     eax, 24                                 ; 0E71 _ 83. E8, 18
        sub     esp, 4                                  ; 0E74 _ 83. EC, 04
        push    ecx                                     ; 0E77 _ 51
        push    edx                                     ; 0E78 _ 52
        push    eax                                     ; 0E79 _ 50
        push    0                                       ; 0E7A _ 6A, 00
        push    8                                       ; 0E7C _ 6A, 08
        push    dword [ebp+0CH]                         ; 0E7E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E81 _ FF. 75, 08
        call    boxfill8                                ; 0E84 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E89 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E8C _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0E8F _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0E92 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0E95 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0E98 _ 8B. 45, 10
        sub     eax, 23                                 ; 0E9B _ 83. E8, 17
        sub     esp, 4                                  ; 0E9E _ 83. EC, 04
        push    ecx                                     ; 0EA1 _ 51
        push    edx                                     ; 0EA2 _ 52
        push    eax                                     ; 0EA3 _ 50
        push    0                                       ; 0EA4 _ 6A, 00
        push    7                                       ; 0EA6 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0EA8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EAB _ FF. 75, 08
        call    boxfill8                                ; 0EAE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EB3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EB6 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0EB9 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0EBC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0EBF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0EC2 _ 8B. 45, 10
        sub     eax, 22                                 ; 0EC5 _ 83. E8, 16
        sub     esp, 4                                  ; 0EC8 _ 83. EC, 04
        push    ecx                                     ; 0ECB _ 51
        push    edx                                     ; 0ECC _ 52
        push    eax                                     ; 0ECD _ 50
        push    0                                       ; 0ECE _ 6A, 00
        push    8                                       ; 0ED0 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0ED2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0ED5 _ FF. 75, 08
        call    boxfill8                                ; 0ED8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EDD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EE0 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0EE3 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0EE6 _ 8B. 45, 10
        sub     eax, 20                                 ; 0EE9 _ 83. E8, 14
        sub     esp, 4                                  ; 0EEC _ 83. EC, 04
        push    edx                                     ; 0EEF _ 52
        push    51                                      ; 0EF0 _ 6A, 33
        push    eax                                     ; 0EF2 _ 50
        push    10                                      ; 0EF3 _ 6A, 0A
        push    7                                       ; 0EF5 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0EF7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EFA _ FF. 75, 08
        call    boxfill8                                ; 0EFD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F02 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F05 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0F08 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0F0B _ 8B. 45, 10
        sub     eax, 20                                 ; 0F0E _ 83. E8, 14
        sub     esp, 4                                  ; 0F11 _ 83. EC, 04
        push    edx                                     ; 0F14 _ 52
        push    9                                       ; 0F15 _ 6A, 09
        push    eax                                     ; 0F17 _ 50
        push    9                                       ; 0F18 _ 6A, 09
        push    7                                       ; 0F1A _ 6A, 07
        push    dword [ebp+0CH]                         ; 0F1C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F1F _ FF. 75, 08
        call    boxfill8                                ; 0F22 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F27 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F2A _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0F2D _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0F30 _ 8B. 45, 10
        sub     eax, 4                                  ; 0F33 _ 83. E8, 04
        sub     esp, 4                                  ; 0F36 _ 83. EC, 04
        push    edx                                     ; 0F39 _ 52
        push    50                                      ; 0F3A _ 6A, 32
        push    eax                                     ; 0F3C _ 50
        push    10                                      ; 0F3D _ 6A, 0A
        push    15                                      ; 0F3F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0F41 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F44 _ FF. 75, 08
        call    boxfill8                                ; 0F47 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F4C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F4F _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0F52 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0F55 _ 8B. 45, 10
        sub     eax, 19                                 ; 0F58 _ 83. E8, 13
        sub     esp, 4                                  ; 0F5B _ 83. EC, 04
        push    edx                                     ; 0F5E _ 52
        push    50                                      ; 0F5F _ 6A, 32
        push    eax                                     ; 0F61 _ 50
        push    50                                      ; 0F62 _ 6A, 32
        push    15                                      ; 0F64 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0F66 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F69 _ FF. 75, 08
        call    boxfill8                                ; 0F6C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F71 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F74 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F77 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0F7A _ 8B. 45, 10
        sub     eax, 3                                  ; 0F7D _ 83. E8, 03
        sub     esp, 4                                  ; 0F80 _ 83. EC, 04
        push    edx                                     ; 0F83 _ 52
        push    50                                      ; 0F84 _ 6A, 32
        push    eax                                     ; 0F86 _ 50
        push    10                                      ; 0F87 _ 6A, 0A
        push    0                                       ; 0F89 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0F8B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F8E _ FF. 75, 08
        call    boxfill8                                ; 0F91 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F96 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F99 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0F9C _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0F9F _ 8B. 45, 10
        sub     eax, 20                                 ; 0FA2 _ 83. E8, 14
        sub     esp, 4                                  ; 0FA5 _ 83. EC, 04
        push    edx                                     ; 0FA8 _ 52
        push    51                                      ; 0FA9 _ 6A, 33
        push    eax                                     ; 0FAB _ 50
        push    51                                      ; 0FAC _ 6A, 33
        push    0                                       ; 0FAE _ 6A, 00
        push    dword [ebp+0CH]                         ; 0FB0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FB3 _ FF. 75, 08
        call    boxfill8                                ; 0FB6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FBB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FBE _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0FC1 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0FC4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0FC7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0FCA _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FCD _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0FD0 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0FD3 _ 83. E8, 2F
        sub     esp, 4                                  ; 0FD6 _ 83. EC, 04
        push    ebx                                     ; 0FD9 _ 53
        push    ecx                                     ; 0FDA _ 51
        push    edx                                     ; 0FDB _ 52
        push    eax                                     ; 0FDC _ 50
        push    15                                      ; 0FDD _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0FDF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FE2 _ FF. 75, 08
        call    boxfill8                                ; 0FE5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FEA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FED _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0FF0 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0FF3 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0FF6 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0FF9 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0FFC _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0FFF _ 8B. 45, 0C
        sub     eax, 47                                 ; 1002 _ 83. E8, 2F
        sub     esp, 4                                  ; 1005 _ 83. EC, 04
        push    ebx                                     ; 1008 _ 53
        push    ecx                                     ; 1009 _ 51
        push    edx                                     ; 100A _ 52
        push    eax                                     ; 100B _ 50
        push    15                                      ; 100C _ 6A, 0F
        push    dword [ebp+0CH]                         ; 100E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1011 _ FF. 75, 08
        call    boxfill8                                ; 1014 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1019 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 101C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 101F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1022 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1025 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1028 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 102B _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 102E _ 8B. 45, 0C
        sub     eax, 47                                 ; 1031 _ 83. E8, 2F
        sub     esp, 4                                  ; 1034 _ 83. EC, 04
        push    ebx                                     ; 1037 _ 53
        push    ecx                                     ; 1038 _ 51
        push    edx                                     ; 1039 _ 52
        push    eax                                     ; 103A _ 50
        push    7                                       ; 103B _ 6A, 07
        push    dword [ebp+0CH]                         ; 103D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1040 _ FF. 75, 08
        call    boxfill8                                ; 1043 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1048 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 104B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 104E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1051 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1054 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1057 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 105A _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 105D _ 8B. 45, 0C
        sub     eax, 3                                  ; 1060 _ 83. E8, 03
        sub     esp, 4                                  ; 1063 _ 83. EC, 04
        push    ebx                                     ; 1066 _ 53
        push    ecx                                     ; 1067 _ 51
        push    edx                                     ; 1068 _ 52
        push    eax                                     ; 1069 _ 50
        push    7                                       ; 106A _ 6A, 07
        push    dword [ebp+0CH]                         ; 106C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 106F _ FF. 75, 08
        call    boxfill8                                ; 1072 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1077 _ 83. C4, 20
        nop                                             ; 107A _ 90
        mov     ebx, dword [ebp-4H]                     ; 107B _ 8B. 5D, FC
        leave                                           ; 107E _ C9
        ret                                             ; 107F _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1080 _ 55
        mov     ebp, esp                                ; 1081 _ 89. E5
        sub     esp, 24                                 ; 1083 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1086 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 108B _ 89. 45, EC
        movzx   eax, word [?_218]                       ; 108E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1095 _ 98
        mov     dword [ebp-10H], eax                    ; 1096 _ 89. 45, F0
        movzx   eax, word [?_219]                       ; 1099 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 10A0 _ 98
        mov     dword [ebp-0CH], eax                    ; 10A1 _ 89. 45, F4
        sub     esp, 4                                  ; 10A4 _ 83. EC, 04
        push    table_rgb.2336                          ; 10A7 _ 68, 00000080(d)
        push    15                                      ; 10AC _ 6A, 0F
        push    0                                       ; 10AE _ 6A, 00
        call    set_palette                             ; 10B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B5 _ 83. C4, 10
        nop                                             ; 10B8 _ 90
        leave                                           ; 10B9 _ C9
        ret                                             ; 10BA _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 10BB _ 55
        mov     ebp, esp                                ; 10BC _ 89. E5
        sub     esp, 24                                 ; 10BE _ 83. EC, 18
        call    io_load_eflags                          ; 10C1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 10C6 _ 89. 45, F4
        call    io_cli                                  ; 10C9 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 10CE _ 83. EC, 08
        push    dword [ebp+8H]                          ; 10D1 _ FF. 75, 08
        push    968                                     ; 10D4 _ 68, 000003C8
        call    io_out8                                 ; 10D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10DE _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 10E1 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 10E4 _ 89. 45, F0
        jmp     ?_024                                   ; 10E7 _ EB, 65

?_023:  mov     eax, dword [ebp+10H]                    ; 10E9 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 10EC _ 0F B6. 00
        shr     al, 2                                   ; 10EF _ C0. E8, 02
        movzx   eax, al                                 ; 10F2 _ 0F B6. C0
        sub     esp, 8                                  ; 10F5 _ 83. EC, 08
        push    eax                                     ; 10F8 _ 50
        push    969                                     ; 10F9 _ 68, 000003C9
        call    io_out8                                 ; 10FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1103 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1106 _ 8B. 45, 10
        add     eax, 1                                  ; 1109 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 110C _ 0F B6. 00
        shr     al, 2                                   ; 110F _ C0. E8, 02
        movzx   eax, al                                 ; 1112 _ 0F B6. C0
        sub     esp, 8                                  ; 1115 _ 83. EC, 08
        push    eax                                     ; 1118 _ 50
        push    969                                     ; 1119 _ 68, 000003C9
        call    io_out8                                 ; 111E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1123 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1126 _ 8B. 45, 10
        add     eax, 2                                  ; 1129 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 112C _ 0F B6. 00
        shr     al, 2                                   ; 112F _ C0. E8, 02
        movzx   eax, al                                 ; 1132 _ 0F B6. C0
        sub     esp, 8                                  ; 1135 _ 83. EC, 08
        push    eax                                     ; 1138 _ 50
        push    969                                     ; 1139 _ 68, 000003C9
        call    io_out8                                 ; 113E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1143 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1146 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 114A _ 83. 45, F0, 01
?_024:  mov     eax, dword [ebp-10H]                    ; 114E _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1151 _ 3B. 45, 0C
        jle     ?_023                                   ; 1154 _ 7E, 93
        sub     esp, 12                                 ; 1156 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 1159 _ FF. 75, F4
        call    io_store_eflags                         ; 115C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1161 _ 83. C4, 10
        nop                                             ; 1164 _ 90
        leave                                           ; 1165 _ C9
        ret                                             ; 1166 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1167 _ 55
        mov     ebp, esp                                ; 1168 _ 89. E5
        sub     esp, 20                                 ; 116A _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 116D _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1170 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1173 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1176 _ 89. 45, FC
        jmp     ?_028                                   ; 1179 _ EB, 33

?_025:  mov     eax, dword [ebp+14H]                    ; 117B _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 117E _ 89. 45, F8
        jmp     ?_027                                   ; 1181 _ EB, 1F

?_026:  mov     eax, dword [ebp-4H]                     ; 1183 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1186 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 118A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 118C _ 8B. 45, F8
        add     eax, edx                                ; 118F _ 01. D0
        mov     edx, eax                                ; 1191 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1193 _ 8B. 45, 08
        add     edx, eax                                ; 1196 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1198 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 119C _ 88. 02
        add     dword [ebp-8H], 1                       ; 119E _ 83. 45, F8, 01
?_027:  mov     eax, dword [ebp-8H]                     ; 11A2 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 11A5 _ 3B. 45, 1C
        jle     ?_026                                   ; 11A8 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 11AA _ 83. 45, FC, 01
?_028:  mov     eax, dword [ebp-4H]                     ; 11AE _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 11B1 _ 3B. 45, 20
        jle     ?_025                                   ; 11B4 _ 7E, C5
        nop                                             ; 11B6 _ 90
        leave                                           ; 11B7 _ C9
        ret                                             ; 11B8 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 11B9 _ 55
        mov     ebp, esp                                ; 11BA _ 89. E5
        push    edi                                     ; 11BC _ 57
        push    esi                                     ; 11BD _ 56
        push    ebx                                     ; 11BE _ 53
        sub     esp, 16                                 ; 11BF _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 11C2 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 11C5 _ 8B. 45, 14
        add     eax, edx                                ; 11C8 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 11CA _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 11CD _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 11D0 _ 8B. 45, 18
        add     eax, edx                                ; 11D3 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 11D5 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 11D8 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 11DB _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 11DE _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 11E1 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 11E4 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 11E7 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 11EA _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 11ED _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 11F0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 11F3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 11F6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 11F9 _ 8B. 00
        push    edi                                     ; 11FB _ 57
        push    esi                                     ; 11FC _ 56
        push    ebx                                     ; 11FD _ 53
        push    ecx                                     ; 11FE _ 51
        push    15                                      ; 11FF _ 6A, 0F
        push    edx                                     ; 1201 _ 52
        push    eax                                     ; 1202 _ 50
        call    boxfill8                                ; 1203 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1208 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 120B _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 120E _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1211 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1214 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1217 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 121A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 121D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1220 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1223 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1226 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1229 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 122C _ 8B. 00
        push    edi                                     ; 122E _ 57
        push    esi                                     ; 122F _ 56
        push    ebx                                     ; 1230 _ 53
        push    ecx                                     ; 1231 _ 51
        push    15                                      ; 1232 _ 6A, 0F
        push    edx                                     ; 1234 _ 52
        push    eax                                     ; 1235 _ 50
        call    boxfill8                                ; 1236 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 123B _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 123E _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1241 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1244 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1247 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 124A _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 124D _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1250 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1253 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1256 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1259 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 125C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 125F _ 8B. 00
        push    edi                                     ; 1261 _ 57
        push    esi                                     ; 1262 _ 56
        push    ebx                                     ; 1263 _ 53
        push    ecx                                     ; 1264 _ 51
        push    7                                       ; 1265 _ 6A, 07
        push    edx                                     ; 1267 _ 52
        push    eax                                     ; 1268 _ 50
        call    boxfill8                                ; 1269 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 126E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1271 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1274 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1277 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 127A _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 127D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1280 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1283 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1286 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1289 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 128C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 128F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1292 _ 8B. 00
        push    edi                                     ; 1294 _ 57
        push    esi                                     ; 1295 _ 56
        push    ebx                                     ; 1296 _ 53
        push    ecx                                     ; 1297 _ 51
        push    7                                       ; 1298 _ 6A, 07
        push    edx                                     ; 129A _ 52
        push    eax                                     ; 129B _ 50
        call    boxfill8                                ; 129C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12A1 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 12A4 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 12A7 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 12AA _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 12AD _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 12B0 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 12B3 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 12B6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12B9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12BC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12BF _ 8B. 00
        push    esi                                     ; 12C1 _ 56
        push    dword [ebp-14H]                         ; 12C2 _ FF. 75, EC
        push    ebx                                     ; 12C5 _ 53
        push    ecx                                     ; 12C6 _ 51
        push    0                                       ; 12C7 _ 6A, 00
        push    edx                                     ; 12C9 _ 52
        push    eax                                     ; 12CA _ 50
        call    boxfill8                                ; 12CB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12D0 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 12D3 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 12D6 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 12D9 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 12DC _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 12DF _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 12E2 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 12E5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 12E8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 12EB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12EE _ 8B. 00
        push    dword [ebp-10H]                         ; 12F0 _ FF. 75, F0
        push    esi                                     ; 12F3 _ 56
        push    ebx                                     ; 12F4 _ 53
        push    ecx                                     ; 12F5 _ 51
        push    0                                       ; 12F6 _ 6A, 00
        push    edx                                     ; 12F8 _ 52
        push    eax                                     ; 12F9 _ 50
        call    boxfill8                                ; 12FA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12FF _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1302 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1305 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1308 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 130B _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 130E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1311 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1314 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1317 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 131A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 131D _ 8B. 00
        push    esi                                     ; 131F _ 56
        push    dword [ebp-14H]                         ; 1320 _ FF. 75, EC
        push    ebx                                     ; 1323 _ 53
        push    ecx                                     ; 1324 _ 51
        push    8                                       ; 1325 _ 6A, 08
        push    edx                                     ; 1327 _ 52
        push    eax                                     ; 1328 _ 50
        call    boxfill8                                ; 1329 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 132E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1331 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1334 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1337 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 133A _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 133D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1340 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1343 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1346 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1349 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 134C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 134F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1352 _ 8B. 00
        push    edi                                     ; 1354 _ 57
        push    esi                                     ; 1355 _ 56
        push    ebx                                     ; 1356 _ 53
        push    ecx                                     ; 1357 _ 51
        push    8                                       ; 1358 _ 6A, 08
        push    edx                                     ; 135A _ 52
        push    eax                                     ; 135B _ 50
        call    boxfill8                                ; 135C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1361 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1364 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1367 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 136A _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 136D _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1370 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1373 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1376 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1379 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 137C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 137F _ 8B. 00
        push    dword [ebp-10H]                         ; 1381 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1384 _ FF. 75, EC
        push    esi                                     ; 1387 _ 56
        push    ebx                                     ; 1388 _ 53
        push    ecx                                     ; 1389 _ 51
        push    edx                                     ; 138A _ 52
        push    eax                                     ; 138B _ 50
        call    boxfill8                                ; 138C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1391 _ 83. C4, 1C
        nop                                             ; 1394 _ 90
        lea     esp, [ebp-0CH]                          ; 1395 _ 8D. 65, F4
        pop     ebx                                     ; 1398 _ 5B
        pop     esi                                     ; 1399 _ 5E
        pop     edi                                     ; 139A _ 5F
        pop     ebp                                     ; 139B _ 5D
        ret                                             ; 139C _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 139D _ 55
        mov     ebp, esp                                ; 139E _ 89. E5
        sub     esp, 20                                 ; 13A0 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 13A3 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 13A6 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 13A9 _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 13B0 _ E9, 0000016C

?_029:  mov     edx, dword [ebp-4H]                     ; 13B5 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 13B8 _ 8B. 45, 1C
        add     eax, edx                                ; 13BB _ 01. D0
        movzx   eax, byte [eax]                         ; 13BD _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 13C0 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 13C3 _ 80. 7D, FB, 00
        jns     ?_030                                   ; 13C7 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 13C9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13CC _ 8B. 45, FC
        add     eax, edx                                ; 13CF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13D1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 13D5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 13D7 _ 8B. 45, 10
        add     eax, edx                                ; 13DA _ 01. D0
        mov     edx, eax                                ; 13DC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13DE _ 8B. 45, 08
        add     edx, eax                                ; 13E1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 13E3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 13E7 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 13E9 _ 0F BE. 45, FB
        and     eax, 40H                                ; 13ED _ 83. E0, 40
        test    eax, eax                                ; 13F0 _ 85. C0
        jz      ?_031                                   ; 13F2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 13F4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 13F7 _ 8B. 45, FC
        add     eax, edx                                ; 13FA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13FC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1400 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1402 _ 8B. 45, 10
        add     eax, edx                                ; 1405 _ 01. D0
        lea     edx, [eax+1H]                           ; 1407 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 140A _ 8B. 45, 08
        add     edx, eax                                ; 140D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 140F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1413 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1415 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1419 _ 83. E0, 20
        test    eax, eax                                ; 141C _ 85. C0
        jz      ?_032                                   ; 141E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1420 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1423 _ 8B. 45, FC
        add     eax, edx                                ; 1426 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1428 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 142C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 142E _ 8B. 45, 10
        add     eax, edx                                ; 1431 _ 01. D0
        lea     edx, [eax+2H]                           ; 1433 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1436 _ 8B. 45, 08
        add     edx, eax                                ; 1439 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 143B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 143F _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1441 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1445 _ 83. E0, 10
        test    eax, eax                                ; 1448 _ 85. C0
        jz      ?_033                                   ; 144A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 144C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 144F _ 8B. 45, FC
        add     eax, edx                                ; 1452 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1454 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1458 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 145A _ 8B. 45, 10
        add     eax, edx                                ; 145D _ 01. D0
        lea     edx, [eax+3H]                           ; 145F _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1462 _ 8B. 45, 08
        add     edx, eax                                ; 1465 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1467 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 146B _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 146D _ 0F BE. 45, FB
        and     eax, 08H                                ; 1471 _ 83. E0, 08
        test    eax, eax                                ; 1474 _ 85. C0
        jz      ?_034                                   ; 1476 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1478 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 147B _ 8B. 45, FC
        add     eax, edx                                ; 147E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1480 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1484 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1486 _ 8B. 45, 10
        add     eax, edx                                ; 1489 _ 01. D0
        lea     edx, [eax+4H]                           ; 148B _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 148E _ 8B. 45, 08
        add     edx, eax                                ; 1491 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1493 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1497 _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1499 _ 0F BE. 45, FB
        and     eax, 04H                                ; 149D _ 83. E0, 04
        test    eax, eax                                ; 14A0 _ 85. C0
        jz      ?_035                                   ; 14A2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14A4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14A7 _ 8B. 45, FC
        add     eax, edx                                ; 14AA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14AC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14B0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14B2 _ 8B. 45, 10
        add     eax, edx                                ; 14B5 _ 01. D0
        lea     edx, [eax+5H]                           ; 14B7 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 14BA _ 8B. 45, 08
        add     edx, eax                                ; 14BD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14BF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14C3 _ 88. 02
?_035:  movsx   eax, byte [ebp-5H]                      ; 14C5 _ 0F BE. 45, FB
        and     eax, 02H                                ; 14C9 _ 83. E0, 02
        test    eax, eax                                ; 14CC _ 85. C0
        jz      ?_036                                   ; 14CE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14D0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14D3 _ 8B. 45, FC
        add     eax, edx                                ; 14D6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 14D8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 14DC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14DE _ 8B. 45, 10
        add     eax, edx                                ; 14E1 _ 01. D0
        lea     edx, [eax+6H]                           ; 14E3 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 14E6 _ 8B. 45, 08
        add     edx, eax                                ; 14E9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 14EB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 14EF _ 88. 02
?_036:  movsx   eax, byte [ebp-5H]                      ; 14F1 _ 0F BE. 45, FB
        and     eax, 01H                                ; 14F5 _ 83. E0, 01
        test    eax, eax                                ; 14F8 _ 85. C0
        jz      ?_037                                   ; 14FA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 14FC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 14FF _ 8B. 45, FC
        add     eax, edx                                ; 1502 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1504 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1508 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 150A _ 8B. 45, 10
        add     eax, edx                                ; 150D _ 01. D0
        lea     edx, [eax+7H]                           ; 150F _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1512 _ 8B. 45, 08
        add     edx, eax                                ; 1515 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1517 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 151B _ 88. 02
?_037:  add     dword [ebp-4H], 1                       ; 151D _ 83. 45, FC, 01
?_038:  cmp     dword [ebp-4H], 15                      ; 1521 _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 1525 _ 0F 8E, FFFFFE8A
        nop                                             ; 152B _ 90
        leave                                           ; 152C _ C9
        ret                                             ; 152D _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 152E _ 55
        mov     ebp, esp                                ; 152F _ 89. E5
        sub     esp, 20                                 ; 1531 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1534 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1537 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 153A _ C7. 45, FC, 00000000
        jmp     ?_045                                   ; 1541 _ E9, 000000B1

?_039:  mov     dword [ebp-8H], 0                       ; 1546 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 154D _ E9, 00000097

?_040:  mov     eax, dword [ebp-4H]                     ; 1552 _ 8B. 45, FC
        shl     eax, 4                                  ; 1555 _ C1. E0, 04
        mov     edx, eax                                ; 1558 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 155A _ 8B. 45, F8
        add     eax, edx                                ; 155D _ 01. D0
        add     eax, cursor.2391                        ; 155F _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1564 _ 0F B6. 00
        cmp     al, 42                                  ; 1567 _ 3C, 2A
        jnz     ?_041                                   ; 1569 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 156B _ 8B. 45, FC
        shl     eax, 4                                  ; 156E _ C1. E0, 04
        mov     edx, eax                                ; 1571 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1573 _ 8B. 45, F8
        add     eax, edx                                ; 1576 _ 01. D0
        mov     edx, eax                                ; 1578 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 157A _ 8B. 45, 08
        add     eax, edx                                ; 157D _ 01. D0
        mov     byte [eax], 0                           ; 157F _ C6. 00, 00
?_041:  mov     eax, dword [ebp-4H]                     ; 1582 _ 8B. 45, FC
        shl     eax, 4                                  ; 1585 _ C1. E0, 04
        mov     edx, eax                                ; 1588 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 158A _ 8B. 45, F8
        add     eax, edx                                ; 158D _ 01. D0
        add     eax, cursor.2391                        ; 158F _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1594 _ 0F B6. 00
        cmp     al, 79                                  ; 1597 _ 3C, 4F
        jnz     ?_042                                   ; 1599 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 159B _ 8B. 45, FC
        shl     eax, 4                                  ; 159E _ C1. E0, 04
        mov     edx, eax                                ; 15A1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15A3 _ 8B. 45, F8
        add     eax, edx                                ; 15A6 _ 01. D0
        mov     edx, eax                                ; 15A8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15AA _ 8B. 45, 08
        add     eax, edx                                ; 15AD _ 01. D0
        mov     byte [eax], 7                           ; 15AF _ C6. 00, 07
?_042:  mov     eax, dword [ebp-4H]                     ; 15B2 _ 8B. 45, FC
        shl     eax, 4                                  ; 15B5 _ C1. E0, 04
        mov     edx, eax                                ; 15B8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15BA _ 8B. 45, F8
        add     eax, edx                                ; 15BD _ 01. D0
        add     eax, cursor.2391                        ; 15BF _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 15C4 _ 0F B6. 00
        cmp     al, 46                                  ; 15C7 _ 3C, 2E
        jnz     ?_043                                   ; 15C9 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 15CB _ 8B. 45, FC
        shl     eax, 4                                  ; 15CE _ C1. E0, 04
        mov     edx, eax                                ; 15D1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15D3 _ 8B. 45, F8
        add     eax, edx                                ; 15D6 _ 01. D0
        mov     edx, eax                                ; 15D8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15DA _ 8B. 45, 08
        add     edx, eax                                ; 15DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15E3 _ 88. 02
?_043:  add     dword [ebp-8H], 1                       ; 15E5 _ 83. 45, F8, 01
?_044:  cmp     dword [ebp-8H], 15                      ; 15E9 _ 83. 7D, F8, 0F
        jle     ?_040                                   ; 15ED _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 15F3 _ 83. 45, FC, 01
?_045:  cmp     dword [ebp-4H], 15                      ; 15F7 _ 83. 7D, FC, 0F
        jle     ?_039                                   ; 15FB _ 0F 8E, FFFFFF45
        nop                                             ; 1601 _ 90
        leave                                           ; 1602 _ C9
        ret                                             ; 1603 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1604 _ 55
        mov     ebp, esp                                ; 1605 _ 89. E5
        push    ebx                                     ; 1607 _ 53
        sub     esp, 16                                 ; 1608 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 160B _ C7. 45, F8, 00000000
        jmp     ?_049                                   ; 1612 _ EB, 50

?_046:  mov     dword [ebp-0CH], 0                      ; 1614 _ C7. 45, F4, 00000000
        jmp     ?_048                                   ; 161B _ EB, 3B

?_047:  mov     eax, dword [ebp-8H]                     ; 161D _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1620 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1624 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1626 _ 8B. 45, F4
        add     eax, edx                                ; 1629 _ 01. D0
        mov     edx, eax                                ; 162B _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 162D _ 8B. 45, 20
        add     eax, edx                                ; 1630 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1632 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1635 _ 8B. 55, F8
        add     edx, ecx                                ; 1638 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 163A _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 163E _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1641 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1644 _ 01. D9
        add     edx, ecx                                ; 1646 _ 01. CA
        mov     ecx, edx                                ; 1648 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 164A _ 8B. 55, 08
        add     edx, ecx                                ; 164D _ 01. CA
        movzx   eax, byte [eax]                         ; 164F _ 0F B6. 00
        mov     byte [edx], al                          ; 1652 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1654 _ 83. 45, F4, 01
?_048:  mov     eax, dword [ebp-0CH]                    ; 1658 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 165B _ 3B. 45, 10
        jl      ?_047                                   ; 165E _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1660 _ 83. 45, F8, 01
?_049:  mov     eax, dword [ebp-8H]                     ; 1664 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1667 _ 3B. 45, 14
        jl      ?_046                                   ; 166A _ 7C, A8
        nop                                             ; 166C _ 90
        add     esp, 16                                 ; 166D _ 83. C4, 10
        pop     ebx                                     ; 1670 _ 5B
        pop     ebp                                     ; 1671 _ 5D
        ret                                             ; 1672 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1673 _ 55
        mov     ebp, esp                                ; 1674 _ 89. E5
        sub     esp, 24                                 ; 1676 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1679 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 167E _ 89. 45, EC
        movzx   eax, word [?_218]                       ; 1681 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1688 _ 98
        mov     dword [ebp-10H], eax                    ; 1689 _ 89. 45, F0
        movzx   eax, word [?_219]                       ; 168C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1693 _ 98
        mov     dword [ebp-0CH], eax                    ; 1694 _ 89. 45, F4
        sub     esp, 8                                  ; 1697 _ 83. EC, 08
        push    32                                      ; 169A _ 6A, 20
        push    32                                      ; 169C _ 6A, 20
        call    io_out8                                 ; 169E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16A3 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 16A6 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 16AA _ 83. EC, 0C
        push    96                                      ; 16AD _ 6A, 60
        call    io_in8                                  ; 16AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16B4 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 16B7 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 16BA _ 0F B6. 45, EB
        sub     esp, 8                                  ; 16BE _ 83. EC, 08
        push    eax                                     ; 16C1 _ 50
        push    keyInfo                                 ; 16C2 _ 68, 00000008(d)
        call    fifo8_put                               ; 16C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16CC _ 83. C4, 10
        nop                                             ; 16CF _ 90
        leave                                           ; 16D0 _ C9
        ret                                             ; 16D1 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 16D2 _ 55
        mov     ebp, esp                                ; 16D3 _ 89. E5
        sub     esp, 40                                 ; 16D5 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 16D8 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 16DB _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 16DE _ 0F B6. 45, E4
        and     eax, 0FH                                ; 16E2 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 16E5 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 16E8 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 16EC _ 83. EC, 0C
        push    eax                                     ; 16EF _ 50
        call    charToVal                               ; 16F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16F5 _ 83. C4, 10
        mov     byte [?_217], al                        ; 16F8 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 16FD _ 0F B6. 45, E4
        shr     al, 4                                   ; 1701 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1704 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1707 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 170B _ 0F BE. C0
        sub     esp, 12                                 ; 170E _ 83. EC, 0C
        push    eax                                     ; 1711 _ 50
        call    charToVal                               ; 1712 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1717 _ 83. C4, 10
        mov     byte [?_216], al                        ; 171A _ A2, 00000002(d)
        mov     eax, keyVal                             ; 171F _ B8, 00000000(d)
        leave                                           ; 1724 _ C9
        ret                                             ; 1725 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1726 _ 55
        mov     ebp, esp                                ; 1727 _ 89. E5
        sub     esp, 4                                  ; 1729 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 172C _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 172F _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1732 _ 80. 7D, FC, 09
        jle     ?_050                                   ; 1736 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1738 _ 0F B6. 45, FC
        add     eax, 55                                 ; 173C _ 83. C0, 37
        jmp     ?_051                                   ; 173F _ EB, 07

?_050:  movzx   eax, byte [ebp-4H]                      ; 1741 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1745 _ 83. C0, 30
?_051:  leave                                           ; 1748 _ C9
        ret                                             ; 1749 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 174A _ 55
        mov     ebp, esp                                ; 174B _ 89. E5
        sub     esp, 16                                 ; 174D _ 83. EC, 10
        mov     byte [str.2434], 48                     ; 1750 _ C6. 05, 00000250(d), 30
        mov     byte [?_222], 120                       ; 1757 _ C6. 05, 00000251(d), 78
        mov     byte [?_223], 0                         ; 175E _ C6. 05, 0000025A(d), 00
        mov     dword [ebp-0CH], 2                      ; 1765 _ C7. 45, F4, 00000002
        jmp     ?_053                                   ; 176C _ EB, 0F

?_052:  mov     eax, dword [ebp-0CH]                    ; 176E _ 8B. 45, F4
        add     eax, str.2434                           ; 1771 _ 05, 00000250(d)
        mov     byte [eax], 48                          ; 1776 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1779 _ 83. 45, F4, 01
?_053:  cmp     dword [ebp-0CH], 9                      ; 177D _ 83. 7D, F4, 09
        jle     ?_052                                   ; 1781 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1783 _ C7. 45, F8, 00000009
        jmp     ?_056                                   ; 178A _ EB, 48

?_054:  mov     eax, dword [ebp+8H]                     ; 178C _ 8B. 45, 08
        and     eax, 0FH                                ; 178F _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1792 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1795 _ 8B. 45, 08
        shr     eax, 4                                  ; 1798 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 179B _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 179E _ 83. 7D, FC, 09
        jle     ?_055                                   ; 17A2 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 17A4 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 17A7 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 17AA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 17AD _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 17B0 _ 89. 55, F8
        mov     edx, ecx                                ; 17B3 _ 89. CA
        mov     byte [str.2434+eax], dl                 ; 17B5 _ 88. 90, 00000250(d)
        jmp     ?_056                                   ; 17BB _ EB, 17

?_055:  mov     eax, dword [ebp-4H]                     ; 17BD _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 17C0 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 17C3 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 17C6 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 17C9 _ 89. 55, F8
        mov     edx, ecx                                ; 17CC _ 89. CA
        mov     byte [str.2434+eax], dl                 ; 17CE _ 88. 90, 00000250(d)
?_056:  cmp     dword [ebp-8H], 1                       ; 17D4 _ 83. 7D, F8, 01
        jle     ?_057                                   ; 17D8 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 17DA _ 83. 7D, 08, 00
        jnz     ?_054                                   ; 17DE _ 75, AC
?_057:  mov     eax, str.2434                           ; 17E0 _ B8, 00000250(d)
        leave                                           ; 17E5 _ C9
        ret                                             ; 17E6 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 17E7 _ 55
        mov     ebp, esp                                ; 17E8 _ 89. E5
        sub     esp, 8                                  ; 17EA _ 83. EC, 08
?_058:  sub     esp, 12                                 ; 17ED _ 83. EC, 0C
        push    100                                     ; 17F0 _ 6A, 64
        call    io_in8                                  ; 17F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17F7 _ 83. C4, 10
        movsx   eax, al                                 ; 17FA _ 0F BE. C0
        and     eax, 02H                                ; 17FD _ 83. E0, 02
        test    eax, eax                                ; 1800 _ 85. C0
        jz      ?_059                                   ; 1802 _ 74, 02
        jmp     ?_058                                   ; 1804 _ EB, E7

?_059:  nop                                             ; 1806 _ 90
        nop                                             ; 1807 _ 90
        leave                                           ; 1808 _ C9
        ret                                             ; 1809 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 180A _ 55
        mov     ebp, esp                                ; 180B _ 89. E5
        sub     esp, 8                                  ; 180D _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1810 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1815 _ 83. EC, 08
        push    96                                      ; 1818 _ 6A, 60
        push    100                                     ; 181A _ 6A, 64
        call    io_out8                                 ; 181C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1821 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1824 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1829 _ 83. EC, 08
        push    71                                      ; 182C _ 6A, 47
        push    96                                      ; 182E _ 6A, 60
        call    io_out8                                 ; 1830 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1835 _ 83. C4, 10
        nop                                             ; 1838 _ 90
        leave                                           ; 1839 _ C9
        ret                                             ; 183A _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 183B _ 55
        mov     ebp, esp                                ; 183C _ 89. E5
        sub     esp, 8                                  ; 183E _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1841 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1846 _ 83. EC, 08
        push    212                                     ; 1849 _ 68, 000000D4
        push    100                                     ; 184E _ 6A, 64
        call    io_out8                                 ; 1850 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1855 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1858 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 185D _ 83. EC, 08
        push    244                                     ; 1860 _ 68, 000000F4
        push    96                                      ; 1865 _ 6A, 60
        call    io_out8                                 ; 1867 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 186C _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 186F _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1872 _ C6. 40, 03, 00
        nop                                             ; 1876 _ 90
        leave                                           ; 1877 _ C9
        ret                                             ; 1878 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1879 _ 55
        mov     ebp, esp                                ; 187A _ 89. E5
        sub     esp, 24                                 ; 187C _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 187F _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1883 _ 83. EC, 08
        push    32                                      ; 1886 _ 6A, 20
        push    160                                     ; 1888 _ 68, 000000A0
        call    io_out8                                 ; 188D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1892 _ 83. C4, 10
        sub     esp, 8                                  ; 1895 _ 83. EC, 08
        push    32                                      ; 1898 _ 6A, 20
        push    32                                      ; 189A _ 6A, 20
        call    io_out8                                 ; 189C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18A1 _ 83. C4, 10
        sub     esp, 12                                 ; 18A4 _ 83. EC, 0C
        push    96                                      ; 18A7 _ 6A, 60
        call    io_in8                                  ; 18A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18AE _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 18B1 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 18B4 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 18B8 _ 83. EC, 08
        push    eax                                     ; 18BB _ 50
        push    mouseInfo                               ; 18BC _ 68, 00000024(d)
        call    fifo8_put                               ; 18C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18C6 _ 83. C4, 10
        nop                                             ; 18C9 _ 90
        leave                                           ; 18CA _ C9
        ret                                             ; 18CB _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 18CC _ 55
        mov     ebp, esp                                ; 18CD _ 89. E5
        sub     esp, 40                                 ; 18CF _ 83. EC, 28
        call    io_sti                                  ; 18D2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 18D7 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 18DC _ 89. 45, E8
        movzx   eax, word [?_218]                       ; 18DF _ 0F B7. 05, 00000004(d)
        cwde                                            ; 18E6 _ 98
        mov     dword [ebp-14H], eax                    ; 18E7 _ 89. 45, EC
        movzx   eax, word [?_219]                       ; 18EA _ 0F B7. 05, 00000006(d)
        cwde                                            ; 18F1 _ 98
        mov     dword [ebp-10H], eax                    ; 18F2 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 18F5 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 18F9 _ 83. EC, 0C
        push    keyInfo                                 ; 18FC _ 68, 00000008(d)
        call    fifo8_get                               ; 1901 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1906 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1909 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 190C _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1910 _ 83. EC, 0C
        push    eax                                     ; 1913 _ 50
        call    charToHex                               ; 1914 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1919 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 191C _ 89. 45, F4
        mov     edx, dword [line.2467]                  ; 191F _ 8B. 15, 0000025C(d)
        mov     eax, dword [pos.2466]                   ; 1925 _ A1, 00000260(d)
        sub     esp, 8                                  ; 192A _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 192D _ FF. 75, F4
        push    7                                       ; 1930 _ 6A, 07
        push    edx                                     ; 1932 _ 52
        push    eax                                     ; 1933 _ 50
        push    dword [ebp+0CH]                         ; 1934 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1937 _ FF. 75, 08
        call    showString                              ; 193A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 193F _ 83. C4, 20
        mov     eax, dword [pos.2466]                   ; 1942 _ A1, 00000260(d)
        add     eax, 32                                 ; 1947 _ 83. C0, 20
        mov     dword [pos.2466], eax                   ; 194A _ A3, 00000260(d)
        mov     eax, dword [pos.2466]                   ; 194F _ A1, 00000260(d)
        cmp     dword [ebp-14H], eax                    ; 1954 _ 39. 45, EC
        jnz     ?_062                                   ; 1957 _ 75, 28
        mov     eax, dword [line.2467]                  ; 1959 _ A1, 0000025C(d)
        cmp     dword [ebp-10H], eax                    ; 195E _ 39. 45, F0
        jz      ?_060                                   ; 1961 _ 74, 0A
        mov     eax, dword [line.2467]                  ; 1963 _ A1, 0000025C(d)
        add     eax, 16                                 ; 1968 _ 83. C0, 10
        jmp     ?_061                                   ; 196B _ EB, 05

?_060:  mov     eax, 0                                  ; 196D _ B8, 00000000
?_061:  mov     dword [line.2467], eax                  ; 1972 _ A3, 0000025C(d)
        mov     dword [pos.2466], 0                     ; 1977 _ C7. 05, 00000260(d), 00000000
?_062:  nop                                             ; 1981 _ 90
        leave                                           ; 1982 _ C9
        ret                                             ; 1983 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1984 _ 55
        mov     ebp, esp                                ; 1985 _ 89. E5
        sub     esp, 24                                 ; 1987 _ 83. EC, 18
        call    io_sti                                  ; 198A _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 198F _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1993 _ 83. EC, 0C
        push    mouseInfo                               ; 1996 _ 68, 00000024(d)
        call    fifo8_get                               ; 199B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19A0 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 19A3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 19A6 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 19AA _ 83. EC, 08
        push    eax                                     ; 19AD _ 50
        push    mouse_move                              ; 19AE _ 68, 000000E0(d)
        call    mouse_decode                            ; 19B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19B8 _ 83. C4, 10
        test    eax, eax                                ; 19BB _ 85. C0
        jz      ?_063                                   ; 19BD _ 74, 60
        sub     esp, 4                                  ; 19BF _ 83. EC, 04
        push    mouse_move                              ; 19C2 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 19C7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19CA _ FF. 75, 08
        call    computeMousePos                         ; 19CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19D2 _ 83. C4, 10
        mov     edx, dword [my]                         ; 19D5 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 19DB _ A1, 000000F0(d)
        push    edx                                     ; 19E0 _ 52
        push    eax                                     ; 19E1 _ 50
        push    dword [ebp+10H]                         ; 19E2 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 19E5 _ FF. 75, 08
        call    sheet_slide                             ; 19E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19ED _ 83. C4, 10
        mov     eax, dword [?_221]                      ; 19F0 _ A1, 000000EC(d)
        and     eax, 01H                                ; 19F5 _ 83. E0, 01
        test    eax, eax                                ; 19F8 _ 85. C0
        jz      ?_063                                   ; 19FA _ 74, 23
        mov     eax, dword [my]                         ; 19FC _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1A01 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1A04 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1A09 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1A0C _ A1, 00000228(d)
        push    ecx                                     ; 1A11 _ 51
        push    edx                                     ; 1A12 _ 52
        push    eax                                     ; 1A13 _ 50
        push    dword [ebp+8H]                          ; 1A14 _ FF. 75, 08
        call    sheet_slide                             ; 1A17 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A1C _ 83. C4, 10
?_063:  nop                                             ; 1A1F _ 90
        leave                                           ; 1A20 _ C9
        ret                                             ; 1A21 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1A22 _ 55
        mov     ebp, esp                                ; 1A23 _ 89. E5
        sub     esp, 4                                  ; 1A25 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1A28 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1A2B _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1A2E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A31 _ 0F B6. 40, 03
        test    al, al                                  ; 1A35 _ 84. C0
        jnz     ?_065                                   ; 1A37 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1A39 _ 80. 7D, FC, FA
        jnz     ?_064                                   ; 1A3D _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1A3F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1A42 _ C6. 40, 03, 01
?_064:  mov     eax, 0                                  ; 1A46 _ B8, 00000000
        jmp     ?_072                                   ; 1A4B _ E9, 0000010C

?_065:  mov     eax, dword [ebp+8H]                     ; 1A50 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A53 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1A57 _ 3C, 01
        jnz     ?_067                                   ; 1A59 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1A5B _ 0F B6. 45, FC
        or      eax, 37H                                ; 1A5F _ 83. C8, 37
        cmp     al, 63                                  ; 1A62 _ 3C, 3F
        jnz     ?_066                                   ; 1A64 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1A66 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1A69 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1A6D _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1A6F _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1A72 _ C6. 40, 03, 02
?_066:  mov     eax, 0                                  ; 1A76 _ B8, 00000000
        jmp     ?_072                                   ; 1A7B _ E9, 000000DC

?_067:  mov     eax, dword [ebp+8H]                     ; 1A80 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1A83 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1A87 _ 3C, 02
        jnz     ?_068                                   ; 1A89 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1A8B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1A8E _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1A92 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A95 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1A98 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1A9C _ B8, 00000000
        jmp     ?_072                                   ; 1AA1 _ E9, 000000B6

?_068:  mov     eax, dword [ebp+8H]                     ; 1AA6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1AA9 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1AAD _ 3C, 03
        jne     ?_071                                   ; 1AAF _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1AB5 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1AB8 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1ABC _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1ABF _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1AC2 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1AC6 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1AC9 _ 0F B6. 00
        movzx   eax, al                                 ; 1ACC _ 0F B6. C0
        and     eax, 07H                                ; 1ACF _ 83. E0, 07
        mov     edx, eax                                ; 1AD2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1AD4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1AD7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1ADA _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1ADD _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1AE1 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1AE4 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1AE7 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AEA _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1AED _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1AF1 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1AF4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1AF7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1AFA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1AFD _ 0F B6. 00
        movzx   eax, al                                 ; 1B00 _ 0F B6. C0
        and     eax, 10H                                ; 1B03 _ 83. E0, 10
        test    eax, eax                                ; 1B06 _ 85. C0
        jz      ?_069                                   ; 1B08 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1B0A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1B0D _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1B10 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1B15 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B17 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1B1A _ 89. 50, 04
?_069:  mov     eax, dword [ebp+8H]                     ; 1B1D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1B20 _ 0F B6. 00
        movzx   eax, al                                 ; 1B23 _ 0F B6. C0
        and     eax, 20H                                ; 1B26 _ 83. E0, 20
        test    eax, eax                                ; 1B29 _ 85. C0
        jz      ?_070                                   ; 1B2B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1B2D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1B30 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1B33 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1B38 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B3A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1B3D _ 89. 50, 08
?_070:  mov     eax, dword [ebp+8H]                     ; 1B40 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1B43 _ 8B. 40, 08
        neg     eax                                     ; 1B46 _ F7. D8
        mov     edx, eax                                ; 1B48 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B4A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1B4D _ 89. 50, 08
        mov     eax, 1                                  ; 1B50 _ B8, 00000001
        jmp     ?_072                                   ; 1B55 _ EB, 05

?_071:  mov     eax, 4294967295                         ; 1B57 _ B8, FFFFFFFF
?_072:  leave                                           ; 1B5C _ C9
        ret                                             ; 1B5D _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1B5E _ 55
        mov     ebp, esp                                ; 1B5F _ 89. E5
        sub     esp, 16                                 ; 1B61 _ 83. EC, 10
        movzx   eax, word [?_218]                       ; 1B64 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1B6B _ 98
        mov     dword [ebp-8H], eax                     ; 1B6C _ 89. 45, F8
        movzx   eax, word [?_219]                       ; 1B6F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1B76 _ 98
        mov     dword [ebp-4H], eax                     ; 1B77 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1B7A _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1B7D _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1B80 _ A1, 000000F0(d)
        add     eax, edx                                ; 1B85 _ 01. D0
        mov     dword [mx], eax                         ; 1B87 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1B8C _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1B8F _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1B92 _ A1, 000000F4(d)
        add     eax, edx                                ; 1B97 _ 01. D0
        mov     dword [my], eax                         ; 1B99 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1B9E _ A1, 000000F0(d)
        test    eax, eax                                ; 1BA3 _ 85. C0
        jns     ?_073                                   ; 1BA5 _ 79, 0A
        mov     dword [mx], 0                           ; 1BA7 _ C7. 05, 000000F0(d), 00000000
?_073:  mov     eax, dword [my]                         ; 1BB1 _ A1, 000000F4(d)
        test    eax, eax                                ; 1BB6 _ 85. C0
        jns     ?_074                                   ; 1BB8 _ 79, 0A
        mov     dword [my], 0                           ; 1BBA _ C7. 05, 000000F4(d), 00000000
?_074:  mov     eax, dword [ebp-8H]                     ; 1BC4 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1BC7 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1BCA _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1BCF _ 39. C2
        jge     ?_075                                   ; 1BD1 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1BD3 _ 8B. 45, F8
        sub     eax, 9                                  ; 1BD6 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1BD9 _ A3, 000000F0(d)
?_075:  mov     eax, dword [ebp-4H]                     ; 1BDE _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1BE1 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1BE4 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1BE9 _ 39. C2
        jge     ?_076                                   ; 1BEB _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1BED _ 8B. 45, FC
        sub     eax, 1                                  ; 1BF0 _ 83. E8, 01
        mov     dword [my], eax                         ; 1BF3 _ A3, 000000F4(d)
?_076:  nop                                             ; 1BF8 _ 90
        leave                                           ; 1BF9 _ C9
        ret                                             ; 1BFA _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1BFB _ 55
        mov     ebp, esp                                ; 1BFC _ 89. E5
        sub     esp, 56                                 ; 1BFE _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1C01 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1C08 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1C0F _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1C16 _ C7. 45, DC, 00000050
        push    100                                     ; 1C1D _ 6A, 64
        push    dword [ebp+1CH]                         ; 1C1F _ FF. 75, 1C
        push    0                                       ; 1C22 _ 6A, 00
        push    0                                       ; 1C24 _ 6A, 00
        push    14                                      ; 1C26 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1C28 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1C2B _ FF. 75, 14
        call    boxfill8                                ; 1C2E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C33 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1C36 _ 8B. 45, 20
        movsx   eax, al                                 ; 1C39 _ 0F BE. C0
        sub     esp, 8                                  ; 1C3C _ 83. EC, 08
        push    ?_210                                   ; 1C3F _ 68, 0000003F(d)
        push    eax                                     ; 1C44 _ 50
        push    dword [ebp-2CH]                         ; 1C45 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1C48 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1C4B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C4E _ FF. 75, 08
        call    showString                              ; 1C51 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C56 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1C59 _ 8B. 45, 18
        sub     esp, 12                                 ; 1C5C _ 83. EC, 0C
        push    eax                                     ; 1C5F _ 50
        call    intToHexStr                             ; 1C60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C65 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1C68 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1C6B _ 8B. 45, 20
        movsx   eax, al                                 ; 1C6E _ 0F BE. C0
        sub     esp, 8                                  ; 1C71 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1C74 _ FF. 75, E0
        push    eax                                     ; 1C77 _ 50
        push    dword [ebp-2CH]                         ; 1C78 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1C7B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1C7E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1C81 _ FF. 75, 08
        call    showString                              ; 1C84 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C89 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1C8C _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1C90 _ 8B. 45, 20
        movsx   eax, al                                 ; 1C93 _ 0F BE. C0
        sub     esp, 8                                  ; 1C96 _ 83. EC, 08
        push    ?_211                                   ; 1C99 _ 68, 00000049(d)
        push    eax                                     ; 1C9E _ 50
        push    dword [ebp-2CH]                         ; 1C9F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1CA2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1CA5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CA8 _ FF. 75, 08
        call    showString                              ; 1CAB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CB0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1CB3 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1CB6 _ 8B. 00
        sub     esp, 12                                 ; 1CB8 _ 83. EC, 0C
        push    eax                                     ; 1CBB _ 50
        call    intToHexStr                             ; 1CBC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC1 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1CC4 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1CC7 _ 8B. 45, 20
        movsx   eax, al                                 ; 1CCA _ 0F BE. C0
        sub     esp, 8                                  ; 1CCD _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1CD0 _ FF. 75, E4
        push    eax                                     ; 1CD3 _ 50
        push    dword [ebp-2CH]                         ; 1CD4 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1CD7 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1CDA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CDD _ FF. 75, 08
        call    showString                              ; 1CE0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CE5 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1CE8 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1CEC _ 8B. 45, 20
        movsx   eax, al                                 ; 1CEF _ 0F BE. C0
        sub     esp, 8                                  ; 1CF2 _ 83. EC, 08
        push    ?_212                                   ; 1CF5 _ 68, 00000057(d)
        push    eax                                     ; 1CFA _ 50
        push    dword [ebp-2CH]                         ; 1CFB _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1CFE _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D01 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D04 _ FF. 75, 08
        call    showString                              ; 1D07 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D0C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1D0F _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1D12 _ 8B. 40, 04
        sub     esp, 12                                 ; 1D15 _ 83. EC, 0C
        push    eax                                     ; 1D18 _ 50
        call    intToHexStr                             ; 1D19 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D1E _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1D21 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1D24 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D27 _ 0F BE. C0
        sub     esp, 8                                  ; 1D2A _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1D2D _ FF. 75, E8
        push    eax                                     ; 1D30 _ 50
        push    dword [ebp-2CH]                         ; 1D31 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D34 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D37 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D3A _ FF. 75, 08
        call    showString                              ; 1D3D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D42 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1D45 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1D49 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D4C _ 0F BE. C0
        sub     esp, 8                                  ; 1D4F _ 83. EC, 08
        push    ?_213                                   ; 1D52 _ 68, 00000066(d)
        push    eax                                     ; 1D57 _ 50
        push    dword [ebp-2CH]                         ; 1D58 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1D5B _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1D5E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D61 _ FF. 75, 08
        call    showString                              ; 1D64 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D69 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1D6C _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1D6F _ 8B. 40, 08
        sub     esp, 12                                 ; 1D72 _ 83. EC, 0C
        push    eax                                     ; 1D75 _ 50
        call    intToHexStr                             ; 1D76 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D7B _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1D7E _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1D81 _ 8B. 45, 20
        movsx   eax, al                                 ; 1D84 _ 0F BE. C0
        sub     esp, 8                                  ; 1D87 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1D8A _ FF. 75, EC
        push    eax                                     ; 1D8D _ 50
        push    dword [ebp-2CH]                         ; 1D8E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1D91 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1D94 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D97 _ FF. 75, 08
        call    showString                              ; 1D9A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D9F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DA2 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1DA6 _ 8B. 45, 20
        movsx   eax, al                                 ; 1DA9 _ 0F BE. C0
        sub     esp, 8                                  ; 1DAC _ 83. EC, 08
        push    ?_214                                   ; 1DAF _ 68, 00000072(d)
        push    eax                                     ; 1DB4 _ 50
        push    dword [ebp-2CH]                         ; 1DB5 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1DB8 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1DBB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DBE _ FF. 75, 08
        call    showString                              ; 1DC1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DC6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DC9 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1DCC _ 8B. 40, 0C
        sub     esp, 12                                 ; 1DCF _ 83. EC, 0C
        push    eax                                     ; 1DD2 _ 50
        call    intToHexStr                             ; 1DD3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DD8 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1DDB _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1DDE _ 8B. 45, 20
        movsx   eax, al                                 ; 1DE1 _ 0F BE. C0
        sub     esp, 8                                  ; 1DE4 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1DE7 _ FF. 75, F0
        push    eax                                     ; 1DEA _ 50
        push    dword [ebp-2CH]                         ; 1DEB _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1DEE _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1DF1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DF4 _ FF. 75, 08
        call    showString                              ; 1DF7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DFC _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1DFF _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1E03 _ 8B. 45, 20
        movsx   eax, al                                 ; 1E06 _ 0F BE. C0
        sub     esp, 8                                  ; 1E09 _ 83. EC, 08
        push    ?_215                                   ; 1E0C _ 68, 0000007F(d)
        push    eax                                     ; 1E11 _ 50
        push    dword [ebp-2CH]                         ; 1E12 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1E15 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1E18 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E1B _ FF. 75, 08
        call    showString                              ; 1E1E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E23 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1E26 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1E29 _ 8B. 40, 10
        sub     esp, 12                                 ; 1E2C _ 83. EC, 0C
        push    eax                                     ; 1E2F _ 50
        call    intToHexStr                             ; 1E30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E35 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1E38 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1E3B _ 8B. 45, 20
        movsx   eax, al                                 ; 1E3E _ 0F BE. C0
        sub     esp, 8                                  ; 1E41 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1E44 _ FF. 75, F4
        push    eax                                     ; 1E47 _ 50
        push    dword [ebp-2CH]                         ; 1E48 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1E4B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1E4E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E51 _ FF. 75, 08
        call    showString                              ; 1E54 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E59 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1E5C _ 83. 45, D4, 10
        nop                                             ; 1E60 _ 90
        leave                                           ; 1E61 _ C9
        ret                                             ; 1E62 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1E63 _ 55
        mov     ebp, esp                                ; 1E64 _ 89. E5
        sub     esp, 24                                 ; 1E66 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 1E69 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1E6C _ 0F AF. 45, 14
        mov     edx, eax                                ; 1E70 _ 89. C2
        mov     eax, dword [memman]                     ; 1E72 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1E77 _ 83. EC, 08
        push    edx                                     ; 1E7A _ 52
        push    eax                                     ; 1E7B _ 50
        call    memman_alloc_4K                         ; 1E7C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E81 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1E84 _ 89. 45, F0
        sub     esp, 12                                 ; 1E87 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1E8A _ FF. 75, 08
        call    sheet_alloc                             ; 1E8D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E92 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1E95 _ 89. 45, F4
        sub     esp, 12                                 ; 1E98 _ 83. EC, 0C
        push    99                                      ; 1E9B _ 6A, 63
        push    dword [ebp+14H]                         ; 1E9D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1EA0 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 1EA3 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1EA6 _ FF. 75, F4
        call    sheet_setbuf                            ; 1EA9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EAE _ 83. C4, 20
        sub     esp, 4                                  ; 1EB1 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1EB4 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1EB7 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1EBA _ FF. 75, 08
        call    make_window8                            ; 1EBD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EC2 _ 83. C4, 10
        sub     esp, 8                                  ; 1EC5 _ 83. EC, 08
        push    7                                       ; 1EC8 _ 6A, 07
        push    16                                      ; 1ECA _ 6A, 10
        push    150                                     ; 1ECC _ 68, 00000096
        push    42                                      ; 1ED1 _ 6A, 2A
        push    10                                      ; 1ED3 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 1ED5 _ FF. 75, F4
        call    make_textbox8                           ; 1ED8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EDD _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 1EE0 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1EE3 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1EE6 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1EE9 _ FF. 75, 08
        call    sheet_slide                             ; 1EEC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EF1 _ 83. C4, 10
        sub     esp, 4                                  ; 1EF4 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 1EF7 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 1EFA _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1EFD _ FF. 75, 08
        call    sheet_level_updown                      ; 1F00 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F05 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1F08 _ 8B. 45, F4
        leave                                           ; 1F0B _ C9
        ret                                             ; 1F0C _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 1F0D _ 55
        mov     ebp, esp                                ; 1F0E _ 89. E5
        sub     esp, 24                                 ; 1F10 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 1F13 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 1F16 _ 0F AF. 45, 20
        mov     edx, eax                                ; 1F1A _ 89. C2
        mov     eax, dword [memman]                     ; 1F1C _ A1, 00000008(d)
        sub     esp, 8                                  ; 1F21 _ 83. EC, 08
        push    edx                                     ; 1F24 _ 52
        push    eax                                     ; 1F25 _ 50
        call    memman_alloc_4K                         ; 1F26 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F2B _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1F2E _ 89. 45, F0
        sub     esp, 12                                 ; 1F31 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1F34 _ FF. 75, 08
        call    sheet_alloc                             ; 1F37 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F3C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F3F _ 89. 45, F4
        sub     esp, 12                                 ; 1F42 _ 83. EC, 0C
        push    99                                      ; 1F45 _ 6A, 63
        push    dword [ebp+20H]                         ; 1F47 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 1F4A _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 1F4D _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1F50 _ FF. 75, F4
        call    sheet_setbuf                            ; 1F53 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F58 _ 83. C4, 20
        sub     esp, 4                                  ; 1F5B _ 83. EC, 04
        push    dword [ebp+18H]                         ; 1F5E _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 1F61 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1F64 _ FF. 75, 08
        call    make_window8                            ; 1F67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F6C _ 83. C4, 10
        call    task_alloc                              ; 1F6F _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 1F74 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F77 _ 8B. 45, 0C
        mov     dword [eax+70H], 0                      ; 1F7A _ C7. 40, 70, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1F81 _ 8B. 45, 0C
        mov     dword [eax+74H], 1073741824             ; 1F84 _ C7. 40, 74, 40000000
        call    get_code32_addr                         ; 1F8B _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 1F90 _ F7. D8
        add     eax, task_b_main                        ; 1F92 _ 05, 00000000(d)
        mov     edx, eax                                ; 1F97 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 1F99 _ 8B. 45, 0C
        mov     dword [eax+30H], edx                    ; 1F9C _ 89. 50, 30
        mov     eax, dword [ebp+0CH]                    ; 1F9F _ 8B. 45, 0C
        mov     dword [eax+58H], 0                      ; 1FA2 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1FA9 _ 8B. 45, 0C
        mov     dword [eax+5CH], 8                      ; 1FAC _ C7. 40, 5C, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1FB3 _ 8B. 45, 0C
        mov     dword [eax+60H], 32                     ; 1FB6 _ C7. 40, 60, 00000020
        mov     eax, dword [ebp+0CH]                    ; 1FBD _ 8B. 45, 0C
        mov     dword [eax+64H], 24                     ; 1FC0 _ C7. 40, 64, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1FC7 _ 8B. 45, 0C
        mov     dword [eax+68H], 0                      ; 1FCA _ C7. 40, 68, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1FD1 _ 8B. 45, 0C
        mov     dword [eax+6CH], 16                     ; 1FD4 _ C7. 40, 6C, 00000010
        mov     eax, dword [ebp+0CH]                    ; 1FDB _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 1FDE _ 8B. 40, 48
        lea     edx, [eax-8H]                           ; 1FE1 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 1FE4 _ 8B. 45, 0C
        mov     dword [eax+48H], edx                    ; 1FE7 _ 89. 50, 48
        mov     eax, dword [ebp+0CH]                    ; 1FEA _ 8B. 45, 0C
        mov     eax, dword [eax+48H]                    ; 1FED _ 8B. 40, 48
        add     eax, 4                                  ; 1FF0 _ 83. C0, 04
        mov     edx, eax                                ; 1FF3 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1FF5 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 1FF8 _ 89. 02
        sub     esp, 4                                  ; 1FFA _ 83. EC, 04
        push    dword [ebp+14H]                         ; 1FFD _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2000 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2003 _ FF. 75, 0C
        call    task_run                                ; 2006 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 200B _ 83. C4, 10
        push    dword [ebp+28H]                         ; 200E _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2011 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2014 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2017 _ FF. 75, 08
        call    sheet_slide                             ; 201A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 201F _ 83. C4, 10
        sub     esp, 4                                  ; 2022 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2025 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2028 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 202B _ FF. 75, 08
        call    sheet_level_updown                      ; 202E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2033 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2036 _ 8B. 45, F4
        leave                                           ; 2039 _ C9
        ret                                             ; 203A _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 203B _ 55
        mov     ebp, esp                                ; 203C _ 89. E5
        push    ebx                                     ; 203E _ 53
        sub     esp, 36                                 ; 203F _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 2042 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2045 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2048 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 204B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 204E _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2051 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2054 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2057 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 205A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 205D _ 8B. 00
        push    0                                       ; 205F _ 6A, 00
        push    edx                                     ; 2061 _ 52
        push    0                                       ; 2062 _ 6A, 00
        push    0                                       ; 2064 _ 6A, 00
        push    8                                       ; 2066 _ 6A, 08
        push    dword [ebp-10H]                         ; 2068 _ FF. 75, F0
        push    eax                                     ; 206B _ 50
        call    boxfill8                                ; 206C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2071 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2074 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2077 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 207A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 207D _ 8B. 00
        push    1                                       ; 207F _ 6A, 01
        push    edx                                     ; 2081 _ 52
        push    1                                       ; 2082 _ 6A, 01
        push    1                                       ; 2084 _ 6A, 01
        push    7                                       ; 2086 _ 6A, 07
        push    dword [ebp-10H]                         ; 2088 _ FF. 75, F0
        push    eax                                     ; 208B _ 50
        call    boxfill8                                ; 208C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2091 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2094 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2097 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 209A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 209D _ 8B. 00
        push    edx                                     ; 209F _ 52
        push    0                                       ; 20A0 _ 6A, 00
        push    0                                       ; 20A2 _ 6A, 00
        push    0                                       ; 20A4 _ 6A, 00
        push    8                                       ; 20A6 _ 6A, 08
        push    dword [ebp-10H]                         ; 20A8 _ FF. 75, F0
        push    eax                                     ; 20AB _ 50
        call    boxfill8                                ; 20AC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20B1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20B4 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 20B7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 20BA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20BD _ 8B. 00
        push    edx                                     ; 20BF _ 52
        push    1                                       ; 20C0 _ 6A, 01
        push    1                                       ; 20C2 _ 6A, 01
        push    1                                       ; 20C4 _ 6A, 01
        push    7                                       ; 20C6 _ 6A, 07
        push    dword [ebp-10H]                         ; 20C8 _ FF. 75, F0
        push    eax                                     ; 20CB _ 50
        call    boxfill8                                ; 20CC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20D1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20D4 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 20D7 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 20DA _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 20DD _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 20E0 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 20E3 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 20E6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 20E9 _ 8B. 00
        push    ebx                                     ; 20EB _ 53
        push    ecx                                     ; 20EC _ 51
        push    1                                       ; 20ED _ 6A, 01
        push    edx                                     ; 20EF _ 52
        push    15                                      ; 20F0 _ 6A, 0F
        push    dword [ebp-10H]                         ; 20F2 _ FF. 75, F0
        push    eax                                     ; 20F5 _ 50
        call    boxfill8                                ; 20F6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 20FB _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 20FE _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2101 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2104 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2107 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 210A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 210D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2110 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2113 _ 8B. 00
        push    ebx                                     ; 2115 _ 53
        push    ecx                                     ; 2116 _ 51
        push    0                                       ; 2117 _ 6A, 00
        push    edx                                     ; 2119 _ 52
        push    0                                       ; 211A _ 6A, 00
        push    dword [ebp-10H]                         ; 211C _ FF. 75, F0
        push    eax                                     ; 211F _ 50
        call    boxfill8                                ; 2120 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2125 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2128 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 212B _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 212E _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2131 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2134 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2137 _ 8B. 00
        push    ecx                                     ; 2139 _ 51
        push    edx                                     ; 213A _ 52
        push    2                                       ; 213B _ 6A, 02
        push    2                                       ; 213D _ 6A, 02
        push    8                                       ; 213F _ 6A, 08
        push    dword [ebp-10H]                         ; 2141 _ FF. 75, F0
        push    eax                                     ; 2144 _ 50
        call    boxfill8                                ; 2145 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 214A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 214D _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2150 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2153 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2156 _ 8B. 00
        push    20                                      ; 2158 _ 6A, 14
        push    edx                                     ; 215A _ 52
        push    3                                       ; 215B _ 6A, 03
        push    3                                       ; 215D _ 6A, 03
        push    12                                      ; 215F _ 6A, 0C
        push    dword [ebp-10H]                         ; 2161 _ FF. 75, F0
        push    eax                                     ; 2164 _ 50
        call    boxfill8                                ; 2165 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 216A _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 216D _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2170 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2173 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2176 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2179 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 217C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 217F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2182 _ 8B. 00
        push    ebx                                     ; 2184 _ 53
        push    ecx                                     ; 2185 _ 51
        push    edx                                     ; 2186 _ 52
        push    1                                       ; 2187 _ 6A, 01
        push    15                                      ; 2189 _ 6A, 0F
        push    dword [ebp-10H]                         ; 218B _ FF. 75, F0
        push    eax                                     ; 218E _ 50
        call    boxfill8                                ; 218F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2194 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2197 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 219A _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 219D _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 21A0 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 21A3 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21A6 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 21A9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 21AC _ 8B. 00
        push    ebx                                     ; 21AE _ 53
        push    ecx                                     ; 21AF _ 51
        push    edx                                     ; 21B0 _ 52
        push    0                                       ; 21B1 _ 6A, 00
        push    0                                       ; 21B3 _ 6A, 00
        push    dword [ebp-10H]                         ; 21B5 _ FF. 75, F0
        push    eax                                     ; 21B8 _ 50
        call    boxfill8                                ; 21B9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 21BE _ 83. C4, 1C
        sub     esp, 8                                  ; 21C1 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 21C4 _ FF. 75, 10
        push    7                                       ; 21C7 _ 6A, 07
        push    4                                       ; 21C9 _ 6A, 04
        push    8                                       ; 21CB _ 6A, 08
        push    dword [ebp+0CH]                         ; 21CD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21D0 _ FF. 75, 08
        call    showString                              ; 21D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21D8 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 21DB _ C7. 45, E8, 00000000
        jmp     ?_083                                   ; 21E2 _ EB, 7D

?_077:  mov     dword [ebp-14H], 0                      ; 21E4 _ C7. 45, EC, 00000000
        jmp     ?_082                                   ; 21EB _ EB, 6A

?_078:  mov     eax, dword [ebp-18H]                    ; 21ED _ 8B. 45, E8
        shl     eax, 4                                  ; 21F0 _ C1. E0, 04
        mov     edx, eax                                ; 21F3 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 21F5 _ 8B. 45, EC
        add     eax, edx                                ; 21F8 _ 01. D0
        add     eax, closebtn.2534                      ; 21FA _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 21FF _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 2202 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 2205 _ 80. 7D, E7, 40
        jnz     ?_079                                   ; 2209 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 220B _ C6. 45, E7, 00
        jmp     ?_081                                   ; 220F _ EB, 16

?_079:  cmp     byte [ebp-19H], 36                      ; 2211 _ 80. 7D, E7, 24
        jnz     ?_080                                   ; 2215 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 2217 _ C6. 45, E7, 0F
        jmp     ?_081                                   ; 221B _ EB, 0A

?_080:  cmp     byte [ebp-19H], 81                      ; 221D _ 80. 7D, E7, 51
        jnz     ?_081                                   ; 2221 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 2223 _ C6. 45, E7, 08
?_081:  mov     eax, dword [ebp+0CH]                    ; 2227 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 222A _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 222C _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 222F _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 2232 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2235 _ 8B. 40, 04
        imul    ecx, eax                                ; 2238 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 223B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 223E _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 2241 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 2244 _ 8B. 45, EC
        add     eax, ebx                                ; 2247 _ 01. D8
        add     eax, ecx                                ; 2249 _ 01. C8
        add     edx, eax                                ; 224B _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 224D _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 2251 _ 88. 02
        add     dword [ebp-14H], 1                      ; 2253 _ 83. 45, EC, 01
?_082:  cmp     dword [ebp-14H], 15                     ; 2257 _ 83. 7D, EC, 0F
        jle     ?_078                                   ; 225B _ 7E, 90
        add     dword [ebp-18H], 1                      ; 225D _ 83. 45, E8, 01
?_083:  cmp     dword [ebp-18H], 13                     ; 2261 _ 83. 7D, E8, 0D
        jle     ?_077                                   ; 2265 _ 0F 8E, FFFFFF79
        nop                                             ; 226B _ 90
        mov     ebx, dword [ebp-4H]                     ; 226C _ 8B. 5D, FC
        leave                                           ; 226F _ C9
        ret                                             ; 2270 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2271 _ 55
        mov     ebp, esp                                ; 2272 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2274 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2277 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 227D _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2280 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2287 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 228A _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2291 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2294 _ C7. 40, 0C, 00000000
        nop                                             ; 229B _ 90
        pop     ebp                                     ; 229C _ 5D
        ret                                             ; 229D _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 229E _ 55
        mov     ebp, esp                                ; 229F _ 89. E5
        sub     esp, 16                                 ; 22A1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22A4 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 22AB _ C7. 45, FC, 00000000
        jmp     ?_085                                   ; 22B2 _ EB, 14

?_084:  mov     eax, dword [ebp+8H]                     ; 22B4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 22B7 _ 8B. 55, FC
        add     edx, 2                                  ; 22BA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22BD _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 22C1 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 22C4 _ 83. 45, FC, 01
?_085:  mov     eax, dword [ebp+8H]                     ; 22C8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22CB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 22CD _ 39. 45, FC
        jl      ?_084                                   ; 22D0 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 22D2 _ 8B. 45, F8
        leave                                           ; 22D5 _ C9
        ret                                             ; 22D6 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 22D7 _ 55
        mov     ebp, esp                                ; 22D8 _ 89. E5
        sub     esp, 16                                 ; 22DA _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 22DD _ C7. 45, F8, 00000000
        jmp     ?_089                                   ; 22E4 _ E9, 00000085

?_086:  mov     eax, dword [ebp+8H]                     ; 22E9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22EC _ 8B. 55, F8
        add     edx, 2                                  ; 22EF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 22F2 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 22F6 _ 39. 45, 0C
        ja      ?_088                                   ; 22F9 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 22FB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22FE _ 8B. 55, F8
        add     edx, 2                                  ; 2301 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2304 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2307 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 230A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 230D _ 8B. 55, F8
        add     edx, 2                                  ; 2310 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2313 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2316 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2319 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 231C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 231F _ 8B. 55, F8
        add     edx, 2                                  ; 2322 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2325 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2328 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 232B _ 8B. 55, F8
        add     edx, 2                                  ; 232E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2331 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2335 _ 2B. 45, 0C
        mov     edx, eax                                ; 2338 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 233A _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 233D _ 8B. 4D, F8
        add     ecx, 2                                  ; 2340 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2343 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2347 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 234A _ 8B. 55, F8
        add     edx, 2                                  ; 234D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2350 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2354 _ 85. C0
        jnz     ?_087                                   ; 2356 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2358 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 235B _ 8B. 00
        lea     edx, [eax-1H]                           ; 235D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2360 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2363 _ 89. 10
?_087:  mov     eax, dword [ebp-4H]                     ; 2365 _ 8B. 45, FC
        jmp     ?_090                                   ; 2368 _ EB, 17

?_088:  add     dword [ebp-8H], 1                       ; 236A _ 83. 45, F8, 01
?_089:  mov     eax, dword [ebp+8H]                     ; 236E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2371 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2373 _ 39. 45, F8
        jl      ?_086                                   ; 2376 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 237C _ B8, 00000000
?_090:  leave                                           ; 2381 _ C9
        ret                                             ; 2382 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2383 _ 55
        mov     ebp, esp                                ; 2384 _ 89. E5
        sub     esp, 16                                 ; 2386 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2389 _ 8B. 45, 0C
        add     eax, 4095                               ; 238C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2391 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2396 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2399 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 239C _ FF. 75, 08
        call    memman_alloc_FF                         ; 239F _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 23A4 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 23A7 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 23AA _ 8B. 45, FC
        leave                                           ; 23AD _ C9
        ret                                             ; 23AE _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 23AF _ 55
        mov     ebp, esp                                ; 23B0 _ 89. E5
        push    ebx                                     ; 23B2 _ 53
        sub     esp, 16                                 ; 23B3 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 23B6 _ C7. 45, F4, 00000000
        jmp     ?_092                                   ; 23BD _ EB, 15

?_091:  mov     eax, dword [ebp+8H]                     ; 23BF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 23C2 _ 8B. 55, F4
        add     edx, 2                                  ; 23C5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 23C8 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 23CB _ 39. 45, 0C
        jc      ?_093                                   ; 23CE _ 72, 10
        add     dword [ebp-0CH], 1                      ; 23D0 _ 83. 45, F4, 01
?_092:  mov     eax, dword [ebp+8H]                     ; 23D4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23D7 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 23D9 _ 39. 45, F4
        jl      ?_091                                   ; 23DC _ 7C, E1
        jmp     ?_094                                   ; 23DE _ EB, 01

?_093:  nop                                             ; 23E0 _ 90
?_094:  cmp     dword [ebp-0CH], 0                      ; 23E1 _ 83. 7D, F4, 00
        jle     ?_096                                   ; 23E5 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 23EB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 23EE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23F1 _ 8B. 45, 08
        add     edx, 2                                  ; 23F4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 23F7 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 23FA _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 23FD _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2400 _ 8B. 45, 08
        add     ecx, 2                                  ; 2403 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2406 _ 8B. 44 C8, 04
        add     eax, edx                                ; 240A _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 240C _ 39. 45, 0C
        jne     ?_096                                   ; 240F _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2415 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2418 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 241B _ 8B. 45, 08
        add     edx, 2                                  ; 241E _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2421 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2425 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2428 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 242B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 242E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2431 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2434 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2437 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 243B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 243E _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2440 _ 39. 45, F4
        jge     ?_095                                   ; 2443 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2445 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2448 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 244B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 244E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2451 _ 8B. 55, F4
        add     edx, 2                                  ; 2454 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2457 _ 8B. 04 D0
        cmp     ecx, eax                                ; 245A _ 39. C1
        jnz     ?_095                                   ; 245C _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 245E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2461 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2464 _ 8B. 45, 08
        add     edx, 2                                  ; 2467 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 246A _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 246E _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2471 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2474 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2477 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 247B _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 247E _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2481 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2484 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2487 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 248A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 248E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2491 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2493 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2496 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2499 _ 89. 10
?_095:  mov     eax, 0                                  ; 249B _ B8, 00000000
        jmp     ?_102                                   ; 24A0 _ E9, 0000011C

?_096:  mov     eax, dword [ebp+8H]                     ; 24A5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24A8 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 24AA _ 39. 45, F4
        jge     ?_097                                   ; 24AD _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 24AF _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 24B2 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24B5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24B8 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24BB _ 8B. 55, F4
        add     edx, 2                                  ; 24BE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 24C1 _ 8B. 04 D0
        cmp     ecx, eax                                ; 24C4 _ 39. C1
        jnz     ?_097                                   ; 24C6 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 24C8 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24CB _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 24CE _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 24D1 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 24D4 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 24D7 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24DA _ 8B. 55, F4
        add     edx, 2                                  ; 24DD _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 24E0 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 24E4 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24E7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24EA _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 24ED _ 8B. 55, F4
        add     edx, 2                                  ; 24F0 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 24F3 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 24F7 _ B8, 00000000
        jmp     ?_102                                   ; 24FC _ E9, 000000C0

?_097:  mov     eax, dword [ebp+8H]                     ; 2501 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2504 _ 8B. 00
        cmp     eax, 4095                               ; 2506 _ 3D, 00000FFF
        jg      ?_101                                   ; 250B _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2511 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2514 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2516 _ 89. 45, F8
        jmp     ?_099                                   ; 2519 _ EB, 28

?_098:  mov     eax, dword [ebp-8H]                     ; 251B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 251E _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2521 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2524 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2527 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 252A _ 8B. 45, 08
        add     edx, 2                                  ; 252D _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2530 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2533 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2535 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2538 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 253B _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 253F _ 83. 6D, F8, 01
?_099:  mov     eax, dword [ebp-8H]                     ; 2543 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2546 _ 3B. 45, F4
        jg      ?_098                                   ; 2549 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 254B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 254E _ 8B. 00
        lea     edx, [eax+1H]                           ; 2550 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2553 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2556 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2558 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 255B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 255E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2561 _ 8B. 00
        cmp     edx, eax                                ; 2563 _ 39. C2
        jge     ?_100                                   ; 2565 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2567 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 256A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 256C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 256F _ 89. 50, 04
?_100:  mov     eax, dword [ebp+8H]                     ; 2572 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2575 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2578 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 257B _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 257E _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2581 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2584 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2587 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 258A _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 258D _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2591 _ B8, 00000000
        jmp     ?_102                                   ; 2596 _ EB, 29

?_101:  mov     eax, dword [ebp+8H]                     ; 2598 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 259B _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 259E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25A1 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 25A4 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 25A7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 25AA _ 8B. 40, 08
        mov     edx, eax                                ; 25AD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 25AF _ 8B. 45, 10
        add     eax, edx                                ; 25B2 _ 01. D0
        mov     edx, eax                                ; 25B4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 25B6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 25B9 _ 89. 50, 08
        mov     eax, 4294967295                         ; 25BC _ B8, FFFFFFFF
?_102:  add     esp, 16                                 ; 25C1 _ 83. C4, 10
        pop     ebx                                     ; 25C4 _ 5B
        pop     ebp                                     ; 25C5 _ 5D
        ret                                             ; 25C6 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 25C7 _ 55
        mov     ebp, esp                                ; 25C8 _ 89. E5
        sub     esp, 16                                 ; 25CA _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 25CD _ 8B. 45, 10
        add     eax, 4095                               ; 25D0 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 25D5 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 25DA _ 89. 45, 10
        push    dword [ebp+10H]                         ; 25DD _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 25E0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25E3 _ FF. 75, 08
        call    memman_free                             ; 25E6 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 25EB _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 25EE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 25F1 _ 8B. 45, FC
        leave                                           ; 25F4 _ C9
        ret                                             ; 25F5 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 25F6 _ 55
        mov     ebp, esp                                ; 25F7 _ 89. E5
        sub     esp, 24                                 ; 25F9 _ 83. EC, 18
        sub     esp, 8                                  ; 25FC _ 83. EC, 08
        push    9232                                    ; 25FF _ 68, 00002410
        push    dword [ebp+8H]                          ; 2604 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2607 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 260C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 260F _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2612 _ 83. 7D, F4, 00
        jnz     ?_103                                   ; 2616 _ 75, 0A
        mov     eax, 0                                  ; 2618 _ B8, 00000000
        jmp     ?_107                                   ; 261D _ E9, 0000009A

?_103:  mov     eax, dword [ebp+10H]                    ; 2622 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2625 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2629 _ 83. EC, 08
        push    eax                                     ; 262C _ 50
        push    dword [ebp+8H]                          ; 262D _ FF. 75, 08
        call    memman_alloc_4K                         ; 2630 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2635 _ 83. C4, 10
        mov     edx, eax                                ; 2638 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 263A _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 263D _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2640 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2643 _ 8B. 40, 04
        test    eax, eax                                ; 2646 _ 85. C0
        jnz     ?_104                                   ; 2648 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 264A _ 8B. 45, F4
        sub     esp, 4                                  ; 264D _ 83. EC, 04
        push    9232                                    ; 2650 _ 68, 00002410
        push    eax                                     ; 2655 _ 50
        push    dword [ebp+8H]                          ; 2656 _ FF. 75, 08
        call    memman_free_4K                          ; 2659 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 265E _ 83. C4, 10
        mov     eax, 0                                  ; 2661 _ B8, 00000000
        jmp     ?_107                                   ; 2666 _ EB, 54

?_104:  mov     eax, dword [ebp-0CH]                    ; 2668 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 266B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 266E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2670 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2673 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2676 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2679 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 267C _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 267F _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2682 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2685 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 268C _ C7. 45, F0, 00000000
        jmp     ?_106                                   ; 2693 _ EB, 1B

?_105:  mov     eax, dword [ebp-0CH]                    ; 2695 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2698 _ 8B. 55, F0
        add     edx, 33                                 ; 269B _ 83. C2, 21
        shl     edx, 5                                  ; 269E _ C1. E2, 05
        add     eax, edx                                ; 26A1 _ 01. D0
        add     eax, 16                                 ; 26A3 _ 83. C0, 10
        mov     dword [eax], 0                          ; 26A6 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 26AC _ 83. 45, F0, 01
?_106:  cmp     dword [ebp-10H], 255                    ; 26B0 _ 81. 7D, F0, 000000FF
        jle     ?_105                                   ; 26B7 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 26B9 _ 8B. 45, F4
?_107:  leave                                           ; 26BC _ C9
        ret                                             ; 26BD _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 26BE _ 55
        mov     ebp, esp                                ; 26BF _ 89. E5
        sub     esp, 16                                 ; 26C1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 26C4 _ C7. 45, F8, 00000000
        jmp     ?_110                                   ; 26CB _ EB, 4B

?_108:  mov     eax, dword [ebp+8H]                     ; 26CD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26D0 _ 8B. 55, F8
        add     edx, 33                                 ; 26D3 _ 83. C2, 21
        shl     edx, 5                                  ; 26D6 _ C1. E2, 05
        add     eax, edx                                ; 26D9 _ 01. D0
        add     eax, 16                                 ; 26DB _ 83. C0, 10
        mov     eax, dword [eax]                        ; 26DE _ 8B. 00
        test    eax, eax                                ; 26E0 _ 85. C0
        jnz     ?_109                                   ; 26E2 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 26E4 _ 8B. 45, F8
        shl     eax, 5                                  ; 26E7 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 26EA _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 26F0 _ 8B. 45, 08
        add     eax, edx                                ; 26F3 _ 01. D0
        add     eax, 4                                  ; 26F5 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 26F8 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 26FB _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 26FE _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2705 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2708 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 270F _ 8B. 45, FC
        jmp     ?_111                                   ; 2712 _ EB, 12

?_109:  add     dword [ebp-8H], 1                       ; 2714 _ 83. 45, F8, 01
?_110:  cmp     dword [ebp-8H], 255                     ; 2718 _ 81. 7D, F8, 000000FF
        jle     ?_108                                   ; 271F _ 7E, AC
        mov     eax, 0                                  ; 2721 _ B8, 00000000
?_111:  leave                                           ; 2726 _ C9
        ret                                             ; 2727 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2728 _ 55
        mov     ebp, esp                                ; 2729 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 272B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 272E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2731 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2733 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2736 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2739 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 273C _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 273F _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2742 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2745 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2748 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 274B _ 89. 50, 14
        nop                                             ; 274E _ 90
        pop     ebp                                     ; 274F _ 5D
        ret                                             ; 2750 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2751 _ 55
        mov     ebp, esp                                ; 2752 _ 89. E5
        push    esi                                     ; 2754 _ 56
        push    ebx                                     ; 2755 _ 53
        sub     esp, 32                                 ; 2756 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2759 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 275C _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 275F _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2762 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2765 _ 8B. 40, 10
        add     eax, 1                                  ; 2768 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 276B _ 39. 45, 10
        jle     ?_112                                   ; 276E _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2770 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2773 _ 8B. 40, 10
        add     eax, 1                                  ; 2776 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2779 _ 89. 45, 10
?_112:  cmp     dword [ebp+10H], -1                     ; 277C _ 83. 7D, 10, FF
        jge     ?_113                                   ; 2780 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2782 _ C7. 45, 10, FFFFFFFF
?_113:  mov     eax, dword [ebp+0CH]                    ; 2789 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 278C _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 278F _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2792 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2795 _ 3B. 45, 10
        jle     ?_120                                   ; 2798 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 279E _ 83. 7D, 10, 00
        js      ?_116                                   ; 27A2 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 27A8 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 27AB _ 89. 45, E4
        jmp     ?_115                                   ; 27AE _ EB, 34

?_114:  mov     eax, dword [ebp-1CH]                    ; 27B0 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 27B3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27B6 _ 8B. 45, 08
        add     edx, 4                                  ; 27B9 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 27BC _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 27C0 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 27C3 _ 8B. 4D, E4
        add     ecx, 4                                  ; 27C6 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 27C9 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 27CD _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 27D0 _ 8B. 55, E4
        add     edx, 4                                  ; 27D3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 27D6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 27DA _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 27DD _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 27E0 _ 83. 6D, E4, 01
?_115:  mov     eax, dword [ebp-1CH]                    ; 27E4 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 27E7 _ 3B. 45, 10
        jg      ?_114                                   ; 27EA _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 27EC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 27EF _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 27F2 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 27F5 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 27F8 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 27FC _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 27FF _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2802 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2805 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2808 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 280B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 280E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2811 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2814 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2817 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 281A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 281D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2820 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2823 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2826 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2829 _ 8B. 40, 0C
        sub     esp, 8                                  ; 282C _ 83. EC, 08
        push    esi                                     ; 282F _ 56
        push    ebx                                     ; 2830 _ 53
        push    ecx                                     ; 2831 _ 51
        push    edx                                     ; 2832 _ 52
        push    eax                                     ; 2833 _ 50
        push    dword [ebp+8H]                          ; 2834 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2837 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 283C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 283F _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2842 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2845 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2848 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 284B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 284E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2851 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2854 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2857 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 285A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 285D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2860 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2863 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2866 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2869 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 286C _ 8B. 40, 0C
        sub     esp, 4                                  ; 286F _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2872 _ FF. 75, F4
        push    esi                                     ; 2875 _ 56
        push    ebx                                     ; 2876 _ 53
        push    ecx                                     ; 2877 _ 51
        push    edx                                     ; 2878 _ 52
        push    eax                                     ; 2879 _ 50
        push    dword [ebp+8H]                          ; 287A _ FF. 75, 08
        call    sheet_refresh_new                       ; 287D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2882 _ 83. C4, 20
        jmp     ?_127                                   ; 2885 _ E9, 00000244

?_116:  mov     eax, dword [ebp+8H]                     ; 288A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 288D _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2890 _ 39. 45, F4
        jge     ?_119                                   ; 2893 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2895 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2898 _ 89. 45, E8
        jmp     ?_118                                   ; 289B _ EB, 34

?_117:  mov     eax, dword [ebp-18H]                    ; 289D _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 28A0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 28A3 _ 8B. 45, 08
        add     edx, 4                                  ; 28A6 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 28A9 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 28AD _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 28B0 _ 8B. 4D, E8
        add     ecx, 4                                  ; 28B3 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 28B6 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 28BA _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 28BD _ 8B. 55, E8
        add     edx, 4                                  ; 28C0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 28C3 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 28C7 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 28CA _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 28CD _ 83. 45, E8, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 28D1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28D4 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 28D7 _ 39. 45, E8
        jl      ?_117                                   ; 28DA _ 7C, C1
?_119:  mov     eax, dword [ebp+8H]                     ; 28DC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28DF _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 28E2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28E5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 28E8 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28EB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28EE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28F1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28F4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 28F7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28FA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28FD _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2900 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2903 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2906 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2909 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 290C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 290F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2912 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2915 _ 83. EC, 08
        push    0                                       ; 2918 _ 6A, 00
        push    ebx                                     ; 291A _ 53
        push    ecx                                     ; 291B _ 51
        push    edx                                     ; 291C _ 52
        push    eax                                     ; 291D _ 50
        push    dword [ebp+8H]                          ; 291E _ FF. 75, 08
        call    sheet_refreshmap                        ; 2921 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2926 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2929 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 292C _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 292F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2932 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2935 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2938 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 293B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 293E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2941 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2944 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2947 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 294A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 294D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2950 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2953 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2956 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2959 _ 83. EC, 04
        push    esi                                     ; 295C _ 56
        push    0                                       ; 295D _ 6A, 00
        push    ebx                                     ; 295F _ 53
        push    ecx                                     ; 2960 _ 51
        push    edx                                     ; 2961 _ 52
        push    eax                                     ; 2962 _ 50
        push    dword [ebp+8H]                          ; 2963 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2966 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 296B _ 83. C4, 20
        jmp     ?_127                                   ; 296E _ E9, 0000015B

?_120:  mov     eax, dword [ebp-0CH]                    ; 2973 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2976 _ 3B. 45, 10
        jge     ?_127                                   ; 2979 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 297F _ 83. 7D, F4, 00
        js      ?_123                                   ; 2983 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2985 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2988 _ 89. 45, EC
        jmp     ?_122                                   ; 298B _ EB, 34

?_121:  mov     eax, dword [ebp-14H]                    ; 298D _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2990 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2993 _ 8B. 45, 08
        add     edx, 4                                  ; 2996 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2999 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 299D _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 29A0 _ 8B. 4D, EC
        add     ecx, 4                                  ; 29A3 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 29A6 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 29AA _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 29AD _ 8B. 55, EC
        add     edx, 4                                  ; 29B0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29B3 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 29B7 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 29BA _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 29BD _ 83. 45, EC, 01
?_122:  mov     eax, dword [ebp-14H]                    ; 29C1 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 29C4 _ 3B. 45, 10
        jl      ?_121                                   ; 29C7 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 29C9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 29CC _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 29CF _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 29D2 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 29D5 _ 89. 54 88, 04
        jmp     ?_126                                   ; 29D9 _ EB, 72

?_123:  cmp     dword [ebp-0CH], 0                      ; 29DB _ 83. 7D, F4, 00
        jns     ?_126                                   ; 29DF _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 29E1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 29E4 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 29E7 _ 89. 45, F0
        jmp     ?_125                                   ; 29EA _ EB, 3A

?_124:  mov     eax, dword [ebp-10H]                    ; 29EC _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 29EF _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 29F2 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 29F5 _ 8B. 55, F0
        add     edx, 4                                  ; 29F8 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 29FB _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 29FF _ 8B. 45, 08
        add     ecx, 4                                  ; 2A02 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2A05 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2A09 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2A0C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A0F _ 8B. 45, 08
        add     edx, 4                                  ; 2A12 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A15 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2A19 _ 8B. 55, F0
        add     edx, 1                                  ; 2A1C _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2A1F _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2A22 _ 83. 6D, F0, 01
?_125:  mov     eax, dword [ebp-10H]                    ; 2A26 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2A29 _ 3B. 45, 10
        jge     ?_124                                   ; 2A2C _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2A2E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2A31 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2A34 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2A37 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2A3A _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2A3E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A41 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2A44 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A47 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2A4A _ 89. 50, 10
?_126:  mov     eax, dword [ebp+0CH]                    ; 2A4D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A50 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A53 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A56 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A59 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A5C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A5F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A62 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A65 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2A68 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2A6B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A6E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A71 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A74 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2A77 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2A7A _ FF. 75, 10
        push    ebx                                     ; 2A7D _ 53
        push    ecx                                     ; 2A7E _ 51
        push    edx                                     ; 2A7F _ 52
        push    eax                                     ; 2A80 _ 50
        push    dword [ebp+8H]                          ; 2A81 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2A84 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A89 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2A8C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2A8F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A92 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A95 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2A98 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2A9B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2A9E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2AA1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2AA4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2AA7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2AAA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AAD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2AB0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2AB3 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2AB6 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2AB9 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2ABC _ FF. 75, 10
        push    ebx                                     ; 2ABF _ 53
        push    ecx                                     ; 2AC0 _ 51
        push    edx                                     ; 2AC1 _ 52
        push    eax                                     ; 2AC2 _ 50
        push    dword [ebp+8H]                          ; 2AC3 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2AC6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2ACB _ 83. C4, 20
?_127:  nop                                             ; 2ACE _ 90
        lea     esp, [ebp-8H]                           ; 2ACF _ 8D. 65, F8
        pop     ebx                                     ; 2AD2 _ 5B
        pop     esi                                     ; 2AD3 _ 5E
        pop     ebp                                     ; 2AD4 _ 5D
        ret                                             ; 2AD5 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2AD6 _ 55
        mov     ebp, esp                                ; 2AD7 _ 89. E5
        push    edi                                     ; 2AD9 _ 57
        push    esi                                     ; 2ADA _ 56
        push    ebx                                     ; 2ADB _ 53
        sub     esp, 28                                 ; 2ADC _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2ADF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2AE2 _ 8B. 40, 18
        test    eax, eax                                ; 2AE5 _ 85. C0
        js      ?_128                                   ; 2AE7 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2AE9 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2AEC _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2AEF _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2AF2 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2AF5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2AF8 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2AFB _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2AFE _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2B01 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2B04 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2B07 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2B0A _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2B0D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2B10 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2B13 _ 8B. 45, 14
        add     edx, eax                                ; 2B16 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B18 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B1B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2B1E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2B21 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2B24 _ 03. 45, E4
        sub     esp, 4                                  ; 2B27 _ 83. EC, 04
        push    ebx                                     ; 2B2A _ 53
        push    ecx                                     ; 2B2B _ 51
        push    edi                                     ; 2B2C _ 57
        push    esi                                     ; 2B2D _ 56
        push    edx                                     ; 2B2E _ 52
        push    eax                                     ; 2B2F _ 50
        push    dword [ebp+8H]                          ; 2B30 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2B33 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B38 _ 83. C4, 20
?_128:  mov     eax, 0                                  ; 2B3B _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2B40 _ 8D. 65, F4
        pop     ebx                                     ; 2B43 _ 5B
        pop     esi                                     ; 2B44 _ 5E
        pop     edi                                     ; 2B45 _ 5F
        pop     ebp                                     ; 2B46 _ 5D
        ret                                             ; 2B47 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2B48 _ 55
        mov     ebp, esp                                ; 2B49 _ 89. E5
        push    esi                                     ; 2B4B _ 56
        push    ebx                                     ; 2B4C _ 53
        sub     esp, 16                                 ; 2B4D _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2B50 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2B53 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2B56 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2B59 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2B5C _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2B5F _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2B62 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2B65 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2B68 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2B6B _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2B6E _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2B71 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2B74 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B77 _ 8B. 40, 18
        test    eax, eax                                ; 2B7A _ 85. C0
        js      ?_129                                   ; 2B7C _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2B82 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2B85 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B88 _ 8B. 45, F4
        add     edx, eax                                ; 2B8B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2B8D _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2B90 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2B93 _ 8B. 45, F0
        add     eax, ecx                                ; 2B96 _ 01. C8
        sub     esp, 8                                  ; 2B98 _ 83. EC, 08
        push    0                                       ; 2B9B _ 6A, 00
        push    edx                                     ; 2B9D _ 52
        push    eax                                     ; 2B9E _ 50
        push    dword [ebp-0CH]                         ; 2B9F _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2BA2 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2BA5 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2BA8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BAD _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BB0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BB3 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2BB6 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2BB9 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2BBC _ 8B. 55, 14
        add     ecx, edx                                ; 2BBF _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2BC1 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2BC4 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2BC7 _ 8B. 55, 10
        add     edx, ebx                                ; 2BCA _ 01. DA
        sub     esp, 8                                  ; 2BCC _ 83. EC, 08
        push    eax                                     ; 2BCF _ 50
        push    ecx                                     ; 2BD0 _ 51
        push    edx                                     ; 2BD1 _ 52
        push    dword [ebp+14H]                         ; 2BD2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2BD5 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2BD8 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2BDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2BE0 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2BE3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BE6 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2BE9 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2BEC _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2BEF _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2BF2 _ 8B. 45, F4
        add     edx, eax                                ; 2BF5 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2BF7 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2BFA _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2BFD _ 8B. 45, F0
        add     eax, ebx                                ; 2C00 _ 01. D8
        sub     esp, 4                                  ; 2C02 _ 83. EC, 04
        push    ecx                                     ; 2C05 _ 51
        push    0                                       ; 2C06 _ 6A, 00
        push    edx                                     ; 2C08 _ 52
        push    eax                                     ; 2C09 _ 50
        push    dword [ebp-0CH]                         ; 2C0A _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2C0D _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2C10 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C13 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C18 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2C1B _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2C1E _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2C21 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2C24 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2C27 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2C2A _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2C2D _ 8B. 4D, 14
        add     ebx, ecx                                ; 2C30 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2C32 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2C35 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2C38 _ 8B. 4D, 10
        add     ecx, esi                                ; 2C3B _ 01. F1
        sub     esp, 4                                  ; 2C3D _ 83. EC, 04
        push    edx                                     ; 2C40 _ 52
        push    eax                                     ; 2C41 _ 50
        push    ebx                                     ; 2C42 _ 53
        push    ecx                                     ; 2C43 _ 51
        push    dword [ebp+14H]                         ; 2C44 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2C47 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2C4A _ FF. 75, 08
        call    sheet_refresh_new                       ; 2C4D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C52 _ 83. C4, 20
?_129:  nop                                             ; 2C55 _ 90
        lea     esp, [ebp-8H]                           ; 2C56 _ 8D. 65, F8
        pop     ebx                                     ; 2C59 _ 5B
        pop     esi                                     ; 2C5A _ 5E
        pop     ebp                                     ; 2C5B _ 5D
        ret                                             ; 2C5C _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2C5D _ 55
        mov     ebp, esp                                ; 2C5E _ 89. E5
        sub     esp, 48                                 ; 2C60 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2C63 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C66 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2C68 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2C6B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C6E _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2C71 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2C74 _ 83. 7D, 0C, 00
        jns     ?_130                                   ; 2C78 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2C7A _ C7. 45, 0C, 00000000
?_130:  cmp     dword [ebp+10H], 8                      ; 2C81 _ 83. 7D, 10, 08
        jg      ?_131                                   ; 2C85 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2C87 _ C7. 45, 10, 00000000
?_131:  mov     eax, dword [ebp+8H]                     ; 2C8E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C91 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2C94 _ 39. 45, 14
        jle     ?_132                                   ; 2C97 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2C99 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C9C _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2C9F _ 89. 45, 14
?_132:  mov     eax, dword [ebp+8H]                     ; 2CA2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2CA5 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2CA8 _ 39. 45, 18
        jle     ?_133                                   ; 2CAB _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2CAD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2CB0 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2CB3 _ 89. 45, 18
?_133:  mov     eax, dword [ebp+1CH]                    ; 2CB6 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2CB9 _ 89. 45, DC
        jmp     ?_140                                   ; 2CBC _ E9, 00000118

?_134:  mov     eax, dword [ebp+8H]                     ; 2CC1 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2CC4 _ 8B. 55, DC
        add     edx, 4                                  ; 2CC7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CCA _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2CCE _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2CD1 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2CD4 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2CD6 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2CD9 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2CDC _ 8B. 55, 08
        add     edx, 1044                               ; 2CDF _ 81. C2, 00000414
        sub     eax, edx                                ; 2CE5 _ 29. D0
        sar     eax, 5                                  ; 2CE7 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2CEA _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2CED _ C7. 45, E0, 00000000
        jmp     ?_139                                   ; 2CF4 _ E9, 000000CD

?_135:  mov     eax, dword [ebp-10H]                    ; 2CF9 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2CFC _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2CFF _ 8B. 45, E0
        add     eax, edx                                ; 2D02 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2D04 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2D07 _ C7. 45, E4, 00000000
        jmp     ?_138                                   ; 2D0E _ E9, 000000A0

?_136:  mov     eax, dword [ebp-10H]                    ; 2D13 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2D16 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2D19 _ 8B. 45, E4
        add     eax, edx                                ; 2D1C _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2D1E _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2D21 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2D24 _ 3B. 45, FC
        jg      ?_137                                   ; 2D27 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2D2D _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2D30 _ 3B. 45, 14
        jge     ?_137                                   ; 2D33 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2D35 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2D38 _ 3B. 45, F8
        jg      ?_137                                   ; 2D3B _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2D3D _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2D40 _ 3B. 45, 18
        jge     ?_137                                   ; 2D43 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2D45 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2D48 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2D4B _ 0F AF. 45, E0
        mov     edx, eax                                ; 2D4F _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2D51 _ 8B. 45, E4
        add     eax, edx                                ; 2D54 _ 01. D0
        mov     edx, eax                                ; 2D56 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2D58 _ 8B. 45, F4
        add     eax, edx                                ; 2D5B _ 01. D0
        movzx   eax, byte [eax]                         ; 2D5D _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2D60 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2D63 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D66 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D69 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D6D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D6F _ 8B. 45, FC
        add     eax, edx                                ; 2D72 _ 01. D0
        mov     edx, eax                                ; 2D74 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2D76 _ 8B. 45, EC
        add     eax, edx                                ; 2D79 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D7B _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2D7E _ 38. 45, DA
        jnz     ?_137                                   ; 2D81 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2D83 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2D87 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2D8A _ 8B. 40, 14
        cmp     edx, eax                                ; 2D8D _ 39. C2
        jz      ?_137                                   ; 2D8F _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2D91 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D94 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2D97 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2D9B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2D9D _ 8B. 45, FC
        add     eax, edx                                ; 2DA0 _ 01. D0
        mov     edx, eax                                ; 2DA2 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2DA4 _ 8B. 45, E8
        add     edx, eax                                ; 2DA7 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2DA9 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2DAD _ 88. 02
?_137:  add     dword [ebp-1CH], 1                      ; 2DAF _ 83. 45, E4, 01
?_138:  mov     eax, dword [ebp-10H]                    ; 2DB3 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2DB6 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2DB9 _ 39. 45, E4
        jl      ?_136                                   ; 2DBC _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 2DC2 _ 83. 45, E0, 01
?_139:  mov     eax, dword [ebp-10H]                    ; 2DC6 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2DC9 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2DCC _ 39. 45, E0
        jl      ?_135                                   ; 2DCF _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2DD5 _ 83. 45, DC, 01
?_140:  mov     eax, dword [ebp-24H]                    ; 2DD9 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2DDC _ 3B. 45, 20
        jle     ?_134                                   ; 2DDF _ 0F 8E, FFFFFEDC
        nop                                             ; 2DE5 _ 90
        leave                                           ; 2DE6 _ C9
        ret                                             ; 2DE7 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2DE8 _ 55
        mov     ebp, esp                                ; 2DE9 _ 89. E5
        sub     esp, 64                                 ; 2DEB _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2DEE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2DF1 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2DF4 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2DF7 _ 83. 7D, 0C, 00
        jns     ?_141                                   ; 2DFB _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2DFD _ C7. 45, 0C, 00000000
?_141:  mov     eax, dword [ebp+8H]                     ; 2E04 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E07 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2E0A _ 39. 45, 0C
        jle     ?_142                                   ; 2E0D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2E0F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E12 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2E15 _ 89. 45, 0C
?_142:  cmp     dword [ebp+10H], 0                      ; 2E18 _ 83. 7D, 10, 00
        jns     ?_143                                   ; 2E1C _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2E1E _ C7. 45, 10, 00000000
?_143:  mov     eax, dword [ebp+8H]                     ; 2E25 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E28 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2E2B _ 39. 45, 10
        jle     ?_144                                   ; 2E2E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2E30 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E33 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2E36 _ 89. 45, 10
?_144:  mov     eax, dword [ebp+1CH]                    ; 2E39 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2E3C _ 89. 45, E0
        jmp     ?_155                                   ; 2E3F _ E9, 00000140

?_145:  mov     eax, dword [ebp+8H]                     ; 2E44 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2E47 _ 8B. 55, E0
        add     edx, 4                                  ; 2E4A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E4D _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2E51 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2E54 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2E57 _ 8B. 55, 08
        add     edx, 1044                               ; 2E5A _ 81. C2, 00000414
        sub     eax, edx                                ; 2E60 _ 29. D0
        sar     eax, 5                                  ; 2E62 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2E65 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2E68 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2E6B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2E6D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2E70 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E73 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2E76 _ 8B. 55, 0C
        sub     edx, eax                                ; 2E79 _ 29. C2
        mov     eax, edx                                ; 2E7B _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2E7D _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2E80 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2E83 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2E86 _ 8B. 55, 10
        sub     edx, eax                                ; 2E89 _ 29. C2
        mov     eax, edx                                ; 2E8B _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2E8D _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2E90 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2E93 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2E96 _ 8B. 55, 14
        sub     edx, eax                                ; 2E99 _ 29. C2
        mov     eax, edx                                ; 2E9B _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2E9D _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2EA0 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2EA3 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2EA6 _ 8B. 55, 18
        sub     edx, eax                                ; 2EA9 _ 29. C2
        mov     eax, edx                                ; 2EAB _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2EAD _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2EB0 _ 83. 7D, D0, 00
        jns     ?_146                                   ; 2EB4 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2EB6 _ C7. 45, D0, 00000000
?_146:  cmp     dword [ebp-2CH], 0                      ; 2EBD _ 83. 7D, D4, 00
        jns     ?_147                                   ; 2EC1 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 2EC3 _ C7. 45, D4, 00000000
?_147:  mov     eax, dword [ebp-10H]                    ; 2ECA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2ECD _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2ED0 _ 39. 45, D8
        jle     ?_148                                   ; 2ED3 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2ED5 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2ED8 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2EDB _ 89. 45, D8
?_148:  mov     eax, dword [ebp-10H]                    ; 2EDE _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2EE1 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2EE4 _ 39. 45, DC
        jle     ?_149                                   ; 2EE7 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2EE9 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2EEC _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2EEF _ 89. 45, DC
?_149:  mov     eax, dword [ebp-2CH]                    ; 2EF2 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2EF5 _ 89. 45, E4
        jmp     ?_154                                   ; 2EF8 _ EB, 7A

?_150:  mov     eax, dword [ebp-10H]                    ; 2EFA _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2EFD _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2F00 _ 8B. 45, E4
        add     eax, edx                                ; 2F03 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2F05 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2F08 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2F0B _ 89. 45, E8
        jmp     ?_153                                   ; 2F0E _ EB, 58

?_151:  mov     eax, dword [ebp-10H]                    ; 2F10 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2F13 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2F16 _ 8B. 45, E8
        add     eax, edx                                ; 2F19 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2F1B _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2F1E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2F21 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2F24 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2F28 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2F2A _ 8B. 45, E8
        add     eax, edx                                ; 2F2D _ 01. D0
        mov     edx, eax                                ; 2F2F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2F31 _ 8B. 45, F4
        add     eax, edx                                ; 2F34 _ 01. D0
        movzx   eax, byte [eax]                         ; 2F36 _ 0F B6. 00
        movzx   edx, al                                 ; 2F39 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2F3C _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2F3F _ 8B. 40, 14
        cmp     edx, eax                                ; 2F42 _ 39. C2
        jz      ?_152                                   ; 2F44 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2F46 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F49 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2F4C _ 0F AF. 45, F8
        mov     edx, eax                                ; 2F50 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2F52 _ 8B. 45, FC
        add     eax, edx                                ; 2F55 _ 01. D0
        mov     edx, eax                                ; 2F57 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2F59 _ 8B. 45, EC
        add     edx, eax                                ; 2F5C _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2F5E _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2F62 _ 88. 02
?_152:  add     dword [ebp-18H], 1                      ; 2F64 _ 83. 45, E8, 01
?_153:  mov     eax, dword [ebp-18H]                    ; 2F68 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2F6B _ 3B. 45, D8
        jl      ?_151                                   ; 2F6E _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2F70 _ 83. 45, E4, 01
?_154:  mov     eax, dword [ebp-1CH]                    ; 2F74 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2F77 _ 3B. 45, DC
        jl      ?_150                                   ; 2F7A _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2F80 _ 83. 45, E0, 01
?_155:  mov     eax, dword [ebp+8H]                     ; 2F84 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F87 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2F8A _ 39. 45, E0
        jle     ?_145                                   ; 2F8D _ 0F 8E, FFFFFEB1
        nop                                             ; 2F93 _ 90
        leave                                           ; 2F94 _ C9
        ret                                             ; 2F95 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2F96 _ 55
        mov     ebp, esp                                ; 2F97 _ 89. E5
        sub     esp, 24                                 ; 2F99 _ 83. EC, 18
        sub     esp, 8                                  ; 2F9C _ 83. EC, 08
        push    52                                      ; 2F9F _ 6A, 34
        push    67                                      ; 2FA1 _ 6A, 43
        call    io_out8                                 ; 2FA3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FA8 _ 83. C4, 10
        sub     esp, 8                                  ; 2FAB _ 83. EC, 08
        push    156                                     ; 2FAE _ 68, 0000009C
        push    64                                      ; 2FB3 _ 6A, 40
        call    io_out8                                 ; 2FB5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FBA _ 83. C4, 10
        sub     esp, 8                                  ; 2FBD _ 83. EC, 08
        push    46                                      ; 2FC0 _ 6A, 2E
        push    64                                      ; 2FC2 _ 6A, 40
        call    io_out8                                 ; 2FC4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FC9 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2FCC _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2FD6 _ C7. 45, F4, 00000000
        jmp     ?_157                                   ; 2FDD _ EB, 26

?_156:  mov     eax, dword [ebp-0CH]                    ; 2FDF _ 8B. 45, F4
        shl     eax, 4                                  ; 2FE2 _ C1. E0, 04
        add     eax, ?_225                              ; 2FE5 _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 2FEA _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2FF0 _ 8B. 45, F4
        shl     eax, 4                                  ; 2FF3 _ C1. E0, 04
        add     eax, ?_226                              ; 2FF6 _ 05, 0000028C(d)
        mov     dword [eax], 0                          ; 2FFB _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3001 _ 83. 45, F4, 01
?_157:  cmp     dword [ebp-0CH], 499                    ; 3005 _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 300C _ 7E, D1
        nop                                             ; 300E _ 90
        leave                                           ; 300F _ C9
        ret                                             ; 3010 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3011 _ 55
        mov     ebp, esp                                ; 3012 _ 89. E5
        sub     esp, 16                                 ; 3014 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3017 _ C7. 45, FC, 00000000
        jmp     ?_160                                   ; 301E _ EB, 36

?_158:  mov     eax, dword [ebp-4H]                     ; 3020 _ 8B. 45, FC
        shl     eax, 4                                  ; 3023 _ C1. E0, 04
        add     eax, ?_225                              ; 3026 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 302B _ 8B. 00
        test    eax, eax                                ; 302D _ 85. C0
        jnz     ?_159                                   ; 302F _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3031 _ 8B. 45, FC
        shl     eax, 4                                  ; 3034 _ C1. E0, 04
        add     eax, ?_225                              ; 3037 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 303C _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3042 _ 8B. 45, FC
        shl     eax, 4                                  ; 3045 _ C1. E0, 04
        add     eax, timerctl                           ; 3048 _ 05, 00000280(d)
        add     eax, 4                                  ; 304D _ 83. C0, 04
        jmp     ?_161                                   ; 3050 _ EB, 12

?_159:  add     dword [ebp-4H], 1                       ; 3052 _ 83. 45, FC, 01
?_160:  cmp     dword [ebp-4H], 499                     ; 3056 _ 81. 7D, FC, 000001F3
        jle     ?_158                                   ; 305D _ 7E, C1
        mov     eax, 0                                  ; 305F _ B8, 00000000
?_161:  leave                                           ; 3064 _ C9
        ret                                             ; 3065 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3066 _ 55
        mov     ebp, esp                                ; 3067 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3069 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 306C _ C7. 40, 04, 00000000
        nop                                             ; 3073 _ 90
        pop     ebp                                     ; 3074 _ 5D
        ret                                             ; 3075 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3076 _ 55
        mov     ebp, esp                                ; 3077 _ 89. E5
        sub     esp, 4                                  ; 3079 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 307C _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 307F _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3082 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3085 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3088 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 308B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 308E _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3092 _ 88. 50, 0C
        nop                                             ; 3095 _ 90
        leave                                           ; 3096 _ C9
        ret                                             ; 3097 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3098 _ 55
        mov     ebp, esp                                ; 3099 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 309B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 309E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 30A1 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30A3 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 30A6 _ C7. 40, 04, 00000002
        nop                                             ; 30AD _ 90
        pop     ebp                                     ; 30AE _ 5D
        ret                                             ; 30AF _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 30B0 _ 55
        mov     ebp, esp                                ; 30B1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30B3 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30B6 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 30B9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30BB _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 30BE _ C7. 40, 04, 00000002
        nop                                             ; 30C5 _ 90
        pop     ebp                                     ; 30C6 _ 5D
        ret                                             ; 30C7 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 30C8 _ 55
        mov     ebp, esp                                ; 30C9 _ 89. E5
        mov     eax, timerctl                           ; 30CB _ B8, 00000280(d)
        pop     ebp                                     ; 30D0 _ 5D
        ret                                             ; 30D1 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 30D2 _ 55
        mov     ebp, esp                                ; 30D3 _ 89. E5
        push    ebx                                     ; 30D5 _ 53
        sub     esp, 20                                 ; 30D6 _ 83. EC, 14
        sub     esp, 8                                  ; 30D9 _ 83. EC, 08
        push    32                                      ; 30DC _ 6A, 20
        push    32                                      ; 30DE _ 6A, 20
        call    io_out8                                 ; 30E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30E5 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 30E8 _ A1, 00000280(d)
        add     eax, 1                                  ; 30ED _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 30F0 _ A3, 00000280(d)
        mov     dword [ebp-10H], 0                      ; 30F5 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 30FC _ C7. 45, F4, 00000000
        jmp     ?_165                                   ; 3103 _ E9, 000000AD

?_162:  mov     eax, dword [ebp-0CH]                    ; 3108 _ 8B. 45, F4
        shl     eax, 4                                  ; 310B _ C1. E0, 04
        add     eax, ?_225                              ; 310E _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 3113 _ 8B. 00
        cmp     eax, 2                                  ; 3115 _ 83. F8, 02
        jne     ?_163                                   ; 3118 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 311E _ 8B. 45, F4
        shl     eax, 4                                  ; 3121 _ C1. E0, 04
        add     eax, ?_224                              ; 3124 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 3129 _ 8B. 00
        lea     edx, [eax-1H]                           ; 312B _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 312E _ 8B. 45, F4
        shl     eax, 4                                  ; 3131 _ C1. E0, 04
        add     eax, ?_224                              ; 3134 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 3139 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 313B _ 8B. 45, F4
        shl     eax, 4                                  ; 313E _ C1. E0, 04
        add     eax, ?_224                              ; 3141 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 3146 _ 8B. 00
        test    eax, eax                                ; 3148 _ 85. C0
        jnz     ?_163                                   ; 314A _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 314C _ 8B. 45, F4
        shl     eax, 4                                  ; 314F _ C1. E0, 04
        add     eax, ?_225                              ; 3152 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 3157 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 315D _ 8B. 45, F4
        shl     eax, 4                                  ; 3160 _ C1. E0, 04
        add     eax, ?_227                              ; 3163 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 3168 _ 0F B6. 00
        movzx   edx, al                                 ; 316B _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 316E _ 8B. 45, F4
        shl     eax, 4                                  ; 3171 _ C1. E0, 04
        add     eax, ?_226                              ; 3174 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 3179 _ 8B. 00
        sub     esp, 8                                  ; 317B _ 83. EC, 08
        push    edx                                     ; 317E _ 52
        push    eax                                     ; 317F _ 50
        call    fifo8_put                               ; 3180 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3185 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3188 _ 8B. 45, F4
        shl     eax, 4                                  ; 318B _ C1. E0, 04
        add     eax, timerctl                           ; 318E _ 05, 00000280(d)
        lea     ebx, [eax+4H]                           ; 3193 _ 8D. 58, 04
        call    getTaskTimer                            ; 3196 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 319B _ 39. C3
        jnz     ?_163                                   ; 319D _ 75, 07
        mov     dword [ebp-10H], 1                      ; 319F _ C7. 45, F0, 00000001
?_163:  cmp     dword [ebp-10H], 1                      ; 31A6 _ 83. 7D, F0, 01
        jnz     ?_164                                   ; 31AA _ 75, 05
        call    task_switch                             ; 31AC _ E8, FFFFFFFC(rel)
?_164:  add     dword [ebp-0CH], 1                      ; 31B1 _ 83. 45, F4, 01
?_165:  cmp     dword [ebp-0CH], 499                    ; 31B5 _ 81. 7D, F4, 000001F3
        jle     ?_162                                   ; 31BC _ 0F 8E, FFFFFF46
        nop                                             ; 31C2 _ 90
        mov     ebx, dword [ebp-4H]                     ; 31C3 _ 8B. 5D, FC
        leave                                           ; 31C6 _ C9
        ret                                             ; 31C7 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 31C8 _ 55
        mov     ebp, esp                                ; 31C9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31CB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 31CE _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 31D1 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 31D4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 31D7 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 31DA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 31DC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 31DF _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 31E2 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 31E5 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 31E8 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 31EF _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31F2 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 31F9 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 31FC _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3203 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3206 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3209 _ 89. 50, 18
        nop                                             ; 320C _ 90
        pop     ebp                                     ; 320D _ 5D
        ret                                             ; 320E _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 320F _ 55
        mov     ebp, esp                                ; 3210 _ 89. E5
        sub     esp, 24                                 ; 3212 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3215 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3218 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 321B _ 83. 7D, 08, 00
        jnz     ?_166                                   ; 321F _ 75, 0A
        mov     eax, 4294967295                         ; 3221 _ B8, FFFFFFFF
        jmp     ?_170                                   ; 3226 _ E9, 000000A0

?_166:  mov     eax, dword [ebp+8H]                     ; 322B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 322E _ 8B. 40, 10
        test    eax, eax                                ; 3231 _ 85. C0
        jnz     ?_167                                   ; 3233 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3235 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3238 _ 8B. 40, 14
        or      eax, 01H                                ; 323B _ 83. C8, 01
        mov     edx, eax                                ; 323E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3240 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3243 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3246 _ B8, FFFFFFFF
        jmp     ?_170                                   ; 324B _ EB, 7E

?_167:  mov     eax, dword [ebp+8H]                     ; 324D _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3250 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3252 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3255 _ 8B. 40, 08
        add     edx, eax                                ; 3258 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 325A _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 325E _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3260 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3263 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3266 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3269 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 326C _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 326F _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3272 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3275 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3278 _ 8B. 40, 0C
        cmp     edx, eax                                ; 327B _ 39. C2
        jl      ?_168                                   ; 327D _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 327F _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3282 _ C7. 40, 08, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 3289 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 328C _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 328F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3292 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3295 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3298 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 329B _ 8B. 40, 18
        test    eax, eax                                ; 329E _ 85. C0
        jz      ?_169                                   ; 32A0 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 32A2 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 32A5 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 32A8 _ 8B. 40, 04
        cmp     eax, 2                                  ; 32AB _ 83. F8, 02
        jz      ?_169                                   ; 32AE _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 32B0 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 32B3 _ 8B. 40, 18
        sub     esp, 4                                  ; 32B6 _ 83. EC, 04
        push    0                                       ; 32B9 _ 6A, 00
        push    0                                       ; 32BB _ 6A, 00
        push    eax                                     ; 32BD _ 50
        call    task_run                                ; 32BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 32C3 _ 83. C4, 10
?_169:  mov     eax, 1                                  ; 32C6 _ B8, 00000001
?_170:  leave                                           ; 32CB _ C9
        ret                                             ; 32CC _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 32CD _ 55
        mov     ebp, esp                                ; 32CE _ 89. E5
        sub     esp, 16                                 ; 32D0 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 32D3 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 32D6 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 32D9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32DC _ 8B. 40, 0C
        cmp     edx, eax                                ; 32DF _ 39. C2
        jnz     ?_171                                   ; 32E1 _ 75, 07
        mov     eax, 4294967295                         ; 32E3 _ B8, FFFFFFFF
        jmp     ?_173                                   ; 32E8 _ EB, 51

?_171:  mov     eax, dword [ebp+8H]                     ; 32EA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 32ED _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 32EF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 32F2 _ 8B. 40, 04
        add     eax, edx                                ; 32F5 _ 01. D0
        movzx   eax, byte [eax]                         ; 32F7 _ 0F B6. 00
        movzx   eax, al                                 ; 32FA _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 32FD _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3300 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3303 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3306 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3309 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 330C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 330F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3312 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3315 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3318 _ 8B. 40, 0C
        cmp     edx, eax                                ; 331B _ 39. C2
        jl      ?_172                                   ; 331D _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 331F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3322 _ C7. 40, 04, 00000000
?_172:  mov     eax, dword [ebp+8H]                     ; 3329 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 332C _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 332F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3332 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3335 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3338 _ 8B. 45, FC
?_173:  leave                                           ; 333B _ C9
        ret                                             ; 333C _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 333D _ 55
        mov     ebp, esp                                ; 333E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3340 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3343 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3346 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3349 _ 8B. 40, 10
        sub     edx, eax                                ; 334C _ 29. C2
        mov     eax, edx                                ; 334E _ 89. D0
        pop     ebp                                     ; 3350 _ 5D
        ret                                             ; 3351 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3352 _ 55
        mov     ebp, esp                                ; 3353 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3355 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_174                                   ; 335C _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 335E _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3365 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3368 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 336B _ 89. 45, 0C
?_174:  mov     eax, dword [ebp+0CH]                    ; 336E _ 8B. 45, 0C
        mov     edx, eax                                ; 3371 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3373 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3376 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3379 _ 8B. 45, 10
        mov     edx, eax                                ; 337C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 337E _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3381 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3385 _ 8B. 45, 10
        sar     eax, 16                                 ; 3388 _ C1. F8, 10
        mov     edx, eax                                ; 338B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 338D _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3390 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3393 _ 8B. 45, 14
        mov     edx, eax                                ; 3396 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3398 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 339B _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 339E _ 8B. 45, 0C
        shr     eax, 16                                 ; 33A1 _ C1. E8, 10
        and     eax, 0FH                                ; 33A4 _ 83. E0, 0F
        mov     edx, eax                                ; 33A7 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 33A9 _ 8B. 45, 14
        sar     eax, 8                                  ; 33AC _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 33AF _ 83. E0, F0
        or      eax, edx                                ; 33B2 _ 09. D0
        mov     edx, eax                                ; 33B4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 33B6 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 33B9 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 33BC _ 8B. 45, 10
        shr     eax, 24                                 ; 33BF _ C1. E8, 18
        mov     edx, eax                                ; 33C2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 33C4 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 33C7 _ 88. 50, 07
        nop                                             ; 33CA _ 90
        pop     ebp                                     ; 33CB _ 5D
        ret                                             ; 33CC _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 33CD _ 55
        mov     ebp, esp                                ; 33CE _ 89. E5
        mov     eax, dword [task_timer]                 ; 33D0 _ A1, 000021C4(d)
        pop     ebp                                     ; 33D5 _ 5D
        ret                                             ; 33D6 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 33D7 _ 55
        mov     ebp, esp                                ; 33D8 _ 89. E5
        sub     esp, 16                                 ; 33DA _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 33DD _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 33E3 _ 8B. 55, 08
        mov     eax, edx                                ; 33E6 _ 89. D0
        shl     eax, 2                                  ; 33E8 _ C1. E0, 02
        add     eax, edx                                ; 33EB _ 01. D0
        shl     eax, 2                                  ; 33ED _ C1. E0, 02
        add     eax, ecx                                ; 33F0 _ 01. C8
        add     eax, 8                                  ; 33F2 _ 83. C0, 08
        mov     dword [eax], 0                          ; 33F5 _ C7. 00, 00000000
        mov     ecx, dword [taskctl]                    ; 33FB _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp+8H]                     ; 3401 _ 8B. 55, 08
        mov     eax, edx                                ; 3404 _ 89. D0
        shl     eax, 2                                  ; 3406 _ C1. E0, 02
        add     eax, edx                                ; 3409 _ 01. D0
        shl     eax, 2                                  ; 340B _ C1. E0, 02
        add     eax, ecx                                ; 340E _ 01. C8
        add     eax, 12                                 ; 3410 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3413 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3419 _ C7. 45, FC, 00000000
        jmp     ?_176                                   ; 3420 _ EB, 21

?_175:  mov     ecx, dword [taskctl]                    ; 3422 _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3428 _ 8B. 55, FC
        mov     eax, edx                                ; 342B _ 89. D0
        add     eax, eax                                ; 342D _ 01. C0
        add     eax, edx                                ; 342F _ 01. D0
        shl     eax, 3                                  ; 3431 _ C1. E0, 03
        add     eax, ecx                                ; 3434 _ 01. C8
        add     eax, 16                                 ; 3436 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3439 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 343F _ 83. 45, FC, 01
?_176:  cmp     dword [ebp-4H], 2                       ; 3443 _ 83. 7D, FC, 02
        jle     ?_175                                   ; 3447 _ 7E, D9
        nop                                             ; 3449 _ 90
        leave                                           ; 344A _ C9
        ret                                             ; 344B _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 344C _ 55
        mov     ebp, esp                                ; 344D _ 89. E5
        sub     esp, 24                                 ; 344F _ 83. EC, 18
        call    get_addr_gdt                            ; 3452 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3457 _ 89. 45, F0
        sub     esp, 8                                  ; 345A _ 83. EC, 08
        push    668                                     ; 345D _ 68, 0000029C
        push    dword [ebp+8H]                          ; 3462 _ FF. 75, 08
        call    memman_alloc_4K                         ; 3465 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 346A _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 346D _ A3, 000021C8(d)
        mov     dword [ebp-14H], 0                      ; 3472 _ C7. 45, EC, 00000000
        jmp     ?_178                                   ; 3479 _ EB, 73

?_177:  mov     edx, dword [taskctl]                    ; 347B _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-14H]                    ; 3481 _ 8B. 45, EC
        imul    eax, eax, 120                           ; 3484 _ 6B. C0, 78
        add     eax, edx                                ; 3487 _ 01. D0
        add     eax, 72                                 ; 3489 _ 83. C0, 48
        mov     dword [eax], 0                          ; 348C _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3492 _ 8B. 45, EC
        add     eax, 7                                  ; 3495 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3498 _ 8B. 0D, 000021C8(d)
        lea     edx, [eax*8]                            ; 349E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 34A5 _ 8B. 45, EC
        imul    eax, eax, 120                           ; 34A8 _ 6B. C0, 78
        add     eax, ecx                                ; 34AB _ 01. C8
        add     eax, 68                                 ; 34AD _ 83. C0, 44
        mov     dword [eax], edx                        ; 34B0 _ 89. 10
        mov     eax, dword [taskctl]                    ; 34B2 _ A1, 000021C8(d)
        mov     edx, dword [ebp-14H]                    ; 34B7 _ 8B. 55, EC
        imul    edx, edx, 120                           ; 34BA _ 6B. D2, 78
        add     edx, 80                                 ; 34BD _ 83. C2, 50
        add     eax, edx                                ; 34C0 _ 01. D0
        add     eax, 4                                  ; 34C2 _ 83. C0, 04
        mov     ecx, eax                                ; 34C5 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 34C7 _ 8B. 45, EC
        add     eax, 7                                  ; 34CA _ 83. C0, 07
        lea     edx, [eax*8]                            ; 34CD _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 34D4 _ 8B. 45, F0
        add     eax, edx                                ; 34D7 _ 01. D0
        push    137                                     ; 34D9 _ 68, 00000089
        push    ecx                                     ; 34DE _ 51
        push    103                                     ; 34DF _ 6A, 67
        push    eax                                     ; 34E1 _ 50
        call    set_segmdesc                            ; 34E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 34E7 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 34EA _ 83. 45, EC, 01
?_178:  cmp     dword [ebp-14H], 4                      ; 34EE _ 83. 7D, EC, 04
        jle     ?_177                                   ; 34F2 _ 7E, 87
        call    task_alloc                              ; 34F4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 34F9 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 34FC _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 34FF _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3506 _ 8B. 45, F4
        mov     dword [eax+8H], 100                     ; 3509 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-0CH]                    ; 3510 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3513 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 351A _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 351D _ FF. 75, F4
        call    task_add                                ; 3520 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3525 _ 83. C4, 10
        call    task_switchsub                          ; 3528 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 352D _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3530 _ 8B. 00
        sub     esp, 12                                 ; 3532 _ 83. EC, 0C
        push    eax                                     ; 3535 _ 50
        call    load_tr                                 ; 3536 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 353B _ 83. C4, 10
        call    timer_alloc                             ; 353E _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3543 _ A3, 000021C4(d)
        mov     eax, dword [ebp-0CH]                    ; 3548 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 354B _ 8B. 40, 08
        mov     edx, eax                                ; 354E _ 89. C2
        mov     eax, dword [task_timer]                 ; 3550 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 3555 _ 83. EC, 08
        push    edx                                     ; 3558 _ 52
        push    eax                                     ; 3559 _ 50
        call    timer_setTime                           ; 355A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 355F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3562 _ 8B. 45, F4
        leave                                           ; 3565 _ C9
        ret                                             ; 3566 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3567 _ 55
        mov     ebp, esp                                ; 3568 _ 89. E5
        sub     esp, 16                                 ; 356A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 356D _ C7. 45, F8, 00000000
        jmp     ?_181                                   ; 3574 _ E9, 000000E1

?_179:  mov     edx, dword [taskctl]                    ; 3579 _ 8B. 15, 000021C8(d)
        mov     eax, dword [ebp-8H]                     ; 357F _ 8B. 45, F8
        imul    eax, eax, 120                           ; 3582 _ 6B. C0, 78
        add     eax, edx                                ; 3585 _ 01. D0
        add     eax, 72                                 ; 3587 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 358A _ 8B. 00
        test    eax, eax                                ; 358C _ 85. C0
        jne     ?_180                                   ; 358E _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3594 _ A1, 000021C8(d)
        mov     edx, dword [ebp-8H]                     ; 3599 _ 8B. 55, F8
        imul    edx, edx, 120                           ; 359C _ 6B. D2, 78
        add     edx, 64                                 ; 359F _ 83. C2, 40
        add     eax, edx                                ; 35A2 _ 01. D0
        add     eax, 4                                  ; 35A4 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 35A7 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 35AA _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 35AD _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 35B4 _ 8B. 45, FC
        mov     dword [eax+34H], 514                    ; 35B7 _ C7. 40, 34, 00000202
        mov     eax, dword [ebp-4H]                     ; 35BE _ 8B. 45, FC
        mov     dword [eax+38H], 0                      ; 35C1 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-4H]                     ; 35C8 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 35CB _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 35D2 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 35D5 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 35DC _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 35DF _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 35E6 _ 8B. 45, FC
        mov     dword [eax+4CH], 0                      ; 35E9 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 35F0 _ 8B. 45, F8
        add     eax, 1                                  ; 35F3 _ 83. C0, 01
        shl     eax, 9                                  ; 35F6 _ C1. E0, 09
        mov     edx, eax                                ; 35F9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 35FB _ 8B. 45, FC
        mov     dword [eax+48H], edx                    ; 35FE _ 89. 50, 48
        mov     eax, dword [ebp-4H]                     ; 3601 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3604 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-4H]                     ; 360B _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 360E _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3615 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3618 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 361F _ 8B. 45, FC
        mov     dword [eax+64H], 0                      ; 3622 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-4H]                     ; 3629 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 362C _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3633 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3636 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 363D _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3640 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3647 _ 8B. 45, FC
        mov     dword [eax+74H], 1073741824             ; 364A _ C7. 40, 74, 40000000
        mov     eax, dword [ebp-4H]                     ; 3651 _ 8B. 45, FC
        jmp     ?_182                                   ; 3654 _ EB, 13

?_180:  add     dword [ebp-8H], 1                       ; 3656 _ 83. 45, F8, 01
?_181:  cmp     dword [ebp-8H], 4                       ; 365A _ 83. 7D, F8, 04
        jle     ?_179                                   ; 365E _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3664 _ B8, 00000000
?_182:  leave                                           ; 3669 _ C9
        ret                                             ; 366A _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 366B _ 55
        mov     ebp, esp                                ; 366C _ 89. E5
        sub     esp, 8                                  ; 366E _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3671 _ 83. 7D, 0C, 00
        jns     ?_183                                   ; 3675 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3677 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 367A _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 367D _ 89. 45, 0C
?_183:  cmp     dword [ebp+10H], 0                      ; 3680 _ 83. 7D, 10, 00
        jle     ?_184                                   ; 3684 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3686 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3689 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 368C _ 89. 50, 08
?_184:  mov     eax, dword [ebp+8H]                     ; 368F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3692 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3695 _ 83. F8, 02
        jnz     ?_185                                   ; 3698 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 369A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 369D _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 36A0 _ 39. 45, 0C
        jz      ?_185                                   ; 36A3 _ 74, 0E
        sub     esp, 12                                 ; 36A5 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 36A8 _ FF. 75, 08
        call    task_remove                             ; 36AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36B0 _ 83. C4, 10
?_185:  mov     eax, dword [ebp+8H]                     ; 36B3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 36B6 _ 8B. 40, 04
        cmp     eax, 2                                  ; 36B9 _ 83. F8, 02
        jz      ?_186                                   ; 36BC _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 36BE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 36C1 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 36C4 _ 89. 50, 0C
        sub     esp, 12                                 ; 36C7 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 36CA _ FF. 75, 08
        call    task_add                                ; 36CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36D2 _ 83. C4, 10
?_186:  mov     eax, dword [taskctl]                    ; 36D5 _ A1, 000021C8(d)
        mov     dword [eax+4H], 1                       ; 36DA _ C7. 40, 04, 00000001
        nop                                             ; 36E1 _ 90
        leave                                           ; 36E2 _ C9
        ret                                             ; 36E3 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 36E4 _ 55
        mov     ebp, esp                                ; 36E5 _ 89. E5
        sub     esp, 24                                 ; 36E7 _ 83. EC, 18
        mov     ecx, dword [taskctl]                    ; 36EA _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 36F0 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 36F5 _ 8B. 10
        mov     eax, edx                                ; 36F7 _ 89. D0
        shl     eax, 2                                  ; 36F9 _ C1. E0, 02
        add     eax, edx                                ; 36FC _ 01. D0
        shl     eax, 2                                  ; 36FE _ C1. E0, 02
        add     eax, ecx                                ; 3701 _ 01. C8
        add     eax, 8                                  ; 3703 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3706 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3709 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 370C _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 370F _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3712 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3716 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3719 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 371C _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 371F _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3722 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3725 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3728 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 372B _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 372E _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3731 _ 8B. 00
        cmp     edx, eax                                ; 3733 _ 39. C2
        jnz     ?_187                                   ; 3735 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3737 _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 373A _ C7. 40, 04, 00000000
?_187:  mov     eax, dword [taskctl]                    ; 3741 _ A1, 000021C8(d)
        mov     eax, dword [eax+4H]                     ; 3746 _ 8B. 40, 04
        test    eax, eax                                ; 3749 _ 85. C0
        jz      ?_188                                   ; 374B _ 74, 24
        call    task_switchsub                          ; 374D _ E8, FFFFFFFC(rel)
        mov     ecx, dword [taskctl]                    ; 3752 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 3758 _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 375D _ 8B. 10
        mov     eax, edx                                ; 375F _ 89. D0
        shl     eax, 2                                  ; 3761 _ C1. E0, 02
        add     eax, edx                                ; 3764 _ 01. D0
        shl     eax, 2                                  ; 3766 _ C1. E0, 02
        add     eax, ecx                                ; 3769 _ 01. C8
        add     eax, 8                                  ; 376B _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 376E _ 89. 45, EC
?_188:  mov     eax, dword [ebp-14H]                    ; 3771 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3774 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3777 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 377A _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 377E _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3781 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3784 _ 8B. 40, 08
        mov     edx, eax                                ; 3787 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3789 _ A1, 000021C4(d)
        sub     esp, 8                                  ; 378E _ 83. EC, 08
        push    edx                                     ; 3791 _ 52
        push    eax                                     ; 3792 _ 50
        call    timer_setTime                           ; 3793 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3798 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 379B _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 379E _ 3B. 45, F0
        jz      ?_189                                   ; 37A1 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 37A3 _ 83. 7D, F4, 00
        jz      ?_189                                   ; 37A7 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 37A9 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 37AC _ 8B. 00
        sub     esp, 8                                  ; 37AE _ 83. EC, 08
        push    eax                                     ; 37B1 _ 50
        push    0                                       ; 37B2 _ 6A, 00
        call    farjmp                                  ; 37B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 37B9 _ 83. C4, 10
        nop                                             ; 37BC _ 90
?_189:  nop                                             ; 37BD _ 90
        leave                                           ; 37BE _ C9
        ret                                             ; 37BF _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 37C0 _ 55
        mov     ebp, esp                                ; 37C1 _ 89. E5
        sub     esp, 24                                 ; 37C3 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 37C6 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 37CD _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 37D1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 37D4 _ 8B. 40, 04
        cmp     eax, 2                                  ; 37D7 _ 83. F8, 02
        jnz     ?_190                                   ; 37DA _ 75, 4C
        call    task_now                                ; 37DC _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 37E1 _ 89. 45, F4
        sub     esp, 12                                 ; 37E4 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 37E7 _ FF. 75, 08
        call    task_remove                             ; 37EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 37EF _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 37F2 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 37F6 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 37F9 _ 3B. 45, F4
        jnz     ?_190                                   ; 37FC _ 75, 2A
        call    task_switchsub                          ; 37FE _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3803 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3808 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 380B _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 380F _ 83. 7D, F4, 00
        jz      ?_190                                   ; 3813 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3815 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3818 _ 8B. 00
        sub     esp, 8                                  ; 381A _ 83. EC, 08
        push    eax                                     ; 381D _ 50
        push    0                                       ; 381E _ 6A, 00
        call    farjmp                                  ; 3820 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3825 _ 83. C4, 10
?_190:  movsx   eax, byte [ebp-0DH]                     ; 3828 _ 0F BE. 45, F3
        leave                                           ; 382C _ C9
        ret                                             ; 382D _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 382E _ 55
        mov     ebp, esp                                ; 382F _ 89. E5
        sub     esp, 16                                 ; 3831 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3834 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [taskctl]                    ; 383A _ A1, 000021C8(d)
        mov     edx, dword [eax]                        ; 383F _ 8B. 10
        mov     eax, edx                                ; 3841 _ 89. D0
        shl     eax, 2                                  ; 3843 _ C1. E0, 02
        add     eax, edx                                ; 3846 _ 01. D0
        shl     eax, 2                                  ; 3848 _ C1. E0, 02
        add     eax, ecx                                ; 384B _ 01. C8
        add     eax, 8                                  ; 384D _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3850 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3853 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3856 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3859 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 385C _ 8B. 44 90, 08
        leave                                           ; 3860 _ C9
        ret                                             ; 3861 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3862 _ 55
        mov     ebp, esp                                ; 3863 _ 89. E5
        sub     esp, 16                                 ; 3865 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 3868 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 386E _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3871 _ 8B. 50, 0C
        mov     eax, edx                                ; 3874 _ 89. D0
        shl     eax, 2                                  ; 3876 _ C1. E0, 02
        add     eax, edx                                ; 3879 _ 01. D0
        shl     eax, 2                                  ; 387B _ C1. E0, 02
        add     eax, ecx                                ; 387E _ 01. C8
        add     eax, 8                                  ; 3880 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3883 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3886 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3889 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 388B _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 388E _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3891 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3895 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3898 _ 8B. 00
        lea     edx, [eax+1H]                           ; 389A _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 389D _ 8B. 45, FC
        mov     dword [eax], edx                        ; 38A0 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 38A2 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 38A5 _ C7. 40, 04, 00000002
        nop                                             ; 38AC _ 90
        leave                                           ; 38AD _ C9
        ret                                             ; 38AE _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 38AF _ 55
        mov     ebp, esp                                ; 38B0 _ 89. E5
        sub     esp, 16                                 ; 38B2 _ 83. EC, 10
        mov     ecx, dword [taskctl]                    ; 38B5 _ 8B. 0D, 000021C8(d)
        mov     eax, dword [ebp+8H]                     ; 38BB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 38BE _ 8B. 50, 0C
        mov     eax, edx                                ; 38C1 _ 89. D0
        shl     eax, 2                                  ; 38C3 _ C1. E0, 02
        add     eax, edx                                ; 38C6 _ 01. D0
        shl     eax, 2                                  ; 38C8 _ C1. E0, 02
        add     eax, ecx                                ; 38CB _ 01. C8
        add     eax, 8                                  ; 38CD _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 38D0 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 38D3 _ C7. 45, F8, 00000000
        jmp     ?_193                                   ; 38DA _ EB, 23

?_191:  mov     eax, dword [ebp-4H]                     ; 38DC _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 38DF _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 38E2 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 38E6 _ 39. 45, 08
        jnz     ?_192                                   ; 38E9 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 38EB _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 38EE _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 38F1 _ C7. 44 90, 08, 00000000
        jmp     ?_194                                   ; 38F9 _ EB, 0E

?_192:  add     dword [ebp-8H], 1                       ; 38FB _ 83. 45, F8, 01
?_193:  mov     eax, dword [ebp-4H]                     ; 38FF _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3902 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3904 _ 39. 45, F8
        jl      ?_191                                   ; 3907 _ 7C, D3
?_194:  mov     eax, dword [ebp-4H]                     ; 3909 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 390C _ 8B. 00
        lea     edx, [eax-1H]                           ; 390E _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3911 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3914 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3916 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3919 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 391C _ 39. 45, F8
        jge     ?_195                                   ; 391F _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3921 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3924 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3927 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 392A _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 392D _ 89. 50, 04
?_195:  mov     eax, dword [ebp-4H]                     ; 3930 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3933 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3936 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3939 _ 8B. 00
        cmp     edx, eax                                ; 393B _ 39. C2
        jl      ?_196                                   ; 393D _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 393F _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3942 _ C7. 40, 04, 00000000
?_196:  mov     eax, dword [ebp+8H]                     ; 3949 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 394C _ C7. 40, 04, 00000001
        jmp     ?_198                                   ; 3953 _ EB, 1B

?_197:  mov     eax, dword [ebp-8H]                     ; 3955 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3958 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 395B _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 395E _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3962 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3965 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3968 _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 396C _ 83. 45, F8, 01
?_198:  mov     eax, dword [ebp-4H]                     ; 3970 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3973 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3975 _ 39. 45, F8
        jl      ?_197                                   ; 3978 _ 7C, DB
        nop                                             ; 397A _ 90
        leave                                           ; 397B _ C9
        ret                                             ; 397C _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 397D _ 55
        mov     ebp, esp                                ; 397E _ 89. E5
        sub     esp, 16                                 ; 3980 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3983 _ C7. 45, FC, 00000000
        jmp     ?_200                                   ; 398A _ EB, 22

?_199:  mov     ecx, dword [taskctl]                    ; 398C _ 8B. 0D, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 3992 _ 8B. 55, FC
        mov     eax, edx                                ; 3995 _ 89. D0
        shl     eax, 2                                  ; 3997 _ C1. E0, 02
        add     eax, edx                                ; 399A _ 01. D0
        shl     eax, 2                                  ; 399C _ C1. E0, 02
        add     eax, ecx                                ; 399F _ 01. C8
        add     eax, 8                                  ; 39A1 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 39A4 _ 8B. 00
        test    eax, eax                                ; 39A6 _ 85. C0
        jg      ?_201                                   ; 39A8 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 39AA _ 83. 45, FC, 01
?_200:  cmp     dword [ebp-4H], 2                       ; 39AE _ 83. 7D, FC, 02
        jle     ?_199                                   ; 39B2 _ 7E, D8
        jmp     ?_202                                   ; 39B4 _ EB, 01

?_201:  nop                                             ; 39B6 _ 90
?_202:  mov     eax, dword [taskctl]                    ; 39B7 _ A1, 000021C8(d)
        mov     edx, dword [ebp-4H]                     ; 39BC _ 8B. 55, FC
        mov     dword [eax], edx                        ; 39BF _ 89. 10
        mov     eax, dword [taskctl]                    ; 39C1 _ A1, 000021C8(d)
        mov     dword [eax+4H], 0                       ; 39C6 _ C7. 40, 04, 00000000
        nop                                             ; 39CD _ 90
        leave                                           ; 39CE _ C9
        ret                                             ; 39CF _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 39D0 _ 55
        mov     ebp, esp                                ; 39D1 _ 89. E5
        mov     eax, dword [taskctl]                    ; 39D3 _ A1, 000021C8(d)
        pop     ebp                                     ; 39D8 _ 5D
        ret                                             ; 39D9 _ C3
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

pos.2276: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.2336:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.2391:                                            ; byte
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

closebtn.2534:                                          ; byte
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

task_a.2271:                                            ; dword
        resd    1                                       ; 0234

cnt.2272: resd  1                                       ; 0238

line.2275:                                              ; dword
        resd    1                                       ; 023C

task_b.2261:                                            ; oword
        resb    16                                      ; 0240

str.2434:                                               ; byte
        resb    1                                       ; 0250

?_222:  resb    9                                       ; 0251

?_223:  resb    2                                       ; 025A

line.2467:                                              ; dword
        resd    1                                       ; 025C

pos.2466: resd  8                                       ; 0260

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


