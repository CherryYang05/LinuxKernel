; Disassembly of file: ckernel.o
; Wed Mar 23 15:18:02 2022
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 112                                ; 0005 _ 83. EC, 70
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0008 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 000E _ 89. 45, F4
        xor     eax, eax                                ; 0011 _ 31. C0
        sub     esp, 12                                 ; 0013 _ 83. EC, 0C
        push    bootInfo                                ; 0016 _ 68, 00000008(d)
        call    initBootInfo                            ; 001B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0020 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0023 _ A1, 00000008(d)
        mov     dword [ebp-58H], eax                    ; 0028 _ 89. 45, A8
        movzx   eax, word [?_276]                       ; 002B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0032 _ 98
        mov     dword [ebp-54H], eax                    ; 0033 _ 89. 45, AC
        movzx   eax, word [?_277]                       ; 0036 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 003D _ 98
        mov     dword [ebp-50H], eax                    ; 003E _ 89. 45, B0
        call    getTimerController                      ; 0041 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 0046 _ 89. 45, B4
        call    init_pit                                ; 0049 _ E8, FFFFFFFC(rel)
        push    0                                       ; 004E _ 6A, 00
        push    timerbuf                                ; 0050 _ 68, 0000023C(d)
        push    8                                       ; 0055 _ 6A, 08
        push    timerInfo                               ; 0057 _ 68, 00000220(d)
        call    fifo8_init                              ; 005C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0061 _ 83. C4, 10
        call    timer_alloc                             ; 0064 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 0069 _ 89. 45, B8
        sub     esp, 4                                  ; 006C _ 83. EC, 04
        push    10                                      ; 006F _ 6A, 0A
        push    timerInfo                               ; 0071 _ 68, 00000220(d)
        push    dword [ebp-48H]                         ; 0076 _ FF. 75, B8
        call    timer_init                              ; 0079 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 007E _ 83. C4, 10
        sub     esp, 8                                  ; 0081 _ 83. EC, 08
        push    100                                     ; 0084 _ 6A, 64
        push    dword [ebp-48H]                         ; 0086 _ FF. 75, B8
        call    timer_setTime                           ; 0089 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008E _ 83. C4, 10
        call    timer_alloc                             ; 0091 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 0096 _ 89. 45, BC
        sub     esp, 4                                  ; 0099 _ 83. EC, 04
        push    2                                       ; 009C _ 6A, 02
        push    timerInfo                               ; 009E _ 68, 00000220(d)
        push    dword [ebp-44H]                         ; 00A3 _ FF. 75, BC
        call    timer_init                              ; 00A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AB _ 83. C4, 10
        sub     esp, 8                                  ; 00AE _ 83. EC, 08
        push    300                                     ; 00B1 _ 68, 0000012C
        push    dword [ebp-44H]                         ; 00B6 _ FF. 75, BC
        call    timer_setTime                           ; 00B9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BE _ 83. C4, 10
        call    timer_alloc                             ; 00C1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 00C6 _ 89. 45, C0
        sub     esp, 4                                  ; 00C9 _ 83. EC, 04
        push    1                                       ; 00CC _ 6A, 01
        push    timerInfo                               ; 00CE _ 68, 00000220(d)
        push    dword [ebp-40H]                         ; 00D3 _ FF. 75, C0
        call    timer_init                              ; 00D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DB _ 83. C4, 10
        sub     esp, 8                                  ; 00DE _ 83. EC, 08
        push    50                                      ; 00E1 _ 6A, 32
        push    dword [ebp-40H]                         ; 00E3 _ FF. 75, C0
        call    timer_setTime                           ; 00E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EB _ 83. C4, 10
        push    0                                       ; 00EE _ 6A, 00
        push    keybuf                                  ; 00F0 _ 68, 00000060(d)
        push    32                                      ; 00F5 _ 6A, 20
        push    keyInfo                                 ; 00F7 _ 68, 00000010(d)
        call    fifo8_init                              ; 00FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0101 _ 83. C4, 10
        push    0                                       ; 0104 _ 6A, 00
        push    mousebuf                                ; 0106 _ 68, 00000080(d)
        push    128                                     ; 010B _ 68, 00000080
        push    mouseInfo                               ; 0110 _ 68, 0000002C(d)
        call    fifo8_init                              ; 0115 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 011A _ 83. C4, 10
        call    init_palette                            ; 011D _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0122 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0127 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 012C _ 83. EC, 0C
        push    mouse_move                              ; 012F _ 68, 00000100(d)
        call    enable_mouse                            ; 0134 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0139 _ 83. C4, 10
        call    get_addr_buffer                         ; 013C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 0141 _ 89. 45, C4
        call    get_memory_block_count                  ; 0144 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 0149 _ 89. 45, C8
        mov     eax, dword [memman]                     ; 014C _ A1, 00000008(d)
        sub     esp, 12                                 ; 0151 _ 83. EC, 0C
        push    eax                                     ; 0154 _ 50
        call    memman_init                             ; 0155 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 015A _ 83. C4, 10
        mov     eax, dword [memman]                     ; 015D _ A1, 00000008(d)
        sub     esp, 4                                  ; 0162 _ 83. EC, 04
        push    1072594944                              ; 0165 _ 68, 3FEE8000
        push    16809984                                ; 016A _ 68, 01008000
        push    eax                                     ; 016F _ 50
        call    memman_free                             ; 0170 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0175 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0178 _ A1, 00000008(d)
        sub     esp, 12                                 ; 017D _ 83. EC, 0C
        push    eax                                     ; 0180 _ 50
        call    memman_total                            ; 0181 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0186 _ 83. C4, 10
        shr     eax, 20                                 ; 0189 _ C1. E8, 14
        mov     dword [ebp-34H], eax                    ; 018C _ 89. 45, CC
        mov     eax, dword [ebp-34H]                    ; 018F _ 8B. 45, CC
        sub     esp, 12                                 ; 0192 _ 83. EC, 0C
        push    eax                                     ; 0195 _ 50
        call    intToHexStr                             ; 0196 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019B _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 019E _ 89. 45, D0
        mov     eax, dword [memman]                     ; 01A1 _ A1, 00000008(d)
        push    dword [ebp-50H]                         ; 01A6 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 01A9 _ FF. 75, AC
        push    dword [ebp-58H]                         ; 01AC _ FF. 75, A8
        push    eax                                     ; 01AF _ 50
        call    shtctl_init                             ; 01B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B5 _ 83. C4, 10
        mov     dword [shtctl], eax                     ; 01B8 _ A3, 00000244(d)
        mov     eax, dword [shtctl]                     ; 01BD _ A1, 00000244(d)
        sub     esp, 12                                 ; 01C2 _ 83. EC, 0C
        push    eax                                     ; 01C5 _ 50
        call    sheet_alloc                             ; 01C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CB _ 83. C4, 10
        mov     dword [sheet_back], eax                 ; 01CE _ A3, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 01D3 _ A1, 00000244(d)
        sub     esp, 12                                 ; 01D8 _ 83. EC, 0C
        push    eax                                     ; 01DB _ 50
        call    sheet_alloc                             ; 01DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E1 _ 83. C4, 10
        mov     dword [sheet_mouse], eax                ; 01E4 _ A3, 00000250(d)
        mov     eax, dword [ebp-54H]                    ; 01E9 _ 8B. 45, AC
        imul    eax, dword [ebp-50H]                    ; 01EC _ 0F AF. 45, B0
        mov     edx, eax                                ; 01F0 _ 89. C2
        mov     eax, dword [memman]                     ; 01F2 _ A1, 00000008(d)
        sub     esp, 8                                  ; 01F7 _ 83. EC, 08
        push    edx                                     ; 01FA _ 52
        push    eax                                     ; 01FB _ 50
        call    memman_alloc_4K                         ; 01FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0201 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0204 _ A3, 00000118(d)
        mov     eax, dword [buf_back]                   ; 0209 _ A1, 00000118(d)
        sub     esp, 4                                  ; 020E _ 83. EC, 04
        push    dword [ebp-50H]                         ; 0211 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0214 _ FF. 75, AC
        push    eax                                     ; 0217 _ 50
        call    init_screen8                            ; 0218 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 021D _ 83. C4, 10
        mov     edx, dword [buf_back]                   ; 0220 _ 8B. 15, 00000118(d)
        mov     eax, dword [sheet_back]                 ; 0226 _ A1, 0000024C(d)
        sub     esp, 12                                 ; 022B _ 83. EC, 0C
        push    99                                      ; 022E _ 6A, 63
        push    dword [ebp-50H]                         ; 0230 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0233 _ FF. 75, AC
        push    edx                                     ; 0236 _ 52
        push    eax                                     ; 0237 _ 50
        call    sheet_setbuf                            ; 0238 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 023D _ 83. C4, 20
        mov     eax, dword [sheet_mouse]                ; 0240 _ A1, 00000250(d)
        sub     esp, 12                                 ; 0245 _ 83. EC, 0C
        push    99                                      ; 0248 _ 6A, 63
        push    16                                      ; 024A _ 6A, 10
        push    16                                      ; 024C _ 6A, 10
        push    buf_mouse                               ; 024E _ 68, 00000120(d)
        push    eax                                     ; 0253 _ 50
        call    sheet_setbuf                            ; 0254 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0259 _ 83. C4, 20
        sub     esp, 8                                  ; 025C _ 83. EC, 08
        push    99                                      ; 025F _ 6A, 63
        push    buf_mouse                               ; 0261 _ 68, 00000120(d)
        call    init_mouse_cursor                       ; 0266 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026B _ 83. C4, 10
        mov     edx, dword [sheet_back]                 ; 026E _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0274 _ A1, 00000244(d)
        push    0                                       ; 0279 _ 6A, 00
        push    0                                       ; 027B _ 6A, 00
        push    edx                                     ; 027D _ 52
        push    eax                                     ; 027E _ 50
        call    sheet_slide                             ; 027F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0284 _ 83. C4, 10
        mov     eax, dword [ebp-54H]                    ; 0287 _ 8B. 45, AC
        sub     eax, 16                                 ; 028A _ 83. E8, 10
        mov     edx, eax                                ; 028D _ 89. C2
        shr     edx, 31                                 ; 028F _ C1. EA, 1F
        add     eax, edx                                ; 0292 _ 01. D0
        sar     eax, 1                                  ; 0294 _ D1. F8
        mov     dword [mx], eax                         ; 0296 _ A3, 00000110(d)
        mov     eax, dword [ebp-50H]                    ; 029B _ 8B. 45, B0
        sub     eax, 44                                 ; 029E _ 83. E8, 2C
        mov     edx, eax                                ; 02A1 _ 89. C2
        shr     edx, 31                                 ; 02A3 _ C1. EA, 1F
        add     eax, edx                                ; 02A6 _ 01. D0
        sar     eax, 1                                  ; 02A8 _ D1. F8
        mov     dword [my], eax                         ; 02AA _ A3, 00000114(d)
        mov     ebx, dword [my]                         ; 02AF _ 8B. 1D, 00000114(d)
        mov     ecx, dword [mx]                         ; 02B5 _ 8B. 0D, 00000110(d)
        mov     edx, dword [sheet_mouse]                ; 02BB _ 8B. 15, 00000250(d)
        mov     eax, dword [shtctl]                     ; 02C1 _ A1, 00000244(d)
        push    ebx                                     ; 02C6 _ 53
        push    ecx                                     ; 02C7 _ 51
        push    edx                                     ; 02C8 _ 52
        push    eax                                     ; 02C9 _ 50
        call    sheet_slide                             ; 02CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02CF _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 02D2 _ A1, 00000244(d)
        sub     esp, 4                                  ; 02D7 _ 83. EC, 04
        push    1                                       ; 02DA _ 6A, 01
        push    80                                      ; 02DC _ 6A, 50
        push    150                                     ; 02DE _ 68, 00000096
        push    150                                     ; 02E3 _ 68, 00000096
        push    300                                     ; 02E8 _ 68, 0000012C
        push    ?_254                                   ; 02ED _ 68, 00000000(d)
        push    eax                                     ; 02F2 _ 50
        call    messageBox                              ; 02F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02F8 _ 83. C4, 20
        mov     dword [sheet_win], eax                  ; 02FB _ A3, 00000248(d)
        mov     edx, dword [sheet_back]                 ; 0300 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0306 _ A1, 00000244(d)
        sub     esp, 4                                  ; 030B _ 83. EC, 04
        push    0                                       ; 030E _ 6A, 00
        push    edx                                     ; 0310 _ 52
        push    eax                                     ; 0311 _ 50
        call    sheet_level_updown                      ; 0312 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0317 _ 83. C4, 10
        mov     edx, dword [sheet_mouse]                ; 031A _ 8B. 15, 00000250(d)
        mov     eax, dword [shtctl]                     ; 0320 _ A1, 00000244(d)
        sub     esp, 4                                  ; 0325 _ 83. EC, 04
        push    50                                      ; 0328 _ 6A, 32
        push    edx                                     ; 032A _ 52
        push    eax                                     ; 032B _ 50
        call    sheet_level_updown                      ; 032C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0331 _ 83. C4, 10
        call    io_sti                                  ; 0334 _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 0339 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 033E _ 89. 45, D4
        mov     eax, dword [memman]                     ; 0341 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0346 _ 83. EC, 0C
        push    eax                                     ; 0349 _ 50
        call    task_init                               ; 034A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 034F _ 83. C4, 10
        mov     dword [task_a.2311], eax                ; 0352 _ A3, 0000025C(d)
        mov     eax, dword [task_a.2311]                ; 0357 _ A1, 0000025C(d)
        mov     dword [task_main], eax                  ; 035C _ A3, 00000258(d)
        mov     eax, dword [task_a.2311]                ; 0361 _ A1, 0000025C(d)
        mov     dword [?_278], eax                      ; 0366 _ A3, 00000028(d)
        mov     byte [ebp-6DH], 0                       ; 036B _ C6. 45, 93, 00
        mov     dword [ebp-6CH], 7                      ; 036F _ C7. 45, 94, 00000007
        mov     dword [ebp-68H], 0                      ; 0376 _ C7. 45, 98, 00000000
        mov     edx, dword [sheet_win]                  ; 037D _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0383 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0388 _ 83. EC, 08
        push    ?_255                                   ; 038B _ 68, 00000008(d)
        push    10                                      ; 0390 _ 6A, 0A
        push    63                                      ; 0392 _ 6A, 3F
        push    8                                       ; 0394 _ 6A, 08
        push    edx                                     ; 0396 _ 52
        push    eax                                     ; 0397 _ 50
        call    showString                              ; 0398 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 039D _ 83. C4, 20
        mov     dword [ebp-64H], 0                      ; 03A0 _ C7. 45, 9C, 00000000
        mov     dword [ebp-60H], 0                      ; 03A7 _ C7. 45, A0, 00000000
        mov     dword [ebp-28H], 0                      ; 03AE _ C7. 45, D8, 00000000
        call    launch_console                          ; 03B5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-28H], eax                    ; 03BA _ 89. 45, D8
?_001:  call    io_sti                                  ; 03BD _ E8, FFFFFFFC(rel)
        call    io_cli                                  ; 03C2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03C7 _ 83. EC, 0C
        push    keyInfo                                 ; 03CA _ 68, 00000010(d)
        call    fifo8_status                            ; 03CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D4 _ 83. C4, 10
        mov     ebx, eax                                ; 03D7 _ 89. C3
        sub     esp, 12                                 ; 03D9 _ 83. EC, 0C
        push    mouseInfo                               ; 03DC _ 68, 0000002C(d)
        call    fifo8_status                            ; 03E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E6 _ 83. C4, 10
        add     ebx, eax                                ; 03E9 _ 01. C3
        sub     esp, 12                                 ; 03EB _ 83. EC, 0C
        push    timerInfo                               ; 03EE _ 68, 00000220(d)
        call    fifo8_status                            ; 03F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03F8 _ 83. C4, 10
        add     eax, ebx                                ; 03FB _ 01. D8
        test    eax, eax                                ; 03FD _ 85. C0
        jnz     ?_002                                   ; 03FF _ 75, 07
        call    io_sti                                  ; 0401 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0406 _ EB, B5

?_002:  sub     esp, 12                                 ; 0408 _ 83. EC, 0C
        push    keyInfo                                 ; 040B _ 68, 00000010(d)
        call    fifo8_status                            ; 0410 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0415 _ 83. C4, 10
        test    eax, eax                                ; 0418 _ 85. C0
        je      ?_009                                   ; 041A _ 0F 84, 0000030A
        call    io_sti                                  ; 0420 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0425 _ 83. EC, 0C
        push    keyInfo                                 ; 0428 _ 68, 00000010(d)
        call    fifo8_get                               ; 042D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0432 _ 83. C4, 10
        mov     byte [ebp-6DH], al                      ; 0435 _ 88. 45, 93
        cmp     byte [ebp-6DH], 15                      ; 0438 _ 80. 7D, 93, 0F
        jne     ?_005                                   ; 043C _ 0F 85, 0000011E
        mov     dword [ebp-5CH], -1                     ; 0442 _ C7. 45, A4, FFFFFFFF
        cmp     dword [ebp-60H], 0                      ; 0449 _ 83. 7D, A0, 00
        jnz     ?_003                                   ; 044D _ 75, 6C
        mov     dword [ebp-60H], 1                      ; 044F _ C7. 45, A0, 00000001
        mov     edx, dword [sheet_win]                  ; 0456 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 045C _ A1, 00000244(d)
        push    0                                       ; 0461 _ 6A, 00
        push    ?_254                                   ; 0463 _ 68, 00000000(d)
        push    edx                                     ; 0468 _ 52
        push    eax                                     ; 0469 _ 50
        call    make_wtitle8                            ; 046A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0472 _ A1, 00000244(d)
        push    1                                       ; 0477 _ 6A, 01
        push    ?_256                                   ; 0479 _ 68, 0000001E(d)
        push    dword [ebp-28H]                         ; 047E _ FF. 75, D8
        push    eax                                     ; 0481 _ 50
        call    make_wtitle8                            ; 0482 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0487 _ 83. C4, 10
        mov     ebx, dword [pos.2316]                   ; 048A _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2315]                  ; 0490 _ 8B. 0D, 00000260(d)
        mov     edx, dword [sheet_win]                  ; 0496 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 049C _ A1, 00000244(d)
        sub     esp, 12                                 ; 04A1 _ 83. EC, 0C
        push    7                                       ; 04A4 _ 6A, 07
        push    ebx                                     ; 04A6 _ 53
        push    ecx                                     ; 04A7 _ 51
        push    edx                                     ; 04A8 _ 52
        push    eax                                     ; 04A9 _ 50
        call    set_cursor                              ; 04AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04AF _ 83. C4, 20
        mov     dword [ebp-5CH], 87                     ; 04B2 _ C7. 45, A4, 00000057
        jmp     ?_004                                   ; 04B9 _ EB, 42

?_003:  mov     dword [ebp-60H], 0                      ; 04BB _ C7. 45, A0, 00000000
        mov     edx, dword [sheet_win]                  ; 04C2 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 04C8 _ A1, 00000244(d)
        push    1                                       ; 04CD _ 6A, 01
        push    ?_254                                   ; 04CF _ 68, 00000000(d)
        push    edx                                     ; 04D4 _ 52
        push    eax                                     ; 04D5 _ 50
        call    make_wtitle8                            ; 04D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DB _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04DE _ A1, 00000244(d)
        push    0                                       ; 04E3 _ 6A, 00
        push    ?_256                                   ; 04E5 _ 68, 0000001E(d)
        push    dword [ebp-28H]                         ; 04EA _ FF. 75, D8
        push    eax                                     ; 04ED _ 50
        call    make_wtitle8                            ; 04EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04F3 _ 83. C4, 10
        mov     dword [ebp-5CH], 88                     ; 04F6 _ C7. 45, A4, 00000058
?_004:  mov     eax, dword [sheet_win]                  ; 04FD _ A1, 00000248(d)
        mov     ecx, dword [eax+4H]                     ; 0502 _ 8B. 48, 04
        mov     edx, dword [sheet_win]                  ; 0505 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 050B _ A1, 00000244(d)
        sub     esp, 8                                  ; 0510 _ 83. EC, 08
        push    21                                      ; 0513 _ 6A, 15
        push    ecx                                     ; 0515 _ 51
        push    0                                       ; 0516 _ 6A, 00
        push    0                                       ; 0518 _ 6A, 00
        push    edx                                     ; 051A _ 52
        push    eax                                     ; 051B _ 50
        call    sheet_refresh                           ; 051C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0521 _ 83. C4, 20
        mov     eax, dword [ebp-28H]                    ; 0524 _ 8B. 45, D8
        mov     edx, dword [eax+4H]                     ; 0527 _ 8B. 50, 04
        mov     eax, dword [shtctl]                     ; 052A _ A1, 00000244(d)
        sub     esp, 8                                  ; 052F _ 83. EC, 08
        push    21                                      ; 0532 _ 6A, 15
        push    edx                                     ; 0534 _ 52
        push    0                                       ; 0535 _ 6A, 00
        push    0                                       ; 0537 _ 6A, 00
        push    dword [ebp-28H]                         ; 0539 _ FF. 75, D8
        push    eax                                     ; 053C _ 50
        call    sheet_refresh                           ; 053D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0542 _ 83. C4, 20
        mov     edx, dword [task_console]               ; 0545 _ 8B. 15, 00000254(d)
        mov     eax, dword [task_a.2311]                ; 054B _ A1, 0000025C(d)
        sub     esp, 4                                  ; 0550 _ 83. EC, 04
        push    dword [ebp-5CH]                         ; 0553 _ FF. 75, A4
        push    edx                                     ; 0556 _ 52
        push    eax                                     ; 0557 _ 50
        call    send_message                            ; 0558 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 055D _ 83. C4, 10
?_005:  cmp     dword [ebp-60H], 0                      ; 0560 _ 83. 7D, A0, 00
        jne     ?_008                                   ; 0564 _ 0F 85, 00000178
        mov     edx, dword [sheet_back]                 ; 056A _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0570 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0575 _ 83. EC, 08
        push    ?_257                                   ; 0578 _ 68, 00000027(d)
        push    11                                      ; 057D _ 6A, 0B
        push    0                                       ; 057F _ 6A, 00
        push    0                                       ; 0581 _ 6A, 00
        push    edx                                     ; 0583 _ 52
        push    eax                                     ; 0584 _ 50
        call    showString                              ; 0585 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 058A _ 83. C4, 20
        movzx   eax, byte [ebp-6DH]                     ; 058D _ 0F B6. 45, 93
        sub     esp, 12                                 ; 0591 _ 83. EC, 0C
        push    eax                                     ; 0594 _ 50
        call    transferScanCode                        ; 0595 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 059A _ 83. C4, 10
        test    al, al                                  ; 059D _ 84. C0
        je      ?_007                                   ; 059F _ 0F 84, 000000C3
        mov     eax, dword [line.2315]                  ; 05A5 _ A1, 00000260(d)
        cmp     eax, 142                                ; 05AA _ 3D, 0000008E
        jg      ?_007                                   ; 05AF _ 0F 8F, 000000B3
        mov     ebx, dword [pos.2316]                   ; 05B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2315]                  ; 05BB _ 8B. 0D, 00000260(d)
        mov     edx, dword [sheet_win]                  ; 05C1 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 05C7 _ A1, 00000244(d)
        sub     esp, 12                                 ; 05CC _ 83. EC, 0C
        push    7                                       ; 05CF _ 6A, 07
        push    ebx                                     ; 05D1 _ 53
        push    ecx                                     ; 05D2 _ 51
        push    edx                                     ; 05D3 _ 52
        push    eax                                     ; 05D4 _ 50
        call    set_cursor                              ; 05D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05DA _ 83. C4, 20
        movzx   eax, byte [ebp-6DH]                     ; 05DD _ 0F B6. 45, 93
        sub     esp, 12                                 ; 05E1 _ 83. EC, 0C
        push    eax                                     ; 05E4 _ 50
        call    transferScanCode                        ; 05E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05EA _ 83. C4, 10
        mov     byte [ebp-0EH], al                      ; 05ED _ 88. 45, F2
        mov     byte [ebp-0DH], 0                       ; 05F0 _ C6. 45, F3, 00
        mov     eax, dword [pos.2316]                   ; 05F4 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 05F9 _ 8D. 70, 1A
        mov     eax, dword [line.2315]                  ; 05FC _ A1, 00000260(d)
        lea     ebx, [eax+0AH]                          ; 0601 _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 0604 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 060A _ A1, 00000244(d)
        sub     esp, 8                                  ; 060F _ 83. EC, 08
        lea     ecx, [ebp-0EH]                          ; 0612 _ 8D. 4D, F2
        push    ecx                                     ; 0615 _ 51
        push    0                                       ; 0616 _ 6A, 00
        push    esi                                     ; 0618 _ 56
        push    ebx                                     ; 0619 _ 53
        push    edx                                     ; 061A _ 52
        push    eax                                     ; 061B _ 50
        call    showString                              ; 061C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0621 _ 83. C4, 20
        mov     eax, dword [line.2315]                  ; 0624 _ A1, 00000260(d)
        add     eax, 8                                  ; 0629 _ 83. C0, 08
        mov     dword [line.2315], eax                  ; 062C _ A3, 00000260(d)
        mov     eax, dword [sheet_win]                  ; 0631 _ A1, 00000248(d)
        mov     eax, dword [eax+4H]                     ; 0636 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0639 _ 8D. 50, F0
        mov     eax, dword [line.2315]                  ; 063C _ A1, 00000260(d)
        cmp     edx, eax                                ; 0641 _ 39. C2
        jg      ?_006                                   ; 0643 _ 7F, 17
        mov     eax, dword [pos.2316]                   ; 0645 _ A1, 00000100(d)
        add     eax, 16                                 ; 064A _ 83. C0, 10
        mov     dword [pos.2316], eax                   ; 064D _ A3, 00000100(d)
        mov     dword [line.2315], 0                    ; 0652 _ C7. 05, 00000260(d), 00000000
?_006:  mov     dword [ebp-64H], 0                      ; 065C _ C7. 45, 9C, 00000000
        jmp     ?_015                                   ; 0663 _ E9, 00000239

?_007:  cmp     byte [ebp-6DH], 14                      ; 0668 _ 80. 7D, 93, 0E
        jne     ?_001                                   ; 066C _ 0F 85, FFFFFD4B
        mov     eax, dword [line.2315]                  ; 0672 _ A1, 00000260(d)
        cmp     eax, 7                                  ; 0677 _ 83. F8, 07
        jle     ?_001                                   ; 067A _ 0F 8E, FFFFFD3D
        mov     ebx, dword [pos.2316]                   ; 0680 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2315]                  ; 0686 _ 8B. 0D, 00000260(d)
        mov     edx, dword [sheet_win]                  ; 068C _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0692 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0697 _ 83. EC, 0C
        push    7                                       ; 069A _ 6A, 07
        push    ebx                                     ; 069C _ 53
        push    ecx                                     ; 069D _ 51
        push    edx                                     ; 069E _ 52
        push    eax                                     ; 069F _ 50
        call    set_cursor                              ; 06A0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06A5 _ 83. C4, 20
        mov     eax, dword [line.2315]                  ; 06A8 _ A1, 00000260(d)
        sub     eax, 8                                  ; 06AD _ 83. E8, 08
        mov     dword [line.2315], eax                  ; 06B0 _ A3, 00000260(d)
        mov     ebx, dword [pos.2316]                   ; 06B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2315]                  ; 06BB _ 8B. 0D, 00000260(d)
        mov     edx, dword [sheet_win]                  ; 06C1 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 06C7 _ A1, 00000244(d)
        sub     esp, 12                                 ; 06CC _ 83. EC, 0C
        push    7                                       ; 06CF _ 6A, 07
        push    ebx                                     ; 06D1 _ 53
        push    ecx                                     ; 06D2 _ 51
        push    edx                                     ; 06D3 _ 52
        push    eax                                     ; 06D4 _ 50
        call    set_del_cursor                          ; 06D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06DA _ 83. C4, 20
        jmp     ?_001                                   ; 06DD _ E9, FFFFFCDB

?_008:  movzx   eax, byte [ebp-6DH]                     ; 06E2 _ 0F B6. 45, 93
        mov     edx, dword [task_console]               ; 06E6 _ 8B. 15, 00000254(d)
        add     edx, 16                                 ; 06EC _ 83. C2, 10
        sub     esp, 8                                  ; 06EF _ 83. EC, 08
        push    eax                                     ; 06F2 _ 50
        push    edx                                     ; 06F3 _ 52
        call    fifo8_put                               ; 06F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06F9 _ 83. C4, 10
        sub     esp, 12                                 ; 06FC _ 83. EC, 0C
        push    keyInfo                                 ; 06FF _ 68, 00000010(d)
        call    fifo8_status                            ; 0704 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0709 _ 83. C4, 10
        test    eax, eax                                ; 070C _ 85. C0
        jne     ?_001                                   ; 070E _ 0F 85, FFFFFCA9
        mov     eax, dword [task_a.2311]                ; 0714 _ A1, 0000025C(d)
        sub     esp, 12                                 ; 0719 _ 83. EC, 0C
        push    eax                                     ; 071C _ 50
        call    task_sleep                              ; 071D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0722 _ 83. C4, 10
        jmp     ?_001                                   ; 0725 _ E9, FFFFFC93

?_009:  sub     esp, 12                                 ; 072A _ 83. EC, 0C
        push    mouseInfo                               ; 072D _ 68, 0000002C(d)
        call    fifo8_status                            ; 0732 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0737 _ 83. C4, 10
        test    eax, eax                                ; 073A _ 85. C0
        jz      ?_010                                   ; 073C _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 073E _ 8B. 0D, 00000250(d)
        mov     edx, dword [sheet_back]                 ; 0744 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 074A _ A1, 00000244(d)
        sub     esp, 4                                  ; 074F _ 83. EC, 04
        push    ecx                                     ; 0752 _ 51
        push    edx                                     ; 0753 _ 52
        push    eax                                     ; 0754 _ 50
        call    showMouseInfo                           ; 0755 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 075A _ 83. C4, 10
        jmp     ?_001                                   ; 075D _ E9, FFFFFC5B

?_010:  sub     esp, 12                                 ; 0762 _ 83. EC, 0C
        push    timerInfo                               ; 0765 _ 68, 00000220(d)
        call    fifo8_status                            ; 076A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 076F _ 83. C4, 10
        test    eax, eax                                ; 0772 _ 85. C0
        je      ?_001                                   ; 0774 _ 0F 84, FFFFFC43
        call    io_sti                                  ; 077A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 077F _ 83. EC, 0C
        push    timerInfo                               ; 0782 _ 68, 00000220(d)
        call    fifo8_get                               ; 0787 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 078C _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 078F _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 0792 _ 83. 7D, DC, 0A
        jnz     ?_011                                   ; 0796 _ 75, 62
        mov     edx, dword [sheet_back]                 ; 0798 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 079E _ A1, 00000244(d)
        sub     esp, 8                                  ; 07A3 _ 83. EC, 08
        push    ?_258                                   ; 07A6 _ 68, 00000030(d)
        push    7                                       ; 07AB _ 6A, 07
        push    400                                     ; 07AD _ 68, 00000190
        push    dword [ebp-68H]                         ; 07B2 _ FF. 75, 98
        push    edx                                     ; 07B5 _ 52
        push    eax                                     ; 07B6 _ 50
        call    showString                              ; 07B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07BC _ 83. C4, 20
        sub     esp, 8                                  ; 07BF _ 83. EC, 08
        push    100                                     ; 07C2 _ 6A, 64
        push    dword [ebp-48H]                         ; 07C4 _ FF. 75, B8
        call    timer_setTime                           ; 07C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07CC _ 83. C4, 10
        add     dword [ebp-68H], 8                      ; 07CF _ 83. 45, 98, 08
        add     dword [ebp-64H], 1                      ; 07D3 _ 83. 45, 9C, 01
        cmp     dword [ebp-68H], 39                     ; 07D7 _ 83. 7D, 98, 27
        jle     ?_001                                   ; 07DB _ 0F 8E, FFFFFBDC
        cmp     dword [ebp-64H], 5                      ; 07E1 _ 83. 7D, 9C, 05
        jne     ?_001                                   ; 07E5 _ 0F 85, FFFFFBD2
        call    io_cli                                  ; 07EB _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 07F0 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 07F5 _ E9, FFFFFBC3

?_011:  cmp     dword [ebp-24H], 2                      ; 07FA _ 83. 7D, DC, 02
        jnz     ?_012                                   ; 07FE _ 75, 28
        mov     edx, dword [sheet_back]                 ; 0800 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0806 _ A1, 00000244(d)
        sub     esp, 8                                  ; 080B _ 83. EC, 08
        push    ?_259                                   ; 080E _ 68, 00000032(d)
        push    7                                       ; 0813 _ 6A, 07
        push    32                                      ; 0815 _ 6A, 20
        push    0                                       ; 0817 _ 6A, 00
        push    edx                                     ; 0819 _ 52
        push    eax                                     ; 081A _ 50
        call    showString                              ; 081B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0820 _ 83. C4, 20
        jmp     ?_001                                   ; 0823 _ E9, FFFFFB95

?_012:  cmp     dword [ebp-24H], 0                      ; 0828 _ 83. 7D, DC, 00
        jz      ?_013                                   ; 082C _ 74, 1E
        sub     esp, 4                                  ; 082E _ 83. EC, 04
        push    0                                       ; 0831 _ 6A, 00
        push    timerInfo                               ; 0833 _ 68, 00000220(d)
        push    dword [ebp-40H]                         ; 0838 _ FF. 75, C0
        call    timer_init                              ; 083B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0840 _ 83. C4, 10
        mov     dword [ebp-6CH], 0                      ; 0843 _ C7. 45, 94, 00000000
        jmp     ?_014                                   ; 084A _ EB, 1C

?_013:  sub     esp, 4                                  ; 084C _ 83. EC, 04
        push    1                                       ; 084F _ 6A, 01
        push    timerInfo                               ; 0851 _ 68, 00000220(d)
        push    dword [ebp-40H]                         ; 0856 _ FF. 75, C0
        call    timer_init                              ; 0859 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 085E _ 83. C4, 10
        mov     dword [ebp-6CH], 7                      ; 0861 _ C7. 45, 94, 00000007
?_014:  sub     esp, 8                                  ; 0868 _ 83. EC, 08
        push    50                                      ; 086B _ 6A, 32
        push    dword [ebp-40H]                         ; 086D _ FF. 75, C0
        call    timer_setTime                           ; 0870 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0875 _ 83. C4, 10
        mov     ebx, dword [pos.2316]                   ; 0878 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2315]                  ; 087E _ 8B. 0D, 00000260(d)
        mov     edx, dword [sheet_win]                  ; 0884 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 088A _ A1, 00000244(d)
        sub     esp, 12                                 ; 088F _ 83. EC, 0C
        push    dword [ebp-6CH]                         ; 0892 _ FF. 75, 94
        push    ebx                                     ; 0895 _ 53
        push    ecx                                     ; 0896 _ 51
        push    edx                                     ; 0897 _ 52
        push    eax                                     ; 0898 _ 50
        call    set_cursor                              ; 0899 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 089E _ 83. C4, 20
?_015:  jmp     ?_001                                   ; 08A1 _ E9, FFFFFB17
; CMain End of function

set_cursor:; Function begin
        push    ebp                                     ; 08A6 _ 55
        mov     ebp, esp                                ; 08A7 _ 89. E5
        push    edi                                     ; 08A9 _ 57
        push    esi                                     ; 08AA _ 56
        push    ebx                                     ; 08AB _ 53
        sub     esp, 28                                 ; 08AC _ 83. EC, 1C
        mov     eax, dword [ebp+14H]                    ; 08AF _ 8B. 45, 14
        add     eax, 41                                 ; 08B2 _ 83. C0, 29
        mov     dword [ebp-1CH], eax                    ; 08B5 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 08B8 _ 8B. 45, 10
        lea     edi, [eax+10H]                          ; 08BB _ 8D. 78, 10
        mov     eax, dword [ebp+14H]                    ; 08BE _ 8B. 45, 14
        lea     esi, [eax+1AH]                          ; 08C1 _ 8D. 70, 1A
        mov     eax, dword [ebp+10H]                    ; 08C4 _ 8B. 45, 10
        lea     ebx, [eax+0AH]                          ; 08C7 _ 8D. 58, 0A
        mov     eax, dword [ebp+18H]                    ; 08CA _ 8B. 45, 18
        movzx   ecx, al                                 ; 08CD _ 0F B6. C8
        mov     eax, dword [ebp+0CH]                    ; 08D0 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 08D3 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 08D6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 08D9 _ 8B. 00
        sub     esp, 4                                  ; 08DB _ 83. EC, 04
        push    dword [ebp-1CH]                         ; 08DE _ FF. 75, E4
        push    edi                                     ; 08E1 _ 57
        push    esi                                     ; 08E2 _ 56
        push    ebx                                     ; 08E3 _ 53
        push    ecx                                     ; 08E4 _ 51
        push    edx                                     ; 08E5 _ 52
        push    eax                                     ; 08E6 _ 50
        call    boxfill8                                ; 08E7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08EC _ 83. C4, 20
        mov     eax, dword [ebp+14H]                    ; 08EF _ 8B. 45, 14
        lea     ebx, [eax+2BH]                          ; 08F2 _ 8D. 58, 2B
        mov     eax, dword [ebp+10H]                    ; 08F5 _ 8B. 45, 10
        lea     ecx, [eax+12H]                          ; 08F8 _ 8D. 48, 12
        mov     eax, dword [ebp+14H]                    ; 08FB _ 8B. 45, 14
        lea     edx, [eax+1AH]                          ; 08FE _ 8D. 50, 1A
        mov     eax, dword [ebp+10H]                    ; 0901 _ 8B. 45, 10
        add     eax, 10                                 ; 0904 _ 83. C0, 0A
        sub     esp, 8                                  ; 0907 _ 83. EC, 08
        push    ebx                                     ; 090A _ 53
        push    ecx                                     ; 090B _ 51
        push    edx                                     ; 090C _ 52
        push    eax                                     ; 090D _ 50
        push    dword [ebp+0CH]                         ; 090E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0911 _ FF. 75, 08
        call    sheet_refresh                           ; 0914 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0919 _ 83. C4, 20
        nop                                             ; 091C _ 90
        lea     esp, [ebp-0CH]                          ; 091D _ 8D. 65, F4
        pop     ebx                                     ; 0920 _ 5B
        pop     esi                                     ; 0921 _ 5E
        pop     edi                                     ; 0922 _ 5F
        pop     ebp                                     ; 0923 _ 5D
        ret                                             ; 0924 _ C3
; set_cursor End of function

set_del_cursor:; Function begin
        push    ebp                                     ; 0925 _ 55
        mov     ebp, esp                                ; 0926 _ 89. E5
        push    edi                                     ; 0928 _ 57
        push    esi                                     ; 0929 _ 56
        push    ebx                                     ; 092A _ 53
        sub     esp, 28                                 ; 092B _ 83. EC, 1C
        mov     eax, dword [ebp+14H]                    ; 092E _ 8B. 45, 14
        add     eax, 43                                 ; 0931 _ 83. C0, 2B
        mov     dword [ebp-1CH], eax                    ; 0934 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0937 _ 8B. 45, 10
        lea     edi, [eax+12H]                          ; 093A _ 8D. 78, 12
        mov     eax, dword [ebp+14H]                    ; 093D _ 8B. 45, 14
        lea     esi, [eax+1AH]                          ; 0940 _ 8D. 70, 1A
        mov     eax, dword [ebp+10H]                    ; 0943 _ 8B. 45, 10
        lea     ebx, [eax+0AH]                          ; 0946 _ 8D. 58, 0A
        mov     eax, dword [ebp+18H]                    ; 0949 _ 8B. 45, 18
        movzx   ecx, al                                 ; 094C _ 0F B6. C8
        mov     eax, dword [ebp+0CH]                    ; 094F _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0952 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0955 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0958 _ 8B. 00
        sub     esp, 4                                  ; 095A _ 83. EC, 04
        push    dword [ebp-1CH]                         ; 095D _ FF. 75, E4
        push    edi                                     ; 0960 _ 57
        push    esi                                     ; 0961 _ 56
        push    ebx                                     ; 0962 _ 53
        push    ecx                                     ; 0963 _ 51
        push    edx                                     ; 0964 _ 52
        push    eax                                     ; 0965 _ 50
        call    boxfill8                                ; 0966 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 096B _ 83. C4, 20
        mov     eax, dword [ebp+14H]                    ; 096E _ 8B. 45, 14
        lea     ebx, [eax+2BH]                          ; 0971 _ 8D. 58, 2B
        mov     eax, dword [ebp+10H]                    ; 0974 _ 8B. 45, 10
        lea     ecx, [eax+12H]                          ; 0977 _ 8D. 48, 12
        mov     eax, dword [ebp+14H]                    ; 097A _ 8B. 45, 14
        lea     edx, [eax+1AH]                          ; 097D _ 8D. 50, 1A
        mov     eax, dword [ebp+10H]                    ; 0980 _ 8B. 45, 10
        add     eax, 10                                 ; 0983 _ 83. C0, 0A
        sub     esp, 8                                  ; 0986 _ 83. EC, 08
        push    ebx                                     ; 0989 _ 53
        push    ecx                                     ; 098A _ 51
        push    edx                                     ; 098B _ 52
        push    eax                                     ; 098C _ 50
        push    dword [ebp+0CH]                         ; 098D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0990 _ FF. 75, 08
        call    sheet_refresh                           ; 0993 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0998 _ 83. C4, 20
        nop                                             ; 099B _ 90
        lea     esp, [ebp-0CH]                          ; 099C _ 8D. 65, F4
        pop     ebx                                     ; 099F _ 5B
        pop     esi                                     ; 09A0 _ 5E
        pop     edi                                     ; 09A1 _ 5F
        pop     ebp                                     ; 09A2 _ 5D
        ret                                             ; 09A3 _ C3
; set_del_cursor End of function

isSpecialKey:; Function begin
        push    ebp                                     ; 09A4 _ 55
        mov     ebp, esp                                ; 09A5 _ 89. E5
        sub     esp, 8                                  ; 09A7 _ 83. EC, 08
        sub     esp, 12                                 ; 09AA _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 09AD _ FF. 75, 08
        call    transferScanCode                        ; 09B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09B5 _ 83. C4, 10
        cmp     dword [ebp+8H], 58                      ; 09B8 _ 83. 7D, 08, 3A
        jz      ?_016                                   ; 09BC _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 09BE _ 81. 7D, 08, 000000BA
        jz      ?_016                                   ; 09C5 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 09C7 _ 83. 7D, 08, 2A
        jz      ?_016                                   ; 09CB _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 09CD _ 83. 7D, 08, 36
        jz      ?_016                                   ; 09D1 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 09D3 _ 81. 7D, 08, 000000AA
        jz      ?_016                                   ; 09DA _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 09DC _ 81. 7D, 08, 000000B6
        jnz     ?_017                                   ; 09E3 _ 75, 07
?_016:  mov     eax, 1                                  ; 09E5 _ B8, 00000001
        jmp     ?_018                                   ; 09EA _ EB, 05

?_017:  mov     eax, 0                                  ; 09EC _ B8, 00000000
?_018:  leave                                           ; 09F1 _ C9
        ret                                             ; 09F2 _ C3
; isSpecialKey End of function

transferScanCode:; Function begin
        push    ebp                                     ; 09F3 _ 55
        mov     ebp, esp                                ; 09F4 _ 89. E5
        sub     esp, 16                                 ; 09F6 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 09F9 _ 83. 7D, 08, 2A
        jnz     ?_019                                   ; 09FD _ 75, 0D
        mov     eax, dword [key_shift]                  ; 09FF _ A1, 00000000(d)
        or      eax, 01H                                ; 0A04 _ 83. C8, 01
        mov     dword [key_shift], eax                  ; 0A07 _ A3, 00000000(d)
?_019:  cmp     dword [ebp+8H], 54                      ; 0A0C _ 83. 7D, 08, 36
        jnz     ?_020                                   ; 0A10 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A12 _ A1, 00000000(d)
        or      eax, 02H                                ; 0A17 _ 83. C8, 02
        mov     dword [key_shift], eax                  ; 0A1A _ A3, 00000000(d)
?_020:  cmp     dword [ebp+8H], 170                     ; 0A1F _ 81. 7D, 08, 000000AA
        jnz     ?_021                                   ; 0A26 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A28 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 0A2D _ 83. E0, FE
        mov     dword [key_shift], eax                  ; 0A30 _ A3, 00000000(d)
?_021:  cmp     dword [ebp+8H], 182                     ; 0A35 _ 81. 7D, 08, 000000B6
        jnz     ?_022                                   ; 0A3C _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A3E _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 0A43 _ 83. E0, FD
        mov     dword [key_shift], eax                  ; 0A46 _ A3, 00000000(d)
?_022:  cmp     dword [ebp+8H], 58                      ; 0A4B _ 83. 7D, 08, 3A
        jnz     ?_024                                   ; 0A4F _ 75, 1F
        mov     eax, dword [caps_lock]                  ; 0A51 _ A1, 00000000(d)
        test    eax, eax                                ; 0A56 _ 85. C0
        jnz     ?_023                                   ; 0A58 _ 75, 0C
        mov     dword [caps_lock], 1                    ; 0A5A _ C7. 05, 00000000(d), 00000001
        jmp     ?_024                                   ; 0A64 _ EB, 0A

?_023:  mov     dword [caps_lock], 0                    ; 0A66 _ C7. 05, 00000000(d), 00000000
?_024:  cmp     dword [ebp+8H], 42                      ; 0A70 _ 83. 7D, 08, 2A
        jz      ?_025                                   ; 0A74 _ 74, 1E
        cmp     dword [ebp+8H], 54                      ; 0A76 _ 83. 7D, 08, 36
        jz      ?_025                                   ; 0A7A _ 74, 18
        cmp     dword [ebp+8H], 170                     ; 0A7C _ 81. 7D, 08, 000000AA
        jz      ?_025                                   ; 0A83 _ 74, 0F
        cmp     dword [ebp+8H], 182                     ; 0A85 _ 81. 7D, 08, 000000B6
        jz      ?_025                                   ; 0A8C _ 74, 06
        cmp     dword [ebp+8H], 83                      ; 0A8E _ 83. 7D, 08, 53
        jle     ?_026                                   ; 0A92 _ 7E, 0A
?_025:  mov     eax, 0                                  ; 0A94 _ B8, 00000000
        jmp     ?_031                                   ; 0A99 _ E9, 00000090

?_026:  mov     byte [ebp-1H], 0                        ; 0A9E _ C6. 45, FF, 00
        mov     eax, dword [key_shift]                  ; 0AA2 _ A1, 00000000(d)
        test    eax, eax                                ; 0AA7 _ 85. C0
        jnz     ?_027                                   ; 0AA9 _ 75, 4A
        cmp     dword [ebp+8H], 14                      ; 0AAB _ 83. 7D, 08, 0E
        jz      ?_027                                   ; 0AAF _ 74, 44
        cmp     dword [ebp+8H], 83                      ; 0AB1 _ 83. 7D, 08, 53
        jg      ?_027                                   ; 0AB5 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0AB7 _ 8B. 45, 08
        add     eax, keytable                           ; 0ABA _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0ABF _ 0F B6. 00
        test    al, al                                  ; 0AC2 _ 84. C0
        jz      ?_027                                   ; 0AC4 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0AC6 _ 8B. 45, 08
        add     eax, keytable                           ; 0AC9 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0ACE _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0AD1 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0AD4 _ 80. 7D, FF, 40
        jle     ?_029                                   ; 0AD8 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0ADA _ 80. 7D, FF, 5A
        jg      ?_029                                   ; 0ADE _ 7F, 49
        mov     eax, dword [caps_lock]                  ; 0AE0 _ A1, 00000000(d)
        test    eax, eax                                ; 0AE5 _ 85. C0
        jnz     ?_029                                   ; 0AE7 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0AE9 _ 0F B6. 45, FF
        add     eax, 32                                 ; 0AED _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0AF0 _ 88. 45, FF
        jmp     ?_029                                   ; 0AF3 _ EB, 34

?_027:  mov     eax, dword [key_shift]                  ; 0AF5 _ A1, 00000000(d)
        test    eax, eax                                ; 0AFA _ 85. C0
        jz      ?_028                                   ; 0AFC _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0AFE _ 83. 7D, 08, 7F
        jg      ?_028                                   ; 0B02 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0B04 _ 8B. 45, 08
        add     eax, keytable1                          ; 0B07 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B0C _ 0F B6. 00
        test    al, al                                  ; 0B0F _ 84. C0
        jz      ?_028                                   ; 0B11 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0B13 _ 8B. 45, 08
        add     eax, keytable1                          ; 0B16 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B1B _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0B1E _ 88. 45, FF
        jmp     ?_030                                   ; 0B21 _ EB, 07

?_028:  mov     byte [ebp-1H], 0                        ; 0B23 _ C6. 45, FF, 00
        jmp     ?_030                                   ; 0B27 _ EB, 01

?_029:  nop                                             ; 0B29 _ 90
?_030:  movzx   eax, byte [ebp-1H]                      ; 0B2A _ 0F B6. 45, FF
?_031:  leave                                           ; 0B2E _ C9
        ret                                             ; 0B2F _ C3
; transferScanCode End of function

launch_console:; Function begin
        push    ebp                                     ; 0B30 _ 55
        mov     ebp, esp                                ; 0B31 _ 89. E5
        sub     esp, 24                                 ; 0B33 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0B36 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0B3B _ 83. EC, 0C
        push    eax                                     ; 0B3E _ 50
        call    sheet_alloc                             ; 0B3F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B44 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0B47 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0B4A _ A1, 00000008(d)
        sub     esp, 8                                  ; 0B4F _ 83. EC, 08
        push    81200                                   ; 0B52 _ 68, 00013D30
        push    eax                                     ; 0B57 _ 50
        call    memman_alloc_4K                         ; 0B58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5D _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0B60 _ 89. 45, EC
        sub     esp, 12                                 ; 0B63 _ 83. EC, 0C
        push    99                                      ; 0B66 _ 6A, 63
        push    232                                     ; 0B68 _ 68, 000000E8
        push    350                                     ; 0B6D _ 68, 0000015E
        push    dword [ebp-14H]                         ; 0B72 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0B75 _ FF. 75, E8
        call    sheet_setbuf                            ; 0B78 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B7D _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0B80 _ A1, 00000244(d)
        push    0                                       ; 0B85 _ 6A, 00
        push    ?_256                                   ; 0B87 _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0B8C _ FF. 75, E8
        push    eax                                     ; 0B8F _ 50
        call    make_window8                            ; 0B90 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B95 _ 83. C4, 10
        sub     esp, 8                                  ; 0B98 _ 83. EC, 08
        push    0                                       ; 0B9B _ 6A, 00
        push    196                                     ; 0B9D _ 68, 000000C4
        push    334                                     ; 0BA2 _ 68, 0000014E
        push    28                                      ; 0BA7 _ 6A, 1C
        push    8                                       ; 0BA9 _ 6A, 08
        push    dword [ebp-18H]                         ; 0BAB _ FF. 75, E8
        call    make_textbox8                           ; 0BAE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0BB3 _ 83. C4, 20
        call    task_alloc                              ; 0BB6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0BBB _ 89. 45, F0
        call    get_code32_addr                         ; 0BBE _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0BC3 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0BC6 _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 0BC9 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BD0 _ 8B. 45, F0
        mov     dword [eax+78H], 1073741824             ; 0BD3 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0BDA _ 8B. 45, F4
        neg     eax                                     ; 0BDD _ F7. D8
        add     eax, console_task                       ; 0BDF _ 05, 00000000(d)
        mov     edx, eax                                ; 0BE4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0BE6 _ 8B. 45, F0
        mov     dword [eax+34H], edx                    ; 0BE9 _ 89. 50, 34
        mov     eax, dword [ebp-10H]                    ; 0BEC _ 8B. 45, F0
        mov     dword [eax+5CH], 0                      ; 0BEF _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BF6 _ 8B. 45, F0
        mov     dword [eax+60H], 8                      ; 0BF9 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp-10H]                    ; 0C00 _ 8B. 45, F0
        mov     dword [eax+64H], 32                     ; 0C03 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp-10H]                    ; 0C0A _ 8B. 45, F0
        mov     dword [eax+68H], 24                     ; 0C0D _ C7. 40, 68, 00000018
        mov     eax, dword [ebp-10H]                    ; 0C14 _ 8B. 45, F0
        mov     dword [eax+6CH], 0                      ; 0C17 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0C1E _ 8B. 45, F0
        mov     dword [eax+70H], 16                     ; 0C21 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp-10H]                    ; 0C28 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0C2B _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 0C2E _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0C31 _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 0C34 _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 0C37 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0C3A _ 8B. 40, 4C
        add     eax, 4                                  ; 0C3D _ 83. C0, 04
        mov     edx, eax                                ; 0C40 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0C42 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0C45 _ 89. 02
        mov     eax, dword [ebp-10H]                    ; 0C47 _ 8B. 45, F0
        mov     dword [task_console], eax               ; 0C4A _ A3, 00000254(d)
        sub     esp, 4                                  ; 0C4F _ 83. EC, 04
        push    5                                       ; 0C52 _ 6A, 05
        push    1                                       ; 0C54 _ 6A, 01
        push    dword [ebp-10H]                         ; 0C56 _ FF. 75, F0
        call    task_run                                ; 0C59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C5E _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C61 _ A1, 00000244(d)
        push    180                                     ; 0C66 _ 68, 000000B4
        push    270                                     ; 0C6B _ 68, 0000010E
        push    dword [ebp-18H]                         ; 0C70 _ FF. 75, E8
        push    eax                                     ; 0C73 _ 50
        call    sheet_slide                             ; 0C74 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C79 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C7C _ A1, 00000244(d)
        sub     esp, 4                                  ; 0C81 _ 83. EC, 04
        push    2                                       ; 0C84 _ 6A, 02
        push    dword [ebp-18H]                         ; 0C86 _ FF. 75, E8
        push    eax                                     ; 0C89 _ 50
        call    sheet_level_updown                      ; 0C8A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C8F _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0C92 _ 8B. 45, E8
        leave                                           ; 0C95 _ C9
        ret                                             ; 0C96 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0C97 _ 55
        mov     ebp, esp                                ; 0C98 _ 89. E5
        push    ebx                                     ; 0C9A _ 53
        sub     esp, 276                                ; 0C9B _ 81. EC, 00000114
        mov     eax, dword [ebp+8H]                     ; 0CA1 _ 8B. 45, 08
        mov     dword [ebp-10CH], eax                   ; 0CA4 _ 89. 85, FFFFFEF4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0CAA _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0CB0 _ 89. 45, F4
        xor     eax, eax                                ; 0CB3 _ 31. C0
        call    task_now                                ; 0CB5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0E8H], eax                   ; 0CBA _ 89. 85, FFFFFF18
        mov     dword [ebp-0F4H], 8                     ; 0CC0 _ C7. 85, FFFFFF0C, 00000008
        mov     dword [ebp-0F0H], 0                     ; 0CCA _ C7. 85, FFFFFF10, 00000000
        mov     dword [ebp-0F8H], 2                     ; 0CD4 _ C7. 85, FFFFFF08, 00000002
        mov     eax, dword [ebp-0E8H]                   ; 0CDE _ 8B. 85, FFFFFF18
        lea     edx, [eax+10H]                          ; 0CE4 _ 8D. 50, 10
        push    dword [ebp-0E8H]                        ; 0CE7 _ FF. B5, FFFFFF18
        lea     eax, [ebp-8CH]                          ; 0CED _ 8D. 85, FFFFFF74
        push    eax                                     ; 0CF3 _ 50
        push    128                                     ; 0CF4 _ 68, 00000080
        push    edx                                     ; 0CF9 _ 52
        call    fifo8_init                              ; 0CFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CFF _ 83. C4, 10
        call    timer_alloc                             ; 0D02 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0E4H], eax                   ; 0D07 _ 89. 85, FFFFFF1C
        mov     eax, dword [ebp-0E8H]                   ; 0D0D _ 8B. 85, FFFFFF18
        add     eax, 16                                 ; 0D13 _ 83. C0, 10
        sub     esp, 4                                  ; 0D16 _ 83. EC, 04
        push    1                                       ; 0D19 _ 6A, 01
        push    eax                                     ; 0D1B _ 50
        push    dword [ebp-0E4H]                        ; 0D1C _ FF. B5, FFFFFF1C
        call    timer_init                              ; 0D22 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D27 _ 83. C4, 10
        sub     esp, 8                                  ; 0D2A _ 83. EC, 08
        push    50                                      ; 0D2D _ 6A, 32
        push    dword [ebp-0E4H]                        ; 0D2F _ FF. B5, FFFFFF1C
        call    timer_setTime                           ; 0D35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3A _ 83. C4, 10
        mov     dword [ebp-0E0H], 0                     ; 0D3D _ C7. 85, FFFFFF20, 00000000
        mov     eax, dword [ebp-0F8H]                   ; 0D47 _ 8B. 85, FFFFFF08
        lea     edx, [eax+1AH]                          ; 0D4D _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 0D50 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0D55 _ 83. EC, 08
        push    ?_260                                   ; 0D58 _ 68, 00000039(d)
        push    7                                       ; 0D5D _ 6A, 07
        push    edx                                     ; 0D5F _ 52
        push    8                                       ; 0D60 _ 6A, 08
        push    dword [ebp-10CH]                        ; 0D62 _ FF. B5, FFFFFEF4
        push    eax                                     ; 0D68 _ 50
        call    showString                              ; 0D69 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D6E _ 83. C4, 20
        mov     dword [ebp-0DCH], 0                     ; 0D71 _ C7. 85, FFFFFF24, 00000000
        call    timer_alloc                             ; 0D7B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0D8H], eax                   ; 0D80 _ 89. 85, FFFFFF28
        push    0                                       ; 0D86 _ 6A, 00
        lea     eax, [ebp-0B2H]                         ; 0D88 _ 8D. 85, FFFFFF4E
        push    eax                                     ; 0D8E _ 50
        push    8                                       ; 0D8F _ 6A, 08
        lea     eax, [ebp-0D0H]                         ; 0D91 _ 8D. 85, FFFFFF30
        push    eax                                     ; 0D97 _ 50
        call    fifo8_init                              ; 0D98 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D9D _ 83. C4, 10
        sub     esp, 4                                  ; 0DA0 _ 83. EC, 04
        push    123                                     ; 0DA3 _ 6A, 7B
        lea     eax, [ebp-0D0H]                         ; 0DA5 _ 8D. 85, FFFFFF30
        push    eax                                     ; 0DAB _ 50
        push    dword [ebp-0D8H]                        ; 0DAC _ FF. B5, FFFFFF28
        call    timer_init                              ; 0DB2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB7 _ 83. C4, 10
        sub     esp, 8                                  ; 0DBA _ 83. EC, 08
        push    100                                     ; 0DBD _ 6A, 64
        push    dword [ebp-0D8H]                        ; 0DBF _ FF. B5, FFFFFF28
        call    timer_setTime                           ; 0DC5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DCA _ 83. C4, 10
        mov     dword [ebp-0ECH], 0                     ; 0DCD _ C7. 85, FFFFFF14, 00000000
?_032:  call    io_cli                                  ; 0DD7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0E8H]                   ; 0DDC _ 8B. 85, FFFFFF18
        add     eax, 16                                 ; 0DE2 _ 83. C0, 10
        sub     esp, 12                                 ; 0DE5 _ 83. EC, 0C
        push    eax                                     ; 0DE8 _ 50
        call    fifo8_status                            ; 0DE9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DEE _ 83. C4, 10
        test    eax, eax                                ; 0DF1 _ 85. C0
        jnz     ?_033                                   ; 0DF3 _ 75, 0A
        call    io_sti                                  ; 0DF5 _ E8, FFFFFFFC(rel)
        jmp     ?_041                                   ; 0DFA _ E9, 00000308

?_033:  mov     eax, dword [ebp-0E8H]                   ; 0DFF _ 8B. 85, FFFFFF18
        add     eax, 16                                 ; 0E05 _ 83. C0, 10
        sub     esp, 12                                 ; 0E08 _ 83. EC, 0C
        push    eax                                     ; 0E0B _ 50
        call    fifo8_get                               ; 0E0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E11 _ 83. C4, 10
        mov     dword [ebp-0E0H], eax                   ; 0E14 _ 89. 85, FFFFFF20
        call    io_sti                                  ; 0E1A _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-0E0H], 1                     ; 0E1F _ 83. BD, FFFFFF20, 01
        jg      ?_036                                   ; 0E26 _ 0F 8F, 00000083
        cmp     dword [ebp-0F0H], 0                     ; 0E2C _ 83. BD, FFFFFF10, 00
        js      ?_036                                   ; 0E33 _ 78, 7A
        cmp     dword [ebp-0E0H], 1                     ; 0E35 _ 83. BD, FFFFFF20, 01
        jnz     ?_034                                   ; 0E3C _ 75, 29
        mov     eax, dword [ebp-0E8H]                   ; 0E3E _ 8B. 85, FFFFFF18
        add     eax, 16                                 ; 0E44 _ 83. C0, 10
        sub     esp, 4                                  ; 0E47 _ 83. EC, 04
        push    0                                       ; 0E4A _ 6A, 00
        push    eax                                     ; 0E4C _ 50
        push    dword [ebp-0E4H]                        ; 0E4D _ FF. B5, FFFFFF1C
        call    timer_init                              ; 0E53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E58 _ 83. C4, 10
        mov     dword [ebp-0F0H], 7                     ; 0E5B _ C7. 85, FFFFFF10, 00000007
        jmp     ?_035                                   ; 0E65 _ EB, 30

?_034:  cmp     dword [ebp-0E0H], 0                     ; 0E67 _ 83. BD, FFFFFF20, 00
        jnz     ?_035                                   ; 0E6E _ 75, 27
        mov     eax, dword [ebp-0E8H]                   ; 0E70 _ 8B. 85, FFFFFF18
        add     eax, 16                                 ; 0E76 _ 83. C0, 10
        sub     esp, 4                                  ; 0E79 _ 83. EC, 04
        push    1                                       ; 0E7C _ 6A, 01
        push    eax                                     ; 0E7E _ 50
        push    dword [ebp-0E4H]                        ; 0E7F _ FF. B5, FFFFFF1C
        call    timer_init                              ; 0E85 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E8A _ 83. C4, 10
        mov     dword [ebp-0F0H], 0                     ; 0E8D _ C7. 85, FFFFFF10, 00000000
?_035:  sub     esp, 8                                  ; 0E97 _ 83. EC, 08
        push    50                                      ; 0E9A _ 6A, 32
        push    dword [ebp-0E4H]                        ; 0E9C _ FF. B5, FFFFFF1C
        call    timer_setTime                           ; 0EA2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EA7 _ 83. C4, 10
        jmp     ?_041                                   ; 0EAA _ E9, 00000258

?_036:  cmp     dword [ebp-0E0H], 87                    ; 0EAF _ 83. BD, FFFFFF20, 57
        jnz     ?_037                                   ; 0EB6 _ 75, 3F
        mov     dword [ebp-0F0H], 7                     ; 0EB8 _ C7. 85, FFFFFF10, 00000007
        mov     eax, dword [ebp-0E8H]                   ; 0EC2 _ 8B. 85, FFFFFF18
        add     eax, 16                                 ; 0EC8 _ 83. C0, 10
        sub     esp, 4                                  ; 0ECB _ 83. EC, 04
        push    0                                       ; 0ECE _ 6A, 00
        push    eax                                     ; 0ED0 _ 50
        push    dword [ebp-0E4H]                        ; 0ED1 _ FF. B5, FFFFFF1C
        call    timer_init                              ; 0ED7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EDC _ 83. C4, 10
        sub     esp, 8                                  ; 0EDF _ 83. EC, 08
        push    50                                      ; 0EE2 _ 6A, 32
        push    dword [ebp-0E4H]                        ; 0EE4 _ FF. B5, FFFFFF1C
        call    timer_setTime                           ; 0EEA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EEF _ 83. C4, 10
        jmp     ?_041                                   ; 0EF2 _ E9, 00000210

?_037:  cmp     dword [ebp-0E0H], 88                    ; 0EF7 _ 83. BD, FFFFFF20, 58
        jnz     ?_038                                   ; 0EFE _ 75, 4A
        mov     edx, dword [ebp-0F8H]                   ; 0F00 _ 8B. 95, FFFFFF08
        mov     eax, dword [shtctl]                     ; 0F06 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F0B _ 83. EC, 0C
        push    0                                       ; 0F0E _ 6A, 00
        push    edx                                     ; 0F10 _ 52
        push    dword [ebp-0F4H]                        ; 0F11 _ FF. B5, FFFFFF0C
        push    dword [ebp-10CH]                        ; 0F17 _ FF. B5, FFFFFEF4
        push    eax                                     ; 0F1D _ 50
        call    set_cursor                              ; 0F1E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F23 _ 83. C4, 20
        mov     dword [ebp-0F0H], -1                    ; 0F26 _ C7. 85, FFFFFF10, FFFFFFFF
        mov     eax, dword [task_main]                  ; 0F30 _ A1, 00000258(d)
        sub     esp, 4                                  ; 0F35 _ 83. EC, 04
        push    0                                       ; 0F38 _ 6A, 00
        push    -1                                      ; 0F3A _ 6A, FF
        push    eax                                     ; 0F3C _ 50
        call    task_run                                ; 0F3D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F42 _ 83. C4, 10
        jmp     ?_041                                   ; 0F45 _ E9, 000001BD

?_038:  cmp     dword [ebp-0E0H], 14                    ; 0F4A _ 83. BD, FFFFFF20, 0E
        jnz     ?_039                                   ; 0F51 _ 75, 61
        cmp     dword [ebp-0F4H], 15                    ; 0F53 _ 83. BD, FFFFFF0C, 0F
        jle     ?_039                                   ; 0F5A _ 7E, 58
        mov     edx, dword [ebp-0F8H]                   ; 0F5C _ 8B. 95, FFFFFF08
        mov     eax, dword [shtctl]                     ; 0F62 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F67 _ 83. EC, 0C
        push    0                                       ; 0F6A _ 6A, 00
        push    edx                                     ; 0F6C _ 52
        push    dword [ebp-0F4H]                        ; 0F6D _ FF. B5, FFFFFF0C
        push    dword [ebp-10CH]                        ; 0F73 _ FF. B5, FFFFFEF4
        push    eax                                     ; 0F79 _ 50
        call    set_cursor                              ; 0F7A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F7F _ 83. C4, 20
        sub     dword [ebp-0F4H], 8                     ; 0F82 _ 83. AD, FFFFFF0C, 08
        mov     edx, dword [ebp-0F8H]                   ; 0F89 _ 8B. 95, FFFFFF08
        mov     eax, dword [shtctl]                     ; 0F8F _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F94 _ 83. EC, 0C
        push    0                                       ; 0F97 _ 6A, 00
        push    edx                                     ; 0F99 _ 52
        push    dword [ebp-0F4H]                        ; 0F9A _ FF. B5, FFFFFF0C
        push    dword [ebp-10CH]                        ; 0FA0 _ FF. B5, FFFFFEF4
        push    eax                                     ; 0FA6 _ 50
        call    set_del_cursor                          ; 0FA7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FAC _ 83. C4, 20
        jmp     ?_041                                   ; 0FAF _ E9, 00000153

?_039:  cmp     dword [ebp-0E0H], 28                    ; 0FB4 _ 83. BD, FFFFFF20, 1C
        jnz     ?_040                                   ; 0FBB _ 75, 77
        mov     edx, dword [ebp-0F8H]                   ; 0FBD _ 8B. 95, FFFFFF08
        mov     eax, dword [shtctl]                     ; 0FC3 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0FC8 _ 83. EC, 0C
        push    0                                       ; 0FCB _ 6A, 00
        push    edx                                     ; 0FCD _ 52
        push    dword [ebp-0F4H]                        ; 0FCE _ FF. B5, FFFFFF0C
        push    dword [ebp-10CH]                        ; 0FD4 _ FF. B5, FFFFFEF4
        push    eax                                     ; 0FDA _ 50
        call    set_cursor                              ; 0FDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FE0 _ 83. C4, 20
        mov     eax, dword [ebp-0F4H]                   ; 0FE3 _ 8B. 85, FFFFFF0C
        lea     edx, [eax+7H]                           ; 0FE9 _ 8D. 50, 07
        test    eax, eax                                ; 0FEC _ 85. C0
        cmovs   eax, edx                                ; 0FEE _ 0F 48. C2
        sar     eax, 3                                  ; 0FF1 _ C1. F8, 03
        sub     eax, 1                                  ; 0FF4 _ 83. E8, 01
        mov     byte [ebp+eax-0AAH], 0                  ; 0FF7 _ C6. 84 05, FFFFFF56, 00
        mov     dword [ebp-0F4H], 8                     ; 0FFF _ C7. 85, FFFFFF0C, 00000008
        sub     esp, 4                                  ; 1009 _ 83. EC, 04
        lea     eax, [ebp-0F8H]                         ; 100C _ 8D. 85, FFFFFF08
        push    eax                                     ; 1012 _ 50
        lea     eax, [ebp-0AAH]                         ; 1013 _ 8D. 85, FFFFFF56
        push    eax                                     ; 1019 _ 50
        push    dword [ebp-10CH]                        ; 101A _ FF. B5, FFFFFEF4
        call    command                                 ; 1020 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1025 _ 83. C4, 10
        mov     byte [ebp-0AAH], 0                      ; 1028 _ C6. 85, FFFFFF56, 00
        jmp     ?_041                                   ; 102F _ E9, 000000D3

?_040:  sub     esp, 12                                 ; 1034 _ 83. EC, 0C
        push    dword [ebp-0E0H]                        ; 1037 _ FF. B5, FFFFFF20
        call    transferScanCode                        ; 103D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1042 _ 83. C4, 10
        mov     byte [ebp-0F9H], al                     ; 1045 _ 88. 85, FFFFFF07
        cmp     byte [ebp-0F9H], 0                      ; 104B _ 80. BD, FFFFFF07, 00
        je      ?_041                                   ; 1052 _ 0F 84, 000000AF
        mov     eax, dword [ebp-10CH]                   ; 1058 _ 8B. 85, FFFFFEF4
        mov     eax, dword [eax+4H]                     ; 105E _ 8B. 40, 04
        sub     eax, 35                                 ; 1061 _ 83. E8, 23
        cmp     dword [ebp-0F4H], eax                   ; 1064 _ 39. 85, FFFFFF0C
        jg      ?_041                                   ; 106A _ 0F 8F, 00000097
        mov     edx, dword [ebp-0F8H]                   ; 1070 _ 8B. 95, FFFFFF08
        mov     eax, dword [shtctl]                     ; 1076 _ A1, 00000244(d)
        sub     esp, 12                                 ; 107B _ 83. EC, 0C
        push    0                                       ; 107E _ 6A, 00
        push    edx                                     ; 1080 _ 52
        push    dword [ebp-0F4H]                        ; 1081 _ FF. B5, FFFFFF0C
        push    dword [ebp-10CH]                        ; 1087 _ FF. B5, FFFFFEF4
        push    eax                                     ; 108D _ 50
        call    set_cursor                              ; 108E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1093 _ 83. C4, 20
        movzx   eax, byte [ebp-0F9H]                    ; 1096 _ 0F B6. 85, FFFFFF07
        mov     byte [ebp-0B4H], al                     ; 109D _ 88. 85, FFFFFF4C
        mov     byte [ebp-0B3H], 0                      ; 10A3 _ C6. 85, FFFFFF4D, 00
        mov     eax, dword [ebp-0F4H]                   ; 10AA _ 8B. 85, FFFFFF0C
        lea     edx, [eax+7H]                           ; 10B0 _ 8D. 50, 07
        test    eax, eax                                ; 10B3 _ 85. C0
        cmovs   eax, edx                                ; 10B5 _ 0F 48. C2
        sar     eax, 3                                  ; 10B8 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 10BB _ 8D. 50, FF
        movzx   eax, byte [ebp-0F9H]                    ; 10BE _ 0F B6. 85, FFFFFF07
        mov     byte [ebp+edx-0AAH], al                 ; 10C5 _ 88. 84 15, FFFFFF56
        mov     eax, dword [ebp-0F8H]                   ; 10CC _ 8B. 85, FFFFFF08
        lea     ebx, [eax+1AH]                          ; 10D2 _ 8D. 58, 1A
        mov     eax, dword [ebp-0F4H]                   ; 10D5 _ 8B. 85, FFFFFF0C
        lea     ecx, [eax+0AH]                          ; 10DB _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 10DE _ A1, 00000244(d)
        sub     esp, 8                                  ; 10E3 _ 83. EC, 08
        lea     edx, [ebp-0B4H]                         ; 10E6 _ 8D. 95, FFFFFF4C
        push    edx                                     ; 10EC _ 52
        push    7                                       ; 10ED _ 6A, 07
        push    ebx                                     ; 10EF _ 53
        push    ecx                                     ; 10F0 _ 51
        push    dword [ebp-10CH]                        ; 10F1 _ FF. B5, FFFFFEF4
        push    eax                                     ; 10F7 _ 50
        call    showString                              ; 10F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10FD _ 83. C4, 20
        add     dword [ebp-0F4H], 8                     ; 1100 _ 83. 85, FFFFFF0C, 08
?_041:  cmp     dword [ebp-0F0H], 0                     ; 1107 _ 83. BD, FFFFFF10, 00
        js      ?_042                                   ; 110E _ 78, 2A
        mov     edx, dword [ebp-0F8H]                   ; 1110 _ 8B. 95, FFFFFF08
        mov     eax, dword [shtctl]                     ; 1116 _ A1, 00000244(d)
        sub     esp, 12                                 ; 111B _ 83. EC, 0C
        push    dword [ebp-0F0H]                        ; 111E _ FF. B5, FFFFFF10
        push    edx                                     ; 1124 _ 52
        push    dword [ebp-0F4H]                        ; 1125 _ FF. B5, FFFFFF0C
        push    dword [ebp-10CH]                        ; 112B _ FF. B5, FFFFFEF4
        push    eax                                     ; 1131 _ 50
        call    set_cursor                              ; 1132 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1137 _ 83. C4, 20
?_042:  sub     esp, 12                                 ; 113A _ 83. EC, 0C
        lea     eax, [ebp-0D0H]                         ; 113D _ 8D. 85, FFFFFF30
        push    eax                                     ; 1143 _ 50
        call    fifo8_status                            ; 1144 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1149 _ 83. C4, 10
        test    eax, eax                                ; 114C _ 85. C0
        jnz     ?_043                                   ; 114E _ 75, 0A
        call    io_sti                                  ; 1150 _ E8, FFFFFFFC(rel)
        jmp     ?_032                                   ; 1155 _ E9, FFFFFC7D

?_043:  sub     esp, 12                                 ; 115A _ 83. EC, 0C
        lea     eax, [ebp-0D0H]                         ; 115D _ 8D. 85, FFFFFF30
        push    eax                                     ; 1163 _ 50
        call    fifo8_get                               ; 1164 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1169 _ 83. C4, 10
        mov     dword [ebp-0D4H], eax                   ; 116C _ 89. 85, FFFFFF2C
        cmp     dword [ebp-0D4H], 123                   ; 1172 _ 83. BD, FFFFFF2C, 7B
        jne     ?_032                                   ; 1179 _ 0F 85, FFFFFC58
        mov     edx, dword [sheet_back]                 ; 117F _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1185 _ A1, 00000244(d)
        sub     esp, 8                                  ; 118A _ 83. EC, 08
        push    ?_261                                   ; 118D _ 68, 0000003B(d)
        push    7                                       ; 1192 _ 6A, 07
        push    432                                     ; 1194 _ 68, 000001B0
        push    dword [ebp-0ECH]                        ; 1199 _ FF. B5, FFFFFF14
        push    edx                                     ; 119F _ 52
        push    eax                                     ; 11A0 _ 50
        call    showString                              ; 11A1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11A6 _ 83. C4, 20
        sub     esp, 8                                  ; 11A9 _ 83. EC, 08
        push    100                                     ; 11AC _ 6A, 64
        push    dword [ebp-0D8H]                        ; 11AE _ FF. B5, FFFFFF28
        call    timer_setTime                           ; 11B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11B9 _ 83. C4, 10
        add     dword [ebp-0ECH], 8                     ; 11BC _ 83. 85, FFFFFF14, 08
        jmp     ?_032                                   ; 11C3 _ E9, FFFFFC0F
; console_task End of function

command:; Function begin
        push    ebp                                     ; 11C8 _ 55
        mov     ebp, esp                                ; 11C9 _ 89. E5
        sub     esp, 40                                 ; 11CB _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 11CE _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 11D1 _ 0F B6. 00
        test    al, al                                  ; 11D4 _ 84. C0
        setne   al                                      ; 11D6 _ 0F 95. C0
        movzx   eax, al                                 ; 11D9 _ 0F B6. C0
        mov     dword [ebp-18H], eax                    ; 11DC _ 89. 45, E8
        mov     eax, dword [ebp+10H]                    ; 11DF _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 11E2 _ 8B. 00
        sub     esp, 4                                  ; 11E4 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 11E7 _ FF. 75, E8
        push    dword [ebp+8H]                          ; 11EA _ FF. 75, 08
        push    eax                                     ; 11ED _ 50
        call    cons_newline                            ; 11EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11F3 _ 83. C4, 10
        mov     edx, eax                                ; 11F6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11F8 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 11FB _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 11FD _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 1200 _ 0F B6. 00
        cmp     al, 109                                 ; 1203 _ 3C, 6D
        jne     ?_044                                   ; 1205 _ 0F 85, 00000112
        mov     eax, dword [ebp+0CH]                    ; 120B _ 8B. 45, 0C
        add     eax, 1                                  ; 120E _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1211 _ 0F B6. 00
        cmp     al, 101                                 ; 1214 _ 3C, 65
        jne     ?_044                                   ; 1216 _ 0F 85, 00000101
        mov     eax, dword [ebp+0CH]                    ; 121C _ 8B. 45, 0C
        add     eax, 2                                  ; 121F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1222 _ 0F B6. 00
        cmp     al, 109                                 ; 1225 _ 3C, 6D
        jne     ?_044                                   ; 1227 _ 0F 85, 000000F0
        mov     eax, dword [ebp+0CH]                    ; 122D _ 8B. 45, 0C
        add     eax, 3                                  ; 1230 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1233 _ 0F B6. 00
        test    al, al                                  ; 1236 _ 84. C0
        jne     ?_044                                   ; 1238 _ 0F 85, 000000DF
        mov     eax, dword [memman]                     ; 123E _ A1, 00000008(d)
        sub     esp, 12                                 ; 1243 _ 83. EC, 0C
        push    eax                                     ; 1246 _ 50
        call    memman_total                            ; 1247 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 124C _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 124F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1252 _ 8B. 45, EC
        lea     edx, [eax+3FFH]                         ; 1255 _ 8D. 90, 000003FF
        test    eax, eax                                ; 125B _ 85. C0
        cmovs   eax, edx                                ; 125D _ 0F 48. C2
        sar     eax, 10                                 ; 1260 _ C1. F8, 0A
        sub     esp, 12                                 ; 1263 _ 83. EC, 0C
        push    eax                                     ; 1266 _ 50
        call    intToStr                                ; 1267 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 126C _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 126F _ 89. 45, F0
        sub     esp, 12                                 ; 1272 _ 83. EC, 0C
        push    dword [ebp-10H]                         ; 1275 _ FF. 75, F0
        call    getIntStrLen                            ; 1278 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 127D _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1280 _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 1283 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1286 _ 8B. 00
        lea     edx, [eax+1AH]                          ; 1288 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 128B _ A1, 00000244(d)
        sub     esp, 8                                  ; 1290 _ 83. EC, 08
        push    ?_262                                   ; 1293 _ 68, 0000003D(d)
        push    7                                       ; 1298 _ 6A, 07
        push    edx                                     ; 129A _ 52
        push    10                                      ; 129B _ 6A, 0A
        push    dword [ebp+8H]                          ; 129D _ FF. 75, 08
        push    eax                                     ; 12A0 _ 50
        call    showString                              ; 12A1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12A6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12A9 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12AC _ 8B. 00
        lea     edx, [eax+1AH]                          ; 12AE _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 12B1 _ A1, 00000244(d)
        sub     esp, 8                                  ; 12B6 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 12B9 _ FF. 75, F0
        push    7                                       ; 12BC _ 6A, 07
        push    edx                                     ; 12BE _ 52
        push    90                                      ; 12BF _ 6A, 5A
        push    dword [ebp+8H]                          ; 12C1 _ FF. 75, 08
        push    eax                                     ; 12C4 _ 50
        call    showString                              ; 12C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12CA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12CD _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12D0 _ 8B. 00
        lea     ecx, [eax+1AH]                          ; 12D2 _ 8D. 48, 1A
        mov     eax, dword [ebp-0CH]                    ; 12D5 _ 8B. 45, F4
        shl     eax, 3                                  ; 12D8 _ C1. E0, 03
        lea     edx, [eax+5AH]                          ; 12DB _ 8D. 50, 5A
        mov     eax, dword [shtctl]                     ; 12DE _ A1, 00000244(d)
        sub     esp, 8                                  ; 12E3 _ 83. EC, 08
        push    ?_263                                   ; 12E6 _ 68, 00000048(d)
        push    7                                       ; 12EB _ 6A, 07
        push    ecx                                     ; 12ED _ 51
        push    edx                                     ; 12EE _ 52
        push    dword [ebp+8H]                          ; 12EF _ FF. 75, 08
        push    eax                                     ; 12F2 _ 50
        call    showString                              ; 12F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12F8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12FB _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12FE _ 8B. 00
        sub     esp, 4                                  ; 1300 _ 83. EC, 04
        push    0                                       ; 1303 _ 6A, 00
        push    dword [ebp+8H]                          ; 1305 _ FF. 75, 08
        push    eax                                     ; 1308 _ 50
        call    cons_newline                            ; 1309 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 130E _ 83. C4, 10
        mov     edx, eax                                ; 1311 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1313 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 1316 _ 89. 10
        jmp     ?_051                                   ; 1318 _ E9, 000001DE

?_044:  mov     eax, dword [ebp+0CH]                    ; 131D _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 1320 _ 0F B6. 00
        cmp     al, 97                                  ; 1323 _ 3C, 61
        jne     ?_045                                   ; 1325 _ 0F 85, 0000009A
        mov     eax, dword [ebp+0CH]                    ; 132B _ 8B. 45, 0C
        add     eax, 1                                  ; 132E _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1331 _ 0F B6. 00
        cmp     al, 117                                 ; 1334 _ 3C, 75
        jne     ?_045                                   ; 1336 _ 0F 85, 00000089
        mov     eax, dword [ebp+0CH]                    ; 133C _ 8B. 45, 0C
        add     eax, 2                                  ; 133F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1342 _ 0F B6. 00
        cmp     al, 116                                 ; 1345 _ 3C, 74
        jnz     ?_045                                   ; 1347 _ 75, 7C
        mov     eax, dword [ebp+0CH]                    ; 1349 _ 8B. 45, 0C
        add     eax, 3                                  ; 134C _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 134F _ 0F B6. 00
        cmp     al, 104                                 ; 1352 _ 3C, 68
        jnz     ?_045                                   ; 1354 _ 75, 6F
        mov     eax, dword [ebp+0CH]                    ; 1356 _ 8B. 45, 0C
        add     eax, 4                                  ; 1359 _ 83. C0, 04
        movzx   eax, byte [eax]                         ; 135C _ 0F B6. 00
        cmp     al, 111                                 ; 135F _ 3C, 6F
        jnz     ?_045                                   ; 1361 _ 75, 62
        mov     eax, dword [ebp+0CH]                    ; 1363 _ 8B. 45, 0C
        add     eax, 5                                  ; 1366 _ 83. C0, 05
        movzx   eax, byte [eax]                         ; 1369 _ 0F B6. 00
        cmp     al, 114                                 ; 136C _ 3C, 72
        jnz     ?_045                                   ; 136E _ 75, 55
        mov     eax, dword [ebp+0CH]                    ; 1370 _ 8B. 45, 0C
        add     eax, 6                                  ; 1373 _ 83. C0, 06
        movzx   eax, byte [eax]                         ; 1376 _ 0F B6. 00
        test    al, al                                  ; 1379 _ 84. C0
        jnz     ?_045                                   ; 137B _ 75, 48
        mov     eax, dword [ebp+10H]                    ; 137D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1380 _ 8B. 00
        lea     edx, [eax+1AH]                          ; 1382 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 1385 _ A1, 00000244(d)
        sub     esp, 8                                  ; 138A _ 83. EC, 08
        push    ?_264                                   ; 138D _ 68, 0000004C(d)
        push    7                                       ; 1392 _ 6A, 07
        push    edx                                     ; 1394 _ 52
        push    10                                      ; 1395 _ 6A, 0A
        push    dword [ebp+8H]                          ; 1397 _ FF. 75, 08
        push    eax                                     ; 139A _ 50
        call    showString                              ; 139B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13A3 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 13A6 _ 8B. 00
        sub     esp, 4                                  ; 13A8 _ 83. EC, 04
        push    0                                       ; 13AB _ 6A, 00
        push    dword [ebp+8H]                          ; 13AD _ FF. 75, 08
        push    eax                                     ; 13B0 _ 50
        call    cons_newline                            ; 13B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13B6 _ 83. C4, 10
        mov     edx, eax                                ; 13B9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 13BB _ 8B. 45, 10
        mov     dword [eax], edx                        ; 13BE _ 89. 10
        jmp     ?_051                                   ; 13C0 _ E9, 00000136

?_045:  mov     eax, dword [ebp+0CH]                    ; 13C5 _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 13C8 _ 0F B6. 00
        cmp     al, 99                                  ; 13CB _ 3C, 63
        jne     ?_050                                   ; 13CD _ 0F 85, 000000DD
        mov     eax, dword [ebp+0CH]                    ; 13D3 _ 8B. 45, 0C
        add     eax, 1                                  ; 13D6 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 13D9 _ 0F B6. 00
        cmp     al, 108                                 ; 13DC _ 3C, 6C
        jne     ?_050                                   ; 13DE _ 0F 85, 000000CC
        mov     eax, dword [ebp+0CH]                    ; 13E4 _ 8B. 45, 0C
        add     eax, 2                                  ; 13E7 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 13EA _ 0F B6. 00
        cmp     al, 115                                 ; 13ED _ 3C, 73
        jne     ?_050                                   ; 13EF _ 0F 85, 000000BB
        mov     eax, dword [ebp+0CH]                    ; 13F5 _ 8B. 45, 0C
        add     eax, 3                                  ; 13F8 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 13FB _ 0F B6. 00
        test    al, al                                  ; 13FE _ 84. C0
        jne     ?_050                                   ; 1400 _ 0F 85, 000000AA
        mov     dword [ebp-20H], 26                     ; 1406 _ C7. 45, E0, 0000001A
        jmp     ?_049                                   ; 140D _ EB, 3A

?_046:  mov     dword [ebp-1CH], 8                      ; 140F _ C7. 45, E4, 00000008
        jmp     ?_048                                   ; 1416 _ EB, 1F

?_047:  mov     eax, dword [ebp+8H]                     ; 1418 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 141B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 141D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1420 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 1423 _ 0F AF. 45, E0
        mov     ecx, eax                                ; 1427 _ 89. C1
        mov     eax, dword [ebp-1CH]                    ; 1429 _ 8B. 45, E4
        add     eax, ecx                                ; 142C _ 01. C8
        add     eax, edx                                ; 142E _ 01. D0
        mov     byte [eax], 0                           ; 1430 _ C6. 00, 00
        add     dword [ebp-1CH], 1                      ; 1433 _ 83. 45, E4, 01
?_048:  mov     eax, dword [ebp+8H]                     ; 1437 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 143A _ 8B. 40, 04
        sub     eax, 8                                  ; 143D _ 83. E8, 08
        cmp     dword [ebp-1CH], eax                    ; 1440 _ 39. 45, E4
        jl      ?_047                                   ; 1443 _ 7C, D3
        add     dword [ebp-20H], 1                      ; 1445 _ 83. 45, E0, 01
?_049:  mov     eax, dword [ebp+10H]                    ; 1449 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 144C _ 8B. 00
        add     eax, 42                                 ; 144E _ 83. C0, 2A
        cmp     dword [ebp-20H], eax                    ; 1451 _ 39. 45, E0
        jl      ?_046                                   ; 1454 _ 7C, B9
        mov     eax, dword [ebp+8H]                     ; 1456 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1459 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 145C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 145F _ 8B. 40, 04
        lea     ecx, [eax-8H]                           ; 1462 _ 8D. 48, F8
        mov     eax, dword [shtctl]                     ; 1465 _ A1, 00000244(d)
        sub     esp, 8                                  ; 146A _ 83. EC, 08
        push    edx                                     ; 146D _ 52
        push    ecx                                     ; 146E _ 51
        push    28                                      ; 146F _ 6A, 1C
        push    8                                       ; 1471 _ 6A, 08
        push    dword [ebp+8H]                          ; 1473 _ FF. 75, 08
        push    eax                                     ; 1476 _ 50
        call    sheet_refresh                           ; 1477 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 147C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 147F _ 8B. 45, 10
        mov     dword [eax], 2                          ; 1482 _ C7. 00, 00000002
        mov     eax, dword [ebp+10H]                    ; 1488 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 148B _ 8B. 00
        lea     edx, [eax+1AH]                          ; 148D _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 1490 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1495 _ 83. EC, 08
        push    ?_260                                   ; 1498 _ 68, 00000039(d)
        push    7                                       ; 149D _ 6A, 07
        push    edx                                     ; 149F _ 52
        push    8                                       ; 14A0 _ 6A, 08
        push    dword [ebp+8H]                          ; 14A2 _ FF. 75, 08
        push    eax                                     ; 14A5 _ 50
        call    showString                              ; 14A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14AB _ 83. C4, 20
        jmp     ?_051                                   ; 14AE _ EB, 4B

?_050:  cmp     dword [ebp-18H], 0                      ; 14B0 _ 83. 7D, E8, 00
        jz      ?_051                                   ; 14B4 _ 74, 45
        mov     eax, dword [ebp+10H]                    ; 14B6 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 14B9 _ 8B. 00
        lea     edx, [eax+1AH]                          ; 14BB _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 14BE _ A1, 00000244(d)
        sub     esp, 8                                  ; 14C3 _ 83. EC, 08
        push    ?_265                                   ; 14C6 _ 68, 00000074(d)
        push    7                                       ; 14CB _ 6A, 07
        push    edx                                     ; 14CD _ 52
        push    10                                      ; 14CE _ 6A, 0A
        push    dword [ebp+8H]                          ; 14D0 _ FF. 75, 08
        push    eax                                     ; 14D3 _ 50
        call    showString                              ; 14D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14D9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 14DC _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 14DF _ 8B. 00
        sub     esp, 4                                  ; 14E1 _ 83. EC, 04
        push    0                                       ; 14E4 _ 6A, 00
        push    dword [ebp+8H]                          ; 14E6 _ FF. 75, 08
        push    eax                                     ; 14E9 _ 50
        call    cons_newline                            ; 14EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14EF _ 83. C4, 10
        mov     edx, eax                                ; 14F2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 14F4 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 14F7 _ 89. 10
        jmp     ?_051                                   ; 14F9 _ EB, 00

?_051:  nop                                             ; 14FB _ 90
        leave                                           ; 14FC _ C9
        ret                                             ; 14FD _ C3
; command End of function

task_b_main:; Function begin
        push    ebp                                     ; 14FE _ 55
        mov     ebp, esp                                ; 14FF _ 89. E5
        sub     esp, 88                                 ; 1501 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 1504 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 1507 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 150A _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 1510 _ 89. 45, F4
        xor     eax, eax                                ; 1513 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 1515 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 151B _ A1, 00000244(d)
        sub     esp, 8                                  ; 1520 _ 83. EC, 08
        push    ?_266                                   ; 1523 _ 68, 00000087(d)
        push    7                                       ; 1528 _ 6A, 07
        push    144                                     ; 152A _ 68, 00000090
        push    0                                       ; 152F _ 6A, 00
        push    edx                                     ; 1531 _ 52
        push    eax                                     ; 1532 _ 50
        call    showString                              ; 1533 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1538 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 153B _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 1542 _ C7. 45, C8, 00000000
        push    0                                       ; 1549 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 154B _ 8D. 45, EC
        push    eax                                     ; 154E _ 50
        push    8                                       ; 154F _ 6A, 08
        lea     eax, [ebp-30H]                          ; 1551 _ 8D. 45, D0
        push    eax                                     ; 1554 _ 50
        call    fifo8_init                              ; 1555 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 155A _ 83. C4, 10
        call    timer_alloc                             ; 155D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 1562 _ 89. 45, C4
        sub     esp, 4                                  ; 1565 _ 83. EC, 04
        push    123                                     ; 1568 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 156A _ 8D. 45, D0
        push    eax                                     ; 156D _ 50
        push    dword [ebp-3CH]                         ; 156E _ FF. 75, C4
        call    timer_init                              ; 1571 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1576 _ 83. C4, 10
        sub     esp, 8                                  ; 1579 _ 83. EC, 08
        push    100                                     ; 157C _ 6A, 64
        push    dword [ebp-3CH]                         ; 157E _ FF. 75, C4
        call    timer_setTime                           ; 1581 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1586 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 1589 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 1590 _ C7. 45, C0, 00000000
?_052:  add     dword [ebp-40H], 1                      ; 1597 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 159B _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 159E _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 15A1 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 15A4 _ 8B. 00
        sub     esp, 4                                  ; 15A6 _ 83. EC, 04
        push    38                                      ; 15A9 _ 6A, 26
        push    100                                     ; 15AB _ 6A, 64
        push    23                                      ; 15AD _ 6A, 17
        push    8                                       ; 15AF _ 6A, 08
        push    8                                       ; 15B1 _ 6A, 08
        push    edx                                     ; 15B3 _ 52
        push    eax                                     ; 15B4 _ 50
        call    boxfill8                                ; 15B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15BA _ 83. C4, 20
        sub     esp, 12                                 ; 15BD _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 15C0 _ FF. 75, C0
        call    intToHexStr                             ; 15C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15C8 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 15CB _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 15CE _ A1, 00000244(d)
        sub     esp, 8                                  ; 15D3 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 15D6 _ FF. 75, CC
        push    10                                      ; 15D9 _ 6A, 0A
        push    23                                      ; 15DB _ 6A, 17
        push    8                                       ; 15DD _ 6A, 08
        push    dword [ebp-4CH]                         ; 15DF _ FF. 75, B4
        push    eax                                     ; 15E2 _ 50
        call    showString                              ; 15E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15E8 _ 83. C4, 20
        call    io_cli                                  ; 15EB _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 15F0 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 15F3 _ 8D. 45, D0
        push    eax                                     ; 15F6 _ 50
        call    fifo8_status                            ; 15F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15FC _ 83. C4, 10
        test    eax, eax                                ; 15FF _ 85. C0
        jnz     ?_053                                   ; 1601 _ 75, 07
        call    io_sti                                  ; 1603 _ E8, FFFFFFFC(rel)
        jmp     ?_052                                   ; 1608 _ EB, 8D

?_053:  sub     esp, 12                                 ; 160A _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 160D _ 8D. 45, D0
        push    eax                                     ; 1610 _ 50
        call    fifo8_get                               ; 1611 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1616 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 1619 _ 89. 45, C8
        call    io_sti                                  ; 161C _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 1621 _ 83. 7D, C8, 7B
        jne     ?_052                                   ; 1625 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 162B _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1631 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1636 _ 83. EC, 08
        push    ?_267                                   ; 1639 _ 68, 00000094(d)
        push    7                                       ; 163E _ 6A, 07
        push    416                                     ; 1640 _ 68, 000001A0
        push    dword [ebp-44H]                         ; 1645 _ FF. 75, BC
        push    edx                                     ; 1648 _ 52
        push    eax                                     ; 1649 _ 50
        call    showString                              ; 164A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 164F _ 83. C4, 20
        sub     esp, 8                                  ; 1652 _ 83. EC, 08
        push    100                                     ; 1655 _ 6A, 64
        push    dword [ebp-3CH]                         ; 1657 _ FF. 75, C4
        call    timer_setTime                           ; 165A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 165F _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 1662 _ 83. 45, BC, 08
        jmp     ?_052                                   ; 1666 _ E9, FFFFFF2C
; task_b_main End of function

cons_newline:; Function begin
        push    ebp                                     ; 166B _ 55
        mov     ebp, esp                                ; 166C _ 89. E5
        push    ebx                                     ; 166E _ 53
        sub     esp, 20                                 ; 166F _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 1672 _ 8B. 45, 08
        lea     edx, [eax+17H]                          ; 1675 _ 8D. 50, 17
        mov     eax, dword [ebp+0CH]                    ; 1678 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 167B _ 8B. 40, 08
        sub     eax, 36                                 ; 167E _ 83. E8, 24
        cmp     edx, eax                                ; 1681 _ 39. C2
        jge     ?_054                                   ; 1683 _ 7D, 09
        add     dword [ebp+8H], 16                      ; 1685 _ 83. 45, 08, 10
        jmp     ?_063                                   ; 1689 _ E9, 000000E8

?_054:  mov     dword [ebp-0CH], 26                     ; 168E _ C7. 45, F4, 0000001A
        jmp     ?_058                                   ; 1695 _ EB, 58

?_055:  mov     dword [ebp-10H], 8                      ; 1697 _ C7. 45, F0, 00000008
        jmp     ?_057                                   ; 169E _ EB, 3D

?_056:  mov     eax, dword [ebp+0CH]                    ; 16A0 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 16A3 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 16A5 _ 8B. 45, F4
        lea     ecx, [eax+10H]                          ; 16A8 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 16AB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16AE _ 8B. 40, 04
        imul    ecx, eax                                ; 16B1 _ 0F AF. C8
        mov     eax, dword [ebp-10H]                    ; 16B4 _ 8B. 45, F0
        add     eax, ecx                                ; 16B7 _ 01. C8
        lea     ecx, [edx+eax]                          ; 16B9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 16BC _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 16BF _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 16C1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16C4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 16C7 _ 0F AF. 45, F4
        mov     ebx, eax                                ; 16CB _ 89. C3
        mov     eax, dword [ebp-10H]                    ; 16CD _ 8B. 45, F0
        add     eax, ebx                                ; 16D0 _ 01. D8
        add     edx, eax                                ; 16D2 _ 01. C2
        movzx   eax, byte [ecx]                         ; 16D4 _ 0F B6. 01
        mov     byte [edx], al                          ; 16D7 _ 88. 02
        add     dword [ebp-10H], 1                      ; 16D9 _ 83. 45, F0, 01
?_057:  mov     eax, dword [ebp+0CH]                    ; 16DD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16E0 _ 8B. 40, 04
        sub     eax, 8                                  ; 16E3 _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 16E6 _ 39. 45, F0
        jl      ?_056                                   ; 16E9 _ 7C, B5
        add     dword [ebp-0CH], 1                      ; 16EB _ 83. 45, F4, 01
?_058:  mov     eax, dword [ebp+0CH]                    ; 16EF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 16F2 _ 8B. 40, 08
        sub     eax, 20                                 ; 16F5 _ 83. E8, 14
        cmp     dword [ebp-0CH], eax                    ; 16F8 _ 39. 45, F4
        jl      ?_055                                   ; 16FB _ 7C, 9A
        mov     eax, dword [ebp+8H]                     ; 16FD _ 8B. 45, 08
        add     eax, 26                                 ; 1700 _ 83. C0, 1A
        mov     dword [ebp-0CH], eax                    ; 1703 _ 89. 45, F4
        jmp     ?_062                                   ; 1706 _ EB, 3A

?_059:  mov     dword [ebp-10H], 8                      ; 1708 _ C7. 45, F0, 00000008
        jmp     ?_061                                   ; 170F _ EB, 1F

?_060:  mov     eax, dword [ebp+0CH]                    ; 1711 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1714 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1716 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1719 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 171C _ 0F AF. 45, F4
        mov     ecx, eax                                ; 1720 _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 1722 _ 8B. 45, F0
        add     eax, ecx                                ; 1725 _ 01. C8
        add     eax, edx                                ; 1727 _ 01. D0
        mov     byte [eax], 0                           ; 1729 _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 172C _ 83. 45, F0, 01
?_061:  mov     eax, dword [ebp+0CH]                    ; 1730 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1733 _ 8B. 40, 04
        sub     eax, 8                                  ; 1736 _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 1739 _ 39. 45, F0
        jl      ?_060                                   ; 173C _ 7C, D3
        add     dword [ebp-0CH], 1                      ; 173E _ 83. 45, F4, 01
?_062:  mov     eax, dword [ebp+8H]                     ; 1742 _ 8B. 45, 08
        add     eax, 42                                 ; 1745 _ 83. C0, 2A
        cmp     dword [ebp-0CH], eax                    ; 1748 _ 39. 45, F4
        jl      ?_059                                   ; 174B _ 7C, BB
        mov     eax, dword [ebp+0CH]                    ; 174D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1750 _ 8B. 50, 08
        mov     eax, dword [ebp+0CH]                    ; 1753 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1756 _ 8B. 40, 04
        lea     ecx, [eax-8H]                           ; 1759 _ 8D. 48, F8
        mov     eax, dword [shtctl]                     ; 175C _ A1, 00000244(d)
        sub     esp, 8                                  ; 1761 _ 83. EC, 08
        push    edx                                     ; 1764 _ 52
        push    ecx                                     ; 1765 _ 51
        push    28                                      ; 1766 _ 6A, 1C
        push    8                                       ; 1768 _ 6A, 08
        push    dword [ebp+0CH]                         ; 176A _ FF. 75, 0C
        push    eax                                     ; 176D _ 50
        call    sheet_refresh                           ; 176E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1773 _ 83. C4, 20
?_063:  cmp     dword [ebp+10H], 0                      ; 1776 _ 83. 7D, 10, 00
        jnz     ?_064                                   ; 177A _ 75, 24
        mov     eax, dword [ebp+8H]                     ; 177C _ 8B. 45, 08
        lea     edx, [eax+1AH]                          ; 177F _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 1782 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1787 _ 83. EC, 08
        push    ?_260                                   ; 178A _ 68, 00000039(d)
        push    7                                       ; 178F _ 6A, 07
        push    edx                                     ; 1791 _ 52
        push    8                                       ; 1792 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1794 _ FF. 75, 0C
        push    eax                                     ; 1797 _ 50
        call    showString                              ; 1798 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 179D _ 83. C4, 20
?_064:  mov     eax, dword [ebp+8H]                     ; 17A0 _ 8B. 45, 08
        mov     ebx, dword [ebp-4H]                     ; 17A3 _ 8B. 5D, FC
        leave                                           ; 17A6 _ C9
        ret                                             ; 17A7 _ C3
; cons_newline End of function

initBootInfo:; Function begin
        push    ebp                                     ; 17A8 _ 55
        mov     ebp, esp                                ; 17A9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 17AB _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 17AE _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 17B4 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 17B7 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 17BD _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 17C0 _ 66: C7. 40, 06, 01E0
        nop                                             ; 17C6 _ 90
        pop     ebp                                     ; 17C7 _ 5D
        ret                                             ; 17C8 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 17C9 _ 55
        mov     ebp, esp                                ; 17CA _ 89. E5
        push    ebx                                     ; 17CC _ 53
        sub     esp, 36                                 ; 17CD _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 17D0 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 17D3 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 17D6 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 17D9 _ 89. 45, F4
        jmp     ?_066                                   ; 17DC _ EB, 3E

?_065:  mov     eax, dword [ebp+1CH]                    ; 17DE _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 17E1 _ 0F B6. 00
        movzx   eax, al                                 ; 17E4 _ 0F B6. C0
        shl     eax, 4                                  ; 17E7 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 17EA _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 17F0 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 17F4 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 17F7 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 17FA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17FD _ 8B. 00
        sub     esp, 8                                  ; 17FF _ 83. EC, 08
        push    ebx                                     ; 1802 _ 53
        push    ecx                                     ; 1803 _ 51
        push    dword [ebp+14H]                         ; 1804 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1807 _ FF. 75, 10
        push    edx                                     ; 180A _ 52
        push    eax                                     ; 180B _ 50
        call    showFont8                               ; 180C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1811 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 1814 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1818 _ 83. 45, 1C, 01
?_066:  mov     eax, dword [ebp+1CH]                    ; 181C _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 181F _ 0F B6. 00
        test    al, al                                  ; 1822 _ 84. C0
        jnz     ?_065                                   ; 1824 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 1826 _ 8B. 45, 14
        add     eax, 16                                 ; 1829 _ 83. C0, 10
        sub     esp, 8                                  ; 182C _ 83. EC, 08
        push    eax                                     ; 182F _ 50
        push    dword [ebp+10H]                         ; 1830 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 1833 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 1836 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 1839 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 183C _ FF. 75, 08
        call    sheet_refresh                           ; 183F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1844 _ 83. C4, 20
        nop                                             ; 1847 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1848 _ 8B. 5D, FC
        leave                                           ; 184B _ C9
        ret                                             ; 184C _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 184D _ 55
        mov     ebp, esp                                ; 184E _ 89. E5
        push    ebx                                     ; 1850 _ 53
        sub     esp, 4                                  ; 1851 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 1854 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 1857 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 185A _ 8B. 45, 0C
        sub     eax, 1                                  ; 185D _ 83. E8, 01
        sub     esp, 4                                  ; 1860 _ 83. EC, 04
        push    edx                                     ; 1863 _ 52
        push    eax                                     ; 1864 _ 50
        push    0                                       ; 1865 _ 6A, 00
        push    0                                       ; 1867 _ 6A, 00
        push    14                                      ; 1869 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 186B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 186E _ FF. 75, 08
        call    boxfill8                                ; 1871 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1876 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1879 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 187C _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 187F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1882 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1885 _ 8B. 45, 10
        sub     eax, 24                                 ; 1888 _ 83. E8, 18
        sub     esp, 4                                  ; 188B _ 83. EC, 04
        push    ecx                                     ; 188E _ 51
        push    edx                                     ; 188F _ 52
        push    eax                                     ; 1890 _ 50
        push    0                                       ; 1891 _ 6A, 00
        push    8                                       ; 1893 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1895 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1898 _ FF. 75, 08
        call    boxfill8                                ; 189B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18A0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 18A3 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 18A6 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 18A9 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 18AC _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 18AF _ 8B. 45, 10
        sub     eax, 23                                 ; 18B2 _ 83. E8, 17
        sub     esp, 4                                  ; 18B5 _ 83. EC, 04
        push    ecx                                     ; 18B8 _ 51
        push    edx                                     ; 18B9 _ 52
        push    eax                                     ; 18BA _ 50
        push    0                                       ; 18BB _ 6A, 00
        push    7                                       ; 18BD _ 6A, 07
        push    dword [ebp+0CH]                         ; 18BF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18C2 _ FF. 75, 08
        call    boxfill8                                ; 18C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18CA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 18CD _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 18D0 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 18D3 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 18D6 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 18D9 _ 8B. 45, 10
        sub     eax, 22                                 ; 18DC _ 83. E8, 16
        sub     esp, 4                                  ; 18DF _ 83. EC, 04
        push    ecx                                     ; 18E2 _ 51
        push    edx                                     ; 18E3 _ 52
        push    eax                                     ; 18E4 _ 50
        push    0                                       ; 18E5 _ 6A, 00
        push    8                                       ; 18E7 _ 6A, 08
        push    dword [ebp+0CH]                         ; 18E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18EC _ FF. 75, 08
        call    boxfill8                                ; 18EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18F4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 18F7 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 18FA _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 18FD _ 8B. 45, 10
        sub     eax, 20                                 ; 1900 _ 83. E8, 14
        sub     esp, 4                                  ; 1903 _ 83. EC, 04
        push    edx                                     ; 1906 _ 52
        push    51                                      ; 1907 _ 6A, 33
        push    eax                                     ; 1909 _ 50
        push    10                                      ; 190A _ 6A, 0A
        push    7                                       ; 190C _ 6A, 07
        push    dword [ebp+0CH]                         ; 190E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1911 _ FF. 75, 08
        call    boxfill8                                ; 1914 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1919 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 191C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 191F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1922 _ 8B. 45, 10
        sub     eax, 20                                 ; 1925 _ 83. E8, 14
        sub     esp, 4                                  ; 1928 _ 83. EC, 04
        push    edx                                     ; 192B _ 52
        push    9                                       ; 192C _ 6A, 09
        push    eax                                     ; 192E _ 50
        push    9                                       ; 192F _ 6A, 09
        push    7                                       ; 1931 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1933 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1936 _ FF. 75, 08
        call    boxfill8                                ; 1939 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 193E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1941 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1944 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1947 _ 8B. 45, 10
        sub     eax, 4                                  ; 194A _ 83. E8, 04
        sub     esp, 4                                  ; 194D _ 83. EC, 04
        push    edx                                     ; 1950 _ 52
        push    50                                      ; 1951 _ 6A, 32
        push    eax                                     ; 1953 _ 50
        push    10                                      ; 1954 _ 6A, 0A
        push    15                                      ; 1956 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1958 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 195B _ FF. 75, 08
        call    boxfill8                                ; 195E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1963 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1966 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1969 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 196C _ 8B. 45, 10
        sub     eax, 19                                 ; 196F _ 83. E8, 13
        sub     esp, 4                                  ; 1972 _ 83. EC, 04
        push    edx                                     ; 1975 _ 52
        push    50                                      ; 1976 _ 6A, 32
        push    eax                                     ; 1978 _ 50
        push    50                                      ; 1979 _ 6A, 32
        push    15                                      ; 197B _ 6A, 0F
        push    dword [ebp+0CH]                         ; 197D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1980 _ FF. 75, 08
        call    boxfill8                                ; 1983 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1988 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 198B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 198E _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1991 _ 8B. 45, 10
        sub     eax, 3                                  ; 1994 _ 83. E8, 03
        sub     esp, 4                                  ; 1997 _ 83. EC, 04
        push    edx                                     ; 199A _ 52
        push    50                                      ; 199B _ 6A, 32
        push    eax                                     ; 199D _ 50
        push    10                                      ; 199E _ 6A, 0A
        push    0                                       ; 19A0 _ 6A, 00
        push    dword [ebp+0CH]                         ; 19A2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19A5 _ FF. 75, 08
        call    boxfill8                                ; 19A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19AD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 19B0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 19B3 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 19B6 _ 8B. 45, 10
        sub     eax, 20                                 ; 19B9 _ 83. E8, 14
        sub     esp, 4                                  ; 19BC _ 83. EC, 04
        push    edx                                     ; 19BF _ 52
        push    51                                      ; 19C0 _ 6A, 33
        push    eax                                     ; 19C2 _ 50
        push    51                                      ; 19C3 _ 6A, 33
        push    0                                       ; 19C5 _ 6A, 00
        push    dword [ebp+0CH]                         ; 19C7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19CA _ FF. 75, 08
        call    boxfill8                                ; 19CD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19D2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 19D5 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 19D8 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 19DB _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 19DE _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 19E1 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 19E4 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 19E7 _ 8B. 45, 0C
        sub     eax, 47                                 ; 19EA _ 83. E8, 2F
        sub     esp, 4                                  ; 19ED _ 83. EC, 04
        push    ebx                                     ; 19F0 _ 53
        push    ecx                                     ; 19F1 _ 51
        push    edx                                     ; 19F2 _ 52
        push    eax                                     ; 19F3 _ 50
        push    15                                      ; 19F4 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 19F6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19F9 _ FF. 75, 08
        call    boxfill8                                ; 19FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A01 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A04 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1A07 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1A0A _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1A0D _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1A10 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1A13 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1A16 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1A19 _ 83. E8, 2F
        sub     esp, 4                                  ; 1A1C _ 83. EC, 04
        push    ebx                                     ; 1A1F _ 53
        push    ecx                                     ; 1A20 _ 51
        push    edx                                     ; 1A21 _ 52
        push    eax                                     ; 1A22 _ 50
        push    15                                      ; 1A23 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1A25 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A28 _ FF. 75, 08
        call    boxfill8                                ; 1A2B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A30 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A33 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1A36 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1A39 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1A3C _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1A3F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1A42 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1A45 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1A48 _ 83. E8, 2F
        sub     esp, 4                                  ; 1A4B _ 83. EC, 04
        push    ebx                                     ; 1A4E _ 53
        push    ecx                                     ; 1A4F _ 51
        push    edx                                     ; 1A50 _ 52
        push    eax                                     ; 1A51 _ 50
        push    7                                       ; 1A52 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1A54 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A57 _ FF. 75, 08
        call    boxfill8                                ; 1A5A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A5F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1A62 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1A65 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1A68 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1A6B _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1A6E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1A71 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1A74 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1A77 _ 83. E8, 03
        sub     esp, 4                                  ; 1A7A _ 83. EC, 04
        push    ebx                                     ; 1A7D _ 53
        push    ecx                                     ; 1A7E _ 51
        push    edx                                     ; 1A7F _ 52
        push    eax                                     ; 1A80 _ 50
        push    7                                       ; 1A81 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1A83 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A86 _ FF. 75, 08
        call    boxfill8                                ; 1A89 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A8E _ 83. C4, 20
        nop                                             ; 1A91 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1A92 _ 8B. 5D, FC
        leave                                           ; 1A95 _ C9
        ret                                             ; 1A96 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1A97 _ 55
        mov     ebp, esp                                ; 1A98 _ 89. E5
        sub     esp, 24                                 ; 1A9A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1A9D _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1AA2 _ 89. 45, EC
        movzx   eax, word [?_276]                       ; 1AA5 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1AAC _ 98
        mov     dword [ebp-10H], eax                    ; 1AAD _ 89. 45, F0
        movzx   eax, word [?_277]                       ; 1AB0 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1AB7 _ 98
        mov     dword [ebp-0CH], eax                    ; 1AB8 _ 89. 45, F4
        sub     esp, 4                                  ; 1ABB _ 83. EC, 04
        push    table_rgb.2449                          ; 1ABE _ 68, 00000120(d)
        push    15                                      ; 1AC3 _ 6A, 0F
        push    0                                       ; 1AC5 _ 6A, 00
        call    set_palette                             ; 1AC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ACC _ 83. C4, 10
        nop                                             ; 1ACF _ 90
        leave                                           ; 1AD0 _ C9
        ret                                             ; 1AD1 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1AD2 _ 55
        mov     ebp, esp                                ; 1AD3 _ 89. E5
        sub     esp, 24                                 ; 1AD5 _ 83. EC, 18
        call    io_load_eflags                          ; 1AD8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1ADD _ 89. 45, F4
        call    io_cli                                  ; 1AE0 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1AE5 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1AE8 _ FF. 75, 08
        push    968                                     ; 1AEB _ 68, 000003C8
        call    io_out8                                 ; 1AF0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AF5 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1AF8 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1AFB _ 89. 45, F0
        jmp     ?_068                                   ; 1AFE _ EB, 65

?_067:  mov     eax, dword [ebp+10H]                    ; 1B00 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1B03 _ 0F B6. 00
        shr     al, 2                                   ; 1B06 _ C0. E8, 02
        movzx   eax, al                                 ; 1B09 _ 0F B6. C0
        sub     esp, 8                                  ; 1B0C _ 83. EC, 08
        push    eax                                     ; 1B0F _ 50
        push    969                                     ; 1B10 _ 68, 000003C9
        call    io_out8                                 ; 1B15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B1A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1B1D _ 8B. 45, 10
        add     eax, 1                                  ; 1B20 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1B23 _ 0F B6. 00
        shr     al, 2                                   ; 1B26 _ C0. E8, 02
        movzx   eax, al                                 ; 1B29 _ 0F B6. C0
        sub     esp, 8                                  ; 1B2C _ 83. EC, 08
        push    eax                                     ; 1B2F _ 50
        push    969                                     ; 1B30 _ 68, 000003C9
        call    io_out8                                 ; 1B35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B3A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1B3D _ 8B. 45, 10
        add     eax, 2                                  ; 1B40 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1B43 _ 0F B6. 00
        shr     al, 2                                   ; 1B46 _ C0. E8, 02
        movzx   eax, al                                 ; 1B49 _ 0F B6. C0
        sub     esp, 8                                  ; 1B4C _ 83. EC, 08
        push    eax                                     ; 1B4F _ 50
        push    969                                     ; 1B50 _ 68, 000003C9
        call    io_out8                                 ; 1B55 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B5A _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1B5D _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 1B61 _ 83. 45, F0, 01
?_068:  mov     eax, dword [ebp-10H]                    ; 1B65 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1B68 _ 3B. 45, 0C
        jle     ?_067                                   ; 1B6B _ 7E, 93
        sub     esp, 12                                 ; 1B6D _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 1B70 _ FF. 75, F4
        call    io_store_eflags                         ; 1B73 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B78 _ 83. C4, 10
        nop                                             ; 1B7B _ 90
        leave                                           ; 1B7C _ C9
        ret                                             ; 1B7D _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1B7E _ 55
        mov     ebp, esp                                ; 1B7F _ 89. E5
        sub     esp, 20                                 ; 1B81 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1B84 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1B87 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1B8A _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1B8D _ 89. 45, FC
        jmp     ?_072                                   ; 1B90 _ EB, 33

?_069:  mov     eax, dword [ebp+14H]                    ; 1B92 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1B95 _ 89. 45, F8
        jmp     ?_071                                   ; 1B98 _ EB, 1F

?_070:  mov     eax, dword [ebp-4H]                     ; 1B9A _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1B9D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1BA1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1BA3 _ 8B. 45, F8
        add     eax, edx                                ; 1BA6 _ 01. D0
        mov     edx, eax                                ; 1BA8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1BAA _ 8B. 45, 08
        add     edx, eax                                ; 1BAD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1BAF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1BB3 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1BB5 _ 83. 45, F8, 01
?_071:  mov     eax, dword [ebp-8H]                     ; 1BB9 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1BBC _ 3B. 45, 1C
        jle     ?_070                                   ; 1BBF _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1BC1 _ 83. 45, FC, 01
?_072:  mov     eax, dword [ebp-4H]                     ; 1BC5 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1BC8 _ 3B. 45, 20
        jle     ?_069                                   ; 1BCB _ 7E, C5
        nop                                             ; 1BCD _ 90
        leave                                           ; 1BCE _ C9
        ret                                             ; 1BCF _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1BD0 _ 55
        mov     ebp, esp                                ; 1BD1 _ 89. E5
        push    edi                                     ; 1BD3 _ 57
        push    esi                                     ; 1BD4 _ 56
        push    ebx                                     ; 1BD5 _ 53
        sub     esp, 16                                 ; 1BD6 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1BD9 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1BDC _ 8B. 45, 14
        add     eax, edx                                ; 1BDF _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1BE1 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1BE4 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1BE7 _ 8B. 45, 18
        add     eax, edx                                ; 1BEA _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1BEC _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1BEF _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1BF2 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1BF5 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1BF8 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1BFB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1BFE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1C01 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1C04 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1C07 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C0A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C0D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C10 _ 8B. 00
        push    edi                                     ; 1C12 _ 57
        push    esi                                     ; 1C13 _ 56
        push    ebx                                     ; 1C14 _ 53
        push    ecx                                     ; 1C15 _ 51
        push    15                                      ; 1C16 _ 6A, 0F
        push    edx                                     ; 1C18 _ 52
        push    eax                                     ; 1C19 _ 50
        call    boxfill8                                ; 1C1A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C1F _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1C22 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1C25 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1C28 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1C2B _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1C2E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1C31 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1C34 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1C37 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1C3A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C3D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C40 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C43 _ 8B. 00
        push    edi                                     ; 1C45 _ 57
        push    esi                                     ; 1C46 _ 56
        push    ebx                                     ; 1C47 _ 53
        push    ecx                                     ; 1C48 _ 51
        push    15                                      ; 1C49 _ 6A, 0F
        push    edx                                     ; 1C4B _ 52
        push    eax                                     ; 1C4C _ 50
        call    boxfill8                                ; 1C4D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C52 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1C55 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1C58 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1C5B _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1C5E _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1C61 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1C64 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1C67 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1C6A _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1C6D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C70 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C73 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C76 _ 8B. 00
        push    edi                                     ; 1C78 _ 57
        push    esi                                     ; 1C79 _ 56
        push    ebx                                     ; 1C7A _ 53
        push    ecx                                     ; 1C7B _ 51
        push    7                                       ; 1C7C _ 6A, 07
        push    edx                                     ; 1C7E _ 52
        push    eax                                     ; 1C7F _ 50
        call    boxfill8                                ; 1C80 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C85 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1C88 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1C8B _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1C8E _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1C91 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1C94 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1C97 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1C9A _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1C9D _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1CA0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1CA3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CA6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1CA9 _ 8B. 00
        push    edi                                     ; 1CAB _ 57
        push    esi                                     ; 1CAC _ 56
        push    ebx                                     ; 1CAD _ 53
        push    ecx                                     ; 1CAE _ 51
        push    7                                       ; 1CAF _ 6A, 07
        push    edx                                     ; 1CB1 _ 52
        push    eax                                     ; 1CB2 _ 50
        call    boxfill8                                ; 1CB3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CB8 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1CBB _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1CBE _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1CC1 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1CC4 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1CC7 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1CCA _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1CCD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1CD0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CD3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1CD6 _ 8B. 00
        push    esi                                     ; 1CD8 _ 56
        push    dword [ebp-14H]                         ; 1CD9 _ FF. 75, EC
        push    ebx                                     ; 1CDC _ 53
        push    ecx                                     ; 1CDD _ 51
        push    0                                       ; 1CDE _ 6A, 00
        push    edx                                     ; 1CE0 _ 52
        push    eax                                     ; 1CE1 _ 50
        call    boxfill8                                ; 1CE2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CE7 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1CEA _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1CED _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1CF0 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1CF3 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1CF6 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1CF9 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1CFC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1CFF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D02 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D05 _ 8B. 00
        push    dword [ebp-10H]                         ; 1D07 _ FF. 75, F0
        push    esi                                     ; 1D0A _ 56
        push    ebx                                     ; 1D0B _ 53
        push    ecx                                     ; 1D0C _ 51
        push    0                                       ; 1D0D _ 6A, 00
        push    edx                                     ; 1D0F _ 52
        push    eax                                     ; 1D10 _ 50
        call    boxfill8                                ; 1D11 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D16 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1D19 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1D1C _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1D1F _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1D22 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1D25 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1D28 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1D2B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1D2E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D31 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D34 _ 8B. 00
        push    esi                                     ; 1D36 _ 56
        push    dword [ebp-14H]                         ; 1D37 _ FF. 75, EC
        push    ebx                                     ; 1D3A _ 53
        push    ecx                                     ; 1D3B _ 51
        push    8                                       ; 1D3C _ 6A, 08
        push    edx                                     ; 1D3E _ 52
        push    eax                                     ; 1D3F _ 50
        call    boxfill8                                ; 1D40 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D45 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1D48 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1D4B _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1D4E _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1D51 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1D54 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1D57 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1D5A _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1D5D _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1D60 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1D63 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D66 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D69 _ 8B. 00
        push    edi                                     ; 1D6B _ 57
        push    esi                                     ; 1D6C _ 56
        push    ebx                                     ; 1D6D _ 53
        push    ecx                                     ; 1D6E _ 51
        push    8                                       ; 1D6F _ 6A, 08
        push    edx                                     ; 1D71 _ 52
        push    eax                                     ; 1D72 _ 50
        call    boxfill8                                ; 1D73 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D78 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1D7B _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1D7E _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1D81 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1D84 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1D87 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1D8A _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1D8D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1D90 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D93 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D96 _ 8B. 00
        push    dword [ebp-10H]                         ; 1D98 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1D9B _ FF. 75, EC
        push    esi                                     ; 1D9E _ 56
        push    ebx                                     ; 1D9F _ 53
        push    ecx                                     ; 1DA0 _ 51
        push    edx                                     ; 1DA1 _ 52
        push    eax                                     ; 1DA2 _ 50
        call    boxfill8                                ; 1DA3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1DA8 _ 83. C4, 1C
        nop                                             ; 1DAB _ 90
        lea     esp, [ebp-0CH]                          ; 1DAC _ 8D. 65, F4
        pop     ebx                                     ; 1DAF _ 5B
        pop     esi                                     ; 1DB0 _ 5E
        pop     edi                                     ; 1DB1 _ 5F
        pop     ebp                                     ; 1DB2 _ 5D
        ret                                             ; 1DB3 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1DB4 _ 55
        mov     ebp, esp                                ; 1DB5 _ 89. E5
        sub     esp, 20                                 ; 1DB7 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1DBA _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1DBD _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1DC0 _ C7. 45, FC, 00000000
        jmp     ?_082                                   ; 1DC7 _ E9, 0000016C

?_073:  mov     edx, dword [ebp-4H]                     ; 1DCC _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1DCF _ 8B. 45, 1C
        add     eax, edx                                ; 1DD2 _ 01. D0
        movzx   eax, byte [eax]                         ; 1DD4 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1DD7 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1DDA _ 80. 7D, FB, 00
        jns     ?_074                                   ; 1DDE _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1DE0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1DE3 _ 8B. 45, FC
        add     eax, edx                                ; 1DE6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1DE8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1DEC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1DEE _ 8B. 45, 10
        add     eax, edx                                ; 1DF1 _ 01. D0
        mov     edx, eax                                ; 1DF3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1DF5 _ 8B. 45, 08
        add     edx, eax                                ; 1DF8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1DFA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1DFE _ 88. 02
?_074:  movsx   eax, byte [ebp-5H]                      ; 1E00 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1E04 _ 83. E0, 40
        test    eax, eax                                ; 1E07 _ 85. C0
        jz      ?_075                                   ; 1E09 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1E0B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1E0E _ 8B. 45, FC
        add     eax, edx                                ; 1E11 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1E13 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1E17 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1E19 _ 8B. 45, 10
        add     eax, edx                                ; 1E1C _ 01. D0
        lea     edx, [eax+1H]                           ; 1E1E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E21 _ 8B. 45, 08
        add     edx, eax                                ; 1E24 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1E26 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1E2A _ 88. 02
?_075:  movsx   eax, byte [ebp-5H]                      ; 1E2C _ 0F BE. 45, FB
        and     eax, 20H                                ; 1E30 _ 83. E0, 20
        test    eax, eax                                ; 1E33 _ 85. C0
        jz      ?_076                                   ; 1E35 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1E37 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1E3A _ 8B. 45, FC
        add     eax, edx                                ; 1E3D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1E3F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1E43 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1E45 _ 8B. 45, 10
        add     eax, edx                                ; 1E48 _ 01. D0
        lea     edx, [eax+2H]                           ; 1E4A _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1E4D _ 8B. 45, 08
        add     edx, eax                                ; 1E50 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1E52 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1E56 _ 88. 02
?_076:  movsx   eax, byte [ebp-5H]                      ; 1E58 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1E5C _ 83. E0, 10
        test    eax, eax                                ; 1E5F _ 85. C0
        jz      ?_077                                   ; 1E61 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1E63 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1E66 _ 8B. 45, FC
        add     eax, edx                                ; 1E69 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1E6B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1E6F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1E71 _ 8B. 45, 10
        add     eax, edx                                ; 1E74 _ 01. D0
        lea     edx, [eax+3H]                           ; 1E76 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1E79 _ 8B. 45, 08
        add     edx, eax                                ; 1E7C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1E7E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1E82 _ 88. 02
?_077:  movsx   eax, byte [ebp-5H]                      ; 1E84 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1E88 _ 83. E0, 08
        test    eax, eax                                ; 1E8B _ 85. C0
        jz      ?_078                                   ; 1E8D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1E8F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1E92 _ 8B. 45, FC
        add     eax, edx                                ; 1E95 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1E97 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1E9B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1E9D _ 8B. 45, 10
        add     eax, edx                                ; 1EA0 _ 01. D0
        lea     edx, [eax+4H]                           ; 1EA2 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1EA5 _ 8B. 45, 08
        add     edx, eax                                ; 1EA8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1EAA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1EAE _ 88. 02
?_078:  movsx   eax, byte [ebp-5H]                      ; 1EB0 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1EB4 _ 83. E0, 04
        test    eax, eax                                ; 1EB7 _ 85. C0
        jz      ?_079                                   ; 1EB9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1EBB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1EBE _ 8B. 45, FC
        add     eax, edx                                ; 1EC1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1EC3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1EC7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1EC9 _ 8B. 45, 10
        add     eax, edx                                ; 1ECC _ 01. D0
        lea     edx, [eax+5H]                           ; 1ECE _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1ED1 _ 8B. 45, 08
        add     edx, eax                                ; 1ED4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1ED6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1EDA _ 88. 02
?_079:  movsx   eax, byte [ebp-5H]                      ; 1EDC _ 0F BE. 45, FB
        and     eax, 02H                                ; 1EE0 _ 83. E0, 02
        test    eax, eax                                ; 1EE3 _ 85. C0
        jz      ?_080                                   ; 1EE5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1EE7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1EEA _ 8B. 45, FC
        add     eax, edx                                ; 1EED _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1EEF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1EF3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1EF5 _ 8B. 45, 10
        add     eax, edx                                ; 1EF8 _ 01. D0
        lea     edx, [eax+6H]                           ; 1EFA _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1EFD _ 8B. 45, 08
        add     edx, eax                                ; 1F00 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1F02 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1F06 _ 88. 02
?_080:  movsx   eax, byte [ebp-5H]                      ; 1F08 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1F0C _ 83. E0, 01
        test    eax, eax                                ; 1F0F _ 85. C0
        jz      ?_081                                   ; 1F11 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1F13 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1F16 _ 8B. 45, FC
        add     eax, edx                                ; 1F19 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1F1B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1F1F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1F21 _ 8B. 45, 10
        add     eax, edx                                ; 1F24 _ 01. D0
        lea     edx, [eax+7H]                           ; 1F26 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1F29 _ 8B. 45, 08
        add     edx, eax                                ; 1F2C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1F2E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1F32 _ 88. 02
?_081:  add     dword [ebp-4H], 1                       ; 1F34 _ 83. 45, FC, 01
?_082:  cmp     dword [ebp-4H], 15                      ; 1F38 _ 83. 7D, FC, 0F
        jle     ?_073                                   ; 1F3C _ 0F 8E, FFFFFE8A
        nop                                             ; 1F42 _ 90
        leave                                           ; 1F43 _ C9
        ret                                             ; 1F44 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1F45 _ 55
        mov     ebp, esp                                ; 1F46 _ 89. E5
        sub     esp, 20                                 ; 1F48 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1F4B _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1F4E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1F51 _ C7. 45, FC, 00000000
        jmp     ?_089                                   ; 1F58 _ E9, 000000B1

?_083:  mov     dword [ebp-8H], 0                       ; 1F5D _ C7. 45, F8, 00000000
        jmp     ?_088                                   ; 1F64 _ E9, 00000097

?_084:  mov     eax, dword [ebp-4H]                     ; 1F69 _ 8B. 45, FC
        shl     eax, 4                                  ; 1F6C _ C1. E0, 04
        mov     edx, eax                                ; 1F6F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1F71 _ 8B. 45, F8
        add     eax, edx                                ; 1F74 _ 01. D0
        add     eax, cursor.2504                        ; 1F76 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1F7B _ 0F B6. 00
        cmp     al, 42                                  ; 1F7E _ 3C, 2A
        jnz     ?_085                                   ; 1F80 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1F82 _ 8B. 45, FC
        shl     eax, 4                                  ; 1F85 _ C1. E0, 04
        mov     edx, eax                                ; 1F88 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1F8A _ 8B. 45, F8
        add     eax, edx                                ; 1F8D _ 01. D0
        mov     edx, eax                                ; 1F8F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F91 _ 8B. 45, 08
        add     eax, edx                                ; 1F94 _ 01. D0
        mov     byte [eax], 0                           ; 1F96 _ C6. 00, 00
?_085:  mov     eax, dword [ebp-4H]                     ; 1F99 _ 8B. 45, FC
        shl     eax, 4                                  ; 1F9C _ C1. E0, 04
        mov     edx, eax                                ; 1F9F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1FA1 _ 8B. 45, F8
        add     eax, edx                                ; 1FA4 _ 01. D0
        add     eax, cursor.2504                        ; 1FA6 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1FAB _ 0F B6. 00
        cmp     al, 79                                  ; 1FAE _ 3C, 4F
        jnz     ?_086                                   ; 1FB0 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1FB2 _ 8B. 45, FC
        shl     eax, 4                                  ; 1FB5 _ C1. E0, 04
        mov     edx, eax                                ; 1FB8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1FBA _ 8B. 45, F8
        add     eax, edx                                ; 1FBD _ 01. D0
        mov     edx, eax                                ; 1FBF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1FC1 _ 8B. 45, 08
        add     eax, edx                                ; 1FC4 _ 01. D0
        mov     byte [eax], 7                           ; 1FC6 _ C6. 00, 07
?_086:  mov     eax, dword [ebp-4H]                     ; 1FC9 _ 8B. 45, FC
        shl     eax, 4                                  ; 1FCC _ C1. E0, 04
        mov     edx, eax                                ; 1FCF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1FD1 _ 8B. 45, F8
        add     eax, edx                                ; 1FD4 _ 01. D0
        add     eax, cursor.2504                        ; 1FD6 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1FDB _ 0F B6. 00
        cmp     al, 46                                  ; 1FDE _ 3C, 2E
        jnz     ?_087                                   ; 1FE0 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1FE2 _ 8B. 45, FC
        shl     eax, 4                                  ; 1FE5 _ C1. E0, 04
        mov     edx, eax                                ; 1FE8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1FEA _ 8B. 45, F8
        add     eax, edx                                ; 1FED _ 01. D0
        mov     edx, eax                                ; 1FEF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1FF1 _ 8B. 45, 08
        add     edx, eax                                ; 1FF4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1FF6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1FFA _ 88. 02
?_087:  add     dword [ebp-8H], 1                       ; 1FFC _ 83. 45, F8, 01
?_088:  cmp     dword [ebp-8H], 15                      ; 2000 _ 83. 7D, F8, 0F
        jle     ?_084                                   ; 2004 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 200A _ 83. 45, FC, 01
?_089:  cmp     dword [ebp-4H], 15                      ; 200E _ 83. 7D, FC, 0F
        jle     ?_083                                   ; 2012 _ 0F 8E, FFFFFF45
        nop                                             ; 2018 _ 90
        leave                                           ; 2019 _ C9
        ret                                             ; 201A _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 201B _ 55
        mov     ebp, esp                                ; 201C _ 89. E5
        push    ebx                                     ; 201E _ 53
        sub     esp, 16                                 ; 201F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2022 _ C7. 45, F8, 00000000
        jmp     ?_093                                   ; 2029 _ EB, 50

?_090:  mov     dword [ebp-0CH], 0                      ; 202B _ C7. 45, F4, 00000000
        jmp     ?_092                                   ; 2032 _ EB, 3B

?_091:  mov     eax, dword [ebp-8H]                     ; 2034 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 2037 _ 0F AF. 45, 24
        mov     edx, eax                                ; 203B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 203D _ 8B. 45, F4
        add     eax, edx                                ; 2040 _ 01. D0
        mov     edx, eax                                ; 2042 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 2044 _ 8B. 45, 20
        add     eax, edx                                ; 2047 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 2049 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 204C _ 8B. 55, F8
        add     edx, ecx                                ; 204F _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 2051 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 2055 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 2058 _ 8B. 4D, F4
        add     ecx, ebx                                ; 205B _ 01. D9
        add     edx, ecx                                ; 205D _ 01. CA
        mov     ecx, edx                                ; 205F _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 2061 _ 8B. 55, 08
        add     edx, ecx                                ; 2064 _ 01. CA
        movzx   eax, byte [eax]                         ; 2066 _ 0F B6. 00
        mov     byte [edx], al                          ; 2069 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 206B _ 83. 45, F4, 01
?_092:  mov     eax, dword [ebp-0CH]                    ; 206F _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2072 _ 3B. 45, 10
        jl      ?_091                                   ; 2075 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 2077 _ 83. 45, F8, 01
?_093:  mov     eax, dword [ebp-8H]                     ; 207B _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 207E _ 3B. 45, 14
        jl      ?_090                                   ; 2081 _ 7C, A8
        nop                                             ; 2083 _ 90
        add     esp, 16                                 ; 2084 _ 83. C4, 10
        pop     ebx                                     ; 2087 _ 5B
        pop     ebp                                     ; 2088 _ 5D
        ret                                             ; 2089 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 208A _ 55
        mov     ebp, esp                                ; 208B _ 89. E5
        sub     esp, 24                                 ; 208D _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 2090 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 2095 _ 89. 45, EC
        movzx   eax, word [?_276]                       ; 2098 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 209F _ 98
        mov     dword [ebp-10H], eax                    ; 20A0 _ 89. 45, F0
        movzx   eax, word [?_277]                       ; 20A3 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 20AA _ 98
        mov     dword [ebp-0CH], eax                    ; 20AB _ 89. 45, F4
        sub     esp, 8                                  ; 20AE _ 83. EC, 08
        push    32                                      ; 20B1 _ 6A, 20
        push    32                                      ; 20B3 _ 6A, 20
        call    io_out8                                 ; 20B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20BA _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 20BD _ C6. 45, EB, 00
        sub     esp, 12                                 ; 20C1 _ 83. EC, 0C
        push    96                                      ; 20C4 _ 6A, 60
        call    io_in8                                  ; 20C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20CB _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 20CE _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 20D1 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 20D5 _ 83. EC, 08
        push    eax                                     ; 20D8 _ 50
        push    keyInfo                                 ; 20D9 _ 68, 00000010(d)
        call    fifo8_put                               ; 20DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20E3 _ 83. C4, 10
        nop                                             ; 20E6 _ 90
        leave                                           ; 20E7 _ C9
        ret                                             ; 20E8 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 20E9 _ 55
        mov     ebp, esp                                ; 20EA _ 89. E5
        sub     esp, 40                                 ; 20EC _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 20EF _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 20F2 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 20F5 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 20F9 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 20FC _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 20FF _ 0F BE. 45, F7
        sub     esp, 12                                 ; 2103 _ 83. EC, 0C
        push    eax                                     ; 2106 _ 50
        call    charToVal                               ; 2107 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 210C _ 83. C4, 10
        mov     byte [?_275], al                        ; 210F _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 2114 _ 0F B6. 45, E4
        shr     al, 4                                   ; 2118 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 211B _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 211E _ 0F B6. 45, E4
        movsx   eax, al                                 ; 2122 _ 0F BE. C0
        sub     esp, 12                                 ; 2125 _ 83. EC, 0C
        push    eax                                     ; 2128 _ 50
        call    charToVal                               ; 2129 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 212E _ 83. C4, 10
        mov     byte [?_274], al                        ; 2131 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 2136 _ B8, 00000000(d)
        leave                                           ; 213B _ C9
        ret                                             ; 213C _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 213D _ 55
        mov     ebp, esp                                ; 213E _ 89. E5
        sub     esp, 4                                  ; 2140 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2143 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2146 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 2149 _ 80. 7D, FC, 09
        jle     ?_094                                   ; 214D _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 214F _ 0F B6. 45, FC
        add     eax, 55                                 ; 2153 _ 83. C0, 37
        jmp     ?_095                                   ; 2156 _ EB, 07

?_094:  movzx   eax, byte [ebp-4H]                      ; 2158 _ 0F B6. 45, FC
        add     eax, 48                                 ; 215C _ 83. C0, 30
?_095:  leave                                           ; 215F _ C9
        ret                                             ; 2160 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 2161 _ 55
        mov     ebp, esp                                ; 2162 _ 89. E5
        sub     esp, 16                                 ; 2164 _ 83. EC, 10
        mov     byte [str.2547], 48                     ; 2167 _ C6. 05, 00000278(d), 30
        mov     byte [?_280], 120                       ; 216E _ C6. 05, 00000279(d), 78
        mov     byte [?_281], 0                         ; 2175 _ C6. 05, 00000282(d), 00
        mov     dword [ebp-0CH], 2                      ; 217C _ C7. 45, F4, 00000002
        jmp     ?_097                                   ; 2183 _ EB, 0F

?_096:  mov     eax, dword [ebp-0CH]                    ; 2185 _ 8B. 45, F4
        add     eax, str.2547                           ; 2188 _ 05, 00000278(d)
        mov     byte [eax], 48                          ; 218D _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 2190 _ 83. 45, F4, 01
?_097:  cmp     dword [ebp-0CH], 9                      ; 2194 _ 83. 7D, F4, 09
        jle     ?_096                                   ; 2198 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 219A _ C7. 45, F8, 00000009
        jmp     ?_100                                   ; 21A1 _ EB, 48

?_098:  mov     eax, dword [ebp+8H]                     ; 21A3 _ 8B. 45, 08
        and     eax, 0FH                                ; 21A6 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 21A9 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 21AC _ 8B. 45, 08
        shr     eax, 4                                  ; 21AF _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 21B2 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 21B5 _ 83. 7D, FC, 09
        jle     ?_099                                   ; 21B9 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 21BB _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 21BE _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 21C1 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 21C4 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 21C7 _ 89. 55, F8
        mov     edx, ecx                                ; 21CA _ 89. CA
        mov     byte [str.2547+eax], dl                 ; 21CC _ 88. 90, 00000278(d)
        jmp     ?_100                                   ; 21D2 _ EB, 17

?_099:  mov     eax, dword [ebp-4H]                     ; 21D4 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 21D7 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 21DA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 21DD _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 21E0 _ 89. 55, F8
        mov     edx, ecx                                ; 21E3 _ 89. CA
        mov     byte [str.2547+eax], dl                 ; 21E5 _ 88. 90, 00000278(d)
?_100:  cmp     dword [ebp-8H], 1                       ; 21EB _ 83. 7D, F8, 01
        jle     ?_101                                   ; 21EF _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 21F1 _ 83. 7D, 08, 00
        jnz     ?_098                                   ; 21F5 _ 75, AC
?_101:  mov     eax, str.2547                           ; 21F7 _ B8, 00000278(d)
        leave                                           ; 21FC _ C9
        ret                                             ; 21FD _ C3
; intToHexStr End of function

intToStr:; Function begin
        push    ebp                                     ; 21FE _ 55
        mov     ebp, esp                                ; 21FF _ 89. E5
        sub     esp, 32                                 ; 2201 _ 83. EC, 20
        mov     dword [ebp-14H], 0                      ; 2204 _ C7. 45, EC, 00000000
        jmp     ?_103                                   ; 220B _ EB, 48

?_102:  mov     ecx, dword [ebp+8H]                     ; 220D _ 8B. 4D, 08
        mov     edx, 3435973837                         ; 2210 _ BA, CCCCCCCD
        mov     eax, ecx                                ; 2215 _ 89. C8
        mul     edx                                     ; 2217 _ F7. E2
        shr     edx, 3                                  ; 2219 _ C1. EA, 03
        mov     eax, edx                                ; 221C _ 89. D0
        shl     eax, 2                                  ; 221E _ C1. E0, 02
        add     eax, edx                                ; 2221 _ 01. D0
        add     eax, eax                                ; 2223 _ 01. C0
        sub     ecx, eax                                ; 2225 _ 29. C1
        mov     edx, ecx                                ; 2227 _ 89. CA
        mov     dword [ebp-4H], edx                     ; 2229 _ 89. 55, FC
        mov     eax, dword [ebp-4H]                     ; 222C _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 222F _ 8D. 48, 30
        mov     eax, dword [ebp-14H]                    ; 2232 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2235 _ 8D. 50, 01
        mov     dword [ebp-14H], edx                    ; 2238 _ 89. 55, EC
        mov     edx, ecx                                ; 223B _ 89. CA
        mov     byte [str.2560+eax], dl                 ; 223D _ 88. 90, 00000284(d)
        mov     eax, dword [ebp+8H]                     ; 2243 _ 8B. 45, 08
        mov     edx, 3435973837                         ; 2246 _ BA, CCCCCCCD
        mul     edx                                     ; 224B _ F7. E2
        mov     eax, edx                                ; 224D _ 89. D0
        shr     eax, 3                                  ; 224F _ C1. E8, 03
        mov     dword [ebp+8H], eax                     ; 2252 _ 89. 45, 08
?_103:  cmp     dword [ebp+8H], 0                       ; 2255 _ 83. 7D, 08, 00
        jnz     ?_102                                   ; 2259 _ 75, B2
        mov     dword [ebp-8H], 0                       ; 225B _ C7. 45, F8, 00000000
        mov     dword [ebp-10H], 0                      ; 2262 _ C7. 45, F0, 00000000
        mov     eax, dword [ebp-14H]                    ; 2269 _ 8B. 45, EC
        sub     eax, 1                                  ; 226C _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 226F _ 89. 45, F4
        jmp     ?_105                                   ; 2272 _ EB, 3E

?_104:  mov     eax, dword [ebp-10H]                    ; 2274 _ 8B. 45, F0
        add     eax, str.2560                           ; 2277 _ 05, 00000284(d)
        movzx   eax, byte [eax]                         ; 227C _ 0F B6. 00
        movsx   eax, al                                 ; 227F _ 0F BE. C0
        mov     dword [ebp-8H], eax                     ; 2282 _ 89. 45, F8
        mov     eax, dword [ebp-0CH]                    ; 2285 _ 8B. 45, F4
        add     eax, str.2560                           ; 2288 _ 05, 00000284(d)
        movzx   eax, byte [eax]                         ; 228D _ 0F B6. 00
        mov     edx, dword [ebp-10H]                    ; 2290 _ 8B. 55, F0
        add     edx, str.2560                           ; 2293 _ 81. C2, 00000284(d)
        mov     byte [edx], al                          ; 2299 _ 88. 02
        mov     eax, dword [ebp-8H]                     ; 229B _ 8B. 45, F8
        mov     edx, eax                                ; 229E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 22A0 _ 8B. 45, F4
        add     eax, str.2560                           ; 22A3 _ 05, 00000284(d)
        mov     byte [eax], dl                          ; 22A8 _ 88. 10
        add     dword [ebp-10H], 1                      ; 22AA _ 83. 45, F0, 01
        sub     dword [ebp-0CH], 1                      ; 22AE _ 83. 6D, F4, 01
?_105:  mov     eax, dword [ebp-10H]                    ; 22B2 _ 8B. 45, F0
        cmp     eax, dword [ebp-0CH]                    ; 22B5 _ 3B. 45, F4
        jl      ?_104                                   ; 22B8 _ 7C, BA
        mov     eax, dword [ebp-14H]                    ; 22BA _ 8B. 45, EC
        add     eax, str.2560                           ; 22BD _ 05, 00000284(d)
        mov     byte [eax], 0                           ; 22C2 _ C6. 00, 00
        mov     eax, str.2560                           ; 22C5 _ B8, 00000284(d)
        leave                                           ; 22CA _ C9
        ret                                             ; 22CB _ C3
; intToStr End of function

getIntStrLen:; Function begin
        push    ebp                                     ; 22CC _ 55
        mov     ebp, esp                                ; 22CD _ 89. E5
        sub     esp, 16                                 ; 22CF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 22D2 _ C7. 45, FC, 00000000
        nop                                             ; 22D9 _ 90
?_106:  mov     eax, dword [ebp-4H]                     ; 22DA _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 22DD _ 8D. 50, 01
        mov     dword [ebp-4H], edx                     ; 22E0 _ 89. 55, FC
        mov     edx, eax                                ; 22E3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 22E5 _ 8B. 45, 08
        add     eax, edx                                ; 22E8 _ 01. D0
        movzx   eax, byte [eax]                         ; 22EA _ 0F B6. 00
        test    al, al                                  ; 22ED _ 84. C0
        jnz     ?_106                                   ; 22EF _ 75, E9
        mov     eax, dword [ebp-4H]                     ; 22F1 _ 8B. 45, FC
        leave                                           ; 22F4 _ C9
        ret                                             ; 22F5 _ C3
; getIntStrLen End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 22F6 _ 55
        mov     ebp, esp                                ; 22F7 _ 89. E5
        sub     esp, 8                                  ; 22F9 _ 83. EC, 08
?_107:  sub     esp, 12                                 ; 22FC _ 83. EC, 0C
        push    100                                     ; 22FF _ 6A, 64
        call    io_in8                                  ; 2301 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2306 _ 83. C4, 10
        movsx   eax, al                                 ; 2309 _ 0F BE. C0
        and     eax, 02H                                ; 230C _ 83. E0, 02
        test    eax, eax                                ; 230F _ 85. C0
        jz      ?_108                                   ; 2311 _ 74, 02
        jmp     ?_107                                   ; 2313 _ EB, E7

?_108:  nop                                             ; 2315 _ 90
        nop                                             ; 2316 _ 90
        leave                                           ; 2317 _ C9
        ret                                             ; 2318 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 2319 _ 55
        mov     ebp, esp                                ; 231A _ 89. E5
        sub     esp, 8                                  ; 231C _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 231F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2324 _ 83. EC, 08
        push    96                                      ; 2327 _ 6A, 60
        push    100                                     ; 2329 _ 6A, 64
        call    io_out8                                 ; 232B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2330 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 2333 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2338 _ 83. EC, 08
        push    71                                      ; 233B _ 6A, 47
        push    96                                      ; 233D _ 6A, 60
        call    io_out8                                 ; 233F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2344 _ 83. C4, 10
        nop                                             ; 2347 _ 90
        leave                                           ; 2348 _ C9
        ret                                             ; 2349 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 234A _ 55
        mov     ebp, esp                                ; 234B _ 89. E5
        sub     esp, 8                                  ; 234D _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 2350 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2355 _ 83. EC, 08
        push    212                                     ; 2358 _ 68, 000000D4
        push    100                                     ; 235D _ 6A, 64
        call    io_out8                                 ; 235F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2364 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 2367 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 236C _ 83. EC, 08
        push    244                                     ; 236F _ 68, 000000F4
        push    96                                      ; 2374 _ 6A, 60
        call    io_out8                                 ; 2376 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 237B _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 237E _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 2381 _ C6. 40, 03, 00
        nop                                             ; 2385 _ 90
        leave                                           ; 2386 _ C9
        ret                                             ; 2387 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 2388 _ 55
        mov     ebp, esp                                ; 2389 _ 89. E5
        sub     esp, 24                                 ; 238B _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 238E _ C6. 45, F7, 00
        sub     esp, 8                                  ; 2392 _ 83. EC, 08
        push    32                                      ; 2395 _ 6A, 20
        push    160                                     ; 2397 _ 68, 000000A0
        call    io_out8                                 ; 239C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23A1 _ 83. C4, 10
        sub     esp, 8                                  ; 23A4 _ 83. EC, 08
        push    32                                      ; 23A7 _ 6A, 20
        push    32                                      ; 23A9 _ 6A, 20
        call    io_out8                                 ; 23AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23B0 _ 83. C4, 10
        sub     esp, 12                                 ; 23B3 _ 83. EC, 0C
        push    96                                      ; 23B6 _ 6A, 60
        call    io_in8                                  ; 23B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23BD _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 23C0 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 23C3 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 23C7 _ 83. EC, 08
        push    eax                                     ; 23CA _ 50
        push    mouseInfo                               ; 23CB _ 68, 0000002C(d)
        call    fifo8_put                               ; 23D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23D5 _ 83. C4, 10
        nop                                             ; 23D8 _ 90
        leave                                           ; 23D9 _ C9
        ret                                             ; 23DA _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 23DB _ 55
        mov     ebp, esp                                ; 23DC _ 89. E5
        sub     esp, 40                                 ; 23DE _ 83. EC, 28
        call    io_sti                                  ; 23E1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 23E6 _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 23EB _ 89. 45, E8
        movzx   eax, word [?_276]                       ; 23EE _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 23F5 _ 98
        mov     dword [ebp-14H], eax                    ; 23F6 _ 89. 45, EC
        movzx   eax, word [?_277]                       ; 23F9 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 2400 _ 98
        mov     dword [ebp-10H], eax                    ; 2401 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 2404 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 2408 _ 83. EC, 0C
        push    keyInfo                                 ; 240B _ 68, 00000010(d)
        call    fifo8_get                               ; 2410 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2415 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 2418 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 241B _ 0F B6. 45, E7
        sub     esp, 12                                 ; 241F _ 83. EC, 0C
        push    eax                                     ; 2422 _ 50
        call    charToHex                               ; 2423 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2428 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 242B _ 89. 45, F4
        mov     edx, dword [line.2602]                  ; 242E _ 8B. 15, 0000028C(d)
        mov     eax, dword [pos.2601]                   ; 2434 _ A1, 00000290(d)
        sub     esp, 8                                  ; 2439 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 243C _ FF. 75, F4
        push    7                                       ; 243F _ 6A, 07
        push    edx                                     ; 2441 _ 52
        push    eax                                     ; 2442 _ 50
        push    dword [ebp+0CH]                         ; 2443 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2446 _ FF. 75, 08
        call    showString                              ; 2449 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 244E _ 83. C4, 20
        mov     eax, dword [pos.2601]                   ; 2451 _ A1, 00000290(d)
        add     eax, 32                                 ; 2456 _ 83. C0, 20
        mov     dword [pos.2601], eax                   ; 2459 _ A3, 00000290(d)
        mov     eax, dword [pos.2601]                   ; 245E _ A1, 00000290(d)
        cmp     dword [ebp-14H], eax                    ; 2463 _ 39. 45, EC
        jnz     ?_111                                   ; 2466 _ 75, 28
        mov     eax, dword [line.2602]                  ; 2468 _ A1, 0000028C(d)
        cmp     dword [ebp-10H], eax                    ; 246D _ 39. 45, F0
        jz      ?_109                                   ; 2470 _ 74, 0A
        mov     eax, dword [line.2602]                  ; 2472 _ A1, 0000028C(d)
        add     eax, 16                                 ; 2477 _ 83. C0, 10
        jmp     ?_110                                   ; 247A _ EB, 05

?_109:  mov     eax, 0                                  ; 247C _ B8, 00000000
?_110:  mov     dword [line.2602], eax                  ; 2481 _ A3, 0000028C(d)
        mov     dword [pos.2601], 0                     ; 2486 _ C7. 05, 00000290(d), 00000000
?_111:  nop                                             ; 2490 _ 90
        leave                                           ; 2491 _ C9
        ret                                             ; 2492 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 2493 _ 55
        mov     ebp, esp                                ; 2494 _ 89. E5
        sub     esp, 24                                 ; 2496 _ 83. EC, 18
        call    io_sti                                  ; 2499 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 249E _ C6. 45, F7, 00
        sub     esp, 12                                 ; 24A2 _ 83. EC, 0C
        push    mouseInfo                               ; 24A5 _ 68, 0000002C(d)
        call    fifo8_get                               ; 24AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24AF _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 24B2 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 24B5 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 24B9 _ 83. EC, 08
        push    eax                                     ; 24BC _ 50
        push    mouse_move                              ; 24BD _ 68, 00000100(d)
        call    mouse_decode                            ; 24C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24C7 _ 83. C4, 10
        test    eax, eax                                ; 24CA _ 85. C0
        jz      ?_112                                   ; 24CC _ 74, 60
        sub     esp, 4                                  ; 24CE _ 83. EC, 04
        push    mouse_move                              ; 24D1 _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 24D6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 24D9 _ FF. 75, 08
        call    computeMousePos                         ; 24DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24E1 _ 83. C4, 10
        mov     edx, dword [my]                         ; 24E4 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 24EA _ A1, 00000110(d)
        push    edx                                     ; 24EF _ 52
        push    eax                                     ; 24F0 _ 50
        push    dword [ebp+10H]                         ; 24F1 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 24F4 _ FF. 75, 08
        call    sheet_slide                             ; 24F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24FC _ 83. C4, 10
        mov     eax, dword [?_279]                      ; 24FF _ A1, 0000010C(d)
        and     eax, 01H                                ; 2504 _ 83. E0, 01
        test    eax, eax                                ; 2507 _ 85. C0
        jz      ?_112                                   ; 2509 _ 74, 23
        mov     eax, dword [my]                         ; 250B _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 2510 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 2513 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 2518 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 251B _ A1, 00000248(d)
        push    ecx                                     ; 2520 _ 51
        push    edx                                     ; 2521 _ 52
        push    eax                                     ; 2522 _ 50
        push    dword [ebp+8H]                          ; 2523 _ FF. 75, 08
        call    sheet_slide                             ; 2526 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 252B _ 83. C4, 10
?_112:  nop                                             ; 252E _ 90
        leave                                           ; 252F _ C9
        ret                                             ; 2530 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 2531 _ 55
        mov     ebp, esp                                ; 2532 _ 89. E5
        sub     esp, 4                                  ; 2534 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2537 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 253A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 253D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2540 _ 0F B6. 40, 03
        test    al, al                                  ; 2544 _ 84. C0
        jnz     ?_114                                   ; 2546 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 2548 _ 80. 7D, FC, FA
        jnz     ?_113                                   ; 254C _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 254E _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2551 _ C6. 40, 03, 01
?_113:  mov     eax, 0                                  ; 2555 _ B8, 00000000
        jmp     ?_121                                   ; 255A _ E9, 0000010C

?_114:  mov     eax, dword [ebp+8H]                     ; 255F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2562 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 2566 _ 3C, 01
        jnz     ?_116                                   ; 2568 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 256A _ 0F B6. 45, FC
        or      eax, 37H                                ; 256E _ 83. C8, 37
        cmp     al, 63                                  ; 2571 _ 3C, 3F
        jnz     ?_115                                   ; 2573 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 2575 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2578 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 257C _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 257E _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 2581 _ C6. 40, 03, 02
?_115:  mov     eax, 0                                  ; 2585 _ B8, 00000000
        jmp     ?_121                                   ; 258A _ E9, 000000DC

?_116:  mov     eax, dword [ebp+8H]                     ; 258F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2592 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 2596 _ 3C, 02
        jnz     ?_117                                   ; 2598 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 259A _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 259D _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 25A1 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25A4 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 25A7 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 25AB _ B8, 00000000
        jmp     ?_121                                   ; 25B0 _ E9, 000000B6

?_117:  mov     eax, dword [ebp+8H]                     ; 25B5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 25B8 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 25BC _ 3C, 03
        jne     ?_120                                   ; 25BE _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 25C4 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 25C7 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 25CB _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 25CE _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 25D1 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 25D5 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 25D8 _ 0F B6. 00
        movzx   eax, al                                 ; 25DB _ 0F B6. C0
        and     eax, 07H                                ; 25DE _ 83. E0, 07
        mov     edx, eax                                ; 25E1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 25E3 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 25E6 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 25E9 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 25EC _ 0F B6. 40, 01
        movzx   edx, al                                 ; 25F0 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 25F3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 25F6 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 25F9 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 25FC _ 0F B6. 40, 02
        movzx   edx, al                                 ; 2600 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 2603 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2606 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2609 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 260C _ 0F B6. 00
        movzx   eax, al                                 ; 260F _ 0F B6. C0
        and     eax, 10H                                ; 2612 _ 83. E0, 10
        test    eax, eax                                ; 2615 _ 85. C0
        jz      ?_118                                   ; 2617 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2619 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 261C _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 261F _ 0D, FFFFFF00
        mov     edx, eax                                ; 2624 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2626 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2629 _ 89. 50, 04
?_118:  mov     eax, dword [ebp+8H]                     ; 262C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 262F _ 0F B6. 00
        movzx   eax, al                                 ; 2632 _ 0F B6. C0
        and     eax, 20H                                ; 2635 _ 83. E0, 20
        test    eax, eax                                ; 2638 _ 85. C0
        jz      ?_119                                   ; 263A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 263C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 263F _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 2642 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2647 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2649 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 264C _ 89. 50, 08
?_119:  mov     eax, dword [ebp+8H]                     ; 264F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2652 _ 8B. 40, 08
        neg     eax                                     ; 2655 _ F7. D8
        mov     edx, eax                                ; 2657 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2659 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 265C _ 89. 50, 08
        mov     eax, 1                                  ; 265F _ B8, 00000001
        jmp     ?_121                                   ; 2664 _ EB, 05

?_120:  mov     eax, 4294967295                         ; 2666 _ B8, FFFFFFFF
?_121:  leave                                           ; 266B _ C9
        ret                                             ; 266C _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 266D _ 55
        mov     ebp, esp                                ; 266E _ 89. E5
        sub     esp, 16                                 ; 2670 _ 83. EC, 10
        movzx   eax, word [?_276]                       ; 2673 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 267A _ 98
        mov     dword [ebp-8H], eax                     ; 267B _ 89. 45, F8
        movzx   eax, word [?_277]                       ; 267E _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 2685 _ 98
        mov     dword [ebp-4H], eax                     ; 2686 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 2689 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 268C _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 268F _ A1, 00000110(d)
        add     eax, edx                                ; 2694 _ 01. D0
        mov     dword [mx], eax                         ; 2696 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 269B _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 269E _ 8B. 50, 08
        mov     eax, dword [my]                         ; 26A1 _ A1, 00000114(d)
        add     eax, edx                                ; 26A6 _ 01. D0
        mov     dword [my], eax                         ; 26A8 _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 26AD _ A1, 00000110(d)
        test    eax, eax                                ; 26B2 _ 85. C0
        jns     ?_122                                   ; 26B4 _ 79, 0A
        mov     dword [mx], 0                           ; 26B6 _ C7. 05, 00000110(d), 00000000
?_122:  mov     eax, dword [my]                         ; 26C0 _ A1, 00000114(d)
        test    eax, eax                                ; 26C5 _ 85. C0
        jns     ?_123                                   ; 26C7 _ 79, 0A
        mov     dword [my], 0                           ; 26C9 _ C7. 05, 00000114(d), 00000000
?_123:  mov     eax, dword [ebp-8H]                     ; 26D3 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 26D6 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 26D9 _ A1, 00000110(d)
        cmp     edx, eax                                ; 26DE _ 39. C2
        jge     ?_124                                   ; 26E0 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 26E2 _ 8B. 45, F8
        sub     eax, 9                                  ; 26E5 _ 83. E8, 09
        mov     dword [mx], eax                         ; 26E8 _ A3, 00000110(d)
?_124:  mov     eax, dword [ebp-4H]                     ; 26ED _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 26F0 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 26F3 _ A1, 00000114(d)
        cmp     edx, eax                                ; 26F8 _ 39. C2
        jge     ?_125                                   ; 26FA _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 26FC _ 8B. 45, FC
        sub     eax, 1                                  ; 26FF _ 83. E8, 01
        mov     dword [my], eax                         ; 2702 _ A3, 00000114(d)
?_125:  nop                                             ; 2707 _ 90
        leave                                           ; 2708 _ C9
        ret                                             ; 2709 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 270A _ 55
        mov     ebp, esp                                ; 270B _ 89. E5
        sub     esp, 56                                 ; 270D _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 2710 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 2717 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 271E _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 2725 _ C7. 45, DC, 00000050
        push    100                                     ; 272C _ 6A, 64
        push    dword [ebp+1CH]                         ; 272E _ FF. 75, 1C
        push    0                                       ; 2731 _ 6A, 00
        push    0                                       ; 2733 _ 6A, 00
        push    14                                      ; 2735 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 2737 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 273A _ FF. 75, 14
        call    boxfill8                                ; 273D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2742 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 2745 _ 8B. 45, 20
        movsx   eax, al                                 ; 2748 _ 0F BE. C0
        sub     esp, 8                                  ; 274B _ 83. EC, 08
        push    ?_268                                   ; 274E _ 68, 00000096(d)
        push    eax                                     ; 2753 _ 50
        push    dword [ebp-2CH]                         ; 2754 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2757 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 275A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 275D _ FF. 75, 08
        call    showString                              ; 2760 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2765 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 2768 _ 8B. 45, 18
        sub     esp, 12                                 ; 276B _ 83. EC, 0C
        push    eax                                     ; 276E _ 50
        call    intToHexStr                             ; 276F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2774 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 2777 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 277A _ 8B. 45, 20
        movsx   eax, al                                 ; 277D _ 0F BE. C0
        sub     esp, 8                                  ; 2780 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 2783 _ FF. 75, E0
        push    eax                                     ; 2786 _ 50
        push    dword [ebp-2CH]                         ; 2787 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 278A _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 278D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2790 _ FF. 75, 08
        call    showString                              ; 2793 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2798 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 279B _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 279F _ 8B. 45, 20
        movsx   eax, al                                 ; 27A2 _ 0F BE. C0
        sub     esp, 8                                  ; 27A5 _ 83. EC, 08
        push    ?_269                                   ; 27A8 _ 68, 000000A0(d)
        push    eax                                     ; 27AD _ 50
        push    dword [ebp-2CH]                         ; 27AE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 27B1 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 27B4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 27B7 _ FF. 75, 08
        call    showString                              ; 27BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27BF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 27C2 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 27C5 _ 8B. 00
        sub     esp, 12                                 ; 27C7 _ 83. EC, 0C
        push    eax                                     ; 27CA _ 50
        call    intToHexStr                             ; 27CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 27D0 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 27D3 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 27D6 _ 8B. 45, 20
        movsx   eax, al                                 ; 27D9 _ 0F BE. C0
        sub     esp, 8                                  ; 27DC _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 27DF _ FF. 75, E4
        push    eax                                     ; 27E2 _ 50
        push    dword [ebp-2CH]                         ; 27E3 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 27E6 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 27E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 27EC _ FF. 75, 08
        call    showString                              ; 27EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27F4 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 27F7 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 27FB _ 8B. 45, 20
        movsx   eax, al                                 ; 27FE _ 0F BE. C0
        sub     esp, 8                                  ; 2801 _ 83. EC, 08
        push    ?_270                                   ; 2804 _ 68, 000000AE(d)
        push    eax                                     ; 2809 _ 50
        push    dword [ebp-2CH]                         ; 280A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 280D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2810 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2813 _ FF. 75, 08
        call    showString                              ; 2816 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 281B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 281E _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2821 _ 8B. 40, 04
        sub     esp, 12                                 ; 2824 _ 83. EC, 0C
        push    eax                                     ; 2827 _ 50
        call    intToHexStr                             ; 2828 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 282D _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 2830 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 2833 _ 8B. 45, 20
        movsx   eax, al                                 ; 2836 _ 0F BE. C0
        sub     esp, 8                                  ; 2839 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 283C _ FF. 75, E8
        push    eax                                     ; 283F _ 50
        push    dword [ebp-2CH]                         ; 2840 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2843 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2846 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2849 _ FF. 75, 08
        call    showString                              ; 284C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2851 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2854 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2858 _ 8B. 45, 20
        movsx   eax, al                                 ; 285B _ 0F BE. C0
        sub     esp, 8                                  ; 285E _ 83. EC, 08
        push    ?_271                                   ; 2861 _ 68, 000000BD(d)
        push    eax                                     ; 2866 _ 50
        push    dword [ebp-2CH]                         ; 2867 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 286A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 286D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2870 _ FF. 75, 08
        call    showString                              ; 2873 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2878 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 287B _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 287E _ 8B. 40, 08
        sub     esp, 12                                 ; 2881 _ 83. EC, 0C
        push    eax                                     ; 2884 _ 50
        call    intToHexStr                             ; 2885 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 288A _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 288D _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 2890 _ 8B. 45, 20
        movsx   eax, al                                 ; 2893 _ 0F BE. C0
        sub     esp, 8                                  ; 2896 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 2899 _ FF. 75, EC
        push    eax                                     ; 289C _ 50
        push    dword [ebp-2CH]                         ; 289D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 28A0 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 28A3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 28A6 _ FF. 75, 08
        call    showString                              ; 28A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28AE _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 28B1 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 28B5 _ 8B. 45, 20
        movsx   eax, al                                 ; 28B8 _ 0F BE. C0
        sub     esp, 8                                  ; 28BB _ 83. EC, 08
        push    ?_272                                   ; 28BE _ 68, 000000C9(d)
        push    eax                                     ; 28C3 _ 50
        push    dword [ebp-2CH]                         ; 28C4 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 28C7 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 28CA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 28CD _ FF. 75, 08
        call    showString                              ; 28D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28D5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 28D8 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 28DB _ 8B. 40, 0C
        sub     esp, 12                                 ; 28DE _ 83. EC, 0C
        push    eax                                     ; 28E1 _ 50
        call    intToHexStr                             ; 28E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28E7 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 28EA _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 28ED _ 8B. 45, 20
        movsx   eax, al                                 ; 28F0 _ 0F BE. C0
        sub     esp, 8                                  ; 28F3 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 28F6 _ FF. 75, F0
        push    eax                                     ; 28F9 _ 50
        push    dword [ebp-2CH]                         ; 28FA _ FF. 75, D4
        push    dword [ebp-28H]                         ; 28FD _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2900 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2903 _ FF. 75, 08
        call    showString                              ; 2906 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 290B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 290E _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2912 _ 8B. 45, 20
        movsx   eax, al                                 ; 2915 _ 0F BE. C0
        sub     esp, 8                                  ; 2918 _ 83. EC, 08
        push    ?_273                                   ; 291B _ 68, 000000D6(d)
        push    eax                                     ; 2920 _ 50
        push    dword [ebp-2CH]                         ; 2921 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2924 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2927 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 292A _ FF. 75, 08
        call    showString                              ; 292D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2932 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2935 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 2938 _ 8B. 40, 10
        sub     esp, 12                                 ; 293B _ 83. EC, 0C
        push    eax                                     ; 293E _ 50
        call    intToHexStr                             ; 293F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2944 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2947 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 294A _ 8B. 45, 20
        movsx   eax, al                                 ; 294D _ 0F BE. C0
        sub     esp, 8                                  ; 2950 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 2953 _ FF. 75, F4
        push    eax                                     ; 2956 _ 50
        push    dword [ebp-2CH]                         ; 2957 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 295A _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 295D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2960 _ FF. 75, 08
        call    showString                              ; 2963 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2968 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 296B _ 83. 45, D4, 10
        nop                                             ; 296F _ 90
        leave                                           ; 2970 _ C9
        ret                                             ; 2971 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 2972 _ 55
        mov     ebp, esp                                ; 2973 _ 89. E5
        sub     esp, 24                                 ; 2975 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 2978 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 297B _ 0F AF. 45, 14
        mov     edx, eax                                ; 297F _ 89. C2
        mov     eax, dword [memman]                     ; 2981 _ A1, 00000008(d)
        sub     esp, 8                                  ; 2986 _ 83. EC, 08
        push    edx                                     ; 2989 _ 52
        push    eax                                     ; 298A _ 50
        call    memman_alloc_4K                         ; 298B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2990 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2993 _ 89. 45, F0
        sub     esp, 12                                 ; 2996 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2999 _ FF. 75, 08
        call    sheet_alloc                             ; 299C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 29A1 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 29A4 _ 89. 45, F4
        sub     esp, 12                                 ; 29A7 _ 83. EC, 0C
        push    99                                      ; 29AA _ 6A, 63
        push    dword [ebp+14H]                         ; 29AC _ FF. 75, 14
        push    dword [ebp+10H]                         ; 29AF _ FF. 75, 10
        push    dword [ebp-10H]                         ; 29B2 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 29B5 _ FF. 75, F4
        call    sheet_setbuf                            ; 29B8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29BD _ 83. C4, 20
        push    1                                       ; 29C0 _ 6A, 01
        push    dword [ebp+0CH]                         ; 29C2 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 29C5 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 29C8 _ FF. 75, 08
        call    make_window8                            ; 29CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 29D0 _ 83. C4, 10
        sub     esp, 8                                  ; 29D3 _ 83. EC, 08
        push    7                                       ; 29D6 _ 6A, 07
        push    16                                      ; 29D8 _ 6A, 10
        push    150                                     ; 29DA _ 68, 00000096
        push    42                                      ; 29DF _ 6A, 2A
        push    10                                      ; 29E1 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 29E3 _ FF. 75, F4
        call    make_textbox8                           ; 29E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29EB _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 29EE _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 29F1 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 29F4 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 29F7 _ FF. 75, 08
        call    sheet_slide                             ; 29FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 29FF _ 83. C4, 10
        sub     esp, 4                                  ; 2A02 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 2A05 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 2A08 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2A0B _ FF. 75, 08
        call    sheet_level_updown                      ; 2A0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A13 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2A16 _ 8B. 45, F4
        leave                                           ; 2A19 _ C9
        ret                                             ; 2A1A _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 2A1B _ 55
        mov     ebp, esp                                ; 2A1C _ 89. E5
        sub     esp, 24                                 ; 2A1E _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2A21 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2A24 _ 0F AF. 45, 20
        mov     edx, eax                                ; 2A28 _ 89. C2
        mov     eax, dword [memman]                     ; 2A2A _ A1, 00000008(d)
        sub     esp, 8                                  ; 2A2F _ 83. EC, 08
        push    edx                                     ; 2A32 _ 52
        push    eax                                     ; 2A33 _ 50
        call    memman_alloc_4K                         ; 2A34 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A39 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2A3C _ 89. 45, F0
        sub     esp, 12                                 ; 2A3F _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2A42 _ FF. 75, 08
        call    sheet_alloc                             ; 2A45 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A4A _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2A4D _ 89. 45, F4
        sub     esp, 12                                 ; 2A50 _ 83. EC, 0C
        push    99                                      ; 2A53 _ 6A, 63
        push    dword [ebp+20H]                         ; 2A55 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 2A58 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 2A5B _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2A5E _ FF. 75, F4
        call    sheet_setbuf                            ; 2A61 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2A66 _ 83. C4, 20
        push    0                                       ; 2A69 _ 6A, 00
        push    dword [ebp+18H]                         ; 2A6B _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2A6E _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2A71 _ FF. 75, 08
        call    make_window8                            ; 2A74 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A79 _ 83. C4, 10
        call    task_alloc                              ; 2A7C _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 2A81 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A84 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 2A87 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2A8E _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 2A91 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 2A98 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 2A9D _ F7. D8
        add     eax, task_b_main                        ; 2A9F _ 05, 00000000(d)
        mov     edx, eax                                ; 2AA4 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 2AA6 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 2AA9 _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 2AAC _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 2AAF _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2AB6 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 2AB9 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2AC0 _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 2AC3 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 2ACA _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 2ACD _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2AD4 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 2AD7 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2ADE _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 2AE1 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2AE8 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2AEB _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 2AEE _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 2AF1 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 2AF4 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 2AF7 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2AFA _ 8B. 40, 4C
        add     eax, 4                                  ; 2AFD _ 83. C0, 04
        mov     edx, eax                                ; 2B00 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2B02 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2B05 _ 89. 02
        sub     esp, 4                                  ; 2B07 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2B0A _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2B0D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2B10 _ FF. 75, 0C
        call    task_run                                ; 2B13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B18 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 2B1B _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2B1E _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2B21 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2B24 _ FF. 75, 08
        call    sheet_slide                             ; 2B27 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B2C _ 83. C4, 10
        sub     esp, 4                                  ; 2B2F _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2B32 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2B35 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2B38 _ FF. 75, 08
        call    sheet_level_updown                      ; 2B3B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B40 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2B43 _ 8B. 45, F4
        leave                                           ; 2B46 _ C9
        ret                                             ; 2B47 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 2B48 _ 55
        mov     ebp, esp                                ; 2B49 _ 89. E5
        push    ebx                                     ; 2B4B _ 53
        sub     esp, 36                                 ; 2B4C _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2B4F _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2B52 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2B55 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2B58 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2B5B _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2B5E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2B61 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2B64 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2B67 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2B6A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B6D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B70 _ 8B. 00
        push    0                                       ; 2B72 _ 6A, 00
        push    edx                                     ; 2B74 _ 52
        push    0                                       ; 2B75 _ 6A, 00
        push    0                                       ; 2B77 _ 6A, 00
        push    8                                       ; 2B79 _ 6A, 08
        push    dword [ebp-10H]                         ; 2B7B _ FF. 75, F0
        push    eax                                     ; 2B7E _ 50
        call    boxfill8                                ; 2B7F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B84 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2B87 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2B8A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2B8D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B90 _ 8B. 00
        push    1                                       ; 2B92 _ 6A, 01
        push    edx                                     ; 2B94 _ 52
        push    1                                       ; 2B95 _ 6A, 01
        push    1                                       ; 2B97 _ 6A, 01
        push    7                                       ; 2B99 _ 6A, 07
        push    dword [ebp-10H]                         ; 2B9B _ FF. 75, F0
        push    eax                                     ; 2B9E _ 50
        call    boxfill8                                ; 2B9F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2BA4 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2BA7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2BAA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BAD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BB0 _ 8B. 00
        push    edx                                     ; 2BB2 _ 52
        push    0                                       ; 2BB3 _ 6A, 00
        push    0                                       ; 2BB5 _ 6A, 00
        push    0                                       ; 2BB7 _ 6A, 00
        push    8                                       ; 2BB9 _ 6A, 08
        push    dword [ebp-10H]                         ; 2BBB _ FF. 75, F0
        push    eax                                     ; 2BBE _ 50
        call    boxfill8                                ; 2BBF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2BC4 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2BC7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2BCA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BCD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BD0 _ 8B. 00
        push    edx                                     ; 2BD2 _ 52
        push    1                                       ; 2BD3 _ 6A, 01
        push    1                                       ; 2BD5 _ 6A, 01
        push    1                                       ; 2BD7 _ 6A, 01
        push    7                                       ; 2BD9 _ 6A, 07
        push    dword [ebp-10H]                         ; 2BDB _ FF. 75, F0
        push    eax                                     ; 2BDE _ 50
        call    boxfill8                                ; 2BDF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2BE4 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2BE7 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2BEA _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2BED _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2BF0 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2BF3 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2BF6 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2BF9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BFC _ 8B. 00
        push    ebx                                     ; 2BFE _ 53
        push    ecx                                     ; 2BFF _ 51
        push    1                                       ; 2C00 _ 6A, 01
        push    edx                                     ; 2C02 _ 52
        push    15                                      ; 2C03 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2C05 _ FF. 75, F0
        push    eax                                     ; 2C08 _ 50
        call    boxfill8                                ; 2C09 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2C0E _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2C11 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2C14 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2C17 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2C1A _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2C1D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2C20 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2C23 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C26 _ 8B. 00
        push    ebx                                     ; 2C28 _ 53
        push    ecx                                     ; 2C29 _ 51
        push    0                                       ; 2C2A _ 6A, 00
        push    edx                                     ; 2C2C _ 52
        push    0                                       ; 2C2D _ 6A, 00
        push    dword [ebp-10H]                         ; 2C2F _ FF. 75, F0
        push    eax                                     ; 2C32 _ 50
        call    boxfill8                                ; 2C33 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2C38 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2C3B _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2C3E _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2C41 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2C44 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2C47 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C4A _ 8B. 00
        push    ecx                                     ; 2C4C _ 51
        push    edx                                     ; 2C4D _ 52
        push    2                                       ; 2C4E _ 6A, 02
        push    2                                       ; 2C50 _ 6A, 02
        push    8                                       ; 2C52 _ 6A, 08
        push    dword [ebp-10H]                         ; 2C54 _ FF. 75, F0
        push    eax                                     ; 2C57 _ 50
        call    boxfill8                                ; 2C58 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2C5D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2C60 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2C63 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2C66 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C69 _ 8B. 00
        push    20                                      ; 2C6B _ 6A, 14
        push    edx                                     ; 2C6D _ 52
        push    3                                       ; 2C6E _ 6A, 03
        push    3                                       ; 2C70 _ 6A, 03
        push    12                                      ; 2C72 _ 6A, 0C
        push    dword [ebp-10H]                         ; 2C74 _ FF. 75, F0
        push    eax                                     ; 2C77 _ 50
        call    boxfill8                                ; 2C78 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2C7D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2C80 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2C83 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2C86 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2C89 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2C8C _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2C8F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2C92 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C95 _ 8B. 00
        push    ebx                                     ; 2C97 _ 53
        push    ecx                                     ; 2C98 _ 51
        push    edx                                     ; 2C99 _ 52
        push    1                                       ; 2C9A _ 6A, 01
        push    15                                      ; 2C9C _ 6A, 0F
        push    dword [ebp-10H]                         ; 2C9E _ FF. 75, F0
        push    eax                                     ; 2CA1 _ 50
        call    boxfill8                                ; 2CA2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2CA7 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2CAA _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2CAD _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2CB0 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2CB3 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2CB6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2CB9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2CBC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CBF _ 8B. 00
        push    ebx                                     ; 2CC1 _ 53
        push    ecx                                     ; 2CC2 _ 51
        push    edx                                     ; 2CC3 _ 52
        push    0                                       ; 2CC4 _ 6A, 00
        push    0                                       ; 2CC6 _ 6A, 00
        push    dword [ebp-10H]                         ; 2CC8 _ FF. 75, F0
        push    eax                                     ; 2CCB _ 50
        call    boxfill8                                ; 2CCC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2CD1 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2CD4 _ 0F BE. 45, E4
        push    eax                                     ; 2CD8 _ 50
        push    dword [ebp+10H]                         ; 2CD9 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2CDC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2CDF _ FF. 75, 08
        call    make_wtitle8                            ; 2CE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2CE7 _ 83. C4, 10
        nop                                             ; 2CEA _ 90
        mov     ebx, dword [ebp-4H]                     ; 2CEB _ 8B. 5D, FC
        leave                                           ; 2CEE _ C9
        ret                                             ; 2CEF _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 2CF0 _ 55
        mov     ebp, esp                                ; 2CF1 _ 89. E5
        push    ebx                                     ; 2CF3 _ 53
        sub     esp, 36                                 ; 2CF4 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2CF7 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2CFA _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2CFD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D00 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2D03 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 2D06 _ 80. 7D, E4, 00
        jz      ?_126                                   ; 2D0A _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 2D0C _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 2D10 _ C6. 45, EB, 0C
        jmp     ?_127                                   ; 2D14 _ EB, 0E

?_126:  cmp     byte [ebp-1CH], 0                       ; 2D16 _ 80. 7D, E4, 00
        jnz     ?_127                                   ; 2D1A _ 75, 08
        mov     byte [ebp-16H], 8                       ; 2D1C _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2D20 _ C6. 45, EB, 0F
?_127:  mov     eax, dword [ebp-0CH]                    ; 2D24 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 2D27 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 2D2A _ 0F B6. 45, EB
        movzx   edx, al                                 ; 2D2E _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2D31 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D34 _ 8B. 00
        push    20                                      ; 2D36 _ 6A, 14
        push    ecx                                     ; 2D38 _ 51
        push    3                                       ; 2D39 _ 6A, 03
        push    3                                       ; 2D3B _ 6A, 03
        push    edx                                     ; 2D3D _ 52
        push    dword [ebp-0CH]                         ; 2D3E _ FF. 75, F4
        push    eax                                     ; 2D41 _ 50
        call    boxfill8                                ; 2D42 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2D47 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 2D4A _ 0F BE. 45, EA
        sub     esp, 8                                  ; 2D4E _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2D51 _ FF. 75, 10
        push    eax                                     ; 2D54 _ 50
        push    4                                       ; 2D55 _ 6A, 04
        push    8                                       ; 2D57 _ 6A, 08
        push    dword [ebp+0CH]                         ; 2D59 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2D5C _ FF. 75, 08
        call    showString                              ; 2D5F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D64 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 2D67 _ C7. 45, EC, 00000000
        jmp     ?_134                                   ; 2D6E _ EB, 75

?_128:  mov     dword [ebp-10H], 0                      ; 2D70 _ C7. 45, F0, 00000000
        jmp     ?_133                                   ; 2D77 _ EB, 62

?_129:  mov     eax, dword [ebp-14H]                    ; 2D79 _ 8B. 45, EC
        shl     eax, 4                                  ; 2D7C _ C1. E0, 04
        mov     edx, eax                                ; 2D7F _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2D81 _ 8B. 45, F0
        add     eax, edx                                ; 2D84 _ 01. D0
        add     eax, closebtn.2679                      ; 2D86 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2D8B _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 2D8E _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 2D91 _ 80. 7D, E9, 40
        jnz     ?_130                                   ; 2D95 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 2D97 _ C6. 45, E9, 00
        jmp     ?_132                                   ; 2D9B _ EB, 16

?_130:  cmp     byte [ebp-17H], 36                      ; 2D9D _ 80. 7D, E9, 24
        jnz     ?_131                                   ; 2DA1 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 2DA3 _ C6. 45, E9, 0F
        jmp     ?_132                                   ; 2DA7 _ EB, 0A

?_131:  cmp     byte [ebp-17H], 81                      ; 2DA9 _ 80. 7D, E9, 51
        jnz     ?_132                                   ; 2DAD _ 75, 04
        mov     byte [ebp-17H], 8                       ; 2DAF _ C6. 45, E9, 08
?_132:  mov     eax, dword [ebp+0CH]                    ; 2DB3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2DB6 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2DB8 _ 8B. 55, EC
        add     edx, 5                                  ; 2DBB _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 2DBE _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 2DC2 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2DC5 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2DC8 _ 8B. 4D, F0
        add     ecx, ebx                                ; 2DCB _ 01. D9
        add     edx, ecx                                ; 2DCD _ 01. CA
        add     edx, eax                                ; 2DCF _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 2DD1 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2DD5 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2DD7 _ 83. 45, F0, 01
?_133:  cmp     dword [ebp-10H], 15                     ; 2DDB _ 83. 7D, F0, 0F
        jle     ?_129                                   ; 2DDF _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2DE1 _ 83. 45, EC, 01
?_134:  cmp     dword [ebp-14H], 13                     ; 2DE5 _ 83. 7D, EC, 0D
        jle     ?_128                                   ; 2DE9 _ 7E, 85
        nop                                             ; 2DEB _ 90
        mov     ebx, dword [ebp-4H]                     ; 2DEC _ 8B. 5D, FC
        leave                                           ; 2DEF _ C9
        ret                                             ; 2DF0 _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2DF1 _ 55
        mov     ebp, esp                                ; 2DF2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2DF4 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2DF7 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2DFD _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2E00 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2E07 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2E0A _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2E11 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2E14 _ C7. 40, 0C, 00000000
        nop                                             ; 2E1B _ 90
        pop     ebp                                     ; 2E1C _ 5D
        ret                                             ; 2E1D _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2E1E _ 55
        mov     ebp, esp                                ; 2E1F _ 89. E5
        sub     esp, 16                                 ; 2E21 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2E24 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2E2B _ C7. 45, FC, 00000000
        jmp     ?_136                                   ; 2E32 _ EB, 14

?_135:  mov     eax, dword [ebp+8H]                     ; 2E34 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2E37 _ 8B. 55, FC
        add     edx, 2                                  ; 2E3A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2E3D _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2E41 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2E44 _ 83. 45, FC, 01
?_136:  mov     eax, dword [ebp+8H]                     ; 2E48 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E4B _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2E4D _ 39. 45, FC
        jl      ?_135                                   ; 2E50 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2E52 _ 8B. 45, F8
        leave                                           ; 2E55 _ C9
        ret                                             ; 2E56 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2E57 _ 55
        mov     ebp, esp                                ; 2E58 _ 89. E5
        sub     esp, 16                                 ; 2E5A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2E5D _ C7. 45, F8, 00000000
        jmp     ?_140                                   ; 2E64 _ E9, 00000085

?_137:  mov     eax, dword [ebp+8H]                     ; 2E69 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E6C _ 8B. 55, F8
        add     edx, 2                                  ; 2E6F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2E72 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2E76 _ 39. 45, 0C
        ja      ?_139                                   ; 2E79 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2E7B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E7E _ 8B. 55, F8
        add     edx, 2                                  ; 2E81 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E84 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2E87 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E8A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E8D _ 8B. 55, F8
        add     edx, 2                                  ; 2E90 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2E93 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2E96 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2E99 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E9C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E9F _ 8B. 55, F8
        add     edx, 2                                  ; 2EA2 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2EA5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2EA8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EAB _ 8B. 55, F8
        add     edx, 2                                  ; 2EAE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2EB1 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2EB5 _ 2B. 45, 0C
        mov     edx, eax                                ; 2EB8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2EBA _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2EBD _ 8B. 4D, F8
        add     ecx, 2                                  ; 2EC0 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2EC3 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2EC7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2ECA _ 8B. 55, F8
        add     edx, 2                                  ; 2ECD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2ED0 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2ED4 _ 85. C0
        jnz     ?_138                                   ; 2ED6 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2ED8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EDB _ 8B. 00
        lea     edx, [eax-1H]                           ; 2EDD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EE0 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2EE3 _ 89. 10
?_138:  mov     eax, dword [ebp-4H]                     ; 2EE5 _ 8B. 45, FC
        jmp     ?_141                                   ; 2EE8 _ EB, 17

?_139:  add     dword [ebp-8H], 1                       ; 2EEA _ 83. 45, F8, 01
?_140:  mov     eax, dword [ebp+8H]                     ; 2EEE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EF1 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2EF3 _ 39. 45, F8
        jl      ?_137                                   ; 2EF6 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2EFC _ B8, 00000000
?_141:  leave                                           ; 2F01 _ C9
        ret                                             ; 2F02 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2F03 _ 55
        mov     ebp, esp                                ; 2F04 _ 89. E5
        sub     esp, 16                                 ; 2F06 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2F09 _ 8B. 45, 0C
        add     eax, 4095                               ; 2F0C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2F11 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2F16 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2F19 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2F1C _ FF. 75, 08
        call    memman_alloc_FF                         ; 2F1F _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2F24 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2F27 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2F2A _ 8B. 45, FC
        leave                                           ; 2F2D _ C9
        ret                                             ; 2F2E _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2F2F _ 55
        mov     ebp, esp                                ; 2F30 _ 89. E5
        push    ebx                                     ; 2F32 _ 53
        sub     esp, 16                                 ; 2F33 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2F36 _ C7. 45, F4, 00000000
        jmp     ?_143                                   ; 2F3D _ EB, 15

?_142:  mov     eax, dword [ebp+8H]                     ; 2F3F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F42 _ 8B. 55, F4
        add     edx, 2                                  ; 2F45 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2F48 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2F4B _ 39. 45, 0C
        jc      ?_144                                   ; 2F4E _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2F50 _ 83. 45, F4, 01
?_143:  mov     eax, dword [ebp+8H]                     ; 2F54 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F57 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2F59 _ 39. 45, F4
        jl      ?_142                                   ; 2F5C _ 7C, E1
        jmp     ?_145                                   ; 2F5E _ EB, 01

?_144:  nop                                             ; 2F60 _ 90
?_145:  cmp     dword [ebp-0CH], 0                      ; 2F61 _ 83. 7D, F4, 00
        jle     ?_147                                   ; 2F65 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2F6B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2F6E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F71 _ 8B. 45, 08
        add     edx, 2                                  ; 2F74 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2F77 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2F7A _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2F7D _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2F80 _ 8B. 45, 08
        add     ecx, 2                                  ; 2F83 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2F86 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2F8A _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2F8C _ 39. 45, 0C
        jne     ?_147                                   ; 2F8F _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2F95 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2F98 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F9B _ 8B. 45, 08
        add     edx, 2                                  ; 2F9E _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2FA1 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2FA5 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2FA8 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2FAB _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2FAE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2FB1 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2FB4 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2FB7 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2FBB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FBE _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2FC0 _ 39. 45, F4
        jge     ?_146                                   ; 2FC3 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2FC5 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2FC8 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2FCB _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2FCE _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2FD1 _ 8B. 55, F4
        add     edx, 2                                  ; 2FD4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2FD7 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2FDA _ 39. C1
        jnz     ?_146                                   ; 2FDC _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2FDE _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2FE1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2FE4 _ 8B. 45, 08
        add     edx, 2                                  ; 2FE7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2FEA _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2FEE _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2FF1 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2FF4 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2FF7 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2FFB _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2FFE _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 3001 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3004 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 3007 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 300A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 300E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3011 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3013 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3016 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 3019 _ 89. 10
?_146:  mov     eax, 0                                  ; 301B _ B8, 00000000
        jmp     ?_153                                   ; 3020 _ E9, 0000011C

?_147:  mov     eax, dword [ebp+8H]                     ; 3025 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3028 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 302A _ 39. 45, F4
        jge     ?_148                                   ; 302D _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 302F _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 3032 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3035 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3038 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 303B _ 8B. 55, F4
        add     edx, 2                                  ; 303E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3041 _ 8B. 04 D0
        cmp     ecx, eax                                ; 3044 _ 39. C1
        jnz     ?_148                                   ; 3046 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 3048 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 304B _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 304E _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 3051 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 3054 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 3057 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 305A _ 8B. 55, F4
        add     edx, 2                                  ; 305D _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 3060 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 3064 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3067 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 306A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 306D _ 8B. 55, F4
        add     edx, 2                                  ; 3070 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 3073 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 3077 _ B8, 00000000
        jmp     ?_153                                   ; 307C _ E9, 000000C0

?_148:  mov     eax, dword [ebp+8H]                     ; 3081 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3084 _ 8B. 00
        cmp     eax, 4095                               ; 3086 _ 3D, 00000FFF
        jg      ?_152                                   ; 308B _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 3091 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3094 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 3096 _ 89. 45, F8
        jmp     ?_150                                   ; 3099 _ EB, 28

?_149:  mov     eax, dword [ebp-8H]                     ; 309B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 309E _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 30A1 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 30A4 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 30A7 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 30AA _ 8B. 45, 08
        add     edx, 2                                  ; 30AD _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 30B0 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 30B3 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 30B5 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 30B8 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 30BB _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 30BF _ 83. 6D, F8, 01
?_150:  mov     eax, dword [ebp-8H]                     ; 30C3 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 30C6 _ 3B. 45, F4
        jg      ?_149                                   ; 30C9 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 30CB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30CE _ 8B. 00
        lea     edx, [eax+1H]                           ; 30D0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 30D3 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 30D6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30D8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30DB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30DE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30E1 _ 8B. 00
        cmp     edx, eax                                ; 30E3 _ 39. C2
        jge     ?_151                                   ; 30E5 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 30E7 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 30EA _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 30EC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 30EF _ 89. 50, 04
?_151:  mov     eax, dword [ebp+8H]                     ; 30F2 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 30F5 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 30F8 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 30FB _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 30FE _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 3101 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 3104 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 3107 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 310A _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 310D _ 89. 54 C8, 04
        mov     eax, 0                                  ; 3111 _ B8, 00000000
        jmp     ?_153                                   ; 3116 _ EB, 29

?_152:  mov     eax, dword [ebp+8H]                     ; 3118 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 311B _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 311E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3121 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3124 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3127 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 312A _ 8B. 40, 08
        mov     edx, eax                                ; 312D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 312F _ 8B. 45, 10
        add     eax, edx                                ; 3132 _ 01. D0
        mov     edx, eax                                ; 3134 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3136 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3139 _ 89. 50, 08
        mov     eax, 4294967295                         ; 313C _ B8, FFFFFFFF
?_153:  add     esp, 16                                 ; 3141 _ 83. C4, 10
        pop     ebx                                     ; 3144 _ 5B
        pop     ebp                                     ; 3145 _ 5D
        ret                                             ; 3146 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 3147 _ 55
        mov     ebp, esp                                ; 3148 _ 89. E5
        sub     esp, 16                                 ; 314A _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 314D _ 8B. 45, 10
        add     eax, 4095                               ; 3150 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3155 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 315A _ 89. 45, 10
        push    dword [ebp+10H]                         ; 315D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 3160 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 3163 _ FF. 75, 08
        call    memman_free                             ; 3166 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 316B _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 316E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3171 _ 8B. 45, FC
        leave                                           ; 3174 _ C9
        ret                                             ; 3175 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 3176 _ 55
        mov     ebp, esp                                ; 3177 _ 89. E5
        sub     esp, 24                                 ; 3179 _ 83. EC, 18
        sub     esp, 8                                  ; 317C _ 83. EC, 08
        push    9232                                    ; 317F _ 68, 00002410
        push    dword [ebp+8H]                          ; 3184 _ FF. 75, 08
        call    memman_alloc_4K                         ; 3187 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 318C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 318F _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 3192 _ 83. 7D, F4, 00
        jnz     ?_154                                   ; 3196 _ 75, 0A
        mov     eax, 0                                  ; 3198 _ B8, 00000000
        jmp     ?_158                                   ; 319D _ E9, 0000009A

?_154:  mov     eax, dword [ebp+10H]                    ; 31A2 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 31A5 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 31A9 _ 83. EC, 08
        push    eax                                     ; 31AC _ 50
        push    dword [ebp+8H]                          ; 31AD _ FF. 75, 08
        call    memman_alloc_4K                         ; 31B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 31B5 _ 83. C4, 10
        mov     edx, eax                                ; 31B8 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 31BA _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 31BD _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 31C0 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 31C3 _ 8B. 40, 04
        test    eax, eax                                ; 31C6 _ 85. C0
        jnz     ?_155                                   ; 31C8 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 31CA _ 8B. 45, F4
        sub     esp, 4                                  ; 31CD _ 83. EC, 04
        push    9232                                    ; 31D0 _ 68, 00002410
        push    eax                                     ; 31D5 _ 50
        push    dword [ebp+8H]                          ; 31D6 _ FF. 75, 08
        call    memman_free_4K                          ; 31D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 31DE _ 83. C4, 10
        mov     eax, 0                                  ; 31E1 _ B8, 00000000
        jmp     ?_158                                   ; 31E6 _ EB, 54

?_155:  mov     eax, dword [ebp-0CH]                    ; 31E8 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 31EB _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 31EE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 31F0 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 31F3 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 31F6 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 31F9 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 31FC _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 31FF _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 3202 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 3205 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 320C _ C7. 45, F0, 00000000
        jmp     ?_157                                   ; 3213 _ EB, 1B

?_156:  mov     eax, dword [ebp-0CH]                    ; 3215 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 3218 _ 8B. 55, F0
        add     edx, 33                                 ; 321B _ 83. C2, 21
        shl     edx, 5                                  ; 321E _ C1. E2, 05
        add     eax, edx                                ; 3221 _ 01. D0
        add     eax, 16                                 ; 3223 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3226 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 322C _ 83. 45, F0, 01
?_157:  cmp     dword [ebp-10H], 255                    ; 3230 _ 81. 7D, F0, 000000FF
        jle     ?_156                                   ; 3237 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 3239 _ 8B. 45, F4
?_158:  leave                                           ; 323C _ C9
        ret                                             ; 323D _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 323E _ 55
        mov     ebp, esp                                ; 323F _ 89. E5
        sub     esp, 16                                 ; 3241 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3244 _ C7. 45, F8, 00000000
        jmp     ?_161                                   ; 324B _ EB, 4B

?_159:  mov     eax, dword [ebp+8H]                     ; 324D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3250 _ 8B. 55, F8
        add     edx, 33                                 ; 3253 _ 83. C2, 21
        shl     edx, 5                                  ; 3256 _ C1. E2, 05
        add     eax, edx                                ; 3259 _ 01. D0
        add     eax, 16                                 ; 325B _ 83. C0, 10
        mov     eax, dword [eax]                        ; 325E _ 8B. 00
        test    eax, eax                                ; 3260 _ 85. C0
        jnz     ?_160                                   ; 3262 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 3264 _ 8B. 45, F8
        shl     eax, 5                                  ; 3267 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 326A _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3270 _ 8B. 45, 08
        add     eax, edx                                ; 3273 _ 01. D0
        add     eax, 4                                  ; 3275 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 3278 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 327B _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 327E _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 3285 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 3288 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 328F _ 8B. 45, FC
        jmp     ?_162                                   ; 3292 _ EB, 12

?_160:  add     dword [ebp-8H], 1                       ; 3294 _ 83. 45, F8, 01
?_161:  cmp     dword [ebp-8H], 255                     ; 3298 _ 81. 7D, F8, 000000FF
        jle     ?_159                                   ; 329F _ 7E, AC
        mov     eax, 0                                  ; 32A1 _ B8, 00000000
?_162:  leave                                           ; 32A6 _ C9
        ret                                             ; 32A7 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 32A8 _ 55
        mov     ebp, esp                                ; 32A9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 32AB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 32AE _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 32B1 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 32B3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 32B6 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 32B9 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 32BC _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 32BF _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 32C2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 32C5 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 32C8 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 32CB _ 89. 50, 14
        nop                                             ; 32CE _ 90
        pop     ebp                                     ; 32CF _ 5D
        ret                                             ; 32D0 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 32D1 _ 55
        mov     ebp, esp                                ; 32D2 _ 89. E5
        push    esi                                     ; 32D4 _ 56
        push    ebx                                     ; 32D5 _ 53
        sub     esp, 32                                 ; 32D6 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 32D9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 32DC _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 32DF _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 32E2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 32E5 _ 8B. 40, 10
        add     eax, 1                                  ; 32E8 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 32EB _ 39. 45, 10
        jle     ?_163                                   ; 32EE _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 32F0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 32F3 _ 8B. 40, 10
        add     eax, 1                                  ; 32F6 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 32F9 _ 89. 45, 10
?_163:  cmp     dword [ebp+10H], -1                     ; 32FC _ 83. 7D, 10, FF
        jge     ?_164                                   ; 3300 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3302 _ C7. 45, 10, FFFFFFFF
?_164:  mov     eax, dword [ebp+0CH]                    ; 3309 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 330C _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 330F _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 3312 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 3315 _ 3B. 45, 10
        jle     ?_171                                   ; 3318 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 331E _ 83. 7D, 10, 00
        js      ?_167                                   ; 3322 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 3328 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 332B _ 89. 45, E4
        jmp     ?_166                                   ; 332E _ EB, 34

?_165:  mov     eax, dword [ebp-1CH]                    ; 3330 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3333 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3336 _ 8B. 45, 08
        add     edx, 4                                  ; 3339 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 333C _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 3340 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 3343 _ 8B. 4D, E4
        add     ecx, 4                                  ; 3346 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3349 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 334D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3350 _ 8B. 55, E4
        add     edx, 4                                  ; 3353 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3356 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 335A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 335D _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3360 _ 83. 6D, E4, 01
?_166:  mov     eax, dword [ebp-1CH]                    ; 3364 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3367 _ 3B. 45, 10
        jg      ?_165                                   ; 336A _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 336C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 336F _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 3372 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3375 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 3378 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 337C _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 337F _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3382 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3385 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3388 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 338B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 338E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3391 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3394 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3397 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 339A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 339D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 33A0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33A3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33A6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 33A9 _ 8B. 40, 0C
        sub     esp, 8                                  ; 33AC _ 83. EC, 08
        push    esi                                     ; 33AF _ 56
        push    ebx                                     ; 33B0 _ 53
        push    ecx                                     ; 33B1 _ 51
        push    edx                                     ; 33B2 _ 52
        push    eax                                     ; 33B3 _ 50
        push    dword [ebp+8H]                          ; 33B4 _ FF. 75, 08
        call    sheet_refreshmap                        ; 33B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 33BC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 33BF _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 33C2 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 33C5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33C8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33CB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 33CE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 33D1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 33D4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 33D7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 33DA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 33DD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 33E0 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 33E3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33E6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33E9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 33EC _ 8B. 40, 0C
        sub     esp, 4                                  ; 33EF _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 33F2 _ FF. 75, F4
        push    esi                                     ; 33F5 _ 56
        push    ebx                                     ; 33F6 _ 53
        push    ecx                                     ; 33F7 _ 51
        push    edx                                     ; 33F8 _ 52
        push    eax                                     ; 33F9 _ 50
        push    dword [ebp+8H]                          ; 33FA _ FF. 75, 08
        call    sheet_refresh_new                       ; 33FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3402 _ 83. C4, 20
        jmp     ?_178                                   ; 3405 _ E9, 00000244

?_167:  mov     eax, dword [ebp+8H]                     ; 340A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 340D _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 3410 _ 39. 45, F4
        jge     ?_170                                   ; 3413 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 3415 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 3418 _ 89. 45, E8
        jmp     ?_169                                   ; 341B _ EB, 34

?_168:  mov     eax, dword [ebp-18H]                    ; 341D _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 3420 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3423 _ 8B. 45, 08
        add     edx, 4                                  ; 3426 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3429 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 342D _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 3430 _ 8B. 4D, E8
        add     ecx, 4                                  ; 3433 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3436 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 343A _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 343D _ 8B. 55, E8
        add     edx, 4                                  ; 3440 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3443 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 3447 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 344A _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 344D _ 83. 45, E8, 01
?_169:  mov     eax, dword [ebp+8H]                     ; 3451 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3454 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 3457 _ 39. 45, E8
        jl      ?_168                                   ; 345A _ 7C, C1
?_170:  mov     eax, dword [ebp+8H]                     ; 345C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 345F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3462 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3465 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3468 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 346B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 346E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3471 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3474 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3477 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 347A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 347D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3480 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3483 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3486 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3489 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 348C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 348F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3492 _ 8B. 40, 0C
        sub     esp, 8                                  ; 3495 _ 83. EC, 08
        push    0                                       ; 3498 _ 6A, 00
        push    ebx                                     ; 349A _ 53
        push    ecx                                     ; 349B _ 51
        push    edx                                     ; 349C _ 52
        push    eax                                     ; 349D _ 50
        push    dword [ebp+8H]                          ; 349E _ FF. 75, 08
        call    sheet_refreshmap                        ; 34A1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 34A6 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 34A9 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 34AC _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 34AF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34B2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34B5 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 34B8 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 34BB _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 34BE _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34C1 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 34C4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 34C7 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 34CA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 34CD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34D0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34D3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 34D6 _ 8B. 40, 0C
        sub     esp, 4                                  ; 34D9 _ 83. EC, 04
        push    esi                                     ; 34DC _ 56
        push    0                                       ; 34DD _ 6A, 00
        push    ebx                                     ; 34DF _ 53
        push    ecx                                     ; 34E0 _ 51
        push    edx                                     ; 34E1 _ 52
        push    eax                                     ; 34E2 _ 50
        push    dword [ebp+8H]                          ; 34E3 _ FF. 75, 08
        call    sheet_refresh_new                       ; 34E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 34EB _ 83. C4, 20
        jmp     ?_178                                   ; 34EE _ E9, 0000015B

?_171:  mov     eax, dword [ebp-0CH]                    ; 34F3 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 34F6 _ 3B. 45, 10
        jge     ?_178                                   ; 34F9 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 34FF _ 83. 7D, F4, 00
        js      ?_174                                   ; 3503 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 3505 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 3508 _ 89. 45, EC
        jmp     ?_173                                   ; 350B _ EB, 34

?_172:  mov     eax, dword [ebp-14H]                    ; 350D _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 3510 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3513 _ 8B. 45, 08
        add     edx, 4                                  ; 3516 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3519 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 351D _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 3520 _ 8B. 4D, EC
        add     ecx, 4                                  ; 3523 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3526 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 352A _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 352D _ 8B. 55, EC
        add     edx, 4                                  ; 3530 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3533 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 3537 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 353A _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 353D _ 83. 45, EC, 01
?_173:  mov     eax, dword [ebp-14H]                    ; 3541 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 3544 _ 3B. 45, 10
        jl      ?_172                                   ; 3547 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 3549 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 354C _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 354F _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3552 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 3555 _ 89. 54 88, 04
        jmp     ?_177                                   ; 3559 _ EB, 72

?_174:  cmp     dword [ebp-0CH], 0                      ; 355B _ 83. 7D, F4, 00
        jns     ?_177                                   ; 355F _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 3561 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3564 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 3567 _ 89. 45, F0
        jmp     ?_176                                   ; 356A _ EB, 3A

?_175:  mov     eax, dword [ebp-10H]                    ; 356C _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 356F _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3572 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 3575 _ 8B. 55, F0
        add     edx, 4                                  ; 3578 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 357B _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 357F _ 8B. 45, 08
        add     ecx, 4                                  ; 3582 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3585 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 3589 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 358C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 358F _ 8B. 45, 08
        add     edx, 4                                  ; 3592 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3595 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 3599 _ 8B. 55, F0
        add     edx, 1                                  ; 359C _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 359F _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 35A2 _ 83. 6D, F0, 01
?_176:  mov     eax, dword [ebp-10H]                    ; 35A6 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 35A9 _ 3B. 45, 10
        jge     ?_175                                   ; 35AC _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 35AE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 35B1 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 35B4 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 35B7 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 35BA _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 35BE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 35C1 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 35C4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 35C7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 35CA _ 89. 50, 10
?_177:  mov     eax, dword [ebp+0CH]                    ; 35CD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35D0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35D3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 35D6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 35D9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 35DC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 35DF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 35E2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 35E5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 35E8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 35EB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35EE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 35F1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 35F4 _ 8B. 40, 0C
        sub     esp, 8                                  ; 35F7 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 35FA _ FF. 75, 10
        push    ebx                                     ; 35FD _ 53
        push    ecx                                     ; 35FE _ 51
        push    edx                                     ; 35FF _ 52
        push    eax                                     ; 3600 _ 50
        push    dword [ebp+8H]                          ; 3601 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3604 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3609 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 360C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 360F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3612 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3615 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3618 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 361B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 361E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3621 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3624 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3627 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 362A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 362D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3630 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3633 _ 8B. 40, 0C
        sub     esp, 4                                  ; 3636 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 3639 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 363C _ FF. 75, 10
        push    ebx                                     ; 363F _ 53
        push    ecx                                     ; 3640 _ 51
        push    edx                                     ; 3641 _ 52
        push    eax                                     ; 3642 _ 50
        push    dword [ebp+8H]                          ; 3643 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3646 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 364B _ 83. C4, 20
?_178:  nop                                             ; 364E _ 90
        lea     esp, [ebp-8H]                           ; 364F _ 8D. 65, F8
        pop     ebx                                     ; 3652 _ 5B
        pop     esi                                     ; 3653 _ 5E
        pop     ebp                                     ; 3654 _ 5D
        ret                                             ; 3655 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 3656 _ 55
        mov     ebp, esp                                ; 3657 _ 89. E5
        push    edi                                     ; 3659 _ 57
        push    esi                                     ; 365A _ 56
        push    ebx                                     ; 365B _ 53
        sub     esp, 28                                 ; 365C _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 365F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3662 _ 8B. 40, 18
        test    eax, eax                                ; 3665 _ 85. C0
        js      ?_179                                   ; 3667 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 3669 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 366C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 366F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3672 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3675 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3678 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 367B _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 367E _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 3681 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3684 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3687 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 368A _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 368D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3690 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3693 _ 8B. 45, 14
        add     edx, eax                                ; 3696 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3698 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 369B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 369E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 36A1 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 36A4 _ 03. 45, E4
        sub     esp, 4                                  ; 36A7 _ 83. EC, 04
        push    ebx                                     ; 36AA _ 53
        push    ecx                                     ; 36AB _ 51
        push    edi                                     ; 36AC _ 57
        push    esi                                     ; 36AD _ 56
        push    edx                                     ; 36AE _ 52
        push    eax                                     ; 36AF _ 50
        push    dword [ebp+8H]                          ; 36B0 _ FF. 75, 08
        call    sheet_refresh_new                       ; 36B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 36B8 _ 83. C4, 20
?_179:  mov     eax, 0                                  ; 36BB _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 36C0 _ 8D. 65, F4
        pop     ebx                                     ; 36C3 _ 5B
        pop     esi                                     ; 36C4 _ 5E
        pop     edi                                     ; 36C5 _ 5F
        pop     ebp                                     ; 36C6 _ 5D
        ret                                             ; 36C7 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 36C8 _ 55
        mov     ebp, esp                                ; 36C9 _ 89. E5
        push    esi                                     ; 36CB _ 56
        push    ebx                                     ; 36CC _ 53
        sub     esp, 16                                 ; 36CD _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 36D0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 36D3 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 36D6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 36D9 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 36DC _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 36DF _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 36E2 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 36E5 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 36E8 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 36EB _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 36EE _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 36F1 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36F4 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 36F7 _ 8B. 40, 18
        test    eax, eax                                ; 36FA _ 85. C0
        js      ?_180                                   ; 36FC _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 3702 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3705 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3708 _ 8B. 45, F4
        add     edx, eax                                ; 370B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 370D _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3710 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 3713 _ 8B. 45, F0
        add     eax, ecx                                ; 3716 _ 01. C8
        sub     esp, 8                                  ; 3718 _ 83. EC, 08
        push    0                                       ; 371B _ 6A, 00
        push    edx                                     ; 371D _ 52
        push    eax                                     ; 371E _ 50
        push    dword [ebp-0CH]                         ; 371F _ FF. 75, F4
        push    dword [ebp-10H]                         ; 3722 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 3725 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3728 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 372D _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3730 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3733 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 3736 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 3739 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 373C _ 8B. 55, 14
        add     ecx, edx                                ; 373F _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 3741 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 3744 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 3747 _ 8B. 55, 10
        add     edx, ebx                                ; 374A _ 01. DA
        sub     esp, 8                                  ; 374C _ 83. EC, 08
        push    eax                                     ; 374F _ 50
        push    ecx                                     ; 3750 _ 51
        push    edx                                     ; 3751 _ 52
        push    dword [ebp+14H]                         ; 3752 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3755 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3758 _ FF. 75, 08
        call    sheet_refreshmap                        ; 375B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3760 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3763 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3766 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3769 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 376C _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 376F _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3772 _ 8B. 45, F4
        add     edx, eax                                ; 3775 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3777 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 377A _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 377D _ 8B. 45, F0
        add     eax, ebx                                ; 3780 _ 01. D8
        sub     esp, 4                                  ; 3782 _ 83. EC, 04
        push    ecx                                     ; 3785 _ 51
        push    0                                       ; 3786 _ 6A, 00
        push    edx                                     ; 3788 _ 52
        push    eax                                     ; 3789 _ 50
        push    dword [ebp-0CH]                         ; 378A _ FF. 75, F4
        push    dword [ebp-10H]                         ; 378D _ FF. 75, F0
        push    dword [ebp+8H]                          ; 3790 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3793 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3798 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 379B _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 379E _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 37A1 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 37A4 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 37A7 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 37AA _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 37AD _ 8B. 4D, 14
        add     ebx, ecx                                ; 37B0 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 37B2 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 37B5 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 37B8 _ 8B. 4D, 10
        add     ecx, esi                                ; 37BB _ 01. F1
        sub     esp, 4                                  ; 37BD _ 83. EC, 04
        push    edx                                     ; 37C0 _ 52
        push    eax                                     ; 37C1 _ 50
        push    ebx                                     ; 37C2 _ 53
        push    ecx                                     ; 37C3 _ 51
        push    dword [ebp+14H]                         ; 37C4 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 37C7 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 37CA _ FF. 75, 08
        call    sheet_refresh_new                       ; 37CD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 37D2 _ 83. C4, 20
?_180:  nop                                             ; 37D5 _ 90
        lea     esp, [ebp-8H]                           ; 37D6 _ 8D. 65, F8
        pop     ebx                                     ; 37D9 _ 5B
        pop     esi                                     ; 37DA _ 5E
        pop     ebp                                     ; 37DB _ 5D
        ret                                             ; 37DC _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 37DD _ 55
        mov     ebp, esp                                ; 37DE _ 89. E5
        sub     esp, 48                                 ; 37E0 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 37E3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 37E6 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 37E8 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 37EB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 37EE _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 37F1 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 37F4 _ 83. 7D, 0C, 00
        jns     ?_181                                   ; 37F8 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 37FA _ C7. 45, 0C, 00000000
?_181:  cmp     dword [ebp+10H], 8                      ; 3801 _ 83. 7D, 10, 08
        jg      ?_182                                   ; 3805 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3807 _ C7. 45, 10, 00000000
?_182:  mov     eax, dword [ebp+8H]                     ; 380E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3811 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3814 _ 39. 45, 14
        jle     ?_183                                   ; 3817 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3819 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 381C _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 381F _ 89. 45, 14
?_183:  mov     eax, dword [ebp+8H]                     ; 3822 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3825 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3828 _ 39. 45, 18
        jle     ?_184                                   ; 382B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 382D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3830 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3833 _ 89. 45, 18
?_184:  mov     eax, dword [ebp+1CH]                    ; 3836 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 3839 _ 89. 45, DC
        jmp     ?_191                                   ; 383C _ E9, 00000118

?_185:  mov     eax, dword [ebp+8H]                     ; 3841 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 3844 _ 8B. 55, DC
        add     edx, 4                                  ; 3847 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 384A _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 384E _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3851 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3854 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3856 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3859 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 385C _ 8B. 55, 08
        add     edx, 1044                               ; 385F _ 81. C2, 00000414
        sub     eax, edx                                ; 3865 _ 29. D0
        sar     eax, 5                                  ; 3867 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 386A _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 386D _ C7. 45, E0, 00000000
        jmp     ?_190                                   ; 3874 _ E9, 000000CD

?_186:  mov     eax, dword [ebp-10H]                    ; 3879 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 387C _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 387F _ 8B. 45, E0
        add     eax, edx                                ; 3882 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 3884 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 3887 _ C7. 45, E4, 00000000
        jmp     ?_189                                   ; 388E _ E9, 000000A0

?_187:  mov     eax, dword [ebp-10H]                    ; 3893 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3896 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 3899 _ 8B. 45, E4
        add     eax, edx                                ; 389C _ 01. D0
        mov     dword [ebp-4H], eax                     ; 389E _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 38A1 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 38A4 _ 3B. 45, FC
        jg      ?_188                                   ; 38A7 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 38AD _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 38B0 _ 3B. 45, 14
        jge     ?_188                                   ; 38B3 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 38B5 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 38B8 _ 3B. 45, F8
        jg      ?_188                                   ; 38BB _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 38BD _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 38C0 _ 3B. 45, 18
        jge     ?_188                                   ; 38C3 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 38C5 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 38C8 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 38CB _ 0F AF. 45, E0
        mov     edx, eax                                ; 38CF _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 38D1 _ 8B. 45, E4
        add     eax, edx                                ; 38D4 _ 01. D0
        mov     edx, eax                                ; 38D6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 38D8 _ 8B. 45, F4
        add     eax, edx                                ; 38DB _ 01. D0
        movzx   eax, byte [eax]                         ; 38DD _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 38E0 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 38E3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 38E6 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 38E9 _ 0F AF. 45, F8
        mov     edx, eax                                ; 38ED _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 38EF _ 8B. 45, FC
        add     eax, edx                                ; 38F2 _ 01. D0
        mov     edx, eax                                ; 38F4 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 38F6 _ 8B. 45, EC
        add     eax, edx                                ; 38F9 _ 01. D0
        movzx   eax, byte [eax]                         ; 38FB _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 38FE _ 38. 45, DA
        jnz     ?_188                                   ; 3901 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3903 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 3907 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 390A _ 8B. 40, 14
        cmp     edx, eax                                ; 390D _ 39. C2
        jz      ?_188                                   ; 390F _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3911 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3914 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3917 _ 0F AF. 45, F8
        mov     edx, eax                                ; 391B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 391D _ 8B. 45, FC
        add     eax, edx                                ; 3920 _ 01. D0
        mov     edx, eax                                ; 3922 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3924 _ 8B. 45, E8
        add     edx, eax                                ; 3927 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3929 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 392D _ 88. 02
?_188:  add     dword [ebp-1CH], 1                      ; 392F _ 83. 45, E4, 01
?_189:  mov     eax, dword [ebp-10H]                    ; 3933 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3936 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 3939 _ 39. 45, E4
        jl      ?_187                                   ; 393C _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 3942 _ 83. 45, E0, 01
?_190:  mov     eax, dword [ebp-10H]                    ; 3946 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3949 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 394C _ 39. 45, E0
        jl      ?_186                                   ; 394F _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 3955 _ 83. 45, DC, 01
?_191:  mov     eax, dword [ebp-24H]                    ; 3959 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 395C _ 3B. 45, 20
        jle     ?_185                                   ; 395F _ 0F 8E, FFFFFEDC
        nop                                             ; 3965 _ 90
        leave                                           ; 3966 _ C9
        ret                                             ; 3967 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 3968 _ 55
        mov     ebp, esp                                ; 3969 _ 89. E5
        sub     esp, 64                                 ; 396B _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 396E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3971 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3974 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3977 _ 83. 7D, 0C, 00
        jns     ?_192                                   ; 397B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 397D _ C7. 45, 0C, 00000000
?_192:  mov     eax, dword [ebp+8H]                     ; 3984 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3987 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 398A _ 39. 45, 0C
        jle     ?_193                                   ; 398D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 398F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3992 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 3995 _ 89. 45, 0C
?_193:  cmp     dword [ebp+10H], 0                      ; 3998 _ 83. 7D, 10, 00
        jns     ?_194                                   ; 399C _ 79, 07
        mov     dword [ebp+10H], 0                      ; 399E _ C7. 45, 10, 00000000
?_194:  mov     eax, dword [ebp+8H]                     ; 39A5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 39A8 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 39AB _ 39. 45, 10
        jle     ?_195                                   ; 39AE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 39B0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 39B3 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 39B6 _ 89. 45, 10
?_195:  mov     eax, dword [ebp+1CH]                    ; 39B9 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 39BC _ 89. 45, E0
        jmp     ?_206                                   ; 39BF _ E9, 00000140

?_196:  mov     eax, dword [ebp+8H]                     ; 39C4 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 39C7 _ 8B. 55, E0
        add     edx, 4                                  ; 39CA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 39CD _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 39D1 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 39D4 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 39D7 _ 8B. 55, 08
        add     edx, 1044                               ; 39DA _ 81. C2, 00000414
        sub     eax, edx                                ; 39E0 _ 29. D0
        sar     eax, 5                                  ; 39E2 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 39E5 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 39E8 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 39EB _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 39ED _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 39F0 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 39F3 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 39F6 _ 8B. 55, 0C
        sub     edx, eax                                ; 39F9 _ 29. C2
        mov     eax, edx                                ; 39FB _ 89. D0
        mov     dword [ebp-30H], eax                    ; 39FD _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3A00 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3A03 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3A06 _ 8B. 55, 10
        sub     edx, eax                                ; 3A09 _ 29. C2
        mov     eax, edx                                ; 3A0B _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 3A0D _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 3A10 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3A13 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3A16 _ 8B. 55, 14
        sub     edx, eax                                ; 3A19 _ 29. C2
        mov     eax, edx                                ; 3A1B _ 89. D0
        mov     dword [ebp-28H], eax                    ; 3A1D _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 3A20 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3A23 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3A26 _ 8B. 55, 18
        sub     edx, eax                                ; 3A29 _ 29. C2
        mov     eax, edx                                ; 3A2B _ 89. D0
        mov     dword [ebp-24H], eax                    ; 3A2D _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 3A30 _ 83. 7D, D0, 00
        jns     ?_197                                   ; 3A34 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 3A36 _ C7. 45, D0, 00000000
?_197:  cmp     dword [ebp-2CH], 0                      ; 3A3D _ 83. 7D, D4, 00
        jns     ?_198                                   ; 3A41 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 3A43 _ C7. 45, D4, 00000000
?_198:  mov     eax, dword [ebp-10H]                    ; 3A4A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3A4D _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 3A50 _ 39. 45, D8
        jle     ?_199                                   ; 3A53 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3A55 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3A58 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 3A5B _ 89. 45, D8
?_199:  mov     eax, dword [ebp-10H]                    ; 3A5E _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3A61 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 3A64 _ 39. 45, DC
        jle     ?_200                                   ; 3A67 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3A69 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3A6C _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 3A6F _ 89. 45, DC
?_200:  mov     eax, dword [ebp-2CH]                    ; 3A72 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 3A75 _ 89. 45, E4
        jmp     ?_205                                   ; 3A78 _ EB, 7A

?_201:  mov     eax, dword [ebp-10H]                    ; 3A7A _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 3A7D _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 3A80 _ 8B. 45, E4
        add     eax, edx                                ; 3A83 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 3A85 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 3A88 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 3A8B _ 89. 45, E8
        jmp     ?_204                                   ; 3A8E _ EB, 58

?_202:  mov     eax, dword [ebp-10H]                    ; 3A90 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3A93 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 3A96 _ 8B. 45, E8
        add     eax, edx                                ; 3A99 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 3A9B _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 3A9E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3AA1 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 3AA4 _ 0F AF. 45, E4
        mov     edx, eax                                ; 3AA8 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3AAA _ 8B. 45, E8
        add     eax, edx                                ; 3AAD _ 01. D0
        mov     edx, eax                                ; 3AAF _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3AB1 _ 8B. 45, F4
        add     eax, edx                                ; 3AB4 _ 01. D0
        movzx   eax, byte [eax]                         ; 3AB6 _ 0F B6. 00
        movzx   edx, al                                 ; 3AB9 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 3ABC _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3ABF _ 8B. 40, 14
        cmp     edx, eax                                ; 3AC2 _ 39. C2
        jz      ?_203                                   ; 3AC4 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3AC6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3AC9 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3ACC _ 0F AF. 45, F8
        mov     edx, eax                                ; 3AD0 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3AD2 _ 8B. 45, FC
        add     eax, edx                                ; 3AD5 _ 01. D0
        mov     edx, eax                                ; 3AD7 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3AD9 _ 8B. 45, EC
        add     edx, eax                                ; 3ADC _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 3ADE _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 3AE2 _ 88. 02
?_203:  add     dword [ebp-18H], 1                      ; 3AE4 _ 83. 45, E8, 01
?_204:  mov     eax, dword [ebp-18H]                    ; 3AE8 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 3AEB _ 3B. 45, D8
        jl      ?_202                                   ; 3AEE _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3AF0 _ 83. 45, E4, 01
?_205:  mov     eax, dword [ebp-1CH]                    ; 3AF4 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 3AF7 _ 3B. 45, DC
        jl      ?_201                                   ; 3AFA _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 3B00 _ 83. 45, E0, 01
?_206:  mov     eax, dword [ebp+8H]                     ; 3B04 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3B07 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3B0A _ 39. 45, E0
        jle     ?_196                                   ; 3B0D _ 0F 8E, FFFFFEB1
        nop                                             ; 3B13 _ 90
        leave                                           ; 3B14 _ C9
        ret                                             ; 3B15 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 3B16 _ 55
        mov     ebp, esp                                ; 3B17 _ 89. E5
        sub     esp, 24                                 ; 3B19 _ 83. EC, 18
        sub     esp, 8                                  ; 3B1C _ 83. EC, 08
        push    52                                      ; 3B1F _ 6A, 34
        push    67                                      ; 3B21 _ 6A, 43
        call    io_out8                                 ; 3B23 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B28 _ 83. C4, 10
        sub     esp, 8                                  ; 3B2B _ 83. EC, 08
        push    156                                     ; 3B2E _ 68, 0000009C
        push    64                                      ; 3B33 _ 6A, 40
        call    io_out8                                 ; 3B35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B3A _ 83. C4, 10
        sub     esp, 8                                  ; 3B3D _ 83. EC, 08
        push    46                                      ; 3B40 _ 6A, 2E
        push    64                                      ; 3B42 _ 6A, 40
        call    io_out8                                 ; 3B44 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B49 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3B4C _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3B56 _ C7. 45, F4, 00000000
        jmp     ?_208                                   ; 3B5D _ EB, 26

?_207:  mov     eax, dword [ebp-0CH]                    ; 3B5F _ 8B. 45, F4
        shl     eax, 4                                  ; 3B62 _ C1. E0, 04
        add     eax, ?_283                              ; 3B65 _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 3B6A _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3B70 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B73 _ C1. E0, 04
        add     eax, ?_284                              ; 3B76 _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 3B7B _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3B81 _ 83. 45, F4, 01
?_208:  cmp     dword [ebp-0CH], 499                    ; 3B85 _ 81. 7D, F4, 000001F3
        jle     ?_207                                   ; 3B8C _ 7E, D1
        nop                                             ; 3B8E _ 90
        leave                                           ; 3B8F _ C9
        ret                                             ; 3B90 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3B91 _ 55
        mov     ebp, esp                                ; 3B92 _ 89. E5
        sub     esp, 16                                 ; 3B94 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3B97 _ C7. 45, FC, 00000000
        jmp     ?_211                                   ; 3B9E _ EB, 36

?_209:  mov     eax, dword [ebp-4H]                     ; 3BA0 _ 8B. 45, FC
        shl     eax, 4                                  ; 3BA3 _ C1. E0, 04
        add     eax, ?_283                              ; 3BA6 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3BAB _ 8B. 00
        test    eax, eax                                ; 3BAD _ 85. C0
        jnz     ?_210                                   ; 3BAF _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3BB1 _ 8B. 45, FC
        shl     eax, 4                                  ; 3BB4 _ C1. E0, 04
        add     eax, ?_283                              ; 3BB7 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3BBC _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3BC2 _ 8B. 45, FC
        shl     eax, 4                                  ; 3BC5 _ C1. E0, 04
        add     eax, timerctl                           ; 3BC8 _ 05, 000002A0(d)
        add     eax, 4                                  ; 3BCD _ 83. C0, 04
        jmp     ?_212                                   ; 3BD0 _ EB, 12

?_210:  add     dword [ebp-4H], 1                       ; 3BD2 _ 83. 45, FC, 01
?_211:  cmp     dword [ebp-4H], 499                     ; 3BD6 _ 81. 7D, FC, 000001F3
        jle     ?_209                                   ; 3BDD _ 7E, C1
        mov     eax, 0                                  ; 3BDF _ B8, 00000000
?_212:  leave                                           ; 3BE4 _ C9
        ret                                             ; 3BE5 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3BE6 _ 55
        mov     ebp, esp                                ; 3BE7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3BE9 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3BEC _ C7. 40, 04, 00000000
        nop                                             ; 3BF3 _ 90
        pop     ebp                                     ; 3BF4 _ 5D
        ret                                             ; 3BF5 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3BF6 _ 55
        mov     ebp, esp                                ; 3BF7 _ 89. E5
        sub     esp, 4                                  ; 3BF9 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3BFC _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3BFF _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3C02 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C05 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3C08 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3C0B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3C0E _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3C12 _ 88. 50, 0C
        nop                                             ; 3C15 _ 90
        leave                                           ; 3C16 _ C9
        ret                                             ; 3C17 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3C18 _ 55
        mov     ebp, esp                                ; 3C19 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3C1B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C1E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3C21 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3C23 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3C26 _ C7. 40, 04, 00000002
        nop                                             ; 3C2D _ 90
        pop     ebp                                     ; 3C2E _ 5D
        ret                                             ; 3C2F _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3C30 _ 55
        mov     ebp, esp                                ; 3C31 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3C33 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C36 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3C39 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3C3B _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3C3E _ C7. 40, 04, 00000002
        nop                                             ; 3C45 _ 90
        pop     ebp                                     ; 3C46 _ 5D
        ret                                             ; 3C47 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 3C48 _ 55
        mov     ebp, esp                                ; 3C49 _ 89. E5
        mov     eax, timerctl                           ; 3C4B _ B8, 000002A0(d)
        pop     ebp                                     ; 3C50 _ 5D
        ret                                             ; 3C51 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3C52 _ 55
        mov     ebp, esp                                ; 3C53 _ 89. E5
        push    ebx                                     ; 3C55 _ 53
        sub     esp, 20                                 ; 3C56 _ 83. EC, 14
        sub     esp, 8                                  ; 3C59 _ 83. EC, 08
        push    32                                      ; 3C5C _ 6A, 20
        push    32                                      ; 3C5E _ 6A, 20
        call    io_out8                                 ; 3C60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C65 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 3C68 _ A1, 000002A0(d)
        add     eax, 1                                  ; 3C6D _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3C70 _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 3C75 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3C7C _ C7. 45, F4, 00000000
        jmp     ?_216                                   ; 3C83 _ E9, 000000AD

?_213:  mov     eax, dword [ebp-0CH]                    ; 3C88 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C8B _ C1. E0, 04
        add     eax, ?_283                              ; 3C8E _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3C93 _ 8B. 00
        cmp     eax, 2                                  ; 3C95 _ 83. F8, 02
        jne     ?_214                                   ; 3C98 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 3C9E _ 8B. 45, F4
        shl     eax, 4                                  ; 3CA1 _ C1. E0, 04
        add     eax, ?_282                              ; 3CA4 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3CA9 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3CAB _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3CAE _ 8B. 45, F4
        shl     eax, 4                                  ; 3CB1 _ C1. E0, 04
        add     eax, ?_282                              ; 3CB4 _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 3CB9 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3CBB _ 8B. 45, F4
        shl     eax, 4                                  ; 3CBE _ C1. E0, 04
        add     eax, ?_282                              ; 3CC1 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3CC6 _ 8B. 00
        test    eax, eax                                ; 3CC8 _ 85. C0
        jnz     ?_214                                   ; 3CCA _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 3CCC _ 8B. 45, F4
        shl     eax, 4                                  ; 3CCF _ C1. E0, 04
        add     eax, ?_283                              ; 3CD2 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3CD7 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3CDD _ 8B. 45, F4
        shl     eax, 4                                  ; 3CE0 _ C1. E0, 04
        add     eax, ?_285                              ; 3CE3 _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 3CE8 _ 0F B6. 00
        movzx   edx, al                                 ; 3CEB _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3CEE _ 8B. 45, F4
        shl     eax, 4                                  ; 3CF1 _ C1. E0, 04
        add     eax, ?_284                              ; 3CF4 _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 3CF9 _ 8B. 00
        sub     esp, 8                                  ; 3CFB _ 83. EC, 08
        push    edx                                     ; 3CFE _ 52
        push    eax                                     ; 3CFF _ 50
        call    fifo8_put                               ; 3D00 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D05 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3D08 _ 8B. 45, F4
        shl     eax, 4                                  ; 3D0B _ C1. E0, 04
        add     eax, timerctl                           ; 3D0E _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 3D13 _ 8D. 58, 04
        call    getTaskTimer                            ; 3D16 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3D1B _ 39. C3
        jnz     ?_214                                   ; 3D1D _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3D1F _ C7. 45, F0, 00000001
?_214:  cmp     dword [ebp-10H], 1                      ; 3D26 _ 83. 7D, F0, 01
        jnz     ?_215                                   ; 3D2A _ 75, 05
        call    task_switch                             ; 3D2C _ E8, FFFFFFFC(rel)
?_215:  add     dword [ebp-0CH], 1                      ; 3D31 _ 83. 45, F4, 01
?_216:  cmp     dword [ebp-0CH], 499                    ; 3D35 _ 81. 7D, F4, 000001F3
        jle     ?_213                                   ; 3D3C _ 0F 8E, FFFFFF46
        nop                                             ; 3D42 _ 90
        mov     ebx, dword [ebp-4H]                     ; 3D43 _ 8B. 5D, FC
        leave                                           ; 3D46 _ C9
        ret                                             ; 3D47 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 3D48 _ 55
        mov     ebp, esp                                ; 3D49 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3D4B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3D4E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3D51 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3D54 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3D57 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3D5A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3D5C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3D5F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3D62 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3D65 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3D68 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D6F _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3D72 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D79 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3D7C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3D83 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3D86 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3D89 _ 89. 50, 18
        nop                                             ; 3D8C _ 90
        pop     ebp                                     ; 3D8D _ 5D
        ret                                             ; 3D8E _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3D8F _ 55
        mov     ebp, esp                                ; 3D90 _ 89. E5
        sub     esp, 24                                 ; 3D92 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3D95 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3D98 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3D9B _ 83. 7D, 08, 00
        jnz     ?_217                                   ; 3D9F _ 75, 0A
        mov     eax, 4294967295                         ; 3DA1 _ B8, FFFFFFFF
        jmp     ?_221                                   ; 3DA6 _ E9, 000000A0

?_217:  mov     eax, dword [ebp+8H]                     ; 3DAB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3DAE _ 8B. 40, 10
        test    eax, eax                                ; 3DB1 _ 85. C0
        jnz     ?_218                                   ; 3DB3 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3DB5 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3DB8 _ 8B. 40, 14
        or      eax, 01H                                ; 3DBB _ 83. C8, 01
        mov     edx, eax                                ; 3DBE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3DC0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3DC3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3DC6 _ B8, FFFFFFFF
        jmp     ?_221                                   ; 3DCB _ EB, 7E

?_218:  mov     eax, dword [ebp+8H]                     ; 3DCD _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3DD0 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3DD2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3DD5 _ 8B. 40, 08
        add     edx, eax                                ; 3DD8 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3DDA _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3DDE _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3DE0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3DE3 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3DE6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3DE9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3DEC _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3DEF _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3DF2 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3DF5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DF8 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3DFB _ 39. C2
        jl      ?_219                                   ; 3DFD _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3DFF _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3E02 _ C7. 40, 08, 00000000
?_219:  mov     eax, dword [ebp+8H]                     ; 3E09 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3E0C _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3E0F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E12 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3E15 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3E18 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3E1B _ 8B. 40, 18
        test    eax, eax                                ; 3E1E _ 85. C0
        jz      ?_220                                   ; 3E20 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3E22 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3E25 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3E28 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3E2B _ 83. F8, 02
        jz      ?_220                                   ; 3E2E _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3E30 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3E33 _ 8B. 40, 18
        sub     esp, 4                                  ; 3E36 _ 83. EC, 04
        push    0                                       ; 3E39 _ 6A, 00
        push    -1                                      ; 3E3B _ 6A, FF
        push    eax                                     ; 3E3D _ 50
        call    task_run                                ; 3E3E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3E43 _ 83. C4, 10
?_220:  mov     eax, 1                                  ; 3E46 _ B8, 00000001
?_221:  leave                                           ; 3E4B _ C9
        ret                                             ; 3E4C _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3E4D _ 55
        mov     ebp, esp                                ; 3E4E _ 89. E5
        sub     esp, 16                                 ; 3E50 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3E53 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3E56 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3E59 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E5C _ 8B. 40, 0C
        cmp     edx, eax                                ; 3E5F _ 39. C2
        jnz     ?_222                                   ; 3E61 _ 75, 07
        mov     eax, 4294967295                         ; 3E63 _ B8, FFFFFFFF
        jmp     ?_224                                   ; 3E68 _ EB, 51

?_222:  mov     eax, dword [ebp+8H]                     ; 3E6A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3E6D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3E6F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3E72 _ 8B. 40, 04
        add     eax, edx                                ; 3E75 _ 01. D0
        movzx   eax, byte [eax]                         ; 3E77 _ 0F B6. 00
        movzx   eax, al                                 ; 3E7A _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3E7D _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3E80 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3E83 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3E86 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3E89 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3E8C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E8F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3E92 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E95 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E98 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3E9B _ 39. C2
        jl      ?_223                                   ; 3E9D _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3E9F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3EA2 _ C7. 40, 04, 00000000
?_223:  mov     eax, dword [ebp+8H]                     ; 3EA9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3EAC _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3EAF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3EB2 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3EB5 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3EB8 _ 8B. 45, FC
?_224:  leave                                           ; 3EBB _ C9
        ret                                             ; 3EBC _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3EBD _ 55
        mov     ebp, esp                                ; 3EBE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3EC0 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3EC3 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3EC6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3EC9 _ 8B. 40, 10
        sub     edx, eax                                ; 3ECC _ 29. C2
        mov     eax, edx                                ; 3ECE _ 89. D0
        pop     ebp                                     ; 3ED0 _ 5D
        ret                                             ; 3ED1 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3ED2 _ 55
        mov     ebp, esp                                ; 3ED3 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3ED5 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_225                                   ; 3EDC _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3EDE _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3EE5 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3EE8 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3EEB _ 89. 45, 0C
?_225:  mov     eax, dword [ebp+0CH]                    ; 3EEE _ 8B. 45, 0C
        mov     edx, eax                                ; 3EF1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3EF3 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3EF6 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3EF9 _ 8B. 45, 10
        mov     edx, eax                                ; 3EFC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3EFE _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3F01 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3F05 _ 8B. 45, 10
        sar     eax, 16                                 ; 3F08 _ C1. F8, 10
        mov     edx, eax                                ; 3F0B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3F0D _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3F10 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3F13 _ 8B. 45, 14
        mov     edx, eax                                ; 3F16 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3F18 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3F1B _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3F1E _ 8B. 45, 0C
        shr     eax, 16                                 ; 3F21 _ C1. E8, 10
        and     eax, 0FH                                ; 3F24 _ 83. E0, 0F
        mov     edx, eax                                ; 3F27 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3F29 _ 8B. 45, 14
        sar     eax, 8                                  ; 3F2C _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3F2F _ 83. E0, F0
        or      eax, edx                                ; 3F32 _ 09. D0
        mov     edx, eax                                ; 3F34 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3F36 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3F39 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3F3C _ 8B. 45, 10
        shr     eax, 24                                 ; 3F3F _ C1. E8, 18
        mov     edx, eax                                ; 3F42 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3F44 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3F47 _ 88. 50, 07
        nop                                             ; 3F4A _ 90
        pop     ebp                                     ; 3F4B _ 5D
        ret                                             ; 3F4C _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3F4D _ 55
        mov     ebp, esp                                ; 3F4E _ 89. E5
        mov     eax, dword [task_timer]                 ; 3F50 _ A1, 000021E4(d)
        pop     ebp                                     ; 3F55 _ 5D
        ret                                             ; 3F56 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 3F57 _ 55
        mov     ebp, esp                                ; 3F58 _ 89. E5
        sub     esp, 16                                 ; 3F5A _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3F5D _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3F63 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3F66 _ 6B. C0, 1C
        add     eax, edx                                ; 3F69 _ 01. D0
        add     eax, 8                                  ; 3F6B _ 83. C0, 08
        mov     dword [eax], 0                          ; 3F6E _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 3F74 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3F7A _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3F7D _ 6B. C0, 1C
        add     eax, edx                                ; 3F80 _ 01. D0
        add     eax, 12                                 ; 3F82 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3F85 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3F8B _ C7. 45, FC, 00000000
        jmp     ?_227                                   ; 3F92 _ EB, 1A

?_226:  mov     eax, dword [taskctl]                    ; 3F94 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3F99 _ 8B. 55, FC
        shl     edx, 5                                  ; 3F9C _ C1. E2, 05
        add     eax, edx                                ; 3F9F _ 01. D0
        add     eax, 16                                 ; 3FA1 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3FA4 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3FAA _ 83. 45, FC, 01
?_227:  cmp     dword [ebp-4H], 4                       ; 3FAE _ 83. 7D, FC, 04
        jle     ?_226                                   ; 3FB2 _ 7E, E0
        nop                                             ; 3FB4 _ 90
        leave                                           ; 3FB5 _ C9
        ret                                             ; 3FB6 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3FB7 _ 55
        mov     ebp, esp                                ; 3FB8 _ 89. E5
        sub     esp, 24                                 ; 3FBA _ 83. EC, 18
        call    get_addr_gdt                            ; 3FBD _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3FC2 _ 89. 45, F0
        sub     esp, 8                                  ; 3FC5 _ 83. EC, 08
        push    692                                     ; 3FC8 _ 68, 000002B4
        push    dword [ebp+8H]                          ; 3FCD _ FF. 75, 08
        call    memman_alloc_4K                         ; 3FD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3FD5 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3FD8 _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 3FDD _ C7. 45, EC, 00000000
        jmp     ?_229                                   ; 3FE4 _ EB, 73

?_228:  mov     edx, dword [taskctl]                    ; 3FE6 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 3FEC _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3FEF _ 6B. C0, 7C
        add     eax, edx                                ; 3FF2 _ 01. D0
        add     eax, 96                                 ; 3FF4 _ 83. C0, 60
        mov     dword [eax], 0                          ; 3FF7 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3FFD _ 8B. 45, EC
        add     eax, 7                                  ; 4000 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 4003 _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 4009 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 4010 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 4013 _ 6B. C0, 7C
        add     eax, ecx                                ; 4016 _ 01. C8
        add     eax, 92                                 ; 4018 _ 83. C0, 5C
        mov     dword [eax], edx                        ; 401B _ 89. 10
        mov     eax, dword [taskctl]                    ; 401D _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 4022 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 4025 _ 6B. D2, 7C
        add     edx, 96                                 ; 4028 _ 83. C2, 60
        add     eax, edx                                ; 402B _ 01. D0
        add     eax, 16                                 ; 402D _ 83. C0, 10
        mov     ecx, eax                                ; 4030 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 4032 _ 8B. 45, EC
        add     eax, 7                                  ; 4035 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 4038 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 403F _ 8B. 45, F0
        add     eax, edx                                ; 4042 _ 01. D0
        push    137                                     ; 4044 _ 68, 00000089
        push    ecx                                     ; 4049 _ 51
        push    103                                     ; 404A _ 6A, 67
        push    eax                                     ; 404C _ 50
        call    set_segmdesc                            ; 404D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4052 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 4055 _ 83. 45, EC, 01
?_229:  cmp     dword [ebp-14H], 4                      ; 4059 _ 83. 7D, EC, 04
        jle     ?_228                                   ; 405D _ 7E, 87
        call    task_alloc                              ; 405F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 4064 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4067 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 406A _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 4071 _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 4074 _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 407B _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 407E _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 4085 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 4088 _ FF. 75, F4
        call    task_add                                ; 408B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4090 _ 83. C4, 10
        call    task_switchsub                          ; 4093 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 4098 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 409B _ 8B. 00
        sub     esp, 12                                 ; 409D _ 83. EC, 0C
        push    eax                                     ; 40A0 _ 50
        call    load_tr                                 ; 40A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 40A6 _ 83. C4, 10
        call    timer_alloc                             ; 40A9 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 40AE _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 40B3 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 40B6 _ 8B. 40, 08
        mov     edx, eax                                ; 40B9 _ 89. C2
        mov     eax, dword [task_timer]                 ; 40BB _ A1, 000021E4(d)
        sub     esp, 8                                  ; 40C0 _ 83. EC, 08
        push    edx                                     ; 40C3 _ 52
        push    eax                                     ; 40C4 _ 50
        call    timer_setTime                           ; 40C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 40CA _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 40CD _ 8B. 45, F4
        leave                                           ; 40D0 _ C9
        ret                                             ; 40D1 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 40D2 _ 55
        mov     ebp, esp                                ; 40D3 _ 89. E5
        sub     esp, 16                                 ; 40D5 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 40D8 _ C7. 45, F8, 00000000
        jmp     ?_232                                   ; 40DF _ E9, 000000E1

?_230:  mov     edx, dword [taskctl]                    ; 40E4 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 40EA _ 8B. 45, F8
        imul    eax, eax, 124                           ; 40ED _ 6B. C0, 7C
        add     eax, edx                                ; 40F0 _ 01. D0
        add     eax, 96                                 ; 40F2 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 40F5 _ 8B. 00
        test    eax, eax                                ; 40F7 _ 85. C0
        jne     ?_231                                   ; 40F9 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 40FF _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 4104 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 4107 _ 6B. D2, 7C
        add     edx, 80                                 ; 410A _ 83. C2, 50
        add     eax, edx                                ; 410D _ 01. D0
        add     eax, 12                                 ; 410F _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 4112 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4115 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 4118 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 411F _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 4122 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 4129 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 412C _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 4133 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 4136 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 413D _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 4140 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 4147 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 414A _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 4151 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 4154 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 415B _ 8B. 45, F8
        add     eax, 1                                  ; 415E _ 83. C0, 01
        shl     eax, 9                                  ; 4161 _ C1. E0, 09
        mov     edx, eax                                ; 4164 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4166 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 4169 _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 416C _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 416F _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 4176 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 4179 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 4180 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 4183 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 418A _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 418D _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 4194 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 4197 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 419E _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 41A1 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 41A8 _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 41AB _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 41B2 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 41B5 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 41BC _ 8B. 45, FC
        jmp     ?_233                                   ; 41BF _ EB, 13

?_231:  add     dword [ebp-8H], 1                       ; 41C1 _ 83. 45, F8, 01
?_232:  cmp     dword [ebp-8H], 4                       ; 41C5 _ 83. 7D, F8, 04
        jle     ?_230                                   ; 41C9 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 41CF _ B8, 00000000
?_233:  leave                                           ; 41D4 _ C9
        ret                                             ; 41D5 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 41D6 _ 55
        mov     ebp, esp                                ; 41D7 _ 89. E5
        sub     esp, 8                                  ; 41D9 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 41DC _ 83. 7D, 0C, 00
        jns     ?_234                                   ; 41E0 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 41E2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 41E5 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 41E8 _ 89. 45, 0C
?_234:  cmp     dword [ebp+10H], 0                      ; 41EB _ 83. 7D, 10, 00
        jle     ?_235                                   ; 41EF _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 41F1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 41F4 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 41F7 _ 89. 50, 08
?_235:  mov     eax, dword [ebp+8H]                     ; 41FA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 41FD _ 8B. 40, 04
        cmp     eax, 2                                  ; 4200 _ 83. F8, 02
        jnz     ?_236                                   ; 4203 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 4205 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4208 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 420B _ 39. 45, 0C
        jz      ?_236                                   ; 420E _ 74, 0E
        sub     esp, 12                                 ; 4210 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4213 _ FF. 75, 08
        call    task_remove                             ; 4216 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 421B _ 83. C4, 10
?_236:  mov     eax, dword [ebp+8H]                     ; 421E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4221 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4224 _ 83. F8, 02
        jz      ?_237                                   ; 4227 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 4229 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 422C _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 422F _ 89. 50, 0C
        sub     esp, 12                                 ; 4232 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4235 _ FF. 75, 08
        call    task_add                                ; 4238 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 423D _ 83. C4, 10
?_237:  mov     eax, dword [taskctl]                    ; 4240 _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 4245 _ C7. 40, 04, 00000001
        nop                                             ; 424C _ 90
        leave                                           ; 424D _ C9
        ret                                             ; 424E _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 424F _ 55
        mov     ebp, esp                                ; 4250 _ 89. E5
        sub     esp, 24                                 ; 4252 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 4255 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 425B _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 4260 _ 8B. 00
        imul    eax, eax, 28                            ; 4262 _ 6B. C0, 1C
        add     eax, edx                                ; 4265 _ 01. D0
        add     eax, 8                                  ; 4267 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 426A _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 426D _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 4270 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 4273 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 4276 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 427A _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 427D _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 4280 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4283 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 4286 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 4289 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 428C _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 428F _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 4292 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4295 _ 8B. 00
        cmp     edx, eax                                ; 4297 _ 39. C2
        jnz     ?_238                                   ; 4299 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 429B _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 429E _ C7. 40, 04, 00000000
?_238:  mov     eax, dword [taskctl]                    ; 42A5 _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 42AA _ 8B. 40, 04
        test    eax, eax                                ; 42AD _ 85. C0
        jz      ?_239                                   ; 42AF _ 74, 1D
        call    task_switchsub                          ; 42B1 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 42B6 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 42BC _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 42C1 _ 8B. 00
        imul    eax, eax, 28                            ; 42C3 _ 6B. C0, 1C
        add     eax, edx                                ; 42C6 _ 01. D0
        add     eax, 8                                  ; 42C8 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 42CB _ 89. 45, EC
?_239:  mov     eax, dword [ebp-14H]                    ; 42CE _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 42D1 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 42D4 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 42D7 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 42DB _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 42DE _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 42E1 _ 8B. 40, 08
        mov     edx, eax                                ; 42E4 _ 89. C2
        mov     eax, dword [task_timer]                 ; 42E6 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 42EB _ 83. EC, 08
        push    edx                                     ; 42EE _ 52
        push    eax                                     ; 42EF _ 50
        call    timer_setTime                           ; 42F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 42F5 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 42F8 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 42FB _ 3B. 45, F0
        jz      ?_240                                   ; 42FE _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 4300 _ 83. 7D, F4, 00
        jz      ?_240                                   ; 4304 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 4306 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4309 _ 8B. 00
        sub     esp, 8                                  ; 430B _ 83. EC, 08
        push    eax                                     ; 430E _ 50
        push    0                                       ; 430F _ 6A, 00
        call    farjmp                                  ; 4311 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4316 _ 83. C4, 10
        nop                                             ; 4319 _ 90
?_240:  nop                                             ; 431A _ 90
        leave                                           ; 431B _ C9
        ret                                             ; 431C _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 431D _ 55
        mov     ebp, esp                                ; 431E _ 89. E5
        sub     esp, 24                                 ; 4320 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4323 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 432A _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 432E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4331 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4334 _ 83. F8, 02
        jnz     ?_241                                   ; 4337 _ 75, 4C
        call    task_now                                ; 4339 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 433E _ 89. 45, F4
        sub     esp, 12                                 ; 4341 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4344 _ FF. 75, 08
        call    task_remove                             ; 4347 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 434C _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 434F _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 4353 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 4356 _ 3B. 45, F4
        jnz     ?_241                                   ; 4359 _ 75, 2A
        call    task_switchsub                          ; 435B _ E8, FFFFFFFC(rel)
        call    task_now                                ; 4360 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 4365 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 4368 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 436C _ 83. 7D, F4, 00
        jz      ?_241                                   ; 4370 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 4372 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4375 _ 8B. 00
        sub     esp, 8                                  ; 4377 _ 83. EC, 08
        push    eax                                     ; 437A _ 50
        push    0                                       ; 437B _ 6A, 00
        call    farjmp                                  ; 437D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4382 _ 83. C4, 10
?_241:  movsx   eax, byte [ebp-0DH]                     ; 4385 _ 0F BE. 45, F3
        leave                                           ; 4389 _ C9
        ret                                             ; 438A _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 438B _ 55
        mov     ebp, esp                                ; 438C _ 89. E5
        sub     esp, 16                                 ; 438E _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 4391 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 4397 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 439C _ 8B. 00
        imul    eax, eax, 28                            ; 439E _ 6B. C0, 1C
        add     eax, edx                                ; 43A1 _ 01. D0
        add     eax, 8                                  ; 43A3 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 43A6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 43A9 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 43AC _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 43AF _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 43B2 _ 8B. 44 90, 08
        leave                                           ; 43B6 _ C9
        ret                                             ; 43B7 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 43B8 _ 55
        mov     ebp, esp                                ; 43B9 _ 89. E5
        sub     esp, 16                                 ; 43BB _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 43BE _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 43C4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 43C7 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 43CA _ 6B. C0, 1C
        add     eax, edx                                ; 43CD _ 01. D0
        add     eax, 8                                  ; 43CF _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 43D2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 43D5 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 43D8 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 43DA _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 43DD _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 43E0 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 43E4 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 43E7 _ 8B. 00
        lea     edx, [eax+1H]                           ; 43E9 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 43EC _ 8B. 45, FC
        mov     dword [eax], edx                        ; 43EF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 43F1 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 43F4 _ C7. 40, 04, 00000002
        nop                                             ; 43FB _ 90
        leave                                           ; 43FC _ C9
        ret                                             ; 43FD _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 43FE _ 55
        mov     ebp, esp                                ; 43FF _ 89. E5
        sub     esp, 16                                 ; 4401 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 4404 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 440A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 440D _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 4410 _ 6B. C0, 1C
        add     eax, edx                                ; 4413 _ 01. D0
        add     eax, 8                                  ; 4415 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4418 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 441B _ C7. 45, F8, 00000000
        jmp     ?_244                                   ; 4422 _ EB, 23

?_242:  mov     eax, dword [ebp-4H]                     ; 4424 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4427 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 442A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 442E _ 39. 45, 08
        jnz     ?_243                                   ; 4431 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 4433 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4436 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 4439 _ C7. 44 90, 08, 00000000
        jmp     ?_245                                   ; 4441 _ EB, 0E

?_243:  add     dword [ebp-8H], 1                       ; 4443 _ 83. 45, F8, 01
?_244:  mov     eax, dword [ebp-4H]                     ; 4447 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 444A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 444C _ 39. 45, F8
        jl      ?_242                                   ; 444F _ 7C, D3
?_245:  mov     eax, dword [ebp-4H]                     ; 4451 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4454 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4456 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 4459 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 445C _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 445E _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 4461 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 4464 _ 39. 45, F8
        jge     ?_246                                   ; 4467 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 4469 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 446C _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 446F _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 4472 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 4475 _ 89. 50, 04
?_246:  mov     eax, dword [ebp-4H]                     ; 4478 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 447B _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 447E _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4481 _ 8B. 00
        cmp     edx, eax                                ; 4483 _ 39. C2
        jl      ?_247                                   ; 4485 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 4487 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 448A _ C7. 40, 04, 00000000
?_247:  mov     eax, dword [ebp+8H]                     ; 4491 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4494 _ C7. 40, 04, 00000001
        jmp     ?_249                                   ; 449B _ EB, 1B

?_248:  mov     eax, dword [ebp-8H]                     ; 449D _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 44A0 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 44A3 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 44A6 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 44AA _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 44AD _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 44B0 _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 44B4 _ 83. 45, F8, 01
?_249:  mov     eax, dword [ebp-4H]                     ; 44B8 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 44BB _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 44BD _ 39. 45, F8
        jl      ?_248                                   ; 44C0 _ 7C, DB
        nop                                             ; 44C2 _ 90
        leave                                           ; 44C3 _ C9
        ret                                             ; 44C4 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 44C5 _ 55
        mov     ebp, esp                                ; 44C6 _ 89. E5
        sub     esp, 16                                 ; 44C8 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 44CB _ C7. 45, FC, 00000000
        jmp     ?_251                                   ; 44D2 _ EB, 1B

?_250:  mov     edx, dword [taskctl]                    ; 44D4 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 44DA _ 8B. 45, FC
        imul    eax, eax, 28                            ; 44DD _ 6B. C0, 1C
        add     eax, edx                                ; 44E0 _ 01. D0
        add     eax, 8                                  ; 44E2 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 44E5 _ 8B. 00
        test    eax, eax                                ; 44E7 _ 85. C0
        jg      ?_252                                   ; 44E9 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 44EB _ 83. 45, FC, 01
?_251:  cmp     dword [ebp-4H], 2                       ; 44EF _ 83. 7D, FC, 02
        jle     ?_250                                   ; 44F3 _ 7E, DF
        jmp     ?_253                                   ; 44F5 _ EB, 01

?_252:  nop                                             ; 44F7 _ 90
?_253:  mov     eax, dword [taskctl]                    ; 44F8 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 44FD _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4500 _ 89. 10
        mov     eax, dword [taskctl]                    ; 4502 _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 4507 _ C7. 40, 04, 00000000
        nop                                             ; 450E _ 90
        leave                                           ; 450F _ C9
        ret                                             ; 4510 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 4511 _ 55
        mov     ebp, esp                                ; 4512 _ 89. E5
        mov     eax, dword [taskctl]                    ; 4514 _ A1, 000021E8(d)
        pop     ebp                                     ; 4519 _ 5D
        ret                                             ; 451A _ C3
; getTaskctl End of function

send_message:; Function begin
        push    ebp                                     ; 451B _ 55
        mov     ebp, esp                                ; 451C _ 89. E5
        sub     esp, 8                                  ; 451E _ 83. EC, 08
        mov     eax, dword [ebp+10H]                    ; 4521 _ 8B. 45, 10
        movzx   eax, al                                 ; 4524 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4527 _ 8B. 55, 0C
        add     edx, 16                                 ; 452A _ 83. C2, 10
        sub     esp, 8                                  ; 452D _ 83. EC, 08
        push    eax                                     ; 4530 _ 50
        push    edx                                     ; 4531 _ 52
        call    fifo8_put                               ; 4532 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4537 _ 83. C4, 10
        sub     esp, 12                                 ; 453A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 453D _ FF. 75, 08
        call    task_sleep                              ; 4540 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4545 _ 83. C4, 10
        nop                                             ; 4548 _ 90
        leave                                           ; 4549 _ C9
        ret                                             ; 454A _ C3
; send_message End of function



?_254:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_255:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_256:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_257:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_258:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_259:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_260:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_261:                                                  ; byte
        db 43H, 00H                                     ; 003B _ C.

?_262:                                                  ; byte
        db 46H, 72H, 65H, 65H, 20H, 4DH, 65H, 6DH       ; 003D _ Free Mem
        db 3AH, 20H, 00H                                ; 0045 _ : .

?_263:                                                  ; byte
        db 4BH, 42H, 00H, 00H                           ; 0048 _ KB..

?_264:                                                  ; byte
        db 44H, 65H, 73H, 69H, 67H, 6EH, 65H, 64H       ; 004C _ Designed
        db 20H, 42H, 79H, 20H, 42H, 4DH, 59H, 2EH       ; 0054 _  By BMY.
        db 20H, 43H, 6FH, 70H, 79H, 72H, 69H, 67H       ; 005C _  Copyrig
        db 68H, 74H, 20H, 40H, 32H, 30H, 32H, 31H       ; 0064 _ ht @2021
        db 20H, 43H, 68H, 65H, 72H, 72H, 79H, 00H       ; 006C _  Cherry.

?_265:                                                  ; byte
        db 55H, 6EH, 64H, 65H, 66H, 69H, 6EH, 65H       ; 0074 _ Undefine
        db 64H, 20H, 4FH, 72H, 64H, 65H, 72H, 2EH       ; 007C _ d Order.
        db 2EH, 2EH, 00H                                ; 0084 _ ...

?_266:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0087 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 008F _ sk B.

?_267:                                                  ; byte
        db 42H, 00H                                     ; 0094 _ B.

?_268:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0096 _ Page is:
        db 20H, 00H                                     ; 009E _  .

?_269:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00A0 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 00A8 _ Low: .

?_270:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00AE _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 00B6 _ High: .

?_271:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 00BD _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 00C5 _ w: .

?_272:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 00C9 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 00D1 _ gh: .

?_273:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 00D6 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_274:  db 00H                                          ; 0002 _ .

?_275:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

keytable:                                               ; byte
        db 00H, 00H, 31H, 32H, 33H, 34H, 35H, 36H       ; 0020 _ ..123456
        db 37H, 38H, 39H, 30H, 2DH, 2BH, 00H, 00H       ; 0028 _ 7890-+..
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 0030 _ QWERTYUI
        db 4FH, 50H, 40H, 5BH, 00H, 00H, 41H, 53H       ; 0038 _ OP@[..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 3BH       ; 0040 _ DFGHJKL;
        db 3AH, 00H, 00H, 5DH, 5AH, 58H, 43H, 56H       ; 0048 _ :..]ZXCV
        db 42H, 4EH, 4DH, 2CH, 2EH, 2FH, 00H, 2AH       ; 0050 _ BNM,./.*
        db 00H, 20H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ . ......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 37H       ; 0060 _ .......7
        db 38H, 39H, 2DH, 34H, 35H, 36H, 2BH, 31H       ; 0068 _ 89-456+1
        db 32H, 33H, 30H, 2EH, 00H, 00H, 00H, 00H       ; 0070 _ 230.....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........

keytable1:                                              ; byte
        db 00H, 00H, 21H, 40H, 23H, 24H, 25H, 5EH       ; 0080 _ ..!@#$%^
        db 26H, 2AH, 28H, 29H, 2DH, 3DH, 7EH, 00H       ; 0088 _ &*()-=~.
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 0090 _ QWERTYUI
        db 4FH, 50H, 60H, 7BH, 00H, 00H, 41H, 53H       ; 0098 _ OP`{..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 2BH       ; 00A0 _ DFGHJKL+
        db 2AH, 00H, 00H, 7DH, 5AH, 58H, 43H, 56H       ; 00A8 _ *..}ZXCV
        db 42H, 4EH, 4DH, 3CH, 3EH, 3FH, 00H, 2AH       ; 00B0 _ BNM<>?.*
        db 00H, 20H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ . ......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 37H       ; 00C0 _ .......7
        db 38H, 39H, 2DH, 34H, 35H, 36H, 2BH, 31H       ; 00C8 _ 89-456+1
        db 32H, 33H, 30H, 2EH, 00H, 00H, 00H, 00H       ; 00D0 _ 230.....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E8 _ ........
        db 00H, 00H, 00H, 5FH, 00H, 00H, 00H, 00H       ; 00F0 _ ..._....
        db 00H, 00H, 00H, 00H, 00H, 7CH, 00H, 00H       ; 00F8 _ .....|..

pos.2316: dd 00000010H, 00000000H                       ; 0100 _ 16 0 
        dd 00000000H, 00000000H                         ; 0108 _ 0 0 
        dd 00000000H, 00000000H                         ; 0110 _ 0 0 
        dd 00000000H, 00000000H                         ; 0118 _ 0 0 

table_rgb.2449:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2504:                                            ; byte
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ **......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0168 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0170 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0178 _ ........
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0180 _ *OO*....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0188 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0190 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0198 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 01A0 _ *OOOO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01A8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 01B0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 01C0 _ *OOOOOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01C8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01D0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01D8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH       ; 01E0 _ *OOOOO**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01E8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 01F0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01F8 _ ........
        db 2AH, 4FH, 2AH, 2AH, 4FH, 4FH, 2AH, 2EH       ; 0200 _ *O**OO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0208 _ ........
        db 2AH, 2AH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0210 _ **..*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0218 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0220 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0228 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0230 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0238 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0240 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0248 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH       ; 0250 _ ......**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0258 _ ........

closebtn.2679:                                          ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0260 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0268 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0270 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0278 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0280 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0288 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0290 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0298 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 02C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 02F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 02F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0300 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0308 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0310 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0318 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0320 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0328 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0330 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0338 _ @@@@@@@@



key_shift:                                              ; dword
        resd    1                                       ; 0000

caps_lock:                                              ; dword
        resd    1                                       ; 0004

bootInfo:                                               ; qword
        resb    4                                       ; 0008

?_276:  resw    1                                       ; 000C

?_277:  resw    1                                       ; 000E

keyInfo:                                                ; byte
        resb    24                                      ; 0010

?_278:  resd    1                                       ; 0028

mouseInfo:                                              ; byte
        resb    52                                      ; 002C

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_279:  resd    1                                       ; 010C

mx:     resd    1                                       ; 0110

my:     resd    1                                       ; 0114

buf_back: resd  2                                       ; 0118

buf_mouse:                                              ; byte
        resb    256                                     ; 0120

timerInfo:                                              ; byte
        resb    28                                      ; 0220

timerbuf: resq  1                                       ; 023C

shtctl: resd    1                                       ; 0244

sheet_win:                                              ; dword
        resd    1                                       ; 0248

sheet_back:                                             ; dword
        resd    1                                       ; 024C

sheet_mouse:                                            ; dword
        resd    1                                       ; 0250

task_console:                                           ; dword
        resd    1                                       ; 0254

task_main:                                              ; dword
        resd    1                                       ; 0258

task_a.2311:                                            ; dword
        resd    1                                       ; 025C

line.2315:                                              ; dword
        resd    1                                       ; 0260

cnt.2312: resd  1                                       ; 0264

task_b.2301:                                            ; oword
        resb    16                                      ; 0268

str.2547:                                               ; byte
        resb    1                                       ; 0278

?_280:  resb    9                                       ; 0279

?_281:  resb    2                                       ; 0282

str.2560: resq  1                                       ; 0284

line.2602:                                              ; dword
        resd    1                                       ; 028C

pos.2601: resd  4                                       ; 0290

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_282:                                                  ; byte
        resb    4                                       ; 02A4

?_283:                                                  ; byte
        resb    4                                       ; 02A8

?_284:                                                  ; byte
        resb    4                                       ; 02AC

?_285:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


