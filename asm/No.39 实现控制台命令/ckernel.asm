; Disassembly of file: ckernel.o
; Mon May 24 19:21:39 2021
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
        movzx   eax, word [?_270]                       ; 002B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0032 _ 98
        mov     dword [ebp-54H], eax                    ; 0033 _ 89. 45, AC
        movzx   eax, word [?_271]                       ; 0036 _ 0F B7. 05, 0000000E(d)
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
        push    ?_249                                   ; 02ED _ 68, 00000000(d)
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
        mov     dword [?_272], eax                      ; 0366 _ A3, 00000028(d)
        mov     byte [ebp-6DH], 0                       ; 036B _ C6. 45, 93, 00
        mov     dword [ebp-6CH], 7                      ; 036F _ C7. 45, 94, 00000007
        mov     dword [ebp-68H], 0                      ; 0376 _ C7. 45, 98, 00000000
        mov     edx, dword [sheet_win]                  ; 037D _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0383 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0388 _ 83. EC, 08
        push    ?_250                                   ; 038B _ 68, 00000008(d)
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
        push    ?_249                                   ; 0463 _ 68, 00000000(d)
        push    edx                                     ; 0468 _ 52
        push    eax                                     ; 0469 _ 50
        call    make_wtitle8                            ; 046A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0472 _ A1, 00000244(d)
        push    1                                       ; 0477 _ 6A, 01
        push    ?_251                                   ; 0479 _ 68, 0000001E(d)
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
        push    ?_249                                   ; 04CF _ 68, 00000000(d)
        push    edx                                     ; 04D4 _ 52
        push    eax                                     ; 04D5 _ 50
        call    make_wtitle8                            ; 04D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DB _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04DE _ A1, 00000244(d)
        push    0                                       ; 04E3 _ 6A, 00
        push    ?_251                                   ; 04E5 _ 68, 0000001E(d)
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
        push    ?_252                                   ; 0578 _ 68, 00000027(d)
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
        push    ?_253                                   ; 07A6 _ 68, 00000030(d)
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
        push    ?_254                                   ; 080E _ 68, 00000032(d)
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
        push    ?_251                                   ; 0B87 _ 68, 0000001E(d)
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
        push    ?_255                                   ; 0D58 _ 68, 00000039(d)
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
        sub     esp, 24                                 ; 10EA _ 83. EC, 18
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
        jne     ?_042                                   ; 1124 _ 0F 85, 00000113
        mov     eax, dword [ebp+0CH]                    ; 112A _ 8B. 45, 0C
        add     eax, 1                                  ; 112D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1130 _ 0F B6. 00
        cmp     al, 101                                 ; 1133 _ 3C, 65
        jne     ?_042                                   ; 1135 _ 0F 85, 00000102
        mov     eax, dword [ebp+0CH]                    ; 113B _ 8B. 45, 0C
        add     eax, 2                                  ; 113E _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1141 _ 0F B6. 00
        cmp     al, 109                                 ; 1144 _ 3C, 6D
        jne     ?_042                                   ; 1146 _ 0F 85, 000000F1
        mov     eax, dword [ebp+0CH]                    ; 114C _ 8B. 45, 0C
        add     eax, 3                                  ; 114F _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1152 _ 0F B6. 00
        test    al, al                                  ; 1155 _ 84. C0
        jne     ?_042                                   ; 1157 _ 0F 85, 000000E0
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
        push    ?_256                                   ; 11B2 _ 68, 0000003B(d)
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
        push    ?_257                                   ; 1205 _ 68, 00000046(d)
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
        nop                                             ; 1237 _ 90
        jmp     ?_046                                   ; 1238 _ E9, 000000F9

?_042:  mov     eax, dword [ebp+0CH]                    ; 123D _ 8B. 45, 0C
        add     eax, 1                                  ; 1240 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1243 _ 0F B6. 00
        cmp     al, 117                                 ; 1246 _ 3C, 75
        jnz     ?_043                                   ; 1248 _ 75, 48
        mov     eax, dword [ebp+0CH]                    ; 124A _ 8B. 45, 0C
        add     eax, 2                                  ; 124D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1250 _ 0F B6. 00
        cmp     al, 116                                 ; 1253 _ 3C, 74
        jnz     ?_043                                   ; 1255 _ 75, 3B
        mov     eax, dword [ebp+0CH]                    ; 1257 _ 8B. 45, 0C
        add     eax, 3                                  ; 125A _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 125D _ 0F B6. 00
        cmp     al, 104                                 ; 1260 _ 3C, 68
        jnz     ?_043                                   ; 1262 _ 75, 2E
        mov     eax, dword [ebp+0CH]                    ; 1264 _ 8B. 45, 0C
        add     eax, 4                                  ; 1267 _ 83. C0, 04
        movzx   eax, byte [eax]                         ; 126A _ 0F B6. 00
        cmp     al, 111                                 ; 126D _ 3C, 6F
        jnz     ?_043                                   ; 126F _ 75, 21
        mov     eax, dword [ebp+0CH]                    ; 1271 _ 8B. 45, 0C
        add     eax, 5                                  ; 1274 _ 83. C0, 05
        movzx   eax, byte [eax]                         ; 1277 _ 0F B6. 00
        cmp     al, 114                                 ; 127A _ 3C, 72
        jnz     ?_043                                   ; 127C _ 75, 14
        mov     eax, dword [ebp+0CH]                    ; 127E _ 8B. 45, 0C
        add     eax, 6                                  ; 1281 _ 83. C0, 06
        movzx   eax, byte [eax]                         ; 1284 _ 0F B6. 00
        test    al, al                                  ; 1287 _ 84. C0
        jnz     ?_043                                   ; 1289 _ 75, 07
        mov     eax, 1                                  ; 128B _ B8, 00000001
        jmp     ?_044                                   ; 1290 _ EB, 05

?_043:  mov     eax, 0                                  ; 1292 _ B8, 00000000
?_044:  mov     edx, eax                                ; 1297 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 1299 _ 8B. 45, 0C
        mov     byte [eax], dl                          ; 129C _ 88. 10
        mov     eax, dword [ebp+0CH]                    ; 129E _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 12A1 _ 0F B6. 00
        test    al, al                                  ; 12A4 _ 84. C0
        jz      ?_045                                   ; 12A6 _ 74, 45
        mov     eax, dword [ebp+10H]                    ; 12A8 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12AB _ 8B. 00
        lea     edx, [eax+1AH]                          ; 12AD _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 12B0 _ A1, 00000244(d)
        sub     esp, 8                                  ; 12B5 _ 83. EC, 08
        push    ?_258                                   ; 12B8 _ 68, 0000004C(d)
        push    7                                       ; 12BD _ 6A, 07
        push    edx                                     ; 12BF _ 52
        push    10                                      ; 12C0 _ 6A, 0A
        push    dword [ebp+8H]                          ; 12C2 _ FF. 75, 08
        push    eax                                     ; 12C5 _ 50
        call    showString                              ; 12C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12CB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12CE _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12D1 _ 8B. 00
        sub     esp, 4                                  ; 12D3 _ 83. EC, 04
        push    0                                       ; 12D6 _ 6A, 00
        push    dword [ebp+8H]                          ; 12D8 _ FF. 75, 08
        push    eax                                     ; 12DB _ 50
        call    cons_newline                            ; 12DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12E1 _ 83. C4, 10
        mov     edx, eax                                ; 12E4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 12E6 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 12E9 _ 89. 10
        jmp     ?_046                                   ; 12EB _ EB, 49

?_045:  cmp     dword [ebp-18H], 0                      ; 12ED _ 83. 7D, E8, 00
        jz      ?_046                                   ; 12F1 _ 74, 43
        mov     eax, dword [ebp+10H]                    ; 12F3 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12F6 _ 8B. 00
        lea     edx, [eax+1AH]                          ; 12F8 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 12FB _ A1, 00000244(d)
        sub     esp, 8                                  ; 1300 _ 83. EC, 08
        push    ?_259                                   ; 1303 _ 68, 00000074(d)
        push    7                                       ; 1308 _ 6A, 07
        push    edx                                     ; 130A _ 52
        push    10                                      ; 130B _ 6A, 0A
        push    dword [ebp+8H]                          ; 130D _ FF. 75, 08
        push    eax                                     ; 1310 _ 50
        call    showString                              ; 1311 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1316 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1319 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 131C _ 8B. 00
        sub     esp, 4                                  ; 131E _ 83. EC, 04
        push    0                                       ; 1321 _ 6A, 00
        push    dword [ebp+8H]                          ; 1323 _ FF. 75, 08
        push    eax                                     ; 1326 _ 50
        call    cons_newline                            ; 1327 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 132C _ 83. C4, 10
        mov     edx, eax                                ; 132F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1331 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 1334 _ 89. 10
?_046:  nop                                             ; 1336 _ 90
        leave                                           ; 1337 _ C9
        ret                                             ; 1338 _ C3
; command End of function

task_b_main:; Function begin
        push    ebp                                     ; 1339 _ 55
        mov     ebp, esp                                ; 133A _ 89. E5
        sub     esp, 88                                 ; 133C _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 133F _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 1342 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 1345 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 134B _ 89. 45, F4
        xor     eax, eax                                ; 134E _ 31. C0
        mov     edx, dword [sheet_back]                 ; 1350 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1356 _ A1, 00000244(d)
        sub     esp, 8                                  ; 135B _ 83. EC, 08
        push    ?_260                                   ; 135E _ 68, 00000087(d)
        push    7                                       ; 1363 _ 6A, 07
        push    144                                     ; 1365 _ 68, 00000090
        push    0                                       ; 136A _ 6A, 00
        push    edx                                     ; 136C _ 52
        push    eax                                     ; 136D _ 50
        call    showString                              ; 136E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1373 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 1376 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 137D _ C7. 45, C8, 00000000
        push    0                                       ; 1384 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 1386 _ 8D. 45, EC
        push    eax                                     ; 1389 _ 50
        push    8                                       ; 138A _ 6A, 08
        lea     eax, [ebp-30H]                          ; 138C _ 8D. 45, D0
        push    eax                                     ; 138F _ 50
        call    fifo8_init                              ; 1390 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1395 _ 83. C4, 10
        call    timer_alloc                             ; 1398 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 139D _ 89. 45, C4
        sub     esp, 4                                  ; 13A0 _ 83. EC, 04
        push    123                                     ; 13A3 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 13A5 _ 8D. 45, D0
        push    eax                                     ; 13A8 _ 50
        push    dword [ebp-3CH]                         ; 13A9 _ FF. 75, C4
        call    timer_init                              ; 13AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13B1 _ 83. C4, 10
        sub     esp, 8                                  ; 13B4 _ 83. EC, 08
        push    100                                     ; 13B7 _ 6A, 64
        push    dword [ebp-3CH]                         ; 13B9 _ FF. 75, C4
        call    timer_setTime                           ; 13BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13C1 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 13C4 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 13CB _ C7. 45, C0, 00000000
?_047:  add     dword [ebp-40H], 1                      ; 13D2 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 13D6 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 13D9 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 13DC _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 13DF _ 8B. 00
        sub     esp, 4                                  ; 13E1 _ 83. EC, 04
        push    38                                      ; 13E4 _ 6A, 26
        push    100                                     ; 13E6 _ 6A, 64
        push    23                                      ; 13E8 _ 6A, 17
        push    8                                       ; 13EA _ 6A, 08
        push    8                                       ; 13EC _ 6A, 08
        push    edx                                     ; 13EE _ 52
        push    eax                                     ; 13EF _ 50
        call    boxfill8                                ; 13F0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13F5 _ 83. C4, 20
        sub     esp, 12                                 ; 13F8 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 13FB _ FF. 75, C0
        call    intToHexStr                             ; 13FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1403 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 1406 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 1409 _ A1, 00000244(d)
        sub     esp, 8                                  ; 140E _ 83. EC, 08
        push    dword [ebp-34H]                         ; 1411 _ FF. 75, CC
        push    10                                      ; 1414 _ 6A, 0A
        push    23                                      ; 1416 _ 6A, 17
        push    8                                       ; 1418 _ 6A, 08
        push    dword [ebp-4CH]                         ; 141A _ FF. 75, B4
        push    eax                                     ; 141D _ 50
        call    showString                              ; 141E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1423 _ 83. C4, 20
        call    io_cli                                  ; 1426 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 142B _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 142E _ 8D. 45, D0
        push    eax                                     ; 1431 _ 50
        call    fifo8_status                            ; 1432 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1437 _ 83. C4, 10
        test    eax, eax                                ; 143A _ 85. C0
        jnz     ?_048                                   ; 143C _ 75, 07
        call    io_sti                                  ; 143E _ E8, FFFFFFFC(rel)
        jmp     ?_047                                   ; 1443 _ EB, 8D

?_048:  sub     esp, 12                                 ; 1445 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1448 _ 8D. 45, D0
        push    eax                                     ; 144B _ 50
        call    fifo8_get                               ; 144C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1451 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 1454 _ 89. 45, C8
        call    io_sti                                  ; 1457 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 145C _ 83. 7D, C8, 7B
        jne     ?_047                                   ; 1460 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 1466 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 146C _ A1, 00000244(d)
        sub     esp, 8                                  ; 1471 _ 83. EC, 08
        push    ?_261                                   ; 1474 _ 68, 00000094(d)
        push    7                                       ; 1479 _ 6A, 07
        push    176                                     ; 147B _ 68, 000000B0
        push    dword [ebp-44H]                         ; 1480 _ FF. 75, BC
        push    edx                                     ; 1483 _ 52
        push    eax                                     ; 1484 _ 50
        call    showString                              ; 1485 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 148A _ 83. C4, 20
        sub     esp, 8                                  ; 148D _ 83. EC, 08
        push    100                                     ; 1490 _ 6A, 64
        push    dword [ebp-3CH]                         ; 1492 _ FF. 75, C4
        call    timer_setTime                           ; 1495 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 149A _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 149D _ 83. 45, BC, 08
        jmp     ?_047                                   ; 14A1 _ E9, FFFFFF2C
; task_b_main End of function

cons_newline:; Function begin
        push    ebp                                     ; 14A6 _ 55
        mov     ebp, esp                                ; 14A7 _ 89. E5
        push    ebx                                     ; 14A9 _ 53
        sub     esp, 20                                 ; 14AA _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 14AD _ 8B. 45, 08
        lea     edx, [eax+17H]                          ; 14B0 _ 8D. 50, 17
        mov     eax, dword [ebp+0CH]                    ; 14B3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 14B6 _ 8B. 40, 08
        sub     eax, 36                                 ; 14B9 _ 83. E8, 24
        cmp     edx, eax                                ; 14BC _ 39. C2
        jge     ?_049                                   ; 14BE _ 7D, 09
        add     dword [ebp+8H], 16                      ; 14C0 _ 83. 45, 08, 10
        jmp     ?_058                                   ; 14C4 _ E9, 000000E8

?_049:  mov     dword [ebp-0CH], 26                     ; 14C9 _ C7. 45, F4, 0000001A
        jmp     ?_053                                   ; 14D0 _ EB, 58

?_050:  mov     dword [ebp-10H], 8                      ; 14D2 _ C7. 45, F0, 00000008
        jmp     ?_052                                   ; 14D9 _ EB, 3D

?_051:  mov     eax, dword [ebp+0CH]                    ; 14DB _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 14DE _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 14E0 _ 8B. 45, F4
        lea     ecx, [eax+10H]                          ; 14E3 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 14E6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 14E9 _ 8B. 40, 04
        imul    ecx, eax                                ; 14EC _ 0F AF. C8
        mov     eax, dword [ebp-10H]                    ; 14EF _ 8B. 45, F0
        add     eax, ecx                                ; 14F2 _ 01. C8
        lea     ecx, [edx+eax]                          ; 14F4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 14F7 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 14FA _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 14FC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 14FF _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 1502 _ 0F AF. 45, F4
        mov     ebx, eax                                ; 1506 _ 89. C3
        mov     eax, dword [ebp-10H]                    ; 1508 _ 8B. 45, F0
        add     eax, ebx                                ; 150B _ 01. D8
        add     edx, eax                                ; 150D _ 01. C2
        movzx   eax, byte [ecx]                         ; 150F _ 0F B6. 01
        mov     byte [edx], al                          ; 1512 _ 88. 02
        add     dword [ebp-10H], 1                      ; 1514 _ 83. 45, F0, 01
?_052:  mov     eax, dword [ebp+0CH]                    ; 1518 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 151B _ 8B. 40, 04
        sub     eax, 8                                  ; 151E _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 1521 _ 39. 45, F0
        jl      ?_051                                   ; 1524 _ 7C, B5
        add     dword [ebp-0CH], 1                      ; 1526 _ 83. 45, F4, 01
?_053:  mov     eax, dword [ebp+0CH]                    ; 152A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 152D _ 8B. 40, 08
        sub     eax, 20                                 ; 1530 _ 83. E8, 14
        cmp     dword [ebp-0CH], eax                    ; 1533 _ 39. 45, F4
        jl      ?_050                                   ; 1536 _ 7C, 9A
        mov     eax, dword [ebp+8H]                     ; 1538 _ 8B. 45, 08
        add     eax, 26                                 ; 153B _ 83. C0, 1A
        mov     dword [ebp-0CH], eax                    ; 153E _ 89. 45, F4
        jmp     ?_057                                   ; 1541 _ EB, 3A

?_054:  mov     dword [ebp-10H], 8                      ; 1543 _ C7. 45, F0, 00000008
        jmp     ?_056                                   ; 154A _ EB, 1F

?_055:  mov     eax, dword [ebp+0CH]                    ; 154C _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 154F _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1551 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1554 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 1557 _ 0F AF. 45, F4
        mov     ecx, eax                                ; 155B _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 155D _ 8B. 45, F0
        add     eax, ecx                                ; 1560 _ 01. C8
        add     eax, edx                                ; 1562 _ 01. D0
        mov     byte [eax], 0                           ; 1564 _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 1567 _ 83. 45, F0, 01
?_056:  mov     eax, dword [ebp+0CH]                    ; 156B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 156E _ 8B. 40, 04
        sub     eax, 8                                  ; 1571 _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 1574 _ 39. 45, F0
        jl      ?_055                                   ; 1577 _ 7C, D3
        add     dword [ebp-0CH], 1                      ; 1579 _ 83. 45, F4, 01
?_057:  mov     eax, dword [ebp+8H]                     ; 157D _ 8B. 45, 08
        add     eax, 42                                 ; 1580 _ 83. C0, 2A
        cmp     dword [ebp-0CH], eax                    ; 1583 _ 39. 45, F4
        jl      ?_054                                   ; 1586 _ 7C, BB
        mov     eax, dword [ebp+0CH]                    ; 1588 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 158B _ 8B. 50, 08
        mov     eax, dword [ebp+0CH]                    ; 158E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1591 _ 8B. 40, 04
        lea     ecx, [eax-8H]                           ; 1594 _ 8D. 48, F8
        mov     eax, dword [shtctl]                     ; 1597 _ A1, 00000244(d)
        sub     esp, 8                                  ; 159C _ 83. EC, 08
        push    edx                                     ; 159F _ 52
        push    ecx                                     ; 15A0 _ 51
        push    28                                      ; 15A1 _ 6A, 1C
        push    8                                       ; 15A3 _ 6A, 08
        push    dword [ebp+0CH]                         ; 15A5 _ FF. 75, 0C
        push    eax                                     ; 15A8 _ 50
        call    sheet_refresh                           ; 15A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15AE _ 83. C4, 20
?_058:  cmp     dword [ebp+10H], 0                      ; 15B1 _ 83. 7D, 10, 00
        jnz     ?_059                                   ; 15B5 _ 75, 24
        mov     eax, dword [ebp+8H]                     ; 15B7 _ 8B. 45, 08
        lea     edx, [eax+1AH]                          ; 15BA _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 15BD _ A1, 00000244(d)
        sub     esp, 8                                  ; 15C2 _ 83. EC, 08
        push    ?_255                                   ; 15C5 _ 68, 00000039(d)
        push    7                                       ; 15CA _ 6A, 07
        push    edx                                     ; 15CC _ 52
        push    8                                       ; 15CD _ 6A, 08
        push    dword [ebp+0CH]                         ; 15CF _ FF. 75, 0C
        push    eax                                     ; 15D2 _ 50
        call    showString                              ; 15D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15D8 _ 83. C4, 20
?_059:  mov     eax, dword [ebp+8H]                     ; 15DB _ 8B. 45, 08
        mov     ebx, dword [ebp-4H]                     ; 15DE _ 8B. 5D, FC
        leave                                           ; 15E1 _ C9
        ret                                             ; 15E2 _ C3
; cons_newline End of function

initBootInfo:; Function begin
        push    ebp                                     ; 15E3 _ 55
        mov     ebp, esp                                ; 15E4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 15E6 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 15E9 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 15EF _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 15F2 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 15F8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 15FB _ 66: C7. 40, 06, 01E0
        nop                                             ; 1601 _ 90
        pop     ebp                                     ; 1602 _ 5D
        ret                                             ; 1603 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 1604 _ 55
        mov     ebp, esp                                ; 1605 _ 89. E5
        push    ebx                                     ; 1607 _ 53
        sub     esp, 36                                 ; 1608 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 160B _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 160E _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1611 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1614 _ 89. 45, F4
        jmp     ?_061                                   ; 1617 _ EB, 3E

?_060:  mov     eax, dword [ebp+1CH]                    ; 1619 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 161C _ 0F B6. 00
        movzx   eax, al                                 ; 161F _ 0F B6. C0
        shl     eax, 4                                  ; 1622 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1625 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 162B _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 162F _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1632 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1635 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1638 _ 8B. 00
        sub     esp, 8                                  ; 163A _ 83. EC, 08
        push    ebx                                     ; 163D _ 53
        push    ecx                                     ; 163E _ 51
        push    dword [ebp+14H]                         ; 163F _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1642 _ FF. 75, 10
        push    edx                                     ; 1645 _ 52
        push    eax                                     ; 1646 _ 50
        call    showFont8                               ; 1647 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 164C _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 164F _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1653 _ 83. 45, 1C, 01
?_061:  mov     eax, dword [ebp+1CH]                    ; 1657 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 165A _ 0F B6. 00
        test    al, al                                  ; 165D _ 84. C0
        jnz     ?_060                                   ; 165F _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 1661 _ 8B. 45, 14
        add     eax, 16                                 ; 1664 _ 83. C0, 10
        sub     esp, 8                                  ; 1667 _ 83. EC, 08
        push    eax                                     ; 166A _ 50
        push    dword [ebp+10H]                         ; 166B _ FF. 75, 10
        push    dword [ebp+14H]                         ; 166E _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 1671 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 1674 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1677 _ FF. 75, 08
        call    sheet_refresh                           ; 167A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 167F _ 83. C4, 20
        nop                                             ; 1682 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1683 _ 8B. 5D, FC
        leave                                           ; 1686 _ C9
        ret                                             ; 1687 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 1688 _ 55
        mov     ebp, esp                                ; 1689 _ 89. E5
        push    ebx                                     ; 168B _ 53
        sub     esp, 4                                  ; 168C _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 168F _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 1692 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 1695 _ 8B. 45, 0C
        sub     eax, 1                                  ; 1698 _ 83. E8, 01
        sub     esp, 4                                  ; 169B _ 83. EC, 04
        push    edx                                     ; 169E _ 52
        push    eax                                     ; 169F _ 50
        push    0                                       ; 16A0 _ 6A, 00
        push    0                                       ; 16A2 _ 6A, 00
        push    14                                      ; 16A4 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 16A6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16A9 _ FF. 75, 08
        call    boxfill8                                ; 16AC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16B1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 16B4 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 16B7 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 16BA _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 16BD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 16C0 _ 8B. 45, 10
        sub     eax, 24                                 ; 16C3 _ 83. E8, 18
        sub     esp, 4                                  ; 16C6 _ 83. EC, 04
        push    ecx                                     ; 16C9 _ 51
        push    edx                                     ; 16CA _ 52
        push    eax                                     ; 16CB _ 50
        push    0                                       ; 16CC _ 6A, 00
        push    8                                       ; 16CE _ 6A, 08
        push    dword [ebp+0CH]                         ; 16D0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16D3 _ FF. 75, 08
        call    boxfill8                                ; 16D6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16DB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 16DE _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 16E1 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 16E4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 16E7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 16EA _ 8B. 45, 10
        sub     eax, 23                                 ; 16ED _ 83. E8, 17
        sub     esp, 4                                  ; 16F0 _ 83. EC, 04
        push    ecx                                     ; 16F3 _ 51
        push    edx                                     ; 16F4 _ 52
        push    eax                                     ; 16F5 _ 50
        push    0                                       ; 16F6 _ 6A, 00
        push    7                                       ; 16F8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 16FA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16FD _ FF. 75, 08
        call    boxfill8                                ; 1700 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1705 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1708 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 170B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 170E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1711 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1714 _ 8B. 45, 10
        sub     eax, 22                                 ; 1717 _ 83. E8, 16
        sub     esp, 4                                  ; 171A _ 83. EC, 04
        push    ecx                                     ; 171D _ 51
        push    edx                                     ; 171E _ 52
        push    eax                                     ; 171F _ 50
        push    0                                       ; 1720 _ 6A, 00
        push    8                                       ; 1722 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1724 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1727 _ FF. 75, 08
        call    boxfill8                                ; 172A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 172F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1732 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1735 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 1738 _ 8B. 45, 10
        sub     eax, 20                                 ; 173B _ 83. E8, 14
        sub     esp, 4                                  ; 173E _ 83. EC, 04
        push    edx                                     ; 1741 _ 52
        push    51                                      ; 1742 _ 6A, 33
        push    eax                                     ; 1744 _ 50
        push    10                                      ; 1745 _ 6A, 0A
        push    7                                       ; 1747 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1749 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 174C _ FF. 75, 08
        call    boxfill8                                ; 174F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1754 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1757 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 175A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 175D _ 8B. 45, 10
        sub     eax, 20                                 ; 1760 _ 83. E8, 14
        sub     esp, 4                                  ; 1763 _ 83. EC, 04
        push    edx                                     ; 1766 _ 52
        push    9                                       ; 1767 _ 6A, 09
        push    eax                                     ; 1769 _ 50
        push    9                                       ; 176A _ 6A, 09
        push    7                                       ; 176C _ 6A, 07
        push    dword [ebp+0CH]                         ; 176E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1771 _ FF. 75, 08
        call    boxfill8                                ; 1774 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1779 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 177C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 177F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1782 _ 8B. 45, 10
        sub     eax, 4                                  ; 1785 _ 83. E8, 04
        sub     esp, 4                                  ; 1788 _ 83. EC, 04
        push    edx                                     ; 178B _ 52
        push    50                                      ; 178C _ 6A, 32
        push    eax                                     ; 178E _ 50
        push    10                                      ; 178F _ 6A, 0A
        push    15                                      ; 1791 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1793 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1796 _ FF. 75, 08
        call    boxfill8                                ; 1799 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 179E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17A1 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 17A4 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 17A7 _ 8B. 45, 10
        sub     eax, 19                                 ; 17AA _ 83. E8, 13
        sub     esp, 4                                  ; 17AD _ 83. EC, 04
        push    edx                                     ; 17B0 _ 52
        push    50                                      ; 17B1 _ 6A, 32
        push    eax                                     ; 17B3 _ 50
        push    50                                      ; 17B4 _ 6A, 32
        push    15                                      ; 17B6 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 17B8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17BB _ FF. 75, 08
        call    boxfill8                                ; 17BE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17C3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17C6 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 17C9 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 17CC _ 8B. 45, 10
        sub     eax, 3                                  ; 17CF _ 83. E8, 03
        sub     esp, 4                                  ; 17D2 _ 83. EC, 04
        push    edx                                     ; 17D5 _ 52
        push    50                                      ; 17D6 _ 6A, 32
        push    eax                                     ; 17D8 _ 50
        push    10                                      ; 17D9 _ 6A, 0A
        push    0                                       ; 17DB _ 6A, 00
        push    dword [ebp+0CH]                         ; 17DD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17E0 _ FF. 75, 08
        call    boxfill8                                ; 17E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17E8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17EB _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 17EE _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 17F1 _ 8B. 45, 10
        sub     eax, 20                                 ; 17F4 _ 83. E8, 14
        sub     esp, 4                                  ; 17F7 _ 83. EC, 04
        push    edx                                     ; 17FA _ 52
        push    51                                      ; 17FB _ 6A, 33
        push    eax                                     ; 17FD _ 50
        push    51                                      ; 17FE _ 6A, 33
        push    0                                       ; 1800 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1802 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1805 _ FF. 75, 08
        call    boxfill8                                ; 1808 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 180D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1810 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 1813 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 1816 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1819 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 181C _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 181F _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1822 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1825 _ 83. E8, 2F
        sub     esp, 4                                  ; 1828 _ 83. EC, 04
        push    ebx                                     ; 182B _ 53
        push    ecx                                     ; 182C _ 51
        push    edx                                     ; 182D _ 52
        push    eax                                     ; 182E _ 50
        push    15                                      ; 182F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1831 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1834 _ FF. 75, 08
        call    boxfill8                                ; 1837 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 183C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 183F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1842 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1845 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1848 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 184B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 184E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1851 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1854 _ 83. E8, 2F
        sub     esp, 4                                  ; 1857 _ 83. EC, 04
        push    ebx                                     ; 185A _ 53
        push    ecx                                     ; 185B _ 51
        push    edx                                     ; 185C _ 52
        push    eax                                     ; 185D _ 50
        push    15                                      ; 185E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1860 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1863 _ FF. 75, 08
        call    boxfill8                                ; 1866 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 186B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 186E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1871 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1874 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1877 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 187A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 187D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1880 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1883 _ 83. E8, 2F
        sub     esp, 4                                  ; 1886 _ 83. EC, 04
        push    ebx                                     ; 1889 _ 53
        push    ecx                                     ; 188A _ 51
        push    edx                                     ; 188B _ 52
        push    eax                                     ; 188C _ 50
        push    7                                       ; 188D _ 6A, 07
        push    dword [ebp+0CH]                         ; 188F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1892 _ FF. 75, 08
        call    boxfill8                                ; 1895 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 189A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 189D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 18A0 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 18A3 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 18A6 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 18A9 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 18AC _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 18AF _ 8B. 45, 0C
        sub     eax, 3                                  ; 18B2 _ 83. E8, 03
        sub     esp, 4                                  ; 18B5 _ 83. EC, 04
        push    ebx                                     ; 18B8 _ 53
        push    ecx                                     ; 18B9 _ 51
        push    edx                                     ; 18BA _ 52
        push    eax                                     ; 18BB _ 50
        push    7                                       ; 18BC _ 6A, 07
        push    dword [ebp+0CH]                         ; 18BE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18C1 _ FF. 75, 08
        call    boxfill8                                ; 18C4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18C9 _ 83. C4, 20
        nop                                             ; 18CC _ 90
        mov     ebx, dword [ebp-4H]                     ; 18CD _ 8B. 5D, FC
        leave                                           ; 18D0 _ C9
        ret                                             ; 18D1 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 18D2 _ 55
        mov     ebp, esp                                ; 18D3 _ 89. E5
        sub     esp, 24                                 ; 18D5 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 18D8 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 18DD _ 89. 45, EC
        movzx   eax, word [?_270]                       ; 18E0 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 18E7 _ 98
        mov     dword [ebp-10H], eax                    ; 18E8 _ 89. 45, F0
        movzx   eax, word [?_271]                       ; 18EB _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 18F2 _ 98
        mov     dword [ebp-0CH], eax                    ; 18F3 _ 89. 45, F4
        sub     esp, 4                                  ; 18F6 _ 83. EC, 04
        push    table_rgb.2436                          ; 18F9 _ 68, 00000120(d)
        push    15                                      ; 18FE _ 6A, 0F
        push    0                                       ; 1900 _ 6A, 00
        call    set_palette                             ; 1902 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1907 _ 83. C4, 10
        nop                                             ; 190A _ 90
        leave                                           ; 190B _ C9
        ret                                             ; 190C _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 190D _ 55
        mov     ebp, esp                                ; 190E _ 89. E5
        sub     esp, 24                                 ; 1910 _ 83. EC, 18
        call    io_load_eflags                          ; 1913 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1918 _ 89. 45, F4
        call    io_cli                                  ; 191B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1920 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1923 _ FF. 75, 08
        push    968                                     ; 1926 _ 68, 000003C8
        call    io_out8                                 ; 192B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1930 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1933 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1936 _ 89. 45, F0
        jmp     ?_063                                   ; 1939 _ EB, 65

?_062:  mov     eax, dword [ebp+10H]                    ; 193B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 193E _ 0F B6. 00
        shr     al, 2                                   ; 1941 _ C0. E8, 02
        movzx   eax, al                                 ; 1944 _ 0F B6. C0
        sub     esp, 8                                  ; 1947 _ 83. EC, 08
        push    eax                                     ; 194A _ 50
        push    969                                     ; 194B _ 68, 000003C9
        call    io_out8                                 ; 1950 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1955 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1958 _ 8B. 45, 10
        add     eax, 1                                  ; 195B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 195E _ 0F B6. 00
        shr     al, 2                                   ; 1961 _ C0. E8, 02
        movzx   eax, al                                 ; 1964 _ 0F B6. C0
        sub     esp, 8                                  ; 1967 _ 83. EC, 08
        push    eax                                     ; 196A _ 50
        push    969                                     ; 196B _ 68, 000003C9
        call    io_out8                                 ; 1970 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1975 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1978 _ 8B. 45, 10
        add     eax, 2                                  ; 197B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 197E _ 0F B6. 00
        shr     al, 2                                   ; 1981 _ C0. E8, 02
        movzx   eax, al                                 ; 1984 _ 0F B6. C0
        sub     esp, 8                                  ; 1987 _ 83. EC, 08
        push    eax                                     ; 198A _ 50
        push    969                                     ; 198B _ 68, 000003C9
        call    io_out8                                 ; 1990 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1995 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1998 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 199C _ 83. 45, F0, 01
?_063:  mov     eax, dword [ebp-10H]                    ; 19A0 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 19A3 _ 3B. 45, 0C
        jle     ?_062                                   ; 19A6 _ 7E, 93
        sub     esp, 12                                 ; 19A8 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 19AB _ FF. 75, F4
        call    io_store_eflags                         ; 19AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19B3 _ 83. C4, 10
        nop                                             ; 19B6 _ 90
        leave                                           ; 19B7 _ C9
        ret                                             ; 19B8 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 19B9 _ 55
        mov     ebp, esp                                ; 19BA _ 89. E5
        sub     esp, 20                                 ; 19BC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 19BF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 19C2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 19C5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 19C8 _ 89. 45, FC
        jmp     ?_067                                   ; 19CB _ EB, 33

?_064:  mov     eax, dword [ebp+14H]                    ; 19CD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 19D0 _ 89. 45, F8
        jmp     ?_066                                   ; 19D3 _ EB, 1F

?_065:  mov     eax, dword [ebp-4H]                     ; 19D5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 19D8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 19DC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19DE _ 8B. 45, F8
        add     eax, edx                                ; 19E1 _ 01. D0
        mov     edx, eax                                ; 19E3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 19E5 _ 8B. 45, 08
        add     edx, eax                                ; 19E8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 19EA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 19EE _ 88. 02
        add     dword [ebp-8H], 1                       ; 19F0 _ 83. 45, F8, 01
?_066:  mov     eax, dword [ebp-8H]                     ; 19F4 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 19F7 _ 3B. 45, 1C
        jle     ?_065                                   ; 19FA _ 7E, D9
        add     dword [ebp-4H], 1                       ; 19FC _ 83. 45, FC, 01
?_067:  mov     eax, dword [ebp-4H]                     ; 1A00 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1A03 _ 3B. 45, 20
        jle     ?_064                                   ; 1A06 _ 7E, C5
        nop                                             ; 1A08 _ 90
        leave                                           ; 1A09 _ C9
        ret                                             ; 1A0A _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1A0B _ 55
        mov     ebp, esp                                ; 1A0C _ 89. E5
        push    edi                                     ; 1A0E _ 57
        push    esi                                     ; 1A0F _ 56
        push    ebx                                     ; 1A10 _ 53
        sub     esp, 16                                 ; 1A11 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1A14 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1A17 _ 8B. 45, 14
        add     eax, edx                                ; 1A1A _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1A1C _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1A1F _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1A22 _ 8B. 45, 18
        add     eax, edx                                ; 1A25 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1A27 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1A2A _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1A2D _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1A30 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1A33 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1A36 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1A39 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1A3C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1A3F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1A42 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A45 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A48 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A4B _ 8B. 00
        push    edi                                     ; 1A4D _ 57
        push    esi                                     ; 1A4E _ 56
        push    ebx                                     ; 1A4F _ 53
        push    ecx                                     ; 1A50 _ 51
        push    15                                      ; 1A51 _ 6A, 0F
        push    edx                                     ; 1A53 _ 52
        push    eax                                     ; 1A54 _ 50
        call    boxfill8                                ; 1A55 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A5A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1A5D _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1A60 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1A63 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1A66 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1A69 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1A6C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1A6F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1A72 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1A75 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A78 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A7B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A7E _ 8B. 00
        push    edi                                     ; 1A80 _ 57
        push    esi                                     ; 1A81 _ 56
        push    ebx                                     ; 1A82 _ 53
        push    ecx                                     ; 1A83 _ 51
        push    15                                      ; 1A84 _ 6A, 0F
        push    edx                                     ; 1A86 _ 52
        push    eax                                     ; 1A87 _ 50
        call    boxfill8                                ; 1A88 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A8D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1A90 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1A93 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1A96 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1A99 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1A9C _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1A9F _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1AA2 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1AA5 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1AA8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1AAB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AAE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AB1 _ 8B. 00
        push    edi                                     ; 1AB3 _ 57
        push    esi                                     ; 1AB4 _ 56
        push    ebx                                     ; 1AB5 _ 53
        push    ecx                                     ; 1AB6 _ 51
        push    7                                       ; 1AB7 _ 6A, 07
        push    edx                                     ; 1AB9 _ 52
        push    eax                                     ; 1ABA _ 50
        call    boxfill8                                ; 1ABB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1AC0 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1AC3 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1AC6 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1AC9 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1ACC _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1ACF _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1AD2 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1AD5 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1AD8 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1ADB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1ADE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AE1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AE4 _ 8B. 00
        push    edi                                     ; 1AE6 _ 57
        push    esi                                     ; 1AE7 _ 56
        push    ebx                                     ; 1AE8 _ 53
        push    ecx                                     ; 1AE9 _ 51
        push    7                                       ; 1AEA _ 6A, 07
        push    edx                                     ; 1AEC _ 52
        push    eax                                     ; 1AED _ 50
        call    boxfill8                                ; 1AEE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1AF3 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1AF6 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1AF9 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1AFC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1AFF _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1B02 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1B05 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1B08 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1B0B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B0E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B11 _ 8B. 00
        push    esi                                     ; 1B13 _ 56
        push    dword [ebp-14H]                         ; 1B14 _ FF. 75, EC
        push    ebx                                     ; 1B17 _ 53
        push    ecx                                     ; 1B18 _ 51
        push    0                                       ; 1B19 _ 6A, 00
        push    edx                                     ; 1B1B _ 52
        push    eax                                     ; 1B1C _ 50
        call    boxfill8                                ; 1B1D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B22 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1B25 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1B28 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1B2B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1B2E _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1B31 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1B34 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1B37 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1B3A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B3D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B40 _ 8B. 00
        push    dword [ebp-10H]                         ; 1B42 _ FF. 75, F0
        push    esi                                     ; 1B45 _ 56
        push    ebx                                     ; 1B46 _ 53
        push    ecx                                     ; 1B47 _ 51
        push    0                                       ; 1B48 _ 6A, 00
        push    edx                                     ; 1B4A _ 52
        push    eax                                     ; 1B4B _ 50
        call    boxfill8                                ; 1B4C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B51 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1B54 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1B57 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1B5A _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1B5D _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1B60 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1B63 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1B66 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1B69 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B6C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B6F _ 8B. 00
        push    esi                                     ; 1B71 _ 56
        push    dword [ebp-14H]                         ; 1B72 _ FF. 75, EC
        push    ebx                                     ; 1B75 _ 53
        push    ecx                                     ; 1B76 _ 51
        push    8                                       ; 1B77 _ 6A, 08
        push    edx                                     ; 1B79 _ 52
        push    eax                                     ; 1B7A _ 50
        call    boxfill8                                ; 1B7B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B80 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1B83 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1B86 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1B89 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1B8C _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1B8F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1B92 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1B95 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1B98 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1B9B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1B9E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BA1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1BA4 _ 8B. 00
        push    edi                                     ; 1BA6 _ 57
        push    esi                                     ; 1BA7 _ 56
        push    ebx                                     ; 1BA8 _ 53
        push    ecx                                     ; 1BA9 _ 51
        push    8                                       ; 1BAA _ 6A, 08
        push    edx                                     ; 1BAC _ 52
        push    eax                                     ; 1BAD _ 50
        call    boxfill8                                ; 1BAE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1BB3 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1BB6 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1BB9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1BBC _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1BBF _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1BC2 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1BC5 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1BC8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1BCB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BCE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1BD1 _ 8B. 00
        push    dword [ebp-10H]                         ; 1BD3 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1BD6 _ FF. 75, EC
        push    esi                                     ; 1BD9 _ 56
        push    ebx                                     ; 1BDA _ 53
        push    ecx                                     ; 1BDB _ 51
        push    edx                                     ; 1BDC _ 52
        push    eax                                     ; 1BDD _ 50
        call    boxfill8                                ; 1BDE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1BE3 _ 83. C4, 1C
        nop                                             ; 1BE6 _ 90
        lea     esp, [ebp-0CH]                          ; 1BE7 _ 8D. 65, F4
        pop     ebx                                     ; 1BEA _ 5B
        pop     esi                                     ; 1BEB _ 5E
        pop     edi                                     ; 1BEC _ 5F
        pop     ebp                                     ; 1BED _ 5D
        ret                                             ; 1BEE _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1BEF _ 55
        mov     ebp, esp                                ; 1BF0 _ 89. E5
        sub     esp, 20                                 ; 1BF2 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1BF5 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1BF8 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1BFB _ C7. 45, FC, 00000000
        jmp     ?_077                                   ; 1C02 _ E9, 0000016C

?_068:  mov     edx, dword [ebp-4H]                     ; 1C07 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1C0A _ 8B. 45, 1C
        add     eax, edx                                ; 1C0D _ 01. D0
        movzx   eax, byte [eax]                         ; 1C0F _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1C12 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1C15 _ 80. 7D, FB, 00
        jns     ?_069                                   ; 1C19 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1C1B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1C1E _ 8B. 45, FC
        add     eax, edx                                ; 1C21 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1C23 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1C27 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C29 _ 8B. 45, 10
        add     eax, edx                                ; 1C2C _ 01. D0
        mov     edx, eax                                ; 1C2E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C30 _ 8B. 45, 08
        add     edx, eax                                ; 1C33 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1C35 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1C39 _ 88. 02
?_069:  movsx   eax, byte [ebp-5H]                      ; 1C3B _ 0F BE. 45, FB
        and     eax, 40H                                ; 1C3F _ 83. E0, 40
        test    eax, eax                                ; 1C42 _ 85. C0
        jz      ?_070                                   ; 1C44 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1C46 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1C49 _ 8B. 45, FC
        add     eax, edx                                ; 1C4C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1C4E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1C52 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C54 _ 8B. 45, 10
        add     eax, edx                                ; 1C57 _ 01. D0
        lea     edx, [eax+1H]                           ; 1C59 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C5C _ 8B. 45, 08
        add     edx, eax                                ; 1C5F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1C61 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1C65 _ 88. 02
?_070:  movsx   eax, byte [ebp-5H]                      ; 1C67 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1C6B _ 83. E0, 20
        test    eax, eax                                ; 1C6E _ 85. C0
        jz      ?_071                                   ; 1C70 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1C72 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1C75 _ 8B. 45, FC
        add     eax, edx                                ; 1C78 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1C7A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1C7E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C80 _ 8B. 45, 10
        add     eax, edx                                ; 1C83 _ 01. D0
        lea     edx, [eax+2H]                           ; 1C85 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1C88 _ 8B. 45, 08
        add     edx, eax                                ; 1C8B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1C8D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1C91 _ 88. 02
?_071:  movsx   eax, byte [ebp-5H]                      ; 1C93 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1C97 _ 83. E0, 10
        test    eax, eax                                ; 1C9A _ 85. C0
        jz      ?_072                                   ; 1C9C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1C9E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1CA1 _ 8B. 45, FC
        add     eax, edx                                ; 1CA4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1CA6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1CAA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1CAC _ 8B. 45, 10
        add     eax, edx                                ; 1CAF _ 01. D0
        lea     edx, [eax+3H]                           ; 1CB1 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1CB4 _ 8B. 45, 08
        add     edx, eax                                ; 1CB7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1CB9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1CBD _ 88. 02
?_072:  movsx   eax, byte [ebp-5H]                      ; 1CBF _ 0F BE. 45, FB
        and     eax, 08H                                ; 1CC3 _ 83. E0, 08
        test    eax, eax                                ; 1CC6 _ 85. C0
        jz      ?_073                                   ; 1CC8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1CCA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1CCD _ 8B. 45, FC
        add     eax, edx                                ; 1CD0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1CD2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1CD6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1CD8 _ 8B. 45, 10
        add     eax, edx                                ; 1CDB _ 01. D0
        lea     edx, [eax+4H]                           ; 1CDD _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CE0 _ 8B. 45, 08
        add     edx, eax                                ; 1CE3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1CE5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1CE9 _ 88. 02
?_073:  movsx   eax, byte [ebp-5H]                      ; 1CEB _ 0F BE. 45, FB
        and     eax, 04H                                ; 1CEF _ 83. E0, 04
        test    eax, eax                                ; 1CF2 _ 85. C0
        jz      ?_074                                   ; 1CF4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1CF6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1CF9 _ 8B. 45, FC
        add     eax, edx                                ; 1CFC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1CFE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1D02 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1D04 _ 8B. 45, 10
        add     eax, edx                                ; 1D07 _ 01. D0
        lea     edx, [eax+5H]                           ; 1D09 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1D0C _ 8B. 45, 08
        add     edx, eax                                ; 1D0F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D11 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1D15 _ 88. 02
?_074:  movsx   eax, byte [ebp-5H]                      ; 1D17 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1D1B _ 83. E0, 02
        test    eax, eax                                ; 1D1E _ 85. C0
        jz      ?_075                                   ; 1D20 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1D22 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1D25 _ 8B. 45, FC
        add     eax, edx                                ; 1D28 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1D2A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1D2E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1D30 _ 8B. 45, 10
        add     eax, edx                                ; 1D33 _ 01. D0
        lea     edx, [eax+6H]                           ; 1D35 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1D38 _ 8B. 45, 08
        add     edx, eax                                ; 1D3B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D3D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1D41 _ 88. 02
?_075:  movsx   eax, byte [ebp-5H]                      ; 1D43 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1D47 _ 83. E0, 01
        test    eax, eax                                ; 1D4A _ 85. C0
        jz      ?_076                                   ; 1D4C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1D4E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1D51 _ 8B. 45, FC
        add     eax, edx                                ; 1D54 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1D56 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1D5A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1D5C _ 8B. 45, 10
        add     eax, edx                                ; 1D5F _ 01. D0
        lea     edx, [eax+7H]                           ; 1D61 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1D64 _ 8B. 45, 08
        add     edx, eax                                ; 1D67 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D69 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1D6D _ 88. 02
?_076:  add     dword [ebp-4H], 1                       ; 1D6F _ 83. 45, FC, 01
?_077:  cmp     dword [ebp-4H], 15                      ; 1D73 _ 83. 7D, FC, 0F
        jle     ?_068                                   ; 1D77 _ 0F 8E, FFFFFE8A
        nop                                             ; 1D7D _ 90
        leave                                           ; 1D7E _ C9
        ret                                             ; 1D7F _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1D80 _ 55
        mov     ebp, esp                                ; 1D81 _ 89. E5
        sub     esp, 20                                 ; 1D83 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1D86 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1D89 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1D8C _ C7. 45, FC, 00000000
        jmp     ?_084                                   ; 1D93 _ E9, 000000B1

?_078:  mov     dword [ebp-8H], 0                       ; 1D98 _ C7. 45, F8, 00000000
        jmp     ?_083                                   ; 1D9F _ E9, 00000097

?_079:  mov     eax, dword [ebp-4H]                     ; 1DA4 _ 8B. 45, FC
        shl     eax, 4                                  ; 1DA7 _ C1. E0, 04
        mov     edx, eax                                ; 1DAA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1DAC _ 8B. 45, F8
        add     eax, edx                                ; 1DAF _ 01. D0
        add     eax, cursor.2491                        ; 1DB1 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1DB6 _ 0F B6. 00
        cmp     al, 42                                  ; 1DB9 _ 3C, 2A
        jnz     ?_080                                   ; 1DBB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1DBD _ 8B. 45, FC
        shl     eax, 4                                  ; 1DC0 _ C1. E0, 04
        mov     edx, eax                                ; 1DC3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1DC5 _ 8B. 45, F8
        add     eax, edx                                ; 1DC8 _ 01. D0
        mov     edx, eax                                ; 1DCA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1DCC _ 8B. 45, 08
        add     eax, edx                                ; 1DCF _ 01. D0
        mov     byte [eax], 0                           ; 1DD1 _ C6. 00, 00
?_080:  mov     eax, dword [ebp-4H]                     ; 1DD4 _ 8B. 45, FC
        shl     eax, 4                                  ; 1DD7 _ C1. E0, 04
        mov     edx, eax                                ; 1DDA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1DDC _ 8B. 45, F8
        add     eax, edx                                ; 1DDF _ 01. D0
        add     eax, cursor.2491                        ; 1DE1 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1DE6 _ 0F B6. 00
        cmp     al, 79                                  ; 1DE9 _ 3C, 4F
        jnz     ?_081                                   ; 1DEB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1DED _ 8B. 45, FC
        shl     eax, 4                                  ; 1DF0 _ C1. E0, 04
        mov     edx, eax                                ; 1DF3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1DF5 _ 8B. 45, F8
        add     eax, edx                                ; 1DF8 _ 01. D0
        mov     edx, eax                                ; 1DFA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1DFC _ 8B. 45, 08
        add     eax, edx                                ; 1DFF _ 01. D0
        mov     byte [eax], 7                           ; 1E01 _ C6. 00, 07
?_081:  mov     eax, dword [ebp-4H]                     ; 1E04 _ 8B. 45, FC
        shl     eax, 4                                  ; 1E07 _ C1. E0, 04
        mov     edx, eax                                ; 1E0A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1E0C _ 8B. 45, F8
        add     eax, edx                                ; 1E0F _ 01. D0
        add     eax, cursor.2491                        ; 1E11 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1E16 _ 0F B6. 00
        cmp     al, 46                                  ; 1E19 _ 3C, 2E
        jnz     ?_082                                   ; 1E1B _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1E1D _ 8B. 45, FC
        shl     eax, 4                                  ; 1E20 _ C1. E0, 04
        mov     edx, eax                                ; 1E23 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1E25 _ 8B. 45, F8
        add     eax, edx                                ; 1E28 _ 01. D0
        mov     edx, eax                                ; 1E2A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E2C _ 8B. 45, 08
        add     edx, eax                                ; 1E2F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1E31 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1E35 _ 88. 02
?_082:  add     dword [ebp-8H], 1                       ; 1E37 _ 83. 45, F8, 01
?_083:  cmp     dword [ebp-8H], 15                      ; 1E3B _ 83. 7D, F8, 0F
        jle     ?_079                                   ; 1E3F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1E45 _ 83. 45, FC, 01
?_084:  cmp     dword [ebp-4H], 15                      ; 1E49 _ 83. 7D, FC, 0F
        jle     ?_078                                   ; 1E4D _ 0F 8E, FFFFFF45
        nop                                             ; 1E53 _ 90
        leave                                           ; 1E54 _ C9
        ret                                             ; 1E55 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1E56 _ 55
        mov     ebp, esp                                ; 1E57 _ 89. E5
        push    ebx                                     ; 1E59 _ 53
        sub     esp, 16                                 ; 1E5A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1E5D _ C7. 45, F8, 00000000
        jmp     ?_088                                   ; 1E64 _ EB, 50

?_085:  mov     dword [ebp-0CH], 0                      ; 1E66 _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 1E6D _ EB, 3B

?_086:  mov     eax, dword [ebp-8H]                     ; 1E6F _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1E72 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1E76 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1E78 _ 8B. 45, F4
        add     eax, edx                                ; 1E7B _ 01. D0
        mov     edx, eax                                ; 1E7D _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1E7F _ 8B. 45, 20
        add     eax, edx                                ; 1E82 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1E84 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1E87 _ 8B. 55, F8
        add     edx, ecx                                ; 1E8A _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1E8C _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1E90 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1E93 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1E96 _ 01. D9
        add     edx, ecx                                ; 1E98 _ 01. CA
        mov     ecx, edx                                ; 1E9A _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1E9C _ 8B. 55, 08
        add     edx, ecx                                ; 1E9F _ 01. CA
        movzx   eax, byte [eax]                         ; 1EA1 _ 0F B6. 00
        mov     byte [edx], al                          ; 1EA4 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1EA6 _ 83. 45, F4, 01
?_087:  mov     eax, dword [ebp-0CH]                    ; 1EAA _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1EAD _ 3B. 45, 10
        jl      ?_086                                   ; 1EB0 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1EB2 _ 83. 45, F8, 01
?_088:  mov     eax, dword [ebp-8H]                     ; 1EB6 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1EB9 _ 3B. 45, 14
        jl      ?_085                                   ; 1EBC _ 7C, A8
        nop                                             ; 1EBE _ 90
        add     esp, 16                                 ; 1EBF _ 83. C4, 10
        pop     ebx                                     ; 1EC2 _ 5B
        pop     ebp                                     ; 1EC3 _ 5D
        ret                                             ; 1EC4 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1EC5 _ 55
        mov     ebp, esp                                ; 1EC6 _ 89. E5
        sub     esp, 24                                 ; 1EC8 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1ECB _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1ED0 _ 89. 45, EC
        movzx   eax, word [?_270]                       ; 1ED3 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1EDA _ 98
        mov     dword [ebp-10H], eax                    ; 1EDB _ 89. 45, F0
        movzx   eax, word [?_271]                       ; 1EDE _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1EE5 _ 98
        mov     dword [ebp-0CH], eax                    ; 1EE6 _ 89. 45, F4
        sub     esp, 8                                  ; 1EE9 _ 83. EC, 08
        push    32                                      ; 1EEC _ 6A, 20
        push    32                                      ; 1EEE _ 6A, 20
        call    io_out8                                 ; 1EF0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EF5 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1EF8 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1EFC _ 83. EC, 0C
        push    96                                      ; 1EFF _ 6A, 60
        call    io_in8                                  ; 1F01 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F06 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1F09 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1F0C _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1F10 _ 83. EC, 08
        push    eax                                     ; 1F13 _ 50
        push    keyInfo                                 ; 1F14 _ 68, 00000010(d)
        call    fifo8_put                               ; 1F19 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F1E _ 83. C4, 10
        nop                                             ; 1F21 _ 90
        leave                                           ; 1F22 _ C9
        ret                                             ; 1F23 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1F24 _ 55
        mov     ebp, esp                                ; 1F25 _ 89. E5
        sub     esp, 40                                 ; 1F27 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1F2A _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1F2D _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1F30 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1F34 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1F37 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1F3A _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1F3E _ 83. EC, 0C
        push    eax                                     ; 1F41 _ 50
        call    charToVal                               ; 1F42 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F47 _ 83. C4, 10
        mov     byte [?_269], al                        ; 1F4A _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1F4F _ 0F B6. 45, E4
        shr     al, 4                                   ; 1F53 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1F56 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1F59 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1F5D _ 0F BE. C0
        sub     esp, 12                                 ; 1F60 _ 83. EC, 0C
        push    eax                                     ; 1F63 _ 50
        call    charToVal                               ; 1F64 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F69 _ 83. C4, 10
        mov     byte [?_268], al                        ; 1F6C _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1F71 _ B8, 00000000(d)
        leave                                           ; 1F76 _ C9
        ret                                             ; 1F77 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1F78 _ 55
        mov     ebp, esp                                ; 1F79 _ 89. E5
        sub     esp, 4                                  ; 1F7B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1F7E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1F81 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1F84 _ 80. 7D, FC, 09
        jle     ?_089                                   ; 1F88 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1F8A _ 0F B6. 45, FC
        add     eax, 55                                 ; 1F8E _ 83. C0, 37
        jmp     ?_090                                   ; 1F91 _ EB, 07

?_089:  movzx   eax, byte [ebp-4H]                      ; 1F93 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1F97 _ 83. C0, 30
?_090:  leave                                           ; 1F9A _ C9
        ret                                             ; 1F9B _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1F9C _ 55
        mov     ebp, esp                                ; 1F9D _ 89. E5
        sub     esp, 16                                 ; 1F9F _ 83. EC, 10
        mov     byte [str.2534], 48                     ; 1FA2 _ C6. 05, 00000278(d), 30
        mov     byte [?_274], 120                       ; 1FA9 _ C6. 05, 00000279(d), 78
        mov     byte [?_275], 0                         ; 1FB0 _ C6. 05, 00000282(d), 00
        mov     dword [ebp-0CH], 2                      ; 1FB7 _ C7. 45, F4, 00000002
        jmp     ?_092                                   ; 1FBE _ EB, 0F

?_091:  mov     eax, dword [ebp-0CH]                    ; 1FC0 _ 8B. 45, F4
        add     eax, str.2534                           ; 1FC3 _ 05, 00000278(d)
        mov     byte [eax], 48                          ; 1FC8 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1FCB _ 83. 45, F4, 01
?_092:  cmp     dword [ebp-0CH], 9                      ; 1FCF _ 83. 7D, F4, 09
        jle     ?_091                                   ; 1FD3 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1FD5 _ C7. 45, F8, 00000009
        jmp     ?_095                                   ; 1FDC _ EB, 48

?_093:  mov     eax, dword [ebp+8H]                     ; 1FDE _ 8B. 45, 08
        and     eax, 0FH                                ; 1FE1 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1FE4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1FE7 _ 8B. 45, 08
        shr     eax, 4                                  ; 1FEA _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1FED _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1FF0 _ 83. 7D, FC, 09
        jle     ?_094                                   ; 1FF4 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1FF6 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1FF9 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1FFC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1FFF _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 2002 _ 89. 55, F8
        mov     edx, ecx                                ; 2005 _ 89. CA
        mov     byte [str.2534+eax], dl                 ; 2007 _ 88. 90, 00000278(d)
        jmp     ?_095                                   ; 200D _ EB, 17

?_094:  mov     eax, dword [ebp-4H]                     ; 200F _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 2012 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 2015 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2018 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 201B _ 89. 55, F8
        mov     edx, ecx                                ; 201E _ 89. CA
        mov     byte [str.2534+eax], dl                 ; 2020 _ 88. 90, 00000278(d)
?_095:  cmp     dword [ebp-8H], 1                       ; 2026 _ 83. 7D, F8, 01
        jle     ?_096                                   ; 202A _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 202C _ 83. 7D, 08, 00
        jnz     ?_093                                   ; 2030 _ 75, AC
?_096:  mov     eax, str.2534                           ; 2032 _ B8, 00000278(d)
        leave                                           ; 2037 _ C9
        ret                                             ; 2038 _ C3
; intToHexStr End of function

intToStr:; Function begin
        push    ebp                                     ; 2039 _ 55
        mov     ebp, esp                                ; 203A _ 89. E5
        sub     esp, 32                                 ; 203C _ 83. EC, 20
        mov     dword [ebp-14H], 0                      ; 203F _ C7. 45, EC, 00000000
        jmp     ?_098                                   ; 2046 _ EB, 48

?_097:  mov     ecx, dword [ebp+8H]                     ; 2048 _ 8B. 4D, 08
        mov     edx, 3435973837                         ; 204B _ BA, CCCCCCCD
        mov     eax, ecx                                ; 2050 _ 89. C8
        mul     edx                                     ; 2052 _ F7. E2
        shr     edx, 3                                  ; 2054 _ C1. EA, 03
        mov     eax, edx                                ; 2057 _ 89. D0
        shl     eax, 2                                  ; 2059 _ C1. E0, 02
        add     eax, edx                                ; 205C _ 01. D0
        add     eax, eax                                ; 205E _ 01. C0
        sub     ecx, eax                                ; 2060 _ 29. C1
        mov     edx, ecx                                ; 2062 _ 89. CA
        mov     dword [ebp-4H], edx                     ; 2064 _ 89. 55, FC
        mov     eax, dword [ebp-4H]                     ; 2067 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 206A _ 8D. 48, 30
        mov     eax, dword [ebp-14H]                    ; 206D _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2070 _ 8D. 50, 01
        mov     dword [ebp-14H], edx                    ; 2073 _ 89. 55, EC
        mov     edx, ecx                                ; 2076 _ 89. CA
        mov     byte [str.2547+eax], dl                 ; 2078 _ 88. 90, 00000284(d)
        mov     eax, dword [ebp+8H]                     ; 207E _ 8B. 45, 08
        mov     edx, 3435973837                         ; 2081 _ BA, CCCCCCCD
        mul     edx                                     ; 2086 _ F7. E2
        mov     eax, edx                                ; 2088 _ 89. D0
        shr     eax, 3                                  ; 208A _ C1. E8, 03
        mov     dword [ebp+8H], eax                     ; 208D _ 89. 45, 08
?_098:  cmp     dword [ebp+8H], 0                       ; 2090 _ 83. 7D, 08, 00
        jnz     ?_097                                   ; 2094 _ 75, B2
        mov     dword [ebp-8H], 0                       ; 2096 _ C7. 45, F8, 00000000
        mov     dword [ebp-10H], 0                      ; 209D _ C7. 45, F0, 00000000
        mov     eax, dword [ebp-14H]                    ; 20A4 _ 8B. 45, EC
        sub     eax, 1                                  ; 20A7 _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 20AA _ 89. 45, F4
        jmp     ?_100                                   ; 20AD _ EB, 3E

?_099:  mov     eax, dword [ebp-10H]                    ; 20AF _ 8B. 45, F0
        add     eax, str.2547                           ; 20B2 _ 05, 00000284(d)
        movzx   eax, byte [eax]                         ; 20B7 _ 0F B6. 00
        movsx   eax, al                                 ; 20BA _ 0F BE. C0
        mov     dword [ebp-8H], eax                     ; 20BD _ 89. 45, F8
        mov     eax, dword [ebp-0CH]                    ; 20C0 _ 8B. 45, F4
        add     eax, str.2547                           ; 20C3 _ 05, 00000284(d)
        movzx   eax, byte [eax]                         ; 20C8 _ 0F B6. 00
        mov     edx, dword [ebp-10H]                    ; 20CB _ 8B. 55, F0
        add     edx, str.2547                           ; 20CE _ 81. C2, 00000284(d)
        mov     byte [edx], al                          ; 20D4 _ 88. 02
        mov     eax, dword [ebp-8H]                     ; 20D6 _ 8B. 45, F8
        mov     edx, eax                                ; 20D9 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 20DB _ 8B. 45, F4
        add     eax, str.2547                           ; 20DE _ 05, 00000284(d)
        mov     byte [eax], dl                          ; 20E3 _ 88. 10
        add     dword [ebp-10H], 1                      ; 20E5 _ 83. 45, F0, 01
        sub     dword [ebp-0CH], 1                      ; 20E9 _ 83. 6D, F4, 01
?_100:  mov     eax, dword [ebp-10H]                    ; 20ED _ 8B. 45, F0
        cmp     eax, dword [ebp-0CH]                    ; 20F0 _ 3B. 45, F4
        jl      ?_099                                   ; 20F3 _ 7C, BA
        mov     eax, dword [ebp-14H]                    ; 20F5 _ 8B. 45, EC
        add     eax, str.2547                           ; 20F8 _ 05, 00000284(d)
        mov     byte [eax], 0                           ; 20FD _ C6. 00, 00
        mov     eax, str.2547                           ; 2100 _ B8, 00000284(d)
        leave                                           ; 2105 _ C9
        ret                                             ; 2106 _ C3
; intToStr End of function

getIntStrLen:; Function begin
        push    ebp                                     ; 2107 _ 55
        mov     ebp, esp                                ; 2108 _ 89. E5
        sub     esp, 16                                 ; 210A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 210D _ C7. 45, FC, 00000000
        nop                                             ; 2114 _ 90
?_101:  mov     eax, dword [ebp-4H]                     ; 2115 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 2118 _ 8D. 50, 01
        mov     dword [ebp-4H], edx                     ; 211B _ 89. 55, FC
        mov     edx, eax                                ; 211E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2120 _ 8B. 45, 08
        add     eax, edx                                ; 2123 _ 01. D0
        movzx   eax, byte [eax]                         ; 2125 _ 0F B6. 00
        test    al, al                                  ; 2128 _ 84. C0
        jnz     ?_101                                   ; 212A _ 75, E9
        mov     eax, dword [ebp-4H]                     ; 212C _ 8B. 45, FC
        leave                                           ; 212F _ C9
        ret                                             ; 2130 _ C3
; getIntStrLen End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 2131 _ 55
        mov     ebp, esp                                ; 2132 _ 89. E5
        sub     esp, 8                                  ; 2134 _ 83. EC, 08
?_102:  sub     esp, 12                                 ; 2137 _ 83. EC, 0C
        push    100                                     ; 213A _ 6A, 64
        call    io_in8                                  ; 213C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2141 _ 83. C4, 10
        movsx   eax, al                                 ; 2144 _ 0F BE. C0
        and     eax, 02H                                ; 2147 _ 83. E0, 02
        test    eax, eax                                ; 214A _ 85. C0
        jz      ?_103                                   ; 214C _ 74, 02
        jmp     ?_102                                   ; 214E _ EB, E7

?_103:  nop                                             ; 2150 _ 90
        nop                                             ; 2151 _ 90
        leave                                           ; 2152 _ C9
        ret                                             ; 2153 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 2154 _ 55
        mov     ebp, esp                                ; 2155 _ 89. E5
        sub     esp, 8                                  ; 2157 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 215A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 215F _ 83. EC, 08
        push    96                                      ; 2162 _ 6A, 60
        push    100                                     ; 2164 _ 6A, 64
        call    io_out8                                 ; 2166 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 216B _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 216E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2173 _ 83. EC, 08
        push    71                                      ; 2176 _ 6A, 47
        push    96                                      ; 2178 _ 6A, 60
        call    io_out8                                 ; 217A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 217F _ 83. C4, 10
        nop                                             ; 2182 _ 90
        leave                                           ; 2183 _ C9
        ret                                             ; 2184 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 2185 _ 55
        mov     ebp, esp                                ; 2186 _ 89. E5
        sub     esp, 8                                  ; 2188 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 218B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 2190 _ 83. EC, 08
        push    212                                     ; 2193 _ 68, 000000D4
        push    100                                     ; 2198 _ 6A, 64
        call    io_out8                                 ; 219A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 219F _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 21A2 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 21A7 _ 83. EC, 08
        push    244                                     ; 21AA _ 68, 000000F4
        push    96                                      ; 21AF _ 6A, 60
        call    io_out8                                 ; 21B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21B6 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 21B9 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 21BC _ C6. 40, 03, 00
        nop                                             ; 21C0 _ 90
        leave                                           ; 21C1 _ C9
        ret                                             ; 21C2 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 21C3 _ 55
        mov     ebp, esp                                ; 21C4 _ 89. E5
        sub     esp, 24                                 ; 21C6 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 21C9 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 21CD _ 83. EC, 08
        push    32                                      ; 21D0 _ 6A, 20
        push    160                                     ; 21D2 _ 68, 000000A0
        call    io_out8                                 ; 21D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21DC _ 83. C4, 10
        sub     esp, 8                                  ; 21DF _ 83. EC, 08
        push    32                                      ; 21E2 _ 6A, 20
        push    32                                      ; 21E4 _ 6A, 20
        call    io_out8                                 ; 21E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21EB _ 83. C4, 10
        sub     esp, 12                                 ; 21EE _ 83. EC, 0C
        push    96                                      ; 21F1 _ 6A, 60
        call    io_in8                                  ; 21F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21F8 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 21FB _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 21FE _ 0F B6. 45, F7
        sub     esp, 8                                  ; 2202 _ 83. EC, 08
        push    eax                                     ; 2205 _ 50
        push    mouseInfo                               ; 2206 _ 68, 0000002C(d)
        call    fifo8_put                               ; 220B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2210 _ 83. C4, 10
        nop                                             ; 2213 _ 90
        leave                                           ; 2214 _ C9
        ret                                             ; 2215 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 2216 _ 55
        mov     ebp, esp                                ; 2217 _ 89. E5
        sub     esp, 40                                 ; 2219 _ 83. EC, 28
        call    io_sti                                  ; 221C _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 2221 _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 2226 _ 89. 45, E8
        movzx   eax, word [?_270]                       ; 2229 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 2230 _ 98
        mov     dword [ebp-14H], eax                    ; 2231 _ 89. 45, EC
        movzx   eax, word [?_271]                       ; 2234 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 223B _ 98
        mov     dword [ebp-10H], eax                    ; 223C _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 223F _ C6. 45, E7, 00
        sub     esp, 12                                 ; 2243 _ 83. EC, 0C
        push    keyInfo                                 ; 2246 _ 68, 00000010(d)
        call    fifo8_get                               ; 224B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2250 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 2253 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 2256 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 225A _ 83. EC, 0C
        push    eax                                     ; 225D _ 50
        call    charToHex                               ; 225E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2263 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2266 _ 89. 45, F4
        mov     edx, dword [line.2589]                  ; 2269 _ 8B. 15, 0000028C(d)
        mov     eax, dword [pos.2588]                   ; 226F _ A1, 00000290(d)
        sub     esp, 8                                  ; 2274 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 2277 _ FF. 75, F4
        push    7                                       ; 227A _ 6A, 07
        push    edx                                     ; 227C _ 52
        push    eax                                     ; 227D _ 50
        push    dword [ebp+0CH]                         ; 227E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2281 _ FF. 75, 08
        call    showString                              ; 2284 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2289 _ 83. C4, 20
        mov     eax, dword [pos.2588]                   ; 228C _ A1, 00000290(d)
        add     eax, 32                                 ; 2291 _ 83. C0, 20
        mov     dword [pos.2588], eax                   ; 2294 _ A3, 00000290(d)
        mov     eax, dword [pos.2588]                   ; 2299 _ A1, 00000290(d)
        cmp     dword [ebp-14H], eax                    ; 229E _ 39. 45, EC
        jnz     ?_106                                   ; 22A1 _ 75, 28
        mov     eax, dword [line.2589]                  ; 22A3 _ A1, 0000028C(d)
        cmp     dword [ebp-10H], eax                    ; 22A8 _ 39. 45, F0
        jz      ?_104                                   ; 22AB _ 74, 0A
        mov     eax, dword [line.2589]                  ; 22AD _ A1, 0000028C(d)
        add     eax, 16                                 ; 22B2 _ 83. C0, 10
        jmp     ?_105                                   ; 22B5 _ EB, 05

?_104:  mov     eax, 0                                  ; 22B7 _ B8, 00000000
?_105:  mov     dword [line.2589], eax                  ; 22BC _ A3, 0000028C(d)
        mov     dword [pos.2588], 0                     ; 22C1 _ C7. 05, 00000290(d), 00000000
?_106:  nop                                             ; 22CB _ 90
        leave                                           ; 22CC _ C9
        ret                                             ; 22CD _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 22CE _ 55
        mov     ebp, esp                                ; 22CF _ 89. E5
        sub     esp, 24                                 ; 22D1 _ 83. EC, 18
        call    io_sti                                  ; 22D4 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 22D9 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 22DD _ 83. EC, 0C
        push    mouseInfo                               ; 22E0 _ 68, 0000002C(d)
        call    fifo8_get                               ; 22E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22EA _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 22ED _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 22F0 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 22F4 _ 83. EC, 08
        push    eax                                     ; 22F7 _ 50
        push    mouse_move                              ; 22F8 _ 68, 00000100(d)
        call    mouse_decode                            ; 22FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2302 _ 83. C4, 10
        test    eax, eax                                ; 2305 _ 85. C0
        jz      ?_107                                   ; 2307 _ 74, 60
        sub     esp, 4                                  ; 2309 _ 83. EC, 04
        push    mouse_move                              ; 230C _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 2311 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2314 _ FF. 75, 08
        call    computeMousePos                         ; 2317 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 231C _ 83. C4, 10
        mov     edx, dword [my]                         ; 231F _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 2325 _ A1, 00000110(d)
        push    edx                                     ; 232A _ 52
        push    eax                                     ; 232B _ 50
        push    dword [ebp+10H]                         ; 232C _ FF. 75, 10
        push    dword [ebp+8H]                          ; 232F _ FF. 75, 08
        call    sheet_slide                             ; 2332 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2337 _ 83. C4, 10
        mov     eax, dword [?_273]                      ; 233A _ A1, 0000010C(d)
        and     eax, 01H                                ; 233F _ 83. E0, 01
        test    eax, eax                                ; 2342 _ 85. C0
        jz      ?_107                                   ; 2344 _ 74, 23
        mov     eax, dword [my]                         ; 2346 _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 234B _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 234E _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 2353 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 2356 _ A1, 00000248(d)
        push    ecx                                     ; 235B _ 51
        push    edx                                     ; 235C _ 52
        push    eax                                     ; 235D _ 50
        push    dword [ebp+8H]                          ; 235E _ FF. 75, 08
        call    sheet_slide                             ; 2361 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2366 _ 83. C4, 10
?_107:  nop                                             ; 2369 _ 90
        leave                                           ; 236A _ C9
        ret                                             ; 236B _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 236C _ 55
        mov     ebp, esp                                ; 236D _ 89. E5
        sub     esp, 4                                  ; 236F _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2372 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2375 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2378 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 237B _ 0F B6. 40, 03
        test    al, al                                  ; 237F _ 84. C0
        jnz     ?_109                                   ; 2381 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 2383 _ 80. 7D, FC, FA
        jnz     ?_108                                   ; 2387 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 2389 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 238C _ C6. 40, 03, 01
?_108:  mov     eax, 0                                  ; 2390 _ B8, 00000000
        jmp     ?_116                                   ; 2395 _ E9, 0000010C

?_109:  mov     eax, dword [ebp+8H]                     ; 239A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 239D _ 0F B6. 40, 03
        cmp     al, 1                                   ; 23A1 _ 3C, 01
        jnz     ?_111                                   ; 23A3 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 23A5 _ 0F B6. 45, FC
        or      eax, 37H                                ; 23A9 _ 83. C8, 37
        cmp     al, 63                                  ; 23AC _ 3C, 3F
        jnz     ?_110                                   ; 23AE _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 23B0 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 23B3 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 23B7 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 23B9 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 23BC _ C6. 40, 03, 02
?_110:  mov     eax, 0                                  ; 23C0 _ B8, 00000000
        jmp     ?_116                                   ; 23C5 _ E9, 000000DC

?_111:  mov     eax, dword [ebp+8H]                     ; 23CA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 23CD _ 0F B6. 40, 03
        cmp     al, 2                                   ; 23D1 _ 3C, 02
        jnz     ?_112                                   ; 23D3 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 23D5 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 23D8 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 23DC _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 23DF _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 23E2 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 23E6 _ B8, 00000000
        jmp     ?_116                                   ; 23EB _ E9, 000000B6

?_112:  mov     eax, dword [ebp+8H]                     ; 23F0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 23F3 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 23F7 _ 3C, 03
        jne     ?_115                                   ; 23F9 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 23FF _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2402 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 2406 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2409 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 240C _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2410 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2413 _ 0F B6. 00
        movzx   eax, al                                 ; 2416 _ 0F B6. C0
        and     eax, 07H                                ; 2419 _ 83. E0, 07
        mov     edx, eax                                ; 241C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 241E _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2421 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2424 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 2427 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 242B _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 242E _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2431 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2434 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 2437 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 243B _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 243E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2441 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2444 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2447 _ 0F B6. 00
        movzx   eax, al                                 ; 244A _ 0F B6. C0
        and     eax, 10H                                ; 244D _ 83. E0, 10
        test    eax, eax                                ; 2450 _ 85. C0
        jz      ?_113                                   ; 2452 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2454 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2457 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 245A _ 0D, FFFFFF00
        mov     edx, eax                                ; 245F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2461 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2464 _ 89. 50, 04
?_113:  mov     eax, dword [ebp+8H]                     ; 2467 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 246A _ 0F B6. 00
        movzx   eax, al                                 ; 246D _ 0F B6. C0
        and     eax, 20H                                ; 2470 _ 83. E0, 20
        test    eax, eax                                ; 2473 _ 85. C0
        jz      ?_114                                   ; 2475 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2477 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 247A _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 247D _ 0D, FFFFFF00
        mov     edx, eax                                ; 2482 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2484 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2487 _ 89. 50, 08
?_114:  mov     eax, dword [ebp+8H]                     ; 248A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 248D _ 8B. 40, 08
        neg     eax                                     ; 2490 _ F7. D8
        mov     edx, eax                                ; 2492 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2494 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2497 _ 89. 50, 08
        mov     eax, 1                                  ; 249A _ B8, 00000001
        jmp     ?_116                                   ; 249F _ EB, 05

?_115:  mov     eax, 4294967295                         ; 24A1 _ B8, FFFFFFFF
?_116:  leave                                           ; 24A6 _ C9
        ret                                             ; 24A7 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 24A8 _ 55
        mov     ebp, esp                                ; 24A9 _ 89. E5
        sub     esp, 16                                 ; 24AB _ 83. EC, 10
        movzx   eax, word [?_270]                       ; 24AE _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 24B5 _ 98
        mov     dword [ebp-8H], eax                     ; 24B6 _ 89. 45, F8
        movzx   eax, word [?_271]                       ; 24B9 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 24C0 _ 98
        mov     dword [ebp-4H], eax                     ; 24C1 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 24C4 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 24C7 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 24CA _ A1, 00000110(d)
        add     eax, edx                                ; 24CF _ 01. D0
        mov     dword [mx], eax                         ; 24D1 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 24D6 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 24D9 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 24DC _ A1, 00000114(d)
        add     eax, edx                                ; 24E1 _ 01. D0
        mov     dword [my], eax                         ; 24E3 _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 24E8 _ A1, 00000110(d)
        test    eax, eax                                ; 24ED _ 85. C0
        jns     ?_117                                   ; 24EF _ 79, 0A
        mov     dword [mx], 0                           ; 24F1 _ C7. 05, 00000110(d), 00000000
?_117:  mov     eax, dword [my]                         ; 24FB _ A1, 00000114(d)
        test    eax, eax                                ; 2500 _ 85. C0
        jns     ?_118                                   ; 2502 _ 79, 0A
        mov     dword [my], 0                           ; 2504 _ C7. 05, 00000114(d), 00000000
?_118:  mov     eax, dword [ebp-8H]                     ; 250E _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 2511 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 2514 _ A1, 00000110(d)
        cmp     edx, eax                                ; 2519 _ 39. C2
        jge     ?_119                                   ; 251B _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 251D _ 8B. 45, F8
        sub     eax, 9                                  ; 2520 _ 83. E8, 09
        mov     dword [mx], eax                         ; 2523 _ A3, 00000110(d)
?_119:  mov     eax, dword [ebp-4H]                     ; 2528 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 252B _ 8D. 50, FF
        mov     eax, dword [my]                         ; 252E _ A1, 00000114(d)
        cmp     edx, eax                                ; 2533 _ 39. C2
        jge     ?_120                                   ; 2535 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 2537 _ 8B. 45, FC
        sub     eax, 1                                  ; 253A _ 83. E8, 01
        mov     dword [my], eax                         ; 253D _ A3, 00000114(d)
?_120:  nop                                             ; 2542 _ 90
        leave                                           ; 2543 _ C9
        ret                                             ; 2544 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 2545 _ 55
        mov     ebp, esp                                ; 2546 _ 89. E5
        sub     esp, 56                                 ; 2548 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 254B _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 2552 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 2559 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 2560 _ C7. 45, DC, 00000050
        push    100                                     ; 2567 _ 6A, 64
        push    dword [ebp+1CH]                         ; 2569 _ FF. 75, 1C
        push    0                                       ; 256C _ 6A, 00
        push    0                                       ; 256E _ 6A, 00
        push    14                                      ; 2570 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 2572 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 2575 _ FF. 75, 14
        call    boxfill8                                ; 2578 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 257D _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 2580 _ 8B. 45, 20
        movsx   eax, al                                 ; 2583 _ 0F BE. C0
        sub     esp, 8                                  ; 2586 _ 83. EC, 08
        push    ?_262                                   ; 2589 _ 68, 00000096(d)
        push    eax                                     ; 258E _ 50
        push    dword [ebp-2CH]                         ; 258F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2592 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2595 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2598 _ FF. 75, 08
        call    showString                              ; 259B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25A0 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 25A3 _ 8B. 45, 18
        sub     esp, 12                                 ; 25A6 _ 83. EC, 0C
        push    eax                                     ; 25A9 _ 50
        call    intToHexStr                             ; 25AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25AF _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 25B2 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 25B5 _ 8B. 45, 20
        movsx   eax, al                                 ; 25B8 _ 0F BE. C0
        sub     esp, 8                                  ; 25BB _ 83. EC, 08
        push    dword [ebp-20H]                         ; 25BE _ FF. 75, E0
        push    eax                                     ; 25C1 _ 50
        push    dword [ebp-2CH]                         ; 25C2 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 25C5 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 25C8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25CB _ FF. 75, 08
        call    showString                              ; 25CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25D3 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 25D6 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 25DA _ 8B. 45, 20
        movsx   eax, al                                 ; 25DD _ 0F BE. C0
        sub     esp, 8                                  ; 25E0 _ 83. EC, 08
        push    ?_263                                   ; 25E3 _ 68, 000000A0(d)
        push    eax                                     ; 25E8 _ 50
        push    dword [ebp-2CH]                         ; 25E9 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 25EC _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 25EF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25F2 _ FF. 75, 08
        call    showString                              ; 25F5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25FA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 25FD _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2600 _ 8B. 00
        sub     esp, 12                                 ; 2602 _ 83. EC, 0C
        push    eax                                     ; 2605 _ 50
        call    intToHexStr                             ; 2606 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 260B _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 260E _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2611 _ 8B. 45, 20
        movsx   eax, al                                 ; 2614 _ 0F BE. C0
        sub     esp, 8                                  ; 2617 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 261A _ FF. 75, E4
        push    eax                                     ; 261D _ 50
        push    dword [ebp-2CH]                         ; 261E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2621 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2624 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2627 _ FF. 75, 08
        call    showString                              ; 262A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 262F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2632 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2636 _ 8B. 45, 20
        movsx   eax, al                                 ; 2639 _ 0F BE. C0
        sub     esp, 8                                  ; 263C _ 83. EC, 08
        push    ?_264                                   ; 263F _ 68, 000000AE(d)
        push    eax                                     ; 2644 _ 50
        push    dword [ebp-2CH]                         ; 2645 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2648 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 264B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 264E _ FF. 75, 08
        call    showString                              ; 2651 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2656 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2659 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 265C _ 8B. 40, 04
        sub     esp, 12                                 ; 265F _ 83. EC, 0C
        push    eax                                     ; 2662 _ 50
        call    intToHexStr                             ; 2663 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2668 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 266B _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 266E _ 8B. 45, 20
        movsx   eax, al                                 ; 2671 _ 0F BE. C0
        sub     esp, 8                                  ; 2674 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 2677 _ FF. 75, E8
        push    eax                                     ; 267A _ 50
        push    dword [ebp-2CH]                         ; 267B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 267E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2681 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2684 _ FF. 75, 08
        call    showString                              ; 2687 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 268C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 268F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2693 _ 8B. 45, 20
        movsx   eax, al                                 ; 2696 _ 0F BE. C0
        sub     esp, 8                                  ; 2699 _ 83. EC, 08
        push    ?_265                                   ; 269C _ 68, 000000BD(d)
        push    eax                                     ; 26A1 _ 50
        push    dword [ebp-2CH]                         ; 26A2 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 26A5 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 26A8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 26AB _ FF. 75, 08
        call    showString                              ; 26AE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26B3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 26B6 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 26B9 _ 8B. 40, 08
        sub     esp, 12                                 ; 26BC _ 83. EC, 0C
        push    eax                                     ; 26BF _ 50
        call    intToHexStr                             ; 26C0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26C5 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 26C8 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 26CB _ 8B. 45, 20
        movsx   eax, al                                 ; 26CE _ 0F BE. C0
        sub     esp, 8                                  ; 26D1 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 26D4 _ FF. 75, EC
        push    eax                                     ; 26D7 _ 50
        push    dword [ebp-2CH]                         ; 26D8 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 26DB _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 26DE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 26E1 _ FF. 75, 08
        call    showString                              ; 26E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26E9 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 26EC _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 26F0 _ 8B. 45, 20
        movsx   eax, al                                 ; 26F3 _ 0F BE. C0
        sub     esp, 8                                  ; 26F6 _ 83. EC, 08
        push    ?_266                                   ; 26F9 _ 68, 000000C9(d)
        push    eax                                     ; 26FE _ 50
        push    dword [ebp-2CH]                         ; 26FF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2702 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2705 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2708 _ FF. 75, 08
        call    showString                              ; 270B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2710 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2713 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 2716 _ 8B. 40, 0C
        sub     esp, 12                                 ; 2719 _ 83. EC, 0C
        push    eax                                     ; 271C _ 50
        call    intToHexStr                             ; 271D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2722 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2725 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 2728 _ 8B. 45, 20
        movsx   eax, al                                 ; 272B _ 0F BE. C0
        sub     esp, 8                                  ; 272E _ 83. EC, 08
        push    dword [ebp-10H]                         ; 2731 _ FF. 75, F0
        push    eax                                     ; 2734 _ 50
        push    dword [ebp-2CH]                         ; 2735 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2738 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 273B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 273E _ FF. 75, 08
        call    showString                              ; 2741 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2746 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2749 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 274D _ 8B. 45, 20
        movsx   eax, al                                 ; 2750 _ 0F BE. C0
        sub     esp, 8                                  ; 2753 _ 83. EC, 08
        push    ?_267                                   ; 2756 _ 68, 000000D6(d)
        push    eax                                     ; 275B _ 50
        push    dword [ebp-2CH]                         ; 275C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 275F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2762 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2765 _ FF. 75, 08
        call    showString                              ; 2768 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 276D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2770 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 2773 _ 8B. 40, 10
        sub     esp, 12                                 ; 2776 _ 83. EC, 0C
        push    eax                                     ; 2779 _ 50
        call    intToHexStr                             ; 277A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 277F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2782 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 2785 _ 8B. 45, 20
        movsx   eax, al                                 ; 2788 _ 0F BE. C0
        sub     esp, 8                                  ; 278B _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 278E _ FF. 75, F4
        push    eax                                     ; 2791 _ 50
        push    dword [ebp-2CH]                         ; 2792 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2795 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2798 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 279B _ FF. 75, 08
        call    showString                              ; 279E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27A3 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 27A6 _ 83. 45, D4, 10
        nop                                             ; 27AA _ 90
        leave                                           ; 27AB _ C9
        ret                                             ; 27AC _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 27AD _ 55
        mov     ebp, esp                                ; 27AE _ 89. E5
        sub     esp, 24                                 ; 27B0 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 27B3 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 27B6 _ 0F AF. 45, 14
        mov     edx, eax                                ; 27BA _ 89. C2
        mov     eax, dword [memman]                     ; 27BC _ A1, 00000008(d)
        sub     esp, 8                                  ; 27C1 _ 83. EC, 08
        push    edx                                     ; 27C4 _ 52
        push    eax                                     ; 27C5 _ 50
        call    memman_alloc_4K                         ; 27C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 27CB _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 27CE _ 89. 45, F0
        sub     esp, 12                                 ; 27D1 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 27D4 _ FF. 75, 08
        call    sheet_alloc                             ; 27D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 27DC _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 27DF _ 89. 45, F4
        sub     esp, 12                                 ; 27E2 _ 83. EC, 0C
        push    99                                      ; 27E5 _ 6A, 63
        push    dword [ebp+14H]                         ; 27E7 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 27EA _ FF. 75, 10
        push    dword [ebp-10H]                         ; 27ED _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 27F0 _ FF. 75, F4
        call    sheet_setbuf                            ; 27F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 27F8 _ 83. C4, 20
        push    1                                       ; 27FB _ 6A, 01
        push    dword [ebp+0CH]                         ; 27FD _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 2800 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2803 _ FF. 75, 08
        call    make_window8                            ; 2806 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 280B _ 83. C4, 10
        sub     esp, 8                                  ; 280E _ 83. EC, 08
        push    7                                       ; 2811 _ 6A, 07
        push    16                                      ; 2813 _ 6A, 10
        push    150                                     ; 2815 _ 68, 00000096
        push    42                                      ; 281A _ 6A, 2A
        push    10                                      ; 281C _ 6A, 0A
        push    dword [ebp-0CH]                         ; 281E _ FF. 75, F4
        call    make_textbox8                           ; 2821 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2826 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 2829 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 282C _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 282F _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2832 _ FF. 75, 08
        call    sheet_slide                             ; 2835 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 283A _ 83. C4, 10
        sub     esp, 4                                  ; 283D _ 83. EC, 04
        push    dword [ebp+20H]                         ; 2840 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 2843 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2846 _ FF. 75, 08
        call    sheet_level_updown                      ; 2849 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 284E _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2851 _ 8B. 45, F4
        leave                                           ; 2854 _ C9
        ret                                             ; 2855 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 2856 _ 55
        mov     ebp, esp                                ; 2857 _ 89. E5
        sub     esp, 24                                 ; 2859 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 285C _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 285F _ 0F AF. 45, 20
        mov     edx, eax                                ; 2863 _ 89. C2
        mov     eax, dword [memman]                     ; 2865 _ A1, 00000008(d)
        sub     esp, 8                                  ; 286A _ 83. EC, 08
        push    edx                                     ; 286D _ 52
        push    eax                                     ; 286E _ 50
        call    memman_alloc_4K                         ; 286F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2874 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2877 _ 89. 45, F0
        sub     esp, 12                                 ; 287A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 287D _ FF. 75, 08
        call    sheet_alloc                             ; 2880 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2885 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2888 _ 89. 45, F4
        sub     esp, 12                                 ; 288B _ 83. EC, 0C
        push    99                                      ; 288E _ 6A, 63
        push    dword [ebp+20H]                         ; 2890 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 2893 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 2896 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2899 _ FF. 75, F4
        call    sheet_setbuf                            ; 289C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 28A1 _ 83. C4, 20
        push    0                                       ; 28A4 _ 6A, 00
        push    dword [ebp+18H]                         ; 28A6 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 28A9 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 28AC _ FF. 75, 08
        call    make_window8                            ; 28AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28B4 _ 83. C4, 10
        call    task_alloc                              ; 28B7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 28BC _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 28BF _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 28C2 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 28C9 _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 28CC _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 28D3 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 28D8 _ F7. D8
        add     eax, task_b_main                        ; 28DA _ 05, 00000000(d)
        mov     edx, eax                                ; 28DF _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 28E1 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 28E4 _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 28E7 _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 28EA _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 28F1 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 28F4 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 28FB _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 28FE _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 2905 _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 2908 _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 290F _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 2912 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2919 _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 291C _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2923 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2926 _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 2929 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 292C _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 292F _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 2932 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2935 _ 8B. 40, 4C
        add     eax, 4                                  ; 2938 _ 83. C0, 04
        mov     edx, eax                                ; 293B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 293D _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2940 _ 89. 02
        sub     esp, 4                                  ; 2942 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2945 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2948 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 294B _ FF. 75, 0C
        call    task_run                                ; 294E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2953 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 2956 _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2959 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 295C _ FF. 75, F4
        push    dword [ebp+8H]                          ; 295F _ FF. 75, 08
        call    sheet_slide                             ; 2962 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2967 _ 83. C4, 10
        sub     esp, 4                                  ; 296A _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 296D _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 2970 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2973 _ FF. 75, 08
        call    sheet_level_updown                      ; 2976 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 297B _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 297E _ 8B. 45, F4
        leave                                           ; 2981 _ C9
        ret                                             ; 2982 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 2983 _ 55
        mov     ebp, esp                                ; 2984 _ 89. E5
        push    ebx                                     ; 2986 _ 53
        sub     esp, 36                                 ; 2987 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 298A _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 298D _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2990 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2993 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2996 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2999 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 299C _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 299F _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 29A2 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 29A5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 29A8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 29AB _ 8B. 00
        push    0                                       ; 29AD _ 6A, 00
        push    edx                                     ; 29AF _ 52
        push    0                                       ; 29B0 _ 6A, 00
        push    0                                       ; 29B2 _ 6A, 00
        push    8                                       ; 29B4 _ 6A, 08
        push    dword [ebp-10H]                         ; 29B6 _ FF. 75, F0
        push    eax                                     ; 29B9 _ 50
        call    boxfill8                                ; 29BA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 29BF _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 29C2 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 29C5 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 29C8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 29CB _ 8B. 00
        push    1                                       ; 29CD _ 6A, 01
        push    edx                                     ; 29CF _ 52
        push    1                                       ; 29D0 _ 6A, 01
        push    1                                       ; 29D2 _ 6A, 01
        push    7                                       ; 29D4 _ 6A, 07
        push    dword [ebp-10H]                         ; 29D6 _ FF. 75, F0
        push    eax                                     ; 29D9 _ 50
        call    boxfill8                                ; 29DA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 29DF _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 29E2 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 29E5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 29E8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 29EB _ 8B. 00
        push    edx                                     ; 29ED _ 52
        push    0                                       ; 29EE _ 6A, 00
        push    0                                       ; 29F0 _ 6A, 00
        push    0                                       ; 29F2 _ 6A, 00
        push    8                                       ; 29F4 _ 6A, 08
        push    dword [ebp-10H]                         ; 29F6 _ FF. 75, F0
        push    eax                                     ; 29F9 _ 50
        call    boxfill8                                ; 29FA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 29FF _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2A02 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2A05 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2A08 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A0B _ 8B. 00
        push    edx                                     ; 2A0D _ 52
        push    1                                       ; 2A0E _ 6A, 01
        push    1                                       ; 2A10 _ 6A, 01
        push    1                                       ; 2A12 _ 6A, 01
        push    7                                       ; 2A14 _ 6A, 07
        push    dword [ebp-10H]                         ; 2A16 _ FF. 75, F0
        push    eax                                     ; 2A19 _ 50
        call    boxfill8                                ; 2A1A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2A1F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2A22 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2A25 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2A28 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2A2B _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2A2E _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2A31 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2A34 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A37 _ 8B. 00
        push    ebx                                     ; 2A39 _ 53
        push    ecx                                     ; 2A3A _ 51
        push    1                                       ; 2A3B _ 6A, 01
        push    edx                                     ; 2A3D _ 52
        push    15                                      ; 2A3E _ 6A, 0F
        push    dword [ebp-10H]                         ; 2A40 _ FF. 75, F0
        push    eax                                     ; 2A43 _ 50
        call    boxfill8                                ; 2A44 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2A49 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2A4C _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2A4F _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2A52 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2A55 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2A58 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2A5B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2A5E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A61 _ 8B. 00
        push    ebx                                     ; 2A63 _ 53
        push    ecx                                     ; 2A64 _ 51
        push    0                                       ; 2A65 _ 6A, 00
        push    edx                                     ; 2A67 _ 52
        push    0                                       ; 2A68 _ 6A, 00
        push    dword [ebp-10H]                         ; 2A6A _ FF. 75, F0
        push    eax                                     ; 2A6D _ 50
        call    boxfill8                                ; 2A6E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2A73 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2A76 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2A79 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2A7C _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2A7F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2A82 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A85 _ 8B. 00
        push    ecx                                     ; 2A87 _ 51
        push    edx                                     ; 2A88 _ 52
        push    2                                       ; 2A89 _ 6A, 02
        push    2                                       ; 2A8B _ 6A, 02
        push    8                                       ; 2A8D _ 6A, 08
        push    dword [ebp-10H]                         ; 2A8F _ FF. 75, F0
        push    eax                                     ; 2A92 _ 50
        call    boxfill8                                ; 2A93 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2A98 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2A9B _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2A9E _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2AA1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2AA4 _ 8B. 00
        push    20                                      ; 2AA6 _ 6A, 14
        push    edx                                     ; 2AA8 _ 52
        push    3                                       ; 2AA9 _ 6A, 03
        push    3                                       ; 2AAB _ 6A, 03
        push    12                                      ; 2AAD _ 6A, 0C
        push    dword [ebp-10H]                         ; 2AAF _ FF. 75, F0
        push    eax                                     ; 2AB2 _ 50
        call    boxfill8                                ; 2AB3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2AB8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2ABB _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2ABE _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2AC1 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2AC4 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2AC7 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2ACA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2ACD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2AD0 _ 8B. 00
        push    ebx                                     ; 2AD2 _ 53
        push    ecx                                     ; 2AD3 _ 51
        push    edx                                     ; 2AD4 _ 52
        push    1                                       ; 2AD5 _ 6A, 01
        push    15                                      ; 2AD7 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2AD9 _ FF. 75, F0
        push    eax                                     ; 2ADC _ 50
        call    boxfill8                                ; 2ADD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2AE2 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2AE5 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2AE8 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2AEB _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2AEE _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2AF1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2AF4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2AF7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2AFA _ 8B. 00
        push    ebx                                     ; 2AFC _ 53
        push    ecx                                     ; 2AFD _ 51
        push    edx                                     ; 2AFE _ 52
        push    0                                       ; 2AFF _ 6A, 00
        push    0                                       ; 2B01 _ 6A, 00
        push    dword [ebp-10H]                         ; 2B03 _ FF. 75, F0
        push    eax                                     ; 2B06 _ 50
        call    boxfill8                                ; 2B07 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B0C _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2B0F _ 0F BE. 45, E4
        push    eax                                     ; 2B13 _ 50
        push    dword [ebp+10H]                         ; 2B14 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2B17 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2B1A _ FF. 75, 08
        call    make_wtitle8                            ; 2B1D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B22 _ 83. C4, 10
        nop                                             ; 2B25 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2B26 _ 8B. 5D, FC
        leave                                           ; 2B29 _ C9
        ret                                             ; 2B2A _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 2B2B _ 55
        mov     ebp, esp                                ; 2B2C _ 89. E5
        push    ebx                                     ; 2B2E _ 53
        sub     esp, 36                                 ; 2B2F _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2B32 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2B35 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2B38 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2B3B _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2B3E _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 2B41 _ 80. 7D, E4, 00
        jz      ?_121                                   ; 2B45 _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 2B47 _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 2B4B _ C6. 45, EB, 0C
        jmp     ?_122                                   ; 2B4F _ EB, 0E

?_121:  cmp     byte [ebp-1CH], 0                       ; 2B51 _ 80. 7D, E4, 00
        jnz     ?_122                                   ; 2B55 _ 75, 08
        mov     byte [ebp-16H], 8                       ; 2B57 _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2B5B _ C6. 45, EB, 0F
?_122:  mov     eax, dword [ebp-0CH]                    ; 2B5F _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 2B62 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 2B65 _ 0F B6. 45, EB
        movzx   edx, al                                 ; 2B69 _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2B6C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B6F _ 8B. 00
        push    20                                      ; 2B71 _ 6A, 14
        push    ecx                                     ; 2B73 _ 51
        push    3                                       ; 2B74 _ 6A, 03
        push    3                                       ; 2B76 _ 6A, 03
        push    edx                                     ; 2B78 _ 52
        push    dword [ebp-0CH]                         ; 2B79 _ FF. 75, F4
        push    eax                                     ; 2B7C _ 50
        call    boxfill8                                ; 2B7D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2B82 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 2B85 _ 0F BE. 45, EA
        sub     esp, 8                                  ; 2B89 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2B8C _ FF. 75, 10
        push    eax                                     ; 2B8F _ 50
        push    4                                       ; 2B90 _ 6A, 04
        push    8                                       ; 2B92 _ 6A, 08
        push    dword [ebp+0CH]                         ; 2B94 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2B97 _ FF. 75, 08
        call    showString                              ; 2B9A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2B9F _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 2BA2 _ C7. 45, EC, 00000000
        jmp     ?_129                                   ; 2BA9 _ EB, 75

?_123:  mov     dword [ebp-10H], 0                      ; 2BAB _ C7. 45, F0, 00000000
        jmp     ?_128                                   ; 2BB2 _ EB, 62

?_124:  mov     eax, dword [ebp-14H]                    ; 2BB4 _ 8B. 45, EC
        shl     eax, 4                                  ; 2BB7 _ C1. E0, 04
        mov     edx, eax                                ; 2BBA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2BBC _ 8B. 45, F0
        add     eax, edx                                ; 2BBF _ 01. D0
        add     eax, closebtn.2666                      ; 2BC1 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2BC6 _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 2BC9 _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 2BCC _ 80. 7D, E9, 40
        jnz     ?_125                                   ; 2BD0 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 2BD2 _ C6. 45, E9, 00
        jmp     ?_127                                   ; 2BD6 _ EB, 16

?_125:  cmp     byte [ebp-17H], 36                      ; 2BD8 _ 80. 7D, E9, 24
        jnz     ?_126                                   ; 2BDC _ 75, 06
        mov     byte [ebp-17H], 15                      ; 2BDE _ C6. 45, E9, 0F
        jmp     ?_127                                   ; 2BE2 _ EB, 0A

?_126:  cmp     byte [ebp-17H], 81                      ; 2BE4 _ 80. 7D, E9, 51
        jnz     ?_127                                   ; 2BE8 _ 75, 04
        mov     byte [ebp-17H], 8                       ; 2BEA _ C6. 45, E9, 08
?_127:  mov     eax, dword [ebp+0CH]                    ; 2BEE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BF1 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2BF3 _ 8B. 55, EC
        add     edx, 5                                  ; 2BF6 _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 2BF9 _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 2BFD _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2C00 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2C03 _ 8B. 4D, F0
        add     ecx, ebx                                ; 2C06 _ 01. D9
        add     edx, ecx                                ; 2C08 _ 01. CA
        add     edx, eax                                ; 2C0A _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 2C0C _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2C10 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2C12 _ 83. 45, F0, 01
?_128:  cmp     dword [ebp-10H], 15                     ; 2C16 _ 83. 7D, F0, 0F
        jle     ?_124                                   ; 2C1A _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2C1C _ 83. 45, EC, 01
?_129:  cmp     dword [ebp-14H], 13                     ; 2C20 _ 83. 7D, EC, 0D
        jle     ?_123                                   ; 2C24 _ 7E, 85
        nop                                             ; 2C26 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2C27 _ 8B. 5D, FC
        leave                                           ; 2C2A _ C9
        ret                                             ; 2C2B _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2C2C _ 55
        mov     ebp, esp                                ; 2C2D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C2F _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2C32 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2C38 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2C3B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2C42 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2C45 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2C4C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2C4F _ C7. 40, 0C, 00000000
        nop                                             ; 2C56 _ 90
        pop     ebp                                     ; 2C57 _ 5D
        ret                                             ; 2C58 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2C59 _ 55
        mov     ebp, esp                                ; 2C5A _ 89. E5
        sub     esp, 16                                 ; 2C5C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2C5F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2C66 _ C7. 45, FC, 00000000
        jmp     ?_131                                   ; 2C6D _ EB, 14

?_130:  mov     eax, dword [ebp+8H]                     ; 2C6F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2C72 _ 8B. 55, FC
        add     edx, 2                                  ; 2C75 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2C78 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2C7C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2C7F _ 83. 45, FC, 01
?_131:  mov     eax, dword [ebp+8H]                     ; 2C83 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C86 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2C88 _ 39. 45, FC
        jl      ?_130                                   ; 2C8B _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2C8D _ 8B. 45, F8
        leave                                           ; 2C90 _ C9
        ret                                             ; 2C91 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2C92 _ 55
        mov     ebp, esp                                ; 2C93 _ 89. E5
        sub     esp, 16                                 ; 2C95 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2C98 _ C7. 45, F8, 00000000
        jmp     ?_135                                   ; 2C9F _ E9, 00000085

?_132:  mov     eax, dword [ebp+8H]                     ; 2CA4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CA7 _ 8B. 55, F8
        add     edx, 2                                  ; 2CAA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2CAD _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2CB1 _ 39. 45, 0C
        ja      ?_134                                   ; 2CB4 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2CB6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CB9 _ 8B. 55, F8
        add     edx, 2                                  ; 2CBC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2CBF _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2CC2 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2CC5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CC8 _ 8B. 55, F8
        add     edx, 2                                  ; 2CCB _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2CCE _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2CD1 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2CD4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2CD7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CDA _ 8B. 55, F8
        add     edx, 2                                  ; 2CDD _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2CE0 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2CE3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CE6 _ 8B. 55, F8
        add     edx, 2                                  ; 2CE9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2CEC _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2CF0 _ 2B. 45, 0C
        mov     edx, eax                                ; 2CF3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2CF5 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2CF8 _ 8B. 4D, F8
        add     ecx, 2                                  ; 2CFB _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2CFE _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2D02 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D05 _ 8B. 55, F8
        add     edx, 2                                  ; 2D08 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D0B _ 8B. 44 D0, 04
        test    eax, eax                                ; 2D0F _ 85. C0
        jnz     ?_133                                   ; 2D11 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2D13 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D16 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2D18 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D1B _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2D1E _ 89. 10
?_133:  mov     eax, dword [ebp-4H]                     ; 2D20 _ 8B. 45, FC
        jmp     ?_136                                   ; 2D23 _ EB, 17

?_134:  add     dword [ebp-8H], 1                       ; 2D25 _ 83. 45, F8, 01
?_135:  mov     eax, dword [ebp+8H]                     ; 2D29 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D2C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2D2E _ 39. 45, F8
        jl      ?_132                                   ; 2D31 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2D37 _ B8, 00000000
?_136:  leave                                           ; 2D3C _ C9
        ret                                             ; 2D3D _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2D3E _ 55
        mov     ebp, esp                                ; 2D3F _ 89. E5
        sub     esp, 16                                 ; 2D41 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2D44 _ 8B. 45, 0C
        add     eax, 4095                               ; 2D47 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2D4C _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2D51 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2D54 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2D57 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2D5A _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2D5F _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2D62 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2D65 _ 8B. 45, FC
        leave                                           ; 2D68 _ C9
        ret                                             ; 2D69 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2D6A _ 55
        mov     ebp, esp                                ; 2D6B _ 89. E5
        push    ebx                                     ; 2D6D _ 53
        sub     esp, 16                                 ; 2D6E _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2D71 _ C7. 45, F4, 00000000
        jmp     ?_138                                   ; 2D78 _ EB, 15

?_137:  mov     eax, dword [ebp+8H]                     ; 2D7A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2D7D _ 8B. 55, F4
        add     edx, 2                                  ; 2D80 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2D83 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2D86 _ 39. 45, 0C
        jc      ?_139                                   ; 2D89 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2D8B _ 83. 45, F4, 01
?_138:  mov     eax, dword [ebp+8H]                     ; 2D8F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D92 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2D94 _ 39. 45, F4
        jl      ?_137                                   ; 2D97 _ 7C, E1
        jmp     ?_140                                   ; 2D99 _ EB, 01

?_139:  nop                                             ; 2D9B _ 90
?_140:  cmp     dword [ebp-0CH], 0                      ; 2D9C _ 83. 7D, F4, 00
        jle     ?_142                                   ; 2DA0 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2DA6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2DA9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DAC _ 8B. 45, 08
        add     edx, 2                                  ; 2DAF _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2DB2 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2DB5 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2DB8 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2DBB _ 8B. 45, 08
        add     ecx, 2                                  ; 2DBE _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2DC1 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2DC5 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2DC7 _ 39. 45, 0C
        jne     ?_142                                   ; 2DCA _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2DD0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2DD3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DD6 _ 8B. 45, 08
        add     edx, 2                                  ; 2DD9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2DDC _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2DE0 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2DE3 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2DE6 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2DE9 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2DEC _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2DEF _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2DF2 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2DF6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DF9 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2DFB _ 39. 45, F4
        jge     ?_141                                   ; 2DFE _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2E00 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2E03 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2E06 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E09 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2E0C _ 8B. 55, F4
        add     edx, 2                                  ; 2E0F _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E12 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2E15 _ 39. C1
        jnz     ?_141                                   ; 2E17 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2E19 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2E1C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E1F _ 8B. 45, 08
        add     edx, 2                                  ; 2E22 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2E25 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E29 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2E2C _ 8B. 4D, F4
        add     ecx, 2                                  ; 2E2F _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2E32 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2E36 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2E39 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2E3C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E3F _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2E42 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2E45 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E49 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E4C _ 8B. 00
        lea     edx, [eax-1H]                           ; 2E4E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E51 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2E54 _ 89. 10
?_141:  mov     eax, 0                                  ; 2E56 _ B8, 00000000
        jmp     ?_148                                   ; 2E5B _ E9, 0000011C

?_142:  mov     eax, dword [ebp+8H]                     ; 2E60 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E63 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2E65 _ 39. 45, F4
        jge     ?_143                                   ; 2E68 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2E6A _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2E6D _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2E70 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E73 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2E76 _ 8B. 55, F4
        add     edx, 2                                  ; 2E79 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E7C _ 8B. 04 D0
        cmp     ecx, eax                                ; 2E7F _ 39. C1
        jnz     ?_143                                   ; 2E81 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2E83 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2E86 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2E89 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2E8C _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2E8F _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2E92 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2E95 _ 8B. 55, F4
        add     edx, 2                                  ; 2E98 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2E9B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2E9F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2EA2 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2EA5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2EA8 _ 8B. 55, F4
        add     edx, 2                                  ; 2EAB _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2EAE _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2EB2 _ B8, 00000000
        jmp     ?_148                                   ; 2EB7 _ E9, 000000C0

?_143:  mov     eax, dword [ebp+8H]                     ; 2EBC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EBF _ 8B. 00
        cmp     eax, 4095                               ; 2EC1 _ 3D, 00000FFF
        jg      ?_147                                   ; 2EC6 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2ECC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2ECF _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2ED1 _ 89. 45, F8
        jmp     ?_145                                   ; 2ED4 _ EB, 28

?_144:  mov     eax, dword [ebp-8H]                     ; 2ED6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2ED9 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2EDC _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2EDF _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2EE2 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2EE5 _ 8B. 45, 08
        add     edx, 2                                  ; 2EE8 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2EEB _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2EEE _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2EF0 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2EF3 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2EF6 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2EFA _ 83. 6D, F8, 01
?_145:  mov     eax, dword [ebp-8H]                     ; 2EFE _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2F01 _ 3B. 45, F4
        jg      ?_144                                   ; 2F04 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2F06 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F09 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2F0B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F0E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2F11 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F13 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F16 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F19 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F1C _ 8B. 00
        cmp     edx, eax                                ; 2F1E _ 39. C2
        jge     ?_146                                   ; 2F20 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2F22 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2F25 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2F27 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F2A _ 89. 50, 04
?_146:  mov     eax, dword [ebp+8H]                     ; 2F2D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F30 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2F33 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2F36 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2F39 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2F3C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F3F _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2F42 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2F45 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2F48 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2F4C _ B8, 00000000
        jmp     ?_148                                   ; 2F51 _ EB, 29

?_147:  mov     eax, dword [ebp+8H]                     ; 2F53 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F56 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2F59 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F5C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2F5F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2F62 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F65 _ 8B. 40, 08
        mov     edx, eax                                ; 2F68 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2F6A _ 8B. 45, 10
        add     eax, edx                                ; 2F6D _ 01. D0
        mov     edx, eax                                ; 2F6F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F71 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2F74 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2F77 _ B8, FFFFFFFF
?_148:  add     esp, 16                                 ; 2F7C _ 83. C4, 10
        pop     ebx                                     ; 2F7F _ 5B
        pop     ebp                                     ; 2F80 _ 5D
        ret                                             ; 2F81 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2F82 _ 55
        mov     ebp, esp                                ; 2F83 _ 89. E5
        sub     esp, 16                                 ; 2F85 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2F88 _ 8B. 45, 10
        add     eax, 4095                               ; 2F8B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2F90 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2F95 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2F98 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2F9B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2F9E _ FF. 75, 08
        call    memman_free                             ; 2FA1 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2FA6 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2FA9 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2FAC _ 8B. 45, FC
        leave                                           ; 2FAF _ C9
        ret                                             ; 2FB0 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2FB1 _ 55
        mov     ebp, esp                                ; 2FB2 _ 89. E5
        sub     esp, 24                                 ; 2FB4 _ 83. EC, 18
        sub     esp, 8                                  ; 2FB7 _ 83. EC, 08
        push    9232                                    ; 2FBA _ 68, 00002410
        push    dword [ebp+8H]                          ; 2FBF _ FF. 75, 08
        call    memman_alloc_4K                         ; 2FC2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FC7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2FCA _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2FCD _ 83. 7D, F4, 00
        jnz     ?_149                                   ; 2FD1 _ 75, 0A
        mov     eax, 0                                  ; 2FD3 _ B8, 00000000
        jmp     ?_153                                   ; 2FD8 _ E9, 0000009A

?_149:  mov     eax, dword [ebp+10H]                    ; 2FDD _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2FE0 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2FE4 _ 83. EC, 08
        push    eax                                     ; 2FE7 _ 50
        push    dword [ebp+8H]                          ; 2FE8 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2FEB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2FF0 _ 83. C4, 10
        mov     edx, eax                                ; 2FF3 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2FF5 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2FF8 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2FFB _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2FFE _ 8B. 40, 04
        test    eax, eax                                ; 3001 _ 85. C0
        jnz     ?_150                                   ; 3003 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 3005 _ 8B. 45, F4
        sub     esp, 4                                  ; 3008 _ 83. EC, 04
        push    9232                                    ; 300B _ 68, 00002410
        push    eax                                     ; 3010 _ 50
        push    dword [ebp+8H]                          ; 3011 _ FF. 75, 08
        call    memman_free_4K                          ; 3014 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3019 _ 83. C4, 10
        mov     eax, 0                                  ; 301C _ B8, 00000000
        jmp     ?_153                                   ; 3021 _ EB, 54

?_150:  mov     eax, dword [ebp-0CH]                    ; 3023 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 3026 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3029 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 302B _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 302E _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3031 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3034 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 3037 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 303A _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 303D _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 3040 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 3047 _ C7. 45, F0, 00000000
        jmp     ?_152                                   ; 304E _ EB, 1B

?_151:  mov     eax, dword [ebp-0CH]                    ; 3050 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 3053 _ 8B. 55, F0
        add     edx, 33                                 ; 3056 _ 83. C2, 21
        shl     edx, 5                                  ; 3059 _ C1. E2, 05
        add     eax, edx                                ; 305C _ 01. D0
        add     eax, 16                                 ; 305E _ 83. C0, 10
        mov     dword [eax], 0                          ; 3061 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 3067 _ 83. 45, F0, 01
?_152:  cmp     dword [ebp-10H], 255                    ; 306B _ 81. 7D, F0, 000000FF
        jle     ?_151                                   ; 3072 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 3074 _ 8B. 45, F4
?_153:  leave                                           ; 3077 _ C9
        ret                                             ; 3078 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 3079 _ 55
        mov     ebp, esp                                ; 307A _ 89. E5
        sub     esp, 16                                 ; 307C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 307F _ C7. 45, F8, 00000000
        jmp     ?_156                                   ; 3086 _ EB, 4B

?_154:  mov     eax, dword [ebp+8H]                     ; 3088 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 308B _ 8B. 55, F8
        add     edx, 33                                 ; 308E _ 83. C2, 21
        shl     edx, 5                                  ; 3091 _ C1. E2, 05
        add     eax, edx                                ; 3094 _ 01. D0
        add     eax, 16                                 ; 3096 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 3099 _ 8B. 00
        test    eax, eax                                ; 309B _ 85. C0
        jnz     ?_155                                   ; 309D _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 309F _ 8B. 45, F8
        shl     eax, 5                                  ; 30A2 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 30A5 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 30AB _ 8B. 45, 08
        add     eax, edx                                ; 30AE _ 01. D0
        add     eax, 4                                  ; 30B0 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 30B3 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 30B6 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 30B9 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 30C0 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 30C3 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 30CA _ 8B. 45, FC
        jmp     ?_157                                   ; 30CD _ EB, 12

?_155:  add     dword [ebp-8H], 1                       ; 30CF _ 83. 45, F8, 01
?_156:  cmp     dword [ebp-8H], 255                     ; 30D3 _ 81. 7D, F8, 000000FF
        jle     ?_154                                   ; 30DA _ 7E, AC
        mov     eax, 0                                  ; 30DC _ B8, 00000000
?_157:  leave                                           ; 30E1 _ C9
        ret                                             ; 30E2 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 30E3 _ 55
        mov     ebp, esp                                ; 30E4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30E6 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30E9 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 30EC _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30EE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 30F1 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 30F4 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30F7 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 30FA _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 30FD _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3100 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3103 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 3106 _ 89. 50, 14
        nop                                             ; 3109 _ 90
        pop     ebp                                     ; 310A _ 5D
        ret                                             ; 310B _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 310C _ 55
        mov     ebp, esp                                ; 310D _ 89. E5
        push    esi                                     ; 310F _ 56
        push    ebx                                     ; 3110 _ 53
        sub     esp, 32                                 ; 3111 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 3114 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3117 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 311A _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 311D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3120 _ 8B. 40, 10
        add     eax, 1                                  ; 3123 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3126 _ 39. 45, 10
        jle     ?_158                                   ; 3129 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 312B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 312E _ 8B. 40, 10
        add     eax, 1                                  ; 3131 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 3134 _ 89. 45, 10
?_158:  cmp     dword [ebp+10H], -1                     ; 3137 _ 83. 7D, 10, FF
        jge     ?_159                                   ; 313B _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 313D _ C7. 45, 10, FFFFFFFF
?_159:  mov     eax, dword [ebp+0CH]                    ; 3144 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3147 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 314A _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 314D _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 3150 _ 3B. 45, 10
        jle     ?_166                                   ; 3153 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 3159 _ 83. 7D, 10, 00
        js      ?_162                                   ; 315D _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 3163 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 3166 _ 89. 45, E4
        jmp     ?_161                                   ; 3169 _ EB, 34

?_160:  mov     eax, dword [ebp-1CH]                    ; 316B _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 316E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3171 _ 8B. 45, 08
        add     edx, 4                                  ; 3174 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3177 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 317B _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 317E _ 8B. 4D, E4
        add     ecx, 4                                  ; 3181 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3184 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 3188 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 318B _ 8B. 55, E4
        add     edx, 4                                  ; 318E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3191 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3195 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3198 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 319B _ 83. 6D, E4, 01
?_161:  mov     eax, dword [ebp-1CH]                    ; 319F _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 31A2 _ 3B. 45, 10
        jg      ?_160                                   ; 31A5 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 31A7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 31AA _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 31AD _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 31B0 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 31B3 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 31B7 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 31BA _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 31BD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 31C0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 31C3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 31C6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 31C9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 31CC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 31CF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 31D2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 31D5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 31D8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 31DB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 31DE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 31E1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 31E4 _ 8B. 40, 0C
        sub     esp, 8                                  ; 31E7 _ 83. EC, 08
        push    esi                                     ; 31EA _ 56
        push    ebx                                     ; 31EB _ 53
        push    ecx                                     ; 31EC _ 51
        push    edx                                     ; 31ED _ 52
        push    eax                                     ; 31EE _ 50
        push    dword [ebp+8H]                          ; 31EF _ FF. 75, 08
        call    sheet_refreshmap                        ; 31F2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 31F7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 31FA _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 31FD _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3200 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3203 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3206 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3209 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 320C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 320F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3212 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3215 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3218 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 321B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 321E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3221 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3224 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3227 _ 8B. 40, 0C
        sub     esp, 4                                  ; 322A _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 322D _ FF. 75, F4
        push    esi                                     ; 3230 _ 56
        push    ebx                                     ; 3231 _ 53
        push    ecx                                     ; 3232 _ 51
        push    edx                                     ; 3233 _ 52
        push    eax                                     ; 3234 _ 50
        push    dword [ebp+8H]                          ; 3235 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3238 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 323D _ 83. C4, 20
        jmp     ?_173                                   ; 3240 _ E9, 00000244

?_162:  mov     eax, dword [ebp+8H]                     ; 3245 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3248 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 324B _ 39. 45, F4
        jge     ?_165                                   ; 324E _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 3250 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 3253 _ 89. 45, E8
        jmp     ?_164                                   ; 3256 _ EB, 34

?_163:  mov     eax, dword [ebp-18H]                    ; 3258 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 325B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 325E _ 8B. 45, 08
        add     edx, 4                                  ; 3261 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3264 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 3268 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 326B _ 8B. 4D, E8
        add     ecx, 4                                  ; 326E _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3271 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 3275 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 3278 _ 8B. 55, E8
        add     edx, 4                                  ; 327B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 327E _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 3282 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 3285 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 3288 _ 83. 45, E8, 01
?_164:  mov     eax, dword [ebp+8H]                     ; 328C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 328F _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 3292 _ 39. 45, E8
        jl      ?_163                                   ; 3295 _ 7C, C1
?_165:  mov     eax, dword [ebp+8H]                     ; 3297 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 329A _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 329D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 32A0 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 32A3 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32A6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32A9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32AC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 32AF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 32B2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 32B5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 32B8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 32BB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 32BE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 32C1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 32C4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32C7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32CA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 32CD _ 8B. 40, 0C
        sub     esp, 8                                  ; 32D0 _ 83. EC, 08
        push    0                                       ; 32D3 _ 6A, 00
        push    ebx                                     ; 32D5 _ 53
        push    ecx                                     ; 32D6 _ 51
        push    edx                                     ; 32D7 _ 52
        push    eax                                     ; 32D8 _ 50
        push    dword [ebp+8H]                          ; 32D9 _ FF. 75, 08
        call    sheet_refreshmap                        ; 32DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 32E1 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 32E4 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 32E7 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 32EA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32ED _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32F0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 32F3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 32F6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 32F9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 32FC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 32FF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3302 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3305 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3308 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 330B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 330E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3311 _ 8B. 40, 0C
        sub     esp, 4                                  ; 3314 _ 83. EC, 04
        push    esi                                     ; 3317 _ 56
        push    0                                       ; 3318 _ 6A, 00
        push    ebx                                     ; 331A _ 53
        push    ecx                                     ; 331B _ 51
        push    edx                                     ; 331C _ 52
        push    eax                                     ; 331D _ 50
        push    dword [ebp+8H]                          ; 331E _ FF. 75, 08
        call    sheet_refresh_new                       ; 3321 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3326 _ 83. C4, 20
        jmp     ?_173                                   ; 3329 _ E9, 0000015B

?_166:  mov     eax, dword [ebp-0CH]                    ; 332E _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 3331 _ 3B. 45, 10
        jge     ?_173                                   ; 3334 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 333A _ 83. 7D, F4, 00
        js      ?_169                                   ; 333E _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 3340 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 3343 _ 89. 45, EC
        jmp     ?_168                                   ; 3346 _ EB, 34

?_167:  mov     eax, dword [ebp-14H]                    ; 3348 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 334B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 334E _ 8B. 45, 08
        add     edx, 4                                  ; 3351 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3354 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 3358 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 335B _ 8B. 4D, EC
        add     ecx, 4                                  ; 335E _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3361 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 3365 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 3368 _ 8B. 55, EC
        add     edx, 4                                  ; 336B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 336E _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 3372 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 3375 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 3378 _ 83. 45, EC, 01
?_168:  mov     eax, dword [ebp-14H]                    ; 337C _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 337F _ 3B. 45, 10
        jl      ?_167                                   ; 3382 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 3384 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3387 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 338A _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 338D _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 3390 _ 89. 54 88, 04
        jmp     ?_172                                   ; 3394 _ EB, 72

?_169:  cmp     dword [ebp-0CH], 0                      ; 3396 _ 83. 7D, F4, 00
        jns     ?_172                                   ; 339A _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 339C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 339F _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 33A2 _ 89. 45, F0
        jmp     ?_171                                   ; 33A5 _ EB, 3A

?_170:  mov     eax, dword [ebp-10H]                    ; 33A7 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 33AA _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 33AD _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 33B0 _ 8B. 55, F0
        add     edx, 4                                  ; 33B3 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 33B6 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 33BA _ 8B. 45, 08
        add     ecx, 4                                  ; 33BD _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 33C0 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 33C4 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 33C7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 33CA _ 8B. 45, 08
        add     edx, 4                                  ; 33CD _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 33D0 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 33D4 _ 8B. 55, F0
        add     edx, 1                                  ; 33D7 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 33DA _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 33DD _ 83. 6D, F0, 01
?_171:  mov     eax, dword [ebp-10H]                    ; 33E1 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 33E4 _ 3B. 45, 10
        jge     ?_170                                   ; 33E7 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 33E9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 33EC _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 33EF _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 33F2 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 33F5 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 33F9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 33FC _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 33FF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3402 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3405 _ 89. 50, 10
?_172:  mov     eax, dword [ebp+0CH]                    ; 3408 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 340B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 340E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3411 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3414 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3417 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 341A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 341D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3420 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3423 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3426 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3429 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 342C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 342F _ 8B. 40, 0C
        sub     esp, 8                                  ; 3432 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 3435 _ FF. 75, 10
        push    ebx                                     ; 3438 _ 53
        push    ecx                                     ; 3439 _ 51
        push    edx                                     ; 343A _ 52
        push    eax                                     ; 343B _ 50
        push    dword [ebp+8H]                          ; 343C _ FF. 75, 08
        call    sheet_refreshmap                        ; 343F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3444 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3447 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 344A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 344D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3450 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3453 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3456 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3459 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 345C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 345F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3462 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3465 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3468 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 346B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 346E _ 8B. 40, 0C
        sub     esp, 4                                  ; 3471 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 3474 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 3477 _ FF. 75, 10
        push    ebx                                     ; 347A _ 53
        push    ecx                                     ; 347B _ 51
        push    edx                                     ; 347C _ 52
        push    eax                                     ; 347D _ 50
        push    dword [ebp+8H]                          ; 347E _ FF. 75, 08
        call    sheet_refresh_new                       ; 3481 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3486 _ 83. C4, 20
?_173:  nop                                             ; 3489 _ 90
        lea     esp, [ebp-8H]                           ; 348A _ 8D. 65, F8
        pop     ebx                                     ; 348D _ 5B
        pop     esi                                     ; 348E _ 5E
        pop     ebp                                     ; 348F _ 5D
        ret                                             ; 3490 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 3491 _ 55
        mov     ebp, esp                                ; 3492 _ 89. E5
        push    edi                                     ; 3494 _ 57
        push    esi                                     ; 3495 _ 56
        push    ebx                                     ; 3496 _ 53
        sub     esp, 28                                 ; 3497 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 349A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 349D _ 8B. 40, 18
        test    eax, eax                                ; 34A0 _ 85. C0
        js      ?_174                                   ; 34A2 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 34A4 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 34A7 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 34AA _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 34AD _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 34B0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34B3 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 34B6 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 34B9 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 34BC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34BF _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 34C2 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 34C5 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 34C8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34CB _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 34CE _ 8B. 45, 14
        add     edx, eax                                ; 34D1 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 34D3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 34D6 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 34D9 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 34DC _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 34DF _ 03. 45, E4
        sub     esp, 4                                  ; 34E2 _ 83. EC, 04
        push    ebx                                     ; 34E5 _ 53
        push    ecx                                     ; 34E6 _ 51
        push    edi                                     ; 34E7 _ 57
        push    esi                                     ; 34E8 _ 56
        push    edx                                     ; 34E9 _ 52
        push    eax                                     ; 34EA _ 50
        push    dword [ebp+8H]                          ; 34EB _ FF. 75, 08
        call    sheet_refresh_new                       ; 34EE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 34F3 _ 83. C4, 20
?_174:  mov     eax, 0                                  ; 34F6 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 34FB _ 8D. 65, F4
        pop     ebx                                     ; 34FE _ 5B
        pop     esi                                     ; 34FF _ 5E
        pop     edi                                     ; 3500 _ 5F
        pop     ebp                                     ; 3501 _ 5D
        ret                                             ; 3502 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 3503 _ 55
        mov     ebp, esp                                ; 3504 _ 89. E5
        push    esi                                     ; 3506 _ 56
        push    ebx                                     ; 3507 _ 53
        sub     esp, 16                                 ; 3508 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 350B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 350E _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 3511 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 3514 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3517 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 351A _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 351D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3520 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3523 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3526 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3529 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 352C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 352F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3532 _ 8B. 40, 18
        test    eax, eax                                ; 3535 _ 85. C0
        js      ?_175                                   ; 3537 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 353D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3540 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3543 _ 8B. 45, F4
        add     edx, eax                                ; 3546 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3548 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 354B _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 354E _ 8B. 45, F0
        add     eax, ecx                                ; 3551 _ 01. C8
        sub     esp, 8                                  ; 3553 _ 83. EC, 08
        push    0                                       ; 3556 _ 6A, 00
        push    edx                                     ; 3558 _ 52
        push    eax                                     ; 3559 _ 50
        push    dword [ebp-0CH]                         ; 355A _ FF. 75, F4
        push    dword [ebp-10H]                         ; 355D _ FF. 75, F0
        push    dword [ebp+8H]                          ; 3560 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3563 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3568 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 356B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 356E _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 3571 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 3574 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 3577 _ 8B. 55, 14
        add     ecx, edx                                ; 357A _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 357C _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 357F _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 3582 _ 8B. 55, 10
        add     edx, ebx                                ; 3585 _ 01. DA
        sub     esp, 8                                  ; 3587 _ 83. EC, 08
        push    eax                                     ; 358A _ 50
        push    ecx                                     ; 358B _ 51
        push    edx                                     ; 358C _ 52
        push    dword [ebp+14H]                         ; 358D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3590 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3593 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3596 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 359B _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 359E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 35A1 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 35A4 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 35A7 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 35AA _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 35AD _ 8B. 45, F4
        add     edx, eax                                ; 35B0 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 35B2 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 35B5 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 35B8 _ 8B. 45, F0
        add     eax, ebx                                ; 35BB _ 01. D8
        sub     esp, 4                                  ; 35BD _ 83. EC, 04
        push    ecx                                     ; 35C0 _ 51
        push    0                                       ; 35C1 _ 6A, 00
        push    edx                                     ; 35C3 _ 52
        push    eax                                     ; 35C4 _ 50
        push    dword [ebp-0CH]                         ; 35C5 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 35C8 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 35CB _ FF. 75, 08
        call    sheet_refresh_new                       ; 35CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 35D3 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 35D6 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 35D9 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 35DC _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 35DF _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 35E2 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 35E5 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 35E8 _ 8B. 4D, 14
        add     ebx, ecx                                ; 35EB _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 35ED _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 35F0 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 35F3 _ 8B. 4D, 10
        add     ecx, esi                                ; 35F6 _ 01. F1
        sub     esp, 4                                  ; 35F8 _ 83. EC, 04
        push    edx                                     ; 35FB _ 52
        push    eax                                     ; 35FC _ 50
        push    ebx                                     ; 35FD _ 53
        push    ecx                                     ; 35FE _ 51
        push    dword [ebp+14H]                         ; 35FF _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3602 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3605 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3608 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 360D _ 83. C4, 20
?_175:  nop                                             ; 3610 _ 90
        lea     esp, [ebp-8H]                           ; 3611 _ 8D. 65, F8
        pop     ebx                                     ; 3614 _ 5B
        pop     esi                                     ; 3615 _ 5E
        pop     ebp                                     ; 3616 _ 5D
        ret                                             ; 3617 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 3618 _ 55
        mov     ebp, esp                                ; 3619 _ 89. E5
        sub     esp, 48                                 ; 361B _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 361E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3621 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 3623 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 3626 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3629 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 362C _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 362F _ 83. 7D, 0C, 00
        jns     ?_176                                   ; 3633 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3635 _ C7. 45, 0C, 00000000
?_176:  cmp     dword [ebp+10H], 8                      ; 363C _ 83. 7D, 10, 08
        jg      ?_177                                   ; 3640 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3642 _ C7. 45, 10, 00000000
?_177:  mov     eax, dword [ebp+8H]                     ; 3649 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 364C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 364F _ 39. 45, 14
        jle     ?_178                                   ; 3652 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3654 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3657 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 365A _ 89. 45, 14
?_178:  mov     eax, dword [ebp+8H]                     ; 365D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3660 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3663 _ 39. 45, 18
        jle     ?_179                                   ; 3666 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3668 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 366B _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 366E _ 89. 45, 18
?_179:  mov     eax, dword [ebp+1CH]                    ; 3671 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 3674 _ 89. 45, DC
        jmp     ?_186                                   ; 3677 _ E9, 00000118

?_180:  mov     eax, dword [ebp+8H]                     ; 367C _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 367F _ 8B. 55, DC
        add     edx, 4                                  ; 3682 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3685 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3689 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 368C _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 368F _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3691 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3694 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3697 _ 8B. 55, 08
        add     edx, 1044                               ; 369A _ 81. C2, 00000414
        sub     eax, edx                                ; 36A0 _ 29. D0
        sar     eax, 5                                  ; 36A2 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 36A5 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 36A8 _ C7. 45, E0, 00000000
        jmp     ?_185                                   ; 36AF _ E9, 000000CD

?_181:  mov     eax, dword [ebp-10H]                    ; 36B4 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 36B7 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 36BA _ 8B. 45, E0
        add     eax, edx                                ; 36BD _ 01. D0
        mov     dword [ebp-8H], eax                     ; 36BF _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 36C2 _ C7. 45, E4, 00000000
        jmp     ?_184                                   ; 36C9 _ E9, 000000A0

?_182:  mov     eax, dword [ebp-10H]                    ; 36CE _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 36D1 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 36D4 _ 8B. 45, E4
        add     eax, edx                                ; 36D7 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 36D9 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 36DC _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 36DF _ 3B. 45, FC
        jg      ?_183                                   ; 36E2 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 36E8 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 36EB _ 3B. 45, 14
        jge     ?_183                                   ; 36EE _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 36F0 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 36F3 _ 3B. 45, F8
        jg      ?_183                                   ; 36F6 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 36F8 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 36FB _ 3B. 45, 18
        jge     ?_183                                   ; 36FE _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 3700 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3703 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 3706 _ 0F AF. 45, E0
        mov     edx, eax                                ; 370A _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 370C _ 8B. 45, E4
        add     eax, edx                                ; 370F _ 01. D0
        mov     edx, eax                                ; 3711 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3713 _ 8B. 45, F4
        add     eax, edx                                ; 3716 _ 01. D0
        movzx   eax, byte [eax]                         ; 3718 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 371B _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 371E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3721 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3724 _ 0F AF. 45, F8
        mov     edx, eax                                ; 3728 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 372A _ 8B. 45, FC
        add     eax, edx                                ; 372D _ 01. D0
        mov     edx, eax                                ; 372F _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3731 _ 8B. 45, EC
        add     eax, edx                                ; 3734 _ 01. D0
        movzx   eax, byte [eax]                         ; 3736 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 3739 _ 38. 45, DA
        jnz     ?_183                                   ; 373C _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 373E _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 3742 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3745 _ 8B. 40, 14
        cmp     edx, eax                                ; 3748 _ 39. C2
        jz      ?_183                                   ; 374A _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 374C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 374F _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3752 _ 0F AF. 45, F8
        mov     edx, eax                                ; 3756 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3758 _ 8B. 45, FC
        add     eax, edx                                ; 375B _ 01. D0
        mov     edx, eax                                ; 375D _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 375F _ 8B. 45, E8
        add     edx, eax                                ; 3762 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3764 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3768 _ 88. 02
?_183:  add     dword [ebp-1CH], 1                      ; 376A _ 83. 45, E4, 01
?_184:  mov     eax, dword [ebp-10H]                    ; 376E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3771 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 3774 _ 39. 45, E4
        jl      ?_182                                   ; 3777 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 377D _ 83. 45, E0, 01
?_185:  mov     eax, dword [ebp-10H]                    ; 3781 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3784 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 3787 _ 39. 45, E0
        jl      ?_181                                   ; 378A _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 3790 _ 83. 45, DC, 01
?_186:  mov     eax, dword [ebp-24H]                    ; 3794 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 3797 _ 3B. 45, 20
        jle     ?_180                                   ; 379A _ 0F 8E, FFFFFEDC
        nop                                             ; 37A0 _ 90
        leave                                           ; 37A1 _ C9
        ret                                             ; 37A2 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 37A3 _ 55
        mov     ebp, esp                                ; 37A4 _ 89. E5
        sub     esp, 64                                 ; 37A6 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 37A9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 37AC _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 37AF _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 37B2 _ 83. 7D, 0C, 00
        jns     ?_187                                   ; 37B6 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 37B8 _ C7. 45, 0C, 00000000
?_187:  mov     eax, dword [ebp+8H]                     ; 37BF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 37C2 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 37C5 _ 39. 45, 0C
        jle     ?_188                                   ; 37C8 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 37CA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 37CD _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 37D0 _ 89. 45, 0C
?_188:  cmp     dword [ebp+10H], 0                      ; 37D3 _ 83. 7D, 10, 00
        jns     ?_189                                   ; 37D7 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 37D9 _ C7. 45, 10, 00000000
?_189:  mov     eax, dword [ebp+8H]                     ; 37E0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37E3 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 37E6 _ 39. 45, 10
        jle     ?_190                                   ; 37E9 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 37EB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37EE _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 37F1 _ 89. 45, 10
?_190:  mov     eax, dword [ebp+1CH]                    ; 37F4 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 37F7 _ 89. 45, E0
        jmp     ?_201                                   ; 37FA _ E9, 00000140

?_191:  mov     eax, dword [ebp+8H]                     ; 37FF _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 3802 _ 8B. 55, E0
        add     edx, 4                                  ; 3805 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3808 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 380C _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 380F _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3812 _ 8B. 55, 08
        add     edx, 1044                               ; 3815 _ 81. C2, 00000414
        sub     eax, edx                                ; 381B _ 29. D0
        sar     eax, 5                                  ; 381D _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 3820 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 3823 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3826 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3828 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 382B _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 382E _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3831 _ 8B. 55, 0C
        sub     edx, eax                                ; 3834 _ 29. C2
        mov     eax, edx                                ; 3836 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 3838 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 383B _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 383E _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3841 _ 8B. 55, 10
        sub     edx, eax                                ; 3844 _ 29. C2
        mov     eax, edx                                ; 3846 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 3848 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 384B _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 384E _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3851 _ 8B. 55, 14
        sub     edx, eax                                ; 3854 _ 29. C2
        mov     eax, edx                                ; 3856 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 3858 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 385B _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 385E _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3861 _ 8B. 55, 18
        sub     edx, eax                                ; 3864 _ 29. C2
        mov     eax, edx                                ; 3866 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 3868 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 386B _ 83. 7D, D0, 00
        jns     ?_192                                   ; 386F _ 79, 07
        mov     dword [ebp-30H], 0                      ; 3871 _ C7. 45, D0, 00000000
?_192:  cmp     dword [ebp-2CH], 0                      ; 3878 _ 83. 7D, D4, 00
        jns     ?_193                                   ; 387C _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 387E _ C7. 45, D4, 00000000
?_193:  mov     eax, dword [ebp-10H]                    ; 3885 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3888 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 388B _ 39. 45, D8
        jle     ?_194                                   ; 388E _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3890 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3893 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 3896 _ 89. 45, D8
?_194:  mov     eax, dword [ebp-10H]                    ; 3899 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 389C _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 389F _ 39. 45, DC
        jle     ?_195                                   ; 38A2 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 38A4 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 38A7 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 38AA _ 89. 45, DC
?_195:  mov     eax, dword [ebp-2CH]                    ; 38AD _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 38B0 _ 89. 45, E4
        jmp     ?_200                                   ; 38B3 _ EB, 7A

?_196:  mov     eax, dword [ebp-10H]                    ; 38B5 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 38B8 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 38BB _ 8B. 45, E4
        add     eax, edx                                ; 38BE _ 01. D0
        mov     dword [ebp-8H], eax                     ; 38C0 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 38C3 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 38C6 _ 89. 45, E8
        jmp     ?_199                                   ; 38C9 _ EB, 58

?_197:  mov     eax, dword [ebp-10H]                    ; 38CB _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 38CE _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 38D1 _ 8B. 45, E8
        add     eax, edx                                ; 38D4 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 38D6 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 38D9 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 38DC _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 38DF _ 0F AF. 45, E4
        mov     edx, eax                                ; 38E3 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 38E5 _ 8B. 45, E8
        add     eax, edx                                ; 38E8 _ 01. D0
        mov     edx, eax                                ; 38EA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 38EC _ 8B. 45, F4
        add     eax, edx                                ; 38EF _ 01. D0
        movzx   eax, byte [eax]                         ; 38F1 _ 0F B6. 00
        movzx   edx, al                                 ; 38F4 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 38F7 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 38FA _ 8B. 40, 14
        cmp     edx, eax                                ; 38FD _ 39. C2
        jz      ?_198                                   ; 38FF _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3901 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3904 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3907 _ 0F AF. 45, F8
        mov     edx, eax                                ; 390B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 390D _ 8B. 45, FC
        add     eax, edx                                ; 3910 _ 01. D0
        mov     edx, eax                                ; 3912 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3914 _ 8B. 45, EC
        add     edx, eax                                ; 3917 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 3919 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 391D _ 88. 02
?_198:  add     dword [ebp-18H], 1                      ; 391F _ 83. 45, E8, 01
?_199:  mov     eax, dword [ebp-18H]                    ; 3923 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 3926 _ 3B. 45, D8
        jl      ?_197                                   ; 3929 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 392B _ 83. 45, E4, 01
?_200:  mov     eax, dword [ebp-1CH]                    ; 392F _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 3932 _ 3B. 45, DC
        jl      ?_196                                   ; 3935 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 393B _ 83. 45, E0, 01
?_201:  mov     eax, dword [ebp+8H]                     ; 393F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3942 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3945 _ 39. 45, E0
        jle     ?_191                                   ; 3948 _ 0F 8E, FFFFFEB1
        nop                                             ; 394E _ 90
        leave                                           ; 394F _ C9
        ret                                             ; 3950 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 3951 _ 55
        mov     ebp, esp                                ; 3952 _ 89. E5
        sub     esp, 24                                 ; 3954 _ 83. EC, 18
        sub     esp, 8                                  ; 3957 _ 83. EC, 08
        push    52                                      ; 395A _ 6A, 34
        push    67                                      ; 395C _ 6A, 43
        call    io_out8                                 ; 395E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3963 _ 83. C4, 10
        sub     esp, 8                                  ; 3966 _ 83. EC, 08
        push    156                                     ; 3969 _ 68, 0000009C
        push    64                                      ; 396E _ 6A, 40
        call    io_out8                                 ; 3970 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3975 _ 83. C4, 10
        sub     esp, 8                                  ; 3978 _ 83. EC, 08
        push    46                                      ; 397B _ 6A, 2E
        push    64                                      ; 397D _ 6A, 40
        call    io_out8                                 ; 397F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3984 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3987 _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3991 _ C7. 45, F4, 00000000
        jmp     ?_203                                   ; 3998 _ EB, 26

?_202:  mov     eax, dword [ebp-0CH]                    ; 399A _ 8B. 45, F4
        shl     eax, 4                                  ; 399D _ C1. E0, 04
        add     eax, ?_277                              ; 39A0 _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 39A5 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 39AB _ 8B. 45, F4
        shl     eax, 4                                  ; 39AE _ C1. E0, 04
        add     eax, ?_278                              ; 39B1 _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 39B6 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 39BC _ 83. 45, F4, 01
?_203:  cmp     dword [ebp-0CH], 499                    ; 39C0 _ 81. 7D, F4, 000001F3
        jle     ?_202                                   ; 39C7 _ 7E, D1
        nop                                             ; 39C9 _ 90
        leave                                           ; 39CA _ C9
        ret                                             ; 39CB _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 39CC _ 55
        mov     ebp, esp                                ; 39CD _ 89. E5
        sub     esp, 16                                 ; 39CF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 39D2 _ C7. 45, FC, 00000000
        jmp     ?_206                                   ; 39D9 _ EB, 36

?_204:  mov     eax, dword [ebp-4H]                     ; 39DB _ 8B. 45, FC
        shl     eax, 4                                  ; 39DE _ C1. E0, 04
        add     eax, ?_277                              ; 39E1 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 39E6 _ 8B. 00
        test    eax, eax                                ; 39E8 _ 85. C0
        jnz     ?_205                                   ; 39EA _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 39EC _ 8B. 45, FC
        shl     eax, 4                                  ; 39EF _ C1. E0, 04
        add     eax, ?_277                              ; 39F2 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 39F7 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 39FD _ 8B. 45, FC
        shl     eax, 4                                  ; 3A00 _ C1. E0, 04
        add     eax, timerctl                           ; 3A03 _ 05, 000002A0(d)
        add     eax, 4                                  ; 3A08 _ 83. C0, 04
        jmp     ?_207                                   ; 3A0B _ EB, 12

?_205:  add     dword [ebp-4H], 1                       ; 3A0D _ 83. 45, FC, 01
?_206:  cmp     dword [ebp-4H], 499                     ; 3A11 _ 81. 7D, FC, 000001F3
        jle     ?_204                                   ; 3A18 _ 7E, C1
        mov     eax, 0                                  ; 3A1A _ B8, 00000000
?_207:  leave                                           ; 3A1F _ C9
        ret                                             ; 3A20 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3A21 _ 55
        mov     ebp, esp                                ; 3A22 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3A24 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3A27 _ C7. 40, 04, 00000000
        nop                                             ; 3A2E _ 90
        pop     ebp                                     ; 3A2F _ 5D
        ret                                             ; 3A30 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3A31 _ 55
        mov     ebp, esp                                ; 3A32 _ 89. E5
        sub     esp, 4                                  ; 3A34 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3A37 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3A3A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3A3D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3A40 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3A43 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3A46 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3A49 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3A4D _ 88. 50, 0C
        nop                                             ; 3A50 _ 90
        leave                                           ; 3A51 _ C9
        ret                                             ; 3A52 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3A53 _ 55
        mov     ebp, esp                                ; 3A54 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3A56 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3A59 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3A5C _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3A5E _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3A61 _ C7. 40, 04, 00000002
        nop                                             ; 3A68 _ 90
        pop     ebp                                     ; 3A69 _ 5D
        ret                                             ; 3A6A _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3A6B _ 55
        mov     ebp, esp                                ; 3A6C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3A6E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3A71 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3A74 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3A76 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3A79 _ C7. 40, 04, 00000002
        nop                                             ; 3A80 _ 90
        pop     ebp                                     ; 3A81 _ 5D
        ret                                             ; 3A82 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 3A83 _ 55
        mov     ebp, esp                                ; 3A84 _ 89. E5
        mov     eax, timerctl                           ; 3A86 _ B8, 000002A0(d)
        pop     ebp                                     ; 3A8B _ 5D
        ret                                             ; 3A8C _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3A8D _ 55
        mov     ebp, esp                                ; 3A8E _ 89. E5
        push    ebx                                     ; 3A90 _ 53
        sub     esp, 20                                 ; 3A91 _ 83. EC, 14
        sub     esp, 8                                  ; 3A94 _ 83. EC, 08
        push    32                                      ; 3A97 _ 6A, 20
        push    32                                      ; 3A99 _ 6A, 20
        call    io_out8                                 ; 3A9B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3AA0 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 3AA3 _ A1, 000002A0(d)
        add     eax, 1                                  ; 3AA8 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3AAB _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 3AB0 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3AB7 _ C7. 45, F4, 00000000
        jmp     ?_211                                   ; 3ABE _ E9, 000000AD

?_208:  mov     eax, dword [ebp-0CH]                    ; 3AC3 _ 8B. 45, F4
        shl     eax, 4                                  ; 3AC6 _ C1. E0, 04
        add     eax, ?_277                              ; 3AC9 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3ACE _ 8B. 00
        cmp     eax, 2                                  ; 3AD0 _ 83. F8, 02
        jne     ?_209                                   ; 3AD3 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 3AD9 _ 8B. 45, F4
        shl     eax, 4                                  ; 3ADC _ C1. E0, 04
        add     eax, ?_276                              ; 3ADF _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3AE4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3AE6 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3AE9 _ 8B. 45, F4
        shl     eax, 4                                  ; 3AEC _ C1. E0, 04
        add     eax, ?_276                              ; 3AEF _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 3AF4 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3AF6 _ 8B. 45, F4
        shl     eax, 4                                  ; 3AF9 _ C1. E0, 04
        add     eax, ?_276                              ; 3AFC _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3B01 _ 8B. 00
        test    eax, eax                                ; 3B03 _ 85. C0
        jnz     ?_209                                   ; 3B05 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 3B07 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B0A _ C1. E0, 04
        add     eax, ?_277                              ; 3B0D _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3B12 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3B18 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B1B _ C1. E0, 04
        add     eax, ?_279                              ; 3B1E _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 3B23 _ 0F B6. 00
        movzx   edx, al                                 ; 3B26 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3B29 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B2C _ C1. E0, 04
        add     eax, ?_278                              ; 3B2F _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 3B34 _ 8B. 00
        sub     esp, 8                                  ; 3B36 _ 83. EC, 08
        push    edx                                     ; 3B39 _ 52
        push    eax                                     ; 3B3A _ 50
        call    fifo8_put                               ; 3B3B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B40 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3B43 _ 8B. 45, F4
        shl     eax, 4                                  ; 3B46 _ C1. E0, 04
        add     eax, timerctl                           ; 3B49 _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 3B4E _ 8D. 58, 04
        call    getTaskTimer                            ; 3B51 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3B56 _ 39. C3
        jnz     ?_209                                   ; 3B58 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3B5A _ C7. 45, F0, 00000001
?_209:  cmp     dword [ebp-10H], 1                      ; 3B61 _ 83. 7D, F0, 01
        jnz     ?_210                                   ; 3B65 _ 75, 05
        call    task_switch                             ; 3B67 _ E8, FFFFFFFC(rel)
?_210:  add     dword [ebp-0CH], 1                      ; 3B6C _ 83. 45, F4, 01
?_211:  cmp     dword [ebp-0CH], 499                    ; 3B70 _ 81. 7D, F4, 000001F3
        jle     ?_208                                   ; 3B77 _ 0F 8E, FFFFFF46
        nop                                             ; 3B7D _ 90
        mov     ebx, dword [ebp-4H]                     ; 3B7E _ 8B. 5D, FC
        leave                                           ; 3B81 _ C9
        ret                                             ; 3B82 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 3B83 _ 55
        mov     ebp, esp                                ; 3B84 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B86 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B89 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3B8C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3B8F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3B92 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3B95 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3B97 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B9A _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3B9D _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3BA0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3BA3 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3BAA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3BAD _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3BB4 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3BB7 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3BBE _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3BC1 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3BC4 _ 89. 50, 18
        nop                                             ; 3BC7 _ 90
        pop     ebp                                     ; 3BC8 _ 5D
        ret                                             ; 3BC9 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3BCA _ 55
        mov     ebp, esp                                ; 3BCB _ 89. E5
        sub     esp, 24                                 ; 3BCD _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3BD0 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3BD3 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3BD6 _ 83. 7D, 08, 00
        jnz     ?_212                                   ; 3BDA _ 75, 0A
        mov     eax, 4294967295                         ; 3BDC _ B8, FFFFFFFF
        jmp     ?_216                                   ; 3BE1 _ E9, 000000A0

?_212:  mov     eax, dword [ebp+8H]                     ; 3BE6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3BE9 _ 8B. 40, 10
        test    eax, eax                                ; 3BEC _ 85. C0
        jnz     ?_213                                   ; 3BEE _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3BF0 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3BF3 _ 8B. 40, 14
        or      eax, 01H                                ; 3BF6 _ 83. C8, 01
        mov     edx, eax                                ; 3BF9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3BFB _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3BFE _ 89. 50, 14
        mov     eax, 4294967295                         ; 3C01 _ B8, FFFFFFFF
        jmp     ?_216                                   ; 3C06 _ EB, 7E

?_213:  mov     eax, dword [ebp+8H]                     ; 3C08 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3C0B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3C0D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C10 _ 8B. 40, 08
        add     edx, eax                                ; 3C13 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3C15 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3C19 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3C1B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C1E _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3C21 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3C24 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3C27 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3C2A _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3C2D _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3C30 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C33 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3C36 _ 39. C2
        jl      ?_214                                   ; 3C38 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3C3A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3C3D _ C7. 40, 08, 00000000
?_214:  mov     eax, dword [ebp+8H]                     ; 3C44 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3C47 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3C4A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3C4D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3C50 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3C53 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3C56 _ 8B. 40, 18
        test    eax, eax                                ; 3C59 _ 85. C0
        jz      ?_215                                   ; 3C5B _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3C5D _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3C60 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3C63 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3C66 _ 83. F8, 02
        jz      ?_215                                   ; 3C69 _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3C6B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3C6E _ 8B. 40, 18
        sub     esp, 4                                  ; 3C71 _ 83. EC, 04
        push    0                                       ; 3C74 _ 6A, 00
        push    -1                                      ; 3C76 _ 6A, FF
        push    eax                                     ; 3C78 _ 50
        call    task_run                                ; 3C79 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C7E _ 83. C4, 10
?_215:  mov     eax, 1                                  ; 3C81 _ B8, 00000001
?_216:  leave                                           ; 3C86 _ C9
        ret                                             ; 3C87 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3C88 _ 55
        mov     ebp, esp                                ; 3C89 _ 89. E5
        sub     esp, 16                                 ; 3C8B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3C8E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3C91 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3C94 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C97 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3C9A _ 39. C2
        jnz     ?_217                                   ; 3C9C _ 75, 07
        mov     eax, 4294967295                         ; 3C9E _ B8, FFFFFFFF
        jmp     ?_219                                   ; 3CA3 _ EB, 51

?_217:  mov     eax, dword [ebp+8H]                     ; 3CA5 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3CA8 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3CAA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3CAD _ 8B. 40, 04
        add     eax, edx                                ; 3CB0 _ 01. D0
        movzx   eax, byte [eax]                         ; 3CB2 _ 0F B6. 00
        movzx   eax, al                                 ; 3CB5 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3CB8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3CBB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3CBE _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3CC1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3CC4 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3CC7 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3CCA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3CCD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3CD0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3CD3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3CD6 _ 39. C2
        jl      ?_218                                   ; 3CD8 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3CDA _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3CDD _ C7. 40, 04, 00000000
?_218:  mov     eax, dword [ebp+8H]                     ; 3CE4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3CE7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3CEA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3CED _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3CF0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3CF3 _ 8B. 45, FC
?_219:  leave                                           ; 3CF6 _ C9
        ret                                             ; 3CF7 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3CF8 _ 55
        mov     ebp, esp                                ; 3CF9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3CFB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3CFE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3D01 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3D04 _ 8B. 40, 10
        sub     edx, eax                                ; 3D07 _ 29. C2
        mov     eax, edx                                ; 3D09 _ 89. D0
        pop     ebp                                     ; 3D0B _ 5D
        ret                                             ; 3D0C _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3D0D _ 55
        mov     ebp, esp                                ; 3D0E _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3D10 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_220                                   ; 3D17 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3D19 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3D20 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3D23 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3D26 _ 89. 45, 0C
?_220:  mov     eax, dword [ebp+0CH]                    ; 3D29 _ 8B. 45, 0C
        mov     edx, eax                                ; 3D2C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3D2E _ 8B. 45, 08
        mov     word [eax], dx                          ; 3D31 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3D34 _ 8B. 45, 10
        mov     edx, eax                                ; 3D37 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3D39 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3D3C _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3D40 _ 8B. 45, 10
        sar     eax, 16                                 ; 3D43 _ C1. F8, 10
        mov     edx, eax                                ; 3D46 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3D48 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3D4B _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3D4E _ 8B. 45, 14
        mov     edx, eax                                ; 3D51 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3D53 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3D56 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3D59 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3D5C _ C1. E8, 10
        and     eax, 0FH                                ; 3D5F _ 83. E0, 0F
        mov     edx, eax                                ; 3D62 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3D64 _ 8B. 45, 14
        sar     eax, 8                                  ; 3D67 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3D6A _ 83. E0, F0
        or      eax, edx                                ; 3D6D _ 09. D0
        mov     edx, eax                                ; 3D6F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3D71 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3D74 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3D77 _ 8B. 45, 10
        shr     eax, 24                                 ; 3D7A _ C1. E8, 18
        mov     edx, eax                                ; 3D7D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3D7F _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3D82 _ 88. 50, 07
        nop                                             ; 3D85 _ 90
        pop     ebp                                     ; 3D86 _ 5D
        ret                                             ; 3D87 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3D88 _ 55
        mov     ebp, esp                                ; 3D89 _ 89. E5
        mov     eax, dword [task_timer]                 ; 3D8B _ A1, 000021E4(d)
        pop     ebp                                     ; 3D90 _ 5D
        ret                                             ; 3D91 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 3D92 _ 55
        mov     ebp, esp                                ; 3D93 _ 89. E5
        sub     esp, 16                                 ; 3D95 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3D98 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3D9E _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3DA1 _ 6B. C0, 1C
        add     eax, edx                                ; 3DA4 _ 01. D0
        add     eax, 8                                  ; 3DA6 _ 83. C0, 08
        mov     dword [eax], 0                          ; 3DA9 _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 3DAF _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3DB5 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3DB8 _ 6B. C0, 1C
        add     eax, edx                                ; 3DBB _ 01. D0
        add     eax, 12                                 ; 3DBD _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3DC0 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3DC6 _ C7. 45, FC, 00000000
        jmp     ?_222                                   ; 3DCD _ EB, 1A

?_221:  mov     eax, dword [taskctl]                    ; 3DCF _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3DD4 _ 8B. 55, FC
        shl     edx, 5                                  ; 3DD7 _ C1. E2, 05
        add     eax, edx                                ; 3DDA _ 01. D0
        add     eax, 16                                 ; 3DDC _ 83. C0, 10
        mov     dword [eax], 0                          ; 3DDF _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3DE5 _ 83. 45, FC, 01
?_222:  cmp     dword [ebp-4H], 4                       ; 3DE9 _ 83. 7D, FC, 04
        jle     ?_221                                   ; 3DED _ 7E, E0
        nop                                             ; 3DEF _ 90
        leave                                           ; 3DF0 _ C9
        ret                                             ; 3DF1 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3DF2 _ 55
        mov     ebp, esp                                ; 3DF3 _ 89. E5
        sub     esp, 24                                 ; 3DF5 _ 83. EC, 18
        call    get_addr_gdt                            ; 3DF8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3DFD _ 89. 45, F0
        sub     esp, 8                                  ; 3E00 _ 83. EC, 08
        push    692                                     ; 3E03 _ 68, 000002B4
        push    dword [ebp+8H]                          ; 3E08 _ FF. 75, 08
        call    memman_alloc_4K                         ; 3E0B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3E10 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3E13 _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 3E18 _ C7. 45, EC, 00000000
        jmp     ?_224                                   ; 3E1F _ EB, 73

?_223:  mov     edx, dword [taskctl]                    ; 3E21 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 3E27 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3E2A _ 6B. C0, 7C
        add     eax, edx                                ; 3E2D _ 01. D0
        add     eax, 96                                 ; 3E2F _ 83. C0, 60
        mov     dword [eax], 0                          ; 3E32 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3E38 _ 8B. 45, EC
        add     eax, 7                                  ; 3E3B _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3E3E _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 3E44 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3E4B _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3E4E _ 6B. C0, 7C
        add     eax, ecx                                ; 3E51 _ 01. C8
        add     eax, 92                                 ; 3E53 _ 83. C0, 5C
        mov     dword [eax], edx                        ; 3E56 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3E58 _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 3E5D _ 8B. 55, EC
        imul    edx, edx, 124                           ; 3E60 _ 6B. D2, 7C
        add     edx, 96                                 ; 3E63 _ 83. C2, 60
        add     eax, edx                                ; 3E66 _ 01. D0
        add     eax, 16                                 ; 3E68 _ 83. C0, 10
        mov     ecx, eax                                ; 3E6B _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 3E6D _ 8B. 45, EC
        add     eax, 7                                  ; 3E70 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3E73 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3E7A _ 8B. 45, F0
        add     eax, edx                                ; 3E7D _ 01. D0
        push    137                                     ; 3E7F _ 68, 00000089
        push    ecx                                     ; 3E84 _ 51
        push    103                                     ; 3E85 _ 6A, 67
        push    eax                                     ; 3E87 _ 50
        call    set_segmdesc                            ; 3E88 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3E8D _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3E90 _ 83. 45, EC, 01
?_224:  cmp     dword [ebp-14H], 4                      ; 3E94 _ 83. 7D, EC, 04
        jle     ?_223                                   ; 3E98 _ 7E, 87
        call    task_alloc                              ; 3E9A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3E9F _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3EA2 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3EA5 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3EAC _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 3EAF _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 3EB6 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3EB9 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 3EC0 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3EC3 _ FF. 75, F4
        call    task_add                                ; 3EC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3ECB _ 83. C4, 10
        call    task_switchsub                          ; 3ECE _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3ED3 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3ED6 _ 8B. 00
        sub     esp, 12                                 ; 3ED8 _ 83. EC, 0C
        push    eax                                     ; 3EDB _ 50
        call    load_tr                                 ; 3EDC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3EE1 _ 83. C4, 10
        call    timer_alloc                             ; 3EE4 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3EE9 _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 3EEE _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3EF1 _ 8B. 40, 08
        mov     edx, eax                                ; 3EF4 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3EF6 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3EFB _ 83. EC, 08
        push    edx                                     ; 3EFE _ 52
        push    eax                                     ; 3EFF _ 50
        call    timer_setTime                           ; 3F00 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3F05 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3F08 _ 8B. 45, F4
        leave                                           ; 3F0B _ C9
        ret                                             ; 3F0C _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3F0D _ 55
        mov     ebp, esp                                ; 3F0E _ 89. E5
        sub     esp, 16                                 ; 3F10 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3F13 _ C7. 45, F8, 00000000
        jmp     ?_227                                   ; 3F1A _ E9, 000000E1

?_225:  mov     edx, dword [taskctl]                    ; 3F1F _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 3F25 _ 8B. 45, F8
        imul    eax, eax, 124                           ; 3F28 _ 6B. C0, 7C
        add     eax, edx                                ; 3F2B _ 01. D0
        add     eax, 96                                 ; 3F2D _ 83. C0, 60
        mov     eax, dword [eax]                        ; 3F30 _ 8B. 00
        test    eax, eax                                ; 3F32 _ 85. C0
        jne     ?_226                                   ; 3F34 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3F3A _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 3F3F _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3F42 _ 6B. D2, 7C
        add     edx, 80                                 ; 3F45 _ 83. C2, 50
        add     eax, edx                                ; 3F48 _ 01. D0
        add     eax, 12                                 ; 3F4A _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 3F4D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3F50 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3F53 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3F5A _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3F5D _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 3F64 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3F67 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F6E _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3F71 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F78 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3F7B _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F82 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3F85 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F8C _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3F8F _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F96 _ 8B. 45, F8
        add     eax, 1                                  ; 3F99 _ 83. C0, 01
        shl     eax, 9                                  ; 3F9C _ C1. E0, 09
        mov     edx, eax                                ; 3F9F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3FA1 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 3FA4 _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 3FA7 _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3FAA _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FB1 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3FB4 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FBB _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3FBE _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FC5 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3FC8 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FCF _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3FD2 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FD9 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3FDC _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FE3 _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3FE6 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FED _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3FF0 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3FF7 _ 8B. 45, FC
        jmp     ?_228                                   ; 3FFA _ EB, 13

?_226:  add     dword [ebp-8H], 1                       ; 3FFC _ 83. 45, F8, 01
?_227:  cmp     dword [ebp-8H], 4                       ; 4000 _ 83. 7D, F8, 04
        jle     ?_225                                   ; 4004 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 400A _ B8, 00000000
?_228:  leave                                           ; 400F _ C9
        ret                                             ; 4010 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 4011 _ 55
        mov     ebp, esp                                ; 4012 _ 89. E5
        sub     esp, 8                                  ; 4014 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 4017 _ 83. 7D, 0C, 00
        jns     ?_229                                   ; 401B _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 401D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4020 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4023 _ 89. 45, 0C
?_229:  cmp     dword [ebp+10H], 0                      ; 4026 _ 83. 7D, 10, 00
        jle     ?_230                                   ; 402A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 402C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 402F _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4032 _ 89. 50, 08
?_230:  mov     eax, dword [ebp+8H]                     ; 4035 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4038 _ 8B. 40, 04
        cmp     eax, 2                                  ; 403B _ 83. F8, 02
        jnz     ?_231                                   ; 403E _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 4040 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4043 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 4046 _ 39. 45, 0C
        jz      ?_231                                   ; 4049 _ 74, 0E
        sub     esp, 12                                 ; 404B _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 404E _ FF. 75, 08
        call    task_remove                             ; 4051 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4056 _ 83. C4, 10
?_231:  mov     eax, dword [ebp+8H]                     ; 4059 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 405C _ 8B. 40, 04
        cmp     eax, 2                                  ; 405F _ 83. F8, 02
        jz      ?_232                                   ; 4062 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 4064 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4067 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 406A _ 89. 50, 0C
        sub     esp, 12                                 ; 406D _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4070 _ FF. 75, 08
        call    task_add                                ; 4073 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4078 _ 83. C4, 10
?_232:  mov     eax, dword [taskctl]                    ; 407B _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 4080 _ C7. 40, 04, 00000001
        nop                                             ; 4087 _ 90
        leave                                           ; 4088 _ C9
        ret                                             ; 4089 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 408A _ 55
        mov     ebp, esp                                ; 408B _ 89. E5
        sub     esp, 24                                 ; 408D _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 4090 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 4096 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 409B _ 8B. 00
        imul    eax, eax, 28                            ; 409D _ 6B. C0, 1C
        add     eax, edx                                ; 40A0 _ 01. D0
        add     eax, 8                                  ; 40A2 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 40A5 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 40A8 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 40AB _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 40AE _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 40B1 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 40B5 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 40B8 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 40BB _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 40BE _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 40C1 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 40C4 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 40C7 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 40CA _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 40CD _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 40D0 _ 8B. 00
        cmp     edx, eax                                ; 40D2 _ 39. C2
        jnz     ?_233                                   ; 40D4 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 40D6 _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 40D9 _ C7. 40, 04, 00000000
?_233:  mov     eax, dword [taskctl]                    ; 40E0 _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 40E5 _ 8B. 40, 04
        test    eax, eax                                ; 40E8 _ 85. C0
        jz      ?_234                                   ; 40EA _ 74, 1D
        call    task_switchsub                          ; 40EC _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 40F1 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 40F7 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 40FC _ 8B. 00
        imul    eax, eax, 28                            ; 40FE _ 6B. C0, 1C
        add     eax, edx                                ; 4101 _ 01. D0
        add     eax, 8                                  ; 4103 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 4106 _ 89. 45, EC
?_234:  mov     eax, dword [ebp-14H]                    ; 4109 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 410C _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 410F _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 4112 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 4116 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4119 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 411C _ 8B. 40, 08
        mov     edx, eax                                ; 411F _ 89. C2
        mov     eax, dword [task_timer]                 ; 4121 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 4126 _ 83. EC, 08
        push    edx                                     ; 4129 _ 52
        push    eax                                     ; 412A _ 50
        call    timer_setTime                           ; 412B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4130 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 4133 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 4136 _ 3B. 45, F0
        jz      ?_235                                   ; 4139 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 413B _ 83. 7D, F4, 00
        jz      ?_235                                   ; 413F _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 4141 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4144 _ 8B. 00
        sub     esp, 8                                  ; 4146 _ 83. EC, 08
        push    eax                                     ; 4149 _ 50
        push    0                                       ; 414A _ 6A, 00
        call    farjmp                                  ; 414C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4151 _ 83. C4, 10
        nop                                             ; 4154 _ 90
?_235:  nop                                             ; 4155 _ 90
        leave                                           ; 4156 _ C9
        ret                                             ; 4157 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 4158 _ 55
        mov     ebp, esp                                ; 4159 _ 89. E5
        sub     esp, 24                                 ; 415B _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 415E _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 4165 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 4169 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 416C _ 8B. 40, 04
        cmp     eax, 2                                  ; 416F _ 83. F8, 02
        jnz     ?_236                                   ; 4172 _ 75, 4C
        call    task_now                                ; 4174 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 4179 _ 89. 45, F4
        sub     esp, 12                                 ; 417C _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 417F _ FF. 75, 08
        call    task_remove                             ; 4182 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4187 _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 418A _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 418E _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 4191 _ 3B. 45, F4
        jnz     ?_236                                   ; 4194 _ 75, 2A
        call    task_switchsub                          ; 4196 _ E8, FFFFFFFC(rel)
        call    task_now                                ; 419B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 41A0 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 41A3 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 41A7 _ 83. 7D, F4, 00
        jz      ?_236                                   ; 41AB _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 41AD _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 41B0 _ 8B. 00
        sub     esp, 8                                  ; 41B2 _ 83. EC, 08
        push    eax                                     ; 41B5 _ 50
        push    0                                       ; 41B6 _ 6A, 00
        call    farjmp                                  ; 41B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 41BD _ 83. C4, 10
?_236:  movsx   eax, byte [ebp-0DH]                     ; 41C0 _ 0F BE. 45, F3
        leave                                           ; 41C4 _ C9
        ret                                             ; 41C5 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 41C6 _ 55
        mov     ebp, esp                                ; 41C7 _ 89. E5
        sub     esp, 16                                 ; 41C9 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 41CC _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 41D2 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 41D7 _ 8B. 00
        imul    eax, eax, 28                            ; 41D9 _ 6B. C0, 1C
        add     eax, edx                                ; 41DC _ 01. D0
        add     eax, 8                                  ; 41DE _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 41E1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 41E4 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 41E7 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 41EA _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 41ED _ 8B. 44 90, 08
        leave                                           ; 41F1 _ C9
        ret                                             ; 41F2 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 41F3 _ 55
        mov     ebp, esp                                ; 41F4 _ 89. E5
        sub     esp, 16                                 ; 41F6 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 41F9 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 41FF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4202 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 4205 _ 6B. C0, 1C
        add     eax, edx                                ; 4208 _ 01. D0
        add     eax, 8                                  ; 420A _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 420D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4210 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4213 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4215 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4218 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 421B _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 421F _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4222 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4224 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4227 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 422A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 422C _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 422F _ C7. 40, 04, 00000002
        nop                                             ; 4236 _ 90
        leave                                           ; 4237 _ C9
        ret                                             ; 4238 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 4239 _ 55
        mov     ebp, esp                                ; 423A _ 89. E5
        sub     esp, 16                                 ; 423C _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 423F _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 4245 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4248 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 424B _ 6B. C0, 1C
        add     eax, edx                                ; 424E _ 01. D0
        add     eax, 8                                  ; 4250 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4253 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 4256 _ C7. 45, F8, 00000000
        jmp     ?_239                                   ; 425D _ EB, 23

?_237:  mov     eax, dword [ebp-4H]                     ; 425F _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4262 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 4265 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 4269 _ 39. 45, 08
        jnz     ?_238                                   ; 426C _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 426E _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4271 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 4274 _ C7. 44 90, 08, 00000000
        jmp     ?_240                                   ; 427C _ EB, 0E

?_238:  add     dword [ebp-8H], 1                       ; 427E _ 83. 45, F8, 01
?_239:  mov     eax, dword [ebp-4H]                     ; 4282 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4285 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4287 _ 39. 45, F8
        jl      ?_237                                   ; 428A _ 7C, D3
?_240:  mov     eax, dword [ebp-4H]                     ; 428C _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 428F _ 8B. 00
        lea     edx, [eax-1H]                           ; 4291 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 4294 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 4297 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 4299 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 429C _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 429F _ 39. 45, F8
        jge     ?_241                                   ; 42A2 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 42A4 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 42A7 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 42AA _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 42AD _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 42B0 _ 89. 50, 04
?_241:  mov     eax, dword [ebp-4H]                     ; 42B3 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 42B6 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 42B9 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 42BC _ 8B. 00
        cmp     edx, eax                                ; 42BE _ 39. C2
        jl      ?_242                                   ; 42C0 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 42C2 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 42C5 _ C7. 40, 04, 00000000
?_242:  mov     eax, dword [ebp+8H]                     ; 42CC _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 42CF _ C7. 40, 04, 00000001
        jmp     ?_244                                   ; 42D6 _ EB, 1B

?_243:  mov     eax, dword [ebp-8H]                     ; 42D8 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 42DB _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 42DE _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 42E1 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 42E5 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 42E8 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 42EB _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 42EF _ 83. 45, F8, 01
?_244:  mov     eax, dword [ebp-4H]                     ; 42F3 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 42F6 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 42F8 _ 39. 45, F8
        jl      ?_243                                   ; 42FB _ 7C, DB
        nop                                             ; 42FD _ 90
        leave                                           ; 42FE _ C9
        ret                                             ; 42FF _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 4300 _ 55
        mov     ebp, esp                                ; 4301 _ 89. E5
        sub     esp, 16                                 ; 4303 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4306 _ C7. 45, FC, 00000000
        jmp     ?_246                                   ; 430D _ EB, 1B

?_245:  mov     edx, dword [taskctl]                    ; 430F _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 4315 _ 8B. 45, FC
        imul    eax, eax, 28                            ; 4318 _ 6B. C0, 1C
        add     eax, edx                                ; 431B _ 01. D0
        add     eax, 8                                  ; 431D _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4320 _ 8B. 00
        test    eax, eax                                ; 4322 _ 85. C0
        jg      ?_247                                   ; 4324 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4326 _ 83. 45, FC, 01
?_246:  cmp     dword [ebp-4H], 2                       ; 432A _ 83. 7D, FC, 02
        jle     ?_245                                   ; 432E _ 7E, DF
        jmp     ?_248                                   ; 4330 _ EB, 01

?_247:  nop                                             ; 4332 _ 90
?_248:  mov     eax, dword [taskctl]                    ; 4333 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 4338 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 433B _ 89. 10
        mov     eax, dword [taskctl]                    ; 433D _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 4342 _ C7. 40, 04, 00000000
        nop                                             ; 4349 _ 90
        leave                                           ; 434A _ C9
        ret                                             ; 434B _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 434C _ 55
        mov     ebp, esp                                ; 434D _ 89. E5
        mov     eax, dword [taskctl]                    ; 434F _ A1, 000021E8(d)
        pop     ebp                                     ; 4354 _ 5D
        ret                                             ; 4355 _ C3
; getTaskctl End of function

send_message:; Function begin
        push    ebp                                     ; 4356 _ 55
        mov     ebp, esp                                ; 4357 _ 89. E5
        sub     esp, 8                                  ; 4359 _ 83. EC, 08
        mov     eax, dword [ebp+10H]                    ; 435C _ 8B. 45, 10
        movzx   eax, al                                 ; 435F _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4362 _ 8B. 55, 0C
        add     edx, 16                                 ; 4365 _ 83. C2, 10
        sub     esp, 8                                  ; 4368 _ 83. EC, 08
        push    eax                                     ; 436B _ 50
        push    edx                                     ; 436C _ 52
        call    fifo8_put                               ; 436D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4372 _ 83. C4, 10
        sub     esp, 12                                 ; 4375 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 4378 _ FF. 75, 08
        call    task_sleep                              ; 437B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 4380 _ 83. C4, 10
        nop                                             ; 4383 _ 90
        leave                                           ; 4384 _ C9
        ret                                             ; 4385 _ C3
; send_message End of function



?_249:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_250:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_251:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_252:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_253:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_254:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_255:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_256:                                                  ; byte
        db 46H, 72H, 65H, 65H, 20H, 4DH, 65H, 6DH       ; 003B _ Free Mem
        db 3AH, 20H, 00H                                ; 0043 _ : .

?_257:                                                  ; byte
        db 4BH, 42H, 00H, 00H, 00H, 00H                 ; 0046 _ KB....

?_258:                                                  ; byte
        db 44H, 65H, 73H, 69H, 67H, 6EH, 65H, 64H       ; 004C _ Designed
        db 20H, 42H, 79H, 20H, 42H, 4DH, 59H, 2EH       ; 0054 _  By BMY.
        db 20H, 43H, 6FH, 70H, 79H, 72H, 69H, 67H       ; 005C _  Copyrig
        db 68H, 74H, 20H, 40H, 32H, 30H, 32H, 31H       ; 0064 _ ht @2021
        db 20H, 43H, 68H, 65H, 72H, 72H, 79H, 00H       ; 006C _  Cherry.

?_259:                                                  ; byte
        db 55H, 6EH, 64H, 65H, 66H, 69H, 6EH, 65H       ; 0074 _ Undefine
        db 64H, 20H, 4FH, 72H, 64H, 65H, 72H, 2EH       ; 007C _ d Order.
        db 2EH, 2EH, 00H                                ; 0084 _ ...

?_260:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 0087 _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 008F _ sk B.

?_261:                                                  ; byte
        db 42H, 00H                                     ; 0094 _ B.

?_262:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0096 _ Page is:
        db 20H, 00H                                     ; 009E _  .

?_263:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00A0 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 00A8 _ Low: .

?_264:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00AE _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 00B6 _ High: .

?_265:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 00BD _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 00C5 _ w: .

?_266:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 00C9 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 00D1 _ gh: .

?_267:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 00D6 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_268:  db 00H                                          ; 0002 _ .

?_269:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

table_rgb.2436:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2491:                                            ; byte
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

closebtn.2666:                                          ; byte
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

?_270:  resw    1                                       ; 000C

?_271:  resw    1                                       ; 000E

keyInfo:                                                ; byte
        resb    24                                      ; 0010

?_272:  resd    1                                       ; 0028

mouseInfo:                                              ; byte
        resb    52                                      ; 002C

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_273:  resd    1                                       ; 010C

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

str.2534:                                               ; byte
        resb    1                                       ; 0278

?_274:  resb    9                                       ; 0279

?_275:  resb    2                                       ; 0282

str.2547: resq  1                                       ; 0284

line.2589:                                              ; dword
        resd    1                                       ; 028C

pos.2588: resd  4                                       ; 0290

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_276:                                                  ; byte
        resb    4                                       ; 02A4

?_277:                                                  ; byte
        resb    4                                       ; 02A8

?_278:                                                  ; byte
        resb    4                                       ; 02AC

?_279:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


