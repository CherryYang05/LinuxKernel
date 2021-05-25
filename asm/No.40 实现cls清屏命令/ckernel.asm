; Disassembly of file: ckernel.o
; Tue May 25 10:19:48 2021
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
        movzx   eax, word [?_273]                       ; 002B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0032 _ 98
        mov     dword [ebp-54H], eax                    ; 0033 _ 89. 45, AC
        movzx   eax, word [?_274]                       ; 0036 _ 0F B7. 05, 0000000E(d)
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
        push    ?_252                                   ; 02ED _ 68, 00000000(d)
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
        mov     dword [?_275], eax                      ; 0366 _ A3, 00000028(d)
        mov     byte [ebp-6DH], 0                       ; 036B _ C6. 45, 93, 00
        mov     dword [ebp-6CH], 7                      ; 036F _ C7. 45, 94, 00000007
        mov     dword [ebp-68H], 0                      ; 0376 _ C7. 45, 98, 00000000
        mov     edx, dword [sheet_win]                  ; 037D _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0383 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0388 _ 83. EC, 08
        push    ?_253                                   ; 038B _ 68, 00000008(d)
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
        push    ?_252                                   ; 0463 _ 68, 00000000(d)
        push    edx                                     ; 0468 _ 52
        push    eax                                     ; 0469 _ 50
        call    make_wtitle8                            ; 046A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0472 _ A1, 00000244(d)
        push    1                                       ; 0477 _ 6A, 01
        push    ?_254                                   ; 0479 _ 68, 0000001E(d)
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
        push    ?_252                                   ; 04CF _ 68, 00000000(d)
        push    edx                                     ; 04D4 _ 52
        push    eax                                     ; 04D5 _ 50
        call    make_wtitle8                            ; 04D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DB _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04DE _ A1, 00000244(d)
        push    0                                       ; 04E3 _ 6A, 00
        push    ?_254                                   ; 04E5 _ 68, 0000001E(d)
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
        push    ?_255                                   ; 0578 _ 68, 00000027(d)
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
        push    ?_256                                   ; 07A6 _ 68, 00000030(d)
        push    7                                       ; 07AB _ 6A, 07
        push    160                                     ; 07AD _ 68, 000000A0
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
        push    ?_257                                   ; 080E _ 68, 00000032(d)
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
        push    ?_254                                   ; 0B87 _ 68, 0000001E(d)
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
        sub     esp, 228                                ; 0C9B _ 81. EC, 000000E4
        mov     eax, dword [ebp+8H]                     ; 0CA1 _ 8B. 45, 08
        mov     dword [ebp-0DCH], eax                   ; 0CA4 _ 89. 85, FFFFFF24
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0CAA _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0CB0 _ 89. 45, F4
        xor     eax, eax                                ; 0CB3 _ 31. C0
        call    task_now                                ; 0CB5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0BCH], eax                   ; 0CBA _ 89. 85, FFFFFF44
        mov     dword [ebp-0C4H], 8                     ; 0CC0 _ C7. 85, FFFFFF3C, 00000008
        mov     dword [ebp-0C0H], 0                     ; 0CCA _ C7. 85, FFFFFF40, 00000000
        mov     dword [ebp-0C8H], 2                     ; 0CD4 _ C7. 85, FFFFFF38, 00000002
        mov     eax, dword [ebp-0BCH]                   ; 0CDE _ 8B. 85, FFFFFF44
        lea     edx, [eax+10H]                          ; 0CE4 _ 8D. 50, 10
        push    dword [ebp-0BCH]                        ; 0CE7 _ FF. B5, FFFFFF44
        lea     eax, [ebp-8CH]                          ; 0CED _ 8D. 85, FFFFFF74
        push    eax                                     ; 0CF3 _ 50
        push    128                                     ; 0CF4 _ 68, 00000080
        push    edx                                     ; 0CF9 _ 52
        call    fifo8_init                              ; 0CFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CFF _ 83. C4, 10
        call    timer_alloc                             ; 0D02 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0B8H], eax                   ; 0D07 _ 89. 85, FFFFFF48
        mov     eax, dword [ebp-0BCH]                   ; 0D0D _ 8B. 85, FFFFFF44
        add     eax, 16                                 ; 0D13 _ 83. C0, 10
        sub     esp, 4                                  ; 0D16 _ 83. EC, 04
        push    1                                       ; 0D19 _ 6A, 01
        push    eax                                     ; 0D1B _ 50
        push    dword [ebp-0B8H]                        ; 0D1C _ FF. B5, FFFFFF48
        call    timer_init                              ; 0D22 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D27 _ 83. C4, 10
        sub     esp, 8                                  ; 0D2A _ 83. EC, 08
        push    50                                      ; 0D2D _ 6A, 32
        push    dword [ebp-0B8H]                        ; 0D2F _ FF. B5, FFFFFF48
        call    timer_setTime                           ; 0D35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3A _ 83. C4, 10
        mov     dword [ebp-0B4H], 0                     ; 0D3D _ C7. 85, FFFFFF4C, 00000000
        mov     eax, dword [ebp-0C8H]                   ; 0D47 _ 8B. 85, FFFFFF38
        lea     edx, [eax+1AH]                          ; 0D4D _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 0D50 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0D55 _ 83. EC, 08
        push    ?_258                                   ; 0D58 _ 68, 00000039(d)
        push    7                                       ; 0D5D _ 6A, 07
        push    edx                                     ; 0D5F _ 52
        push    8                                       ; 0D60 _ 6A, 08
        push    dword [ebp-0DCH]                        ; 0D62 _ FF. B5, FFFFFF24
        push    eax                                     ; 0D68 _ 50
        call    showString                              ; 0D69 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D6E _ 83. C4, 20
        mov     dword [ebp-0B0H], 0                     ; 0D71 _ C7. 85, FFFFFF50, 00000000
?_032:  call    io_cli                                  ; 0D7B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0BCH]                   ; 0D80 _ 8B. 85, FFFFFF44
        add     eax, 16                                 ; 0D86 _ 83. C0, 10
        sub     esp, 12                                 ; 0D89 _ 83. EC, 0C
        push    eax                                     ; 0D8C _ 50
        call    fifo8_status                            ; 0D8D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D92 _ 83. C4, 10
        test    eax, eax                                ; 0D95 _ 85. C0
        jnz     ?_033                                   ; 0D97 _ 75, 0A
        call    io_sti                                  ; 0D99 _ E8, FFFFFFFC(rel)
        jmp     ?_041                                   ; 0D9E _ E9, 00000308

?_033:  mov     eax, dword [ebp-0BCH]                   ; 0DA3 _ 8B. 85, FFFFFF44
        add     eax, 16                                 ; 0DA9 _ 83. C0, 10
        sub     esp, 12                                 ; 0DAC _ 83. EC, 0C
        push    eax                                     ; 0DAF _ 50
        call    fifo8_get                               ; 0DB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB5 _ 83. C4, 10
        mov     dword [ebp-0B4H], eax                   ; 0DB8 _ 89. 85, FFFFFF4C
        call    io_sti                                  ; 0DBE _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-0B4H], 1                     ; 0DC3 _ 83. BD, FFFFFF4C, 01
        jg      ?_036                                   ; 0DCA _ 0F 8F, 00000083
        cmp     dword [ebp-0C0H], 0                     ; 0DD0 _ 83. BD, FFFFFF40, 00
        js      ?_036                                   ; 0DD7 _ 78, 7A
        cmp     dword [ebp-0B4H], 1                     ; 0DD9 _ 83. BD, FFFFFF4C, 01
        jnz     ?_034                                   ; 0DE0 _ 75, 29
        mov     eax, dword [ebp-0BCH]                   ; 0DE2 _ 8B. 85, FFFFFF44
        add     eax, 16                                 ; 0DE8 _ 83. C0, 10
        sub     esp, 4                                  ; 0DEB _ 83. EC, 04
        push    0                                       ; 0DEE _ 6A, 00
        push    eax                                     ; 0DF0 _ 50
        push    dword [ebp-0B8H]                        ; 0DF1 _ FF. B5, FFFFFF48
        call    timer_init                              ; 0DF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DFC _ 83. C4, 10
        mov     dword [ebp-0C0H], 7                     ; 0DFF _ C7. 85, FFFFFF40, 00000007
        jmp     ?_035                                   ; 0E09 _ EB, 30

?_034:  cmp     dword [ebp-0B4H], 0                     ; 0E0B _ 83. BD, FFFFFF4C, 00
        jnz     ?_035                                   ; 0E12 _ 75, 27
        mov     eax, dword [ebp-0BCH]                   ; 0E14 _ 8B. 85, FFFFFF44
        add     eax, 16                                 ; 0E1A _ 83. C0, 10
        sub     esp, 4                                  ; 0E1D _ 83. EC, 04
        push    1                                       ; 0E20 _ 6A, 01
        push    eax                                     ; 0E22 _ 50
        push    dword [ebp-0B8H]                        ; 0E23 _ FF. B5, FFFFFF48
        call    timer_init                              ; 0E29 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E2E _ 83. C4, 10
        mov     dword [ebp-0C0H], 0                     ; 0E31 _ C7. 85, FFFFFF40, 00000000
?_035:  sub     esp, 8                                  ; 0E3B _ 83. EC, 08
        push    50                                      ; 0E3E _ 6A, 32
        push    dword [ebp-0B8H]                        ; 0E40 _ FF. B5, FFFFFF48
        call    timer_setTime                           ; 0E46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E4B _ 83. C4, 10
        jmp     ?_041                                   ; 0E4E _ E9, 00000258

?_036:  cmp     dword [ebp-0B4H], 87                    ; 0E53 _ 83. BD, FFFFFF4C, 57
        jnz     ?_037                                   ; 0E5A _ 75, 3F
        mov     dword [ebp-0C0H], 7                     ; 0E5C _ C7. 85, FFFFFF40, 00000007
        mov     eax, dword [ebp-0BCH]                   ; 0E66 _ 8B. 85, FFFFFF44
        add     eax, 16                                 ; 0E6C _ 83. C0, 10
        sub     esp, 4                                  ; 0E6F _ 83. EC, 04
        push    0                                       ; 0E72 _ 6A, 00
        push    eax                                     ; 0E74 _ 50
        push    dword [ebp-0B8H]                        ; 0E75 _ FF. B5, FFFFFF48
        call    timer_init                              ; 0E7B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E80 _ 83. C4, 10
        sub     esp, 8                                  ; 0E83 _ 83. EC, 08
        push    50                                      ; 0E86 _ 6A, 32
        push    dword [ebp-0B8H]                        ; 0E88 _ FF. B5, FFFFFF48
        call    timer_setTime                           ; 0E8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E93 _ 83. C4, 10
        jmp     ?_041                                   ; 0E96 _ E9, 00000210

?_037:  cmp     dword [ebp-0B4H], 88                    ; 0E9B _ 83. BD, FFFFFF4C, 58
        jnz     ?_038                                   ; 0EA2 _ 75, 4A
        mov     edx, dword [ebp-0C8H]                   ; 0EA4 _ 8B. 95, FFFFFF38
        mov     eax, dword [shtctl]                     ; 0EAA _ A1, 00000244(d)
        sub     esp, 12                                 ; 0EAF _ 83. EC, 0C
        push    0                                       ; 0EB2 _ 6A, 00
        push    edx                                     ; 0EB4 _ 52
        push    dword [ebp-0C4H]                        ; 0EB5 _ FF. B5, FFFFFF3C
        push    dword [ebp-0DCH]                        ; 0EBB _ FF. B5, FFFFFF24
        push    eax                                     ; 0EC1 _ 50
        call    set_cursor                              ; 0EC2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EC7 _ 83. C4, 20
        mov     dword [ebp-0C0H], -1                    ; 0ECA _ C7. 85, FFFFFF40, FFFFFFFF
        mov     eax, dword [task_main]                  ; 0ED4 _ A1, 00000258(d)
        sub     esp, 4                                  ; 0ED9 _ 83. EC, 04
        push    0                                       ; 0EDC _ 6A, 00
        push    -1                                      ; 0EDE _ 6A, FF
        push    eax                                     ; 0EE0 _ 50
        call    task_run                                ; 0EE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EE6 _ 83. C4, 10
        jmp     ?_041                                   ; 0EE9 _ E9, 000001BD

?_038:  cmp     dword [ebp-0B4H], 14                    ; 0EEE _ 83. BD, FFFFFF4C, 0E
        jnz     ?_039                                   ; 0EF5 _ 75, 61
        cmp     dword [ebp-0C4H], 15                    ; 0EF7 _ 83. BD, FFFFFF3C, 0F
        jle     ?_039                                   ; 0EFE _ 7E, 58
        mov     edx, dword [ebp-0C8H]                   ; 0F00 _ 8B. 95, FFFFFF38
        mov     eax, dword [shtctl]                     ; 0F06 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F0B _ 83. EC, 0C
        push    0                                       ; 0F0E _ 6A, 00
        push    edx                                     ; 0F10 _ 52
        push    dword [ebp-0C4H]                        ; 0F11 _ FF. B5, FFFFFF3C
        push    dword [ebp-0DCH]                        ; 0F17 _ FF. B5, FFFFFF24
        push    eax                                     ; 0F1D _ 50
        call    set_cursor                              ; 0F1E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F23 _ 83. C4, 20
        sub     dword [ebp-0C4H], 8                     ; 0F26 _ 83. AD, FFFFFF3C, 08
        mov     edx, dword [ebp-0C8H]                   ; 0F2D _ 8B. 95, FFFFFF38
        mov     eax, dword [shtctl]                     ; 0F33 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F38 _ 83. EC, 0C
        push    0                                       ; 0F3B _ 6A, 00
        push    edx                                     ; 0F3D _ 52
        push    dword [ebp-0C4H]                        ; 0F3E _ FF. B5, FFFFFF3C
        push    dword [ebp-0DCH]                        ; 0F44 _ FF. B5, FFFFFF24
        push    eax                                     ; 0F4A _ 50
        call    set_del_cursor                          ; 0F4B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F50 _ 83. C4, 20
        jmp     ?_041                                   ; 0F53 _ E9, 00000153

?_039:  cmp     dword [ebp-0B4H], 28                    ; 0F58 _ 83. BD, FFFFFF4C, 1C
        jnz     ?_040                                   ; 0F5F _ 75, 77
        mov     edx, dword [ebp-0C8H]                   ; 0F61 _ 8B. 95, FFFFFF38
        mov     eax, dword [shtctl]                     ; 0F67 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F6C _ 83. EC, 0C
        push    0                                       ; 0F6F _ 6A, 00
        push    edx                                     ; 0F71 _ 52
        push    dword [ebp-0C4H]                        ; 0F72 _ FF. B5, FFFFFF3C
        push    dword [ebp-0DCH]                        ; 0F78 _ FF. B5, FFFFFF24
        push    eax                                     ; 0F7E _ 50
        call    set_cursor                              ; 0F7F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F84 _ 83. C4, 20
        mov     eax, dword [ebp-0C4H]                   ; 0F87 _ 8B. 85, FFFFFF3C
        lea     edx, [eax+7H]                           ; 0F8D _ 8D. 50, 07
        test    eax, eax                                ; 0F90 _ 85. C0
        cmovs   eax, edx                                ; 0F92 _ 0F 48. C2
        sar     eax, 3                                  ; 0F95 _ C1. F8, 03
        sub     eax, 1                                  ; 0F98 _ 83. E8, 01
        mov     byte [ebp+eax-0AAH], 0                  ; 0F9B _ C6. 84 05, FFFFFF56, 00
        mov     dword [ebp-0C4H], 8                     ; 0FA3 _ C7. 85, FFFFFF3C, 00000008
        sub     esp, 4                                  ; 0FAD _ 83. EC, 04
        lea     eax, [ebp-0C8H]                         ; 0FB0 _ 8D. 85, FFFFFF38
        push    eax                                     ; 0FB6 _ 50
        lea     eax, [ebp-0AAH]                         ; 0FB7 _ 8D. 85, FFFFFF56
        push    eax                                     ; 0FBD _ 50
        push    dword [ebp-0DCH]                        ; 0FBE _ FF. B5, FFFFFF24
        call    command                                 ; 0FC4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FC9 _ 83. C4, 10
        mov     byte [ebp-0AAH], 0                      ; 0FCC _ C6. 85, FFFFFF56, 00
        jmp     ?_041                                   ; 0FD3 _ E9, 000000D3

?_040:  sub     esp, 12                                 ; 0FD8 _ 83. EC, 0C
        push    dword [ebp-0B4H]                        ; 0FDB _ FF. B5, FFFFFF4C
        call    transferScanCode                        ; 0FE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FE6 _ 83. C4, 10
        mov     byte [ebp-0C9H], al                     ; 0FE9 _ 88. 85, FFFFFF37
        cmp     byte [ebp-0C9H], 0                      ; 0FEF _ 80. BD, FFFFFF37, 00
        je      ?_041                                   ; 0FF6 _ 0F 84, 000000AF
        mov     eax, dword [ebp-0DCH]                   ; 0FFC _ 8B. 85, FFFFFF24
        mov     eax, dword [eax+4H]                     ; 1002 _ 8B. 40, 04
        sub     eax, 35                                 ; 1005 _ 83. E8, 23
        cmp     dword [ebp-0C4H], eax                   ; 1008 _ 39. 85, FFFFFF3C
        jg      ?_041                                   ; 100E _ 0F 8F, 00000097
        mov     edx, dword [ebp-0C8H]                   ; 1014 _ 8B. 95, FFFFFF38
        mov     eax, dword [shtctl]                     ; 101A _ A1, 00000244(d)
        sub     esp, 12                                 ; 101F _ 83. EC, 0C
        push    0                                       ; 1022 _ 6A, 00
        push    edx                                     ; 1024 _ 52
        push    dword [ebp-0C4H]                        ; 1025 _ FF. B5, FFFFFF3C
        push    dword [ebp-0DCH]                        ; 102B _ FF. B5, FFFFFF24
        push    eax                                     ; 1031 _ 50
        call    set_cursor                              ; 1032 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1037 _ 83. C4, 20
        movzx   eax, byte [ebp-0C9H]                    ; 103A _ 0F B6. 85, FFFFFF37
        mov     byte [ebp-0ACH], al                     ; 1041 _ 88. 85, FFFFFF54
        mov     byte [ebp-0ABH], 0                      ; 1047 _ C6. 85, FFFFFF55, 00
        mov     eax, dword [ebp-0C4H]                   ; 104E _ 8B. 85, FFFFFF3C
        lea     edx, [eax+7H]                           ; 1054 _ 8D. 50, 07
        test    eax, eax                                ; 1057 _ 85. C0
        cmovs   eax, edx                                ; 1059 _ 0F 48. C2
        sar     eax, 3                                  ; 105C _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 105F _ 8D. 50, FF
        movzx   eax, byte [ebp-0C9H]                    ; 1062 _ 0F B6. 85, FFFFFF37
        mov     byte [ebp+edx-0AAH], al                 ; 1069 _ 88. 84 15, FFFFFF56
        mov     eax, dword [ebp-0C8H]                   ; 1070 _ 8B. 85, FFFFFF38
        lea     ebx, [eax+1AH]                          ; 1076 _ 8D. 58, 1A
        mov     eax, dword [ebp-0C4H]                   ; 1079 _ 8B. 85, FFFFFF3C
        lea     ecx, [eax+0AH]                          ; 107F _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 1082 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1087 _ 83. EC, 08
        lea     edx, [ebp-0ACH]                         ; 108A _ 8D. 95, FFFFFF54
        push    edx                                     ; 1090 _ 52
        push    7                                       ; 1091 _ 6A, 07
        push    ebx                                     ; 1093 _ 53
        push    ecx                                     ; 1094 _ 51
        push    dword [ebp-0DCH]                        ; 1095 _ FF. B5, FFFFFF24
        push    eax                                     ; 109B _ 50
        call    showString                              ; 109C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10A1 _ 83. C4, 20
        add     dword [ebp-0C4H], 8                     ; 10A4 _ 83. 85, FFFFFF3C, 08
?_041:  cmp     dword [ebp-0C0H], 0                     ; 10AB _ 83. BD, FFFFFF40, 00
        js      ?_032                                   ; 10B2 _ 0F 88, FFFFFCC3
        mov     edx, dword [ebp-0C8H]                   ; 10B8 _ 8B. 95, FFFFFF38
        mov     eax, dword [shtctl]                     ; 10BE _ A1, 00000244(d)
        sub     esp, 12                                 ; 10C3 _ 83. EC, 0C
        push    dword [ebp-0C0H]                        ; 10C6 _ FF. B5, FFFFFF40
        push    edx                                     ; 10CC _ 52
        push    dword [ebp-0C4H]                        ; 10CD _ FF. B5, FFFFFF3C
        push    dword [ebp-0DCH]                        ; 10D3 _ FF. B5, FFFFFF24
        push    eax                                     ; 10D9 _ 50
        call    set_cursor                              ; 10DA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10DF _ 83. C4, 20
        jmp     ?_032                                   ; 10E2 _ E9, FFFFFC94
; console_task End of function

command:; Function begin
        push    ebp                                     ; 10E7 _ 55
        mov     ebp, esp                                ; 10E8 _ 89. E5
        sub     esp, 40                                 ; 10EA _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 10ED _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 10F0 _ 0F B6. 00
        test    al, al                                  ; 10F3 _ 84. C0
        setne   al                                      ; 10F5 _ 0F 95. C0
        movzx   eax, al                                 ; 10F8 _ 0F B6. C0
        mov     dword [ebp-18H], eax                    ; 10FB _ 89. 45, E8
        mov     eax, dword [ebp+10H]                    ; 10FE _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1101 _ 8B. 00
        sub     esp, 4                                  ; 1103 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 1106 _ FF. 75, E8
        push    dword [ebp+8H]                          ; 1109 _ FF. 75, 08
        push    eax                                     ; 110C _ 50
        call    cons_newline                            ; 110D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1112 _ 83. C4, 10
        mov     edx, eax                                ; 1115 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1117 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 111A _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 111C _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 111F _ 0F B6. 00
        cmp     al, 109                                 ; 1122 _ 3C, 6D
        jne     ?_042                                   ; 1124 _ 0F 85, 00000112
        mov     eax, dword [ebp+0CH]                    ; 112A _ 8B. 45, 0C
        add     eax, 1                                  ; 112D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1130 _ 0F B6. 00
        cmp     al, 101                                 ; 1133 _ 3C, 65
        jne     ?_042                                   ; 1135 _ 0F 85, 00000101
        mov     eax, dword [ebp+0CH]                    ; 113B _ 8B. 45, 0C
        add     eax, 2                                  ; 113E _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1141 _ 0F B6. 00
        cmp     al, 109                                 ; 1144 _ 3C, 6D
        jne     ?_042                                   ; 1146 _ 0F 85, 000000F0
        mov     eax, dword [ebp+0CH]                    ; 114C _ 8B. 45, 0C
        add     eax, 3                                  ; 114F _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1152 _ 0F B6. 00
        test    al, al                                  ; 1155 _ 84. C0
        jne     ?_042                                   ; 1157 _ 0F 85, 000000DF
        mov     eax, dword [memman]                     ; 115D _ A1, 00000008(d)
        sub     esp, 12                                 ; 1162 _ 83. EC, 0C
        push    eax                                     ; 1165 _ 50
        call    memman_total                            ; 1166 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 116B _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 116E _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1171 _ 8B. 45, EC
        lea     edx, [eax+3FFH]                         ; 1174 _ 8D. 90, 000003FF
        test    eax, eax                                ; 117A _ 85. C0
        cmovs   eax, edx                                ; 117C _ 0F 48. C2
        sar     eax, 10                                 ; 117F _ C1. F8, 0A
        sub     esp, 12                                 ; 1182 _ 83. EC, 0C
        push    eax                                     ; 1185 _ 50
        call    intToStr                                ; 1186 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 118B _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 118E _ 89. 45, F0
        sub     esp, 12                                 ; 1191 _ 83. EC, 0C
        push    dword [ebp-10H]                         ; 1194 _ FF. 75, F0
        call    getIntStrLen                            ; 1197 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 119C _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 119F _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 11A2 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 11A5 _ 8B. 00
        lea     edx, [eax+1AH]                          ; 11A7 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 11AA _ A1, 00000244(d)
        sub     esp, 8                                  ; 11AF _ 83. EC, 08
        push    ?_259                                   ; 11B2 _ 68, 0000003B(d)
        push    7                                       ; 11B7 _ 6A, 07
        push    edx                                     ; 11B9 _ 52
        push    10                                      ; 11BA _ 6A, 0A
        push    dword [ebp+8H]                          ; 11BC _ FF. 75, 08
        push    eax                                     ; 11BF _ 50
        call    showString                              ; 11C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11C5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 11C8 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 11CB _ 8B. 00
        lea     edx, [eax+1AH]                          ; 11CD _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 11D0 _ A1, 00000244(d)
        sub     esp, 8                                  ; 11D5 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 11D8 _ FF. 75, F0
        push    7                                       ; 11DB _ 6A, 07
        push    edx                                     ; 11DD _ 52
        push    90                                      ; 11DE _ 6A, 5A
        push    dword [ebp+8H]                          ; 11E0 _ FF. 75, 08
        push    eax                                     ; 11E3 _ 50
        call    showString                              ; 11E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11E9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 11EC _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 11EF _ 8B. 00
        lea     ecx, [eax+1AH]                          ; 11F1 _ 8D. 48, 1A
        mov     eax, dword [ebp-0CH]                    ; 11F4 _ 8B. 45, F4
        shl     eax, 3                                  ; 11F7 _ C1. E0, 03
        lea     edx, [eax+5AH]                          ; 11FA _ 8D. 50, 5A
        mov     eax, dword [shtctl]                     ; 11FD _ A1, 00000244(d)
        sub     esp, 8                                  ; 1202 _ 83. EC, 08
        push    ?_260                                   ; 1205 _ 68, 00000046(d)
        push    7                                       ; 120A _ 6A, 07
        push    ecx                                     ; 120C _ 51
        push    edx                                     ; 120D _ 52
        push    dword [ebp+8H]                          ; 120E _ FF. 75, 08
        push    eax                                     ; 1211 _ 50
        call    showString                              ; 1212 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1217 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 121A _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 121D _ 8B. 00
        sub     esp, 4                                  ; 121F _ 83. EC, 04
        push    0                                       ; 1222 _ 6A, 00
        push    dword [ebp+8H]                          ; 1224 _ FF. 75, 08
        push    eax                                     ; 1227 _ 50
        call    cons_newline                            ; 1228 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 122D _ 83. C4, 10
        mov     edx, eax                                ; 1230 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1232 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 1235 _ 89. 10
        jmp     ?_049                                   ; 1237 _ E9, 000001DE

?_042:  mov     eax, dword [ebp+0CH]                    ; 123C _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 123F _ 0F B6. 00
        cmp     al, 97                                  ; 1242 _ 3C, 61
        jne     ?_043                                   ; 1244 _ 0F 85, 0000009A
        mov     eax, dword [ebp+0CH]                    ; 124A _ 8B. 45, 0C
        add     eax, 1                                  ; 124D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1250 _ 0F B6. 00
        cmp     al, 117                                 ; 1253 _ 3C, 75
        jne     ?_043                                   ; 1255 _ 0F 85, 00000089
        mov     eax, dword [ebp+0CH]                    ; 125B _ 8B. 45, 0C
        add     eax, 2                                  ; 125E _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1261 _ 0F B6. 00
        cmp     al, 116                                 ; 1264 _ 3C, 74
        jnz     ?_043                                   ; 1266 _ 75, 7C
        mov     eax, dword [ebp+0CH]                    ; 1268 _ 8B. 45, 0C
        add     eax, 3                                  ; 126B _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 126E _ 0F B6. 00
        cmp     al, 104                                 ; 1271 _ 3C, 68
        jnz     ?_043                                   ; 1273 _ 75, 6F
        mov     eax, dword [ebp+0CH]                    ; 1275 _ 8B. 45, 0C
        add     eax, 4                                  ; 1278 _ 83. C0, 04
        movzx   eax, byte [eax]                         ; 127B _ 0F B6. 00
        cmp     al, 111                                 ; 127E _ 3C, 6F
        jnz     ?_043                                   ; 1280 _ 75, 62
        mov     eax, dword [ebp+0CH]                    ; 1282 _ 8B. 45, 0C
        add     eax, 5                                  ; 1285 _ 83. C0, 05
        movzx   eax, byte [eax]                         ; 1288 _ 0F B6. 00
        cmp     al, 114                                 ; 128B _ 3C, 72
        jnz     ?_043                                   ; 128D _ 75, 55
        mov     eax, dword [ebp+0CH]                    ; 128F _ 8B. 45, 0C
        add     eax, 6                                  ; 1292 _ 83. C0, 06
        movzx   eax, byte [eax]                         ; 1295 _ 0F B6. 00
        test    al, al                                  ; 1298 _ 84. C0
        jnz     ?_043                                   ; 129A _ 75, 48
        mov     eax, dword [ebp+10H]                    ; 129C _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 129F _ 8B. 00
        lea     edx, [eax+1AH]                          ; 12A1 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 12A4 _ A1, 00000244(d)
        sub     esp, 8                                  ; 12A9 _ 83. EC, 08
        push    ?_261                                   ; 12AC _ 68, 0000004C(d)
        push    7                                       ; 12B1 _ 6A, 07
        push    edx                                     ; 12B3 _ 52
        push    10                                      ; 12B4 _ 6A, 0A
        push    dword [ebp+8H]                          ; 12B6 _ FF. 75, 08
        push    eax                                     ; 12B9 _ 50
        call    showString                              ; 12BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12BF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12C2 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12C5 _ 8B. 00
        sub     esp, 4                                  ; 12C7 _ 83. EC, 04
        push    0                                       ; 12CA _ 6A, 00
        push    dword [ebp+8H]                          ; 12CC _ FF. 75, 08
        push    eax                                     ; 12CF _ 50
        call    cons_newline                            ; 12D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12D5 _ 83. C4, 10
        mov     edx, eax                                ; 12D8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 12DA _ 8B. 45, 10
        mov     dword [eax], edx                        ; 12DD _ 89. 10
        jmp     ?_049                                   ; 12DF _ E9, 00000136

?_043:  mov     eax, dword [ebp+0CH]                    ; 12E4 _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 12E7 _ 0F B6. 00
        cmp     al, 99                                  ; 12EA _ 3C, 63
        jne     ?_048                                   ; 12EC _ 0F 85, 000000DD
        mov     eax, dword [ebp+0CH]                    ; 12F2 _ 8B. 45, 0C
        add     eax, 1                                  ; 12F5 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 12F8 _ 0F B6. 00
        cmp     al, 108                                 ; 12FB _ 3C, 6C
        jne     ?_048                                   ; 12FD _ 0F 85, 000000CC
        mov     eax, dword [ebp+0CH]                    ; 1303 _ 8B. 45, 0C
        add     eax, 2                                  ; 1306 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1309 _ 0F B6. 00
        cmp     al, 115                                 ; 130C _ 3C, 73
        jne     ?_048                                   ; 130E _ 0F 85, 000000BB
        mov     eax, dword [ebp+0CH]                    ; 1314 _ 8B. 45, 0C
        add     eax, 3                                  ; 1317 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 131A _ 0F B6. 00
        test    al, al                                  ; 131D _ 84. C0
        jne     ?_048                                   ; 131F _ 0F 85, 000000AA
        mov     dword [ebp-20H], 26                     ; 1325 _ C7. 45, E0, 0000001A
        jmp     ?_047                                   ; 132C _ EB, 3A

?_044:  mov     dword [ebp-1CH], 8                      ; 132E _ C7. 45, E4, 00000008
        jmp     ?_046                                   ; 1335 _ EB, 1F

?_045:  mov     eax, dword [ebp+8H]                     ; 1337 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 133A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 133C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 133F _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 1342 _ 0F AF. 45, E0
        mov     ecx, eax                                ; 1346 _ 89. C1
        mov     eax, dword [ebp-1CH]                    ; 1348 _ 8B. 45, E4
        add     eax, ecx                                ; 134B _ 01. C8
        add     eax, edx                                ; 134D _ 01. D0
        mov     byte [eax], 0                           ; 134F _ C6. 00, 00
        add     dword [ebp-1CH], 1                      ; 1352 _ 83. 45, E4, 01
?_046:  mov     eax, dword [ebp+8H]                     ; 1356 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1359 _ 8B. 40, 04
        sub     eax, 8                                  ; 135C _ 83. E8, 08
        cmp     dword [ebp-1CH], eax                    ; 135F _ 39. 45, E4
        jl      ?_045                                   ; 1362 _ 7C, D3
        add     dword [ebp-20H], 1                      ; 1364 _ 83. 45, E0, 01
?_047:  mov     eax, dword [ebp+10H]                    ; 1368 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 136B _ 8B. 00
        add     eax, 42                                 ; 136D _ 83. C0, 2A
        cmp     dword [ebp-20H], eax                    ; 1370 _ 39. 45, E0
        jl      ?_044                                   ; 1373 _ 7C, B9
        mov     eax, dword [ebp+8H]                     ; 1375 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1378 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 137B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 137E _ 8B. 40, 04
        lea     ecx, [eax-8H]                           ; 1381 _ 8D. 48, F8
        mov     eax, dword [shtctl]                     ; 1384 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1389 _ 83. EC, 08
        push    edx                                     ; 138C _ 52
        push    ecx                                     ; 138D _ 51
        push    28                                      ; 138E _ 6A, 1C
        push    8                                       ; 1390 _ 6A, 08
        push    dword [ebp+8H]                          ; 1392 _ FF. 75, 08
        push    eax                                     ; 1395 _ 50
        call    sheet_refresh                           ; 1396 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 139B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 139E _ 8B. 45, 10
        mov     dword [eax], 2                          ; 13A1 _ C7. 00, 00000002
        mov     eax, dword [ebp+10H]                    ; 13A7 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 13AA _ 8B. 00
        lea     edx, [eax+1AH]                          ; 13AC _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 13AF _ A1, 00000244(d)
        sub     esp, 8                                  ; 13B4 _ 83. EC, 08
        push    ?_258                                   ; 13B7 _ 68, 00000039(d)
        push    7                                       ; 13BC _ 6A, 07
        push    edx                                     ; 13BE _ 52
        push    8                                       ; 13BF _ 6A, 08
        push    dword [ebp+8H]                          ; 13C1 _ FF. 75, 08
        push    eax                                     ; 13C4 _ 50
        call    showString                              ; 13C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13CA _ 83. C4, 20
        jmp     ?_049                                   ; 13CD _ EB, 4B

?_048:  cmp     dword [ebp-18H], 0                      ; 13CF _ 83. 7D, E8, 00
        jz      ?_049                                   ; 13D3 _ 74, 45
        mov     eax, dword [ebp+10H]                    ; 13D5 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 13D8 _ 8B. 00
        lea     edx, [eax+1AH]                          ; 13DA _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 13DD _ A1, 00000244(d)
        sub     esp, 8                                  ; 13E2 _ 83. EC, 08
        push    ?_262                                   ; 13E5 _ 68, 00000074(d)
        push    7                                       ; 13EA _ 6A, 07
        push    edx                                     ; 13EC _ 52
        push    10                                      ; 13ED _ 6A, 0A
        push    dword [ebp+8H]                          ; 13EF _ FF. 75, 08
        push    eax                                     ; 13F2 _ 50
        call    showString                              ; 13F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13F8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13FB _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 13FE _ 8B. 00
        sub     esp, 4                                  ; 1400 _ 83. EC, 04
        push    0                                       ; 1403 _ 6A, 00
        push    dword [ebp+8H]                          ; 1405 _ FF. 75, 08
        push    eax                                     ; 1408 _ 50
        call    cons_newline                            ; 1409 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 140E _ 83. C4, 10
        mov     edx, eax                                ; 1411 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1413 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 1416 _ 89. 10
        jmp     ?_049                                   ; 1418 _ EB, 00

?_049:  nop                                             ; 141A _ 90
        leave                                           ; 141B _ C9
        ret                                             ; 141C _ C3
; command End of function

task_b_main:; Function begin
        push    ebp                                     ; 141D _ 55
        mov     ebp, esp                                ; 141E _ 89. E5
        sub     esp, 88                                 ; 1420 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 1423 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 1426 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 1429 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 142F _ 89. 45, F4
        xor     eax, eax                                ; 1432 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 1434 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 143A _ A1, 00000244(d)
        sub     esp, 8                                  ; 143F _ 83. EC, 08
        push    ?_263                                   ; 1442 _ 68, 00000087(d)
        push    7                                       ; 1447 _ 6A, 07
        push    144                                     ; 1449 _ 68, 00000090
        push    0                                       ; 144E _ 6A, 00
        push    edx                                     ; 1450 _ 52
        push    eax                                     ; 1451 _ 50
        call    showString                              ; 1452 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1457 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 145A _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 1461 _ C7. 45, C8, 00000000
        push    0                                       ; 1468 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 146A _ 8D. 45, EC
        push    eax                                     ; 146D _ 50
        push    8                                       ; 146E _ 6A, 08
        lea     eax, [ebp-30H]                          ; 1470 _ 8D. 45, D0
        push    eax                                     ; 1473 _ 50
        call    fifo8_init                              ; 1474 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1479 _ 83. C4, 10
        call    timer_alloc                             ; 147C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 1481 _ 89. 45, C4
        sub     esp, 4                                  ; 1484 _ 83. EC, 04
        push    123                                     ; 1487 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 1489 _ 8D. 45, D0
        push    eax                                     ; 148C _ 50
        push    dword [ebp-3CH]                         ; 148D _ FF. 75, C4
        call    timer_init                              ; 1490 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1495 _ 83. C4, 10
        sub     esp, 8                                  ; 1498 _ 83. EC, 08
        push    100                                     ; 149B _ 6A, 64
        push    dword [ebp-3CH]                         ; 149D _ FF. 75, C4
        call    timer_setTime                           ; 14A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14A5 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 14A8 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 14AF _ C7. 45, C0, 00000000
?_050:  add     dword [ebp-40H], 1                      ; 14B6 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 14BA _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 14BD _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 14C0 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 14C3 _ 8B. 00
        sub     esp, 4                                  ; 14C5 _ 83. EC, 04
        push    38                                      ; 14C8 _ 6A, 26
        push    100                                     ; 14CA _ 6A, 64
        push    23                                      ; 14CC _ 6A, 17
        push    8                                       ; 14CE _ 6A, 08
        push    8                                       ; 14D0 _ 6A, 08
        push    edx                                     ; 14D2 _ 52
        push    eax                                     ; 14D3 _ 50
        call    boxfill8                                ; 14D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14D9 _ 83. C4, 20
        sub     esp, 12                                 ; 14DC _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 14DF _ FF. 75, C0
        call    intToHexStr                             ; 14E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14E7 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 14EA _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 14ED _ A1, 00000244(d)
        sub     esp, 8                                  ; 14F2 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 14F5 _ FF. 75, CC
        push    10                                      ; 14F8 _ 6A, 0A
        push    23                                      ; 14FA _ 6A, 17
        push    8                                       ; 14FC _ 6A, 08
        push    dword [ebp-4CH]                         ; 14FE _ FF. 75, B4
        push    eax                                     ; 1501 _ 50
        call    showString                              ; 1502 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1507 _ 83. C4, 20
        call    io_cli                                  ; 150A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 150F _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1512 _ 8D. 45, D0
        push    eax                                     ; 1515 _ 50
        call    fifo8_status                            ; 1516 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 151B _ 83. C4, 10
        test    eax, eax                                ; 151E _ 85. C0
        jnz     ?_051                                   ; 1520 _ 75, 07
        call    io_sti                                  ; 1522 _ E8, FFFFFFFC(rel)
        jmp     ?_050                                   ; 1527 _ EB, 8D

?_051:  sub     esp, 12                                 ; 1529 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 152C _ 8D. 45, D0
        push    eax                                     ; 152F _ 50
        call    fifo8_get                               ; 1530 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1535 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 1538 _ 89. 45, C8
        call    io_sti                                  ; 153B _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 1540 _ 83. 7D, C8, 7B
        jne     ?_050                                   ; 1544 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 154A _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1550 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1555 _ 83. EC, 08
        push    ?_264                                   ; 1558 _ 68, 00000094(d)
        push    7                                       ; 155D _ 6A, 07
        push    176                                     ; 155F _ 68, 000000B0
        push    dword [ebp-44H]                         ; 1564 _ FF. 75, BC
        push    edx                                     ; 1567 _ 52
        push    eax                                     ; 1568 _ 50
        call    showString                              ; 1569 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 156E _ 83. C4, 20
        sub     esp, 8                                  ; 1571 _ 83. EC, 08
        push    100                                     ; 1574 _ 6A, 64
        push    dword [ebp-3CH]                         ; 1576 _ FF. 75, C4
        call    timer_setTime                           ; 1579 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 157E _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 1581 _ 83. 45, BC, 08
        jmp     ?_050                                   ; 1585 _ E9, FFFFFF2C
; task_b_main End of function

cons_newline:; Function begin
        push    ebp                                     ; 158A _ 55
        mov     ebp, esp                                ; 158B _ 89. E5
        push    ebx                                     ; 158D _ 53
        sub     esp, 20                                 ; 158E _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 1591 _ 8B. 45, 08
        lea     edx, [eax+17H]                          ; 1594 _ 8D. 50, 17
        mov     eax, dword [ebp+0CH]                    ; 1597 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 159A _ 8B. 40, 08
        sub     eax, 36                                 ; 159D _ 83. E8, 24
        cmp     edx, eax                                ; 15A0 _ 39. C2
        jge     ?_052                                   ; 15A2 _ 7D, 09
        add     dword [ebp+8H], 16                      ; 15A4 _ 83. 45, 08, 10
        jmp     ?_061                                   ; 15A8 _ E9, 000000E8

?_052:  mov     dword [ebp-0CH], 26                     ; 15AD _ C7. 45, F4, 0000001A
        jmp     ?_056                                   ; 15B4 _ EB, 58

?_053:  mov     dword [ebp-10H], 8                      ; 15B6 _ C7. 45, F0, 00000008
        jmp     ?_055                                   ; 15BD _ EB, 3D

?_054:  mov     eax, dword [ebp+0CH]                    ; 15BF _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 15C2 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 15C4 _ 8B. 45, F4
        lea     ecx, [eax+10H]                          ; 15C7 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 15CA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15CD _ 8B. 40, 04
        imul    ecx, eax                                ; 15D0 _ 0F AF. C8
        mov     eax, dword [ebp-10H]                    ; 15D3 _ 8B. 45, F0
        add     eax, ecx                                ; 15D6 _ 01. C8
        lea     ecx, [edx+eax]                          ; 15D8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 15DB _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 15DE _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 15E0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15E3 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 15E6 _ 0F AF. 45, F4
        mov     ebx, eax                                ; 15EA _ 89. C3
        mov     eax, dword [ebp-10H]                    ; 15EC _ 8B. 45, F0
        add     eax, ebx                                ; 15EF _ 01. D8
        add     edx, eax                                ; 15F1 _ 01. C2
        movzx   eax, byte [ecx]                         ; 15F3 _ 0F B6. 01
        mov     byte [edx], al                          ; 15F6 _ 88. 02
        add     dword [ebp-10H], 1                      ; 15F8 _ 83. 45, F0, 01
?_055:  mov     eax, dword [ebp+0CH]                    ; 15FC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15FF _ 8B. 40, 04
        sub     eax, 8                                  ; 1602 _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 1605 _ 39. 45, F0
        jl      ?_054                                   ; 1608 _ 7C, B5
        add     dword [ebp-0CH], 1                      ; 160A _ 83. 45, F4, 01
?_056:  mov     eax, dword [ebp+0CH]                    ; 160E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1611 _ 8B. 40, 08
        sub     eax, 20                                 ; 1614 _ 83. E8, 14
        cmp     dword [ebp-0CH], eax                    ; 1617 _ 39. 45, F4
        jl      ?_053                                   ; 161A _ 7C, 9A
        mov     eax, dword [ebp+8H]                     ; 161C _ 8B. 45, 08
        add     eax, 26                                 ; 161F _ 83. C0, 1A
        mov     dword [ebp-0CH], eax                    ; 1622 _ 89. 45, F4
        jmp     ?_060                                   ; 1625 _ EB, 3A

?_057:  mov     dword [ebp-10H], 8                      ; 1627 _ C7. 45, F0, 00000008
        jmp     ?_059                                   ; 162E _ EB, 1F

?_058:  mov     eax, dword [ebp+0CH]                    ; 1630 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1633 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1635 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1638 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 163B _ 0F AF. 45, F4
        mov     ecx, eax                                ; 163F _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 1641 _ 8B. 45, F0
        add     eax, ecx                                ; 1644 _ 01. C8
        add     eax, edx                                ; 1646 _ 01. D0
        mov     byte [eax], 0                           ; 1648 _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 164B _ 83. 45, F0, 01
?_059:  mov     eax, dword [ebp+0CH]                    ; 164F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1652 _ 8B. 40, 04
        sub     eax, 8                                  ; 1655 _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 1658 _ 39. 45, F0
        jl      ?_058                                   ; 165B _ 7C, D3
        add     dword [ebp-0CH], 1                      ; 165D _ 83. 45, F4, 01
?_060:  mov     eax, dword [ebp+8H]                     ; 1661 _ 8B. 45, 08
        add     eax, 42                                 ; 1664 _ 83. C0, 2A
        cmp     dword [ebp-0CH], eax                    ; 1667 _ 39. 45, F4
        jl      ?_057                                   ; 166A _ 7C, BB
        mov     eax, dword [ebp+0CH]                    ; 166C _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 166F _ 8B. 50, 08
        mov     eax, dword [ebp+0CH]                    ; 1672 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1675 _ 8B. 40, 04
        lea     ecx, [eax-8H]                           ; 1678 _ 8D. 48, F8
        mov     eax, dword [shtctl]                     ; 167B _ A1, 00000244(d)
        sub     esp, 8                                  ; 1680 _ 83. EC, 08
        push    edx                                     ; 1683 _ 52
        push    ecx                                     ; 1684 _ 51
        push    28                                      ; 1685 _ 6A, 1C
        push    8                                       ; 1687 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1689 _ FF. 75, 0C
        push    eax                                     ; 168C _ 50
        call    sheet_refresh                           ; 168D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1692 _ 83. C4, 20
?_061:  cmp     dword [ebp+10H], 0                      ; 1695 _ 83. 7D, 10, 00
        jnz     ?_062                                   ; 1699 _ 75, 24
        mov     eax, dword [ebp+8H]                     ; 169B _ 8B. 45, 08
        lea     edx, [eax+1AH]                          ; 169E _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 16A1 _ A1, 00000244(d)
        sub     esp, 8                                  ; 16A6 _ 83. EC, 08
        push    ?_258                                   ; 16A9 _ 68, 00000039(d)
        push    7                                       ; 16AE _ 6A, 07
        push    edx                                     ; 16B0 _ 52
        push    8                                       ; 16B1 _ 6A, 08
        push    dword [ebp+0CH]                         ; 16B3 _ FF. 75, 0C
        push    eax                                     ; 16B6 _ 50
        call    showString                              ; 16B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16BC _ 83. C4, 20
?_062:  mov     eax, dword [ebp+8H]                     ; 16BF _ 8B. 45, 08
        mov     ebx, dword [ebp-4H]                     ; 16C2 _ 8B. 5D, FC
        leave                                           ; 16C5 _ C9
        ret                                             ; 16C6 _ C3
; cons_newline End of function

initBootInfo:; Function begin
        push    ebp                                     ; 16C7 _ 55
        mov     ebp, esp                                ; 16C8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 16CA _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 16CD _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 16D3 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 16D6 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 16DC _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 16DF _ 66: C7. 40, 06, 01E0
        nop                                             ; 16E5 _ 90
        pop     ebp                                     ; 16E6 _ 5D
        ret                                             ; 16E7 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 16E8 _ 55
        mov     ebp, esp                                ; 16E9 _ 89. E5
        push    ebx                                     ; 16EB _ 53
        sub     esp, 36                                 ; 16EC _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 16EF _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 16F2 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 16F5 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 16F8 _ 89. 45, F4
        jmp     ?_064                                   ; 16FB _ EB, 3E

?_063:  mov     eax, dword [ebp+1CH]                    ; 16FD _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1700 _ 0F B6. 00
        movzx   eax, al                                 ; 1703 _ 0F B6. C0
        shl     eax, 4                                  ; 1706 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1709 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 170F _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 1713 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1716 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1719 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 171C _ 8B. 00
        sub     esp, 8                                  ; 171E _ 83. EC, 08
        push    ebx                                     ; 1721 _ 53
        push    ecx                                     ; 1722 _ 51
        push    dword [ebp+14H]                         ; 1723 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1726 _ FF. 75, 10
        push    edx                                     ; 1729 _ 52
        push    eax                                     ; 172A _ 50
        call    showFont8                               ; 172B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1730 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 1733 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1737 _ 83. 45, 1C, 01
?_064:  mov     eax, dword [ebp+1CH]                    ; 173B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 173E _ 0F B6. 00
        test    al, al                                  ; 1741 _ 84. C0
        jnz     ?_063                                   ; 1743 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 1745 _ 8B. 45, 14
        add     eax, 16                                 ; 1748 _ 83. C0, 10
        sub     esp, 8                                  ; 174B _ 83. EC, 08
        push    eax                                     ; 174E _ 50
        push    dword [ebp+10H]                         ; 174F _ FF. 75, 10
        push    dword [ebp+14H]                         ; 1752 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 1755 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 1758 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 175B _ FF. 75, 08
        call    sheet_refresh                           ; 175E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1763 _ 83. C4, 20
        nop                                             ; 1766 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1767 _ 8B. 5D, FC
        leave                                           ; 176A _ C9
        ret                                             ; 176B _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 176C _ 55
        mov     ebp, esp                                ; 176D _ 89. E5
        push    ebx                                     ; 176F _ 53
        sub     esp, 4                                  ; 1770 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 1773 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 1776 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 1779 _ 8B. 45, 0C
        sub     eax, 1                                  ; 177C _ 83. E8, 01
        sub     esp, 4                                  ; 177F _ 83. EC, 04
        push    edx                                     ; 1782 _ 52
        push    eax                                     ; 1783 _ 50
        push    0                                       ; 1784 _ 6A, 00
        push    0                                       ; 1786 _ 6A, 00
        push    14                                      ; 1788 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 178A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 178D _ FF. 75, 08
        call    boxfill8                                ; 1790 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1795 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1798 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 179B _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 179E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 17A1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 17A4 _ 8B. 45, 10
        sub     eax, 24                                 ; 17A7 _ 83. E8, 18
        sub     esp, 4                                  ; 17AA _ 83. EC, 04
        push    ecx                                     ; 17AD _ 51
        push    edx                                     ; 17AE _ 52
        push    eax                                     ; 17AF _ 50
        push    0                                       ; 17B0 _ 6A, 00
        push    8                                       ; 17B2 _ 6A, 08
        push    dword [ebp+0CH]                         ; 17B4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17B7 _ FF. 75, 08
        call    boxfill8                                ; 17BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17BF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17C2 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 17C5 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 17C8 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 17CB _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 17CE _ 8B. 45, 10
        sub     eax, 23                                 ; 17D1 _ 83. E8, 17
        sub     esp, 4                                  ; 17D4 _ 83. EC, 04
        push    ecx                                     ; 17D7 _ 51
        push    edx                                     ; 17D8 _ 52
        push    eax                                     ; 17D9 _ 50
        push    0                                       ; 17DA _ 6A, 00
        push    7                                       ; 17DC _ 6A, 07
        push    dword [ebp+0CH]                         ; 17DE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17E1 _ FF. 75, 08
        call    boxfill8                                ; 17E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17E9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17EC _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 17EF _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 17F2 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 17F5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 17F8 _ 8B. 45, 10
        sub     eax, 22                                 ; 17FB _ 83. E8, 16
        sub     esp, 4                                  ; 17FE _ 83. EC, 04
        push    ecx                                     ; 1801 _ 51
        push    edx                                     ; 1802 _ 52
        push    eax                                     ; 1803 _ 50
        push    0                                       ; 1804 _ 6A, 00
        push    8                                       ; 1806 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1808 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 180B _ FF. 75, 08
        call    boxfill8                                ; 180E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1813 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1816 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1819 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 181C _ 8B. 45, 10
        sub     eax, 20                                 ; 181F _ 83. E8, 14
        sub     esp, 4                                  ; 1822 _ 83. EC, 04
        push    edx                                     ; 1825 _ 52
        push    51                                      ; 1826 _ 6A, 33
        push    eax                                     ; 1828 _ 50
        push    10                                      ; 1829 _ 6A, 0A
        push    7                                       ; 182B _ 6A, 07
        push    dword [ebp+0CH]                         ; 182D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1830 _ FF. 75, 08
        call    boxfill8                                ; 1833 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1838 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 183B _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 183E _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1841 _ 8B. 45, 10
        sub     eax, 20                                 ; 1844 _ 83. E8, 14
        sub     esp, 4                                  ; 1847 _ 83. EC, 04
        push    edx                                     ; 184A _ 52
        push    9                                       ; 184B _ 6A, 09
        push    eax                                     ; 184D _ 50
        push    9                                       ; 184E _ 6A, 09
        push    7                                       ; 1850 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1852 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1855 _ FF. 75, 08
        call    boxfill8                                ; 1858 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 185D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1860 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1863 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1866 _ 8B. 45, 10
        sub     eax, 4                                  ; 1869 _ 83. E8, 04
        sub     esp, 4                                  ; 186C _ 83. EC, 04
        push    edx                                     ; 186F _ 52
        push    50                                      ; 1870 _ 6A, 32
        push    eax                                     ; 1872 _ 50
        push    10                                      ; 1873 _ 6A, 0A
        push    15                                      ; 1875 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1877 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 187A _ FF. 75, 08
        call    boxfill8                                ; 187D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1882 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1885 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1888 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 188B _ 8B. 45, 10
        sub     eax, 19                                 ; 188E _ 83. E8, 13
        sub     esp, 4                                  ; 1891 _ 83. EC, 04
        push    edx                                     ; 1894 _ 52
        push    50                                      ; 1895 _ 6A, 32
        push    eax                                     ; 1897 _ 50
        push    50                                      ; 1898 _ 6A, 32
        push    15                                      ; 189A _ 6A, 0F
        push    dword [ebp+0CH]                         ; 189C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 189F _ FF. 75, 08
        call    boxfill8                                ; 18A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18A7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 18AA _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 18AD _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 18B0 _ 8B. 45, 10
        sub     eax, 3                                  ; 18B3 _ 83. E8, 03
        sub     esp, 4                                  ; 18B6 _ 83. EC, 04
        push    edx                                     ; 18B9 _ 52
        push    50                                      ; 18BA _ 6A, 32
        push    eax                                     ; 18BC _ 50
        push    10                                      ; 18BD _ 6A, 0A
        push    0                                       ; 18BF _ 6A, 00
        push    dword [ebp+0CH]                         ; 18C1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18C4 _ FF. 75, 08
        call    boxfill8                                ; 18C7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18CC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 18CF _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 18D2 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 18D5 _ 8B. 45, 10
        sub     eax, 20                                 ; 18D8 _ 83. E8, 14
        sub     esp, 4                                  ; 18DB _ 83. EC, 04
        push    edx                                     ; 18DE _ 52
        push    51                                      ; 18DF _ 6A, 33
        push    eax                                     ; 18E1 _ 50
        push    51                                      ; 18E2 _ 6A, 33
        push    0                                       ; 18E4 _ 6A, 00
        push    dword [ebp+0CH]                         ; 18E6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18E9 _ FF. 75, 08
        call    boxfill8                                ; 18EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18F1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 18F4 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 18F7 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 18FA _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 18FD _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1900 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1903 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1906 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1909 _ 83. E8, 2F
        sub     esp, 4                                  ; 190C _ 83. EC, 04
        push    ebx                                     ; 190F _ 53
        push    ecx                                     ; 1910 _ 51
        push    edx                                     ; 1911 _ 52
        push    eax                                     ; 1912 _ 50
        push    15                                      ; 1913 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1915 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1918 _ FF. 75, 08
        call    boxfill8                                ; 191B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1920 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1923 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1926 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1929 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 192C _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 192F _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1932 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1935 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1938 _ 83. E8, 2F
        sub     esp, 4                                  ; 193B _ 83. EC, 04
        push    ebx                                     ; 193E _ 53
        push    ecx                                     ; 193F _ 51
        push    edx                                     ; 1940 _ 52
        push    eax                                     ; 1941 _ 50
        push    15                                      ; 1942 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1944 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1947 _ FF. 75, 08
        call    boxfill8                                ; 194A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 194F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1952 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1955 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1958 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 195B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 195E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1961 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1964 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1967 _ 83. E8, 2F
        sub     esp, 4                                  ; 196A _ 83. EC, 04
        push    ebx                                     ; 196D _ 53
        push    ecx                                     ; 196E _ 51
        push    edx                                     ; 196F _ 52
        push    eax                                     ; 1970 _ 50
        push    7                                       ; 1971 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1973 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1976 _ FF. 75, 08
        call    boxfill8                                ; 1979 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 197E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1981 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1984 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1987 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 198A _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 198D _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1990 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1993 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1996 _ 83. E8, 03
        sub     esp, 4                                  ; 1999 _ 83. EC, 04
        push    ebx                                     ; 199C _ 53
        push    ecx                                     ; 199D _ 51
        push    edx                                     ; 199E _ 52
        push    eax                                     ; 199F _ 50
        push    7                                       ; 19A0 _ 6A, 07
        push    dword [ebp+0CH]                         ; 19A2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19A5 _ FF. 75, 08
        call    boxfill8                                ; 19A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19AD _ 83. C4, 20
        nop                                             ; 19B0 _ 90
        mov     ebx, dword [ebp-4H]                     ; 19B1 _ 8B. 5D, FC
        leave                                           ; 19B4 _ C9
        ret                                             ; 19B5 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 19B6 _ 55
        mov     ebp, esp                                ; 19B7 _ 89. E5
        sub     esp, 24                                 ; 19B9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 19BC _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 19C1 _ 89. 45, EC
        movzx   eax, word [?_273]                       ; 19C4 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 19CB _ 98
        mov     dword [ebp-10H], eax                    ; 19CC _ 89. 45, F0
        movzx   eax, word [?_274]                       ; 19CF _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 19D6 _ 98
        mov     dword [ebp-0CH], eax                    ; 19D7 _ 89. 45, F4
        sub     esp, 4                                  ; 19DA _ 83. EC, 04
        push    table_rgb.2444                          ; 19DD _ 68, 00000120(d)
        push    15                                      ; 19E2 _ 6A, 0F
        push    0                                       ; 19E4 _ 6A, 00
        call    set_palette                             ; 19E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19EB _ 83. C4, 10
        nop                                             ; 19EE _ 90
        leave                                           ; 19EF _ C9
        ret                                             ; 19F0 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 19F1 _ 55
        mov     ebp, esp                                ; 19F2 _ 89. E5
        sub     esp, 24                                 ; 19F4 _ 83. EC, 18
        call    io_load_eflags                          ; 19F7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 19FC _ 89. 45, F4
        call    io_cli                                  ; 19FF _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1A04 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1A07 _ FF. 75, 08
        push    968                                     ; 1A0A _ 68, 000003C8
        call    io_out8                                 ; 1A0F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A14 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1A17 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1A1A _ 89. 45, F0
        jmp     ?_066                                   ; 1A1D _ EB, 65

?_065:  mov     eax, dword [ebp+10H]                    ; 1A1F _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1A22 _ 0F B6. 00
        shr     al, 2                                   ; 1A25 _ C0. E8, 02
        movzx   eax, al                                 ; 1A28 _ 0F B6. C0
        sub     esp, 8                                  ; 1A2B _ 83. EC, 08
        push    eax                                     ; 1A2E _ 50
        push    969                                     ; 1A2F _ 68, 000003C9
        call    io_out8                                 ; 1A34 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A39 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1A3C _ 8B. 45, 10
        add     eax, 1                                  ; 1A3F _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1A42 _ 0F B6. 00
        shr     al, 2                                   ; 1A45 _ C0. E8, 02
        movzx   eax, al                                 ; 1A48 _ 0F B6. C0
        sub     esp, 8                                  ; 1A4B _ 83. EC, 08
        push    eax                                     ; 1A4E _ 50
        push    969                                     ; 1A4F _ 68, 000003C9
        call    io_out8                                 ; 1A54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A59 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1A5C _ 8B. 45, 10
        add     eax, 2                                  ; 1A5F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1A62 _ 0F B6. 00
        shr     al, 2                                   ; 1A65 _ C0. E8, 02
        movzx   eax, al                                 ; 1A68 _ 0F B6. C0
        sub     esp, 8                                  ; 1A6B _ 83. EC, 08
        push    eax                                     ; 1A6E _ 50
        push    969                                     ; 1A6F _ 68, 000003C9
        call    io_out8                                 ; 1A74 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A79 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1A7C _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 1A80 _ 83. 45, F0, 01
?_066:  mov     eax, dword [ebp-10H]                    ; 1A84 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1A87 _ 3B. 45, 0C
        jle     ?_065                                   ; 1A8A _ 7E, 93
        sub     esp, 12                                 ; 1A8C _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 1A8F _ FF. 75, F4
        call    io_store_eflags                         ; 1A92 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A97 _ 83. C4, 10
        nop                                             ; 1A9A _ 90
        leave                                           ; 1A9B _ C9
        ret                                             ; 1A9C _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1A9D _ 55
        mov     ebp, esp                                ; 1A9E _ 89. E5
        sub     esp, 20                                 ; 1AA0 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1AA3 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1AA6 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1AA9 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1AAC _ 89. 45, FC
        jmp     ?_070                                   ; 1AAF _ EB, 33

?_067:  mov     eax, dword [ebp+14H]                    ; 1AB1 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1AB4 _ 89. 45, F8
        jmp     ?_069                                   ; 1AB7 _ EB, 1F

?_068:  mov     eax, dword [ebp-4H]                     ; 1AB9 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1ABC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1AC0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1AC2 _ 8B. 45, F8
        add     eax, edx                                ; 1AC5 _ 01. D0
        mov     edx, eax                                ; 1AC7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1AC9 _ 8B. 45, 08
        add     edx, eax                                ; 1ACC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1ACE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1AD2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1AD4 _ 83. 45, F8, 01
?_069:  mov     eax, dword [ebp-8H]                     ; 1AD8 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1ADB _ 3B. 45, 1C
        jle     ?_068                                   ; 1ADE _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1AE0 _ 83. 45, FC, 01
?_070:  mov     eax, dword [ebp-4H]                     ; 1AE4 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1AE7 _ 3B. 45, 20
        jle     ?_067                                   ; 1AEA _ 7E, C5
        nop                                             ; 1AEC _ 90
        leave                                           ; 1AED _ C9
        ret                                             ; 1AEE _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1AEF _ 55
        mov     ebp, esp                                ; 1AF0 _ 89. E5
        push    edi                                     ; 1AF2 _ 57
        push    esi                                     ; 1AF3 _ 56
        push    ebx                                     ; 1AF4 _ 53
        sub     esp, 16                                 ; 1AF5 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1AF8 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1AFB _ 8B. 45, 14
        add     eax, edx                                ; 1AFE _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1B00 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1B03 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1B06 _ 8B. 45, 18
        add     eax, edx                                ; 1B09 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1B0B _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1B0E _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1B11 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1B14 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1B17 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1B1A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1B1D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1B20 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1B23 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1B26 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1B29 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B2C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B2F _ 8B. 00
        push    edi                                     ; 1B31 _ 57
        push    esi                                     ; 1B32 _ 56
        push    ebx                                     ; 1B33 _ 53
        push    ecx                                     ; 1B34 _ 51
        push    15                                      ; 1B35 _ 6A, 0F
        push    edx                                     ; 1B37 _ 52
        push    eax                                     ; 1B38 _ 50
        call    boxfill8                                ; 1B39 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B3E _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1B41 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1B44 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1B47 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1B4A _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1B4D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1B50 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1B53 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1B56 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1B59 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1B5C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B5F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B62 _ 8B. 00
        push    edi                                     ; 1B64 _ 57
        push    esi                                     ; 1B65 _ 56
        push    ebx                                     ; 1B66 _ 53
        push    ecx                                     ; 1B67 _ 51
        push    15                                      ; 1B68 _ 6A, 0F
        push    edx                                     ; 1B6A _ 52
        push    eax                                     ; 1B6B _ 50
        call    boxfill8                                ; 1B6C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B71 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1B74 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1B77 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1B7A _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1B7D _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1B80 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1B83 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1B86 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1B89 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1B8C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1B8F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B92 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B95 _ 8B. 00
        push    edi                                     ; 1B97 _ 57
        push    esi                                     ; 1B98 _ 56
        push    ebx                                     ; 1B99 _ 53
        push    ecx                                     ; 1B9A _ 51
        push    7                                       ; 1B9B _ 6A, 07
        push    edx                                     ; 1B9D _ 52
        push    eax                                     ; 1B9E _ 50
        call    boxfill8                                ; 1B9F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1BA4 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1BA7 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1BAA _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1BAD _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1BB0 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1BB3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1BB6 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1BB9 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1BBC _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1BBF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1BC2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BC5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1BC8 _ 8B. 00
        push    edi                                     ; 1BCA _ 57
        push    esi                                     ; 1BCB _ 56
        push    ebx                                     ; 1BCC _ 53
        push    ecx                                     ; 1BCD _ 51
        push    7                                       ; 1BCE _ 6A, 07
        push    edx                                     ; 1BD0 _ 52
        push    eax                                     ; 1BD1 _ 50
        call    boxfill8                                ; 1BD2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1BD7 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1BDA _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1BDD _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1BE0 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1BE3 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1BE6 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1BE9 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1BEC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1BEF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BF2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1BF5 _ 8B. 00
        push    esi                                     ; 1BF7 _ 56
        push    dword [ebp-14H]                         ; 1BF8 _ FF. 75, EC
        push    ebx                                     ; 1BFB _ 53
        push    ecx                                     ; 1BFC _ 51
        push    0                                       ; 1BFD _ 6A, 00
        push    edx                                     ; 1BFF _ 52
        push    eax                                     ; 1C00 _ 50
        call    boxfill8                                ; 1C01 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C06 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1C09 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1C0C _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1C0F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1C12 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1C15 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1C18 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1C1B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C1E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C21 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C24 _ 8B. 00
        push    dword [ebp-10H]                         ; 1C26 _ FF. 75, F0
        push    esi                                     ; 1C29 _ 56
        push    ebx                                     ; 1C2A _ 53
        push    ecx                                     ; 1C2B _ 51
        push    0                                       ; 1C2C _ 6A, 00
        push    edx                                     ; 1C2E _ 52
        push    eax                                     ; 1C2F _ 50
        call    boxfill8                                ; 1C30 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C35 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1C38 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1C3B _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1C3E _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1C41 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1C44 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1C47 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1C4A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C4D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C50 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C53 _ 8B. 00
        push    esi                                     ; 1C55 _ 56
        push    dword [ebp-14H]                         ; 1C56 _ FF. 75, EC
        push    ebx                                     ; 1C59 _ 53
        push    ecx                                     ; 1C5A _ 51
        push    8                                       ; 1C5B _ 6A, 08
        push    edx                                     ; 1C5D _ 52
        push    eax                                     ; 1C5E _ 50
        call    boxfill8                                ; 1C5F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C64 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1C67 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1C6A _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1C6D _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1C70 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1C73 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1C76 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1C79 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1C7C _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1C7F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C82 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C85 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C88 _ 8B. 00
        push    edi                                     ; 1C8A _ 57
        push    esi                                     ; 1C8B _ 56
        push    ebx                                     ; 1C8C _ 53
        push    ecx                                     ; 1C8D _ 51
        push    8                                       ; 1C8E _ 6A, 08
        push    edx                                     ; 1C90 _ 52
        push    eax                                     ; 1C91 _ 50
        call    boxfill8                                ; 1C92 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1C97 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1C9A _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1C9D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1CA0 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1CA3 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1CA6 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1CA9 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1CAC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1CAF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CB2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1CB5 _ 8B. 00
        push    dword [ebp-10H]                         ; 1CB7 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1CBA _ FF. 75, EC
        push    esi                                     ; 1CBD _ 56
        push    ebx                                     ; 1CBE _ 53
        push    ecx                                     ; 1CBF _ 51
        push    edx                                     ; 1CC0 _ 52
        push    eax                                     ; 1CC1 _ 50
        call    boxfill8                                ; 1CC2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1CC7 _ 83. C4, 1C
        nop                                             ; 1CCA _ 90
        lea     esp, [ebp-0CH]                          ; 1CCB _ 8D. 65, F4
        pop     ebx                                     ; 1CCE _ 5B
        pop     esi                                     ; 1CCF _ 5E
        pop     edi                                     ; 1CD0 _ 5F
        pop     ebp                                     ; 1CD1 _ 5D
        ret                                             ; 1CD2 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1CD3 _ 55
        mov     ebp, esp                                ; 1CD4 _ 89. E5
        sub     esp, 20                                 ; 1CD6 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1CD9 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1CDC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1CDF _ C7. 45, FC, 00000000
        jmp     ?_080                                   ; 1CE6 _ E9, 0000016C

?_071:  mov     edx, dword [ebp-4H]                     ; 1CEB _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1CEE _ 8B. 45, 1C
        add     eax, edx                                ; 1CF1 _ 01. D0
        movzx   eax, byte [eax]                         ; 1CF3 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1CF6 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1CF9 _ 80. 7D, FB, 00
        jns     ?_072                                   ; 1CFD _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1CFF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1D02 _ 8B. 45, FC
        add     eax, edx                                ; 1D05 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1D07 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1D0B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1D0D _ 8B. 45, 10
        add     eax, edx                                ; 1D10 _ 01. D0
        mov     edx, eax                                ; 1D12 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1D14 _ 8B. 45, 08
        add     edx, eax                                ; 1D17 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D19 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1D1D _ 88. 02
?_072:  movsx   eax, byte [ebp-5H]                      ; 1D1F _ 0F BE. 45, FB
        and     eax, 40H                                ; 1D23 _ 83. E0, 40
        test    eax, eax                                ; 1D26 _ 85. C0
        jz      ?_073                                   ; 1D28 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1D2A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1D2D _ 8B. 45, FC
        add     eax, edx                                ; 1D30 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1D32 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1D36 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1D38 _ 8B. 45, 10
        add     eax, edx                                ; 1D3B _ 01. D0
        lea     edx, [eax+1H]                           ; 1D3D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D40 _ 8B. 45, 08
        add     edx, eax                                ; 1D43 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D45 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1D49 _ 88. 02
?_073:  movsx   eax, byte [ebp-5H]                      ; 1D4B _ 0F BE. 45, FB
        and     eax, 20H                                ; 1D4F _ 83. E0, 20
        test    eax, eax                                ; 1D52 _ 85. C0
        jz      ?_074                                   ; 1D54 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1D56 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1D59 _ 8B. 45, FC
        add     eax, edx                                ; 1D5C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1D5E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1D62 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1D64 _ 8B. 45, 10
        add     eax, edx                                ; 1D67 _ 01. D0
        lea     edx, [eax+2H]                           ; 1D69 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1D6C _ 8B. 45, 08
        add     edx, eax                                ; 1D6F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D71 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1D75 _ 88. 02
?_074:  movsx   eax, byte [ebp-5H]                      ; 1D77 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1D7B _ 83. E0, 10
        test    eax, eax                                ; 1D7E _ 85. C0
        jz      ?_075                                   ; 1D80 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1D82 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1D85 _ 8B. 45, FC
        add     eax, edx                                ; 1D88 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1D8A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1D8E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1D90 _ 8B. 45, 10
        add     eax, edx                                ; 1D93 _ 01. D0
        lea     edx, [eax+3H]                           ; 1D95 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1D98 _ 8B. 45, 08
        add     edx, eax                                ; 1D9B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D9D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1DA1 _ 88. 02
?_075:  movsx   eax, byte [ebp-5H]                      ; 1DA3 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1DA7 _ 83. E0, 08
        test    eax, eax                                ; 1DAA _ 85. C0
        jz      ?_076                                   ; 1DAC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1DAE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1DB1 _ 8B. 45, FC
        add     eax, edx                                ; 1DB4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1DB6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1DBA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1DBC _ 8B. 45, 10
        add     eax, edx                                ; 1DBF _ 01. D0
        lea     edx, [eax+4H]                           ; 1DC1 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1DC4 _ 8B. 45, 08
        add     edx, eax                                ; 1DC7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1DC9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1DCD _ 88. 02
?_076:  movsx   eax, byte [ebp-5H]                      ; 1DCF _ 0F BE. 45, FB
        and     eax, 04H                                ; 1DD3 _ 83. E0, 04
        test    eax, eax                                ; 1DD6 _ 85. C0
        jz      ?_077                                   ; 1DD8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1DDA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1DDD _ 8B. 45, FC
        add     eax, edx                                ; 1DE0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1DE2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1DE6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1DE8 _ 8B. 45, 10
        add     eax, edx                                ; 1DEB _ 01. D0
        lea     edx, [eax+5H]                           ; 1DED _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1DF0 _ 8B. 45, 08
        add     edx, eax                                ; 1DF3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1DF5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1DF9 _ 88. 02
?_077:  movsx   eax, byte [ebp-5H]                      ; 1DFB _ 0F BE. 45, FB
        and     eax, 02H                                ; 1DFF _ 83. E0, 02
        test    eax, eax                                ; 1E02 _ 85. C0
        jz      ?_078                                   ; 1E04 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1E06 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1E09 _ 8B. 45, FC
        add     eax, edx                                ; 1E0C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1E0E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1E12 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1E14 _ 8B. 45, 10
        add     eax, edx                                ; 1E17 _ 01. D0
        lea     edx, [eax+6H]                           ; 1E19 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1E1C _ 8B. 45, 08
        add     edx, eax                                ; 1E1F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1E21 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1E25 _ 88. 02
?_078:  movsx   eax, byte [ebp-5H]                      ; 1E27 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1E2B _ 83. E0, 01
        test    eax, eax                                ; 1E2E _ 85. C0
        jz      ?_079                                   ; 1E30 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1E32 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1E35 _ 8B. 45, FC
        add     eax, edx                                ; 1E38 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1E3A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1E3E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1E40 _ 8B. 45, 10
        add     eax, edx                                ; 1E43 _ 01. D0
        lea     edx, [eax+7H]                           ; 1E45 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1E48 _ 8B. 45, 08
        add     edx, eax                                ; 1E4B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1E4D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1E51 _ 88. 02
?_079:  add     dword [ebp-4H], 1                       ; 1E53 _ 83. 45, FC, 01
?_080:  cmp     dword [ebp-4H], 15                      ; 1E57 _ 83. 7D, FC, 0F
        jle     ?_071                                   ; 1E5B _ 0F 8E, FFFFFE8A
        nop                                             ; 1E61 _ 90
        leave                                           ; 1E62 _ C9
        ret                                             ; 1E63 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1E64 _ 55
        mov     ebp, esp                                ; 1E65 _ 89. E5
        sub     esp, 20                                 ; 1E67 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1E6A _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1E6D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1E70 _ C7. 45, FC, 00000000
        jmp     ?_087                                   ; 1E77 _ E9, 000000B1

?_081:  mov     dword [ebp-8H], 0                       ; 1E7C _ C7. 45, F8, 00000000
        jmp     ?_086                                   ; 1E83 _ E9, 00000097

?_082:  mov     eax, dword [ebp-4H]                     ; 1E88 _ 8B. 45, FC
        shl     eax, 4                                  ; 1E8B _ C1. E0, 04
        mov     edx, eax                                ; 1E8E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1E90 _ 8B. 45, F8
        add     eax, edx                                ; 1E93 _ 01. D0
        add     eax, cursor.2499                        ; 1E95 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1E9A _ 0F B6. 00
        cmp     al, 42                                  ; 1E9D _ 3C, 2A
        jnz     ?_083                                   ; 1E9F _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1EA1 _ 8B. 45, FC
        shl     eax, 4                                  ; 1EA4 _ C1. E0, 04
        mov     edx, eax                                ; 1EA7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1EA9 _ 8B. 45, F8
        add     eax, edx                                ; 1EAC _ 01. D0
        mov     edx, eax                                ; 1EAE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EB0 _ 8B. 45, 08
        add     eax, edx                                ; 1EB3 _ 01. D0
        mov     byte [eax], 0                           ; 1EB5 _ C6. 00, 00
?_083:  mov     eax, dword [ebp-4H]                     ; 1EB8 _ 8B. 45, FC
        shl     eax, 4                                  ; 1EBB _ C1. E0, 04
        mov     edx, eax                                ; 1EBE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1EC0 _ 8B. 45, F8
        add     eax, edx                                ; 1EC3 _ 01. D0
        add     eax, cursor.2499                        ; 1EC5 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1ECA _ 0F B6. 00
        cmp     al, 79                                  ; 1ECD _ 3C, 4F
        jnz     ?_084                                   ; 1ECF _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1ED1 _ 8B. 45, FC
        shl     eax, 4                                  ; 1ED4 _ C1. E0, 04
        mov     edx, eax                                ; 1ED7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1ED9 _ 8B. 45, F8
        add     eax, edx                                ; 1EDC _ 01. D0
        mov     edx, eax                                ; 1EDE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EE0 _ 8B. 45, 08
        add     eax, edx                                ; 1EE3 _ 01. D0
        mov     byte [eax], 7                           ; 1EE5 _ C6. 00, 07
?_084:  mov     eax, dword [ebp-4H]                     ; 1EE8 _ 8B. 45, FC
        shl     eax, 4                                  ; 1EEB _ C1. E0, 04
        mov     edx, eax                                ; 1EEE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1EF0 _ 8B. 45, F8
        add     eax, edx                                ; 1EF3 _ 01. D0
        add     eax, cursor.2499                        ; 1EF5 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1EFA _ 0F B6. 00
        cmp     al, 46                                  ; 1EFD _ 3C, 2E
        jnz     ?_085                                   ; 1EFF _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1F01 _ 8B. 45, FC
        shl     eax, 4                                  ; 1F04 _ C1. E0, 04
        mov     edx, eax                                ; 1F07 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1F09 _ 8B. 45, F8
        add     eax, edx                                ; 1F0C _ 01. D0
        mov     edx, eax                                ; 1F0E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F10 _ 8B. 45, 08
        add     edx, eax                                ; 1F13 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1F15 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1F19 _ 88. 02
?_085:  add     dword [ebp-8H], 1                       ; 1F1B _ 83. 45, F8, 01
?_086:  cmp     dword [ebp-8H], 15                      ; 1F1F _ 83. 7D, F8, 0F
        jle     ?_082                                   ; 1F23 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1F29 _ 83. 45, FC, 01
?_087:  cmp     dword [ebp-4H], 15                      ; 1F2D _ 83. 7D, FC, 0F
        jle     ?_081                                   ; 1F31 _ 0F 8E, FFFFFF45
        nop                                             ; 1F37 _ 90
        leave                                           ; 1F38 _ C9
        ret                                             ; 1F39 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1F3A _ 55
        mov     ebp, esp                                ; 1F3B _ 89. E5
        push    ebx                                     ; 1F3D _ 53
        sub     esp, 16                                 ; 1F3E _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1F41 _ C7. 45, F8, 00000000
        jmp     ?_091                                   ; 1F48 _ EB, 50

?_088:  mov     dword [ebp-0CH], 0                      ; 1F4A _ C7. 45, F4, 00000000
        jmp     ?_090                                   ; 1F51 _ EB, 3B

?_089:  mov     eax, dword [ebp-8H]                     ; 1F53 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1F56 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1F5A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F5C _ 8B. 45, F4
        add     eax, edx                                ; 1F5F _ 01. D0
        mov     edx, eax                                ; 1F61 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1F63 _ 8B. 45, 20
        add     eax, edx                                ; 1F66 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1F68 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1F6B _ 8B. 55, F8
        add     edx, ecx                                ; 1F6E _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1F70 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1F74 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1F77 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1F7A _ 01. D9
        add     edx, ecx                                ; 1F7C _ 01. CA
        mov     ecx, edx                                ; 1F7E _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1F80 _ 8B. 55, 08
        add     edx, ecx                                ; 1F83 _ 01. CA
        movzx   eax, byte [eax]                         ; 1F85 _ 0F B6. 00
        mov     byte [edx], al                          ; 1F88 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1F8A _ 83. 45, F4, 01
?_090:  mov     eax, dword [ebp-0CH]                    ; 1F8E _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1F91 _ 3B. 45, 10
        jl      ?_089                                   ; 1F94 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1F96 _ 83. 45, F8, 01
?_091:  mov     eax, dword [ebp-8H]                     ; 1F9A _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1F9D _ 3B. 45, 14
        jl      ?_088                                   ; 1FA0 _ 7C, A8
        nop                                             ; 1FA2 _ 90
        add     esp, 16                                 ; 1FA3 _ 83. C4, 10
        pop     ebx                                     ; 1FA6 _ 5B
        pop     ebp                                     ; 1FA7 _ 5D
        ret                                             ; 1FA8 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1FA9 _ 55
        mov     ebp, esp                                ; 1FAA _ 89. E5
        sub     esp, 24                                 ; 1FAC _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1FAF _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1FB4 _ 89. 45, EC
        movzx   eax, word [?_273]                       ; 1FB7 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1FBE _ 98
        mov     dword [ebp-10H], eax                    ; 1FBF _ 89. 45, F0
        movzx   eax, word [?_274]                       ; 1FC2 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1FC9 _ 98
        mov     dword [ebp-0CH], eax                    ; 1FCA _ 89. 45, F4
        sub     esp, 8                                  ; 1FCD _ 83. EC, 08
        push    32                                      ; 1FD0 _ 6A, 20
        push    32                                      ; 1FD2 _ 6A, 20
        call    io_out8                                 ; 1FD4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FD9 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1FDC _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1FE0 _ 83. EC, 0C
        push    96                                      ; 1FE3 _ 6A, 60
        call    io_in8                                  ; 1FE5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FEA _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1FED _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1FF0 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1FF4 _ 83. EC, 08
        push    eax                                     ; 1FF7 _ 50
        push    keyInfo                                 ; 1FF8 _ 68, 00000010(d)
        call    fifo8_put                               ; 1FFD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2002 _ 83. C4, 10
        nop                                             ; 2005 _ 90
        leave                                           ; 2006 _ C9
        ret                                             ; 2007 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 2008 _ 55
        mov     ebp, esp                                ; 2009 _ 89. E5
        sub     esp, 40                                 ; 200B _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 200E _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 2011 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 2014 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 2018 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 201B _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 201E _ 0F BE. 45, F7
        sub     esp, 12                                 ; 2022 _ 83. EC, 0C
        push    eax                                     ; 2025 _ 50
        call    charToVal                               ; 2026 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 202B _ 83. C4, 10
        mov     byte [?_272], al                        ; 202E _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 2033 _ 0F B6. 45, E4
        shr     al, 4                                   ; 2037 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 203A _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 203D _ 0F B6. 45, E4
        movsx   eax, al                                 ; 2041 _ 0F BE. C0
        sub     esp, 12                                 ; 2044 _ 83. EC, 0C
        push    eax                                     ; 2047 _ 50
        call    charToVal                               ; 2048 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 204D _ 83. C4, 10
        mov     byte [?_271], al                        ; 2050 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 2055 _ B8, 00000000(d)
        leave                                           ; 205A _ C9
        ret                                             ; 205B _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 205C _ 55
        mov     ebp, esp                                ; 205D _ 89. E5
        sub     esp, 4                                  ; 205F _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2062 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2065 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 2068 _ 80. 7D, FC, 09
        jle     ?_092                                   ; 206C _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 206E _ 0F B6. 45, FC
        add     eax, 55                                 ; 2072 _ 83. C0, 37
        jmp     ?_093                                   ; 2075 _ EB, 07

?_092:  movzx   eax, byte [ebp-4H]                      ; 2077 _ 0F B6. 45, FC
        add     eax, 48                                 ; 207B _ 83. C0, 30
?_093:  leave                                           ; 207E _ C9
        ret                                             ; 207F _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 2080 _ 55
        mov     ebp, esp                                ; 2081 _ 89. E5
        sub     esp, 16                                 ; 2083 _ 83. EC, 10
        mov     byte [str.2542], 48                     ; 2086 _ C6. 05, 00000278(d), 30
        mov     byte [?_277], 120                       ; 208D _ C6. 05, 00000279(d), 78
        mov     byte [?_278], 0                         ; 2094 _ C6. 05, 00000282(d), 00
        mov     dword [ebp-0CH], 2                      ; 209B _ C7. 45, F4, 00000002
        jmp     ?_095                                   ; 20A2 _ EB, 0F

?_094:  mov     eax, dword [ebp-0CH]                    ; 20A4 _ 8B. 45, F4
        add     eax, str.2542                           ; 20A7 _ 05, 00000278(d)
        mov     byte [eax], 48                          ; 20AC _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 20AF _ 83. 45, F4, 01
?_095:  cmp     dword [ebp-0CH], 9                      ; 20B3 _ 83. 7D, F4, 09
        jle     ?_094                                   ; 20B7 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 20B9 _ C7. 45, F8, 00000009
        jmp     ?_098                                   ; 20C0 _ EB, 48

?_096:  mov     eax, dword [ebp+8H]                     ; 20C2 _ 8B. 45, 08
        and     eax, 0FH                                ; 20C5 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 20C8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 20CB _ 8B. 45, 08
        shr     eax, 4                                  ; 20CE _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 20D1 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 20D4 _ 83. 7D, FC, 09
        jle     ?_097                                   ; 20D8 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 20DA _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 20DD _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 20E0 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20E3 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 20E6 _ 89. 55, F8
        mov     edx, ecx                                ; 20E9 _ 89. CA
        mov     byte [str.2542+eax], dl                 ; 20EB _ 88. 90, 00000278(d)
        jmp     ?_098                                   ; 20F1 _ EB, 17

?_097:  mov     eax, dword [ebp-4H]                     ; 20F3 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 20F6 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 20F9 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20FC _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 20FF _ 89. 55, F8
        mov     edx, ecx                                ; 2102 _ 89. CA
        mov     byte [str.2542+eax], dl                 ; 2104 _ 88. 90, 00000278(d)
?_098:  cmp     dword [ebp-8H], 1                       ; 210A _ 83. 7D, F8, 01
        jle     ?_099                                   ; 210E _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 2110 _ 83. 7D, 08, 00
        jnz     ?_096                                   ; 2114 _ 75, AC
?_099:  mov     eax, str.2542                           ; 2116 _ B8, 00000278(d)
        leave                                           ; 211B _ C9
        ret                                             ; 211C _ C3
; intToHexStr End of function

intToStr:; Function begin
        push    ebp                                     ; 211D _ 55
        mov     ebp, esp                                ; 211E _ 89. E5
        sub     esp, 32                                 ; 2120 _ 83. EC, 20
        mov     dword [ebp-14H], 0                      ; 2123 _ C7. 45, EC, 00000000
        jmp     ?_101                                   ; 212A _ EB, 48

?_100:  mov     ecx, dword [ebp+8H]                     ; 212C _ 8B. 4D, 08
        mov     edx, 3435973837                         ; 212F _ BA, CCCCCCCD
        mov     eax, ecx                                ; 2134 _ 89. C8
        mul     edx                                     ; 2136 _ F7. E2
        shr     edx, 3                                  ; 2138 _ C1. EA, 03
        mov     eax, edx                                ; 213B _ 89. D0
        shl     eax, 2                                  ; 213D _ C1. E0, 02
        add     eax, edx                                ; 2140 _ 01. D0
        add     eax, eax                                ; 2142 _ 01. C0
        sub     ecx, eax                                ; 2144 _ 29. C1
        mov     edx, ecx                                ; 2146 _ 89. CA
        mov     dword [ebp-4H], edx                     ; 2148 _ 89. 55, FC
        mov     eax, dword [ebp-4H]                     ; 214B _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 214E _ 8D. 48, 30
        mov     eax, dword [ebp-14H]                    ; 2151 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2154 _ 8D. 50, 01
        mov     dword [ebp-14H], edx                    ; 2157 _ 89. 55, EC
        mov     edx, ecx                                ; 215A _ 89. CA
        mov     byte [str.2555+eax], dl                 ; 215C _ 88. 90, 00000284(d)
        mov     eax, dword [ebp+8H]                     ; 2162 _ 8B. 45, 08
        mov     edx, 3435973837                         ; 2165 _ BA, CCCCCCCD
        mul     edx                                     ; 216A _ F7. E2
        mov     eax, edx                                ; 216C _ 89. D0
        shr     eax, 3                                  ; 216E _ C1. E8, 03
        mov     dword [ebp+8H], eax                     ; 2171 _ 89. 45, 08
?_101:  cmp     dword [ebp+8H], 0                       ; 2174 _ 83. 7D, 08, 00
        jnz     ?_100                                   ; 2178 _ 75, B2
        mov     dword [ebp-8H], 0                       ; 217A _ C7. 45, F8, 00000000
        mov     dword [ebp-10H], 0                      ; 2181 _ C7. 45, F0, 00000000
        mov     eax, dword [ebp-14H]                    ; 2188 _ 8B. 45, EC
        sub     eax, 1                                  ; 218B _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 218E _ 89. 45, F4
        jmp     ?_103                                   ; 2191 _ EB, 3E

?_102:  mov     eax, dword [ebp-10H]                    ; 2193 _ 8B. 45, F0
        add     eax, str.2555                           ; 2196 _ 05, 00000284(d)
        movzx   eax, byte [eax]                         ; 219B _ 0F B6. 00
        movsx   eax, al                                 ; 219E _ 0F BE. C0
        mov     dword [ebp-8H], eax                     ; 21A1 _ 89. 45, F8
        mov     eax, dword [ebp-0CH]                    ; 21A4 _ 8B. 45, F4
        add     eax, str.2555                           ; 21A7 _ 05, 00000284(d)
        movzx   eax, byte [eax]                         ; 21AC _ 0F B6. 00
        mov     edx, dword [ebp-10H]                    ; 21AF _ 8B. 55, F0
        add     edx, str.2555                           ; 21B2 _ 81. C2, 00000284(d)
        mov     byte [edx], al                          ; 21B8 _ 88. 02
        mov     eax, dword [ebp-8H]                     ; 21BA _ 8B. 45, F8
        mov     edx, eax                                ; 21BD _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 21BF _ 8B. 45, F4
        add     eax, str.2555                           ; 21C2 _ 05, 00000284(d)
        mov     byte [eax], dl                          ; 21C7 _ 88. 10
        add     dword [ebp-10H], 1                      ; 21C9 _ 83. 45, F0, 01
        sub     dword [ebp-0CH], 1                      ; 21CD _ 83. 6D, F4, 01
?_103:  mov     eax, dword [ebp-10H]                    ; 21D1 _ 8B. 45, F0
        cmp     eax, dword [ebp-0CH]                    ; 21D4 _ 3B. 45, F4
        jl      ?_102                                   ; 21D7 _ 7C, BA
        mov     eax, dword [ebp-14H]                    ; 21D9 _ 8B. 45, EC
        add     eax, str.2555                           ; 21DC _ 05, 00000284(d)
        mov     byte [eax], 0                           ; 21E1 _ C6. 00, 00
        mov     eax, str.2555                           ; 21E4 _ B8, 00000284(d)
        leave                                           ; 21E9 _ C9
        ret                                             ; 21EA _ C3
; intToStr End of function

getIntStrLen:; Function begin
        push    ebp                                     ; 21EB _ 55
        mov     ebp, esp                                ; 21EC _ 89. E5
        sub     esp, 16                                 ; 21EE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 21F1 _ C7. 45, FC, 00000000
        nop                                             ; 21F8 _ 90
?_104:  mov     eax, dword [ebp-4H]                     ; 21F9 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 21FC _ 8D. 50, 01
        mov     dword [ebp-4H], edx                     ; 21FF _ 89. 55, FC
        mov     edx, eax                                ; 2202 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2204 _ 8B. 45, 08
        add     eax, edx                                ; 2207 _ 01. D0
        movzx   eax, byte [eax]                         ; 2209 _ 0F B6. 00
        test    al, al                                  ; 220C _ 84. C0
        jnz     ?_104                                   ; 220E _ 75, E9
        mov     eax, dword [ebp-4H]                     ; 2210 _ 8B. 45, FC
        leave                                           ; 2213 _ C9
        ret                                             ; 2214 _ C3
; getIntStrLen End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 2215 _ 55
        mov     ebp, esp                                ; 2216 _ 89. E5
        sub     esp, 8                                  ; 2218 _ 83. EC, 08
?_105:  sub     esp, 12                                 ; 221B _ 83. EC, 0C
        push    100                                     ; 221E _ 6A, 64
        call    io_in8                                  ; 2220 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2225 _ 83. C4, 10
        movsx   eax, al                                 ; 2228 _ 0F BE. C0
        and     eax, 02H                                ; 222B _ 83. E0, 02
        test    eax, eax                                ; 222E _ 85. C0
        jz      ?_106                                   ; 2230 _ 74, 02
        jmp     ?_105                                   ; 2232 _ EB, E7

?_106:  nop                                             ; 2234 _ 90
        nop                                             ; 2235 _ 90
        leave                                           ; 2236 _ C9
        ret                                             ; 2237 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 2238 _ 55
        mov     ebp, esp                                ; 2239 _ 89. E5
        sub     esp, 8                                  ; 223B _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 223E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2243 _ 83. EC, 08
        push    96                                      ; 2246 _ 6A, 60
        push    100                                     ; 2248 _ 6A, 64
        call    io_out8                                 ; 224A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 224F _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 2252 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2257 _ 83. EC, 08
        push    71                                      ; 225A _ 6A, 47
        push    96                                      ; 225C _ 6A, 60
        call    io_out8                                 ; 225E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2263 _ 83. C4, 10
        nop                                             ; 2266 _ 90
        leave                                           ; 2267 _ C9
        ret                                             ; 2268 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 2269 _ 55
        mov     ebp, esp                                ; 226A _ 89. E5
        sub     esp, 8                                  ; 226C _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 226F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2274 _ 83. EC, 08
        push    212                                     ; 2277 _ 68, 000000D4
        push    100                                     ; 227C _ 6A, 64
        call    io_out8                                 ; 227E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2283 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 2286 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 228B _ 83. EC, 08
        push    244                                     ; 228E _ 68, 000000F4
        push    96                                      ; 2293 _ 6A, 60
        call    io_out8                                 ; 2295 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 229A _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 229D _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 22A0 _ C6. 40, 03, 00
        nop                                             ; 22A4 _ 90
        leave                                           ; 22A5 _ C9
        ret                                             ; 22A6 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 22A7 _ 55
        mov     ebp, esp                                ; 22A8 _ 89. E5
        sub     esp, 24                                 ; 22AA _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 22AD _ C6. 45, F7, 00
        sub     esp, 8                                  ; 22B1 _ 83. EC, 08
        push    32                                      ; 22B4 _ 6A, 20
        push    160                                     ; 22B6 _ 68, 000000A0
        call    io_out8                                 ; 22BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22C0 _ 83. C4, 10
        sub     esp, 8                                  ; 22C3 _ 83. EC, 08
        push    32                                      ; 22C6 _ 6A, 20
        push    32                                      ; 22C8 _ 6A, 20
        call    io_out8                                 ; 22CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22CF _ 83. C4, 10
        sub     esp, 12                                 ; 22D2 _ 83. EC, 0C
        push    96                                      ; 22D5 _ 6A, 60
        call    io_in8                                  ; 22D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22DC _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 22DF _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 22E2 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 22E6 _ 83. EC, 08
        push    eax                                     ; 22E9 _ 50
        push    mouseInfo                               ; 22EA _ 68, 0000002C(d)
        call    fifo8_put                               ; 22EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22F4 _ 83. C4, 10
        nop                                             ; 22F7 _ 90
        leave                                           ; 22F8 _ C9
        ret                                             ; 22F9 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 22FA _ 55
        mov     ebp, esp                                ; 22FB _ 89. E5
        sub     esp, 40                                 ; 22FD _ 83. EC, 28
        call    io_sti                                  ; 2300 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 2305 _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 230A _ 89. 45, E8
        movzx   eax, word [?_273]                       ; 230D _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 2314 _ 98
        mov     dword [ebp-14H], eax                    ; 2315 _ 89. 45, EC
        movzx   eax, word [?_274]                       ; 2318 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 231F _ 98
        mov     dword [ebp-10H], eax                    ; 2320 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 2323 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 2327 _ 83. EC, 0C
        push    keyInfo                                 ; 232A _ 68, 00000010(d)
        call    fifo8_get                               ; 232F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2334 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 2337 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 233A _ 0F B6. 45, E7
        sub     esp, 12                                 ; 233E _ 83. EC, 0C
        push    eax                                     ; 2341 _ 50
        call    charToHex                               ; 2342 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2347 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 234A _ 89. 45, F4
        mov     edx, dword [line.2597]                  ; 234D _ 8B. 15, 0000028C(d)
        mov     eax, dword [pos.2596]                   ; 2353 _ A1, 00000290(d)
        sub     esp, 8                                  ; 2358 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 235B _ FF. 75, F4
        push    7                                       ; 235E _ 6A, 07
        push    edx                                     ; 2360 _ 52
        push    eax                                     ; 2361 _ 50
        push    dword [ebp+0CH]                         ; 2362 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2365 _ FF. 75, 08
        call    showString                              ; 2368 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 236D _ 83. C4, 20
        mov     eax, dword [pos.2596]                   ; 2370 _ A1, 00000290(d)
        add     eax, 32                                 ; 2375 _ 83. C0, 20
        mov     dword [pos.2596], eax                   ; 2378 _ A3, 00000290(d)
        mov     eax, dword [pos.2596]                   ; 237D _ A1, 00000290(d)
        cmp     dword [ebp-14H], eax                    ; 2382 _ 39. 45, EC
        jnz     ?_109                                   ; 2385 _ 75, 28
        mov     eax, dword [line.2597]                  ; 2387 _ A1, 0000028C(d)
        cmp     dword [ebp-10H], eax                    ; 238C _ 39. 45, F0
        jz      ?_107                                   ; 238F _ 74, 0A
        mov     eax, dword [line.2597]                  ; 2391 _ A1, 0000028C(d)
        add     eax, 16                                 ; 2396 _ 83. C0, 10
        jmp     ?_108                                   ; 2399 _ EB, 05

?_107:  mov     eax, 0                                  ; 239B _ B8, 00000000
?_108:  mov     dword [line.2597], eax                  ; 23A0 _ A3, 0000028C(d)
        mov     dword [pos.2596], 0                     ; 23A5 _ C7. 05, 00000290(d), 00000000
?_109:  nop                                             ; 23AF _ 90
        leave                                           ; 23B0 _ C9
        ret                                             ; 23B1 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 23B2 _ 55
        mov     ebp, esp                                ; 23B3 _ 89. E5
        sub     esp, 24                                 ; 23B5 _ 83. EC, 18
        call    io_sti                                  ; 23B8 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 23BD _ C6. 45, F7, 00
        sub     esp, 12                                 ; 23C1 _ 83. EC, 0C
        push    mouseInfo                               ; 23C4 _ 68, 0000002C(d)
        call    fifo8_get                               ; 23C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23CE _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 23D1 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 23D4 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 23D8 _ 83. EC, 08
        push    eax                                     ; 23DB _ 50
        push    mouse_move                              ; 23DC _ 68, 00000100(d)
        call    mouse_decode                            ; 23E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23E6 _ 83. C4, 10
        test    eax, eax                                ; 23E9 _ 85. C0
        jz      ?_110                                   ; 23EB _ 74, 60
        sub     esp, 4                                  ; 23ED _ 83. EC, 04
        push    mouse_move                              ; 23F0 _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 23F5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 23F8 _ FF. 75, 08
        call    computeMousePos                         ; 23FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2400 _ 83. C4, 10
        mov     edx, dword [my]                         ; 2403 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 2409 _ A1, 00000110(d)
        push    edx                                     ; 240E _ 52
        push    eax                                     ; 240F _ 50
        push    dword [ebp+10H]                         ; 2410 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2413 _ FF. 75, 08
        call    sheet_slide                             ; 2416 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 241B _ 83. C4, 10
        mov     eax, dword [?_276]                      ; 241E _ A1, 0000010C(d)
        and     eax, 01H                                ; 2423 _ 83. E0, 01
        test    eax, eax                                ; 2426 _ 85. C0
        jz      ?_110                                   ; 2428 _ 74, 23
        mov     eax, dword [my]                         ; 242A _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 242F _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 2432 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 2437 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 243A _ A1, 00000248(d)
        push    ecx                                     ; 243F _ 51
        push    edx                                     ; 2440 _ 52
        push    eax                                     ; 2441 _ 50
        push    dword [ebp+8H]                          ; 2442 _ FF. 75, 08
        call    sheet_slide                             ; 2445 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 244A _ 83. C4, 10
?_110:  nop                                             ; 244D _ 90
        leave                                           ; 244E _ C9
        ret                                             ; 244F _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 2450 _ 55
        mov     ebp, esp                                ; 2451 _ 89. E5
        sub     esp, 4                                  ; 2453 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2456 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2459 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 245C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 245F _ 0F B6. 40, 03
        test    al, al                                  ; 2463 _ 84. C0
        jnz     ?_112                                   ; 2465 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 2467 _ 80. 7D, FC, FA
        jnz     ?_111                                   ; 246B _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 246D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2470 _ C6. 40, 03, 01
?_111:  mov     eax, 0                                  ; 2474 _ B8, 00000000
        jmp     ?_119                                   ; 2479 _ E9, 0000010C

?_112:  mov     eax, dword [ebp+8H]                     ; 247E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2481 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 2485 _ 3C, 01
        jnz     ?_114                                   ; 2487 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 2489 _ 0F B6. 45, FC
        or      eax, 37H                                ; 248D _ 83. C8, 37
        cmp     al, 63                                  ; 2490 _ 3C, 3F
        jnz     ?_113                                   ; 2492 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 2494 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2497 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 249B _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 249D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 24A0 _ C6. 40, 03, 02
?_113:  mov     eax, 0                                  ; 24A4 _ B8, 00000000
        jmp     ?_119                                   ; 24A9 _ E9, 000000DC

?_114:  mov     eax, dword [ebp+8H]                     ; 24AE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 24B1 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 24B5 _ 3C, 02
        jnz     ?_115                                   ; 24B7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 24B9 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 24BC _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 24C0 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 24C3 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 24C6 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 24CA _ B8, 00000000
        jmp     ?_119                                   ; 24CF _ E9, 000000B6

?_115:  mov     eax, dword [ebp+8H]                     ; 24D4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 24D7 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 24DB _ 3C, 03
        jne     ?_118                                   ; 24DD _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 24E3 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 24E6 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 24EA _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 24ED _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 24F0 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 24F4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 24F7 _ 0F B6. 00
        movzx   eax, al                                 ; 24FA _ 0F B6. C0
        and     eax, 07H                                ; 24FD _ 83. E0, 07
        mov     edx, eax                                ; 2500 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2502 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2505 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2508 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 250B _ 0F B6. 40, 01
        movzx   edx, al                                 ; 250F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 2512 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2515 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2518 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 251B _ 0F B6. 40, 02
        movzx   edx, al                                 ; 251F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 2522 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2525 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2528 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 252B _ 0F B6. 00
        movzx   eax, al                                 ; 252E _ 0F B6. C0
        and     eax, 10H                                ; 2531 _ 83. E0, 10
        test    eax, eax                                ; 2534 _ 85. C0
        jz      ?_116                                   ; 2536 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2538 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 253B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 253E _ 0D, FFFFFF00
        mov     edx, eax                                ; 2543 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2545 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2548 _ 89. 50, 04
?_116:  mov     eax, dword [ebp+8H]                     ; 254B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 254E _ 0F B6. 00
        movzx   eax, al                                 ; 2551 _ 0F B6. C0
        and     eax, 20H                                ; 2554 _ 83. E0, 20
        test    eax, eax                                ; 2557 _ 85. C0
        jz      ?_117                                   ; 2559 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 255B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 255E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 2561 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2566 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2568 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 256B _ 89. 50, 08
?_117:  mov     eax, dword [ebp+8H]                     ; 256E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2571 _ 8B. 40, 08
        neg     eax                                     ; 2574 _ F7. D8
        mov     edx, eax                                ; 2576 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2578 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 257B _ 89. 50, 08
        mov     eax, 1                                  ; 257E _ B8, 00000001
        jmp     ?_119                                   ; 2583 _ EB, 05

?_118:  mov     eax, 4294967295                         ; 2585 _ B8, FFFFFFFF
?_119:  leave                                           ; 258A _ C9
        ret                                             ; 258B _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 258C _ 55
        mov     ebp, esp                                ; 258D _ 89. E5
        sub     esp, 16                                 ; 258F _ 83. EC, 10
        movzx   eax, word [?_273]                       ; 2592 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 2599 _ 98
        mov     dword [ebp-8H], eax                     ; 259A _ 89. 45, F8
        movzx   eax, word [?_274]                       ; 259D _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 25A4 _ 98
        mov     dword [ebp-4H], eax                     ; 25A5 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 25A8 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 25AB _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 25AE _ A1, 00000110(d)
        add     eax, edx                                ; 25B3 _ 01. D0
        mov     dword [mx], eax                         ; 25B5 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 25BA _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 25BD _ 8B. 50, 08
        mov     eax, dword [my]                         ; 25C0 _ A1, 00000114(d)
        add     eax, edx                                ; 25C5 _ 01. D0
        mov     dword [my], eax                         ; 25C7 _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 25CC _ A1, 00000110(d)
        test    eax, eax                                ; 25D1 _ 85. C0
        jns     ?_120                                   ; 25D3 _ 79, 0A
        mov     dword [mx], 0                           ; 25D5 _ C7. 05, 00000110(d), 00000000
?_120:  mov     eax, dword [my]                         ; 25DF _ A1, 00000114(d)
        test    eax, eax                                ; 25E4 _ 85. C0
        jns     ?_121                                   ; 25E6 _ 79, 0A
        mov     dword [my], 0                           ; 25E8 _ C7. 05, 00000114(d), 00000000
?_121:  mov     eax, dword [ebp-8H]                     ; 25F2 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 25F5 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 25F8 _ A1, 00000110(d)
        cmp     edx, eax                                ; 25FD _ 39. C2
        jge     ?_122                                   ; 25FF _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 2601 _ 8B. 45, F8
        sub     eax, 9                                  ; 2604 _ 83. E8, 09
        mov     dword [mx], eax                         ; 2607 _ A3, 00000110(d)
?_122:  mov     eax, dword [ebp-4H]                     ; 260C _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 260F _ 8D. 50, FF
        mov     eax, dword [my]                         ; 2612 _ A1, 00000114(d)
        cmp     edx, eax                                ; 2617 _ 39. C2
        jge     ?_123                                   ; 2619 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 261B _ 8B. 45, FC
        sub     eax, 1                                  ; 261E _ 83. E8, 01
        mov     dword [my], eax                         ; 2621 _ A3, 00000114(d)
?_123:  nop                                             ; 2626 _ 90
        leave                                           ; 2627 _ C9
        ret                                             ; 2628 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 2629 _ 55
        mov     ebp, esp                                ; 262A _ 89. E5
        sub     esp, 56                                 ; 262C _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 262F _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 2636 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 263D _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 2644 _ C7. 45, DC, 00000050
        push    100                                     ; 264B _ 6A, 64
        push    dword [ebp+1CH]                         ; 264D _ FF. 75, 1C
        push    0                                       ; 2650 _ 6A, 00
        push    0                                       ; 2652 _ 6A, 00
        push    14                                      ; 2654 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 2656 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 2659 _ FF. 75, 14
        call    boxfill8                                ; 265C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2661 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 2664 _ 8B. 45, 20
        movsx   eax, al                                 ; 2667 _ 0F BE. C0
        sub     esp, 8                                  ; 266A _ 83. EC, 08
        push    ?_265                                   ; 266D _ 68, 00000096(d)
        push    eax                                     ; 2672 _ 50
        push    dword [ebp-2CH]                         ; 2673 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2676 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2679 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 267C _ FF. 75, 08
        call    showString                              ; 267F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2684 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 2687 _ 8B. 45, 18
        sub     esp, 12                                 ; 268A _ 83. EC, 0C
        push    eax                                     ; 268D _ 50
        call    intToHexStr                             ; 268E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2693 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 2696 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 2699 _ 8B. 45, 20
        movsx   eax, al                                 ; 269C _ 0F BE. C0
        sub     esp, 8                                  ; 269F _ 83. EC, 08
        push    dword [ebp-20H]                         ; 26A2 _ FF. 75, E0
        push    eax                                     ; 26A5 _ 50
        push    dword [ebp-2CH]                         ; 26A6 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 26A9 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 26AC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 26AF _ FF. 75, 08
        call    showString                              ; 26B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26B7 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 26BA _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 26BE _ 8B. 45, 20
        movsx   eax, al                                 ; 26C1 _ 0F BE. C0
        sub     esp, 8                                  ; 26C4 _ 83. EC, 08
        push    ?_266                                   ; 26C7 _ 68, 000000A0(d)
        push    eax                                     ; 26CC _ 50
        push    dword [ebp-2CH]                         ; 26CD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 26D0 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 26D3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 26D6 _ FF. 75, 08
        call    showString                              ; 26D9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26DE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 26E1 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 26E4 _ 8B. 00
        sub     esp, 12                                 ; 26E6 _ 83. EC, 0C
        push    eax                                     ; 26E9 _ 50
        call    intToHexStr                             ; 26EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26EF _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 26F2 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 26F5 _ 8B. 45, 20
        movsx   eax, al                                 ; 26F8 _ 0F BE. C0
        sub     esp, 8                                  ; 26FB _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 26FE _ FF. 75, E4
        push    eax                                     ; 2701 _ 50
        push    dword [ebp-2CH]                         ; 2702 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2705 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2708 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 270B _ FF. 75, 08
        call    showString                              ; 270E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2713 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2716 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 271A _ 8B. 45, 20
        movsx   eax, al                                 ; 271D _ 0F BE. C0
        sub     esp, 8                                  ; 2720 _ 83. EC, 08
        push    ?_267                                   ; 2723 _ 68, 000000AE(d)
        push    eax                                     ; 2728 _ 50
        push    dword [ebp-2CH]                         ; 2729 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 272C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 272F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2732 _ FF. 75, 08
        call    showString                              ; 2735 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 273A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 273D _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2740 _ 8B. 40, 04
        sub     esp, 12                                 ; 2743 _ 83. EC, 0C
        push    eax                                     ; 2746 _ 50
        call    intToHexStr                             ; 2747 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 274C _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 274F _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 2752 _ 8B. 45, 20
        movsx   eax, al                                 ; 2755 _ 0F BE. C0
        sub     esp, 8                                  ; 2758 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 275B _ FF. 75, E8
        push    eax                                     ; 275E _ 50
        push    dword [ebp-2CH]                         ; 275F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2762 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2765 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2768 _ FF. 75, 08
        call    showString                              ; 276B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2770 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2773 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2777 _ 8B. 45, 20
        movsx   eax, al                                 ; 277A _ 0F BE. C0
        sub     esp, 8                                  ; 277D _ 83. EC, 08
        push    ?_268                                   ; 2780 _ 68, 000000BD(d)
        push    eax                                     ; 2785 _ 50
        push    dword [ebp-2CH]                         ; 2786 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2789 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 278C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 278F _ FF. 75, 08
        call    showString                              ; 2792 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2797 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 279A _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 279D _ 8B. 40, 08
        sub     esp, 12                                 ; 27A0 _ 83. EC, 0C
        push    eax                                     ; 27A3 _ 50
        call    intToHexStr                             ; 27A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 27A9 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 27AC _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 27AF _ 8B. 45, 20
        movsx   eax, al                                 ; 27B2 _ 0F BE. C0
        sub     esp, 8                                  ; 27B5 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 27B8 _ FF. 75, EC
        push    eax                                     ; 27BB _ 50
        push    dword [ebp-2CH]                         ; 27BC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 27BF _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 27C2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 27C5 _ FF. 75, 08
        call    showString                              ; 27C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27CD _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 27D0 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 27D4 _ 8B. 45, 20
        movsx   eax, al                                 ; 27D7 _ 0F BE. C0
        sub     esp, 8                                  ; 27DA _ 83. EC, 08
        push    ?_269                                   ; 27DD _ 68, 000000C9(d)
        push    eax                                     ; 27E2 _ 50
        push    dword [ebp-2CH]                         ; 27E3 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 27E6 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 27E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 27EC _ FF. 75, 08
        call    showString                              ; 27EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27F4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 27F7 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 27FA _ 8B. 40, 0C
        sub     esp, 12                                 ; 27FD _ 83. EC, 0C
        push    eax                                     ; 2800 _ 50
        call    intToHexStr                             ; 2801 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2806 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2809 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 280C _ 8B. 45, 20
        movsx   eax, al                                 ; 280F _ 0F BE. C0
        sub     esp, 8                                  ; 2812 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 2815 _ FF. 75, F0
        push    eax                                     ; 2818 _ 50
        push    dword [ebp-2CH]                         ; 2819 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 281C _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 281F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2822 _ FF. 75, 08
        call    showString                              ; 2825 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 282A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 282D _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2831 _ 8B. 45, 20
        movsx   eax, al                                 ; 2834 _ 0F BE. C0
        sub     esp, 8                                  ; 2837 _ 83. EC, 08
        push    ?_270                                   ; 283A _ 68, 000000D6(d)
        push    eax                                     ; 283F _ 50
        push    dword [ebp-2CH]                         ; 2840 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2843 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2846 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2849 _ FF. 75, 08
        call    showString                              ; 284C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2851 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2854 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 2857 _ 8B. 40, 10
        sub     esp, 12                                 ; 285A _ 83. EC, 0C
        push    eax                                     ; 285D _ 50
        call    intToHexStr                             ; 285E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2863 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2866 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 2869 _ 8B. 45, 20
        movsx   eax, al                                 ; 286C _ 0F BE. C0
        sub     esp, 8                                  ; 286F _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 2872 _ FF. 75, F4
        push    eax                                     ; 2875 _ 50
        push    dword [ebp-2CH]                         ; 2876 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2879 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 287C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 287F _ FF. 75, 08
        call    showString                              ; 2882 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2887 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 288A _ 83. 45, D4, 10
        nop                                             ; 288E _ 90
        leave                                           ; 288F _ C9
        ret                                             ; 2890 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 2891 _ 55
        mov     ebp, esp                                ; 2892 _ 89. E5
        sub     esp, 24                                 ; 2894 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 2897 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 289A _ 0F AF. 45, 14
        mov     edx, eax                                ; 289E _ 89. C2
        mov     eax, dword [memman]                     ; 28A0 _ A1, 00000008(d)
        sub     esp, 8                                  ; 28A5 _ 83. EC, 08
        push    edx                                     ; 28A8 _ 52
        push    eax                                     ; 28A9 _ 50
        call    memman_alloc_4K                         ; 28AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28AF _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 28B2 _ 89. 45, F0
        sub     esp, 12                                 ; 28B5 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 28B8 _ FF. 75, 08
        call    sheet_alloc                             ; 28BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28C0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 28C3 _ 89. 45, F4
        sub     esp, 12                                 ; 28C6 _ 83. EC, 0C
        push    99                                      ; 28C9 _ 6A, 63
        push    dword [ebp+14H]                         ; 28CB _ FF. 75, 14
        push    dword [ebp+10H]                         ; 28CE _ FF. 75, 10
        push    dword [ebp-10H]                         ; 28D1 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 28D4 _ FF. 75, F4
        call    sheet_setbuf                            ; 28D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28DC _ 83. C4, 20
        push    1                                       ; 28DF _ 6A, 01
        push    dword [ebp+0CH]                         ; 28E1 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 28E4 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 28E7 _ FF. 75, 08
        call    make_window8                            ; 28EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28EF _ 83. C4, 10
        sub     esp, 8                                  ; 28F2 _ 83. EC, 08
        push    7                                       ; 28F5 _ 6A, 07
        push    16                                      ; 28F7 _ 6A, 10
        push    150                                     ; 28F9 _ 68, 00000096
        push    42                                      ; 28FE _ 6A, 2A
        push    10                                      ; 2900 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 2902 _ FF. 75, F4
        call    make_textbox8                           ; 2905 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 290A _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 290D _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 2910 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2913 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2916 _ FF. 75, 08
        call    sheet_slide                             ; 2919 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 291E _ 83. C4, 10
        sub     esp, 4                                  ; 2921 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 2924 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 2927 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 292A _ FF. 75, 08
        call    sheet_level_updown                      ; 292D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2932 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2935 _ 8B. 45, F4
        leave                                           ; 2938 _ C9
        ret                                             ; 2939 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 293A _ 55
        mov     ebp, esp                                ; 293B _ 89. E5
        sub     esp, 24                                 ; 293D _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2940 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2943 _ 0F AF. 45, 20
        mov     edx, eax                                ; 2947 _ 89. C2
        mov     eax, dword [memman]                     ; 2949 _ A1, 00000008(d)
        sub     esp, 8                                  ; 294E _ 83. EC, 08
        push    edx                                     ; 2951 _ 52
        push    eax                                     ; 2952 _ 50
        call    memman_alloc_4K                         ; 2953 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2958 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 295B _ 89. 45, F0
        sub     esp, 12                                 ; 295E _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2961 _ FF. 75, 08
        call    sheet_alloc                             ; 2964 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2969 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 296C _ 89. 45, F4
        sub     esp, 12                                 ; 296F _ 83. EC, 0C
        push    99                                      ; 2972 _ 6A, 63
        push    dword [ebp+20H]                         ; 2974 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 2977 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 297A _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 297D _ FF. 75, F4
        call    sheet_setbuf                            ; 2980 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2985 _ 83. C4, 20
        push    0                                       ; 2988 _ 6A, 00
        push    dword [ebp+18H]                         ; 298A _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 298D _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2990 _ FF. 75, 08
        call    make_window8                            ; 2993 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2998 _ 83. C4, 10
        call    task_alloc                              ; 299B _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 29A0 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 29A3 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 29A6 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 29AD _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 29B0 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 29B7 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 29BC _ F7. D8
        add     eax, task_b_main                        ; 29BE _ 05, 00000000(d)
        mov     edx, eax                                ; 29C3 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 29C5 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 29C8 _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 29CB _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 29CE _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 29D5 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 29D8 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 29DF _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 29E2 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 29E9 _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 29EC _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 29F3 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 29F6 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 29FD _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 2A00 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2A07 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2A0A _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 2A0D _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 2A10 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 2A13 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 2A16 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2A19 _ 8B. 40, 4C
        add     eax, 4                                  ; 2A1C _ 83. C0, 04
        mov     edx, eax                                ; 2A1F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2A21 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2A24 _ 89. 02
        sub     esp, 4                                  ; 2A26 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2A29 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2A2C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2A2F _ FF. 75, 0C
        call    task_run                                ; 2A32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A37 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 2A3A _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2A3D _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2A40 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2A43 _ FF. 75, 08
        call    sheet_slide                             ; 2A46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A4B _ 83. C4, 10
        sub     esp, 4                                  ; 2A4E _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2A51 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2A54 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2A57 _ FF. 75, 08
        call    sheet_level_updown                      ; 2A5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A5F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2A62 _ 8B. 45, F4
        leave                                           ; 2A65 _ C9
        ret                                             ; 2A66 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 2A67 _ 55
        mov     ebp, esp                                ; 2A68 _ 89. E5
        push    ebx                                     ; 2A6A _ 53
        sub     esp, 36                                 ; 2A6B _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2A6E _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2A71 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2A74 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2A77 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2A7A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2A7D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2A80 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2A83 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2A86 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2A89 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2A8C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A8F _ 8B. 00
        push    0                                       ; 2A91 _ 6A, 00
        push    edx                                     ; 2A93 _ 52
        push    0                                       ; 2A94 _ 6A, 00
        push    0                                       ; 2A96 _ 6A, 00
        push    8                                       ; 2A98 _ 6A, 08
        push    dword [ebp-10H]                         ; 2A9A _ FF. 75, F0
        push    eax                                     ; 2A9D _ 50
        call    boxfill8                                ; 2A9E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2AA3 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2AA6 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2AA9 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2AAC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2AAF _ 8B. 00
        push    1                                       ; 2AB1 _ 6A, 01
        push    edx                                     ; 2AB3 _ 52
        push    1                                       ; 2AB4 _ 6A, 01
        push    1                                       ; 2AB6 _ 6A, 01
        push    7                                       ; 2AB8 _ 6A, 07
        push    dword [ebp-10H]                         ; 2ABA _ FF. 75, F0
        push    eax                                     ; 2ABD _ 50
        call    boxfill8                                ; 2ABE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2AC3 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2AC6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2AC9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2ACC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2ACF _ 8B. 00
        push    edx                                     ; 2AD1 _ 52
        push    0                                       ; 2AD2 _ 6A, 00
        push    0                                       ; 2AD4 _ 6A, 00
        push    0                                       ; 2AD6 _ 6A, 00
        push    8                                       ; 2AD8 _ 6A, 08
        push    dword [ebp-10H]                         ; 2ADA _ FF. 75, F0
        push    eax                                     ; 2ADD _ 50
        call    boxfill8                                ; 2ADE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2AE3 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2AE6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2AE9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2AEC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2AEF _ 8B. 00
        push    edx                                     ; 2AF1 _ 52
        push    1                                       ; 2AF2 _ 6A, 01
        push    1                                       ; 2AF4 _ 6A, 01
        push    1                                       ; 2AF6 _ 6A, 01
        push    7                                       ; 2AF8 _ 6A, 07
        push    dword [ebp-10H]                         ; 2AFA _ FF. 75, F0
        push    eax                                     ; 2AFD _ 50
        call    boxfill8                                ; 2AFE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B03 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2B06 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2B09 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2B0C _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2B0F _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2B12 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2B15 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2B18 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B1B _ 8B. 00
        push    ebx                                     ; 2B1D _ 53
        push    ecx                                     ; 2B1E _ 51
        push    1                                       ; 2B1F _ 6A, 01
        push    edx                                     ; 2B21 _ 52
        push    15                                      ; 2B22 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2B24 _ FF. 75, F0
        push    eax                                     ; 2B27 _ 50
        call    boxfill8                                ; 2B28 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B2D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2B30 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2B33 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2B36 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2B39 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2B3C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2B3F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B42 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B45 _ 8B. 00
        push    ebx                                     ; 2B47 _ 53
        push    ecx                                     ; 2B48 _ 51
        push    0                                       ; 2B49 _ 6A, 00
        push    edx                                     ; 2B4B _ 52
        push    0                                       ; 2B4C _ 6A, 00
        push    dword [ebp-10H]                         ; 2B4E _ FF. 75, F0
        push    eax                                     ; 2B51 _ 50
        call    boxfill8                                ; 2B52 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B57 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2B5A _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2B5D _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2B60 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2B63 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2B66 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B69 _ 8B. 00
        push    ecx                                     ; 2B6B _ 51
        push    edx                                     ; 2B6C _ 52
        push    2                                       ; 2B6D _ 6A, 02
        push    2                                       ; 2B6F _ 6A, 02
        push    8                                       ; 2B71 _ 6A, 08
        push    dword [ebp-10H]                         ; 2B73 _ FF. 75, F0
        push    eax                                     ; 2B76 _ 50
        call    boxfill8                                ; 2B77 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B7C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2B7F _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2B82 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2B85 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B88 _ 8B. 00
        push    20                                      ; 2B8A _ 6A, 14
        push    edx                                     ; 2B8C _ 52
        push    3                                       ; 2B8D _ 6A, 03
        push    3                                       ; 2B8F _ 6A, 03
        push    12                                      ; 2B91 _ 6A, 0C
        push    dword [ebp-10H]                         ; 2B93 _ FF. 75, F0
        push    eax                                     ; 2B96 _ 50
        call    boxfill8                                ; 2B97 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B9C _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2B9F _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2BA2 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2BA5 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2BA8 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2BAB _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2BAE _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2BB1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BB4 _ 8B. 00
        push    ebx                                     ; 2BB6 _ 53
        push    ecx                                     ; 2BB7 _ 51
        push    edx                                     ; 2BB8 _ 52
        push    1                                       ; 2BB9 _ 6A, 01
        push    15                                      ; 2BBB _ 6A, 0F
        push    dword [ebp-10H]                         ; 2BBD _ FF. 75, F0
        push    eax                                     ; 2BC0 _ 50
        call    boxfill8                                ; 2BC1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2BC6 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2BC9 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2BCC _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2BCF _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2BD2 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2BD5 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2BD8 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BDB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BDE _ 8B. 00
        push    ebx                                     ; 2BE0 _ 53
        push    ecx                                     ; 2BE1 _ 51
        push    edx                                     ; 2BE2 _ 52
        push    0                                       ; 2BE3 _ 6A, 00
        push    0                                       ; 2BE5 _ 6A, 00
        push    dword [ebp-10H]                         ; 2BE7 _ FF. 75, F0
        push    eax                                     ; 2BEA _ 50
        call    boxfill8                                ; 2BEB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2BF0 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2BF3 _ 0F BE. 45, E4
        push    eax                                     ; 2BF7 _ 50
        push    dword [ebp+10H]                         ; 2BF8 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2BFB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2BFE _ FF. 75, 08
        call    make_wtitle8                            ; 2C01 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2C06 _ 83. C4, 10
        nop                                             ; 2C09 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2C0A _ 8B. 5D, FC
        leave                                           ; 2C0D _ C9
        ret                                             ; 2C0E _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 2C0F _ 55
        mov     ebp, esp                                ; 2C10 _ 89. E5
        push    ebx                                     ; 2C12 _ 53
        sub     esp, 36                                 ; 2C13 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2C16 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2C19 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2C1C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C1F _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2C22 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 2C25 _ 80. 7D, E4, 00
        jz      ?_124                                   ; 2C29 _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 2C2B _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 2C2F _ C6. 45, EB, 0C
        jmp     ?_125                                   ; 2C33 _ EB, 0E

?_124:  cmp     byte [ebp-1CH], 0                       ; 2C35 _ 80. 7D, E4, 00
        jnz     ?_125                                   ; 2C39 _ 75, 08
        mov     byte [ebp-16H], 8                       ; 2C3B _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2C3F _ C6. 45, EB, 0F
?_125:  mov     eax, dword [ebp-0CH]                    ; 2C43 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 2C46 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 2C49 _ 0F B6. 45, EB
        movzx   edx, al                                 ; 2C4D _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2C50 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C53 _ 8B. 00
        push    20                                      ; 2C55 _ 6A, 14
        push    ecx                                     ; 2C57 _ 51
        push    3                                       ; 2C58 _ 6A, 03
        push    3                                       ; 2C5A _ 6A, 03
        push    edx                                     ; 2C5C _ 52
        push    dword [ebp-0CH]                         ; 2C5D _ FF. 75, F4
        push    eax                                     ; 2C60 _ 50
        call    boxfill8                                ; 2C61 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2C66 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 2C69 _ 0F BE. 45, EA
        sub     esp, 8                                  ; 2C6D _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2C70 _ FF. 75, 10
        push    eax                                     ; 2C73 _ 50
        push    4                                       ; 2C74 _ 6A, 04
        push    8                                       ; 2C76 _ 6A, 08
        push    dword [ebp+0CH]                         ; 2C78 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2C7B _ FF. 75, 08
        call    showString                              ; 2C7E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C83 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 2C86 _ C7. 45, EC, 00000000
        jmp     ?_132                                   ; 2C8D _ EB, 75

?_126:  mov     dword [ebp-10H], 0                      ; 2C8F _ C7. 45, F0, 00000000
        jmp     ?_131                                   ; 2C96 _ EB, 62

?_127:  mov     eax, dword [ebp-14H]                    ; 2C98 _ 8B. 45, EC
        shl     eax, 4                                  ; 2C9B _ C1. E0, 04
        mov     edx, eax                                ; 2C9E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2CA0 _ 8B. 45, F0
        add     eax, edx                                ; 2CA3 _ 01. D0
        add     eax, closebtn.2674                      ; 2CA5 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2CAA _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 2CAD _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 2CB0 _ 80. 7D, E9, 40
        jnz     ?_128                                   ; 2CB4 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 2CB6 _ C6. 45, E9, 00
        jmp     ?_130                                   ; 2CBA _ EB, 16

?_128:  cmp     byte [ebp-17H], 36                      ; 2CBC _ 80. 7D, E9, 24
        jnz     ?_129                                   ; 2CC0 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 2CC2 _ C6. 45, E9, 0F
        jmp     ?_130                                   ; 2CC6 _ EB, 0A

?_129:  cmp     byte [ebp-17H], 81                      ; 2CC8 _ 80. 7D, E9, 51
        jnz     ?_130                                   ; 2CCC _ 75, 04
        mov     byte [ebp-17H], 8                       ; 2CCE _ C6. 45, E9, 08
?_130:  mov     eax, dword [ebp+0CH]                    ; 2CD2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CD5 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2CD7 _ 8B. 55, EC
        add     edx, 5                                  ; 2CDA _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 2CDD _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 2CE1 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2CE4 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2CE7 _ 8B. 4D, F0
        add     ecx, ebx                                ; 2CEA _ 01. D9
        add     edx, ecx                                ; 2CEC _ 01. CA
        add     edx, eax                                ; 2CEE _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 2CF0 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2CF4 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2CF6 _ 83. 45, F0, 01
?_131:  cmp     dword [ebp-10H], 15                     ; 2CFA _ 83. 7D, F0, 0F
        jle     ?_127                                   ; 2CFE _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2D00 _ 83. 45, EC, 01
?_132:  cmp     dword [ebp-14H], 13                     ; 2D04 _ 83. 7D, EC, 0D
        jle     ?_126                                   ; 2D08 _ 7E, 85
        nop                                             ; 2D0A _ 90
        mov     ebx, dword [ebp-4H]                     ; 2D0B _ 8B. 5D, FC
        leave                                           ; 2D0E _ C9
        ret                                             ; 2D0F _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2D10 _ 55
        mov     ebp, esp                                ; 2D11 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2D13 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2D16 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D1C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2D1F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D26 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2D29 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2D30 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2D33 _ C7. 40, 0C, 00000000
        nop                                             ; 2D3A _ 90
        pop     ebp                                     ; 2D3B _ 5D
        ret                                             ; 2D3C _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2D3D _ 55
        mov     ebp, esp                                ; 2D3E _ 89. E5
        sub     esp, 16                                 ; 2D40 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2D43 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2D4A _ C7. 45, FC, 00000000
        jmp     ?_134                                   ; 2D51 _ EB, 14

?_133:  mov     eax, dword [ebp+8H]                     ; 2D53 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2D56 _ 8B. 55, FC
        add     edx, 2                                  ; 2D59 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D5C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2D60 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2D63 _ 83. 45, FC, 01
?_134:  mov     eax, dword [ebp+8H]                     ; 2D67 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D6A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2D6C _ 39. 45, FC
        jl      ?_133                                   ; 2D6F _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2D71 _ 8B. 45, F8
        leave                                           ; 2D74 _ C9
        ret                                             ; 2D75 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2D76 _ 55
        mov     ebp, esp                                ; 2D77 _ 89. E5
        sub     esp, 16                                 ; 2D79 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2D7C _ C7. 45, F8, 00000000
        jmp     ?_138                                   ; 2D83 _ E9, 00000085

?_135:  mov     eax, dword [ebp+8H]                     ; 2D88 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D8B _ 8B. 55, F8
        add     edx, 2                                  ; 2D8E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D91 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2D95 _ 39. 45, 0C
        ja      ?_137                                   ; 2D98 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2D9A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D9D _ 8B. 55, F8
        add     edx, 2                                  ; 2DA0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2DA3 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2DA6 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2DA9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DAC _ 8B. 55, F8
        add     edx, 2                                  ; 2DAF _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2DB2 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2DB5 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2DB8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2DBB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DBE _ 8B. 55, F8
        add     edx, 2                                  ; 2DC1 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2DC4 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2DC7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DCA _ 8B. 55, F8
        add     edx, 2                                  ; 2DCD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2DD0 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2DD4 _ 2B. 45, 0C
        mov     edx, eax                                ; 2DD7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2DD9 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2DDC _ 8B. 4D, F8
        add     ecx, 2                                  ; 2DDF _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2DE2 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2DE6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DE9 _ 8B. 55, F8
        add     edx, 2                                  ; 2DEC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2DEF _ 8B. 44 D0, 04
        test    eax, eax                                ; 2DF3 _ 85. C0
        jnz     ?_136                                   ; 2DF5 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2DF7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DFA _ 8B. 00
        lea     edx, [eax-1H]                           ; 2DFC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DFF _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2E02 _ 89. 10
?_136:  mov     eax, dword [ebp-4H]                     ; 2E04 _ 8B. 45, FC
        jmp     ?_139                                   ; 2E07 _ EB, 17

?_137:  add     dword [ebp-8H], 1                       ; 2E09 _ 83. 45, F8, 01
?_138:  mov     eax, dword [ebp+8H]                     ; 2E0D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E10 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2E12 _ 39. 45, F8
        jl      ?_135                                   ; 2E15 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2E1B _ B8, 00000000
?_139:  leave                                           ; 2E20 _ C9
        ret                                             ; 2E21 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2E22 _ 55
        mov     ebp, esp                                ; 2E23 _ 89. E5
        sub     esp, 16                                 ; 2E25 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2E28 _ 8B. 45, 0C
        add     eax, 4095                               ; 2E2B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2E30 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2E35 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2E38 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2E3B _ FF. 75, 08
        call    memman_alloc_FF                         ; 2E3E _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2E43 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2E46 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2E49 _ 8B. 45, FC
        leave                                           ; 2E4C _ C9
        ret                                             ; 2E4D _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2E4E _ 55
        mov     ebp, esp                                ; 2E4F _ 89. E5
        push    ebx                                     ; 2E51 _ 53
        sub     esp, 16                                 ; 2E52 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2E55 _ C7. 45, F4, 00000000
        jmp     ?_141                                   ; 2E5C _ EB, 15

?_140:  mov     eax, dword [ebp+8H]                     ; 2E5E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2E61 _ 8B. 55, F4
        add     edx, 2                                  ; 2E64 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E67 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2E6A _ 39. 45, 0C
        jc      ?_142                                   ; 2E6D _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2E6F _ 83. 45, F4, 01
?_141:  mov     eax, dword [ebp+8H]                     ; 2E73 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E76 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2E78 _ 39. 45, F4
        jl      ?_140                                   ; 2E7B _ 7C, E1
        jmp     ?_143                                   ; 2E7D _ EB, 01

?_142:  nop                                             ; 2E7F _ 90
?_143:  cmp     dword [ebp-0CH], 0                      ; 2E80 _ 83. 7D, F4, 00
        jle     ?_145                                   ; 2E84 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2E8A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2E8D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E90 _ 8B. 45, 08
        add     edx, 2                                  ; 2E93 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2E96 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2E99 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2E9C _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2E9F _ 8B. 45, 08
        add     ecx, 2                                  ; 2EA2 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2EA5 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2EA9 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2EAB _ 39. 45, 0C
        jne     ?_145                                   ; 2EAE _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2EB4 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2EB7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EBA _ 8B. 45, 08
        add     edx, 2                                  ; 2EBD _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2EC0 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2EC4 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2EC7 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2ECA _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2ECD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2ED0 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2ED3 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2ED6 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2EDA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EDD _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2EDF _ 39. 45, F4
        jge     ?_144                                   ; 2EE2 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2EE4 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2EE7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2EEA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2EED _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2EF0 _ 8B. 55, F4
        add     edx, 2                                  ; 2EF3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2EF6 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2EF9 _ 39. C1
        jnz     ?_144                                   ; 2EFB _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2EFD _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2F00 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F03 _ 8B. 45, 08
        add     edx, 2                                  ; 2F06 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2F09 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2F0D _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2F10 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2F13 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2F16 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2F1A _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2F1D _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2F20 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2F23 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2F26 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2F29 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2F2D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F30 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2F32 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F35 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2F38 _ 89. 10
?_144:  mov     eax, 0                                  ; 2F3A _ B8, 00000000
        jmp     ?_151                                   ; 2F3F _ E9, 0000011C

?_145:  mov     eax, dword [ebp+8H]                     ; 2F44 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F47 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2F49 _ 39. 45, F4
        jge     ?_146                                   ; 2F4C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2F4E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2F51 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2F54 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2F57 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F5A _ 8B. 55, F4
        add     edx, 2                                  ; 2F5D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2F60 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2F63 _ 39. C1
        jnz     ?_146                                   ; 2F65 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2F67 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F6A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2F6D _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2F70 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2F73 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2F76 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F79 _ 8B. 55, F4
        add     edx, 2                                  ; 2F7C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2F7F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2F83 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2F86 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2F89 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F8C _ 8B. 55, F4
        add     edx, 2                                  ; 2F8F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2F92 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2F96 _ B8, 00000000
        jmp     ?_151                                   ; 2F9B _ E9, 000000C0

?_146:  mov     eax, dword [ebp+8H]                     ; 2FA0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FA3 _ 8B. 00
        cmp     eax, 4095                               ; 2FA5 _ 3D, 00000FFF
        jg      ?_150                                   ; 2FAA _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2FB0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FB3 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2FB5 _ 89. 45, F8
        jmp     ?_148                                   ; 2FB8 _ EB, 28

?_147:  mov     eax, dword [ebp-8H]                     ; 2FBA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2FBD _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2FC0 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2FC3 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2FC6 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2FC9 _ 8B. 45, 08
        add     edx, 2                                  ; 2FCC _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2FCF _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2FD2 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2FD4 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2FD7 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2FDA _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2FDE _ 83. 6D, F8, 01
?_148:  mov     eax, dword [ebp-8H]                     ; 2FE2 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2FE5 _ 3B. 45, F4
        jg      ?_147                                   ; 2FE8 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2FEA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FED _ 8B. 00
        lea     edx, [eax+1H]                           ; 2FEF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FF2 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2FF5 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2FF7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FFA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FFD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3000 _ 8B. 00
        cmp     edx, eax                                ; 3002 _ 39. C2
        jge     ?_149                                   ; 3004 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 3006 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3009 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 300B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 300E _ 89. 50, 04
?_149:  mov     eax, dword [ebp+8H]                     ; 3011 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 3014 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 3017 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 301A _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 301D _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 3020 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 3023 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 3026 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 3029 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 302C _ 89. 54 C8, 04
        mov     eax, 0                                  ; 3030 _ B8, 00000000
        jmp     ?_151                                   ; 3035 _ EB, 29

?_150:  mov     eax, dword [ebp+8H]                     ; 3037 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 303A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 303D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3040 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3043 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3046 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3049 _ 8B. 40, 08
        mov     edx, eax                                ; 304C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 304E _ 8B. 45, 10
        add     eax, edx                                ; 3051 _ 01. D0
        mov     edx, eax                                ; 3053 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3055 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3058 _ 89. 50, 08
        mov     eax, 4294967295                         ; 305B _ B8, FFFFFFFF
?_151:  add     esp, 16                                 ; 3060 _ 83. C4, 10
        pop     ebx                                     ; 3063 _ 5B
        pop     ebp                                     ; 3064 _ 5D
        ret                                             ; 3065 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 3066 _ 55
        mov     ebp, esp                                ; 3067 _ 89. E5
        sub     esp, 16                                 ; 3069 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 306C _ 8B. 45, 10
        add     eax, 4095                               ; 306F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3074 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 3079 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 307C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 307F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 3082 _ FF. 75, 08
        call    memman_free                             ; 3085 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 308A _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 308D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3090 _ 8B. 45, FC
        leave                                           ; 3093 _ C9
        ret                                             ; 3094 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 3095 _ 55
        mov     ebp, esp                                ; 3096 _ 89. E5
        sub     esp, 24                                 ; 3098 _ 83. EC, 18
        sub     esp, 8                                  ; 309B _ 83. EC, 08
        push    9232                                    ; 309E _ 68, 00002410
        push    dword [ebp+8H]                          ; 30A3 _ FF. 75, 08
        call    memman_alloc_4K                         ; 30A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30AB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 30AE _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 30B1 _ 83. 7D, F4, 00
        jnz     ?_152                                   ; 30B5 _ 75, 0A
        mov     eax, 0                                  ; 30B7 _ B8, 00000000
        jmp     ?_156                                   ; 30BC _ E9, 0000009A

?_152:  mov     eax, dword [ebp+10H]                    ; 30C1 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 30C4 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 30C8 _ 83. EC, 08
        push    eax                                     ; 30CB _ 50
        push    dword [ebp+8H]                          ; 30CC _ FF. 75, 08
        call    memman_alloc_4K                         ; 30CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30D4 _ 83. C4, 10
        mov     edx, eax                                ; 30D7 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 30D9 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 30DC _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 30DF _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 30E2 _ 8B. 40, 04
        test    eax, eax                                ; 30E5 _ 85. C0
        jnz     ?_153                                   ; 30E7 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 30E9 _ 8B. 45, F4
        sub     esp, 4                                  ; 30EC _ 83. EC, 04
        push    9232                                    ; 30EF _ 68, 00002410
        push    eax                                     ; 30F4 _ 50
        push    dword [ebp+8H]                          ; 30F5 _ FF. 75, 08
        call    memman_free_4K                          ; 30F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 30FD _ 83. C4, 10
        mov     eax, 0                                  ; 3100 _ B8, 00000000
        jmp     ?_156                                   ; 3105 _ EB, 54

?_153:  mov     eax, dword [ebp-0CH]                    ; 3107 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 310A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 310D _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 310F _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 3112 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3115 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3118 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 311B _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 311E _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 3121 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 3124 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 312B _ C7. 45, F0, 00000000
        jmp     ?_155                                   ; 3132 _ EB, 1B

?_154:  mov     eax, dword [ebp-0CH]                    ; 3134 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 3137 _ 8B. 55, F0
        add     edx, 33                                 ; 313A _ 83. C2, 21
        shl     edx, 5                                  ; 313D _ C1. E2, 05
        add     eax, edx                                ; 3140 _ 01. D0
        add     eax, 16                                 ; 3142 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3145 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 314B _ 83. 45, F0, 01
?_155:  cmp     dword [ebp-10H], 255                    ; 314F _ 81. 7D, F0, 000000FF
        jle     ?_154                                   ; 3156 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 3158 _ 8B. 45, F4
?_156:  leave                                           ; 315B _ C9
        ret                                             ; 315C _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 315D _ 55
        mov     ebp, esp                                ; 315E _ 89. E5
        sub     esp, 16                                 ; 3160 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3163 _ C7. 45, F8, 00000000
        jmp     ?_159                                   ; 316A _ EB, 4B

?_157:  mov     eax, dword [ebp+8H]                     ; 316C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 316F _ 8B. 55, F8
        add     edx, 33                                 ; 3172 _ 83. C2, 21
        shl     edx, 5                                  ; 3175 _ C1. E2, 05
        add     eax, edx                                ; 3178 _ 01. D0
        add     eax, 16                                 ; 317A _ 83. C0, 10
        mov     eax, dword [eax]                        ; 317D _ 8B. 00
        test    eax, eax                                ; 317F _ 85. C0
        jnz     ?_158                                   ; 3181 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 3183 _ 8B. 45, F8
        shl     eax, 5                                  ; 3186 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 3189 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 318F _ 8B. 45, 08
        add     eax, edx                                ; 3192 _ 01. D0
        add     eax, 4                                  ; 3194 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 3197 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 319A _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 319D _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 31A4 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 31A7 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 31AE _ 8B. 45, FC
        jmp     ?_160                                   ; 31B1 _ EB, 12

?_158:  add     dword [ebp-8H], 1                       ; 31B3 _ 83. 45, F8, 01
?_159:  cmp     dword [ebp-8H], 255                     ; 31B7 _ 81. 7D, F8, 000000FF
        jle     ?_157                                   ; 31BE _ 7E, AC
        mov     eax, 0                                  ; 31C0 _ B8, 00000000
?_160:  leave                                           ; 31C5 _ C9
        ret                                             ; 31C6 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 31C7 _ 55
        mov     ebp, esp                                ; 31C8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31CA _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 31CD _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 31D0 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 31D2 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 31D5 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 31D8 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 31DB _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 31DE _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 31E1 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31E4 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 31E7 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 31EA _ 89. 50, 14
        nop                                             ; 31ED _ 90
        pop     ebp                                     ; 31EE _ 5D
        ret                                             ; 31EF _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 31F0 _ 55
        mov     ebp, esp                                ; 31F1 _ 89. E5
        push    esi                                     ; 31F3 _ 56
        push    ebx                                     ; 31F4 _ 53
        sub     esp, 32                                 ; 31F5 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 31F8 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 31FB _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 31FE _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 3201 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3204 _ 8B. 40, 10
        add     eax, 1                                  ; 3207 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 320A _ 39. 45, 10
        jle     ?_161                                   ; 320D _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 320F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3212 _ 8B. 40, 10
        add     eax, 1                                  ; 3215 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 3218 _ 89. 45, 10
?_161:  cmp     dword [ebp+10H], -1                     ; 321B _ 83. 7D, 10, FF
        jge     ?_162                                   ; 321F _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3221 _ C7. 45, 10, FFFFFFFF
?_162:  mov     eax, dword [ebp+0CH]                    ; 3228 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 322B _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 322E _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 3231 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 3234 _ 3B. 45, 10
        jle     ?_169                                   ; 3237 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 323D _ 83. 7D, 10, 00
        js      ?_165                                   ; 3241 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 3247 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 324A _ 89. 45, E4
        jmp     ?_164                                   ; 324D _ EB, 34

?_163:  mov     eax, dword [ebp-1CH]                    ; 324F _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3252 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3255 _ 8B. 45, 08
        add     edx, 4                                  ; 3258 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 325B _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 325F _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 3262 _ 8B. 4D, E4
        add     ecx, 4                                  ; 3265 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3268 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 326C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 326F _ 8B. 55, E4
        add     edx, 4                                  ; 3272 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3275 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3279 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 327C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 327F _ 83. 6D, E4, 01
?_164:  mov     eax, dword [ebp-1CH]                    ; 3283 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3286 _ 3B. 45, 10
        jg      ?_163                                   ; 3289 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 328B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 328E _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 3291 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3294 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 3297 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 329B _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 329E _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 32A1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32A4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32A7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 32AA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 32AD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 32B0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 32B3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 32B6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 32B9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 32BC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 32BF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32C2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32C5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 32C8 _ 8B. 40, 0C
        sub     esp, 8                                  ; 32CB _ 83. EC, 08
        push    esi                                     ; 32CE _ 56
        push    ebx                                     ; 32CF _ 53
        push    ecx                                     ; 32D0 _ 51
        push    edx                                     ; 32D1 _ 52
        push    eax                                     ; 32D2 _ 50
        push    dword [ebp+8H]                          ; 32D3 _ FF. 75, 08
        call    sheet_refreshmap                        ; 32D6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 32DB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 32DE _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 32E1 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 32E4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32E7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32EA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 32ED _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 32F0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 32F3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 32F6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 32F9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 32FC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 32FF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3302 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3305 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3308 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 330B _ 8B. 40, 0C
        sub     esp, 4                                  ; 330E _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 3311 _ FF. 75, F4
        push    esi                                     ; 3314 _ 56
        push    ebx                                     ; 3315 _ 53
        push    ecx                                     ; 3316 _ 51
        push    edx                                     ; 3317 _ 52
        push    eax                                     ; 3318 _ 50
        push    dword [ebp+8H]                          ; 3319 _ FF. 75, 08
        call    sheet_refresh_new                       ; 331C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3321 _ 83. C4, 20
        jmp     ?_176                                   ; 3324 _ E9, 00000244

?_165:  mov     eax, dword [ebp+8H]                     ; 3329 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 332C _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 332F _ 39. 45, F4
        jge     ?_168                                   ; 3332 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 3334 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 3337 _ 89. 45, E8
        jmp     ?_167                                   ; 333A _ EB, 34

?_166:  mov     eax, dword [ebp-18H]                    ; 333C _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 333F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3342 _ 8B. 45, 08
        add     edx, 4                                  ; 3345 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3348 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 334C _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 334F _ 8B. 4D, E8
        add     ecx, 4                                  ; 3352 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3355 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 3359 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 335C _ 8B. 55, E8
        add     edx, 4                                  ; 335F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3362 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 3366 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 3369 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 336C _ 83. 45, E8, 01
?_167:  mov     eax, dword [ebp+8H]                     ; 3370 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3373 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 3376 _ 39. 45, E8
        jl      ?_166                                   ; 3379 _ 7C, C1
?_168:  mov     eax, dword [ebp+8H]                     ; 337B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 337E _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3381 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3384 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3387 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 338A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 338D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3390 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3393 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3396 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3399 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 339C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 339F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 33A2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 33A5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 33A8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33AB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33AE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 33B1 _ 8B. 40, 0C
        sub     esp, 8                                  ; 33B4 _ 83. EC, 08
        push    0                                       ; 33B7 _ 6A, 00
        push    ebx                                     ; 33B9 _ 53
        push    ecx                                     ; 33BA _ 51
        push    edx                                     ; 33BB _ 52
        push    eax                                     ; 33BC _ 50
        push    dword [ebp+8H]                          ; 33BD _ FF. 75, 08
        call    sheet_refreshmap                        ; 33C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 33C5 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 33C8 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 33CB _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 33CE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33D1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33D4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 33D7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 33DA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 33DD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 33E0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 33E3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 33E6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 33E9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 33EC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33EF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33F2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 33F5 _ 8B. 40, 0C
        sub     esp, 4                                  ; 33F8 _ 83. EC, 04
        push    esi                                     ; 33FB _ 56
        push    0                                       ; 33FC _ 6A, 00
        push    ebx                                     ; 33FE _ 53
        push    ecx                                     ; 33FF _ 51
        push    edx                                     ; 3400 _ 52
        push    eax                                     ; 3401 _ 50
        push    dword [ebp+8H]                          ; 3402 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3405 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 340A _ 83. C4, 20
        jmp     ?_176                                   ; 340D _ E9, 0000015B

?_169:  mov     eax, dword [ebp-0CH]                    ; 3412 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 3415 _ 3B. 45, 10
        jge     ?_176                                   ; 3418 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 341E _ 83. 7D, F4, 00
        js      ?_172                                   ; 3422 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 3424 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 3427 _ 89. 45, EC
        jmp     ?_171                                   ; 342A _ EB, 34

?_170:  mov     eax, dword [ebp-14H]                    ; 342C _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 342F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3432 _ 8B. 45, 08
        add     edx, 4                                  ; 3435 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3438 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 343C _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 343F _ 8B. 4D, EC
        add     ecx, 4                                  ; 3442 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3445 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 3449 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 344C _ 8B. 55, EC
        add     edx, 4                                  ; 344F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3452 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 3456 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 3459 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 345C _ 83. 45, EC, 01
?_171:  mov     eax, dword [ebp-14H]                    ; 3460 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 3463 _ 3B. 45, 10
        jl      ?_170                                   ; 3466 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 3468 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 346B _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 346E _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3471 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 3474 _ 89. 54 88, 04
        jmp     ?_175                                   ; 3478 _ EB, 72

?_172:  cmp     dword [ebp-0CH], 0                      ; 347A _ 83. 7D, F4, 00
        jns     ?_175                                   ; 347E _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 3480 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3483 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 3486 _ 89. 45, F0
        jmp     ?_174                                   ; 3489 _ EB, 3A

?_173:  mov     eax, dword [ebp-10H]                    ; 348B _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 348E _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3491 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 3494 _ 8B. 55, F0
        add     edx, 4                                  ; 3497 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 349A _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 349E _ 8B. 45, 08
        add     ecx, 4                                  ; 34A1 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 34A4 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 34A8 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 34AB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 34AE _ 8B. 45, 08
        add     edx, 4                                  ; 34B1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 34B4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 34B8 _ 8B. 55, F0
        add     edx, 1                                  ; 34BB _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 34BE _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 34C1 _ 83. 6D, F0, 01
?_174:  mov     eax, dword [ebp-10H]                    ; 34C5 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 34C8 _ 3B. 45, 10
        jge     ?_173                                   ; 34CB _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 34CD _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 34D0 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 34D3 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 34D6 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 34D9 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 34DD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34E0 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 34E3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 34E6 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 34E9 _ 89. 50, 10
?_175:  mov     eax, dword [ebp+0CH]                    ; 34EC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34EF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34F2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 34F5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 34F8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 34FB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34FE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3501 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3504 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3507 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 350A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 350D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3510 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3513 _ 8B. 40, 0C
        sub     esp, 8                                  ; 3516 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 3519 _ FF. 75, 10
        push    ebx                                     ; 351C _ 53
        push    ecx                                     ; 351D _ 51
        push    edx                                     ; 351E _ 52
        push    eax                                     ; 351F _ 50
        push    dword [ebp+8H]                          ; 3520 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3523 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3528 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 352B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 352E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3531 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3534 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3537 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 353A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 353D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3540 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3543 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3546 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3549 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 354C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 354F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3552 _ 8B. 40, 0C
        sub     esp, 4                                  ; 3555 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 3558 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 355B _ FF. 75, 10
        push    ebx                                     ; 355E _ 53
        push    ecx                                     ; 355F _ 51
        push    edx                                     ; 3560 _ 52
        push    eax                                     ; 3561 _ 50
        push    dword [ebp+8H]                          ; 3562 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3565 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 356A _ 83. C4, 20
?_176:  nop                                             ; 356D _ 90
        lea     esp, [ebp-8H]                           ; 356E _ 8D. 65, F8
        pop     ebx                                     ; 3571 _ 5B
        pop     esi                                     ; 3572 _ 5E
        pop     ebp                                     ; 3573 _ 5D
        ret                                             ; 3574 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 3575 _ 55
        mov     ebp, esp                                ; 3576 _ 89. E5
        push    edi                                     ; 3578 _ 57
        push    esi                                     ; 3579 _ 56
        push    ebx                                     ; 357A _ 53
        sub     esp, 28                                 ; 357B _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 357E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3581 _ 8B. 40, 18
        test    eax, eax                                ; 3584 _ 85. C0
        js      ?_177                                   ; 3586 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 3588 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 358B _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 358E _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3591 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3594 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3597 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 359A _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 359D _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 35A0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 35A3 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 35A6 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 35A9 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 35AC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 35AF _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 35B2 _ 8B. 45, 14
        add     edx, eax                                ; 35B5 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 35B7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 35BA _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 35BD _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 35C0 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 35C3 _ 03. 45, E4
        sub     esp, 4                                  ; 35C6 _ 83. EC, 04
        push    ebx                                     ; 35C9 _ 53
        push    ecx                                     ; 35CA _ 51
        push    edi                                     ; 35CB _ 57
        push    esi                                     ; 35CC _ 56
        push    edx                                     ; 35CD _ 52
        push    eax                                     ; 35CE _ 50
        push    dword [ebp+8H]                          ; 35CF _ FF. 75, 08
        call    sheet_refresh_new                       ; 35D2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 35D7 _ 83. C4, 20
?_177:  mov     eax, 0                                  ; 35DA _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 35DF _ 8D. 65, F4
        pop     ebx                                     ; 35E2 _ 5B
        pop     esi                                     ; 35E3 _ 5E
        pop     edi                                     ; 35E4 _ 5F
        pop     ebp                                     ; 35E5 _ 5D
        ret                                             ; 35E6 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 35E7 _ 55
        mov     ebp, esp                                ; 35E8 _ 89. E5
        push    esi                                     ; 35EA _ 56
        push    ebx                                     ; 35EB _ 53
        sub     esp, 16                                 ; 35EC _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 35EF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 35F2 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 35F5 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 35F8 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 35FB _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 35FE _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3601 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3604 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3607 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 360A _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 360D _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3610 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3613 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3616 _ 8B. 40, 18
        test    eax, eax                                ; 3619 _ 85. C0
        js      ?_178                                   ; 361B _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 3621 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3624 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3627 _ 8B. 45, F4
        add     edx, eax                                ; 362A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 362C _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 362F _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 3632 _ 8B. 45, F0
        add     eax, ecx                                ; 3635 _ 01. C8
        sub     esp, 8                                  ; 3637 _ 83. EC, 08
        push    0                                       ; 363A _ 6A, 00
        push    edx                                     ; 363C _ 52
        push    eax                                     ; 363D _ 50
        push    dword [ebp-0CH]                         ; 363E _ FF. 75, F4
        push    dword [ebp-10H]                         ; 3641 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 3644 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3647 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 364C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 364F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3652 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 3655 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 3658 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 365B _ 8B. 55, 14
        add     ecx, edx                                ; 365E _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 3660 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 3663 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 3666 _ 8B. 55, 10
        add     edx, ebx                                ; 3669 _ 01. DA
        sub     esp, 8                                  ; 366B _ 83. EC, 08
        push    eax                                     ; 366E _ 50
        push    ecx                                     ; 366F _ 51
        push    edx                                     ; 3670 _ 52
        push    dword [ebp+14H]                         ; 3671 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3674 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3677 _ FF. 75, 08
        call    sheet_refreshmap                        ; 367A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 367F _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3682 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3685 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3688 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 368B _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 368E _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3691 _ 8B. 45, F4
        add     edx, eax                                ; 3694 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3696 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3699 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 369C _ 8B. 45, F0
        add     eax, ebx                                ; 369F _ 01. D8
        sub     esp, 4                                  ; 36A1 _ 83. EC, 04
        push    ecx                                     ; 36A4 _ 51
        push    0                                       ; 36A5 _ 6A, 00
        push    edx                                     ; 36A7 _ 52
        push    eax                                     ; 36A8 _ 50
        push    dword [ebp-0CH]                         ; 36A9 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 36AC _ FF. 75, F0
        push    dword [ebp+8H]                          ; 36AF _ FF. 75, 08
        call    sheet_refresh_new                       ; 36B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 36B7 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 36BA _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 36BD _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 36C0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 36C3 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 36C6 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 36C9 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 36CC _ 8B. 4D, 14
        add     ebx, ecx                                ; 36CF _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 36D1 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 36D4 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 36D7 _ 8B. 4D, 10
        add     ecx, esi                                ; 36DA _ 01. F1
        sub     esp, 4                                  ; 36DC _ 83. EC, 04
        push    edx                                     ; 36DF _ 52
        push    eax                                     ; 36E0 _ 50
        push    ebx                                     ; 36E1 _ 53
        push    ecx                                     ; 36E2 _ 51
        push    dword [ebp+14H]                         ; 36E3 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 36E6 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 36E9 _ FF. 75, 08
        call    sheet_refresh_new                       ; 36EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 36F1 _ 83. C4, 20
?_178:  nop                                             ; 36F4 _ 90
        lea     esp, [ebp-8H]                           ; 36F5 _ 8D. 65, F8
        pop     ebx                                     ; 36F8 _ 5B
        pop     esi                                     ; 36F9 _ 5E
        pop     ebp                                     ; 36FA _ 5D
        ret                                             ; 36FB _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 36FC _ 55
        mov     ebp, esp                                ; 36FD _ 89. E5
        sub     esp, 48                                 ; 36FF _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3702 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3705 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 3707 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 370A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 370D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3710 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3713 _ 83. 7D, 0C, 00
        jns     ?_179                                   ; 3717 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3719 _ C7. 45, 0C, 00000000
?_179:  cmp     dword [ebp+10H], 8                      ; 3720 _ 83. 7D, 10, 08
        jg      ?_180                                   ; 3724 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3726 _ C7. 45, 10, 00000000
?_180:  mov     eax, dword [ebp+8H]                     ; 372D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3730 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3733 _ 39. 45, 14
        jle     ?_181                                   ; 3736 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3738 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 373B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 373E _ 89. 45, 14
?_181:  mov     eax, dword [ebp+8H]                     ; 3741 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3744 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3747 _ 39. 45, 18
        jle     ?_182                                   ; 374A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 374C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 374F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3752 _ 89. 45, 18
?_182:  mov     eax, dword [ebp+1CH]                    ; 3755 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 3758 _ 89. 45, DC
        jmp     ?_189                                   ; 375B _ E9, 00000118

?_183:  mov     eax, dword [ebp+8H]                     ; 3760 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 3763 _ 8B. 55, DC
        add     edx, 4                                  ; 3766 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3769 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 376D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3770 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3773 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3775 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3778 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 377B _ 8B. 55, 08
        add     edx, 1044                               ; 377E _ 81. C2, 00000414
        sub     eax, edx                                ; 3784 _ 29. D0
        sar     eax, 5                                  ; 3786 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 3789 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 378C _ C7. 45, E0, 00000000
        jmp     ?_188                                   ; 3793 _ E9, 000000CD

?_184:  mov     eax, dword [ebp-10H]                    ; 3798 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 379B _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 379E _ 8B. 45, E0
        add     eax, edx                                ; 37A1 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 37A3 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 37A6 _ C7. 45, E4, 00000000
        jmp     ?_187                                   ; 37AD _ E9, 000000A0

?_185:  mov     eax, dword [ebp-10H]                    ; 37B2 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 37B5 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 37B8 _ 8B. 45, E4
        add     eax, edx                                ; 37BB _ 01. D0
        mov     dword [ebp-4H], eax                     ; 37BD _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 37C0 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 37C3 _ 3B. 45, FC
        jg      ?_186                                   ; 37C6 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 37CC _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 37CF _ 3B. 45, 14
        jge     ?_186                                   ; 37D2 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 37D4 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 37D7 _ 3B. 45, F8
        jg      ?_186                                   ; 37DA _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 37DC _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 37DF _ 3B. 45, 18
        jge     ?_186                                   ; 37E2 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 37E4 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 37E7 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 37EA _ 0F AF. 45, E0
        mov     edx, eax                                ; 37EE _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 37F0 _ 8B. 45, E4
        add     eax, edx                                ; 37F3 _ 01. D0
        mov     edx, eax                                ; 37F5 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 37F7 _ 8B. 45, F4
        add     eax, edx                                ; 37FA _ 01. D0
        movzx   eax, byte [eax]                         ; 37FC _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 37FF _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 3802 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3805 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3808 _ 0F AF. 45, F8
        mov     edx, eax                                ; 380C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 380E _ 8B. 45, FC
        add     eax, edx                                ; 3811 _ 01. D0
        mov     edx, eax                                ; 3813 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3815 _ 8B. 45, EC
        add     eax, edx                                ; 3818 _ 01. D0
        movzx   eax, byte [eax]                         ; 381A _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 381D _ 38. 45, DA
        jnz     ?_186                                   ; 3820 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3822 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 3826 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3829 _ 8B. 40, 14
        cmp     edx, eax                                ; 382C _ 39. C2
        jz      ?_186                                   ; 382E _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3830 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3833 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3836 _ 0F AF. 45, F8
        mov     edx, eax                                ; 383A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 383C _ 8B. 45, FC
        add     eax, edx                                ; 383F _ 01. D0
        mov     edx, eax                                ; 3841 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3843 _ 8B. 45, E8
        add     edx, eax                                ; 3846 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3848 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 384C _ 88. 02
?_186:  add     dword [ebp-1CH], 1                      ; 384E _ 83. 45, E4, 01
?_187:  mov     eax, dword [ebp-10H]                    ; 3852 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3855 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 3858 _ 39. 45, E4
        jl      ?_185                                   ; 385B _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 3861 _ 83. 45, E0, 01
?_188:  mov     eax, dword [ebp-10H]                    ; 3865 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3868 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 386B _ 39. 45, E0
        jl      ?_184                                   ; 386E _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 3874 _ 83. 45, DC, 01
?_189:  mov     eax, dword [ebp-24H]                    ; 3878 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 387B _ 3B. 45, 20
        jle     ?_183                                   ; 387E _ 0F 8E, FFFFFEDC
        nop                                             ; 3884 _ 90
        leave                                           ; 3885 _ C9
        ret                                             ; 3886 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 3887 _ 55
        mov     ebp, esp                                ; 3888 _ 89. E5
        sub     esp, 64                                 ; 388A _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 388D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3890 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3893 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3896 _ 83. 7D, 0C, 00
        jns     ?_190                                   ; 389A _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 389C _ C7. 45, 0C, 00000000
?_190:  mov     eax, dword [ebp+8H]                     ; 38A3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 38A6 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 38A9 _ 39. 45, 0C
        jle     ?_191                                   ; 38AC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 38AE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 38B1 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 38B4 _ 89. 45, 0C
?_191:  cmp     dword [ebp+10H], 0                      ; 38B7 _ 83. 7D, 10, 00
        jns     ?_192                                   ; 38BB _ 79, 07
        mov     dword [ebp+10H], 0                      ; 38BD _ C7. 45, 10, 00000000
?_192:  mov     eax, dword [ebp+8H]                     ; 38C4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 38C7 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 38CA _ 39. 45, 10
        jle     ?_193                                   ; 38CD _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 38CF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 38D2 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 38D5 _ 89. 45, 10
?_193:  mov     eax, dword [ebp+1CH]                    ; 38D8 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 38DB _ 89. 45, E0
        jmp     ?_204                                   ; 38DE _ E9, 00000140

?_194:  mov     eax, dword [ebp+8H]                     ; 38E3 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 38E6 _ 8B. 55, E0
        add     edx, 4                                  ; 38E9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 38EC _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 38F0 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 38F3 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 38F6 _ 8B. 55, 08
        add     edx, 1044                               ; 38F9 _ 81. C2, 00000414
        sub     eax, edx                                ; 38FF _ 29. D0
        sar     eax, 5                                  ; 3901 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 3904 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 3907 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 390A _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 390C _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 390F _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3912 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3915 _ 8B. 55, 0C
        sub     edx, eax                                ; 3918 _ 29. C2
        mov     eax, edx                                ; 391A _ 89. D0
        mov     dword [ebp-30H], eax                    ; 391C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 391F _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3922 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3925 _ 8B. 55, 10
        sub     edx, eax                                ; 3928 _ 29. C2
        mov     eax, edx                                ; 392A _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 392C _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 392F _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3932 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3935 _ 8B. 55, 14
        sub     edx, eax                                ; 3938 _ 29. C2
        mov     eax, edx                                ; 393A _ 89. D0
        mov     dword [ebp-28H], eax                    ; 393C _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 393F _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3942 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3945 _ 8B. 55, 18
        sub     edx, eax                                ; 3948 _ 29. C2
        mov     eax, edx                                ; 394A _ 89. D0
        mov     dword [ebp-24H], eax                    ; 394C _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 394F _ 83. 7D, D0, 00
        jns     ?_195                                   ; 3953 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 3955 _ C7. 45, D0, 00000000
?_195:  cmp     dword [ebp-2CH], 0                      ; 395C _ 83. 7D, D4, 00
        jns     ?_196                                   ; 3960 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 3962 _ C7. 45, D4, 00000000
?_196:  mov     eax, dword [ebp-10H]                    ; 3969 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 396C _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 396F _ 39. 45, D8
        jle     ?_197                                   ; 3972 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3974 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3977 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 397A _ 89. 45, D8
?_197:  mov     eax, dword [ebp-10H]                    ; 397D _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3980 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 3983 _ 39. 45, DC
        jle     ?_198                                   ; 3986 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3988 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 398B _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 398E _ 89. 45, DC
?_198:  mov     eax, dword [ebp-2CH]                    ; 3991 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 3994 _ 89. 45, E4
        jmp     ?_203                                   ; 3997 _ EB, 7A

?_199:  mov     eax, dword [ebp-10H]                    ; 3999 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 399C _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 399F _ 8B. 45, E4
        add     eax, edx                                ; 39A2 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 39A4 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 39A7 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 39AA _ 89. 45, E8
        jmp     ?_202                                   ; 39AD _ EB, 58

?_200:  mov     eax, dword [ebp-10H]                    ; 39AF _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 39B2 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 39B5 _ 8B. 45, E8
        add     eax, edx                                ; 39B8 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 39BA _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 39BD _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 39C0 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 39C3 _ 0F AF. 45, E4
        mov     edx, eax                                ; 39C7 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 39C9 _ 8B. 45, E8
        add     eax, edx                                ; 39CC _ 01. D0
        mov     edx, eax                                ; 39CE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 39D0 _ 8B. 45, F4
        add     eax, edx                                ; 39D3 _ 01. D0
        movzx   eax, byte [eax]                         ; 39D5 _ 0F B6. 00
        movzx   edx, al                                 ; 39D8 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 39DB _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 39DE _ 8B. 40, 14
        cmp     edx, eax                                ; 39E1 _ 39. C2
        jz      ?_201                                   ; 39E3 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 39E5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 39E8 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 39EB _ 0F AF. 45, F8
        mov     edx, eax                                ; 39EF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 39F1 _ 8B. 45, FC
        add     eax, edx                                ; 39F4 _ 01. D0
        mov     edx, eax                                ; 39F6 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 39F8 _ 8B. 45, EC
        add     edx, eax                                ; 39FB _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 39FD _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 3A01 _ 88. 02
?_201:  add     dword [ebp-18H], 1                      ; 3A03 _ 83. 45, E8, 01
?_202:  mov     eax, dword [ebp-18H]                    ; 3A07 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 3A0A _ 3B. 45, D8
        jl      ?_200                                   ; 3A0D _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3A0F _ 83. 45, E4, 01
?_203:  mov     eax, dword [ebp-1CH]                    ; 3A13 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 3A16 _ 3B. 45, DC
        jl      ?_199                                   ; 3A19 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 3A1F _ 83. 45, E0, 01
?_204:  mov     eax, dword [ebp+8H]                     ; 3A23 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3A26 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3A29 _ 39. 45, E0
        jle     ?_194                                   ; 3A2C _ 0F 8E, FFFFFEB1
        nop                                             ; 3A32 _ 90
        leave                                           ; 3A33 _ C9
        ret                                             ; 3A34 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 3A35 _ 55
        mov     ebp, esp                                ; 3A36 _ 89. E5
        sub     esp, 24                                 ; 3A38 _ 83. EC, 18
        sub     esp, 8                                  ; 3A3B _ 83. EC, 08
        push    52                                      ; 3A3E _ 6A, 34
        push    67                                      ; 3A40 _ 6A, 43
        call    io_out8                                 ; 3A42 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A47 _ 83. C4, 10
        sub     esp, 8                                  ; 3A4A _ 83. EC, 08
        push    156                                     ; 3A4D _ 68, 0000009C
        push    64                                      ; 3A52 _ 6A, 40
        call    io_out8                                 ; 3A54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A59 _ 83. C4, 10
        sub     esp, 8                                  ; 3A5C _ 83. EC, 08
        push    46                                      ; 3A5F _ 6A, 2E
        push    64                                      ; 3A61 _ 6A, 40
        call    io_out8                                 ; 3A63 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A68 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3A6B _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3A75 _ C7. 45, F4, 00000000
        jmp     ?_206                                   ; 3A7C _ EB, 26

?_205:  mov     eax, dword [ebp-0CH]                    ; 3A7E _ 8B. 45, F4
        shl     eax, 4                                  ; 3A81 _ C1. E0, 04
        add     eax, ?_280                              ; 3A84 _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 3A89 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3A8F _ 8B. 45, F4
        shl     eax, 4                                  ; 3A92 _ C1. E0, 04
        add     eax, ?_281                              ; 3A95 _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 3A9A _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3AA0 _ 83. 45, F4, 01
?_206:  cmp     dword [ebp-0CH], 499                    ; 3AA4 _ 81. 7D, F4, 000001F3
        jle     ?_205                                   ; 3AAB _ 7E, D1
        nop                                             ; 3AAD _ 90
        leave                                           ; 3AAE _ C9
        ret                                             ; 3AAF _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3AB0 _ 55
        mov     ebp, esp                                ; 3AB1 _ 89. E5
        sub     esp, 16                                 ; 3AB3 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3AB6 _ C7. 45, FC, 00000000
        jmp     ?_209                                   ; 3ABD _ EB, 36

?_207:  mov     eax, dword [ebp-4H]                     ; 3ABF _ 8B. 45, FC
        shl     eax, 4                                  ; 3AC2 _ C1. E0, 04
        add     eax, ?_280                              ; 3AC5 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3ACA _ 8B. 00
        test    eax, eax                                ; 3ACC _ 85. C0
        jnz     ?_208                                   ; 3ACE _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3AD0 _ 8B. 45, FC
        shl     eax, 4                                  ; 3AD3 _ C1. E0, 04
        add     eax, ?_280                              ; 3AD6 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3ADB _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3AE1 _ 8B. 45, FC
        shl     eax, 4                                  ; 3AE4 _ C1. E0, 04
        add     eax, timerctl                           ; 3AE7 _ 05, 000002A0(d)
        add     eax, 4                                  ; 3AEC _ 83. C0, 04
        jmp     ?_210                                   ; 3AEF _ EB, 12

?_208:  add     dword [ebp-4H], 1                       ; 3AF1 _ 83. 45, FC, 01
?_209:  cmp     dword [ebp-4H], 499                     ; 3AF5 _ 81. 7D, FC, 000001F3
        jle     ?_207                                   ; 3AFC _ 7E, C1
        mov     eax, 0                                  ; 3AFE _ B8, 00000000
?_210:  leave                                           ; 3B03 _ C9
        ret                                             ; 3B04 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3B05 _ 55
        mov     ebp, esp                                ; 3B06 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B08 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3B0B _ C7. 40, 04, 00000000
        nop                                             ; 3B12 _ 90
        pop     ebp                                     ; 3B13 _ 5D
        ret                                             ; 3B14 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3B15 _ 55
        mov     ebp, esp                                ; 3B16 _ 89. E5
        sub     esp, 4                                  ; 3B18 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3B1B _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3B1E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3B21 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B24 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3B27 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3B2A _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3B2D _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3B31 _ 88. 50, 0C
        nop                                             ; 3B34 _ 90
        leave                                           ; 3B35 _ C9
        ret                                             ; 3B36 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3B37 _ 55
        mov     ebp, esp                                ; 3B38 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B3A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B3D _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3B40 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3B42 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3B45 _ C7. 40, 04, 00000002
        nop                                             ; 3B4C _ 90
        pop     ebp                                     ; 3B4D _ 5D
        ret                                             ; 3B4E _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3B4F _ 55
        mov     ebp, esp                                ; 3B50 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B52 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B55 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3B58 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3B5A _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3B5D _ C7. 40, 04, 00000002
        nop                                             ; 3B64 _ 90
        pop     ebp                                     ; 3B65 _ 5D
        ret                                             ; 3B66 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 3B67 _ 55
        mov     ebp, esp                                ; 3B68 _ 89. E5
        mov     eax, timerctl                           ; 3B6A _ B8, 000002A0(d)
        pop     ebp                                     ; 3B6F _ 5D
        ret                                             ; 3B70 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3B71 _ 55
        mov     ebp, esp                                ; 3B72 _ 89. E5
        push    ebx                                     ; 3B74 _ 53
        sub     esp, 20                                 ; 3B75 _ 83. EC, 14
        sub     esp, 8                                  ; 3B78 _ 83. EC, 08
        push    32                                      ; 3B7B _ 6A, 20
        push    32                                      ; 3B7D _ 6A, 20
        call    io_out8                                 ; 3B7F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B84 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 3B87 _ A1, 000002A0(d)
        add     eax, 1                                  ; 3B8C _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3B8F _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 3B94 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3B9B _ C7. 45, F4, 00000000
        jmp     ?_214                                   ; 3BA2 _ E9, 000000AD

?_211:  mov     eax, dword [ebp-0CH]                    ; 3BA7 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BAA _ C1. E0, 04
        add     eax, ?_280                              ; 3BAD _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3BB2 _ 8B. 00
        cmp     eax, 2                                  ; 3BB4 _ 83. F8, 02
        jne     ?_212                                   ; 3BB7 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 3BBD _ 8B. 45, F4
        shl     eax, 4                                  ; 3BC0 _ C1. E0, 04
        add     eax, ?_279                              ; 3BC3 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3BC8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3BCA _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3BCD _ 8B. 45, F4
        shl     eax, 4                                  ; 3BD0 _ C1. E0, 04
        add     eax, ?_279                              ; 3BD3 _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 3BD8 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3BDA _ 8B. 45, F4
        shl     eax, 4                                  ; 3BDD _ C1. E0, 04
        add     eax, ?_279                              ; 3BE0 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3BE5 _ 8B. 00
        test    eax, eax                                ; 3BE7 _ 85. C0
        jnz     ?_212                                   ; 3BE9 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 3BEB _ 8B. 45, F4
        shl     eax, 4                                  ; 3BEE _ C1. E0, 04
        add     eax, ?_280                              ; 3BF1 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3BF6 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3BFC _ 8B. 45, F4
        shl     eax, 4                                  ; 3BFF _ C1. E0, 04
        add     eax, ?_282                              ; 3C02 _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 3C07 _ 0F B6. 00
        movzx   edx, al                                 ; 3C0A _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3C0D _ 8B. 45, F4
        shl     eax, 4                                  ; 3C10 _ C1. E0, 04
        add     eax, ?_281                              ; 3C13 _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 3C18 _ 8B. 00
        sub     esp, 8                                  ; 3C1A _ 83. EC, 08
        push    edx                                     ; 3C1D _ 52
        push    eax                                     ; 3C1E _ 50
        call    fifo8_put                               ; 3C1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C24 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3C27 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C2A _ C1. E0, 04
        add     eax, timerctl                           ; 3C2D _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 3C32 _ 8D. 58, 04
        call    getTaskTimer                            ; 3C35 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3C3A _ 39. C3
        jnz     ?_212                                   ; 3C3C _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3C3E _ C7. 45, F0, 00000001
?_212:  cmp     dword [ebp-10H], 1                      ; 3C45 _ 83. 7D, F0, 01
        jnz     ?_213                                   ; 3C49 _ 75, 05
        call    task_switch                             ; 3C4B _ E8, FFFFFFFC(rel)
?_213:  add     dword [ebp-0CH], 1                      ; 3C50 _ 83. 45, F4, 01
?_214:  cmp     dword [ebp-0CH], 499                    ; 3C54 _ 81. 7D, F4, 000001F3
        jle     ?_211                                   ; 3C5B _ 0F 8E, FFFFFF46
        nop                                             ; 3C61 _ 90
        mov     ebx, dword [ebp-4H]                     ; 3C62 _ 8B. 5D, FC
        leave                                           ; 3C65 _ C9
        ret                                             ; 3C66 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 3C67 _ 55
        mov     ebp, esp                                ; 3C68 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3C6A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C6D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3C70 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3C73 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3C76 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3C79 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3C7B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C7E _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3C81 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3C84 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3C87 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3C8E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3C91 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3C98 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3C9B _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3CA2 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3CA5 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3CA8 _ 89. 50, 18
        nop                                             ; 3CAB _ 90
        pop     ebp                                     ; 3CAC _ 5D
        ret                                             ; 3CAD _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3CAE _ 55
        mov     ebp, esp                                ; 3CAF _ 89. E5
        sub     esp, 24                                 ; 3CB1 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3CB4 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3CB7 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3CBA _ 83. 7D, 08, 00
        jnz     ?_215                                   ; 3CBE _ 75, 0A
        mov     eax, 4294967295                         ; 3CC0 _ B8, FFFFFFFF
        jmp     ?_219                                   ; 3CC5 _ E9, 000000A0

?_215:  mov     eax, dword [ebp+8H]                     ; 3CCA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3CCD _ 8B. 40, 10
        test    eax, eax                                ; 3CD0 _ 85. C0
        jnz     ?_216                                   ; 3CD2 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3CD4 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3CD7 _ 8B. 40, 14
        or      eax, 01H                                ; 3CDA _ 83. C8, 01
        mov     edx, eax                                ; 3CDD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CDF _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3CE2 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3CE5 _ B8, FFFFFFFF
        jmp     ?_219                                   ; 3CEA _ EB, 7E

?_216:  mov     eax, dword [ebp+8H]                     ; 3CEC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3CEF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3CF1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3CF4 _ 8B. 40, 08
        add     edx, eax                                ; 3CF7 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3CF9 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3CFD _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3CFF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3D02 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3D05 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3D08 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3D0B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3D0E _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3D11 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3D14 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3D17 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3D1A _ 39. C2
        jl      ?_217                                   ; 3D1C _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3D1E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3D21 _ C7. 40, 08, 00000000
?_217:  mov     eax, dword [ebp+8H]                     ; 3D28 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3D2B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3D2E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3D31 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3D34 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3D37 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3D3A _ 8B. 40, 18
        test    eax, eax                                ; 3D3D _ 85. C0
        jz      ?_218                                   ; 3D3F _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3D41 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3D44 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3D47 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3D4A _ 83. F8, 02
        jz      ?_218                                   ; 3D4D _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3D4F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3D52 _ 8B. 40, 18
        sub     esp, 4                                  ; 3D55 _ 83. EC, 04
        push    0                                       ; 3D58 _ 6A, 00
        push    -1                                      ; 3D5A _ 6A, FF
        push    eax                                     ; 3D5C _ 50
        call    task_run                                ; 3D5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D62 _ 83. C4, 10
?_218:  mov     eax, 1                                  ; 3D65 _ B8, 00000001
?_219:  leave                                           ; 3D6A _ C9
        ret                                             ; 3D6B _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3D6C _ 55
        mov     ebp, esp                                ; 3D6D _ 89. E5
        sub     esp, 16                                 ; 3D6F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3D72 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3D75 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3D78 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3D7B _ 8B. 40, 0C
        cmp     edx, eax                                ; 3D7E _ 39. C2
        jnz     ?_220                                   ; 3D80 _ 75, 07
        mov     eax, 4294967295                         ; 3D82 _ B8, FFFFFFFF
        jmp     ?_222                                   ; 3D87 _ EB, 51

?_220:  mov     eax, dword [ebp+8H]                     ; 3D89 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3D8C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3D8E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3D91 _ 8B. 40, 04
        add     eax, edx                                ; 3D94 _ 01. D0
        movzx   eax, byte [eax]                         ; 3D96 _ 0F B6. 00
        movzx   eax, al                                 ; 3D99 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3D9C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3D9F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3DA2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3DA5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3DA8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3DAB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3DAE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3DB1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3DB4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DB7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3DBA _ 39. C2
        jl      ?_221                                   ; 3DBC _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3DBE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3DC1 _ C7. 40, 04, 00000000
?_221:  mov     eax, dword [ebp+8H]                     ; 3DC8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3DCB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3DCE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3DD1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3DD4 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3DD7 _ 8B. 45, FC
?_222:  leave                                           ; 3DDA _ C9
        ret                                             ; 3DDB _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3DDC _ 55
        mov     ebp, esp                                ; 3DDD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3DDF _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3DE2 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3DE5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3DE8 _ 8B. 40, 10
        sub     edx, eax                                ; 3DEB _ 29. C2
        mov     eax, edx                                ; 3DED _ 89. D0
        pop     ebp                                     ; 3DEF _ 5D
        ret                                             ; 3DF0 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3DF1 _ 55
        mov     ebp, esp                                ; 3DF2 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3DF4 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_223                                   ; 3DFB _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3DFD _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3E04 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3E07 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3E0A _ 89. 45, 0C
?_223:  mov     eax, dword [ebp+0CH]                    ; 3E0D _ 8B. 45, 0C
        mov     edx, eax                                ; 3E10 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E12 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3E15 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3E18 _ 8B. 45, 10
        mov     edx, eax                                ; 3E1B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E1D _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3E20 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3E24 _ 8B. 45, 10
        sar     eax, 16                                 ; 3E27 _ C1. F8, 10
        mov     edx, eax                                ; 3E2A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E2C _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3E2F _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3E32 _ 8B. 45, 14
        mov     edx, eax                                ; 3E35 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E37 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3E3A _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3E3D _ 8B. 45, 0C
        shr     eax, 16                                 ; 3E40 _ C1. E8, 10
        and     eax, 0FH                                ; 3E43 _ 83. E0, 0F
        mov     edx, eax                                ; 3E46 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3E48 _ 8B. 45, 14
        sar     eax, 8                                  ; 3E4B _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3E4E _ 83. E0, F0
        or      eax, edx                                ; 3E51 _ 09. D0
        mov     edx, eax                                ; 3E53 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E55 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3E58 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3E5B _ 8B. 45, 10
        shr     eax, 24                                 ; 3E5E _ C1. E8, 18
        mov     edx, eax                                ; 3E61 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E63 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3E66 _ 88. 50, 07
        nop                                             ; 3E69 _ 90
        pop     ebp                                     ; 3E6A _ 5D
        ret                                             ; 3E6B _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3E6C _ 55
        mov     ebp, esp                                ; 3E6D _ 89. E5
        mov     eax, dword [task_timer]                 ; 3E6F _ A1, 000021E4(d)
        pop     ebp                                     ; 3E74 _ 5D
        ret                                             ; 3E75 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 3E76 _ 55
        mov     ebp, esp                                ; 3E77 _ 89. E5
        sub     esp, 16                                 ; 3E79 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3E7C _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3E82 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3E85 _ 6B. C0, 1C
        add     eax, edx                                ; 3E88 _ 01. D0
        add     eax, 8                                  ; 3E8A _ 83. C0, 08
        mov     dword [eax], 0                          ; 3E8D _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 3E93 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3E99 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3E9C _ 6B. C0, 1C
        add     eax, edx                                ; 3E9F _ 01. D0
        add     eax, 12                                 ; 3EA1 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3EA4 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3EAA _ C7. 45, FC, 00000000
        jmp     ?_225                                   ; 3EB1 _ EB, 1A

?_224:  mov     eax, dword [taskctl]                    ; 3EB3 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3EB8 _ 8B. 55, FC
        shl     edx, 5                                  ; 3EBB _ C1. E2, 05
        add     eax, edx                                ; 3EBE _ 01. D0
        add     eax, 16                                 ; 3EC0 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3EC3 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3EC9 _ 83. 45, FC, 01
?_225:  cmp     dword [ebp-4H], 4                       ; 3ECD _ 83. 7D, FC, 04
        jle     ?_224                                   ; 3ED1 _ 7E, E0
        nop                                             ; 3ED3 _ 90
        leave                                           ; 3ED4 _ C9
        ret                                             ; 3ED5 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3ED6 _ 55
        mov     ebp, esp                                ; 3ED7 _ 89. E5
        sub     esp, 24                                 ; 3ED9 _ 83. EC, 18
        call    get_addr_gdt                            ; 3EDC _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3EE1 _ 89. 45, F0
        sub     esp, 8                                  ; 3EE4 _ 83. EC, 08
        push    692                                     ; 3EE7 _ 68, 000002B4
        push    dword [ebp+8H]                          ; 3EEC _ FF. 75, 08
        call    memman_alloc_4K                         ; 3EEF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3EF4 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3EF7 _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 3EFC _ C7. 45, EC, 00000000
        jmp     ?_227                                   ; 3F03 _ EB, 73

?_226:  mov     edx, dword [taskctl]                    ; 3F05 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 3F0B _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3F0E _ 6B. C0, 7C
        add     eax, edx                                ; 3F11 _ 01. D0
        add     eax, 96                                 ; 3F13 _ 83. C0, 60
        mov     dword [eax], 0                          ; 3F16 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3F1C _ 8B. 45, EC
        add     eax, 7                                  ; 3F1F _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3F22 _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 3F28 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3F2F _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3F32 _ 6B. C0, 7C
        add     eax, ecx                                ; 3F35 _ 01. C8
        add     eax, 92                                 ; 3F37 _ 83. C0, 5C
        mov     dword [eax], edx                        ; 3F3A _ 89. 10
        mov     eax, dword [taskctl]                    ; 3F3C _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 3F41 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 3F44 _ 6B. D2, 7C
        add     edx, 96                                 ; 3F47 _ 83. C2, 60
        add     eax, edx                                ; 3F4A _ 01. D0
        add     eax, 16                                 ; 3F4C _ 83. C0, 10
        mov     ecx, eax                                ; 3F4F _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 3F51 _ 8B. 45, EC
        add     eax, 7                                  ; 3F54 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3F57 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3F5E _ 8B. 45, F0
        add     eax, edx                                ; 3F61 _ 01. D0
        push    137                                     ; 3F63 _ 68, 00000089
        push    ecx                                     ; 3F68 _ 51
        push    103                                     ; 3F69 _ 6A, 67
        push    eax                                     ; 3F6B _ 50
        call    set_segmdesc                            ; 3F6C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3F71 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3F74 _ 83. 45, EC, 01
?_227:  cmp     dword [ebp-14H], 4                      ; 3F78 _ 83. 7D, EC, 04
        jle     ?_226                                   ; 3F7C _ 7E, 87
        call    task_alloc                              ; 3F7E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3F83 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3F86 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3F89 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3F90 _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 3F93 _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 3F9A _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3F9D _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 3FA4 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3FA7 _ FF. 75, F4
        call    task_add                                ; 3FAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3FAF _ 83. C4, 10
        call    task_switchsub                          ; 3FB2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3FB7 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3FBA _ 8B. 00
        sub     esp, 12                                 ; 3FBC _ 83. EC, 0C
        push    eax                                     ; 3FBF _ 50
        call    load_tr                                 ; 3FC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3FC5 _ 83. C4, 10
        call    timer_alloc                             ; 3FC8 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3FCD _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 3FD2 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3FD5 _ 8B. 40, 08
        mov     edx, eax                                ; 3FD8 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3FDA _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3FDF _ 83. EC, 08
        push    edx                                     ; 3FE2 _ 52
        push    eax                                     ; 3FE3 _ 50
        call    timer_setTime                           ; 3FE4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3FE9 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3FEC _ 8B. 45, F4
        leave                                           ; 3FEF _ C9
        ret                                             ; 3FF0 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3FF1 _ 55
        mov     ebp, esp                                ; 3FF2 _ 89. E5
        sub     esp, 16                                 ; 3FF4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3FF7 _ C7. 45, F8, 00000000
        jmp     ?_230                                   ; 3FFE _ E9, 000000E1

?_228:  mov     edx, dword [taskctl]                    ; 4003 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 4009 _ 8B. 45, F8
        imul    eax, eax, 124                           ; 400C _ 6B. C0, 7C
        add     eax, edx                                ; 400F _ 01. D0
        add     eax, 96                                 ; 4011 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 4014 _ 8B. 00
        test    eax, eax                                ; 4016 _ 85. C0
        jne     ?_229                                   ; 4018 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 401E _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 4023 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 4026 _ 6B. D2, 7C
        add     edx, 80                                 ; 4029 _ 83. C2, 50
        add     eax, edx                                ; 402C _ 01. D0
        add     eax, 12                                 ; 402E _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 4031 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4034 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 4037 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 403E _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 4041 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 4048 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 404B _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 4052 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 4055 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 405C _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 405F _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 4066 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 4069 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 4070 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 4073 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 407A _ 8B. 45, F8
        add     eax, 1                                  ; 407D _ 83. C0, 01
        shl     eax, 9                                  ; 4080 _ C1. E0, 09
        mov     edx, eax                                ; 4083 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4085 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 4088 _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 408B _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 408E _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 4095 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 4098 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 409F _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 40A2 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 40A9 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 40AC _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 40B3 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 40B6 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 40BD _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 40C0 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 40C7 _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 40CA _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 40D1 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 40D4 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 40DB _ 8B. 45, FC
        jmp     ?_231                                   ; 40DE _ EB, 13

?_229:  add     dword [ebp-8H], 1                       ; 40E0 _ 83. 45, F8, 01
?_230:  cmp     dword [ebp-8H], 4                       ; 40E4 _ 83. 7D, F8, 04
        jle     ?_228                                   ; 40E8 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 40EE _ B8, 00000000
?_231:  leave                                           ; 40F3 _ C9
        ret                                             ; 40F4 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 40F5 _ 55
        mov     ebp, esp                                ; 40F6 _ 89. E5
        sub     esp, 8                                  ; 40F8 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 40FB _ 83. 7D, 0C, 00
        jns     ?_232                                   ; 40FF _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 4101 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4104 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4107 _ 89. 45, 0C
?_232:  cmp     dword [ebp+10H], 0                      ; 410A _ 83. 7D, 10, 00
        jle     ?_233                                   ; 410E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4110 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4113 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4116 _ 89. 50, 08
?_233:  mov     eax, dword [ebp+8H]                     ; 4119 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 411C _ 8B. 40, 04
        cmp     eax, 2                                  ; 411F _ 83. F8, 02
        jnz     ?_234                                   ; 4122 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 4124 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4127 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 412A _ 39. 45, 0C
        jz      ?_234                                   ; 412D _ 74, 0E
        sub     esp, 12                                 ; 412F _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4132 _ FF. 75, 08
        call    task_remove                             ; 4135 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 413A _ 83. C4, 10
?_234:  mov     eax, dword [ebp+8H]                     ; 413D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4140 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4143 _ 83. F8, 02
        jz      ?_235                                   ; 4146 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 4148 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 414B _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 414E _ 89. 50, 0C
        sub     esp, 12                                 ; 4151 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4154 _ FF. 75, 08
        call    task_add                                ; 4157 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 415C _ 83. C4, 10
?_235:  mov     eax, dword [taskctl]                    ; 415F _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 4164 _ C7. 40, 04, 00000001
        nop                                             ; 416B _ 90
        leave                                           ; 416C _ C9
        ret                                             ; 416D _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 416E _ 55
        mov     ebp, esp                                ; 416F _ 89. E5
        sub     esp, 24                                 ; 4171 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 4174 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 417A _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 417F _ 8B. 00
        imul    eax, eax, 28                            ; 4181 _ 6B. C0, 1C
        add     eax, edx                                ; 4184 _ 01. D0
        add     eax, 8                                  ; 4186 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 4189 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 418C _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 418F _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 4192 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 4195 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4199 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 419C _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 419F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 41A2 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 41A5 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 41A8 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 41AB _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 41AE _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 41B1 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 41B4 _ 8B. 00
        cmp     edx, eax                                ; 41B6 _ 39. C2
        jnz     ?_236                                   ; 41B8 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 41BA _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 41BD _ C7. 40, 04, 00000000
?_236:  mov     eax, dword [taskctl]                    ; 41C4 _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 41C9 _ 8B. 40, 04
        test    eax, eax                                ; 41CC _ 85. C0
        jz      ?_237                                   ; 41CE _ 74, 1D
        call    task_switchsub                          ; 41D0 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 41D5 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 41DB _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 41E0 _ 8B. 00
        imul    eax, eax, 28                            ; 41E2 _ 6B. C0, 1C
        add     eax, edx                                ; 41E5 _ 01. D0
        add     eax, 8                                  ; 41E7 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 41EA _ 89. 45, EC
?_237:  mov     eax, dword [ebp-14H]                    ; 41ED _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 41F0 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 41F3 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 41F6 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 41FA _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 41FD _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 4200 _ 8B. 40, 08
        mov     edx, eax                                ; 4203 _ 89. C2
        mov     eax, dword [task_timer]                 ; 4205 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 420A _ 83. EC, 08
        push    edx                                     ; 420D _ 52
        push    eax                                     ; 420E _ 50
        call    timer_setTime                           ; 420F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4214 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 4217 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 421A _ 3B. 45, F0
        jz      ?_238                                   ; 421D _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 421F _ 83. 7D, F4, 00
        jz      ?_238                                   ; 4223 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 4225 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4228 _ 8B. 00
        sub     esp, 8                                  ; 422A _ 83. EC, 08
        push    eax                                     ; 422D _ 50
        push    0                                       ; 422E _ 6A, 00
        call    farjmp                                  ; 4230 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4235 _ 83. C4, 10
        nop                                             ; 4238 _ 90
?_238:  nop                                             ; 4239 _ 90
        leave                                           ; 423A _ C9
        ret                                             ; 423B _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 423C _ 55
        mov     ebp, esp                                ; 423D _ 89. E5
        sub     esp, 24                                 ; 423F _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4242 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 4249 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 424D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4250 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4253 _ 83. F8, 02
        jnz     ?_239                                   ; 4256 _ 75, 4C
        call    task_now                                ; 4258 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 425D _ 89. 45, F4
        sub     esp, 12                                 ; 4260 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4263 _ FF. 75, 08
        call    task_remove                             ; 4266 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 426B _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 426E _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 4272 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 4275 _ 3B. 45, F4
        jnz     ?_239                                   ; 4278 _ 75, 2A
        call    task_switchsub                          ; 427A _ E8, FFFFFFFC(rel)
        call    task_now                                ; 427F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 4284 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 4287 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 428B _ 83. 7D, F4, 00
        jz      ?_239                                   ; 428F _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 4291 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4294 _ 8B. 00
        sub     esp, 8                                  ; 4296 _ 83. EC, 08
        push    eax                                     ; 4299 _ 50
        push    0                                       ; 429A _ 6A, 00
        call    farjmp                                  ; 429C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 42A1 _ 83. C4, 10
?_239:  movsx   eax, byte [ebp-0DH]                     ; 42A4 _ 0F BE. 45, F3
        leave                                           ; 42A8 _ C9
        ret                                             ; 42A9 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 42AA _ 55
        mov     ebp, esp                                ; 42AB _ 89. E5
        sub     esp, 16                                 ; 42AD _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 42B0 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 42B6 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 42BB _ 8B. 00
        imul    eax, eax, 28                            ; 42BD _ 6B. C0, 1C
        add     eax, edx                                ; 42C0 _ 01. D0
        add     eax, 8                                  ; 42C2 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 42C5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 42C8 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 42CB _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 42CE _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 42D1 _ 8B. 44 90, 08
        leave                                           ; 42D5 _ C9
        ret                                             ; 42D6 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 42D7 _ 55
        mov     ebp, esp                                ; 42D8 _ 89. E5
        sub     esp, 16                                 ; 42DA _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 42DD _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 42E3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 42E6 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 42E9 _ 6B. C0, 1C
        add     eax, edx                                ; 42EC _ 01. D0
        add     eax, 8                                  ; 42EE _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 42F1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 42F4 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 42F7 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 42F9 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 42FC _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 42FF _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4303 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4306 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4308 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 430B _ 8B. 45, FC
        mov     dword [eax], edx                        ; 430E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4310 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4313 _ C7. 40, 04, 00000002
        nop                                             ; 431A _ 90
        leave                                           ; 431B _ C9
        ret                                             ; 431C _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 431D _ 55
        mov     ebp, esp                                ; 431E _ 89. E5
        sub     esp, 16                                 ; 4320 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 4323 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 4329 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 432C _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 432F _ 6B. C0, 1C
        add     eax, edx                                ; 4332 _ 01. D0
        add     eax, 8                                  ; 4334 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4337 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 433A _ C7. 45, F8, 00000000
        jmp     ?_242                                   ; 4341 _ EB, 23

?_240:  mov     eax, dword [ebp-4H]                     ; 4343 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4346 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 4349 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 434D _ 39. 45, 08
        jnz     ?_241                                   ; 4350 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 4352 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4355 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 4358 _ C7. 44 90, 08, 00000000
        jmp     ?_243                                   ; 4360 _ EB, 0E

?_241:  add     dword [ebp-8H], 1                       ; 4362 _ 83. 45, F8, 01
?_242:  mov     eax, dword [ebp-4H]                     ; 4366 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4369 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 436B _ 39. 45, F8
        jl      ?_240                                   ; 436E _ 7C, D3
?_243:  mov     eax, dword [ebp-4H]                     ; 4370 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4373 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4375 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 4378 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 437B _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 437D _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 4380 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 4383 _ 39. 45, F8
        jge     ?_244                                   ; 4386 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 4388 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 438B _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 438E _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 4391 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 4394 _ 89. 50, 04
?_244:  mov     eax, dword [ebp-4H]                     ; 4397 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 439A _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 439D _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 43A0 _ 8B. 00
        cmp     edx, eax                                ; 43A2 _ 39. C2
        jl      ?_245                                   ; 43A4 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 43A6 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 43A9 _ C7. 40, 04, 00000000
?_245:  mov     eax, dword [ebp+8H]                     ; 43B0 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 43B3 _ C7. 40, 04, 00000001
        jmp     ?_247                                   ; 43BA _ EB, 1B

?_246:  mov     eax, dword [ebp-8H]                     ; 43BC _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 43BF _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 43C2 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 43C5 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 43C9 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 43CC _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 43CF _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 43D3 _ 83. 45, F8, 01
?_247:  mov     eax, dword [ebp-4H]                     ; 43D7 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 43DA _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 43DC _ 39. 45, F8
        jl      ?_246                                   ; 43DF _ 7C, DB
        nop                                             ; 43E1 _ 90
        leave                                           ; 43E2 _ C9
        ret                                             ; 43E3 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 43E4 _ 55
        mov     ebp, esp                                ; 43E5 _ 89. E5
        sub     esp, 16                                 ; 43E7 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 43EA _ C7. 45, FC, 00000000
        jmp     ?_249                                   ; 43F1 _ EB, 1B

?_248:  mov     edx, dword [taskctl]                    ; 43F3 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 43F9 _ 8B. 45, FC
        imul    eax, eax, 28                            ; 43FC _ 6B. C0, 1C
        add     eax, edx                                ; 43FF _ 01. D0
        add     eax, 8                                  ; 4401 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4404 _ 8B. 00
        test    eax, eax                                ; 4406 _ 85. C0
        jg      ?_250                                   ; 4408 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 440A _ 83. 45, FC, 01
?_249:  cmp     dword [ebp-4H], 2                       ; 440E _ 83. 7D, FC, 02
        jle     ?_248                                   ; 4412 _ 7E, DF
        jmp     ?_251                                   ; 4414 _ EB, 01

?_250:  nop                                             ; 4416 _ 90
?_251:  mov     eax, dword [taskctl]                    ; 4417 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 441C _ 8B. 55, FC
        mov     dword [eax], edx                        ; 441F _ 89. 10
        mov     eax, dword [taskctl]                    ; 4421 _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 4426 _ C7. 40, 04, 00000000
        nop                                             ; 442D _ 90
        leave                                           ; 442E _ C9
        ret                                             ; 442F _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 4430 _ 55
        mov     ebp, esp                                ; 4431 _ 89. E5
        mov     eax, dword [taskctl]                    ; 4433 _ A1, 000021E8(d)
        pop     ebp                                     ; 4438 _ 5D
        ret                                             ; 4439 _ C3
; getTaskctl End of function

send_message:; Function begin
        push    ebp                                     ; 443A _ 55
        mov     ebp, esp                                ; 443B _ 89. E5
        sub     esp, 8                                  ; 443D _ 83. EC, 08
        mov     eax, dword [ebp+10H]                    ; 4440 _ 8B. 45, 10
        movzx   eax, al                                 ; 4443 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4446 _ 8B. 55, 0C
        add     edx, 16                                 ; 4449 _ 83. C2, 10
        sub     esp, 8                                  ; 444C _ 83. EC, 08
        push    eax                                     ; 444F _ 50
        push    edx                                     ; 4450 _ 52
        call    fifo8_put                               ; 4451 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4456 _ 83. C4, 10
        sub     esp, 12                                 ; 4459 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 445C _ FF. 75, 08
        call    task_sleep                              ; 445F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4464 _ 83. C4, 10
        nop                                             ; 4467 _ 90
        leave                                           ; 4468 _ C9
        ret                                             ; 4469 _ C3
; send_message End of function



?_252:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_253:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_254:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_255:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_256:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_257:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_258:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_259:                                                  ; byte
        db 46H, 72H, 65H, 65H, 20H, 4DH, 65H, 6DH       ; 003B _ Free Mem
        db 3AH, 20H, 00H                                ; 0043 _ : .

?_260:                                                  ; byte
        db 4BH, 42H, 00H, 00H, 00H, 00H                 ; 0046 _ KB....

?_261:                                                  ; byte
        db 44H, 65H, 73H, 69H, 67H, 6EH, 65H, 64H       ; 004C _ Designed
        db 20H, 42H, 79H, 20H, 42H, 4DH, 59H, 2EH       ; 0054 _  By BMY.
        db 20H, 43H, 6FH, 70H, 79H, 72H, 69H, 67H       ; 005C _  Copyrig
        db 68H, 74H, 20H, 40H, 32H, 30H, 32H, 31H       ; 0064 _ ht @2021
        db 20H, 43H, 68H, 65H, 72H, 72H, 79H, 00H       ; 006C _  Cherry.

?_262:                                                  ; byte
        db 55H, 6EH, 64H, 65H, 66H, 69H, 6EH, 65H       ; 0074 _ Undefine
        db 64H, 20H, 4FH, 72H, 64H, 65H, 72H, 2EH       ; 007C _ d Order.
        db 2EH, 2EH, 00H                                ; 0084 _ ...

?_263:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0087 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 008F _ sk B.

?_264:                                                  ; byte
        db 42H, 00H                                     ; 0094 _ B.

?_265:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0096 _ Page is:
        db 20H, 00H                                     ; 009E _  .

?_266:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00A0 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 00A8 _ Low: .

?_267:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00AE _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 00B6 _ High: .

?_268:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 00BD _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 00C5 _ w: .

?_269:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 00C9 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 00D1 _ gh: .

?_270:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 00D6 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_271:  db 00H                                          ; 0002 _ .

?_272:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

table_rgb.2444:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2499:                                            ; byte
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

closebtn.2674:                                          ; byte
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

?_273:  resw    1                                       ; 000C

?_274:  resw    1                                       ; 000E

keyInfo:                                                ; byte
        resb    24                                      ; 0010

?_275:  resd    1                                       ; 0028

mouseInfo:                                              ; byte
        resb    52                                      ; 002C

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_276:  resd    1                                       ; 010C

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

str.2542:                                               ; byte
        resb    1                                       ; 0278

?_277:  resb    9                                       ; 0279

?_278:  resb    2                                       ; 0282

str.2555: resq  1                                       ; 0284

line.2597:                                              ; dword
        resd    1                                       ; 028C

pos.2596: resd  4                                       ; 0290

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_279:                                                  ; byte
        resb    4                                       ; 02A4

?_280:                                                  ; byte
        resb    4                                       ; 02A8

?_281:                                                  ; byte
        resb    4                                       ; 02AC

?_282:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


